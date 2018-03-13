(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g35090_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g35091_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g35100_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g35101_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g35102_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1686_)
        (let* ((_g16901718_
                (lambda (_g16911714_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16911714_)))
               (_g16891819_
                (lambda (_g16911722_)
                  (if (gx#stx-pair? _g16911722_)
                      (let ((_e16951725_ (gx#syntax-e _g16911722_)))
                        (let ((_hd16961729_ (##car _e16951725_))
                              (_tl16971732_ (##cdr _e16951725_)))
                          (if (gx#stx-pair? _tl16971732_)
                              (let ((_e16981735_ (gx#syntax-e _tl16971732_)))
                                (let ((_hd16991739_ (##car _e16981735_))
                                      (_tl17001742_ (##cdr _e16981735_)))
                                  (if (gx#stx-pair? _tl17001742_)
                                      (let ((_e17011745_
                                             (gx#syntax-e _tl17001742_)))
                                        (let ((_hd17021749_
                                               (##car _e17011745_))
                                              (_tl17031752_
                                               (##cdr _e17011745_)))
                                          (if (gx#stx-pair/null? _tl17031752_)
                                              (if (fx>= (gx#stx-length
                                                         _tl17031752_)
                                                        '0)
                                                  (let ((_g35068_
                                                         (gx#syntax-split-splice
                                                          _tl17031752_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35069_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35068_)
                         (##vector-length _g35068_)
                         1)))
                (if (not (##fx= _g35069_ 2))
                    (error "Context expects 2 values" _g35069_)))
              (let ((_target17041755_ (##vector-ref _g35068_ 0))
                    (_tl17061758_ (##vector-ref _g35068_ 1)))
                (if (gx#stx-null? _tl17061758_)
                    (letrec ((_loop17071761_
                              (lambda (_hd17051765_ _clauses17111768_)
                                (if (gx#stx-pair? _hd17051765_)
                                    (let ((_e17081771_
                                           (gx#syntax-e _hd17051765_)))
                                      (let ((_lp-hd17091775_
                                             (##car _e17081771_))
                                            (_lp-tl17101778_
                                             (##cdr _e17081771_)))
                                        (_loop17071761_
                                         _lp-tl17101778_
                                         (cons _lp-hd17091775_
                                               _clauses17111768_))))
                                    (let ((_clauses17121781_
                                           (reverse _clauses17111768_)))
                                      ((lambda (_L1785_ _L1787_ _L1788_)
                                         (if (gx#identifier? _L1788_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1788_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'syntax-rules)
                             (cons _L1787_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g18101813_ _g18111816_)
                                              (cons _g18101813_ _g18111816_))
                                            '()
                                            _L1785_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g16901718_ _g16911722_)))
                                       _clauses17121781_
                                       _hd17021749_
                                       _hd16991739_))))))
                      (_loop17071761_ _target17041755_ '()))
                    (_g16901718_ _g16911722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g16901718_ _g16911722_))
                                              (_g16901718_ _g16911722_))))
                                      (_g16901718_ _g16911722_))))
                              (_g16901718_ _g16911722_))))
                      (_g16901718_ _g16911722_)))))
          (_g16891819_ _$stx1686_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1824_)
        (let* ((_g18291868_
                (lambda (_g18301864_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g18301864_)))
               (_g18281923_
                (lambda (_g18301872_)
                  (if (gx#stx-pair? _g18301872_)
                      (let ((_e18541875_ (gx#syntax-e _g18301872_)))
                        (let ((_hd18551879_ (##car _e18541875_))
                              (_tl18561882_ (##cdr _e18541875_)))
                          (if (gx#stx-pair? _tl18561882_)
                              (let ((_e18571885_ (gx#syntax-e _tl18561882_)))
                                (let ((_hd18581889_ (##car _e18571885_))
                                      (_tl18591892_ (##cdr _e18571885_)))
                                  (if (gx#stx-pair? _tl18591892_)
                                      (let ((_e18601895_
                                             (gx#syntax-e _tl18591892_)))
                                        (let ((_hd18611899_
                                               (##car _e18601895_))
                                              (_tl18621902_
                                               (##cdr _e18601895_)))
                                          (if (gx#stx-null? _tl18621902_)
                                              ((lambda (_L1905_ _L1907_)
                                                 (if (gx#identifier? _L1907_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _L1907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1905_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g18291868_
                                                      _g18301872_)))
                                               _hd18611899_
                                               _hd18581889_)
                                              (_g18291868_ _g18301872_))))
                                      (_g18291868_ _g18301872_))))
                              (_g18291868_ _g18301872_))))
                      (_g18291868_ _g18301872_))))
               (_g18272021_
                (lambda (_g18301927_)
                  (if (gx#stx-pair? _g18301927_)
                      (let ((_e18341930_ (gx#syntax-e _g18301927_)))
                        (let ((_hd18351934_ (##car _e18341930_))
                              (_tl18361937_ (##cdr _e18341930_)))
                          (if (gx#stx-pair? _tl18361937_)
                              (let ((_e18371940_ (gx#syntax-e _tl18361937_)))
                                (let ((_hd18381944_ (##car _e18371940_))
                                      (_tl18391947_ (##cdr _e18371940_)))
                                  (if (gx#stx-pair? _hd18381944_)
                                      (let ((_e18401950_
                                             (gx#syntax-e _hd18381944_)))
                                        (let ((_hd18411954_
                                               (##car _e18401950_))
                                              (_tl18421957_
                                               (##cdr _e18401950_)))
                                          (if (gx#stx-pair/null? _tl18391947_)
                                              (if (fx>= (gx#stx-length
                                                         _tl18391947_)
                                                        '0)
                                                  (let ((_g35070_
                                                         (gx#syntax-split-splice
                                                          _tl18391947_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35071_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35070_)
                         (##vector-length _g35070_)
                         1)))
                (if (not (##fx= _g35071_ 2))
                    (error "Context expects 2 values" _g35071_)))
              (let ((_target18431960_ (##vector-ref _g35070_ 0))
                    (_tl18451963_ (##vector-ref _g35070_ 1)))
                (if (gx#stx-null? _tl18451963_)
                    (letrec ((_loop18461966_
                              (lambda (_hd18441970_ _body18501973_)
                                (if (gx#stx-pair? _hd18441970_)
                                    (let ((_e18471976_
                                           (gx#syntax-e _hd18441970_)))
                                      (let ((_lp-hd18481980_
                                             (##car _e18471976_))
                                            (_lp-tl18491983_
                                             (##cdr _e18471976_)))
                                        (_loop18461966_
                                         _lp-tl18491983_
                                         (cons _lp-hd18481980_
                                               _body18501973_))))
                                    (let ((_body18511986_
                                           (reverse _body18501973_)))
                                      ((lambda (_L1990_ _L1992_ _L1993_)
                                         (if (gx#identifier? _L1993_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1993_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L1992_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g20122015_ _g20132018_)
                                              (cons _g20122015_ _g20132018_))
                                            '()
                                            _L1990_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g18281923_ _g18301927_)))
                                       _body18511986_
                                       _tl18421957_
                                       _hd18411954_))))))
                      (_loop18461966_ _target18431960_ '()))
                    (_g18281923_ _g18301927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g18281923_ _g18301927_))
                                              (_g18281923_ _g18301927_))))
                                      (_g18281923_ _g18301927_))))
                              (_g18281923_ _g18301927_))))
                      (_g18281923_ _g18301927_)))))
          (_g18272021_ _$stx1824_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx2026_)
        (let* ((_g20302048_
                (lambda (_g20312044_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g20312044_)))
               (_g20292103_
                (lambda (_g20312052_)
                  (if (gx#stx-pair? _g20312052_)
                      (let ((_e20342055_ (gx#syntax-e _g20312052_)))
                        (let ((_hd20352059_ (##car _e20342055_))
                              (_tl20362062_ (##cdr _e20342055_)))
                          (if (gx#stx-pair? _tl20362062_)
                              (let ((_e20372065_ (gx#syntax-e _tl20362062_)))
                                (let ((_hd20382069_ (##car _e20372065_))
                                      (_tl20392072_ (##cdr _e20372065_)))
                                  (if (gx#stx-pair? _tl20392072_)
                                      (let ((_e20402075_
                                             (gx#syntax-e _tl20392072_)))
                                        (let ((_hd20412079_
                                               (##car _e20402075_))
                                              (_tl20422082_
                                               (##cdr _e20402075_)))
                                          (if (gx#stx-null? _tl20422082_)
                                              ((lambda (_L2085_ _L2087_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L2087_
                                                             (cons _L2085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd20412079_
                                               _hd20382069_)
                                              (_g20302048_ _g20312052_))))
                                      (_g20302048_ _g20312052_))))
                              (_g20302048_ _g20312052_))))
                      (_g20302048_ _g20312052_)))))
          (_g20292103_ _$stx2026_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx2107_)
        (let* ((_g21122151_
                (lambda (_g21132147_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g21132147_)))
               (_g21112206_
                (lambda (_g21132155_)
                  (if (gx#stx-pair? _g21132155_)
                      (let ((_e21372158_ (gx#syntax-e _g21132155_)))
                        (let ((_hd21382162_ (##car _e21372158_))
                              (_tl21392165_ (##cdr _e21372158_)))
                          (if (gx#stx-pair? _tl21392165_)
                              (let ((_e21402168_ (gx#syntax-e _tl21392165_)))
                                (let ((_hd21412172_ (##car _e21402168_))
                                      (_tl21422175_ (##cdr _e21402168_)))
                                  (if (gx#stx-pair? _tl21422175_)
                                      (let ((_e21432178_
                                             (gx#syntax-e _tl21422175_)))
                                        (let ((_hd21442182_
                                               (##car _e21432178_))
                                              (_tl21452185_
                                               (##cdr _e21432178_)))
                                          (if (gx#stx-null? _tl21452185_)
                                              ((lambda (_L2188_ _L2190_)
                                                 (if (gx#identifier? _L2190_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L2190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L2188_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g21122151_
                                                      _g21132155_)))
                                               _hd21442182_
                                               _hd21412172_)
                                              (_g21122151_ _g21132155_))))
                                      (_g21122151_ _g21132155_))))
                              (_g21122151_ _g21132155_))))
                      (_g21122151_ _g21132155_))))
               (_g21102304_
                (lambda (_g21132210_)
                  (if (gx#stx-pair? _g21132210_)
                      (let ((_e21172213_ (gx#syntax-e _g21132210_)))
                        (let ((_hd21182217_ (##car _e21172213_))
                              (_tl21192220_ (##cdr _e21172213_)))
                          (if (gx#stx-pair? _tl21192220_)
                              (let ((_e21202223_ (gx#syntax-e _tl21192220_)))
                                (let ((_hd21212227_ (##car _e21202223_))
                                      (_tl21222230_ (##cdr _e21202223_)))
                                  (if (gx#stx-pair? _hd21212227_)
                                      (let ((_e21232233_
                                             (gx#syntax-e _hd21212227_)))
                                        (let ((_hd21242237_
                                               (##car _e21232233_))
                                              (_tl21252240_
                                               (##cdr _e21232233_)))
                                          (if (gx#stx-pair/null? _tl21222230_)
                                              (if (fx>= (gx#stx-length
                                                         _tl21222230_)
                                                        '0)
                                                  (let ((_g35072_
                                                         (gx#syntax-split-splice
                                                          _tl21222230_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35073_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35072_)
                         (##vector-length _g35072_)
                         1)))
                (if (not (##fx= _g35073_ 2))
                    (error "Context expects 2 values" _g35073_)))
              (let ((_target21262243_ (##vector-ref _g35072_ 0))
                    (_tl21282246_ (##vector-ref _g35072_ 1)))
                (if (gx#stx-null? _tl21282246_)
                    (letrec ((_loop21292249_
                              (lambda (_hd21272253_ _body21332256_)
                                (if (gx#stx-pair? _hd21272253_)
                                    (let ((_e21302259_
                                           (gx#syntax-e _hd21272253_)))
                                      (let ((_lp-hd21312263_
                                             (##car _e21302259_))
                                            (_lp-tl21322266_
                                             (##cdr _e21302259_)))
                                        (_loop21292249_
                                         _lp-tl21322266_
                                         (cons _lp-hd21312263_
                                               _body21332256_))))
                                    (let ((_body21342269_
                                           (reverse _body21332256_)))
                                      ((lambda (_L2273_ _L2275_ _L2276_)
                                         (if (gx#identifier? _L2276_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L2276_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L2275_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g22952298_ _g22962301_)
                                              (cons _g22952298_ _g22962301_))
                                            '()
                                            _L2273_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g21112206_ _g21132210_)))
                                       _body21342269_
                                       _tl21252240_
                                       _hd21242237_))))))
                      (_loop21292249_ _target21262243_ '()))
                    (_g21112206_ _g21132210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g21112206_ _g21132210_))
                                              (_g21112206_ _g21132210_))))
                                      (_g21112206_ _g21132210_))))
                              (_g21112206_ _g21132210_))))
                      (_g21112206_ _g21132210_)))))
          (_g21102304_ _$stx2107_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2309_)
        (let* ((_g23142359_
                (lambda (_g23152355_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g23152355_)))
               (_g23132460_
                (lambda (_g23152363_)
                  (if (gx#stx-pair? _g23152363_)
                      (let ((_e23362366_ (gx#syntax-e _g23152363_)))
                        (let ((_hd23372370_ (##car _e23362366_))
                              (_tl23382373_ (##cdr _e23362366_)))
                          (if (gx#stx-pair? _tl23382373_)
                              (let ((_e23392376_ (gx#syntax-e _tl23382373_)))
                                (let ((_hd23402380_ (##car _e23392376_))
                                      (_tl23412383_ (##cdr _e23392376_)))
                                  (if (gx#stx-pair? _hd23402380_)
                                      (let ((_e23422386_
                                             (gx#syntax-e _hd23402380_)))
                                        (let ((_hd23432390_
                                               (##car _e23422386_))
                                              (_tl23442393_
                                               (##cdr _e23422386_)))
                                          (if (gx#stx-pair/null? _tl23412383_)
                                              (if (fx>= (gx#stx-length
                                                         _tl23412383_)
                                                        '0)
                                                  (let ((_g35074_
                                                         (gx#syntax-split-splice
                                                          _tl23412383_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35075_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35074_)
                         (##vector-length _g35074_)
                         1)))
                (if (not (##fx= _g35075_ 2))
                    (error "Context expects 2 values" _g35075_)))
              (let ((_target23452396_ (##vector-ref _g35074_ 0))
                    (_tl23472399_ (##vector-ref _g35074_ 1)))
                (if (gx#stx-null? _tl23472399_)
                    (letrec ((_loop23482402_
                              (lambda (_hd23462406_ _body23522409_)
                                (if (gx#stx-pair? _hd23462406_)
                                    (let ((_e23492412_
                                           (gx#syntax-e _hd23462406_)))
                                      (let ((_lp-hd23502416_
                                             (##car _e23492412_))
                                            (_lp-tl23512419_
                                             (##cdr _e23492412_)))
                                        (_loop23482402_
                                         _lp-tl23512419_
                                         (cons _lp-hd23502416_
                                               _body23522409_))))
                                    (let ((_body23532422_
                                           (reverse _body23522409_)))
                                      ((lambda (_L2426_
                                                _L2428_
                                                _L2429_
                                                _L2430_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons _L2429_ '())
                                                     (cons (cons _L2430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L2428_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g24512454_ _g24522457_)
                                          (cons _g24512454_ _g24522457_))
                                        '()
                                        _L2426_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body23532422_
                                       _tl23442393_
                                       _hd23432390_
                                       _hd23372370_))))))
                      (_loop23482402_ _target23452396_ '()))
                    (_g23142359_ _g23152363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g23142359_ _g23152363_))
                                              (_g23142359_ _g23152363_))))
                                      (_g23142359_ _g23152363_))))
                              (_g23142359_ _g23152363_))))
                      (_g23142359_ _g23152363_))))
               (_g23122542_
                (lambda (_g23152464_)
                  (if (gx#stx-pair? _g23152464_)
                      (let ((_e23172467_ (gx#syntax-e _g23152464_)))
                        (let ((_hd23182471_ (##car _e23172467_))
                              (_tl23192474_ (##cdr _e23172467_)))
                          (if (gx#stx-pair? _tl23192474_)
                              (let ((_e23202477_ (gx#syntax-e _tl23192474_)))
                                (let ((_hd23212481_ (##car _e23202477_))
                                      (_tl23222484_ (##cdr _e23202477_)))
                                  (if (gx#stx-null? _hd23212481_)
                                      (if (gx#stx-pair/null? _tl23222484_)
                                          (if (fx>= (gx#stx-length
                                                     _tl23222484_)
                                                    '0)
                                              (let ((_g35076_
                                                     (gx#syntax-split-splice
                                                      _tl23222484_
                                                      '0)))
                                                (begin
                                                  (let ((_g35077_
                                                         (if (##values?
                                                              _g35076_)
                                                             (##vector-length
                                                              _g35076_)
                                                             1)))
                                                    (if (not (##fx= _g35077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35077_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target23232487_
                                                         (##vector-ref
                                                          _g35076_
                                                          0))
                                                        (_tl23252490_
                                                         (##vector-ref
                                                          _g35076_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl23252490_)
                                                        (letrec ((_loop23262493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd23242497_ _body23302500_)
                            (if (gx#stx-pair? _hd23242497_)
                                (let ((_e23272503_ (gx#syntax-e _hd23242497_)))
                                  (let ((_lp-hd23282507_ (##car _e23272503_))
                                        (_lp-tl23292510_ (##cdr _e23272503_)))
                                    (_loop23262493_
                                     _lp-tl23292510_
                                     (cons _lp-hd23282507_ _body23302500_))))
                                (let ((_body23312513_
                                       (reverse _body23302500_)))
                                  ((lambda (_L2517_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g25332536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g25342539_)
                    (cons _g25332536_ _g25342539_))
                  '()
                  _L2517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body23312513_))))))
                  (_loop23262493_ _target23232487_ '()))
                (_g23132460_ _g23152464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g23132460_ _g23152464_))
                                          (_g23132460_ _g23152464_))
                                      (_g23132460_ _g23152464_))))
                              (_g23132460_ _g23152464_))))
                      (_g23132460_ _g23152464_)))))
          (_g23122542_ _$stx2309_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2548_)
        (let* ((_g25532617_
                (lambda (_g25542613_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g25542613_)))
               (_g25522702_
                (lambda (_g25542621_)
                  (if (gx#stx-pair? _g25542621_)
                      (let ((_e25972624_ (gx#syntax-e _g25542621_)))
                        (let ((_hd25982628_ (##car _e25972624_))
                              (_tl25992631_ (##cdr _e25972624_)))
                          (if (gx#stx-pair? _tl25992631_)
                              (let ((_e26002634_ (gx#syntax-e _tl25992631_)))
                                (let ((_hd26012638_ (##car _e26002634_))
                                      (_tl26022641_ (##cdr _e26002634_)))
                                  (if (gx#stx-pair/null? _tl26022641_)
                                      (if (fx>= (gx#stx-length _tl26022641_)
                                                '0)
                                          (let ((_g35078_
                                                 (gx#syntax-split-splice
                                                  _tl26022641_
                                                  '0)))
                                            (begin
                                              (let ((_g35079_
                                                     (if (##values? _g35078_)
                                                         (##vector-length
                                                          _g35078_)
                                                         1)))
                                                (if (not (##fx= _g35079_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35079_)))
                                              (let ((_target26032644_
                                                     (##vector-ref _g35078_ 0))
                                                    (_tl26052647_
                                                     (##vector-ref
                                                      _g35078_
                                                      1)))
                                                (if (gx#stx-null? _tl26052647_)
                                                    (letrec ((_loop26062650_
                                                              (lambda (_hd26042654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body26102657_)
                        (if (gx#stx-pair? _hd26042654_)
                            (let ((_e26072660_ (gx#syntax-e _hd26042654_)))
                              (let ((_lp-hd26082664_ (##car _e26072660_))
                                    (_lp-tl26092667_ (##cdr _e26072660_)))
                                (_loop26062650_
                                 _lp-tl26092667_
                                 (cons _lp-hd26082664_ _body26102657_))))
                            (let ((_body26112670_ (reverse _body26102657_)))
                              ((lambda (_L2674_ _L2676_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons _L2676_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g26932696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g26942699_)
                      (cons _g26932696_ _g26942699_))
                    '()
                    _L2674_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body26112670_
                               _hd26012638_))))))
              (_loop26062650_ _target26032644_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g25532617_
                                                     _g25542621_)))))
                                          (_g25532617_ _g25542621_))
                                      (_g25532617_ _g25542621_))))
                              (_g25532617_ _g25542621_))))
                      (_g25532617_ _g25542621_))))
               (_g25512878_
                (lambda (_g25542706_)
                  (if (gx#stx-pair? _g25542706_)
                      (let ((_e25602709_ (gx#syntax-e _g25542706_)))
                        (let ((_hd25612713_ (##car _e25602709_))
                              (_tl25622716_ (##cdr _e25602709_)))
                          (if (gx#stx-pair? _tl25622716_)
                              (let ((_e25632719_ (gx#syntax-e _tl25622716_)))
                                (let ((_hd25642723_ (##car _e25632719_))
                                      (_tl25652726_ (##cdr _e25632719_)))
                                  (if (gx#stx-pair? _tl25652726_)
                                      (let ((_e25662729_
                                             (gx#syntax-e _tl25652726_)))
                                        (let ((_hd25672733_
                                               (##car _e25662729_))
                                              (_tl25682736_
                                               (##cdr _e25662729_)))
                                          (if (gx#stx-pair/null? _hd25672733_)
                                              (if (fx>= (gx#stx-length
                                                         _hd25672733_)
                                                        '0)
                                                  (let ((_g35080_
                                                         (gx#syntax-split-splice
                                                          _hd25672733_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35081_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35080_)
                         (##vector-length _g35080_)
                         1)))
                (if (not (##fx= _g35081_ 2))
                    (error "Context expects 2 values" _g35081_)))
              (let ((_target25692739_ (##vector-ref _g35080_ 0))
                    (_tl25712742_ (##vector-ref _g35080_ 1)))
                (letrec ((_loop25722745_
                          (lambda (_hd25702749_ _arg25762752_ _var25772754_)
                            (if (gx#stx-pair? _hd25702749_)
                                (let ((_e25732757_ (gx#syntax-e _hd25702749_)))
                                  (let ((_lp-hd25742761_ (##car _e25732757_))
                                        (_lp-tl25752764_ (##cdr _e25732757_)))
                                    (if (gx#stx-pair? _lp-hd25742761_)
                                        (let ((_e25802767_
                                               (gx#syntax-e _lp-hd25742761_)))
                                          (let ((_hd25812771_
                                                 (##car _e25802767_))
                                                (_tl25822774_
                                                 (##cdr _e25802767_)))
                                            (if (gx#stx-pair? _tl25822774_)
                                                (let ((_e25832777_
                                                       (gx#syntax-e
                                                        _tl25822774_)))
                                                  (let ((_hd25842781_
                                                         (##car _e25832777_))
                                                        (_tl25852784_
                                                         (##cdr _e25832777_)))
                                                    (if (gx#stx-null?
                                                         _tl25852784_)
                                                        (_loop25722745_
                                                         _lp-tl25752764_
                                                         (cons _hd25842781_
                                                               _arg25762752_)
                                                         (cons _hd25812771_
                                                               _var25772754_))
                                                        (_g25522702_
                                                         _g25542706_))))
                                                (_g25522702_ _g25542706_))))
                                        (_g25522702_ _g25542706_))))
                                (let ((_arg25782787_ (reverse _arg25762752_))
                                      (_var25792790_ (reverse _var25772754_)))
                                  (if (gx#stx-pair/null? _tl25682736_)
                                      (if (fx>= (gx#stx-length _tl25682736_)
                                                '0)
                                          (let ((_g35082_
                                                 (gx#syntax-split-splice
                                                  _tl25682736_
                                                  '0)))
                                            (begin
                                              (let ((_g35083_
                                                     (if (##values? _g35082_)
                                                         (##vector-length
                                                          _g35082_)
                                                         1)))
                                                (if (not (##fx= _g35083_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35083_)))
                                              (let ((_target25862793_
                                                     (##vector-ref _g35082_ 0))
                                                    (_tl25882796_
                                                     (##vector-ref
                                                      _g35082_
                                                      1)))
                                                (if (gx#stx-null? _tl25882796_)
                                                    (letrec ((_loop25892799_
                                                              (lambda (_hd25872803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25932806_)
                        (if (gx#stx-pair? _hd25872803_)
                            (let ((_e25902809_ (gx#syntax-e _hd25872803_)))
                              (let ((_lp-hd25912813_ (##car _e25902809_))
                                    (_lp-tl25922816_ (##cdr _e25902809_)))
                                (_loop25892799_
                                 _lp-tl25922816_
                                 (cons _lp-hd25912813_ _body25932806_))))
                            (let ((_body25942819_ (reverse _body25932806_)))
                              ((lambda (_L2823_
                                        _L2825_
                                        _L2826_
                                        _L2827_
                                        _L2828_)
                                 (if (gx#identifier? _L2828_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _L2828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (begin
                                               '#!void
                                               (foldr (lambda (_g28532860_
                                                               _g28542863_)
                                                        (cons _g28532860_
                                                              _g28542863_))
                                                      _L2825_
                                                      _L2827_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g28552866_
                                                               _g28562869_)
                                                        (cons _g28552866_
                                                              _g28562869_))
                                                      '()
                                                      _L2823_))))
                                 '()))
                     '())
               (cons _L2828_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g28572872_
                                                             _g28582875_)
                                                      (cons _g28572872_
                                                            _g28582875_))
                                                    '()
                                                    _L2826_)))
                                     (_g25522702_ _g25542706_)))
                               _body25942819_
                               _tl25712742_
                               _arg25782787_
                               _var25792790_
                               _hd25642723_))))))
              (_loop25892799_ _target25862793_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g25522702_
                                                     _g25542706_)))))
                                          (_g25522702_ _g25542706_))
                                      (_g25522702_ _g25542706_)))))))
                  (_loop25722745_ _target25692739_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g25522702_ _g25542706_))
                                              (_g25522702_ _g25542706_))))
                                      (_g25522702_ _g25542706_))))
                              (_g25522702_ _g25542706_))))
                      (_g25522702_ _g25542706_)))))
          (_g25512878_ _$stx2548_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2885_)
        (let* ((_g28892913_
                (lambda (_g28902909_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g28902909_)))
               (_g28882998_
                (lambda (_g28902917_)
                  (if (gx#stx-pair? _g28902917_)
                      (let ((_e28932920_ (gx#syntax-e _g28902917_)))
                        (let ((_hd28942924_ (##car _e28932920_))
                              (_tl28952927_ (##cdr _e28932920_)))
                          (if (gx#stx-pair? _tl28952927_)
                              (let ((_e28962930_ (gx#syntax-e _tl28952927_)))
                                (let ((_hd28972934_ (##car _e28962930_))
                                      (_tl28982937_ (##cdr _e28962930_)))
                                  (if (gx#stx-pair/null? _tl28982937_)
                                      (if (fx>= (gx#stx-length _tl28982937_)
                                                '0)
                                          (let ((_g35084_
                                                 (gx#syntax-split-splice
                                                  _tl28982937_
                                                  '0)))
                                            (begin
                                              (let ((_g35085_
                                                     (if (##values? _g35084_)
                                                         (##vector-length
                                                          _g35084_)
                                                         1)))
                                                (if (not (##fx= _g35085_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35085_)))
                                              (let ((_target28992940_
                                                     (##vector-ref _g35084_ 0))
                                                    (_tl29012943_
                                                     (##vector-ref
                                                      _g35084_
                                                      1)))
                                                (if (gx#stx-null? _tl29012943_)
                                                    (letrec ((_loop29022946_
                                                              (lambda (_hd29002950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body29062953_)
                        (if (gx#stx-pair? _hd29002950_)
                            (let ((_e29032956_ (gx#syntax-e _hd29002950_)))
                              (let ((_lp-hd29042960_ (##car _e29032956_))
                                    (_lp-tl29052963_ (##cdr _e29032956_)))
                                (_loop29022946_
                                 _lp-tl29052963_
                                 (cons _lp-hd29042960_ _body29062953_))))
                            (let ((_body29072966_ (reverse _body29062953_)))
                              ((lambda (_L2970_ _L2972_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'let*-values)
                                             (cons _L2972_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g29892992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g29902995_)
                      (cons _g29892992_ _g29902995_))
                    '()
                    _L2970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body29072966_
                               _hd28972934_))))))
              (_loop29022946_ _target28992940_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g28892913_
                                                     _g28902917_)))))
                                          (_g28892913_ _g28902917_))
                                      (_g28892913_ _g28902917_))))
                              (_g28892913_ _g28902917_))))
                      (_g28892913_ _g28902917_)))))
          (_g28882998_ _$stx2885_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx3003_)
        (let* ((_g30073031_
                (lambda (_g30083027_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30083027_)))
               (_g30063116_
                (lambda (_g30083035_)
                  (if (gx#stx-pair? _g30083035_)
                      (let ((_e30113038_ (gx#syntax-e _g30083035_)))
                        (let ((_hd30123042_ (##car _e30113038_))
                              (_tl30133045_ (##cdr _e30113038_)))
                          (if (gx#stx-pair? _tl30133045_)
                              (let ((_e30143048_ (gx#syntax-e _tl30133045_)))
                                (let ((_hd30153052_ (##car _e30143048_))
                                      (_tl30163055_ (##cdr _e30143048_)))
                                  (if (gx#stx-pair/null? _tl30163055_)
                                      (if (fx>= (gx#stx-length _tl30163055_)
                                                '0)
                                          (let ((_g35086_
                                                 (gx#syntax-split-splice
                                                  _tl30163055_
                                                  '0)))
                                            (begin
                                              (let ((_g35087_
                                                     (if (##values? _g35086_)
                                                         (##vector-length
                                                          _g35086_)
                                                         1)))
                                                (if (not (##fx= _g35087_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35087_)))
                                              (let ((_target30173058_
                                                     (##vector-ref _g35086_ 0))
                                                    (_tl30193061_
                                                     (##vector-ref
                                                      _g35086_
                                                      1)))
                                                (if (gx#stx-null? _tl30193061_)
                                                    (letrec ((_loop30203064_
                                                              (lambda (_hd30183068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body30243071_)
                        (if (gx#stx-pair? _hd30183068_)
                            (let ((_e30213074_ (gx#syntax-e _hd30183068_)))
                              (let ((_lp-hd30223078_ (##car _e30213074_))
                                    (_lp-tl30233081_ (##cdr _e30213074_)))
                                (_loop30203064_
                                 _lp-tl30233081_
                                 (cons _lp-hd30223078_ _body30243071_))))
                            (let ((_body30253084_ (reverse _body30243071_)))
                              ((lambda (_L3088_ _L3090_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec-values)
                                             (cons _L3090_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g31073110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g31083113_)
                      (cons _g31073110_ _g31083113_))
                    '()
                    _L3088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body30253084_
                               _hd30153052_))))))
              (_loop30203064_ _target30173058_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g30073031_
                                                     _g30083035_)))))
                                          (_g30073031_ _g30083035_))
                                      (_g30073031_ _g30083035_))))
                              (_g30073031_ _g30083035_))))
                      (_g30073031_ _g30083035_)))))
          (_g30063116_ _$stx3003_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3121_)
        (let* ((_g31253149_
                (lambda (_g31263145_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31263145_)))
               (_g31243234_
                (lambda (_g31263153_)
                  (if (gx#stx-pair? _g31263153_)
                      (let ((_e31293156_ (gx#syntax-e _g31263153_)))
                        (let ((_hd31303160_ (##car _e31293156_))
                              (_tl31313163_ (##cdr _e31293156_)))
                          (if (gx#stx-pair? _tl31313163_)
                              (let ((_e31323166_ (gx#syntax-e _tl31313163_)))
                                (let ((_hd31333170_ (##car _e31323166_))
                                      (_tl31343173_ (##cdr _e31323166_)))
                                  (if (gx#stx-pair/null? _tl31343173_)
                                      (if (fx>= (gx#stx-length _tl31343173_)
                                                '0)
                                          (let ((_g35088_
                                                 (gx#syntax-split-splice
                                                  _tl31343173_
                                                  '0)))
                                            (begin
                                              (let ((_g35089_
                                                     (if (##values? _g35088_)
                                                         (##vector-length
                                                          _g35088_)
                                                         1)))
                                                (if (not (##fx= _g35089_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35089_)))
                                              (let ((_target31353176_
                                                     (##vector-ref _g35088_ 0))
                                                    (_tl31373179_
                                                     (##vector-ref
                                                      _g35088_
                                                      1)))
                                                (if (gx#stx-null? _tl31373179_)
                                                    (letrec ((_loop31383182_
                                                              (lambda (_hd31363186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body31423189_)
                        (if (gx#stx-pair? _hd31363186_)
                            (let ((_e31393192_ (gx#syntax-e _hd31363186_)))
                              (let ((_lp-hd31403196_ (##car _e31393192_))
                                    (_lp-tl31413199_ (##cdr _e31393192_)))
                                (_loop31383182_
                                 _lp-tl31413199_
                                 (cons _lp-hd31403196_ _body31423189_))))
                            (let ((_body31433202_ (reverse _body31423189_)))
                              ((lambda (_L3206_ _L3208_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec*-values)
                                             (cons _L3208_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g32253228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g32263231_)
                      (cons _g32253228_ _g32263231_))
                    '()
                    _L3206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body31433202_
                               _hd31333170_))))))
              (_loop31383182_ _target31353176_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g31253149_
                                                     _g31263153_)))))
                                          (_g31253149_ _g31263153_))
                                      (_g31253149_ _g31263153_))))
                              (_g31253149_ _g31263153_))))
                      (_g31253149_ _g31263153_)))))
          (_g31243234_ _$stx3121_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx3239_)
        (letrec ((_let-head?3242_
                  (lambda (_x3722_)
                    (let* ((_g37263737_
                            (lambda (_g37273733_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g37273733_)))
                           (_g37253748_
                            (lambda (_g37273741_)
                              ((lambda () (gx#identifier? _x3722_)))))
                           (_g37243778_
                            (lambda (_g37273752_)
                              (if (gx#stx-pair? _g37273752_)
                                  (let ((_e37293755_
                                         (gx#syntax-e _g37273752_)))
                                    (let ((_hd37303759_ (##car _e37293755_))
                                          (_tl37313762_ (##cdr _e37293755_)))
                                      (if (gx#identifier? _hd37303759_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:1>[1]#_g35090_|
                                               _hd37303759_)
                                              ((lambda (_L3765_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3765_))
                                               _tl37313762_)
                                              (_g37253748_ _g37273752_))
                                          (_g37253748_ _g37273752_))))
                                  (_g37253748_ _g37273752_)))))
                      (_g37243778_ _x3722_))))
                 (_let-head3244_
                  (lambda (_x3662_)
                    (let* ((_g36663677_
                            (lambda (_g36673673_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36673673_)))
                           (_g36653688_
                            (lambda (_g36673681_)
                              ((lambda () (list _x3662_)))))
                           (_g36643718_
                            (lambda (_g36673692_)
                              (if (gx#stx-pair? _g36673692_)
                                  (let ((_e36693695_
                                         (gx#syntax-e _g36673692_)))
                                    (let ((_hd36703699_ (##car _e36693695_))
                                          (_tl36713702_ (##cdr _e36693695_)))
                                      (if (gx#identifier? _hd36703699_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:1>[1]#_g35091_|
                                               _hd36703699_)
                                              ((lambda (_L3705_) _L3705_)
                                               _tl36713702_)
                                              (_g36653688_ _g36673692_))
                                          (_g36653688_ _g36673692_))))
                                  (_g36653688_ _g36673692_)))))
                      (_g36643718_ _x3662_)))))
          (let* ((_g32473313_
                  (lambda (_g32483309_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g32483309_)))
                 (_g32463574_
                  (lambda (_g32483317_)
                    (if (gx#stx-pair? _g32483317_)
                        (let ((_e32733320_ (gx#syntax-e _g32483317_)))
                          (let ((_hd32743324_ (##car _e32733320_))
                                (_tl32753327_ (##cdr _e32733320_)))
                            (if (gx#stx-pair? _tl32753327_)
                                (let ((_e32763330_ (gx#syntax-e _tl32753327_)))
                                  (let ((_hd32773334_ (##car _e32763330_))
                                        (_tl32783337_ (##cdr _e32763330_)))
                                    (if (gx#stx-pair? _tl32783337_)
                                        (let ((_e32793340_
                                               (gx#syntax-e _tl32783337_)))
                                          (let ((_hd32803344_
                                                 (##car _e32793340_))
                                                (_tl32813347_
                                                 (##cdr _e32793340_)))
                                            (if (gx#stx-pair/null?
                                                 _hd32803344_)
                                                (if (fx>= (gx#stx-length
                                                           _hd32803344_)
                                                          '0)
                                                    (let ((_g35092_
                                                           (gx#syntax-split-splice
                                                            _hd32803344_
                                                            '0)))
                                                      (begin
                                                        (let ((_g35093_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g35092_)
                           (##vector-length _g35092_)
                           1)))
                  (if (not (##fx= _g35093_ 2))
                      (error "Context expects 2 values" _g35093_)))
                (let ((_target32823350_ (##vector-ref _g35092_ 0))
                      (_tl32843353_ (##vector-ref _g35092_ 1)))
                  (if (gx#stx-null? _tl32843353_)
                      (letrec ((_loop32853356_
                                (lambda (_hd32833360_ _e32893363_ _hd32903365_)
                                  (if (gx#stx-pair? _hd32833360_)
                                      (let ((_e32863368_
                                             (gx#syntax-e _hd32833360_)))
                                        (let ((_lp-hd32873372_
                                               (##car _e32863368_))
                                              (_lp-tl32883375_
                                               (##cdr _e32863368_)))
                                          (if (gx#stx-pair? _lp-hd32873372_)
                                              (let ((_e32933378_
                                                     (gx#syntax-e
                                                      _lp-hd32873372_)))
                                                (let ((_hd32943382_
                                                       (##car _e32933378_))
                                                      (_tl32953385_
                                                       (##cdr _e32933378_)))
                                                  (if (gx#stx-pair?
                                                       _tl32953385_)
                                                      (let ((_e32963388_
                                                             (gx#syntax-e
                                                              _tl32953385_)))
                                                        (let ((_hd32973392_
                                                               (##car _e32963388_))
                                                              (_tl32983395_
                                                               (##cdr _e32963388_)))
                                                          (if (gx#stx-null?
                                                               _tl32983395_)
                                                              (_loop32853356_
                                                               _lp-tl32883375_
                                                               (cons _hd32973392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e32893363_)
                       (cons _hd32943382_ _hd32903365_))
                      (_g32473313_ _g32483317_))))
              (_g32473313_ _g32483317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g32473313_ _g32483317_))))
                                      (let ((_e32913398_ (reverse _e32893363_))
                                            (_hd32923401_
                                             (reverse _hd32903365_)))
                                        (if (gx#stx-pair/null? _tl32813347_)
                                            (if (fx>= (gx#stx-length
                                                       _tl32813347_)
                                                      '0)
                                                (let ((_g35094_
                                                       (gx#syntax-split-splice
                                                        _tl32813347_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35095_
                                                           (if (##values?
                                                                _g35094_)
                                                               (##vector-length
                                                                _g35094_)
                                                               1)))
                                                      (if (not (##fx= _g35095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35095_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target32993404_
                                                           (##vector-ref
                                                            _g35094_
                                                            0))
                                                          (_tl33013407_
                                                           (##vector-ref
                                                            _g35094_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl33013407_)
                                                          (letrec ((_loop33023410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd33003414_ _body33063417_)
                              (if (gx#stx-pair? _hd33003414_)
                                  (let ((_e33033420_
                                         (gx#syntax-e _hd33003414_)))
                                    (let ((_lp-hd33043424_ (##car _e33033420_))
                                          (_lp-tl33053427_
                                           (##cdr _e33033420_)))
                                      (_loop33023410_
                                       _lp-tl33053427_
                                       (cons _lp-hd33043424_ _body33063417_))))
                                  (let ((_body33073430_
                                         (reverse _body33063417_)))
                                    ((lambda (_L3434_ _L3436_ _L3437_ _L3438_)
                                       (if (gx#stx-andmap
                                            _let-head?3242_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g34643467_
                                                              _g34653470_)
                                                       (cons _g34643467_
                                                             _g34653470_))
                                                     '()
                                                     _L3437_)))
                                           (let* ((_g34733490_
                                                   (lambda (_g34743486_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g34743486_)))
                                                  (_g34723562_
                                                   (lambda (_g34743494_)
                                                     (if (gx#stx-pair/null?
                                                          _g34743494_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g34743494_)
                           '0)
                     (let ((_g35096_ (gx#syntax-split-splice _g34743494_ '0)))
                       (begin
                         (let ((_g35097_
                                (if (##values? _g35096_)
                                    (##vector-length _g35096_)
                                    1)))
                           (if (not (##fx= _g35097_ 2))
                               (error "Context expects 2 values" _g35097_)))
                         (let ((_target34763497_ (##vector-ref _g35096_ 0))
                               (_tl34783500_ (##vector-ref _g35096_ 1)))
                           (if (gx#stx-null? _tl34783500_)
                               (letrec ((_loop34793503_
                                         (lambda (_hd34773507_
                                                  _hd-bind34833510_)
                                           (if (gx#stx-pair? _hd34773507_)
                                               (let ((_e34803513_
                                                      (gx#syntax-e
                                                       _hd34773507_)))
                                                 (let ((_lp-hd34813517_
                                                        (##car _e34803513_))
                                                       (_lp-tl34823520_
                                                        (##cdr _e34803513_)))
                                                   (_loop34793503_
                                                    _lp-tl34823520_
                                                    (cons _lp-hd34813517_
                                                          _hd-bind34833510_))))
                                               (let ((_hd-bind34843523_
                                                      (reverse _hd-bind34833510_)))
                                                 ((lambda (_L3527_)
                                                    (let ()
                                                      (cons _L3438_
                                                            (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-check-splice-targets _L3436_ _L3527_)
                            (foldr (lambda (_g35423548_
                                            _g35433551_
                                            _g35443553_)
                                     (cons (cons _g35433551_
                                                 (cons _g35423548_ '()))
                                           _g35443553_))
                                   '()
                                   _L3436_
                                   _L3527_))
                          (begin
                            '#!void
                            (foldr (lambda (_g35453556_ _g35463559_)
                                     (cons _g35453556_ _g35463559_))
                                   '()
                                   _L3434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd-bind34843523_))))))
                                 (_loop34793503_ _target34763497_ '()))
                               (_g34733490_ _g34743494_)))))
                     (_g34733490_ _g34743494_))
                 (_g34733490_ _g34743494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g34723562_
                                              (gx#stx-map
                                               _let-head3244_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g35653568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35663571_)
                  (cons _g35653568_ _g35663571_))
                '()
                _L3437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g32473313_ _g32483317_)))
                                     _body33073430_
                                     _e32913398_
                                     _hd32923401_
                                     _hd32773334_))))))
                    (_loop33023410_ _target32993404_ '()))
                  (_g32473313_ _g32483317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g32473313_ _g32483317_))
                                            (_g32473313_ _g32483317_)))))))
                        (_loop32853356_ _target32823350_ '() '()))
                      (_g32473313_ _g32483317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g32473313_ _g32483317_))
                                                (_g32473313_ _g32483317_))))
                                        (_g32473313_ _g32483317_))))
                                (_g32473313_ _g32483317_))))
                        (_g32473313_ _g32483317_))))
                 (_g32453658_
                  (lambda (_g32483578_)
                    (if (gx#stx-pair? _g32483578_)
                        (let ((_e32543581_ (gx#syntax-e _g32483578_)))
                          (let ((_hd32553585_ (##car _e32543581_))
                                (_tl32563588_ (##cdr _e32543581_)))
                            (if (gx#stx-pair? _tl32563588_)
                                (let ((_e32573591_ (gx#syntax-e _tl32563588_)))
                                  (let ((_hd32583595_ (##car _e32573591_))
                                        (_tl32593598_ (##cdr _e32573591_)))
                                    (if (gx#stx-pair? _tl32593598_)
                                        (let ((_e32603601_
                                               (gx#syntax-e _tl32593598_)))
                                          (let ((_hd32613605_
                                                 (##car _e32603601_))
                                                (_tl32623608_
                                                 (##cdr _e32603601_)))
                                            (if (gx#stx-pair? _hd32613605_)
                                                (let ((_e32633611_
                                                       (gx#syntax-e
                                                        _hd32613605_)))
                                                  (let ((_hd32643615_
                                                         (##car _e32633611_))
                                                        (_tl32653618_
                                                         (##cdr _e32633611_)))
                                                    (if (gx#stx-pair?
                                                         _tl32653618_)
                                                        (let ((_e32663621_
                                                               (gx#syntax-e
                                                                _tl32653618_)))
                                                          (let ((_hd32673625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32663621_))
                        (_tl32683628_ (##cdr _e32663621_)))
                    (if (gx#stx-null? _tl32683628_)
                        ((lambda (_L3631_ _L3633_ _L3634_ _L3635_ _L3636_)
                           (if (_let-head?3242_ _L3634_)
                               (cons _L3636_
                                     (cons _L3635_
                                           (cons (cons (cons _L3634_
                                                             (cons _L3633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _L3631_)))
                               (_g32463574_ _g32483578_)))
                         _tl32623608_
                         _hd32673625_
                         _hd32643615_
                         _hd32583595_
                         _hd32553585_)
                        (_g32463574_ _g32483578_))))
                (_g32463574_ _g32483578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g32463574_ _g32483578_))))
                                        (_g32463574_ _g32483578_))))
                                (_g32463574_ _g32483578_))))
                        (_g32463574_ _g32483578_)))))
            (_g32453658_ _stx3239_)))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3785_)
        (let* ((_g37913817_
                (lambda (_g37923813_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g37923813_)))
               (_g37903862_
                (lambda (_g37923821_)
                  (if (gx#stx-pair? _g37923821_)
                      (let ((_e38063824_ (gx#syntax-e _g37923821_)))
                        (let ((_hd38073828_ (##car _e38063824_))
                              (_tl38083831_ (##cdr _e38063824_)))
                          (if (gx#stx-pair? _tl38083831_)
                              (let ((_e38093834_ (gx#syntax-e _tl38083831_)))
                                (let ((_hd38103838_ (##car _e38093834_))
                                      (_tl38113841_ (##cdr _e38093834_)))
                                  ((lambda (_L3844_ _L3846_ _L3847_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _L3846_
                                                 (cons (cons _L3847_ _L3844_)
                                                       (cons '#f '())))))
                                   _tl38113841_
                                   _hd38103838_
                                   _hd38073828_)))
                              (_g37913817_ _g37923821_))))
                      (_g37913817_ _g37923821_))))
               (_g37893902_
                (lambda (_g37923866_)
                  (if (gx#stx-pair? _g37923866_)
                      (let ((_e37973869_ (gx#syntax-e _g37923866_)))
                        (let ((_hd37983873_ (##car _e37973869_))
                              (_tl37993876_ (##cdr _e37973869_)))
                          (if (gx#stx-pair? _tl37993876_)
                              (let ((_e38003879_ (gx#syntax-e _tl37993876_)))
                                (let ((_hd38013883_ (##car _e38003879_))
                                      (_tl38023886_ (##cdr _e38003879_)))
                                  (if (gx#stx-null? _tl38023886_)
                                      ((lambda (_L3889_) _L3889_) _hd38013883_)
                                      (_g37903862_ _g37923866_))))
                              (_g37903862_ _g37923866_))))
                      (_g37903862_ _g37923866_))))
               (_g37883923_
                (lambda (_g37923906_)
                  (if (gx#stx-pair? _g37923906_)
                      (let ((_e37933909_ (gx#syntax-e _g37923906_)))
                        (let ((_hd37943913_ (##car _e37933909_))
                              (_tl37953916_ (##cdr _e37933909_)))
                          (if (gx#stx-null? _tl37953916_)
                              ((lambda () '#t))
                              (_g37893902_ _g37923906_))))
                      (_g37893902_ _g37923906_)))))
          (_g37883923_ _$stx3785_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3927_)
        (let* ((_g39333959_
                (lambda (_g39343955_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39343955_)))
               (_g39324004_
                (lambda (_g39343963_)
                  (if (gx#stx-pair? _g39343963_)
                      (let ((_e39483966_ (gx#syntax-e _g39343963_)))
                        (let ((_hd39493970_ (##car _e39483966_))
                              (_tl39503973_ (##cdr _e39483966_)))
                          (if (gx#stx-pair? _tl39503973_)
                              (let ((_e39513976_ (gx#syntax-e _tl39503973_)))
                                (let ((_hd39523980_ (##car _e39513976_))
                                      (_tl39533983_ (##cdr _e39513976_)))
                                  ((lambda (_L3986_ _L3988_ _L3989_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons _L3988_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           (cons (gx#datum->syntax '#f '$e)
                                 (cons (cons _L3989_ _L3986_) '()))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _tl39533983_
                                   _hd39523980_
                                   _hd39493970_)))
                              (_g39333959_ _g39343963_))))
                      (_g39333959_ _g39343963_))))
               (_g39314044_
                (lambda (_g39344008_)
                  (if (gx#stx-pair? _g39344008_)
                      (let ((_e39394011_ (gx#syntax-e _g39344008_)))
                        (let ((_hd39404015_ (##car _e39394011_))
                              (_tl39414018_ (##cdr _e39394011_)))
                          (if (gx#stx-pair? _tl39414018_)
                              (let ((_e39424021_ (gx#syntax-e _tl39414018_)))
                                (let ((_hd39434025_ (##car _e39424021_))
                                      (_tl39444028_ (##cdr _e39424021_)))
                                  (if (gx#stx-null? _tl39444028_)
                                      ((lambda (_L4031_) _L4031_) _hd39434025_)
                                      (_g39324004_ _g39344008_))))
                              (_g39324004_ _g39344008_))))
                      (_g39324004_ _g39344008_))))
               (_g39304065_
                (lambda (_g39344048_)
                  (if (gx#stx-pair? _g39344048_)
                      (let ((_e39354051_ (gx#syntax-e _g39344048_)))
                        (let ((_hd39364055_ (##car _e39354051_))
                              (_tl39374058_ (##cdr _e39354051_)))
                          (if (gx#stx-null? _tl39374058_)
                              ((lambda () '#f))
                              (_g39314044_ _g39344048_))))
                      (_g39314044_ _g39344048_)))))
          (_g39304065_ _$stx3927_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx4069_)
        (let* ((_g40784169_
                (lambda (_g40794165_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40794165_)))
               (_g40774270_
                (lambda (_g40794173_)
                  (if (gx#stx-pair? _g40794173_)
                      (let ((_e41464176_ (gx#syntax-e _g40794173_)))
                        (let ((_hd41474180_ (##car _e41464176_))
                              (_tl41484183_ (##cdr _e41464176_)))
                          (if (gx#stx-pair? _tl41484183_)
                              (let ((_e41494186_ (gx#syntax-e _tl41484183_)))
                                (let ((_hd41504190_ (##car _e41494186_))
                                      (_tl41514193_ (##cdr _e41494186_)))
                                  (if (gx#stx-pair? _hd41504190_)
                                      (let ((_e41524196_
                                             (gx#syntax-e _hd41504190_)))
                                        (let ((_hd41534200_
                                               (##car _e41524196_))
                                              (_tl41544203_
                                               (##cdr _e41524196_)))
                                          (if (gx#stx-pair/null? _tl41544203_)
                                              (if (fx>= (gx#stx-length
                                                         _tl41544203_)
                                                        '0)
                                                  (let ((_g35098_
                                                         (gx#syntax-split-splice
                                                          _tl41544203_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35099_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35098_)
                         (##vector-length _g35098_)
                         1)))
                (if (not (##fx= _g35099_ 2))
                    (error "Context expects 2 values" _g35099_)))
              (let ((_target41554206_ (##vector-ref _g35098_ 0))
                    (_tl41574209_ (##vector-ref _g35098_ 1)))
                (if (gx#stx-null? _tl41574209_)
                    (letrec ((_loop41584212_
                              (lambda (_hd41564216_ _body41624219_)
                                (if (gx#stx-pair? _hd41564216_)
                                    (let ((_e41594222_
                                           (gx#syntax-e _hd41564216_)))
                                      (let ((_lp-hd41604226_
                                             (##car _e41594222_))
                                            (_lp-tl41614229_
                                             (##cdr _e41594222_)))
                                        (_loop41584212_
                                         _lp-tl41614229_
                                         (cons _lp-hd41604226_
                                               _body41624219_))))
                                    (let ((_body41634232_
                                           (reverse _body41624219_)))
                                      ((lambda (_L4236_
                                                _L4238_
                                                _L4239_
                                                _L4240_)
                                         (cons (gx#datum->syntax '#f 'if)
                                               (cons _L4239_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (begin
                           '#!void
                           (foldr (lambda (_g42614264_ _g42624267_)
                                    (cons _g42614264_ _g42624267_))
                                  '()
                                  _L4238_)))
                   (cons (cons _L4240_ _L4236_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _tl41514193_
                                       _body41634232_
                                       _hd41534200_
                                       _hd41474180_))))))
                      (_loop41584212_ _target41554206_ '()))
                    (_g40784169_ _g40794173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40784169_ _g40794173_))
                                              (_g40784169_ _g40794173_))))
                                      (_g40784169_ _g40794173_))))
                              (_g40784169_ _g40794173_))))
                      (_g40784169_ _g40794173_))))
               (_g40764326_
                (lambda (_g40794274_)
                  (if (gx#stx-pair? _g40794274_)
                      (let ((_e41334277_ (gx#syntax-e _g40794274_)))
                        (let ((_hd41344281_ (##car _e41334277_))
                              (_tl41354284_ (##cdr _e41334277_)))
                          (if (gx#stx-pair? _tl41354284_)
                              (let ((_e41364287_ (gx#syntax-e _tl41354284_)))
                                (let ((_hd41374291_ (##car _e41364287_))
                                      (_tl41384294_ (##cdr _e41364287_)))
                                  (if (gx#stx-pair? _hd41374291_)
                                      (let ((_e41394297_
                                             (gx#syntax-e _hd41374291_)))
                                        (let ((_hd41404301_
                                               (##car _e41394297_))
                                              (_tl41414304_
                                               (##cdr _e41394297_)))
                                          (if (gx#stx-null? _tl41414304_)
                                              ((lambda (_L4307_
                                                        _L4309_
                                                        _L4310_)
                                                 (cons _L4310_
                                                       (cons (cons _L4309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '=>)
                                 (cons (gx#datum->syntax '#f 'values) '())))
                     _L4307_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _tl41384294_
                                               _hd41404301_
                                               _hd41344281_)
                                              (_g40774270_ _g40794274_))))
                                      (_g40774270_ _g40794274_))))
                              (_g40774270_ _g40794274_))))
                      (_g40774270_ _g40794274_))))
               (_g40754408_
                (lambda (_g40794330_)
                  (if (gx#stx-pair? _g40794330_)
                      (let ((_e41154333_ (gx#syntax-e _g40794330_)))
                        (let ((_hd41164337_ (##car _e41154333_))
                              (_tl41174340_ (##cdr _e41154333_)))
                          (if (gx#stx-pair? _tl41174340_)
                              (let ((_e41184343_ (gx#syntax-e _tl41174340_)))
                                (let ((_hd41194347_ (##car _e41184343_))
                                      (_tl41204350_ (##cdr _e41184343_)))
                                  (if (gx#stx-pair? _hd41194347_)
                                      (let ((_e41214353_
                                             (gx#syntax-e _hd41194347_)))
                                        (let ((_hd41224357_
                                               (##car _e41214353_))
                                              (_tl41234360_
                                               (##cdr _e41214353_)))
                                          (if (gx#stx-pair? _tl41234360_)
                                              (let ((_e41244363_
                                                     (gx#syntax-e
                                                      _tl41234360_)))
                                                (let ((_hd41254367_
                                                       (##car _e41244363_))
                                                      (_tl41264370_
                                                       (##cdr _e41244363_)))
                                                  (if (gx#identifier?
                                                       _hd41254367_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core$<sugar>$<sugar:1>[1]#_g35100_|
                                                           _hd41254367_)
                                                          (if (gx#stx-pair?
                                                               _tl41264370_)
                                                              (let ((_e41274373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl41264370_)))
                        (let ((_hd41284377_ (##car _e41274373_))
                              (_tl41294380_ (##cdr _e41274373_)))
                          (if (gx#stx-null? _tl41294380_)
                              ((lambda (_L4383_ _L4385_ _L4386_ _L4387_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L4386_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (cons (cons _L4385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (gx#datum->syntax '#f '$e) '()))
                             (cons (cons _L4387_ _L4383_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _tl41204350_
                               _hd41284377_
                               _hd41224357_
                               _hd41164337_)
                              (_g40764326_ _g40794330_))))
                      (_g40764326_ _g40794330_))
                  (_g40764326_ _g40794330_))
              (_g40764326_ _g40794330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g40764326_ _g40794330_))))
                                      (_g40764326_ _g40794330_))))
                              (_g40764326_ _g40794330_))))
                      (_g40764326_ _g40794330_))))
               (_g40744449_
                (lambda (_g40794412_)
                  (if (gx#stx-pair? _g40794412_)
                      (let ((_e41024415_ (gx#syntax-e _g40794412_)))
                        (let ((_hd41034419_ (##car _e41024415_))
                              (_tl41044422_ (##cdr _e41024415_)))
                          (if (gx#stx-pair? _tl41044422_)
                              (let ((_e41054425_ (gx#syntax-e _tl41044422_)))
                                (let ((_hd41064429_ (##car _e41054425_))
                                      (_tl41074432_ (##cdr _e41054425_)))
                                  (if (gx#stx-pair? _hd41064429_)
                                      (let ((_e41084435_
                                             (gx#syntax-e _hd41064429_)))
                                        (let ((_hd41094439_
                                               (##car _e41084435_))
                                              (_tl41104442_
                                               (##cdr _e41084435_)))
                                          (if (gx#identifier? _hd41094439_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g35101_|
                                                   _hd41094439_)
                                                  ((lambda ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-error)
                                                           (cons '"Bad syntax; misplaced else"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40754408_ _g40794412_))
                                              (_g40754408_ _g40794412_))))
                                      (_g40754408_ _g40794412_))))
                              (_g40754408_ _g40794412_))))
                      (_g40754408_ _g40794412_))))
               (_g40734544_
                (lambda (_g40794453_)
                  (if (gx#stx-pair? _g40794453_)
                      (let ((_e40844456_ (gx#syntax-e _g40794453_)))
                        (let ((_hd40854460_ (##car _e40844456_))
                              (_tl40864463_ (##cdr _e40844456_)))
                          (if (gx#stx-pair? _tl40864463_)
                              (let ((_e40874466_ (gx#syntax-e _tl40864463_)))
                                (let ((_hd40884470_ (##car _e40874466_))
                                      (_tl40894473_ (##cdr _e40874466_)))
                                  (if (gx#stx-pair? _hd40884470_)
                                      (let ((_e40904476_
                                             (gx#syntax-e _hd40884470_)))
                                        (let ((_hd40914480_
                                               (##car _e40904476_))
                                              (_tl40924483_
                                               (##cdr _e40904476_)))
                                          (if (gx#identifier? _hd40914480_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g35102_|
                                                   _hd40914480_)
                                                  (if (gx#stx-pair/null?
                                                       _tl40924483_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl40924483_)
                        '0)
                  (let ((_g35103_ (gx#syntax-split-splice _tl40924483_ '0)))
                    (begin
                      (let ((_g35104_
                             (if (##values? _g35103_)
                                 (##vector-length _g35103_)
                                 1)))
                        (if (not (##fx= _g35104_ 2))
                            (error "Context expects 2 values" _g35104_)))
                      (let ((_target40934486_ (##vector-ref _g35103_ 0))
                            (_tl40954489_ (##vector-ref _g35103_ 1)))
                        (if (gx#stx-null? _tl40954489_)
                            (letrec ((_loop40964492_
                                      (lambda (_hd40944496_ _body41004499_)
                                        (if (gx#stx-pair? _hd40944496_)
                                            (let ((_e40974502_
                                                   (gx#syntax-e _hd40944496_)))
                                              (let ((_lp-hd40984506_
                                                     (##car _e40974502_))
                                                    (_lp-tl40994509_
                                                     (##cdr _e40974502_)))
                                                (_loop40964492_
                                                 _lp-tl40994509_
                                                 (cons _lp-hd40984506_
                                                       _body41004499_))))
                                            (let ((_body41014512_
                                                   (reverse _body41004499_)))
                                              (if (gx#stx-null? _tl40894473_)
                                                  ((lambda (_L4516_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%#expression)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin)
                               (begin
                                 '#!void
                                 (foldr (lambda (_g45354538_ _g45364541_)
                                          (cons _g45354538_ _g45364541_))
                                        '()
                                        _L4516_)))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body41014512_)
                                                  (_g40744449_
                                                   _g40794453_)))))))
                              (_loop40964492_ _target40934486_ '()))
                            (_g40744449_ _g40794453_)))))
                  (_g40744449_ _g40794453_))
              (_g40744449_ _g40794453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40744449_ _g40794453_))
                                              (_g40744449_ _g40794453_))))
                                      (_g40744449_ _g40794453_))))
                              (_g40744449_ _g40794453_))))
                      (_g40744449_ _g40794453_))))
               (_g40724565_
                (lambda (_g40794548_)
                  (if (gx#stx-pair? _g40794548_)
                      (let ((_e40804551_ (gx#syntax-e _g40794548_)))
                        (let ((_hd40814555_ (##car _e40804551_))
                              (_tl40824558_ (##cdr _e40804551_)))
                          (if (gx#stx-null? _tl40824558_)
                              ((lambda () '#!void))
                              (_g40734544_ _g40794548_))))
                      (_g40734544_ _g40794548_)))))
          (_g40724565_ _$stx4069_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4571_)
        (let* ((_g45754599_
                (lambda (_g45764595_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45764595_)))
               (_g45744684_
                (lambda (_g45764603_)
                  (if (gx#stx-pair? _g45764603_)
                      (let ((_e45794606_ (gx#syntax-e _g45764603_)))
                        (let ((_hd45804610_ (##car _e45794606_))
                              (_tl45814613_ (##cdr _e45794606_)))
                          (if (gx#stx-pair? _tl45814613_)
                              (let ((_e45824616_ (gx#syntax-e _tl45814613_)))
                                (let ((_hd45834620_ (##car _e45824616_))
                                      (_tl45844623_ (##cdr _e45824616_)))
                                  (if (gx#stx-pair/null? _tl45844623_)
                                      (if (fx>= (gx#stx-length _tl45844623_)
                                                '0)
                                          (let ((_g35105_
                                                 (gx#syntax-split-splice
                                                  _tl45844623_
                                                  '0)))
                                            (begin
                                              (let ((_g35106_
                                                     (if (##values? _g35105_)
                                                         (##vector-length
                                                          _g35105_)
                                                         1)))
                                                (if (not (##fx= _g35106_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35106_)))
                                              (let ((_target45854626_
                                                     (##vector-ref _g35105_ 0))
                                                    (_tl45874629_
                                                     (##vector-ref
                                                      _g35105_
                                                      1)))
                                                (if (gx#stx-null? _tl45874629_)
                                                    (letrec ((_loop45884632_
                                                              (lambda (_hd45864636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr45924639_)
                        (if (gx#stx-pair? _hd45864636_)
                            (let ((_e45894642_ (gx#syntax-e _hd45864636_)))
                              (let ((_lp-hd45904646_ (##car _e45894642_))
                                    (_lp-tl45914649_ (##cdr _e45894642_)))
                                (_loop45884632_
                                 _lp-tl45914649_
                                 (cons _lp-hd45904646_ _expr45924639_))))
                            (let ((_expr45934652_ (reverse _expr45924639_)))
                              ((lambda (_L4656_ _L4658_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4658_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g46754678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g46764681_)
                            (cons _g46754678_ _g46764681_))
                          '()
                          _L4656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons '#!void '())))))
                               _expr45934652_
                               _hd45834620_))))))
              (_loop45884632_ _target45854626_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g45754599_
                                                     _g45764603_)))))
                                          (_g45754599_ _g45764603_))
                                      (_g45754599_ _g45764603_))))
                              (_g45754599_ _g45764603_))))
                      (_g45754599_ _g45764603_)))))
          (_g45744684_ _$stx4571_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4689_)
        (let* ((_g46934717_
                (lambda (_g46944713_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46944713_)))
               (_g46924802_
                (lambda (_g46944721_)
                  (if (gx#stx-pair? _g46944721_)
                      (let ((_e46974724_ (gx#syntax-e _g46944721_)))
                        (let ((_hd46984728_ (##car _e46974724_))
                              (_tl46994731_ (##cdr _e46974724_)))
                          (if (gx#stx-pair? _tl46994731_)
                              (let ((_e47004734_ (gx#syntax-e _tl46994731_)))
                                (let ((_hd47014738_ (##car _e47004734_))
                                      (_tl47024741_ (##cdr _e47004734_)))
                                  (if (gx#stx-pair/null? _tl47024741_)
                                      (if (fx>= (gx#stx-length _tl47024741_)
                                                '0)
                                          (let ((_g35107_
                                                 (gx#syntax-split-splice
                                                  _tl47024741_
                                                  '0)))
                                            (begin
                                              (let ((_g35108_
                                                     (if (##values? _g35107_)
                                                         (##vector-length
                                                          _g35107_)
                                                         1)))
                                                (if (not (##fx= _g35108_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35108_)))
                                              (let ((_target47034744_
                                                     (##vector-ref _g35107_ 0))
                                                    (_tl47054747_
                                                     (##vector-ref
                                                      _g35107_
                                                      1)))
                                                (if (gx#stx-null? _tl47054747_)
                                                    (letrec ((_loop47064750_
                                                              (lambda (_hd47044754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr47104757_)
                        (if (gx#stx-pair? _hd47044754_)
                            (let ((_e47074760_ (gx#syntax-e _hd47044754_)))
                              (let ((_lp-hd47084764_ (##car _e47074760_))
                                    (_lp-tl47094767_ (##cdr _e47074760_)))
                                (_loop47064750_
                                 _lp-tl47094767_
                                 (cons _lp-hd47084764_ _expr47104757_))))
                            (let ((_expr47114770_ (reverse _expr47104757_)))
                              ((lambda (_L4774_ _L4776_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4776_
                                             (cons '#!void
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g47934796_ _g47944799_)
                                  (cons _g47934796_ _g47944799_))
                                '()
                                _L4774_)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _expr47114770_
                               _hd47014738_))))))
              (_loop47064750_ _target47034744_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46934717_
                                                     _g46944721_)))))
                                          (_g46934717_ _g46944721_))
                                      (_g46934717_ _g46944721_))))
                              (_g46934717_ _g46944721_))))
                      (_g46934717_ _g46944721_)))))
          (_g46924802_ _$stx4689_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4807_)
        (let* ((_g48104834_
                (lambda (_g48114830_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g48114830_)))
               (_g48094919_
                (lambda (_g48114838_)
                  (if (gx#stx-pair? _g48114838_)
                      (let ((_e48144841_ (gx#syntax-e _g48114838_)))
                        (let ((_hd48154845_ (##car _e48144841_))
                              (_tl48164848_ (##cdr _e48144841_)))
                          (if (gx#stx-pair? _tl48164848_)
                              (let ((_e48174851_ (gx#syntax-e _tl48164848_)))
                                (let ((_hd48184855_ (##car _e48174851_))
                                      (_tl48194858_ (##cdr _e48174851_)))
                                  (if (gx#stx-pair/null? _tl48194858_)
                                      (if (fx>= (gx#stx-length _tl48194858_)
                                                '0)
                                          (let ((_g35109_
                                                 (gx#syntax-split-splice
                                                  _tl48194858_
                                                  '0)))
                                            (begin
                                              (let ((_g35110_
                                                     (if (##values? _g35109_)
                                                         (##vector-length
                                                          _g35109_)
                                                         1)))
                                                (if (not (##fx= _g35110_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35110_)))
                                              (let ((_target48204861_
                                                     (##vector-ref _g35109_ 0))
                                                    (_tl48224864_
                                                     (##vector-ref
                                                      _g35109_
                                                      1)))
                                                (if (gx#stx-null? _tl48224864_)
                                                    (letrec ((_loop48234867_
                                                              (lambda (_hd48214871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _detail48274874_)
                        (if (gx#stx-pair? _hd48214871_)
                            (let ((_e48244877_ (gx#syntax-e _hd48214871_)))
                              (let ((_lp-hd48254881_ (##car _e48244877_))
                                    (_lp-tl48264884_ (##cdr _e48244877_)))
                                (_loop48234867_
                                 _lp-tl48264884_
                                 (cons _lp-hd48254881_ _detail48274874_))))
                            (let ((_detail48284887_
                                   (reverse _detail48274874_)))
                              ((lambda (_L4891_ _L4893_)
                                 (if (gx#stx-string? _L4893_)
                                     (apply gx#raise-syntax-error
                                            '#f
                                            (gx#stx-e _L4893_)
                                            _stx4807_
                                            (gx#syntax->list
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g49104913_
                                                               _g49114916_)
                                                        (cons _g49104913_
                                                              _g49114916_))
                                                      '()
                                                      _L4891_))))
                                     (_g48104834_ _g48114838_)))
                               _detail48284887_
                               _hd48184855_))))))
              (_loop48234867_ _target48204861_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g48104834_
                                                     _g48114838_)))))
                                          (_g48104834_ _g48114838_))
                                      (_g48104834_ _g48114838_))))
                              (_g48104834_ _g48114838_))))
                      (_g48104834_ _g48114838_)))))
          (_g48094919_ _stx4807_))))))
