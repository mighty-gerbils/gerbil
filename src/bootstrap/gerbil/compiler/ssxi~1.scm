(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g234425_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234428_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234429_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234430_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234431_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234432_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234441_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234442_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234443_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234444_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g234445_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx228579%_)
        (let* ((_%$%g228583228601%_
                (lambda (_%$%g228584228597%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g228584228597%_)))
               (_%$%g228582228656%_
                (lambda (_%$%g228584228605%_)
                  (if (gx#stx-pair? _%$%g228584228605%_)
                      (let ((_%$%e228587228608%_
                             (gx#syntax-e _%$%g228584228605%_)))
                        (let ((_%$%hd228588228612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e228587228608%_)))
                              (_%$%tl228589228615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e228587228608%_))))
                          (if (gx#stx-pair? _%$%tl228589228615%_)
                              (let ((_%$%e228590228618%_
                                     (gx#syntax-e _%$%tl228589228615%_)))
                                (let ((_%$%hd228591228622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e228590228618%_)))
                                      (_%$%tl228592228625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e228590228618%_))))
                                  (if (gx#stx-pair? _%$%tl228592228625%_)
                                      (let ((_%$%e228593228628%_
                                             (gx#syntax-e
                                              _%$%tl228592228625%_)))
                                        (let ((_%$%hd228594228632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e228593228628%_)))
                                              (_%$%tl228595228635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e228593228628%_))))
                                          (if (gx#stx-null?
                                               _%$%tl228595228635%_)
                                              ((lambda (_%$%g228585228638%_
                                                        _%$%g228586228640%_)
                                                 (if (gx#identifier?
                                                      _%$%g228586228640%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'optimizer-declare-type!)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%g228586228640%_ '()))
                         (cons _%$%g228585228638%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g228583228601%_
                                                      _%$%g228584228605%_)))
                                               _%$%hd228594228632%_
                                               _%$%hd228591228622%_)
                                              (_%$%g228583228601%_
                                               _%$%g228584228605%_))))
                                      (_%$%g228583228601%_
                                       _%$%g228584228605%_))))
                              (_%$%g228583228601%_ _%$%g228584228605%_))))
                      (_%$%g228583228601%_ _%$%g228584228605%_)))))
          (_%$%g228582228656%_ _%$stx228579%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx228660%_)
        (let* ((_%$%g228664228682%_
                (lambda (_%$%g228665228678%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g228665228678%_)))
               (_%$%g228663228737%_
                (lambda (_%$%g228665228686%_)
                  (if (gx#stx-pair? _%$%g228665228686%_)
                      (let ((_%$%e228668228689%_
                             (gx#syntax-e _%$%g228665228686%_)))
                        (let ((_%$%hd228669228693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e228668228689%_)))
                              (_%$%tl228670228696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e228668228689%_))))
                          (if (gx#stx-pair? _%$%tl228670228696%_)
                              (let ((_%$%e228671228699%_
                                     (gx#syntax-e _%$%tl228670228696%_)))
                                (let ((_%$%hd228672228703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e228671228699%_)))
                                      (_%$%tl228673228706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e228671228699%_))))
                                  (if (gx#stx-pair? _%$%tl228673228706%_)
                                      (let ((_%$%e228674228709%_
                                             (gx#syntax-e
                                              _%$%tl228673228706%_)))
                                        (let ((_%$%hd228675228713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e228674228709%_)))
                                              (_%$%tl228676228716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e228674228709%_))))
                                          (if (gx#stx-null?
                                               _%$%tl228676228716%_)
                                              ((lambda (_%$%g228666228719%_
                                                        _%$%g228667228721%_)
                                                 (if (gx#identifier?
                                                      _%$%g228667228721%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'optimizer-declare-class!)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%g228667228721%_ '()))
                         (cons _%$%g228666228719%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g228664228682%_
                                                      _%$%g228665228686%_)))
                                               _%$%hd228675228713%_
                                               _%$%hd228672228703%_)
                                              (_%$%g228664228682%_
                                               _%$%g228665228686%_))))
                                      (_%$%g228664228682%_
                                       _%$%g228665228686%_))))
                              (_%$%g228664228682%_ _%$%g228665228686%_))))
                      (_%$%g228664228682%_ _%$%g228665228686%_)))))
          (_%$%g228663228737%_ _%$stx228660%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx228741%_)
        (let* ((_%$%g228745228774%_
                (lambda (_%$%g228746228770%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g228746228770%_)))
               (_%$%g228744228870%_
                (lambda (_%$%g228746228778%_)
                  (if (gx#stx-pair? _%$%g228746228778%_)
                      (let ((_%$%e228749228781%_
                             (gx#syntax-e _%$%g228746228778%_)))
                        (let ((_%$%hd228750228785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e228749228781%_)))
                              (_%$%tl228751228788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e228749228781%_))))
                          (if (gx#stx-pair/null? _%$%tl228751228788%_)
                              (let ((_g234409_
                                     (gx#syntax-split-splice
                                      _%$%tl228751228788%_
                                      '0)))
                                (begin
                                  (let ((_g234410_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234409_)
                                               (##values-length _g234409_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234410_ 2)))
                                        (error "Context expects 2 values"
                                               _g234410_)))
                                  (let ((_%$%target228752228791%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234409_ 0)))
                                        (_%$%tl228754228794%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234409_ 1))))
                                    (if (gx#stx-null? _%$%tl228754228794%_)
                                        (letrec ((_%$%loop228755228797%_
                                                  (lambda (_%$%hd228753228801%_
                                                           _%$%type228759228804%_
                                                           _%$%symbol228760228805%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd228753228801%_)
                                                        (let ((_%$%e228756228807%_
                                                               (gx#syntax-e
                                                                _%$%hd228753228801%_)))
                                                          (let ((_%$%lp-hd228757228811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e228756228807%_)))
                        (_%$%lp-tl228758228814%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e228756228807%_))))
                    (if (gx#stx-pair? _%$%lp-hd228757228811%_)
                        (let ((_%$%e228763228817%_
                               (gx#syntax-e _%$%lp-hd228757228811%_)))
                          (let ((_%$%hd228764228821%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e228763228817%_)))
                                (_%$%tl228765228824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e228763228817%_))))
                            (if (gx#stx-pair? _%$%tl228765228824%_)
                                (let ((_%$%e228766228827%_
                                       (gx#syntax-e _%$%tl228765228824%_)))
                                  (let ((_%$%hd228767228831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e228766228827%_)))
                                        (_%$%tl228768228834%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e228766228827%_))))
                                    (if (gx#stx-null? _%$%tl228768228834%_)
                                        (_%$%loop228755228797%_
                                         _%$%lp-tl228758228814%_
                                         (cons _%$%hd228767228831%_
                                               _%$%type228759228804%_)
                                         (cons _%$%hd228764228821%_
                                               _%$%symbol228760228805%_))
                                        (_%$%g228745228774%_
                                         _%$%g228746228778%_))))
                                (_%$%g228745228774%_ _%$%g228746228778%_))))
                        (_%$%g228745228774%_ _%$%g228746228778%_))))
                (let ((_%$%type228761228837%_ (reverse _%$%type228759228804%_))
                      (_%$%symbol228762228839%_
                       (reverse _%$%symbol228760228805%_)))
                  ((lambda (_%$%g228747228841%_ _%$%g228748228843%_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (begin
                             (gx#syntax-check-splice-targets
                              _%$%g228747228841%_
                              _%$%g228748228843%_)
                             (foldr (lambda (_%$%g228858228862%_
                                             _%$%g228859228865%_
                                             _%$%g228860228867%_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'declare-type)
                                                  (cons _%$%g228859228865%_
                                                        (cons _%$%g228858228862%_
                                                              '())))
                                            _%$%g228860228867%_))
                                    '()
                                    _%$%g228747228841%_
                                    _%$%g228748228843%_))))
                   _%$%type228761228837%_
                   _%$%symbol228762228839%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop228755228797%_
                                           _%$%target228752228791%_
                                           '()
                                           '()))
                                        (_%$%g228745228774%_
                                         _%$%g228746228778%_)))))
                              (_%$%g228745228774%_ _%$%g228746228778%_))))
                      (_%$%g228745228774%_ _%$%g228746228778%_)))))
          (_%$%g228744228870%_ _%$stx228741%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx228875%_)
        (let* ((_%$%g228880228922%_
                (lambda (_%$%g228881228918%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g228881228918%_)))
               (_%$%g228879228993%_
                (lambda (_%$%g228881228926%_)
                  (if (gx#stx-pair? _%$%g228881228926%_)
                      (let ((_%$%e228905228929%_
                             (gx#syntax-e _%$%g228881228926%_)))
                        (let ((_%$%hd228906228933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e228905228929%_)))
                              (_%$%tl228907228936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e228905228929%_))))
                          (if (gx#stx-pair? _%$%tl228907228936%_)
                              (let ((_%$%e228908228939%_
                                     (gx#syntax-e _%$%tl228907228936%_)))
                                (let ((_%$%hd228909228943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e228908228939%_)))
                                      (_%$%tl228910228946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e228908228939%_))))
                                  (if (gx#stx-pair? _%$%tl228910228946%_)
                                      (let ((_%$%e228911228949%_
                                             (gx#syntax-e
                                              _%$%tl228910228946%_)))
                                        (let ((_%$%hd228912228953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e228911228949%_)))
                                              (_%$%tl228913228956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e228911228949%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl228913228956%_)
                                              (let ((_%$%e228914228959%_
                                                     (gx#syntax-e
                                                      _%$%tl228913228956%_)))
                                                (let ((_%$%hd228915228963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e228914228959%_)))
                                                      (_%$%tl228916228966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e228914228959%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl228916228966%_)
                                                      ((lambda (_%$%g228901228969%_
                                                                _%$%g228902228971%_
                                                                _%$%g228903228972%_
                                                                _%$%g228904228973%_)
                                                         (cons _%$%g228904228973%_
                                                               (cons _%$%g228903228972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%$%g228902228971%_
                                   (cons _%$%g228901228969%_
                                         (cons (gx#datum->syntax '#f 'rebind?)
                                               '()))))))
               _%$%hd228915228963%_
               _%$%hd228912228953%_
               _%$%hd228909228943%_
               _%$%hd228906228933%_)
              (_%$%g228880228922%_ _%$%g228881228926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g228880228922%_
                                               _%$%g228881228926%_))))
                                      (_%$%g228880228922%_
                                       _%$%g228881228926%_))))
                              (_%$%g228880228922%_ _%$%g228881228926%_))))
                      (_%$%g228880228922%_ _%$%g228881228926%_))))
               (_%$%g228878229075%_
                (lambda (_%$%g228881228997%_)
                  (if (gx#stx-pair? _%$%g228881228997%_)
                      (let ((_%$%e228886229000%_
                             (gx#syntax-e _%$%g228881228997%_)))
                        (let ((_%$%hd228887229004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e228886229000%_)))
                              (_%$%tl228888229007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e228886229000%_))))
                          (if (gx#stx-pair? _%$%tl228888229007%_)
                              (let ((_%$%e228889229010%_
                                     (gx#syntax-e _%$%tl228888229007%_)))
                                (let ((_%$%hd228890229014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e228889229010%_)))
                                      (_%$%tl228891229017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e228889229010%_))))
                                  (if (gx#stx-pair? _%$%tl228891229017%_)
                                      (let ((_%$%e228892229020%_
                                             (gx#syntax-e
                                              _%$%tl228891229017%_)))
                                        (let ((_%$%hd228893229024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e228892229020%_)))
                                              (_%$%tl228894229027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e228892229020%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl228894229027%_)
                                              (let ((_%$%e228895229030%_
                                                     (gx#syntax-e
                                                      _%$%tl228894229027%_)))
                                                (let ((_%$%hd228896229034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e228895229030%_)))
                                                      (_%$%tl228897229037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e228895229030%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl228897229037%_)
                                                      (let ((_%$%e228898229040%_
                                                             (gx#syntax-e
                                                              _%$%tl228897229037%_)))
                                                        (let ((_%$%hd228899229044%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e228898229040%_)))
                      (_%$%tl228900229047%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e228898229040%_))))
                  (if (gx#stx-null? _%$%tl228900229047%_)
                      ((lambda (_%$%g228882229050%_
                                _%$%g228883229052%_
                                _%$%g228884229053%_
                                _%$%g228885229054%_)
                         (if (and (gx#identifier? _%$%g228885229054%_)
                                  (gx#identifier? _%$%g228884229053%_)
                                  (gx#identifier? _%$%g228883229052%_))
                             (cons (gx#datum->syntax
                                    '#f
                                    'optimizer-declare-method!)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%$%g228885229054%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g228884229053%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g228883229052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g228882229050%_
                                                           '())))))
                             (_%$%g228879228993%_ _%$%g228881228997%_)))
                       _%$%hd228899229044%_
                       _%$%hd228896229034%_
                       _%$%hd228893229024%_
                       _%$%hd228890229014%_)
                      (_%$%g228879228993%_ _%$%g228881228997%_))))
              (_%$%g228879228993%_ _%$%g228881228997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g228879228993%_
                                               _%$%g228881228997%_))))
                                      (_%$%g228879228993%_
                                       _%$%g228881228997%_))))
                              (_%$%g228879228993%_ _%$%g228881228997%_))))
                      (_%$%g228879228993%_ _%$%g228881228997%_)))))
          (_%$%g228878229075%_ _%$stx228875%_))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx229079%_)
        (let* ((_%$%g229083229118%_
                (lambda (_%$%g229084229114%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229084229114%_)))
               (_%$%g229082229231%_
                (lambda (_%$%g229084229122%_)
                  (if (gx#stx-pair? _%$%g229084229122%_)
                      (let ((_%$%e229088229125%_
                             (gx#syntax-e _%$%g229084229122%_)))
                        (let ((_%$%hd229089229129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229088229125%_)))
                              (_%$%tl229090229132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229088229125%_))))
                          (if (gx#stx-pair/null? _%$%tl229090229132%_)
                              (let ((_g234411_
                                     (gx#syntax-split-splice
                                      _%$%tl229090229132%_
                                      '0)))
                                (begin
                                  (let ((_g234412_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234411_)
                                               (##values-length _g234411_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234412_ 2)))
                                        (error "Context expects 2 values"
                                               _g234412_)))
                                  (let ((_%$%target229091229135%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234411_ 0)))
                                        (_%$%tl229093229138%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234411_ 1))))
                                    (if (gx#stx-null? _%$%tl229093229138%_)
                                        (letrec ((_%$%loop229094229141%_
                                                  (lambda (_%$%hd229092229145%_
                                                           _%$%symbol229098229148%_
                                                           _%$%method229099229149%_
                                                           _%$%type-t229100229150%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd229092229145%_)
                                                        (let ((_%$%e229095229152%_
                                                               (gx#syntax-e
                                                                _%$%hd229092229145%_)))
                                                          (let ((_%$%lp-hd229096229156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e229095229152%_)))
                        (_%$%lp-tl229097229159%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e229095229152%_))))
                    (if (gx#stx-pair? _%$%lp-hd229096229156%_)
                        (let ((_%$%e229104229162%_
                               (gx#syntax-e _%$%lp-hd229096229156%_)))
                          (let ((_%$%hd229105229166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e229104229162%_)))
                                (_%$%tl229106229169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e229104229162%_))))
                            (if (gx#stx-pair? _%$%tl229106229169%_)
                                (let ((_%$%e229107229172%_
                                       (gx#syntax-e _%$%tl229106229169%_)))
                                  (let ((_%$%hd229108229176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e229107229172%_)))
                                        (_%$%tl229109229179%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e229107229172%_))))
                                    (if (gx#stx-pair? _%$%tl229109229179%_)
                                        (let ((_%$%e229110229182%_
                                               (gx#syntax-e
                                                _%$%tl229109229179%_)))
                                          (let ((_%$%hd229111229186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e229110229182%_)))
                                                (_%$%tl229112229189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e229110229182%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl229112229189%_)
                                                (_%$%loop229094229141%_
                                                 _%$%lp-tl229097229159%_
                                                 (cons _%$%hd229111229186%_
                                                       _%$%symbol229098229148%_)
                                                 (cons _%$%hd229108229176%_
                                                       _%$%method229099229149%_)
                                                 (cons _%$%hd229105229166%_
                                                       _%$%type-t229100229150%_))
                                                (_%$%g229083229118%_
                                                 _%$%g229084229122%_))))
                                        (_%$%g229083229118%_
                                         _%$%g229084229122%_))))
                                (_%$%g229083229118%_ _%$%g229084229122%_))))
                        (_%$%g229083229118%_ _%$%g229084229122%_))))
                (let ((_%$%symbol229101229192%_
                       (reverse _%$%symbol229098229148%_))
                      (_%$%method229102229194%_
                       (reverse _%$%method229099229149%_))
                      (_%$%type-t229103229195%_
                       (reverse _%$%type-t229100229150%_)))
                  ((lambda (_%$%g229085229197%_
                            _%$%g229086229199%_
                            _%$%g229087229200%_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (begin
                             (gx#syntax-check-splice-targets
                              _%$%g229085229197%_
                              _%$%g229086229199%_
                              _%$%g229087229200%_)
                             (foldr (lambda (_%$%g229216229221%_
                                             _%$%g229217229224%_
                                             _%$%g229218229226%_
                                             _%$%g229219229228%_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'declare-method)
                                                  (cons _%$%g229218229226%_
                                                        (cons _%$%g229217229224%_
                                                              (cons _%$%g229216229221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g229219229228%_))
                                    '()
                                    _%$%g229085229197%_
                                    _%$%g229086229199%_
                                    _%$%g229087229200%_))))
                   _%$%symbol229101229192%_
                   _%$%method229102229194%_
                   _%$%type-t229103229195%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop229094229141%_
                                           _%$%target229091229135%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g229083229118%_
                                         _%$%g229084229122%_)))))
                              (_%$%g229083229118%_ _%$%g229084229122%_))))
                      (_%$%g229083229118%_ _%$%g229084229122%_)))))
          (_%$%g229082229231%_ _%$stx229079%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx229236%_)
        (let* ((_%$%g229240229273%_
                (lambda (_%$%g229241229269%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229241229269%_)))
               (_%$%g229239229383%_
                (lambda (_%$%g229241229277%_)
                  (if (gx#stx-pair? _%$%g229241229277%_)
                      (let ((_%$%e229245229280%_
                             (gx#syntax-e _%$%g229241229277%_)))
                        (let ((_%$%hd229246229284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229245229280%_)))
                              (_%$%tl229247229287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229245229280%_))))
                          (if (gx#stx-pair? _%$%tl229247229287%_)
                              (let ((_%$%e229248229290%_
                                     (gx#syntax-e _%$%tl229247229287%_)))
                                (let ((_%$%hd229249229294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229248229290%_)))
                                      (_%$%tl229250229297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229248229290%_))))
                                  (if (gx#stx-pair/null? _%$%tl229250229297%_)
                                      (let ((_g234413_
                                             (gx#syntax-split-splice
                                              _%$%tl229250229297%_
                                              '0)))
                                        (begin
                                          (let ((_g234414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234413_)
                                                       (##values-length
                                                        _g234413_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234414_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234414_)))
                                          (let ((_%$%target229251229300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g234413_ 0)))
                                                (_%$%tl229253229303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g234413_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl229253229303%_)
                                                (letrec ((_%$%loop229254229306%_
                                                          (lambda (_%$%hd229252229310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol229258229313%_
                           _%$%method229259229314%_)
                    (if (gx#stx-pair? _%$%hd229252229310%_)
                        (let ((_%$%e229255229316%_
                               (gx#syntax-e _%$%hd229252229310%_)))
                          (let ((_%$%lp-hd229256229320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e229255229316%_)))
                                (_%$%lp-tl229257229323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e229255229316%_))))
                            (if (gx#stx-pair? _%$%lp-hd229256229320%_)
                                (let ((_%$%e229262229326%_
                                       (gx#syntax-e _%$%lp-hd229256229320%_)))
                                  (let ((_%$%hd229263229330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e229262229326%_)))
                                        (_%$%tl229264229333%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e229262229326%_))))
                                    (if (gx#stx-pair? _%$%tl229264229333%_)
                                        (let ((_%$%e229265229336%_
                                               (gx#syntax-e
                                                _%$%tl229264229333%_)))
                                          (let ((_%$%hd229266229340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e229265229336%_)))
                                                (_%$%tl229267229343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e229265229336%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl229267229343%_)
                                                (_%$%loop229254229306%_
                                                 _%$%lp-tl229257229323%_
                                                 (cons _%$%hd229266229340%_
                                                       _%$%symbol229258229313%_)
                                                 (cons _%$%hd229263229330%_
                                                       _%$%method229259229314%_))
                                                (_%$%g229240229273%_
                                                 _%$%g229241229277%_))))
                                        (_%$%g229240229273%_
                                         _%$%g229241229277%_))))
                                (_%$%g229240229273%_ _%$%g229241229277%_))))
                        (let ((_%$%symbol229260229346%_
                               (reverse _%$%symbol229258229313%_))
                              (_%$%method229261229348%_
                               (reverse _%$%method229259229314%_)))
                          ((lambda (_%$%g229242229350%_
                                    _%$%g229243229352%_
                                    _%$%g229244229353%_)
                             (cons (gx#datum->syntax '#f 'begin)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%$%g229242229350%_
                                      _%$%g229243229352%_)
                                     (foldr (lambda (_%$%g229371229375%_
                                                     _%$%g229372229378%_
                                                     _%$%g229373229380%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'declare-method)
                                                          (cons _%$%g229244229353%_
                                                                (cons _%$%g229372229378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g229371229375%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g229373229380%_))
                                            '()
                                            _%$%g229242229350%_
                                            _%$%g229243229352%_))))
                           _%$%symbol229260229346%_
                           _%$%method229261229348%_
                           _%$%hd229249229294%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop229254229306%_
                                                   _%$%target229251229300%_
                                                   '()
                                                   '()))
                                                (_%$%g229240229273%_
                                                 _%$%g229241229277%_)))))
                                      (_%$%g229240229273%_
                                       _%$%g229241229277%_))))
                              (_%$%g229240229273%_ _%$%g229241229277%_))))
                      (_%$%g229240229273%_ _%$%g229241229277%_)))))
          (_%$%g229239229383%_ _%$stx229236%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx229388%_)
        (let* ((_%$%g229392229406%_
                (lambda (_%$%g229393229402%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229393229402%_)))
               (_%$%g229391229447%_
                (lambda (_%$%g229393229410%_)
                  (if (gx#stx-pair? _%$%g229393229410%_)
                      (let ((_%$%e229395229413%_
                             (gx#syntax-e _%$%g229393229410%_)))
                        (let ((_%$%hd229396229417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229395229413%_)))
                              (_%$%tl229397229420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229395229413%_))))
                          (if (gx#stx-pair? _%$%tl229397229420%_)
                              (let ((_%$%e229398229423%_
                                     (gx#syntax-e _%$%tl229397229420%_)))
                                (let ((_%$%hd229399229427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229398229423%_)))
                                      (_%$%tl229400229430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229398229423%_))))
                                  (if (gx#stx-null? _%$%tl229400229430%_)
                                      ((lambda (_%$%g229394229433%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-!alias)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g229394229433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd229399229427%_)
                                      (_%$%g229392229406%_
                                       _%$%g229393229410%_))))
                              (_%$%g229392229406%_ _%$%g229393229410%_))))
                      (_%$%g229392229406%_ _%$%g229393229410%_)))))
          (_%$%g229391229447%_ _%$stx229388%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx229451%_)
        (let* ((_%$%g229455229509%_
                (lambda (_%$%g229456229505%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229456229505%_)))
               (_%$%g229454229690%_
                (lambda (_%$%g229456229513%_)
                  (if (gx#stx-pair? _%$%g229456229513%_)
                      (let ((_%$%e229468229516%_
                             (gx#syntax-e _%$%g229456229513%_)))
                        (let ((_%$%hd229469229520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229468229516%_)))
                              (_%$%tl229470229523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229468229516%_))))
                          (if (gx#stx-pair? _%$%tl229470229523%_)
                              (let ((_%$%e229471229526%_
                                     (gx#syntax-e _%$%tl229470229523%_)))
                                (let ((_%$%hd229472229530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229471229526%_)))
                                      (_%$%tl229473229533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229471229526%_))))
                                  (if (gx#stx-pair? _%$%tl229473229533%_)
                                      (let ((_%$%e229474229536%_
                                             (gx#syntax-e
                                              _%$%tl229473229533%_)))
                                        (let ((_%$%hd229475229540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e229474229536%_)))
                                              (_%$%tl229476229543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e229474229536%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl229476229543%_)
                                              (let ((_%$%e229477229546%_
                                                     (gx#syntax-e
                                                      _%$%tl229476229543%_)))
                                                (let ((_%$%hd229478229550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e229477229546%_)))
                                                      (_%$%tl229479229553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e229477229546%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl229479229553%_)
                                                      (let ((_%$%e229480229556%_
                                                             (gx#syntax-e
                                                              _%$%tl229479229553%_)))
                                                        (let ((_%$%hd229481229560%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e229480229556%_)))
                      (_%$%tl229482229563%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e229480229556%_))))
                  (if (gx#stx-pair? _%$%tl229482229563%_)
                      (let ((_%$%e229483229566%_
                             (gx#syntax-e _%$%tl229482229563%_)))
                        (let ((_%$%hd229484229570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229483229566%_)))
                              (_%$%tl229485229573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229483229566%_))))
                          (if (gx#stx-pair? _%$%tl229485229573%_)
                              (let ((_%$%e229486229576%_
                                     (gx#syntax-e _%$%tl229485229573%_)))
                                (let ((_%$%hd229487229580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229486229576%_)))
                                      (_%$%tl229488229583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229486229576%_))))
                                  (if (gx#stx-pair? _%$%tl229488229583%_)
                                      (let ((_%$%e229489229586%_
                                             (gx#syntax-e
                                              _%$%tl229488229583%_)))
                                        (let ((_%$%hd229490229590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e229489229586%_)))
                                              (_%$%tl229491229593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e229489229586%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl229491229593%_)
                                              (let ((_%$%e229492229596%_
                                                     (gx#syntax-e
                                                      _%$%tl229491229593%_)))
                                                (let ((_%$%hd229493229600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e229492229596%_)))
                                                      (_%$%tl229494229603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e229492229596%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl229494229603%_)
                                                      (let ((_%$%e229495229606%_
                                                             (gx#syntax-e
                                                              _%$%tl229494229603%_)))
                                                        (let ((_%$%hd229496229610%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e229495229606%_)))
                      (_%$%tl229497229613%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e229495229606%_))))
                  (if (gx#stx-pair? _%$%tl229497229613%_)
                      (let ((_%$%e229498229616%_
                             (gx#syntax-e _%$%tl229497229613%_)))
                        (let ((_%$%hd229499229620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229498229616%_)))
                              (_%$%tl229500229623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229498229616%_))))
                          (if (gx#stx-pair? _%$%tl229500229623%_)
                              (let ((_%$%e229501229626%_
                                     (gx#syntax-e _%$%tl229500229623%_)))
                                (let ((_%$%hd229502229630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229501229626%_)))
                                      (_%$%tl229503229633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229501229626%_))))
                                  (if (gx#stx-null? _%$%tl229503229633%_)
                                      ((lambda (_%$%g229457229636%_
                                                _%$%g229458229638%_
                                                _%$%g229459229639%_
                                                _%$%g229460229640%_
                                                _%$%g229461229641%_
                                                _%$%g229462229642%_
                                                _%$%g229463229643%_
                                                _%$%g229464229644%_
                                                _%$%g229465229645%_
                                                _%$%g229466229646%_
                                                _%$%g229467229647%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-!class)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g229467229647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%$%g229466229646%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'quote)
                               (cons _%$%g229465229645%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g229464229644%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g229463229643%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g229462229642%_
                                                       '()))
                                           (cons _%$%g229461229641%_
                                                 (cons _%$%g229460229640%_
                                                       (cons _%$%g229459229639%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g229458229638%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%g229457229636%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd229502229630%_
                                       _%$%hd229499229620%_
                                       _%$%hd229496229610%_
                                       _%$%hd229493229600%_
                                       _%$%hd229490229590%_
                                       _%$%hd229487229580%_
                                       _%$%hd229484229570%_
                                       _%$%hd229481229560%_
                                       _%$%hd229478229550%_
                                       _%$%hd229475229540%_
                                       _%$%hd229472229530%_)
                                      (_%$%g229455229509%_
                                       _%$%g229456229513%_))))
                              (_%$%g229455229509%_ _%$%g229456229513%_))))
                      (_%$%g229455229509%_ _%$%g229456229513%_))))
              (_%$%g229455229509%_ _%$%g229456229513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g229455229509%_
                                               _%$%g229456229513%_))))
                                      (_%$%g229455229509%_
                                       _%$%g229456229513%_))))
                              (_%$%g229455229509%_ _%$%g229456229513%_))))
                      (_%$%g229455229509%_ _%$%g229456229513%_))))
              (_%$%g229455229509%_ _%$%g229456229513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g229455229509%_
                                               _%$%g229456229513%_))))
                                      (_%$%g229455229509%_
                                       _%$%g229456229513%_))))
                              (_%$%g229455229509%_ _%$%g229456229513%_))))
                      (_%$%g229455229509%_ _%$%g229456229513%_)))))
          (_%$%g229454229690%_ _%$stx229451%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx229694%_)
        (let* ((_%$%g229698229712%_
                (lambda (_%$%g229699229708%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229699229708%_)))
               (_%$%g229697229753%_
                (lambda (_%$%g229699229716%_)
                  (if (gx#stx-pair? _%$%g229699229716%_)
                      (let ((_%$%e229701229719%_
                             (gx#syntax-e _%$%g229699229716%_)))
                        (let ((_%$%hd229702229723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229701229719%_)))
                              (_%$%tl229703229726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229701229719%_))))
                          (if (gx#stx-pair? _%$%tl229703229726%_)
                              (let ((_%$%e229704229729%_
                                     (gx#syntax-e _%$%tl229703229726%_)))
                                (let ((_%$%hd229705229733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229704229729%_)))
                                      (_%$%tl229706229736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229704229729%_))))
                                  (if (gx#stx-null? _%$%tl229706229736%_)
                                      ((lambda (_%$%g229700229739%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-!predicate)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g229700229739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd229705229733%_)
                                      (_%$%g229698229712%_
                                       _%$%g229699229716%_))))
                              (_%$%g229698229712%_ _%$%g229699229716%_))))
                      (_%$%g229698229712%_ _%$%g229699229716%_)))))
          (_%$%g229697229753%_ _%$stx229694%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx229757%_)
        (let* ((_%$%g229761229775%_
                (lambda (_%$%g229762229771%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229762229771%_)))
               (_%$%g229760229816%_
                (lambda (_%$%g229762229779%_)
                  (if (gx#stx-pair? _%$%g229762229779%_)
                      (let ((_%$%e229764229782%_
                             (gx#syntax-e _%$%g229762229779%_)))
                        (let ((_%$%hd229765229786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229764229782%_)))
                              (_%$%tl229766229789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229764229782%_))))
                          (if (gx#stx-pair? _%$%tl229766229789%_)
                              (let ((_%$%e229767229792%_
                                     (gx#syntax-e _%$%tl229766229789%_)))
                                (let ((_%$%hd229768229796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229767229792%_)))
                                      (_%$%tl229769229799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229767229792%_))))
                                  (if (gx#stx-null? _%$%tl229769229799%_)
                                      ((lambda (_%$%g229763229802%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-!constructor)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g229763229802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd229768229796%_)
                                      (_%$%g229761229775%_
                                       _%$%g229762229779%_))))
                              (_%$%g229761229775%_ _%$%g229762229779%_))))
                      (_%$%g229761229775%_ _%$%g229762229779%_)))))
          (_%$%g229760229816%_ _%$stx229757%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx229820%_)
        (let* ((_%$%g229824229846%_
                (lambda (_%$%g229825229842%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229825229842%_)))
               (_%$%g229823229915%_
                (lambda (_%$%g229825229850%_)
                  (if (gx#stx-pair? _%$%g229825229850%_)
                      (let ((_%$%e229829229853%_
                             (gx#syntax-e _%$%g229825229850%_)))
                        (let ((_%$%hd229830229857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229829229853%_)))
                              (_%$%tl229831229860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229829229853%_))))
                          (if (gx#stx-pair? _%$%tl229831229860%_)
                              (let ((_%$%e229832229863%_
                                     (gx#syntax-e _%$%tl229831229860%_)))
                                (let ((_%$%hd229833229867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229832229863%_)))
                                      (_%$%tl229834229870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229832229863%_))))
                                  (if (gx#stx-pair? _%$%tl229834229870%_)
                                      (let ((_%$%e229835229873%_
                                             (gx#syntax-e
                                              _%$%tl229834229870%_)))
                                        (let ((_%$%hd229836229877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e229835229873%_)))
                                              (_%$%tl229837229880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e229835229873%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl229837229880%_)
                                              (let ((_%$%e229838229883%_
                                                     (gx#syntax-e
                                                      _%$%tl229837229880%_)))
                                                (let ((_%$%hd229839229887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e229838229883%_)))
                                                      (_%$%tl229840229890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e229838229883%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl229840229890%_)
                                                      ((lambda (_%$%g229826229893%_
                                                                _%$%g229827229895%_
                                                                _%$%g229828229896%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-!accessor)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%g229828229896%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _%$%g229827229895%_ '()))
                                   (cons _%$%g229826229893%_ '())))))
               _%$%hd229839229887%_
               _%$%hd229836229877%_
               _%$%hd229833229867%_)
              (_%$%g229824229846%_ _%$%g229825229850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g229824229846%_
                                               _%$%g229825229850%_))))
                                      (_%$%g229824229846%_
                                       _%$%g229825229850%_))))
                              (_%$%g229824229846%_ _%$%g229825229850%_))))
                      (_%$%g229824229846%_ _%$%g229825229850%_)))))
          (_%$%g229823229915%_ _%$stx229820%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx229919%_)
        (let* ((_%$%g229923229945%_
                (lambda (_%$%g229924229941%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g229924229941%_)))
               (_%$%g229922230014%_
                (lambda (_%$%g229924229949%_)
                  (if (gx#stx-pair? _%$%g229924229949%_)
                      (let ((_%$%e229928229952%_
                             (gx#syntax-e _%$%g229924229949%_)))
                        (let ((_%$%hd229929229956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e229928229952%_)))
                              (_%$%tl229930229959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e229928229952%_))))
                          (if (gx#stx-pair? _%$%tl229930229959%_)
                              (let ((_%$%e229931229962%_
                                     (gx#syntax-e _%$%tl229930229959%_)))
                                (let ((_%$%hd229932229966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e229931229962%_)))
                                      (_%$%tl229933229969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e229931229962%_))))
                                  (if (gx#stx-pair? _%$%tl229933229969%_)
                                      (let ((_%$%e229934229972%_
                                             (gx#syntax-e
                                              _%$%tl229933229969%_)))
                                        (let ((_%$%hd229935229976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e229934229972%_)))
                                              (_%$%tl229936229979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e229934229972%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl229936229979%_)
                                              (let ((_%$%e229937229982%_
                                                     (gx#syntax-e
                                                      _%$%tl229936229979%_)))
                                                (let ((_%$%hd229938229986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e229937229982%_)))
                                                      (_%$%tl229939229989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e229937229982%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl229939229989%_)
                                                      ((lambda (_%$%g229925229992%_
                                                                _%$%g229926229994%_
                                                                _%$%g229927229995%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-!mutator)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%g229927229995%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _%$%g229926229994%_ '()))
                                   (cons _%$%g229925229992%_ '())))))
               _%$%hd229938229986%_
               _%$%hd229935229976%_
               _%$%hd229932229966%_)
              (_%$%g229923229945%_ _%$%g229924229949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g229923229945%_
                                               _%$%g229924229949%_))))
                                      (_%$%g229923229945%_
                                       _%$%g229924229949%_))))
                              (_%$%g229923229945%_ _%$%g229924229949%_))))
                      (_%$%g229923229945%_ _%$%g229924229949%_)))))
          (_%$%g229922230014%_ _%$stx229919%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx230018%_)
        (let* ((_%$%g230022230036%_
                (lambda (_%$%g230023230032%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230023230032%_)))
               (_%$%g230021230077%_
                (lambda (_%$%g230023230040%_)
                  (if (gx#stx-pair? _%$%g230023230040%_)
                      (let ((_%$%e230025230043%_
                             (gx#syntax-e _%$%g230023230040%_)))
                        (let ((_%$%hd230026230047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230025230043%_)))
                              (_%$%tl230027230050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230025230043%_))))
                          (if (gx#stx-pair? _%$%tl230027230050%_)
                              (let ((_%$%e230028230053%_
                                     (gx#syntax-e _%$%tl230027230050%_)))
                                (let ((_%$%hd230029230057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230028230053%_)))
                                      (_%$%tl230030230060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230028230053%_))))
                                  (if (gx#stx-null? _%$%tl230030230060%_)
                                      ((lambda (_%$%g230024230063%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-!primitive-predicate)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g230024230063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd230029230057%_)
                                      (_%$%g230022230036%_
                                       _%$%g230023230040%_))))
                              (_%$%g230022230036%_ _%$%g230023230040%_))))
                      (_%$%g230022230036%_ _%$%g230023230040%_)))))
          (_%$%g230021230077%_ _%$stx230018%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx230081%_)
        (let* ((_%$%g230085230103%_
                (lambda (_%$%g230086230099%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230086230099%_)))
               (_%$%g230084230158%_
                (lambda (_%$%g230086230107%_)
                  (if (gx#stx-pair? _%$%g230086230107%_)
                      (let ((_%$%e230089230110%_
                             (gx#syntax-e _%$%g230086230107%_)))
                        (let ((_%$%hd230090230114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230089230110%_)))
                              (_%$%tl230091230117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230089230110%_))))
                          (if (gx#stx-pair? _%$%tl230091230117%_)
                              (let ((_%$%e230092230120%_
                                     (gx#syntax-e _%$%tl230091230117%_)))
                                (let ((_%$%hd230093230124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230092230120%_)))
                                      (_%$%tl230094230127%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230092230120%_))))
                                  (if (gx#stx-pair? _%$%tl230094230127%_)
                                      (let ((_%$%e230095230130%_
                                             (gx#syntax-e
                                              _%$%tl230094230127%_)))
                                        (let ((_%$%hd230096230134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230095230130%_)))
                                              (_%$%tl230097230137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230095230130%_))))
                                          (if (gx#stx-null?
                                               _%$%tl230097230137%_)
                                              ((lambda (_%$%g230087230140%_
                                                        _%$%g230088230142%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-!interface)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g230088230142%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%g230087230140%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd230096230134%_
                                               _%$%hd230093230124%_)
                                              (_%$%g230085230103%_
                                               _%$%g230086230107%_))))
                                      (_%$%g230085230103%_
                                       _%$%g230086230107%_))))
                              (_%$%g230085230103%_ _%$%g230086230107%_))))
                      (_%$%g230085230103%_ _%$%g230086230107%_)))))
          (_%$%g230084230158%_ _%$stx230081%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx230162%_)
        (let* ((_%$%g230169230230%_
                (lambda (_%$%g230170230226%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230170230226%_)))
               (_%$%g230168230304%_
                (lambda (_%$%g230170230234%_)
                  (if (gx#stx-pair? _%$%g230170230234%_)
                      (let ((_%$%e230212230237%_
                             (gx#syntax-e _%$%g230170230234%_)))
                        (let ((_%$%hd230213230241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230212230237%_)))
                              (_%$%tl230214230244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230212230237%_))))
                          (if (gx#stx-pair? _%$%tl230214230244%_)
                              (let ((_%$%e230215230247%_
                                     (gx#syntax-e _%$%tl230214230244%_)))
                                (let ((_%$%hd230216230251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230215230247%_)))
                                      (_%$%tl230217230254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230215230247%_))))
                                  (if (gx#stx-pair? _%$%tl230217230254%_)
                                      (let ((_%$%e230218230257%_
                                             (gx#syntax-e
                                              _%$%tl230217230254%_)))
                                        (let ((_%$%hd230219230261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230218230257%_)))
                                              (_%$%tl230220230264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230218230257%_))))
                                          (if (gx#stx-datum?
                                               _%$%hd230219230261%_)
                                              (let ((_%$%e230221230267%_
                                                     (gx#stx-e
                                                      _%$%hd230219230261%_)))
                                                (if (equal? _%$%e230221230267%_
                                                            'signature:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl230220230264%_)
                                                        (let ((_%$%e230222230271%_
                                                               (gx#syntax-e
                                                                _%$%tl230220230264%_)))
                                                          (let ((_%$%hd230223230275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e230222230271%_)))
                        (_%$%tl230224230278%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e230222230271%_))))
                    (if (gx#stx-null? _%$%tl230224230278%_)
                        ((lambda (_%$%g230209230281%_
                                  _%$%g230210230283%_
                                  _%$%g230211230284%_)
                           (cons _%$%g230211230284%_
                                 (cons _%$%g230210230283%_
                                       (cons '#f
                                             (cons 'signature:
                                                   (cons _%$%g230209230281%_
                                                         '()))))))
                         _%$%hd230223230275%_
                         _%$%hd230216230251%_
                         _%$%hd230213230241%_)
                        (_%$%g230169230230%_ _%$%g230170230234%_))))
                (_%$%g230169230230%_ _%$%g230170230234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g230169230230%_
                                                     _%$%g230170230234%_)))
                                              (_%$%g230169230230%_
                                               _%$%g230170230234%_))))
                                      (_%$%g230169230230%_
                                       _%$%g230170230234%_))))
                              (_%$%g230169230230%_ _%$%g230170230234%_))))
                      (_%$%g230169230230%_ _%$%g230170230234%_))))
               (_%$%g230167230346%_
                (lambda (_%$%g230170230308%_)
                  (if (gx#stx-pair? _%$%g230170230308%_)
                      (let ((_%$%e230203230311%_
                             (gx#syntax-e _%$%g230170230308%_)))
                        (let ((_%$%hd230204230315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230203230311%_)))
                              (_%$%tl230205230318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230203230311%_))))
                          (if (gx#stx-pair? _%$%tl230205230318%_)
                              (let ((_%$%e230206230321%_
                                     (gx#syntax-e _%$%tl230205230318%_)))
                                (let ((_%$%hd230207230325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230206230321%_)))
                                      (_%$%tl230208230328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230206230321%_))))
                                  (if (gx#stx-null? _%$%tl230208230328%_)
                                      ((lambda (_%$%g230201230331%_
                                                _%$%g230202230333%_)
                                         (cons _%$%g230202230333%_
                                               (cons _%$%g230201230331%_
                                                     (cons '#f '()))))
                                       _%$%hd230207230325%_
                                       _%$%hd230204230315%_)
                                      (_%$%g230168230304%_
                                       _%$%g230170230308%_))))
                              (_%$%g230168230304%_ _%$%g230170230308%_))))
                      (_%$%g230168230304%_ _%$%g230170230308%_))))
               (_%$%g230166230431%_
                (lambda (_%$%g230170230350%_)
                  (if (gx#stx-pair? _%$%g230170230350%_)
                      (let ((_%$%e230185230353%_
                             (gx#syntax-e _%$%g230170230350%_)))
                        (let ((_%$%hd230186230357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230185230353%_)))
                              (_%$%tl230187230360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230185230353%_))))
                          (if (gx#stx-pair? _%$%tl230187230360%_)
                              (let ((_%$%e230188230363%_
                                     (gx#syntax-e _%$%tl230187230360%_)))
                                (let ((_%$%hd230189230367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230188230363%_)))
                                      (_%$%tl230190230370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230188230363%_))))
                                  (if (gx#stx-pair? _%$%tl230190230370%_)
                                      (let ((_%$%e230191230373%_
                                             (gx#syntax-e
                                              _%$%tl230190230370%_)))
                                        (let ((_%$%hd230192230377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230191230373%_)))
                                              (_%$%tl230193230380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230191230373%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl230193230380%_)
                                              (let ((_%$%e230194230383%_
                                                     (gx#syntax-e
                                                      _%$%tl230193230380%_)))
                                                (let ((_%$%hd230195230387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e230194230383%_)))
                                                      (_%$%tl230196230390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e230194230383%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd230195230387%_)
                                                      (let ((_%$%e230197230393%_
                                                             (gx#stx-e
                                                              _%$%hd230195230387%_)))
                                                        (if (equal? _%$%e230197230393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'signature:)
                    (if (gx#stx-pair? _%$%tl230196230390%_)
                        (let ((_%$%e230198230397%_
                               (gx#syntax-e _%$%tl230196230390%_)))
                          (let ((_%$%hd230199230401%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e230198230397%_)))
                                (_%$%tl230200230404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e230198230397%_))))
                            (if (gx#stx-null? _%$%tl230200230404%_)
                                ((lambda (_%$%g230182230407%_
                                          _%$%g230183230409%_
                                          _%$%g230184230410%_)
                                   (cons (gx#datum->syntax '#f 'make-!lambda)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g230184230410%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g230183230409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'signature:
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'apply)
                               (cons (gx#datum->syntax '#f 'make-!signature)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g230182230407%_
                                                       '()))
                                           '())))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$%hd230199230401%_
                                 _%$%hd230192230377%_
                                 _%$%hd230189230367%_)
                                (_%$%g230167230346%_ _%$%g230170230350%_))))
                        (_%$%g230167230346%_ _%$%g230170230350%_))
                    (_%$%g230167230346%_ _%$%g230170230350%_)))
              (_%$%g230167230346%_ _%$%g230170230350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g230167230346%_
                                               _%$%g230170230350%_))))
                                      (_%$%g230167230346%_
                                       _%$%g230170230350%_))))
                              (_%$%g230167230346%_ _%$%g230170230350%_))))
                      (_%$%g230167230346%_ _%$%g230170230350%_))))
               (_%$%g230165230485%_
                (lambda (_%$%g230170230435%_)
                  (if (gx#stx-pair? _%$%g230170230435%_)
                      (let ((_%$%e230173230438%_
                             (gx#syntax-e _%$%g230170230435%_)))
                        (let ((_%$%hd230174230442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230173230438%_)))
                              (_%$%tl230175230445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230173230438%_))))
                          (if (gx#stx-pair? _%$%tl230175230445%_)
                              (let ((_%$%e230176230448%_
                                     (gx#syntax-e _%$%tl230175230445%_)))
                                (let ((_%$%hd230177230452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230176230448%_)))
                                      (_%$%tl230178230455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230176230448%_))))
                                  (if (gx#stx-pair? _%$%tl230178230455%_)
                                      (let ((_%$%e230179230458%_
                                             (gx#syntax-e
                                              _%$%tl230178230455%_)))
                                        (let ((_%$%hd230180230462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230179230458%_)))
                                              (_%$%tl230181230465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230179230458%_))))
                                          (if (gx#stx-null?
                                               _%$%tl230181230465%_)
                                              ((lambda (_%$%g230171230468%_
                                                        _%$%g230172230470%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-!lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g230172230470%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%g230171230468%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd230180230462%_
                                               _%$%hd230177230452%_)
                                              (_%$%g230166230431%_
                                               _%$%g230170230435%_))))
                                      (_%$%g230166230431%_
                                       _%$%g230170230435%_))))
                              (_%$%g230166230431%_ _%$%g230170230435%_))))
                      (_%$%g230166230431%_ _%$%g230170230435%_)))))
          (_%$%g230165230485%_ _%$stx230162%_))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx230489%_)
        (let* ((_%$%g230493230522%_
                (lambda (_%$%g230494230518%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230494230518%_)))
               (_%$%g230492230627%_
                (lambda (_%$%g230494230526%_)
                  (if (gx#stx-pair? _%$%g230494230526%_)
                      (let ((_%$%e230496230529%_
                             (gx#syntax-e _%$%g230494230526%_)))
                        (let ((_%$%hd230497230533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230496230529%_)))
                              (_%$%tl230498230536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230496230529%_))))
                          (if (gx#stx-pair/null? _%$%tl230498230536%_)
                              (let ((_g234415_
                                     (gx#syntax-split-splice
                                      _%$%tl230498230536%_
                                      '0)))
                                (begin
                                  (let ((_g234416_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234415_)
                                               (##values-length _g234415_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234416_ 2)))
                                        (error "Context expects 2 values"
                                               _g234416_)))
                                  (let ((_%$%target230499230539%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234415_ 0)))
                                        (_%$%tl230501230542%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234415_ 1))))
                                    (if (gx#stx-null? _%$%tl230501230542%_)
                                        (letrec ((_%$%loop230502230545%_
                                                  (lambda (_%$%hd230500230549%_
                                                           _%$%clause230506230552%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd230500230549%_)
                                                        (let ((_%$%e230503230554%_
                                                               (gx#syntax-e
                                                                _%$%hd230500230549%_)))
                                                          (let ((_%$%lp-hd230504230558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e230503230554%_)))
                        (_%$%lp-tl230505230561%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e230503230554%_))))
                    (if (gx#stx-pair/null? _%$%lp-hd230504230558%_)
                        (let ((_g234417_
                               (gx#syntax-split-splice
                                _%$%lp-hd230504230558%_
                                '0)))
                          (begin
                            (let ((_g234418_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g234417_)
                                         (##values-length _g234417_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g234418_ 2)))
                                  (error "Context expects 2 values"
                                         _g234418_)))
                            (let ((_%$%target230508230564%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g234417_ 0)))
                                  (_%$%tl230510230567%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g234417_ 1))))
                              (if (gx#stx-null? _%$%tl230510230567%_)
                                  (letrec ((_%$%loop230511230570%_
                                            (lambda (_%$%hd230509230574%_
                                                     _%$%clause230515230577%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd230509230574%_)
                                                  (let ((_%$%e230512230579%_
                                                         (gx#syntax-e
                                                          _%$%hd230509230574%_)))
                                                    (let ((_%$%lp-hd230513230583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e230512230579%_)))
                                                          (_%$%lp-tl230514230586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e230512230579%_))))
                                                      (_%$%loop230511230570%_
                                                       _%$%lp-tl230514230586%_
                                                       (cons _%$%lp-hd230513230583%_
                                                             _%$%clause230515230577%_))))
                                                  (let ((_%$%clause230516230589%_
                                                         (reverse _%$%clause230515230577%_)))
                                                    (_%$%loop230502230545%_
                                                     _%$%lp-tl230505230561%_
                                                     (cons _%$%clause230516230589%_
                                                           _%$%clause230506230552%_)))))))
                                    (_%$%loop230511230570%_
                                     _%$%target230508230564%_
                                     '()))
                                  (_%$%g230493230522%_ _%$%g230494230526%_)))))
                        (_%$%g230493230522%_ _%$%g230494230526%_))))
                (let ((_%$%clause230507230592%_
                       (reverse _%$%clause230506230552%_)))
                  ((lambda (_%$%g230495230595%_)
                     (cons (gx#datum->syntax '#f 'make-!case-lambda)
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (foldr (lambda (_%$%g230610230615%_
                                                       _%$%g230611230618%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@lambda)
                                                            (foldr (lambda (_%$%g230612230621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g230613230624%_)
                             (cons _%$%g230612230621%_ _%$%g230613230624%_))
                           '()
                           _%$%g230610230615%_))
              _%$%g230611230618%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%$%g230495230595%_))
                                 '())))
                   _%$%clause230507230592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop230502230545%_
                                           _%$%target230499230539%_
                                           '()))
                                        (_%$%g230493230522%_
                                         _%$%g230494230526%_)))))
                              (_%$%g230493230522%_ _%$%g230494230526%_))))
                      (_%$%g230493230522%_ _%$%g230494230526%_)))))
          (_%$%g230492230627%_ _%$stx230489%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx230633%_)
        (let* ((_%$%g230637230655%_
                (lambda (_%$%g230638230651%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230638230651%_)))
               (_%$%g230636230710%_
                (lambda (_%$%g230638230659%_)
                  (if (gx#stx-pair? _%$%g230638230659%_)
                      (let ((_%$%e230641230662%_
                             (gx#syntax-e _%$%g230638230659%_)))
                        (let ((_%$%hd230642230666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230641230662%_)))
                              (_%$%tl230643230669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230641230662%_))))
                          (if (gx#stx-pair? _%$%tl230643230669%_)
                              (let ((_%$%e230644230672%_
                                     (gx#syntax-e _%$%tl230643230669%_)))
                                (let ((_%$%hd230645230676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230644230672%_)))
                                      (_%$%tl230646230679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230644230672%_))))
                                  (if (gx#stx-pair? _%$%tl230646230679%_)
                                      (let ((_%$%e230647230682%_
                                             (gx#syntax-e
                                              _%$%tl230646230679%_)))
                                        (let ((_%$%hd230648230686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230647230682%_)))
                                              (_%$%tl230649230689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230647230682%_))))
                                          (if (gx#stx-null?
                                               _%$%tl230649230689%_)
                                              ((lambda (_%$%g230639230692%_
                                                        _%$%g230640230694%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-!kw-lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g230640230694%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%g230639230692%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd230648230686%_
                                               _%$%hd230645230676%_)
                                              (_%$%g230637230655%_
                                               _%$%g230638230659%_))))
                                      (_%$%g230637230655%_
                                       _%$%g230638230659%_))))
                              (_%$%g230637230655%_ _%$%g230638230659%_))))
                      (_%$%g230637230655%_ _%$%g230638230659%_)))))
          (_%$%g230636230710%_ _%$stx230633%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx230714%_)
        (let* ((_%$%g230718230736%_
                (lambda (_%$%g230719230732%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230719230732%_)))
               (_%$%g230717230791%_
                (lambda (_%$%g230719230740%_)
                  (if (gx#stx-pair? _%$%g230719230740%_)
                      (let ((_%$%e230722230743%_
                             (gx#syntax-e _%$%g230719230740%_)))
                        (let ((_%$%hd230723230747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230722230743%_)))
                              (_%$%tl230724230750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230722230743%_))))
                          (if (gx#stx-pair? _%$%tl230724230750%_)
                              (let ((_%$%e230725230753%_
                                     (gx#syntax-e _%$%tl230724230750%_)))
                                (let ((_%$%hd230726230757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230725230753%_)))
                                      (_%$%tl230727230760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230725230753%_))))
                                  (if (gx#stx-pair? _%$%tl230727230760%_)
                                      (let ((_%$%e230728230763%_
                                             (gx#syntax-e
                                              _%$%tl230727230760%_)))
                                        (let ((_%$%hd230729230767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230728230763%_)))
                                              (_%$%tl230730230770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230728230763%_))))
                                          (if (gx#stx-null?
                                               _%$%tl230730230770%_)
                                              ((lambda (_%$%g230720230773%_
                                                        _%$%g230721230775%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'make-!kw-lambda-primary)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g230721230775%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _%$%g230720230773%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd230729230767%_
                                               _%$%hd230726230757%_)
                                              (_%$%g230718230736%_
                                               _%$%g230719230740%_))))
                                      (_%$%g230718230736%_
                                       _%$%g230719230740%_))))
                              (_%$%g230718230736%_ _%$%g230719230740%_))))
                      (_%$%g230718230736%_ _%$%g230719230740%_)))))
          (_%$%g230717230791%_ _%$stx230714%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx230795%_)
        (let* ((_%$%g230799230828%_
                (lambda (_%$%g230800230824%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230800230824%_)))
               (_%$%g230798230924%_
                (lambda (_%$%g230800230832%_)
                  (if (gx#stx-pair? _%$%g230800230832%_)
                      (let ((_%$%e230803230835%_
                             (gx#syntax-e _%$%g230800230832%_)))
                        (let ((_%$%hd230804230839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230803230835%_)))
                              (_%$%tl230805230842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230803230835%_))))
                          (if (gx#stx-pair/null? _%$%tl230805230842%_)
                              (let ((_g234419_
                                     (gx#syntax-split-splice
                                      _%$%tl230805230842%_
                                      '0)))
                                (begin
                                  (let ((_g234420_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234419_)
                                               (##values-length _g234419_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234420_ 2)))
                                        (error "Context expects 2 values"
                                               _g234420_)))
                                  (let ((_%$%target230806230845%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234419_ 0)))
                                        (_%$%tl230808230848%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234419_ 1))))
                                    (if (gx#stx-null? _%$%tl230808230848%_)
                                        (letrec ((_%$%loop230809230851%_
                                                  (lambda (_%$%hd230807230855%_
                                                           _%$%rule230813230858%_
                                                           _%$%proc230814230859%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd230807230855%_)
                                                        (let ((_%$%e230810230861%_
                                                               (gx#syntax-e
                                                                _%$%hd230807230855%_)))
                                                          (let ((_%$%lp-hd230811230865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e230810230861%_)))
                        (_%$%lp-tl230812230868%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e230810230861%_))))
                    (if (gx#stx-pair? _%$%lp-hd230811230865%_)
                        (let ((_%$%e230817230871%_
                               (gx#syntax-e _%$%lp-hd230811230865%_)))
                          (let ((_%$%hd230818230875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e230817230871%_)))
                                (_%$%tl230819230878%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e230817230871%_))))
                            (if (gx#stx-pair? _%$%tl230819230878%_)
                                (let ((_%$%e230820230881%_
                                       (gx#syntax-e _%$%tl230819230878%_)))
                                  (let ((_%$%hd230821230885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e230820230881%_)))
                                        (_%$%tl230822230888%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e230820230881%_))))
                                    (if (gx#stx-null? _%$%tl230822230888%_)
                                        (_%$%loop230809230851%_
                                         _%$%lp-tl230812230868%_
                                         (cons _%$%hd230821230885%_
                                               _%$%rule230813230858%_)
                                         (cons _%$%hd230818230875%_
                                               _%$%proc230814230859%_))
                                        (_%$%g230799230828%_
                                         _%$%g230800230832%_))))
                                (_%$%g230799230828%_ _%$%g230800230832%_))))
                        (_%$%g230799230828%_ _%$%g230800230832%_))))
                (let ((_%$%rule230815230891%_ (reverse _%$%rule230813230858%_))
                      (_%$%proc230816230893%_
                       (reverse _%$%proc230814230859%_)))
                  ((lambda (_%$%g230801230895%_ _%$%g230802230897%_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (begin
                             (gx#syntax-check-splice-targets
                              _%$%g230801230895%_
                              _%$%g230802230897%_)
                             (foldr (lambda (_%$%g230912230916%_
                                             _%$%g230913230919%_
                                             _%$%g230914230921%_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'declare-inline-rule!)
                                                  (cons _%$%g230913230919%_
                                                        (cons _%$%g230912230916%_
                                                              '())))
                                            _%$%g230914230921%_))
                                    '()
                                    _%$%g230801230895%_
                                    _%$%g230802230897%_))))
                   _%$%rule230815230891%_
                   _%$%proc230816230893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop230809230851%_
                                           _%$%target230806230845%_
                                           '()
                                           '()))
                                        (_%$%g230799230828%_
                                         _%$%g230800230832%_)))))
                              (_%$%g230799230828%_ _%$%g230800230832%_))))
                      (_%$%g230799230828%_ _%$%g230800230832%_)))))
          (_%$%g230798230924%_ _%$stx230795%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx230929%_)
        (let* ((_%$%g230933230951%_
                (lambda (_%$%g230934230947%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g230934230947%_)))
               (_%$%g230932231006%_
                (lambda (_%$%g230934230955%_)
                  (if (gx#stx-pair? _%$%g230934230955%_)
                      (let ((_%$%e230937230958%_
                             (gx#syntax-e _%$%g230934230955%_)))
                        (let ((_%$%hd230938230962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e230937230958%_)))
                              (_%$%tl230939230965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e230937230958%_))))
                          (if (gx#stx-pair? _%$%tl230939230965%_)
                              (let ((_%$%e230940230968%_
                                     (gx#syntax-e _%$%tl230939230965%_)))
                                (let ((_%$%hd230941230972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e230940230968%_)))
                                      (_%$%tl230942230975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e230940230968%_))))
                                  (if (gx#stx-pair? _%$%tl230942230975%_)
                                      (let ((_%$%e230943230978%_
                                             (gx#syntax-e
                                              _%$%tl230942230975%_)))
                                        (let ((_%$%hd230944230982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e230943230978%_)))
                                              (_%$%tl230945230985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e230943230978%_))))
                                          (if (gx#stx-null?
                                               _%$%tl230945230985%_)
                                              ((lambda (_%$%g230935230988%_
                                                        _%$%g230936230990%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'type)
                           (cons (cons (gx#datum->syntax
                                        '#f
                                        'optimizer-lookup-type)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g230936230990%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f '!lambda?)
                                             (cons (gx#datum->syntax '#f 'type)
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'set!)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '!lambda-inline)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'type)
                             '()))
                 (cons _%$%g230935230988%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'displayln)
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%g230936230990%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd230944230982%_
                                               _%$%hd230941230972%_)
                                              (_%$%g230933230951%_
                                               _%$%g230934230955%_))))
                                      (_%$%g230933230951%_
                                       _%$%g230934230955%_))))
                              (_%$%g230933230951%_ _%$%g230934230955%_))))
                      (_%$%g230933230951%_ _%$%g230934230955%_)))))
          (_%$%g230932231006%_ _%$stx230929%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx231010%_)
        (let* ((_%$%g231015231040%_
                (lambda (_%$%g231016231036%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g231016231036%_)))
               (_%$%g231014231109%_
                (lambda (_%$%g231016231044%_)
                  (if (gx#stx-pair? _%$%g231016231044%_)
                      (let ((_%$%e231023231047%_
                             (gx#syntax-e _%$%g231016231044%_)))
                        (let ((_%$%hd231024231051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231023231047%_)))
                              (_%$%tl231025231054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231023231047%_))))
                          (if (gx#stx-pair? _%$%tl231025231054%_)
                              (let ((_%$%e231026231057%_
                                     (gx#syntax-e _%$%tl231025231054%_)))
                                (let ((_%$%hd231027231061%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e231026231057%_)))
                                      (_%$%tl231028231064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e231026231057%_))))
                                  (if (gx#stx-pair? _%$%hd231027231061%_)
                                      (let ((_%$%e231029231067%_
                                             (gx#syntax-e
                                              _%$%hd231027231061%_)))
                                        (let ((_%$%hd231030231071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e231029231067%_)))
                                              (_%$%tl231031231074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e231029231067%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl231031231074%_)
                                              (let ((_%$%e231032231077%_
                                                     (gx#syntax-e
                                                      _%$%tl231031231074%_)))
                                                (let ((_%$%hd231033231081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e231032231077%_)))
                                                      (_%$%tl231034231084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e231032231077%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl231034231084%_)
                                                      ((lambda (_%$%g231020231087%_
                                                                _%$%g231021231089%_
                                                                _%$%g231022231090%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'declare-primitive-predicate)
                                   (cons _%$%g231022231090%_
                                         (cons _%$%g231021231089%_ '())))
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'declare-primitive-predicates)
                                         _%$%g231020231087%_)
                                   '()))))
               _%$%tl231028231064%_
               _%$%hd231033231081%_
               _%$%hd231030231071%_)
              (_%$%g231015231040%_ _%$%g231016231044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g231015231040%_
                                               _%$%g231016231044%_))))
                                      (_%$%g231015231040%_
                                       _%$%g231016231044%_))))
                              (_%$%g231015231040%_ _%$%g231016231044%_))))
                      (_%$%g231015231040%_ _%$%g231016231044%_))))
               (_%$%g231013231130%_
                (lambda (_%$%g231016231113%_)
                  (if (gx#stx-pair? _%$%g231016231113%_)
                      (let ((_%$%e231017231116%_
                             (gx#syntax-e _%$%g231016231113%_)))
                        (let ((_%$%hd231018231120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231017231116%_)))
                              (_%$%tl231019231123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231017231116%_))))
                          (if (gx#stx-null? _%$%tl231019231123%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'begin) '())))
                              (_%$%g231014231109%_ _%$%g231016231113%_))))
                      (_%$%g231014231109%_ _%$%g231016231113%_)))))
          (_%$%g231013231130%_ _%$stx231010%_))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx231134%_)
        (let* ((_%$%g231139231170%_
                (lambda (_%$%g231140231166%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g231140231166%_)))
               (_%$%g231138231267%_
                (lambda (_%$%g231140231174%_)
                  (if (gx#stx-pair? _%$%g231140231174%_)
                      (let ((_%$%e231147231177%_
                             (gx#syntax-e _%$%g231140231174%_)))
                        (let ((_%$%hd231148231181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231147231177%_)))
                              (_%$%tl231149231184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231147231177%_))))
                          (if (gx#stx-pair? _%$%tl231149231184%_)
                              (let ((_%$%e231150231187%_
                                     (gx#syntax-e _%$%tl231149231184%_)))
                                (let ((_%$%hd231151231191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e231150231187%_)))
                                      (_%$%tl231152231194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e231150231187%_))))
                                  (if (gx#stx-pair? _%$%hd231151231191%_)
                                      (let ((_%$%e231153231197%_
                                             (gx#syntax-e
                                              _%$%hd231151231191%_)))
                                        (let ((_%$%hd231154231201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e231153231197%_)))
                                              (_%$%tl231155231204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e231153231197%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl231155231204%_)
                                              (let ((_g234421_
                                                     (gx#syntax-split-splice
                                                      _%$%tl231155231204%_
                                                      '0)))
                                                (begin
                                                  (let ((_g234422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g234421_)
                                                               (##values-length
                                                                _g234421_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g234422_ 2)))
                (error "Context expects 2 values" _g234422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target231156231207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g234421_
                                                            0)))
                                                        (_%$%tl231158231210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g234421_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl231158231210%_)
                                                        (letrec ((_%$%loop231159231213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd231157231217%_ _%$%sig231163231220%_)
                            (if (gx#stx-pair? _%$%hd231157231217%_)
                                (let ((_%$%e231160231222%_
                                       (gx#syntax-e _%$%hd231157231217%_)))
                                  (let ((_%$%lp-hd231161231226%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231160231222%_)))
                                        (_%$%lp-tl231162231229%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231160231222%_))))
                                    (_%$%loop231159231213%_
                                     _%$%lp-tl231162231229%_
                                     (cons _%$%lp-hd231161231226%_
                                           _%$%sig231163231220%_))))
                                (let ((_%$%sig231164231232%_
                                       (reverse _%$%sig231163231220%_)))
                                  ((lambda (_%$%g231144231235%_
                                            _%$%g231145231237%_
                                            _%$%g231146231238%_)
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'declare-primitive-procedure)
                                                       (cons _%$%g231146231238%_
                                                             (foldr (lambda (_%$%g231258231261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g231259231264%_)
                              (cons _%$%g231258231261%_ _%$%g231259231264%_))
                            '()
                            _%$%g231145231237%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'declare-primitive-procedures)
                                                             _%$%g231144231235%_)
                                                       '()))))
                                   _%$%tl231152231194%_
                                   _%$%sig231164231232%_
                                   _%$%hd231154231201%_))))))
                  (_%$%loop231159231213%_ _%$%target231156231207%_ '()))
                (_%$%g231139231170%_ _%$%g231140231174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g231139231170%_
                                               _%$%g231140231174%_))))
                                      (_%$%g231139231170%_
                                       _%$%g231140231174%_))))
                              (_%$%g231139231170%_ _%$%g231140231174%_))))
                      (_%$%g231139231170%_ _%$%g231140231174%_))))
               (_%$%g231137231288%_
                (lambda (_%$%g231140231271%_)
                  (if (gx#stx-pair? _%$%g231140231271%_)
                      (let ((_%$%e231141231274%_
                             (gx#syntax-e _%$%g231140231271%_)))
                        (let ((_%$%hd231142231278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231141231274%_)))
                              (_%$%tl231143231281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231141231274%_))))
                          (if (gx#stx-null? _%$%tl231143231281%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'begin) '())))
                              (_%$%g231138231267%_ _%$%g231140231271%_))))
                      (_%$%g231138231267%_ _%$%g231140231271%_)))))
          (_%$%g231137231288%_ _%$stx231134%_))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx231293%_)
        (let* ((_%$%g231298231345%_
                (lambda (_%$%g231299231341%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g231299231341%_)))
               (_%$%g231297231428%_
                (lambda (_%$%g231299231349%_)
                  (if (gx#stx-pair? _%$%g231299231349%_)
                      (let ((_%$%e231325231352%_
                             (gx#syntax-e _%$%g231299231349%_)))
                        (let ((_%$%hd231326231356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231325231352%_)))
                              (_%$%tl231327231359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231325231352%_))))
                          (if (gx#stx-pair? _%$%tl231327231359%_)
                              (let ((_%$%e231328231362%_
                                     (gx#syntax-e _%$%tl231327231359%_)))
                                (let ((_%$%hd231329231366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e231328231362%_)))
                                      (_%$%tl231330231369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e231328231362%_))))
                                  (if (gx#stx-pair/null? _%$%tl231330231369%_)
                                      (let ((_g234423_
                                             (gx#syntax-split-splice
                                              _%$%tl231330231369%_
                                              '0)))
                                        (begin
                                          (let ((_g234424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234423_)
                                                       (##values-length
                                                        _g234423_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234424_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234424_)))
                                          (let ((_%$%target231331231372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g234423_ 0)))
                                                (_%$%tl231333231375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g234423_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl231333231375%_)
                                                (letrec ((_%$%loop231334231378%_
                                                          (lambda (_%$%hd231332231382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%sig231338231385%_)
                    (if (gx#stx-pair? _%$%hd231332231382%_)
                        (let ((_%$%e231335231387%_
                               (gx#syntax-e _%$%hd231332231382%_)))
                          (let ((_%$%lp-hd231336231391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231335231387%_)))
                                (_%$%lp-tl231337231394%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231335231387%_))))
                            (_%$%loop231334231378%_
                             _%$%lp-tl231337231394%_
                             (cons _%$%lp-hd231336231391%_
                                   _%$%sig231338231385%_))))
                        (let ((_%$%sig231339231397%_
                               (reverse _%$%sig231338231385%_)))
                          ((lambda (_%$%g231323231400%_ _%$%g231324231402%_)
                             (cons (gx#datum->syntax
                                    '#f
                                    'declare-primitive-lambda)
                                   (cons _%$%g231324231402%_
                                         (foldr (lambda (_%$%g231419231422%_
                                                         _%$%g231420231425%_)
                                                  (cons _%$%g231419231422%_
                                                        _%$%g231420231425%_))
                                                '()
                                                _%$%g231323231400%_))))
                           _%$%sig231339231397%_
                           _%$%hd231329231366%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop231334231378%_
                                                   _%$%target231331231372%_
                                                   '()))
                                                (_%$%g231298231345%_
                                                 _%$%g231299231349%_)))))
                                      (_%$%g231298231345%_
                                       _%$%g231299231349%_))))
                              (_%$%g231298231345%_ _%$%g231299231349%_))))
                      (_%$%g231298231345%_ _%$%g231299231349%_))))
               (_%$%g231296231534%_
                (lambda (_%$%g231299231432%_)
                  (if (gx#stx-pair? _%$%g231299231432%_)
                      (let ((_%$%e231302231435%_
                             (gx#syntax-e _%$%g231299231432%_)))
                        (let ((_%$%hd231303231439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231302231435%_)))
                              (_%$%tl231304231442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231302231435%_))))
                          (if (gx#stx-pair? _%$%tl231304231442%_)
                              (let ((_%$%e231305231445%_
                                     (gx#syntax-e _%$%tl231304231442%_)))
                                (let ((_%$%hd231306231449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e231305231445%_)))
                                      (_%$%tl231307231452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e231305231445%_))))
                                  (if (gx#stx-pair? _%$%tl231307231452%_)
                                      (let ((_%$%e231308231455%_
                                             (gx#syntax-e
                                              _%$%tl231307231452%_)))
                                        (let ((_%$%hd231309231459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e231308231455%_)))
                                              (_%$%tl231310231462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e231308231455%_))))
                                          (if (gx#stx-pair?
                                               _%$%hd231309231459%_)
                                              (let ((_%$%e231311231465%_
                                                     (gx#syntax-e
                                                      _%$%hd231309231459%_)))
                                                (let ((_%$%hd231312231469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e231311231465%_)))
                                                      (_%$%tl231313231472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e231311231465%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd231312231469%_)
                                                      (if (gx#free-identifier=?
                                                           |gxc[1]#_g234425_|
                                                           _%$%hd231312231469%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl231313231472%_)
                                                              (let ((_g234426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%$%tl231313231472%_ '0)))
                        (begin
                          (let ((_g234427_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g234426_)
                                       (##values-length _g234426_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g234427_ 2)))
                                (error "Context expects 2 values" _g234427_)))
                          (let ((_%$%target231314231475%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g234426_ 0)))
                                (_%$%tl231316231478%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g234426_ 1))))
                            (if (gx#stx-null? _%$%tl231316231478%_)
                                (letrec ((_%$%loop231317231481%_
                                          (lambda (_%$%hd231315231485%_
                                                   _%$%sig231321231488%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd231315231485%_)
                                                (let ((_%$%e231318231490%_
                                                       (gx#syntax-e
                                                        _%$%hd231315231485%_)))
                                                  (let ((_%$%lp-hd231319231494%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e231318231490%_)))
                                                        (_%$%lp-tl231320231497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e231318231490%_))))
                                                    (_%$%loop231317231481%_
                                                     _%$%lp-tl231320231497%_
                                                     (cons _%$%lp-hd231319231494%_
                                                           _%$%sig231321231488%_))))
                                                (let ((_%$%sig231322231500%_
                                                       (reverse _%$%sig231321231488%_)))
                                                  (if (gx#stx-null?
                                                       _%$%tl231310231462%_)
                                                      ((lambda (_%$%g231300231503%_
                                                                _%$%g231301231505%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'declare-primitive-case-lambda)
                                                               (cons _%$%g231301231505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g231525231528%_
                                             _%$%g231526231531%_)
                                      (cons _%$%g231525231528%_
                                            _%$%g231526231531%_))
                                    '()
                                    _%$%g231300231503%_))))
               _%$%sig231322231500%_
               _%$%hd231306231449%_)
              (_%$%g231297231428%_ _%$%g231299231432%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%loop231317231481%_
                                   _%$%target231314231475%_
                                   '()))
                                (_%$%g231297231428%_ _%$%g231299231432%_)))))
                      (_%$%g231297231428%_ _%$%g231299231432%_))
                  (_%$%g231297231428%_ _%$%g231299231432%_))
              (_%$%g231297231428%_ _%$%g231299231432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g231297231428%_
                                               _%$%g231299231432%_))))
                                      (_%$%g231297231428%_
                                       _%$%g231299231432%_))))
                              (_%$%g231297231428%_ _%$%g231299231432%_))))
                      (_%$%g231297231428%_ _%$%g231299231432%_)))))
          (_%$%g231296231534%_ _%$stx231293%_))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx232688%_ _%id232690%_)
        (let ((_%proc232694%_
               (with-catch false (lambda () (gx#eval-syntax _%id232690%_)))))
          (if (procedure? _%proc232694%_)
              '#!void
              (gx#raise-syntax-error
               '#f
               '"unknown procedure"
               _%ctx232688%_
               _%id232690%_)))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx232679%_ _%id232681%_)
        (let ((_%klass232685%_
               (with-catch false (lambda () (gx#eval-syntax _%id232681%_)))))
          (if (class-type? _%klass232685%_)
              '#!void
              (gx#raise-syntax-error
               '#f
               '"unknown class"
               _%ctx232679%_
               _%id232681%_)))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx231929%_ _%proc231931%_ _%sig231932%_)
        (letrec ((_%signature-arity231934%_
                  (lambda (_%args232611%_)
                    (let _%loop232614%_ ((_%rest232617%_ _%args232611%_)
                                         (_%count232619%_ '0))
                      (let* ((_%$%rest232620232631%_ _%rest232617%_)
                             (_%$%E232624232637%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest232620232631%_
                                       '([_ . rest])
                                       '([])
                                       '(_))
                                (void)))
                             (_%$%try-match232623232649%_
                              (lambda ()
                                (let ((_%$%K232625232645%_
                                       (lambda () (cons _%count232619%_ '()))))
                                  (_%$%K232625232645%_))))
                             (_%$%try-match232622232661%_
                              (lambda ()
                                (let ((_%$%K232626232657%_
                                       (lambda () _%count232619%_)))
                                  (if (null? _%$%rest232620232631%_)
                                      (_%$%K232626232657%_)
                                      (_%$%try-match232623232649%_)))))
                             (_%$%K232627232668%_
                              (lambda (_%rest232665%_)
                                (_%loop232614%_
                                 _%rest232665%_
                                 (fx1+ _%count232619%_)))))
                        (if (pair? _%$%rest232620232631%_)
                            (let* ((_%$%tl232629232672%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest232620232631%_)))
                                   (_%rest232676%_ _%$%tl232629232672%_))
                              (_%$%K232627232668%_ _%rest232676%_))
                            (_%$%try-match232622232661%_))))))
                 (_%make-signature231936%_
                  (lambda (_%args232493%_
                           _%return232495%_
                           _%effect232496%_
                           _%unchecked232497%_)
                    (gx#stx-for-each
                     (lambda (_%$%g232498232500%_)
                       (|gxc[1]#verify-class!|
                        _%ctx231929%_
                        _%$%g232498232500%_))
                     _%args232493%_)
                    (|gxc[1]#verify-class!| _%ctx231929%_ _%return232495%_)
                    (if _%unchecked232497%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx231929%_
                         _%unchecked232497%_)
                        '#!void)
                    (let ((_%arity232504%_
                           (_%signature-arity231934%_
                            (gx#stx-map gx#stx-e _%args232493%_))))
                      (if _%effect232496%_
                          (let ((_%effect232507%_
                                 (gx#syntax->datum _%effect232496%_)))
                            (if (and (list? _%effect232507%_)
                                     (andmap symbol? _%effect232507%_))
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"bad effect"
                                 _%ctx231929%_
                                 _%proc231931%_
                                 _%effect232507%_)))
                          '#!void)
                      (cons _%arity232504%_
                            (cons (let* ((_%$%g232510232533%_
                                          (lambda (_%$%g232511232529%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g232511232529%_)))
                                         (_%$%g232509232607%_
                                          (lambda (_%$%g232511232537%_)
                                            (if (gx#stx-pair?
                                                 _%$%g232511232537%_)
                                                (let ((_%$%e232516232540%_
                                                       (gx#syntax-e
                                                        _%$%g232511232537%_)))
                                                  (let ((_%$%hd232517232544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e232516232540%_)))
                                                        (_%$%tl232518232547%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e232516232540%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl232518232547%_)
                                                        (let ((_%$%e232519232550%_
                                                               (gx#syntax-e
                                                                _%$%tl232518232547%_)))
                                                          (let ((_%$%hd232520232554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e232519232550%_)))
                        (_%$%tl232521232557%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e232519232550%_))))
                    (if (gx#stx-pair? _%$%tl232521232557%_)
                        (let ((_%$%e232522232560%_
                               (gx#syntax-e _%$%tl232521232557%_)))
                          (let ((_%$%hd232523232564%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e232522232560%_)))
                                (_%$%tl232524232567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e232522232560%_))))
                            (if (gx#stx-pair? _%$%tl232524232567%_)
                                (let ((_%$%e232525232570%_
                                       (gx#syntax-e _%$%tl232524232567%_)))
                                  (let ((_%$%hd232526232574%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e232525232570%_)))
                                        (_%$%tl232527232577%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e232525232570%_))))
                                    (if (gx#stx-null? _%$%tl232527232577%_)
                                        ((lambda (_%$%g232512232580%_
                                                  _%$%g232513232582%_
                                                  _%$%g232514232583%_
                                                  _%$%g232515232584%_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'make-!signature)
                                                 (cons 'arguments:
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g232515232584%_ '()))
                     (cons 'return:
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%g232514232583%_ '()))
                                 (cons 'effect:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g232513232582%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g232512232580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons 'origin:
                       (cons (cons (gx#datum->syntax '#f 'quote)
                                   (cons (gx#datum->syntax '#f 'builtin) '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%hd232526232574%_
                                         _%$%hd232523232564%_
                                         _%$%hd232520232554%_
                                         _%$%hd232517232544%_)
                                        (_%$%g232510232533%_
                                         _%$%g232511232537%_))))
                                (_%$%g232510232533%_ _%$%g232511232537%_))))
                        (_%$%g232510232533%_ _%$%g232511232537%_))))
                (_%$%g232510232533%_ _%$%g232511232537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g232510232533%_
                                                 _%$%g232511232537%_)))))
                                    (_%$%g232509232607%_
                                     (list _%args232493%_
                                           _%return232495%_
                                           _%effect232496%_
                                           _%unchecked232497%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx231929%_ _%proc231931%_)
          (let* ((_%$%g231943232046%_
                  (lambda (_%$%g231944232042%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g231944232042%_)))
                 (_%$%g231942232121%_
                  (lambda (_%$%g231944232050%_)
                    (if (gx#stx-pair? _%$%g231944232050%_)
                        (let ((_%$%e232028232053%_
                               (gx#syntax-e _%$%g231944232050%_)))
                          (let ((_%$%hd232029232057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e232028232053%_)))
                                (_%$%tl232030232060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e232028232053%_))))
                            (if (gx#stx-pair? _%$%tl232030232060%_)
                                (let ((_%$%e232031232063%_
                                       (gx#syntax-e _%$%tl232030232060%_)))
                                  (let ((_%$%hd232032232067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e232031232063%_)))
                                        (_%$%tl232033232070%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e232031232063%_))))
                                    (if (gx#stx-pair? _%$%tl232033232070%_)
                                        (let ((_%$%e232034232073%_
                                               (gx#syntax-e
                                                _%$%tl232033232070%_)))
                                          (let ((_%$%hd232035232077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e232034232073%_)))
                                                (_%$%tl232036232080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e232034232073%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd232035232077%_)
                                                (let ((_%$%e232037232083%_
                                                       (gx#stx-e
                                                        _%$%hd232035232077%_)))
                                                  (if (equal? _%$%e232037232083%_
                                                              'unchecked:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl232036232080%_)
                                                          (let ((_%$%e232038232087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl232036232080%_)))
                    (let ((_%$%hd232039232091%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e232038232087%_)))
                          (_%$%tl232040232094%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e232038232087%_))))
                      (if (gx#stx-null? _%$%tl232040232094%_)
                          ((lambda (_%$%g232025232097%_
                                    _%$%g232026232099%_
                                    _%$%g232027232100%_)
                             (_%make-signature231936%_
                              _%$%g232027232100%_
                              _%$%g232026232099%_
                              '#f
                              (gx#stx-e _%$%g232025232097%_)))
                           _%$%hd232039232091%_
                           _%$%hd232032232067%_
                           _%$%hd232029232057%_)
                          (_%$%g231943232046%_ _%$%g231944232050%_))))
                  (_%$%g231943232046%_ _%$%g231944232050%_))
              (_%$%g231943232046%_ _%$%g231944232050%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231943232046%_
                                                 _%$%g231944232050%_))))
                                        (_%$%g231943232046%_
                                         _%$%g231944232050%_))))
                                (_%$%g231943232046%_ _%$%g231944232050%_))))
                        (_%$%g231943232046%_ _%$%g231944232050%_))))
                 (_%$%g231941232180%_
                  (lambda (_%$%g231944232125%_)
                    (if (gx#stx-pair? _%$%g231944232125%_)
                        (let ((_%$%e232015232128%_
                               (gx#syntax-e _%$%g231944232125%_)))
                          (let ((_%$%hd232016232132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e232015232128%_)))
                                (_%$%tl232017232135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e232015232128%_))))
                            (if (gx#stx-pair? _%$%tl232017232135%_)
                                (let ((_%$%e232018232138%_
                                       (gx#syntax-e _%$%tl232017232135%_)))
                                  (let ((_%$%hd232019232142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e232018232138%_)))
                                        (_%$%tl232020232145%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e232018232138%_))))
                                    (if (gx#stx-pair? _%$%tl232020232145%_)
                                        (let ((_%$%e232021232148%_
                                               (gx#syntax-e
                                                _%$%tl232020232145%_)))
                                          (let ((_%$%hd232022232152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e232021232148%_)))
                                                (_%$%tl232023232155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e232021232148%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd232022232152%_)
                                                (let ((_%$%e232024232158%_
                                                       (gx#stx-e
                                                        _%$%hd232022232152%_)))
                                                  (if (equal? _%$%e232024232158%_
                                                              'unchecked:)
                                                      (if (gx#stx-null?
                                                           _%$%tl232023232155%_)
                                                          ((lambda (_%$%g232013232162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g232014232164%_)
                     (_%make-signature231936%_
                      _%$%g232014232164%_
                      _%$%g232013232162%_
                      '#f
                      (make-symbol '"##" (gx#stx-e _%proc231931%_))))
                   _%$%hd232019232142%_
                   _%$%hd232016232132%_)
                  (_%$%g231942232121%_ _%$%g231944232125%_))
              (_%$%g231942232121%_ _%$%g231944232125%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231942232121%_
                                                 _%$%g231944232125%_))))
                                        (_%$%g231942232121%_
                                         _%$%g231944232125%_))))
                                (_%$%g231942232121%_ _%$%g231944232125%_))))
                        (_%$%g231942232121%_ _%$%g231944232125%_))))
                 (_%$%g231940232284%_
                  (lambda (_%$%g231944232184%_)
                    (if (gx#stx-pair? _%$%g231944232184%_)
                        (let ((_%$%e231993232187%_
                               (gx#syntax-e _%$%g231944232184%_)))
                          (let ((_%$%hd231994232191%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231993232187%_)))
                                (_%$%tl231995232194%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231993232187%_))))
                            (if (gx#stx-pair? _%$%tl231995232194%_)
                                (let ((_%$%e231996232197%_
                                       (gx#syntax-e _%$%tl231995232194%_)))
                                  (let ((_%$%hd231997232201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231996232197%_)))
                                        (_%$%tl231998232204%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231996232197%_))))
                                    (if (gx#stx-pair? _%$%tl231998232204%_)
                                        (let ((_%$%e231999232207%_
                                               (gx#syntax-e
                                                _%$%tl231998232204%_)))
                                          (let ((_%$%hd232000232211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e231999232207%_)))
                                                (_%$%tl232001232214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e231999232207%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd232000232211%_)
                                                (let ((_%$%e232002232217%_
                                                       (gx#stx-e
                                                        _%$%hd232000232211%_)))
                                                  (if (equal? _%$%e232002232217%_
                                                              'effect:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl232001232214%_)
                                                          (let ((_%$%e232003232221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl232001232214%_)))
                    (let ((_%$%hd232004232225%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e232003232221%_)))
                          (_%$%tl232005232228%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e232003232221%_))))
                      (if (gx#stx-pair? _%$%tl232005232228%_)
                          (let ((_%$%e232006232231%_
                                 (gx#syntax-e _%$%tl232005232228%_)))
                            (let ((_%$%hd232007232235%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e232006232231%_)))
                                  (_%$%tl232008232238%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e232006232231%_))))
                              (if (gx#stx-datum? _%$%hd232007232235%_)
                                  (let ((_%$%e232009232241%_
                                         (gx#stx-e _%$%hd232007232235%_)))
                                    (if (equal? _%$%e232009232241%_
                                                'unchecked:)
                                        (if (gx#stx-pair? _%$%tl232008232238%_)
                                            (let ((_%$%e232010232245%_
                                                   (gx#syntax-e
                                                    _%$%tl232008232238%_)))
                                              (let ((_%$%hd232011232249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e232010232245%_)))
                                                    (_%$%tl232012232252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e232010232245%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl232012232252%_)
                                                    ((lambda (_%$%g231989232255%_
                                                              _%$%g231990232257%_
                                                              _%$%g231991232258%_
                                                              _%$%g231992232259%_)
                                                       (_%make-signature231936%_
                                                        _%$%g231992232259%_
                                                        _%$%g231991232258%_
                                                        '#f
                                                        (gx#stx-e
                                                         _%$%g231989232255%_)))
                                                     _%$%hd232011232249%_
                                                     _%$%hd232004232225%_
                                                     _%$%hd231997232201%_
                                                     _%$%hd231994232191%_)
                                                    (_%$%g231941232180%_
                                                     _%$%g231944232184%_))))
                                            (_%$%g231941232180%_
                                             _%$%g231944232184%_))
                                        (_%$%g231941232180%_
                                         _%$%g231944232184%_)))
                                  (_%$%g231941232180%_ _%$%g231944232184%_))))
                          (_%$%g231941232180%_ _%$%g231944232184%_))))
                  (_%$%g231941232180%_ _%$%g231944232184%_))
              (_%$%g231941232180%_ _%$%g231944232184%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231941232180%_
                                                 _%$%g231944232184%_))))
                                        (_%$%g231941232180%_
                                         _%$%g231944232184%_))))
                                (_%$%g231941232180%_ _%$%g231944232184%_))))
                        (_%$%g231941232180%_ _%$%g231944232184%_))))
                 (_%$%g231939232374%_
                  (lambda (_%$%g231944232288%_)
                    (if (gx#stx-pair? _%$%g231944232288%_)
                        (let ((_%$%e231972232291%_
                               (gx#syntax-e _%$%g231944232288%_)))
                          (let ((_%$%hd231973232295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231972232291%_)))
                                (_%$%tl231974232298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231972232291%_))))
                            (if (gx#stx-pair? _%$%tl231974232298%_)
                                (let ((_%$%e231975232301%_
                                       (gx#syntax-e _%$%tl231974232298%_)))
                                  (let ((_%$%hd231976232305%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231975232301%_)))
                                        (_%$%tl231977232308%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231975232301%_))))
                                    (if (gx#stx-pair? _%$%tl231977232308%_)
                                        (let ((_%$%e231978232311%_
                                               (gx#syntax-e
                                                _%$%tl231977232308%_)))
                                          (let ((_%$%hd231979232315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e231978232311%_)))
                                                (_%$%tl231980232318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e231978232311%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd231979232315%_)
                                                (let ((_%$%e231981232321%_
                                                       (gx#stx-e
                                                        _%$%hd231979232315%_)))
                                                  (if (equal? _%$%e231981232321%_
                                                              'effect:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl231980232318%_)
                                                          (let ((_%$%e231982232325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl231980232318%_)))
                    (let ((_%$%hd231983232329%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e231982232325%_)))
                          (_%$%tl231984232332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e231982232325%_))))
                      (if (gx#stx-pair? _%$%tl231984232332%_)
                          (let ((_%$%e231985232335%_
                                 (gx#syntax-e _%$%tl231984232332%_)))
                            (let ((_%$%hd231986232339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e231985232335%_)))
                                  (_%$%tl231987232342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e231985232335%_))))
                              (if (gx#stx-datum? _%$%hd231986232339%_)
                                  (let ((_%$%e231988232345%_
                                         (gx#stx-e _%$%hd231986232339%_)))
                                    (if (equal? _%$%e231988232345%_
                                                'unchecked:)
                                        (if (gx#stx-null? _%$%tl231987232342%_)
                                            ((lambda (_%$%g231969232349%_
                                                      _%$%g231970232351%_
                                                      _%$%g231971232352%_)
                                               (_%make-signature231936%_
                                                _%$%g231971232352%_
                                                _%$%g231970232351%_
                                                _%$%g231969232349%_
                                                (make-symbol
                                                 '"##"
                                                 (gx#stx-e _%proc231931%_))))
                                             _%$%hd231983232329%_
                                             _%$%hd231976232305%_
                                             _%$%hd231973232295%_)
                                            (_%$%g231940232284%_
                                             _%$%g231944232288%_))
                                        (_%$%g231940232284%_
                                         _%$%g231944232288%_)))
                                  (_%$%g231940232284%_ _%$%g231944232288%_))))
                          (_%$%g231940232284%_ _%$%g231944232288%_))))
                  (_%$%g231940232284%_ _%$%g231944232288%_))
              (_%$%g231940232284%_ _%$%g231944232288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231940232284%_
                                                 _%$%g231944232288%_))))
                                        (_%$%g231940232284%_
                                         _%$%g231944232288%_))))
                                (_%$%g231940232284%_ _%$%g231944232288%_))))
                        (_%$%g231940232284%_ _%$%g231944232288%_))))
                 (_%$%g231938232447%_
                  (lambda (_%$%g231944232378%_)
                    (if (gx#stx-pair? _%$%g231944232378%_)
                        (let ((_%$%e231956232381%_
                               (gx#syntax-e _%$%g231944232378%_)))
                          (let ((_%$%hd231957232385%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231956232381%_)))
                                (_%$%tl231958232388%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231956232381%_))))
                            (if (gx#stx-pair? _%$%tl231958232388%_)
                                (let ((_%$%e231959232391%_
                                       (gx#syntax-e _%$%tl231958232388%_)))
                                  (let ((_%$%hd231960232395%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231959232391%_)))
                                        (_%$%tl231961232398%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231959232391%_))))
                                    (if (gx#stx-pair? _%$%tl231961232398%_)
                                        (let ((_%$%e231962232401%_
                                               (gx#syntax-e
                                                _%$%tl231961232398%_)))
                                          (let ((_%$%hd231963232405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e231962232401%_)))
                                                (_%$%tl231964232408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e231962232401%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd231963232405%_)
                                                (let ((_%$%e231965232411%_
                                                       (gx#stx-e
                                                        _%$%hd231963232405%_)))
                                                  (if (equal? _%$%e231965232411%_
                                                              'effect:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl231964232408%_)
                                                          (let ((_%$%e231966232415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl231964232408%_)))
                    (let ((_%$%hd231967232419%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e231966232415%_)))
                          (_%$%tl231968232422%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e231966232415%_))))
                      (if (gx#stx-null? _%$%tl231968232422%_)
                          ((lambda (_%$%g231953232425%_
                                    _%$%g231954232427%_
                                    _%$%g231955232428%_)
                             (_%make-signature231936%_
                              _%$%g231955232428%_
                              _%$%g231954232427%_
                              _%$%g231953232425%_
                              '#f))
                           _%$%hd231967232419%_
                           _%$%hd231960232395%_
                           _%$%hd231957232385%_)
                          (_%$%g231939232374%_ _%$%g231944232378%_))))
                  (_%$%g231939232374%_ _%$%g231944232378%_))
              (_%$%g231939232374%_ _%$%g231944232378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231939232374%_
                                                 _%$%g231944232378%_))))
                                        (_%$%g231939232374%_
                                         _%$%g231944232378%_))))
                                (_%$%g231939232374%_ _%$%g231944232378%_))))
                        (_%$%g231939232374%_ _%$%g231944232378%_))))
                 (_%$%g231937232489%_
                  (lambda (_%$%g231944232451%_)
                    (if (gx#stx-pair? _%$%g231944232451%_)
                        (let ((_%$%e231947232454%_
                               (gx#syntax-e _%$%g231944232451%_)))
                          (let ((_%$%hd231948232458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231947232454%_)))
                                (_%$%tl231949232461%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231947232454%_))))
                            (if (gx#stx-pair? _%$%tl231949232461%_)
                                (let ((_%$%e231950232464%_
                                       (gx#syntax-e _%$%tl231949232461%_)))
                                  (let ((_%$%hd231951232468%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231950232464%_)))
                                        (_%$%tl231952232471%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231950232464%_))))
                                    (if (gx#stx-null? _%$%tl231952232471%_)
                                        ((lambda (_%$%g231945232474%_
                                                  _%$%g231946232476%_)
                                           (_%make-signature231936%_
                                            _%$%g231946232476%_
                                            _%$%g231945232474%_
                                            '#f
                                            '#f))
                                         _%$%hd231951232468%_
                                         _%$%hd231948232458%_)
                                        (_%$%g231938232447%_
                                         _%$%g231944232451%_))))
                                (_%$%g231938232447%_ _%$%g231944232451%_))))
                        (_%$%g231938232447%_ _%$%g231944232451%_)))))
            (_%$%g231937232489%_ _%sig231932%_)))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig231540%_)
        (let* ((_%$%g231543231623%_
                (lambda (_%$%g231544231619%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g231544231619%_)))
               (_%$%g231542231925%_
                (lambda (_%$%g231544231627%_)
                  (if (gx#stx-pair? _%$%g231544231627%_)
                      (let ((_%$%e231550231630%_
                             (gx#syntax-e _%$%g231544231627%_)))
                        (let ((_%$%hd231551231634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231550231630%_)))
                              (_%$%tl231552231637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231550231630%_))))
                          (if (gx#stx-pair? _%$%tl231552231637%_)
                              (let ((_%$%e231553231640%_
                                     (gx#syntax-e _%$%tl231552231637%_)))
                                (let ((_%$%hd231554231644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e231553231640%_)))
                                      (_%$%tl231555231647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e231553231640%_))))
                                  (if (gx#stx-datum? _%$%hd231554231644%_)
                                      (let ((_%$%e231556231650%_
                                             (gx#stx-e _%$%hd231554231644%_)))
                                        (if (equal? _%$%e231556231650%_
                                                    'arguments:)
                                            (if (gx#stx-pair?
                                                 _%$%tl231555231647%_)
                                                (let ((_%$%e231557231654%_
                                                       (gx#syntax-e
                                                        _%$%tl231555231647%_)))
                                                  (let ((_%$%hd231558231658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e231557231654%_)))
                                                        (_%$%tl231559231661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e231557231654%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%hd231558231658%_)
                                                        (let ((_%$%e231560231664%_
                                                               (gx#syntax-e
                                                                _%$%hd231558231658%_)))
                                                          (let ((_%$%hd231561231668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e231560231664%_)))
                        (_%$%tl231562231671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e231560231664%_))))
                    (if (gx#identifier? _%$%hd231561231668%_)
                        (if (gx#free-identifier=?
                             |gxc[1]#_g234428_|
                             _%$%hd231561231668%_)
                            (if (gx#stx-pair? _%$%tl231562231671%_)
                                (let ((_%$%e231563231674%_
                                       (gx#syntax-e _%$%tl231562231671%_)))
                                  (let ((_%$%hd231564231678%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231563231674%_)))
                                        (_%$%tl231565231681%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231563231674%_))))
                                    (if (gx#stx-null? _%$%tl231565231681%_)
                                        (if (gx#stx-pair? _%$%tl231559231661%_)
                                            (let ((_%$%e231566231684%_
                                                   (gx#syntax-e
                                                    _%$%tl231559231661%_)))
                                              (let ((_%$%hd231567231688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e231566231684%_)))
                                                    (_%$%tl231568231691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e231566231684%_))))
                                                (if (gx#stx-datum?
                                                     _%$%hd231567231688%_)
                                                    (let ((_%$%e231569231694%_
                                                           (gx#stx-e
                                                            _%$%hd231567231688%_)))
                                                      (if (equal? _%$%e231569231694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (gx#stx-pair? _%$%tl231568231691%_)
                      (let ((_%$%e231570231698%_
                             (gx#syntax-e _%$%tl231568231691%_)))
                        (let ((_%$%hd231571231702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e231570231698%_)))
                              (_%$%tl231572231705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e231570231698%_))))
                          (if (gx#stx-pair? _%$%hd231571231702%_)
                              (let ((_%$%e231573231708%_
                                     (gx#syntax-e _%$%hd231571231702%_)))
                                (let ((_%$%hd231574231712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e231573231708%_)))
                                      (_%$%tl231575231715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e231573231708%_))))
                                  (if (gx#identifier? _%$%hd231574231712%_)
                                      (if (gx#free-identifier=?
                                           |gxc[1]#_g234429_|
                                           _%$%hd231574231712%_)
                                          (if (gx#stx-pair?
                                               _%$%tl231575231715%_)
                                              (let ((_%$%e231576231718%_
                                                     (gx#syntax-e
                                                      _%$%tl231575231715%_)))
                                                (let ((_%$%hd231577231722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e231576231718%_)))
                                                      (_%$%tl231578231725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e231576231718%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl231578231725%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl231572231705%_)
                                                          (let ((_%$%e231579231728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl231572231705%_)))
                    (let ((_%$%hd231580231732%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e231579231728%_)))
                          (_%$%tl231581231735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e231579231728%_))))
                      (if (gx#stx-datum? _%$%hd231580231732%_)
                          (let ((_%$%e231582231738%_
                                 (gx#stx-e _%$%hd231580231732%_)))
                            (if (equal? _%$%e231582231738%_ 'effect:)
                                (if (gx#stx-pair? _%$%tl231581231735%_)
                                    (let ((_%$%e231583231742%_
                                           (gx#syntax-e _%$%tl231581231735%_)))
                                      (let ((_%$%hd231584231746%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e231583231742%_)))
                                            (_%$%tl231585231749%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e231583231742%_))))
                                        (if (gx#stx-pair? _%$%hd231584231746%_)
                                            (let ((_%$%e231586231752%_
                                                   (gx#syntax-e
                                                    _%$%hd231584231746%_)))
                                              (let ((_%$%hd231587231756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e231586231752%_)))
                                                    (_%$%tl231588231759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e231586231752%_))))
                                                (if (gx#identifier?
                                                     _%$%hd231587231756%_)
                                                    (if (gx#free-identifier=?
                                                         |gxc[1]#_g234430_|
                                                         _%$%hd231587231756%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl231588231759%_)
                                                            (let ((_%$%e231589231762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl231588231759%_)))
                      (let ((_%$%hd231590231766%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e231589231762%_)))
                            (_%$%tl231591231769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e231589231762%_))))
                        (if (gx#stx-null? _%$%tl231591231769%_)
                            (if (gx#stx-pair? _%$%tl231585231749%_)
                                (let ((_%$%e231592231772%_
                                       (gx#syntax-e _%$%tl231585231749%_)))
                                  (let ((_%$%hd231593231776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231592231772%_)))
                                        (_%$%tl231594231779%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231592231772%_))))
                                    (if (gx#stx-datum? _%$%hd231593231776%_)
                                        (let ((_%$%e231595231782%_
                                               (gx#stx-e
                                                _%$%hd231593231776%_)))
                                          (if (equal? _%$%e231595231782%_
                                                      'unchecked:)
                                              (if (gx#stx-pair?
                                                   _%$%tl231594231779%_)
                                                  (let ((_%$%e231596231786%_
                                                         (gx#syntax-e
                                                          _%$%tl231594231779%_)))
                                                    (let ((_%$%hd231597231790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e231596231786%_)))
                                                          (_%$%tl231598231793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e231596231786%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd231597231790%_)
                                                          (let ((_%$%e231599231796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd231597231790%_)))
                    (let ((_%$%hd231600231800%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e231599231796%_)))
                          (_%$%tl231601231803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e231599231796%_))))
                      (if (gx#identifier? _%$%hd231600231800%_)
                          (if (gx#free-identifier=?
                               |gxc[1]#_g234431_|
                               _%$%hd231600231800%_)
                              (if (gx#stx-pair? _%$%tl231601231803%_)
                                  (let ((_%$%e231602231806%_
                                         (gx#syntax-e _%$%tl231601231803%_)))
                                    (let ((_%$%hd231603231810%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e231602231806%_)))
                                          (_%$%tl231604231813%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e231602231806%_))))
                                      (if (gx#stx-null? _%$%tl231604231813%_)
                                          (if (gx#stx-pair?
                                               _%$%tl231598231793%_)
                                              (let ((_%$%e231605231816%_
                                                     (gx#syntax-e
                                                      _%$%tl231598231793%_)))
                                                (let ((_%$%hd231606231820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e231605231816%_)))
                                                      (_%$%tl231607231823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e231605231816%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd231606231820%_)
                                                      (let ((_%$%e231608231826%_
                                                             (gx#stx-e
                                                              _%$%hd231606231820%_)))
                                                        (if (equal? _%$%e231608231826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'origin:)
                    (if (gx#stx-pair? _%$%tl231607231823%_)
                        (let ((_%$%e231609231830%_
                               (gx#syntax-e _%$%tl231607231823%_)))
                          (let ((_%$%hd231610231834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e231609231830%_)))
                                (_%$%tl231611231837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e231609231830%_))))
                            (if (gx#stx-pair? _%$%hd231610231834%_)
                                (let ((_%$%e231612231840%_
                                       (gx#syntax-e _%$%hd231610231834%_)))
                                  (let ((_%$%hd231613231844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e231612231840%_)))
                                        (_%$%tl231614231847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e231612231840%_))))
                                    (if (gx#identifier? _%$%hd231613231844%_)
                                        (if (gx#free-identifier=?
                                             |gxc[1]#_g234432_|
                                             _%$%hd231613231844%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl231614231847%_)
                                                (let ((_%$%e231615231850%_
                                                       (gx#syntax-e
                                                        _%$%tl231614231847%_)))
                                                  (let ((_%$%hd231616231854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e231615231850%_)))
                                                        (_%$%tl231617231857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e231615231850%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl231617231857%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl231611231837%_)
                                                            ((lambda (_%$%g231545231860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g231546231862%_
                              _%$%g231547231863%_
                              _%$%g231548231864%_
                              _%$%g231549231865%_)
                       (if (gx#stx-e _%$%g231546231862%_)
                           (cons _%$%g231546231862%_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-!signature)
                                             (cons 'return:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g231548231864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons 'origin:
                       (cons (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%$%g231545231860%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%$%hd231616231854%_
                     _%$%hd231603231810%_
                     _%$%hd231590231766%_
                     _%$%hd231577231722%_
                     _%$%hd231564231678%_)
                    (_%$%g231543231623%_ _%$%g231544231627%_))
                (_%$%g231543231623%_ _%$%g231544231627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231543231623%_
                                                 _%$%g231544231627%_))
                                            (_%$%g231543231623%_
                                             _%$%g231544231627%_))
                                        (_%$%g231543231623%_
                                         _%$%g231544231627%_))))
                                (_%$%g231543231623%_ _%$%g231544231627%_))))
                        (_%$%g231543231623%_ _%$%g231544231627%_))
                    (_%$%g231543231623%_ _%$%g231544231627%_)))
              (_%$%g231543231623%_ _%$%g231544231627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g231543231623%_
                                               _%$%g231544231627%_))
                                          (_%$%g231543231623%_
                                           _%$%g231544231627%_))))
                                  (_%$%g231543231623%_ _%$%g231544231627%_))
                              (_%$%g231543231623%_ _%$%g231544231627%_))
                          (_%$%g231543231623%_ _%$%g231544231627%_))))
                  (_%$%g231543231623%_ _%$%g231544231627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g231543231623%_
                                                   _%$%g231544231627%_))
                                              (_%$%g231543231623%_
                                               _%$%g231544231627%_)))
                                        (_%$%g231543231623%_
                                         _%$%g231544231627%_))))
                                (_%$%g231543231623%_ _%$%g231544231627%_))
                            (_%$%g231543231623%_ _%$%g231544231627%_))))
                    (_%$%g231543231623%_ _%$%g231544231627%_))
                (_%$%g231543231623%_ _%$%g231544231627%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g231543231623%_
                                                     _%$%g231544231627%_))))
                                            (_%$%g231543231623%_
                                             _%$%g231544231627%_))))
                                    (_%$%g231543231623%_ _%$%g231544231627%_))
                                (_%$%g231543231623%_ _%$%g231544231627%_)))
                          (_%$%g231543231623%_ _%$%g231544231627%_))))
                  (_%$%g231543231623%_ _%$%g231544231627%_))
              (_%$%g231543231623%_ _%$%g231544231627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g231543231623%_
                                               _%$%g231544231627%_))
                                          (_%$%g231543231623%_
                                           _%$%g231544231627%_))
                                      (_%$%g231543231623%_
                                       _%$%g231544231627%_))))
                              (_%$%g231543231623%_ _%$%g231544231627%_))))
                      (_%$%g231543231623%_ _%$%g231544231627%_))
                  (_%$%g231543231623%_ _%$%g231544231627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g231543231623%_
                                                     _%$%g231544231627%_))))
                                            (_%$%g231543231623%_
                                             _%$%g231544231627%_))
                                        (_%$%g231543231623%_
                                         _%$%g231544231627%_))))
                                (_%$%g231543231623%_ _%$%g231544231627%_))
                            (_%$%g231543231623%_ _%$%g231544231627%_))
                        (_%$%g231543231623%_ _%$%g231544231627%_))))
                (_%$%g231543231623%_ _%$%g231544231627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g231543231623%_
                                                 _%$%g231544231627%_))
                                            (_%$%g231543231623%_
                                             _%$%g231544231627%_)))
                                      (_%$%g231543231623%_
                                       _%$%g231544231627%_))))
                              (_%$%g231543231623%_ _%$%g231544231627%_))))
                      (_%$%g231543231623%_ _%$%g231544231627%_)))))
          (_%$%g231542231925%_ _%sig231540%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx232697%_)
        (let* ((_%$%g232700232718%_
                (lambda (_%$%g232701232714%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g232701232714%_)))
               (_%$%g232699232773%_
                (lambda (_%$%g232701232722%_)
                  (if (gx#stx-pair? _%$%g232701232722%_)
                      (let ((_%$%e232704232725%_
                             (gx#syntax-e _%$%g232701232722%_)))
                        (let ((_%$%hd232705232729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e232704232725%_)))
                              (_%$%tl232706232732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e232704232725%_))))
                          (if (gx#stx-pair? _%$%tl232706232732%_)
                              (let ((_%$%e232707232735%_
                                     (gx#syntax-e _%$%tl232706232732%_)))
                                (let ((_%$%hd232708232739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e232707232735%_)))
                                      (_%$%tl232709232742%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e232707232735%_))))
                                  (if (gx#stx-pair? _%$%tl232709232742%_)
                                      (let ((_%$%e232710232745%_
                                             (gx#syntax-e
                                              _%$%tl232709232742%_)))
                                        (let ((_%$%hd232711232749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e232710232745%_)))
                                              (_%$%tl232712232752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e232710232745%_))))
                                          (if (gx#stx-null?
                                               _%$%tl232712232752%_)
                                              ((lambda (_%$%g232702232755%_
                                                        _%$%g232703232757%_)
                                                 (if (and (gx#identifier?
                                                           _%$%g232703232757%_)
                                                          (gx#identifier?
                                                           _%$%g232702232755%_))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx232697%_
                                                        _%$%g232703232757%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx232697%_
                                                        _%$%g232702232755%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'declare-type)
                                                             (cons _%$%g232703232757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax
                                        '#f
                                        'make-!primitive-predicate)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g232702232755%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g232700232718%_
                                                      _%$%g232701232722%_)))
                                               _%$%hd232711232749%_
                                               _%$%hd232708232739%_)
                                              (_%$%g232700232718%_
                                               _%$%g232701232722%_))))
                                      (_%$%g232700232718%_
                                       _%$%g232701232722%_))))
                              (_%$%g232700232718%_ _%$%g232701232722%_))))
                      (_%$%g232700232718%_ _%$%g232701232722%_)))))
          (_%$%g232699232773%_ _%stx232697%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx232777%_)
        (let* ((_%$%g232780232804%_
                (lambda (_%$%g232781232800%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g232781232800%_)))
               (_%$%g232779233085%_
                (lambda (_%$%g232781232808%_)
                  (if (gx#stx-pair? _%$%g232781232808%_)
                      (let ((_%$%e232784232811%_
                             (gx#syntax-e _%$%g232781232808%_)))
                        (let ((_%$%hd232785232815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e232784232811%_)))
                              (_%$%tl232786232818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e232784232811%_))))
                          (if (gx#stx-pair? _%$%tl232786232818%_)
                              (let ((_%$%e232787232821%_
                                     (gx#syntax-e _%$%tl232786232818%_)))
                                (let ((_%$%hd232788232825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e232787232821%_)))
                                      (_%$%tl232789232828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e232787232821%_))))
                                  (if (gx#stx-pair/null? _%$%tl232789232828%_)
                                      (let ((_g234433_
                                             (gx#syntax-split-splice
                                              _%$%tl232789232828%_
                                              '0)))
                                        (begin
                                          (let ((_g234434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234433_)
                                                       (##values-length
                                                        _g234433_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234434_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234434_)))
                                          (let ((_%$%target232790232831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g234433_ 0)))
                                                (_%$%tl232792232834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g234433_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl232792232834%_)
                                                (letrec ((_%$%loop232793232837%_
                                                          (lambda (_%$%hd232791232841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature232797232844%_)
                    (if (gx#stx-pair? _%$%hd232791232841%_)
                        (let ((_%$%e232794232846%_
                               (gx#syntax-e _%$%hd232791232841%_)))
                          (let ((_%$%lp-hd232795232850%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e232794232846%_)))
                                (_%$%lp-tl232796232853%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e232794232846%_))))
                            (_%$%loop232793232837%_
                             _%$%lp-tl232796232853%_
                             (cons _%$%lp-hd232795232850%_
                                   _%$%signature232797232844%_))))
                        (let ((_%$%signature232798232856%_
                               (reverse _%$%signature232797232844%_)))
                          ((lambda (_%$%g232782232859%_ _%$%g232783232861%_)
                             (if (gx#identifier? _%$%g232783232861%_)
                                 (let* ((_%$%g232879232894%_
                                         (lambda (_%$%g232880232890%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g232880232890%_)))
                                        (_%$%g232878233073%_
                                         (lambda (_%$%g232880232898%_)
                                           (if (gx#stx-pair?
                                                _%$%g232880232898%_)
                                               (let ((_%$%e232883232901%_
                                                      (gx#syntax-e
                                                       _%$%g232880232898%_)))
                                                 (let ((_%$%hd232884232905%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e232883232901%_)))
                                                       (_%$%tl232885232908%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e232883232901%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl232885232908%_)
                                                       (let ((_%$%e232886232911%_
                                                              (gx#syntax-e
                                                               _%$%tl232885232908%_)))
                                                         (let ((_%$%hd232887232915%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e232886232911%_)))
                       (_%$%tl232888232918%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e232886232911%_))))
                   (if (gx#stx-null? _%$%tl232888232918%_)
                       ((lambda (_%$%g232881232921%_ _%$%g232882232923%_)
                          (let* ((_%$%g232939232947%_
                                  (lambda (_%$%g232940232943%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g232940232943%_)))
                                 (_%$%g232938233069%_
                                  (lambda (_%$%g232940232951%_)
                                    ((lambda (_%$%g232941232954%_)
                                       (let* ((_%unchecked232967%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%$%g232881232921%_))
                                              (_%$%g232970232978%_
                                               (lambda (_%$%g232971232974%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g232971232974%_)))
                                              (_%$%g232969233001%_
                                               (lambda (_%$%g232971232982%_)
                                                 ((lambda (_%$%g232972232985%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _%$%g232941232954%_
                                                                (cons _%$%g232972232985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%g232971232982%_))))
                                         (_%$%g232969233001%_
                                          (if _%unchecked232967%_
                                              (let* ((_%$%g233005233020%_
                                                      (lambda (_%$%g233006233016%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g233006233016%_)))
                                                     (_%$%g233004233065%_
                                                      (lambda (_%$%g233006233024%_)
                                                        (if (gx#stx-pair?
                                                             _%$%g233006233024%_)
                                                            (let ((_%$%e233009233027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%g233006233024%_)))
                      (let ((_%$%hd233010233031%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e233009233027%_)))
                            (_%$%tl233011233034%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e233009233027%_))))
                        (if (gx#stx-pair? _%$%tl233011233034%_)
                            (let ((_%$%e233012233037%_
                                   (gx#syntax-e _%$%tl233011233034%_)))
                              (let ((_%$%hd233013233041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e233012233037%_)))
                                    (_%$%tl233014233044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e233012233037%_))))
                                (if (gx#stx-null? _%$%tl233014233044%_)
                                    ((lambda (_%$%g233007233047%_
                                              _%$%g233008233049%_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'declare-type)
                                             (cons _%$%g233008233049%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'make-!primitive-lambda)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%$%g232882232923%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%$%g233007233047%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%$%hd233013233041%_
                                     _%$%hd233010233031%_)
                                    (_%$%g233005233020%_
                                     _%$%g233006233024%_))))
                            (_%$%g233005233020%_ _%$%g233006233024%_))))
                    (_%$%g233005233020%_ _%$%g233006233024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g233004233065%_
                                                 _%unchecked232967%_))
                                              '(begin)))))
                                     _%$%g232940232951%_))))
                            (_%$%g232938233069%_
                             (cons (gx#datum->syntax '#f 'declare-type)
                                   (cons _%$%g232783232861%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'make-!primitive-lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%$%g232882232923%_ '()))
                   (cons '#f
                         (cons 'signature: (cons _%$%g232881232921%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%$%hd232887232915%_
                        _%$%hd232884232905%_)
                       (_%$%g232879232894%_ _%$%g232880232898%_))))
               (_%$%g232879232894%_ _%$%g232880232898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g232879232894%_
                                                _%$%g232880232898%_)))))
                                   (_%$%g232878233073%_
                                    (|gxc[1]#parse-signature|
                                     _%stx232777%_
                                     _%$%g232783232861%_
                                     (foldr (lambda (_%$%g233076233079%_
                                                     _%$%g233077233082%_)
                                              (cons _%$%g233076233079%_
                                                    _%$%g233077233082%_))
                                            '()
                                            _%$%g232782232859%_))))
                                 (_%$%g232780232804%_ _%$%g232781232808%_)))
                           _%$%signature232798232856%_
                           _%$%hd232788232825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop232793232837%_
                                                   _%$%target232790232831%_
                                                   '()))
                                                (_%$%g232780232804%_
                                                 _%$%g232781232808%_)))))
                                      (_%$%g232780232804%_
                                       _%$%g232781232808%_))))
                              (_%$%g232780232804%_ _%$%g232781232808%_))))
                      (_%$%g232780232804%_ _%$%g232781232808%_)))))
          (_%$%g232779233085%_ _%stx232777%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx233090%_)
        (let* ((_%$%g233093233117%_
                (lambda (_%$%g233094233113%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g233094233113%_)))
               (_%$%g233092233992%_
                (lambda (_%$%g233094233121%_)
                  (if (gx#stx-pair? _%$%g233094233121%_)
                      (let ((_%$%e233097233124%_
                             (gx#syntax-e _%$%g233094233121%_)))
                        (let ((_%$%hd233098233128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e233097233124%_)))
                              (_%$%tl233099233131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e233097233124%_))))
                          (if (gx#stx-pair? _%$%tl233099233131%_)
                              (let ((_%$%e233100233134%_
                                     (gx#syntax-e _%$%tl233099233131%_)))
                                (let ((_%$%hd233101233138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e233100233134%_)))
                                      (_%$%tl233102233141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e233100233134%_))))
                                  (if (gx#stx-pair/null? _%$%tl233102233141%_)
                                      (let ((_g234435_
                                             (gx#syntax-split-splice
                                              _%$%tl233102233141%_
                                              '0)))
                                        (begin
                                          (let ((_g234436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234435_)
                                                       (##values-length
                                                        _g234435_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234436_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234436_)))
                                          (let ((_%$%target233103233144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g234435_ 0)))
                                                (_%$%tl233105233147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g234435_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl233105233147%_)
                                                (letrec ((_%$%loop233106233150%_
                                                          (lambda (_%$%hd233104233154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature233110233157%_)
                    (if (gx#stx-pair? _%$%hd233104233154%_)
                        (let ((_%$%e233107233159%_
                               (gx#syntax-e _%$%hd233104233154%_)))
                          (let ((_%$%lp-hd233108233163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e233107233159%_)))
                                (_%$%lp-tl233109233166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e233107233159%_))))
                            (_%$%loop233106233150%_
                             _%$%lp-tl233109233166%_
                             (cons _%$%lp-hd233108233163%_
                                   _%$%case-signature233110233157%_))))
                        (let ((_%$%case-signature233111233169%_
                               (reverse _%$%case-signature233110233157%_)))
                          ((lambda (_%$%g233095233172%_ _%$%g233096233174%_)
                             (if (gx#identifier? _%$%g233096233174%_)
                                 (let* ((_%signatures233205%_
                                         (map (lambda (_%$%g233191233193%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx233090%_
                                                 _%$%g233096233174%_
                                                 _%$%g233191233193%_))
                                              (foldr (lambda (_%$%g233196233199%_
                                                              _%$%g233197233202%_)
                                                       (cons _%$%g233196233199%_
                                                             _%$%g233197233202%_))
                                                     '()
                                                     _%$%g233095233172%_)))
                                        (_%$%g233208233234%_
                                         (lambda (_%$%g233209233230%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g233209233230%_)))
                                        (_%$%g233207233988%_
                                         (lambda (_%$%g233209233238%_)
                                           (if (gx#stx-pair/null?
                                                _%$%g233209233238%_)
                                               (let ((_g234437_
                                                      (gx#syntax-split-splice
                                                       _%$%g233209233238%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g234438_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g234437_)
                        (##values-length _g234437_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g234438_ 2)))
                 (error "Context expects 2 values" _g234438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target233212233241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g234437_
                                                             0)))
                                                         (_%$%tl233214233244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g234437_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl233214233244%_)
                                                         (letrec ((_%$%loop233215233247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd233213233251%_
                                    _%$%sig233219233254%_
                                    _%$%arity233220233255%_)
                             (if (gx#stx-pair? _%$%hd233213233251%_)
                                 (let ((_%$%e233216233257%_
                                        (gx#syntax-e _%$%hd233213233251%_)))
                                   (let ((_%$%lp-hd233217233261%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e233216233257%_)))
                                         (_%$%lp-tl233218233264%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e233216233257%_))))
                                     (if (gx#stx-pair? _%$%lp-hd233217233261%_)
                                         (let ((_%$%e233223233267%_
                                                (gx#syntax-e
                                                 _%$%lp-hd233217233261%_)))
                                           (let ((_%$%hd233224233271%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e233223233267%_)))
                                                 (_%$%tl233225233274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e233223233267%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl233225233274%_)
                                                 (let ((_%$%e233226233277%_
                                                        (gx#syntax-e
                                                         _%$%tl233225233274%_)))
                                                   (let ((_%$%hd233227233281%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e233226233277%_)))
                                                         (_%$%tl233228233284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e233226233277%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl233228233284%_)
                                                         (_%$%loop233215233247%_
                                                          _%$%lp-tl233218233264%_
                                                          (cons _%$%hd233227233281%_
                                                                _%$%sig233219233254%_)
                                                          (cons _%$%hd233224233271%_
                                                                _%$%arity233220233255%_))
                                                         (_%$%g233208233234%_
                                                          _%$%g233209233238%_))))
                                                 (_%$%g233208233234%_
                                                  _%$%g233209233238%_))))
                                         (_%$%g233208233234%_
                                          _%$%g233209233238%_))))
                                 (let ((_%$%sig233221233287%_
                                        (reverse _%$%sig233219233254%_))
                                       (_%$%arity233222233289%_
                                        (reverse _%$%arity233220233255%_)))
                                   ((lambda (_%$%g233210233291%_
                                             _%$%g233211233293%_)
                                      (let* ((_%$%g233310233318%_
                                              (lambda (_%$%g233311233314%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g233311233314%_)))
                                             (_%$%g233309233973%_
                                              (lambda (_%$%g233311233322%_)
                                                ((lambda (_%$%g233312233325%_)
                                                   (let* ((_%$%g233338233346%_
                                                           (lambda (_%$%g233339233342%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g233339233342%_)))
                                                          (_%$%g233337233368%_
                                                           (lambda (_%$%g233339233350%_)
                                                             ((lambda (_%$%g233340233353%_)
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (cons _%$%g233312233325%_
                                    (cons _%$%g233340233353%_ '()))))
                      _%$%g233339233350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g233337233368%_
                                                      (let ((_g234439_
                                                             (let _%loop233372%_ ((_%rest233375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures233205%_)
                                          (_%unchecked-proc233377%_ '#f)
                                          (_%unchecked-clauses233378%_ '()))
                       (let* ((_%$%rest233379233387%_ _%rest233375%_)
                              (_%$%E233382233393%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest233379233387%_
                                        '([hd . rest])
                                        'else)
                                 (void)))
                              (_%$%else233381233399%_
                               (lambda ()
                                 (values _%unchecked-proc233377%_
                                         (reverse!
                                          _%unchecked-clauses233378%_))))
                              (_%$%K233383233840%_
                               (lambda (_%rest233403%_ _%hd233405%_)
                                 (let* ((_%$%g233407233494%_
                                         (lambda (_%$%g233408233490%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g233408233490%_)))
                                        (_%$%g233406233836%_
                                         (lambda (_%$%g233408233498%_)
                                           (if (gx#stx-pair?
                                                _%$%g233408233498%_)
                                               (let ((_%$%e233415233501%_
                                                      (gx#syntax-e
                                                       _%$%g233408233498%_)))
                                                 (let ((_%$%hd233416233505%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e233415233501%_)))
                                                       (_%$%tl233417233508%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e233415233501%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl233417233508%_)
                                                       (let ((_%$%e233418233511%_
                                                              (gx#syntax-e
                                                               _%$%tl233417233508%_)))
                                                         (let ((_%$%hd233419233515%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e233418233511%_)))
                       (_%$%tl233420233518%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e233418233511%_))))
                   (if (gx#stx-pair? _%$%hd233419233515%_)
                       (let ((_%$%e233421233521%_
                              (gx#syntax-e _%$%hd233419233515%_)))
                         (let ((_%$%hd233422233525%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e233421233521%_)))
                               (_%$%tl233423233528%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e233421233521%_))))
                           (if (gx#stx-pair? _%$%tl233423233528%_)
                               (let ((_%$%e233424233531%_
                                      (gx#syntax-e _%$%tl233423233528%_)))
                                 (let ((_%$%hd233425233535%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e233424233531%_)))
                                       (_%$%tl233426233538%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e233424233531%_))))
                                   (if (gx#stx-datum? _%$%hd233425233535%_)
                                       (let ((_%$%e233427233541%_
                                              (gx#stx-e _%$%hd233425233535%_)))
                                         (if (equal? _%$%e233427233541%_
                                                     'arguments:)
                                             (if (gx#stx-pair?
                                                  _%$%tl233426233538%_)
                                                 (let ((_%$%e233428233545%_
                                                        (gx#syntax-e
                                                         _%$%tl233426233538%_)))
                                                   (let ((_%$%hd233429233549%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e233428233545%_)))
                                                         (_%$%tl233430233552%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e233428233545%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd233429233549%_)
                                                         (let ((_%$%e233431233555%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd233429233549%_)))
                   (let ((_%$%hd233432233559%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e233431233555%_)))
                         (_%$%tl233433233562%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e233431233555%_))))
                     (if (gx#identifier? _%$%hd233432233559%_)
                         (if (gx#free-identifier=?
                              |gxc[1]#_g234441_|
                              _%$%hd233432233559%_)
                             (if (gx#stx-pair? _%$%tl233433233562%_)
                                 (let ((_%$%e233434233565%_
                                        (gx#syntax-e _%$%tl233433233562%_)))
                                   (let ((_%$%hd233435233569%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e233434233565%_)))
                                         (_%$%tl233436233572%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e233434233565%_))))
                                     (if (gx#stx-null? _%$%tl233436233572%_)
                                         (if (gx#stx-pair?
                                              _%$%tl233430233552%_)
                                             (let ((_%$%e233437233575%_
                                                    (gx#syntax-e
                                                     _%$%tl233430233552%_)))
                                               (let ((_%$%hd233438233579%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e233437233575%_)))
                                                     (_%$%tl233439233582%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e233437233575%_))))
                                                 (if (gx#stx-datum?
                                                      _%$%hd233438233579%_)
                                                     (let ((_%$%e233440233585%_
                                                            (gx#stx-e
                                                             _%$%hd233438233579%_)))
                                                       (if (equal? _%$%e233440233585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (gx#stx-pair? _%$%tl233439233582%_)
                       (let ((_%$%e233441233589%_
                              (gx#syntax-e _%$%tl233439233582%_)))
                         (let ((_%$%hd233442233593%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e233441233589%_)))
                               (_%$%tl233443233596%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e233441233589%_))))
                           (if (gx#stx-pair? _%$%hd233442233593%_)
                               (let ((_%$%e233444233599%_
                                      (gx#syntax-e _%$%hd233442233593%_)))
                                 (let ((_%$%hd233445233603%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e233444233599%_)))
                                       (_%$%tl233446233606%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e233444233599%_))))
                                   (if (gx#identifier? _%$%hd233445233603%_)
                                       (if (gx#free-identifier=?
                                            |gxc[1]#_g234442_|
                                            _%$%hd233445233603%_)
                                           (if (gx#stx-pair?
                                                _%$%tl233446233606%_)
                                               (let ((_%$%e233447233609%_
                                                      (gx#syntax-e
                                                       _%$%tl233446233606%_)))
                                                 (let ((_%$%hd233448233613%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e233447233609%_)))
                                                       (_%$%tl233449233616%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e233447233609%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl233449233616%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl233443233596%_)
                                                           (let ((_%$%e233450233619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl233443233596%_)))
                     (let ((_%$%hd233451233623%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e233450233619%_)))
                           (_%$%tl233452233626%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e233450233619%_))))
                       (if (gx#stx-datum? _%$%hd233451233623%_)
                           (let ((_%$%e233453233629%_
                                  (gx#stx-e _%$%hd233451233623%_)))
                             (if (equal? _%$%e233453233629%_ 'effect:)
                                 (if (gx#stx-pair? _%$%tl233452233626%_)
                                     (let ((_%$%e233454233633%_
                                            (gx#syntax-e
                                             _%$%tl233452233626%_)))
                                       (let ((_%$%hd233455233637%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e233454233633%_)))
                                             (_%$%tl233456233640%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e233454233633%_))))
                                         (if (gx#stx-pair?
                                              _%$%hd233455233637%_)
                                             (let ((_%$%e233457233643%_
                                                    (gx#syntax-e
                                                     _%$%hd233455233637%_)))
                                               (let ((_%$%hd233458233647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e233457233643%_)))
                                                     (_%$%tl233459233650%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e233457233643%_))))
                                                 (if (gx#identifier?
                                                      _%$%hd233458233647%_)
                                                     (if (gx#free-identifier=?
                                                          |gxc[1]#_g234443_|
                                                          _%$%hd233458233647%_)
                                                         (if (gx#stx-pair?
                                                              _%$%tl233459233650%_)
                                                             (let ((_%$%e233460233653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%tl233459233650%_)))
                       (let ((_%$%hd233461233657%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e233460233653%_)))
                             (_%$%tl233462233660%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e233460233653%_))))
                         (if (gx#stx-null? _%$%tl233462233660%_)
                             (if (gx#stx-pair? _%$%tl233456233640%_)
                                 (let ((_%$%e233463233663%_
                                        (gx#syntax-e _%$%tl233456233640%_)))
                                   (let ((_%$%hd233464233667%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e233463233663%_)))
                                         (_%$%tl233465233670%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e233463233663%_))))
                                     (if (gx#stx-datum? _%$%hd233464233667%_)
                                         (let ((_%$%e233466233673%_
                                                (gx#stx-e
                                                 _%$%hd233464233667%_)))
                                           (if (equal? _%$%e233466233673%_
                                                       'unchecked:)
                                               (if (gx#stx-pair?
                                                    _%$%tl233465233670%_)
                                                   (let ((_%$%e233467233677%_
                                                          (gx#syntax-e
                                                           _%$%tl233465233670%_)))
                                                     (let ((_%$%hd233468233681%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e233467233677%_)))
                                                           (_%$%tl233469233684%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e233467233677%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%hd233468233681%_)
                                                           (let ((_%$%e233470233687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%hd233468233681%_)))
                     (let ((_%$%hd233471233691%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e233470233687%_)))
                           (_%$%tl233472233694%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e233470233687%_))))
                       (if (gx#identifier? _%$%hd233471233691%_)
                           (if (gx#free-identifier=?
                                |gxc[1]#_g234444_|
                                _%$%hd233471233691%_)
                               (if (gx#stx-pair? _%$%tl233472233694%_)
                                   (let ((_%$%e233473233697%_
                                          (gx#syntax-e _%$%tl233472233694%_)))
                                     (let ((_%$%hd233474233701%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e233473233697%_)))
                                           (_%$%tl233475233704%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e233473233697%_))))
                                       (if (gx#stx-null? _%$%tl233475233704%_)
                                           (if (gx#stx-pair?
                                                _%$%tl233469233684%_)
                                               (let ((_%$%e233476233707%_
                                                      (gx#syntax-e
                                                       _%$%tl233469233684%_)))
                                                 (let ((_%$%hd233477233711%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e233476233707%_)))
                                                       (_%$%tl233478233714%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e233476233707%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd233477233711%_)
                                                       (let ((_%$%e233479233717%_
                                                              (gx#stx-e
                                                               _%$%hd233477233711%_)))
                                                         (if (equal? _%$%e233479233717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'origin:)
                     (if (gx#stx-pair? _%$%tl233478233714%_)
                         (let ((_%$%e233480233721%_
                                (gx#syntax-e _%$%tl233478233714%_)))
                           (let ((_%$%hd233481233725%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e233480233721%_)))
                                 (_%$%tl233482233728%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e233480233721%_))))
                             (if (gx#stx-pair? _%$%hd233481233725%_)
                                 (let ((_%$%e233483233731%_
                                        (gx#syntax-e _%$%hd233481233725%_)))
                                   (let ((_%$%hd233484233735%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e233483233731%_)))
                                         (_%$%tl233485233738%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e233483233731%_))))
                                     (if (gx#identifier? _%$%hd233484233735%_)
                                         (if (gx#free-identifier=?
                                              |gxc[1]#_g234445_|
                                              _%$%hd233484233735%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl233485233738%_)
                                                 (let ((_%$%e233486233741%_
                                                        (gx#syntax-e
                                                         _%$%tl233485233738%_)))
                                                   (let ((_%$%hd233487233745%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e233486233741%_)))
                                                         (_%$%tl233488233748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e233486233741%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl233488233748%_)
                                                         (if (gx#stx-null?
                                                              _%$%tl233482233728%_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl233420233518%_)
                         ((lambda (_%$%g233409233751%_
                                   _%$%g233410233753%_
                                   _%$%g233411233754%_
                                   _%$%g233412233755%_
                                   _%$%g233413233756%_
                                   _%$%g233414233757%_)
                            (let ((_%clause233828%_
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-!primitive-lambda)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g233414233757%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'make-!signature)
                               (cons 'return:
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g233412233755%_
                                                       '()))
                                           (cons 'origin:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%g233409233751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked233830%_
                                   (gx#stx-e _%$%g233410233753%_)))
                              (_%loop233372%_
                               _%rest233403%_
                               (let ((_%$e233832%_ _%unchecked233830%_))
                                 (if _%$e233832%_
                                     _%$e233832%_
                                     _%unchecked-proc233377%_))
                               (cons _%clause233828%_
                                     _%unchecked-clauses233378%_))))
                          _%$%hd233487233745%_
                          _%$%hd233474233701%_
                          _%$%hd233461233657%_
                          _%$%hd233448233613%_
                          _%$%hd233435233569%_
                          _%$%hd233416233505%_)
                         (_%$%g233407233494%_ _%$%g233408233498%_))
                     (_%$%g233407233494%_ _%$%g233408233498%_))
                 (_%$%g233407233494%_ _%$%g233408233498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g233407233494%_
                                                  _%$%g233408233498%_))
                                             (_%$%g233407233494%_
                                              _%$%g233408233498%_))
                                         (_%$%g233407233494%_
                                          _%$%g233408233498%_))))
                                 (_%$%g233407233494%_ _%$%g233408233498%_))))
                         (_%$%g233407233494%_ _%$%g233408233498%_))
                     (_%$%g233407233494%_ _%$%g233408233498%_)))
               (_%$%g233407233494%_ _%$%g233408233498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g233407233494%_
                                                _%$%g233408233498%_))
                                           (_%$%g233407233494%_
                                            _%$%g233408233498%_))))
                                   (_%$%g233407233494%_ _%$%g233408233498%_))
                               (_%$%g233407233494%_ _%$%g233408233498%_))
                           (_%$%g233407233494%_ _%$%g233408233498%_))))
                   (_%$%g233407233494%_ _%$%g233408233498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g233407233494%_
                                                    _%$%g233408233498%_))
                                               (_%$%g233407233494%_
                                                _%$%g233408233498%_)))
                                         (_%$%g233407233494%_
                                          _%$%g233408233498%_))))
                                 (_%$%g233407233494%_ _%$%g233408233498%_))
                             (_%$%g233407233494%_ _%$%g233408233498%_))))
                     (_%$%g233407233494%_ _%$%g233408233498%_))
                 (_%$%g233407233494%_ _%$%g233408233498%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g233407233494%_
                                                      _%$%g233408233498%_))))
                                             (_%$%g233407233494%_
                                              _%$%g233408233498%_))))
                                     (_%$%g233407233494%_ _%$%g233408233498%_))
                                 (_%$%g233407233494%_ _%$%g233408233498%_)))
                           (_%$%g233407233494%_ _%$%g233408233498%_))))
                   (_%$%g233407233494%_ _%$%g233408233498%_))
               (_%$%g233407233494%_ _%$%g233408233498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g233407233494%_
                                                _%$%g233408233498%_))
                                           (_%$%g233407233494%_
                                            _%$%g233408233498%_))
                                       (_%$%g233407233494%_
                                        _%$%g233408233498%_))))
                               (_%$%g233407233494%_ _%$%g233408233498%_))))
                       (_%$%g233407233494%_ _%$%g233408233498%_))
                   (_%$%g233407233494%_ _%$%g233408233498%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g233407233494%_
                                                      _%$%g233408233498%_))))
                                             (_%$%g233407233494%_
                                              _%$%g233408233498%_))
                                         (_%$%g233407233494%_
                                          _%$%g233408233498%_))))
                                 (_%$%g233407233494%_ _%$%g233408233498%_))
                             (_%$%g233407233494%_ _%$%g233408233498%_))
                         (_%$%g233407233494%_ _%$%g233408233498%_))))
                 (_%$%g233407233494%_ _%$%g233408233498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g233407233494%_
                                                  _%$%g233408233498%_))
                                             (_%$%g233407233494%_
                                              _%$%g233408233498%_)))
                                       (_%$%g233407233494%_
                                        _%$%g233408233498%_))))
                               (_%$%g233407233494%_ _%$%g233408233498%_))))
                       (_%$%g233407233494%_ _%$%g233408233498%_))))
               (_%$%g233407233494%_ _%$%g233408233498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g233407233494%_
                                                _%$%g233408233498%_)))))
                                   (_%$%g233406233836%_ _%hd233405%_)))))
                         (if (pair? _%$%rest233379233387%_)
                             (let ((_%$%hd233384233844%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest233379233387%_)))
                                   (_%$%tl233385233847%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest233379233387%_))))
                               (let* ((_%hd233850%_ _%$%hd233384233844%_)
                                      (_%rest233853%_ _%$%tl233385233847%_))
                                 (_%$%K233383233840%_
                                  _%rest233853%_
                                  _%hd233850%_)))
                             (_%$%else233381233399%_))))))
                (begin
                  (let ((_g234440_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g234439_)
                               (##values-length _g234439_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g234440_ 2)))
                        (error "Context expects 2 values" _g234440_)))
                  (let ((_%unchecked-proc233856%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g234439_ 0)))
                        (_%unchecked-clauses233858%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g234439_ 1))))
                    (if _%unchecked-proc233856%_
                        (let* ((_%$%g233860233884%_
                                (lambda (_%$%g233861233880%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g233861233880%_)))
                               (_%$%g233859233969%_
                                (lambda (_%$%g233861233888%_)
                                  (if (gx#stx-pair? _%$%g233861233888%_)
                                      (let ((_%$%e233864233891%_
                                             (gx#syntax-e
                                              _%$%g233861233888%_)))
                                        (let ((_%$%hd233865233895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e233864233891%_)))
                                              (_%$%tl233866233898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e233864233891%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl233866233898%_)
                                              (let ((_%$%e233867233901%_
                                                     (gx#syntax-e
                                                      _%$%tl233866233898%_)))
                                                (let ((_%$%hd233868233905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e233867233901%_)))
                                                      (_%$%tl233869233908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e233867233901%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%hd233868233905%_)
                                                      (let ((_g234446_
                                                             (gx#syntax-split-splice
                                                              _%$%hd233868233905%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g234447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g234446_)
                               (##values-length _g234446_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g234447_ 2)))
                        (error "Context expects 2 values" _g234447_)))
                  (let ((_%$%target233870233911%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g234446_ 0)))
                        (_%$%tl233872233914%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g234446_ 1))))
                    (if (gx#stx-null? _%$%tl233872233914%_)
                        (letrec ((_%$%loop233873233917%_
                                  (lambda (_%$%hd233871233921%_
                                           _%$%clause233877233924%_)
                                    (if (gx#stx-pair? _%$%hd233871233921%_)
                                        (let ((_%$%e233874233926%_
                                               (gx#syntax-e
                                                _%$%hd233871233921%_)))
                                          (let ((_%$%lp-hd233875233930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e233874233926%_)))
                                                (_%$%lp-tl233876233933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e233874233926%_))))
                                            (_%$%loop233873233917%_
                                             _%$%lp-tl233876233933%_
                                             (cons _%$%lp-hd233875233930%_
                                                   _%$%clause233877233924%_))))
                                        (let ((_%$%clause233878233936%_
                                               (reverse _%$%clause233877233924%_)))
                                          (if (gx#stx-null?
                                               _%$%tl233869233908%_)
                                              ((lambda (_%$%g233862233939%_
                                                        _%$%g233863233941%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'declare-type)
                                                       (cons _%$%g233863233941%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-!primitive-case-lambda)
                                 (cons (cons (gx#datum->syntax '#f '@list)
                                             (foldr (lambda (_%$%g233960233963%_
                                                             _%$%g233961233966%_)
                                                      (cons _%$%g233960233963%_
                                                            _%$%g233961233966%_))
                                                    '()
                                                    _%$%g233862233939%_))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%clause233878233936%_
                                               _%$%hd233865233895%_)
                                              (_%$%g233860233884%_
                                               _%$%g233861233888%_)))))))
                          (_%$%loop233873233917%_
                           _%$%target233870233911%_
                           '()))
                        (_%$%g233860233884%_ _%$%g233861233888%_)))))
              (_%$%g233860233884%_ _%$%g233861233888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g233860233884%_
                                               _%$%g233861233888%_))))
                                      (_%$%g233860233884%_
                                       _%$%g233861233888%_)))))
                          (_%$%g233859233969%_
                           (list _%unchecked-proc233856%_
                                 _%unchecked-clauses233858%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g233311233322%_))))
                                        (_%$%g233309233973%_
                                         (cons (gx#datum->syntax
                                                '#f
                                                'declare-type)
                                               (cons _%$%g233096233174%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-!primitive-case-lambda)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%$%g233210233291%_
                                        _%$%g233211233293%_)
                                       (foldr (lambda (_%$%g233976233980%_
                                                       _%$%g233977233983%_
                                                       _%$%g233978233985%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'make-!primitive-lambda)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%$%g233977233983%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%$%g233976233980%_ '())))))
              _%$%g233978233985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%$%g233210233291%_
                                              _%$%g233211233293%_)))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%sig233221233287%_
                                    _%$%arity233222233289%_))))))
                   (_%$%loop233215233247%_ _%$%target233212233241%_ '() '()))
                 (_%$%g233208233234%_ _%$%g233209233238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g233208233234%_
                                                _%$%g233209233238%_)))))
                                   (_%$%g233207233988%_ _%signatures233205%_))
                                 (_%$%g233093233117%_ _%$%g233094233121%_)))
                           _%$%case-signature233111233169%_
                           _%$%hd233101233138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop233106233150%_
                                                   _%$%target233103233144%_
                                                   '()))
                                                (_%$%g233093233117%_
                                                 _%$%g233094233121%_)))))
                                      (_%$%g233093233117%_
                                       _%$%g233094233121%_))))
                              (_%$%g233093233117%_ _%$%g233094233121%_))))
                      (_%$%g233093233117%_ _%$%g233094233121%_)))))
          (_%$%g233092233992%_ _%stx233090%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx234000%_)
        (let* ((_%$%g234006234066%_
                (lambda (_%$%g234007234062%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g234007234062%_)))
               (_%$%g234005234152%_
                (lambda (_%$%g234007234070%_)
                  (if (gx#stx-pair? _%$%g234007234070%_)
                      (let ((_%$%e234045234073%_
                             (gx#syntax-e _%$%g234007234070%_)))
                        (let ((_%$%hd234046234077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e234045234073%_)))
                              (_%$%tl234047234080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e234045234073%_))))
                          (if (gx#stx-pair? _%$%tl234047234080%_)
                              (let ((_%$%e234048234083%_
                                     (gx#syntax-e _%$%tl234047234080%_)))
                                (let ((_%$%hd234049234087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e234048234083%_)))
                                      (_%$%tl234050234090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e234048234083%_))))
                                  (if (gx#stx-datum? _%$%hd234049234087%_)
                                      (let ((_%$%e234051234093%_
                                             (gx#stx-e _%$%hd234049234087%_)))
                                        (if (equal? _%$%e234051234093%_
                                                    'class:)
                                            (if (gx#stx-pair?
                                                 _%$%tl234050234090%_)
                                                (let ((_%$%e234052234097%_
                                                       (gx#syntax-e
                                                        _%$%tl234050234090%_)))
                                                  (let ((_%$%hd234053234101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e234052234097%_)))
                                                        (_%$%tl234054234104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e234052234097%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl234054234104%_)
                                                        (let ((_%$%e234055234107%_
                                                               (gx#syntax-e
                                                                _%$%tl234054234104%_)))
                                                          (let ((_%$%hd234056234111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e234055234107%_)))
                        (_%$%tl234057234114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e234055234107%_))))
                    (if (gx#stx-pair? _%$%tl234057234114%_)
                        (let ((_%$%e234058234117%_
                               (gx#syntax-e _%$%tl234057234114%_)))
                          (let ((_%$%hd234059234121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e234058234117%_)))
                                (_%$%tl234060234124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e234058234117%_))))
                            (if (gx#stx-null? _%$%tl234060234124%_)
                                ((lambda (_%$%g234042234127%_
                                          _%$%g234043234129%_
                                          _%$%g234044234130%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'optimizer-declare-builtin-class!)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g234044234130%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-!class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'class-type-id)
                               (cons _%$%g234044234130%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g234043234129%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g234042234127%_ '()))
                                     (cons '#f
                                           (cons '#t
                                                 (cons '#f
                                                       (cons '#f
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%$%hd234059234121%_
                                 _%$%hd234056234111%_
                                 _%$%hd234053234101%_)
                                (_%$%g234006234066%_ _%$%g234007234070%_))))
                        (_%$%g234006234066%_ _%$%g234007234070%_))))
                (_%$%g234006234066%_ _%$%g234007234070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g234006234066%_
                                                 _%$%g234007234070%_))
                                            (_%$%g234006234066%_
                                             _%$%g234007234070%_)))
                                      (_%$%g234006234066%_
                                       _%$%g234007234070%_))))
                              (_%$%g234006234066%_ _%$%g234007234070%_))))
                      (_%$%g234006234066%_ _%$%g234007234070%_))))
               (_%$%g234004234237%_
                (lambda (_%$%g234007234156%_)
                  (if (gx#stx-pair? _%$%g234007234156%_)
                      (let ((_%$%e234026234159%_
                             (gx#syntax-e _%$%g234007234156%_)))
                        (let ((_%$%hd234027234163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e234026234159%_)))
                              (_%$%tl234028234166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e234026234159%_))))
                          (if (gx#stx-pair? _%$%tl234028234166%_)
                              (let ((_%$%e234029234169%_
                                     (gx#syntax-e _%$%tl234028234166%_)))
                                (let ((_%$%hd234030234173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e234029234169%_)))
                                      (_%$%tl234031234176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e234029234169%_))))
                                  (if (gx#stx-datum? _%$%hd234030234173%_)
                                      (let ((_%$%e234032234179%_
                                             (gx#stx-e _%$%hd234030234173%_)))
                                        (if (equal? _%$%e234032234179%_
                                                    'struct:)
                                            (if (gx#stx-pair?
                                                 _%$%tl234031234176%_)
                                                (let ((_%$%e234033234183%_
                                                       (gx#syntax-e
                                                        _%$%tl234031234176%_)))
                                                  (let ((_%$%hd234034234187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e234033234183%_)))
                                                        (_%$%tl234035234190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e234033234183%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl234035234190%_)
                                                        (let ((_%$%e234036234193%_
                                                               (gx#syntax-e
                                                                _%$%tl234035234190%_)))
                                                          (let ((_%$%hd234037234197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e234036234193%_)))
                        (_%$%tl234038234200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e234036234193%_))))
                    (if (gx#stx-pair? _%$%tl234038234200%_)
                        (let ((_%$%e234039234203%_
                               (gx#syntax-e _%$%tl234038234200%_)))
                          (let ((_%$%hd234040234207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e234039234203%_)))
                                (_%$%tl234041234210%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e234039234203%_))))
                            (if (gx#stx-null? _%$%tl234041234210%_)
                                ((lambda (_%$%g234023234213%_
                                          _%$%g234024234215%_
                                          _%$%g234025234216%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'optimizer-declare-builtin-class!)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g234025234216%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-!class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'class-type-id)
                               (cons _%$%g234025234216%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g234024234215%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g234023234213%_ '()))
                                     (cons '#f
                                           (cons '#f
                                                 (cons '#f
                                                       (cons '#f
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%$%hd234040234207%_
                                 _%$%hd234037234197%_
                                 _%$%hd234034234187%_)
                                (_%$%g234005234152%_ _%$%g234007234156%_))))
                        (_%$%g234005234152%_ _%$%g234007234156%_))))
                (_%$%g234005234152%_ _%$%g234007234156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g234005234152%_
                                                 _%$%g234007234156%_))
                                            (_%$%g234005234152%_
                                             _%$%g234007234156%_)))
                                      (_%$%g234005234152%_
                                       _%$%g234007234156%_))))
                              (_%$%g234005234152%_ _%$%g234007234156%_))))
                      (_%$%g234005234152%_ _%$%g234007234156%_))))
               (_%$%g234003234308%_
                (lambda (_%$%g234007234241%_)
                  (if (gx#stx-pair? _%$%g234007234241%_)
                      (let ((_%$%e234010234244%_
                             (gx#syntax-e _%$%g234007234241%_)))
                        (let ((_%$%hd234011234248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e234010234244%_)))
                              (_%$%tl234012234251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e234010234244%_))))
                          (if (gx#stx-pair? _%$%tl234012234251%_)
                              (let ((_%$%e234013234254%_
                                     (gx#syntax-e _%$%tl234012234251%_)))
                                (let ((_%$%hd234014234258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e234013234254%_)))
                                      (_%$%tl234015234261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e234013234254%_))))
                                  (if (gx#stx-datum? _%$%hd234014234258%_)
                                      (let ((_%$%e234016234264%_
                                             (gx#stx-e _%$%hd234014234258%_)))
                                        (if (equal? _%$%e234016234264%_
                                                    'system:)
                                            (if (gx#stx-pair?
                                                 _%$%tl234015234261%_)
                                                (let ((_%$%e234017234268%_
                                                       (gx#syntax-e
                                                        _%$%tl234015234261%_)))
                                                  (let ((_%$%hd234018234272%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e234017234268%_)))
                                                        (_%$%tl234019234275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e234017234268%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl234019234275%_)
                                                        (let ((_%$%e234020234278%_
                                                               (gx#syntax-e
                                                                _%$%tl234019234275%_)))
                                                          (let ((_%$%hd234021234282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e234020234278%_)))
                        (_%$%tl234022234285%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e234020234278%_))))
                    (if (gx#stx-null? _%$%tl234022234285%_)
                        ((lambda (_%$%g234008234288%_ _%$%g234009234290%_)
                           (cons (gx#datum->syntax
                                  '#f
                                  'optimizer-declare-builtin-class!)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g234009234290%_ '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-!class)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'class-type-id)
                                                               (cons _%$%g234009234290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'quote)
                             (cons _%$%g234008234288%_ '()))
                       (cons (cons (gx#datum->syntax '#f '@list) '())
                             (cons '#f
                                   (cons '#f
                                         (cons '#f
                                               (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%$%hd234021234282%_
                         _%$%hd234018234272%_)
                        (_%$%g234004234237%_ _%$%g234007234241%_))))
                (_%$%g234004234237%_ _%$%g234007234241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g234004234237%_
                                                 _%$%g234007234241%_))
                                            (_%$%g234004234237%_
                                             _%$%g234007234241%_)))
                                      (_%$%g234004234237%_
                                       _%$%g234007234241%_))))
                              (_%$%g234004234237%_ _%$%g234007234241%_))))
                      (_%$%g234004234237%_ _%$%g234007234241%_)))))
          (_%$%g234003234308%_ _%$stx234000%_))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx234312%_)
        (let* ((_%$%g234316234336%_
                (lambda (_%$%g234317234332%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g234317234332%_)))
               (_%$%g234315234405%_
                (lambda (_%$%g234317234340%_)
                  (if (gx#stx-pair? _%$%g234317234340%_)
                      (let ((_%$%e234319234343%_
                             (gx#syntax-e _%$%g234317234340%_)))
                        (let ((_%$%hd234320234347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e234319234343%_)))
                              (_%$%tl234321234350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e234319234343%_))))
                          (if (gx#stx-pair/null? _%$%tl234321234350%_)
                              (let ((_g234448_
                                     (gx#syntax-split-splice
                                      _%$%tl234321234350%_
                                      '0)))
                                (begin
                                  (let ((_g234449_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234448_)
                                               (##values-length _g234448_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234449_ 2)))
                                        (error "Context expects 2 values"
                                               _g234449_)))
                                  (let ((_%$%target234322234353%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234448_ 0)))
                                        (_%$%tl234324234356%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g234448_ 1))))
                                    (if (gx#stx-null? _%$%tl234324234356%_)
                                        (letrec ((_%$%loop234325234359%_
                                                  (lambda (_%$%hd234323234363%_
                                                           _%$%decl234329234366%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd234323234363%_)
                                                        (let ((_%$%e234326234368%_
                                                               (gx#syntax-e
                                                                _%$%hd234323234363%_)))
                                                          (let ((_%$%lp-hd234327234372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e234326234368%_)))
                        (_%$%lp-tl234328234375%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e234326234368%_))))
                    (_%$%loop234325234359%_
                     _%$%lp-tl234328234375%_
                     (cons _%$%lp-hd234327234372%_ _%$%decl234329234366%_))))
                (let ((_%$%decl234330234378%_
                       (reverse _%$%decl234329234366%_)))
                  ((lambda (_%$%g234318234381%_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (foldr (lambda (_%$%g234396234399%_
                                           _%$%g234397234402%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'declare-builtin-class)
                                                _%$%g234396234399%_)
                                          _%$%g234397234402%_))
                                  '()
                                  _%$%g234318234381%_)))
                   _%$%decl234330234378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop234325234359%_
                                           _%$%target234322234353%_
                                           '()))
                                        (_%$%g234316234336%_
                                         _%$%g234317234340%_)))))
                              (_%$%g234316234336%_ _%$%g234317234340%_))))
                      (_%$%g234316234336%_ _%$%g234317234340%_)))))
          (_%$%g234315234405%_ _%$stx234312%_))))))
