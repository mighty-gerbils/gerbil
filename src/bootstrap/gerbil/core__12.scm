(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setq-macro|
    (lambda _$args25725_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args25725_)))
  (define |gerbil/core::<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setf-macro|
    (lambda _$args25721_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args25721_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx25718_)
      (if (gx#identifier? _stx25718_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx25718_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx25715_)
      (if (gx#identifier? _stx25715_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx25715_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx25729_)
      (let ((_g2573525794_
             (lambda (_g2573625790_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2573625790_))))
        (let ((_g2573425849_
               (lambda (_g2573625798_)
                 (if (gx#stx-pair? _g2573625798_)
                     (let ((_e2578025801_ (gx#syntax-e _g2573625798_)))
                       (let ((_hd2578125805_ (##car _e2578025801_))
                             (_tl2578225808_ (##cdr _e2578025801_)))
                         (if (gx#stx-pair? _tl2578225808_)
                             (let ((_e2578325811_
                                    (gx#syntax-e _tl2578225808_)))
                               (let ((_hd2578425815_ (##car _e2578325811_))
                                     (_tl2578525818_ (##cdr _e2578325811_)))
                                 (if (gx#stx-pair? _tl2578525818_)
                                     (let ((_e2578625821_
                                            (gx#syntax-e _tl2578525818_)))
                                       (let ((_hd2578725825_
                                              (##car _e2578625821_))
                                             (_tl2578825828_
                                              (##cdr _e2578625821_)))
                                         (if (gx#stx-null? _tl2578825828_)
                                             ((lambda (_L25831_ _L25833_)
                                                (if (gx#identifier? _L25833_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L25833_
                                                                (cons _L25831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2573525794_
                                                     _g2573625798_)))
                                              _hd2578725825_
                                              _hd2578425815_)
                                             (_g2573525794_ _g2573625798_))))
                                     (_g2573525794_ _g2573625798_))))
                             (_g2573525794_ _g2573625798_))))
                     (_g2573525794_ _g2573625798_)))))
          (let ((_g2573325889_
                 (lambda (_g2573625853_)
                   (if (gx#stx-pair? _g2573625853_)
                       (let ((_e2577225856_ (gx#syntax-e _g2573625853_)))
                         (let ((_hd2577325860_ (##car _e2577225856_))
                               (_tl2577425863_ (##cdr _e2577225856_)))
                           (if (gx#stx-pair? _tl2577425863_)
                               (let ((_e2577525866_
                                      (gx#syntax-e _tl2577425863_)))
                                 (let ((_hd2577625870_ (##car _e2577525866_))
                                       (_tl2577725873_ (##cdr _e2577525866_)))
                                   ((lambda (_L25876_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L25876_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L25876_)
                                           _stx25729_)
                                          (_g2573425849_ _g2573625853_)))
                                    _hd2577625870_)))
                               (_g2573425849_ _g2573625853_))))
                       (_g2573425849_ _g2573625853_)))))
            (let ((_g2573226030_
                   (lambda (_g2573625893_)
                     (if (gx#stx-pair? _g2573625893_)
                         (let ((_e2575025896_ (gx#syntax-e _g2573625893_)))
                           (let ((_hd2575125900_ (##car _e2575025896_))
                                 (_tl2575225903_ (##cdr _e2575025896_)))
                             (if (gx#stx-pair? _tl2575225903_)
                                 (let ((_e2575325906_
                                        (gx#syntax-e _tl2575225903_)))
                                   (let ((_hd2575425910_ (##car _e2575325906_))
                                         (_tl2575525913_
                                          (##cdr _e2575325906_)))
                                     (if (gx#stx-pair? _hd2575425910_)
                                         (let ((_e2575625916_
                                                (gx#syntax-e _hd2575425910_)))
                                           (let ((_hd2575725920_
                                                  (##car _e2575625916_))
                                                 (_tl2575825923_
                                                  (##cdr _e2575625916_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2575825923_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2575825923_)
                                                           '0)
                                                     (let ((_g28187_
                                                            (gx#syntax-split-splice
                                                             _tl2575825923_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28188_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28187_)))
                   (if (not (fx= _g28188_ 2))
                       (error "Context expects 2 values" _g28188_)))
                 (let ((_target2575925926_ (values-ref _g28187_ 0))
                       (_tl2576125929_ (values-ref _g28187_ 1)))
                   (if (gx#stx-null? _tl2576125929_)
                       (letrec ((_loop2576225932_
                                 (lambda (_hd2576025936_ _arg2576625939_)
                                   (if (gx#stx-pair? _hd2576025936_)
                                       (let ((_e2576325942_
                                              (gx#syntax-e _hd2576025936_)))
                                         (let ((_lp-hd2576425946_
                                                (##car _e2576325942_))
                                               (_lp-tl2576525949_
                                                (##cdr _e2576325942_)))
                                           (_loop2576225932_
                                            _lp-tl2576525949_
                                            (cons _lp-hd2576425946_
                                                  _arg2576625939_))))
                                       (let ((_arg2576725952_
                                              (reverse _arg2576625939_)))
                                         (if (gx#stx-pair? _tl2575525913_)
                                             (let ((_e2576825956_
                                                    (gx#syntax-e
                                                     _tl2575525913_)))
                                               (let ((_hd2576925960_
                                                      (##car _e2576825956_))
                                                     (_tl2577025963_
                                                      (##cdr _e2576825956_)))
                                                 (if (gx#stx-null?
                                                      _tl2577025963_)
                                                     ((lambda (_L25966_
                                                               _L25968_
                                                               _L25969_)
                                                        (if (gx#identifier?
                                                             _L25969_)
                                                            (let ((_g2599125999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2599225995_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2599225995_))))
                      (let ((_g2599026026_
                             (lambda (_g2599226003_)
                               ((lambda (_L26006_)
                                  (let ()
                                    (cons _L26006_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2601726020_
                                                            _g2601826023_)
                                                     (cons _g2601726020_
                                                           _g2601826023_))
                                                   (cons _L25966_ '())
                                                   _L25968_)))))
                                _g2599226003_))))
                        (_g2599026026_
                         (gx#stx-identifier _L25969_ _L25969_ '"-set!"))))
                    (_g2573325889_ _g2573625893_)))
              _hd2576925960_
              _arg2576725952_
              _hd2575725920_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2573325889_
                                                      _g2573625893_))))
                                             (_g2573325889_
                                              _g2573625893_)))))))
                         (_loop2576225932_ _target2575925926_ '()))
                       (_g2573325889_ _g2573625893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2573325889_
                                                      _g2573625893_))
                                                 (_g2573325889_
                                                  _g2573625893_))))
                                         (_g2573325889_ _g2573625893_))))
                                 (_g2573325889_ _g2573625893_))))
                         (_g2573325889_ _g2573625893_)))))
              (let ((_g2573126082_
                     (lambda (_g2573626034_)
                       (if (gx#stx-pair? _g2573626034_)
                           (let ((_e2573826037_ (gx#syntax-e _g2573626034_)))
                             (let ((_hd2573926041_ (##car _e2573826037_))
                                   (_tl2574026044_ (##cdr _e2573826037_)))
                               (if (gx#stx-pair? _tl2574026044_)
                                   (let ((_e2574126047_
                                          (gx#syntax-e _tl2574026044_)))
                                     (let ((_hd2574226051_
                                            (##car _e2574126047_))
                                           (_tl2574326054_
                                            (##cdr _e2574126047_)))
                                       (if (gx#stx-pair? _hd2574226051_)
                                           (let ((_e2574426057_
                                                  (gx#syntax-e
                                                   _hd2574226051_)))
                                             (let ((_hd2574526061_
                                                    (##car _e2574426057_))
                                                   (_tl2574626064_
                                                    (##cdr _e2574426057_)))
                                               ((lambda (_L26067_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26067_)
                                                       _stx25729_)
                                                      (_g2573226030_
                                                       _g2573626034_)))
                                                _hd2574526061_)))
                                           (_g2573226030_ _g2573626034_))))
                                   (_g2573226030_ _g2573626034_))))
                           (_g2573226030_ _g2573626034_)))))
                (_g2573126082_ _stx25729_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26087_)
      (let ((_g2609026114_
             (lambda (_g2609126110_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2609126110_))))
        (let ((_g2608926292_
               (lambda (_g2609126118_)
                 (if (gx#stx-pair? _g2609126118_)
                     (let ((_e2609426121_ (gx#syntax-e _g2609126118_)))
                       (let ((_hd2609526125_ (##car _e2609426121_))
                             (_tl2609626128_ (##cdr _e2609426121_)))
                         (if (gx#stx-pair/null? _tl2609626128_)
                             (if (fx>= (gx#stx-length _tl2609626128_) '1)
                                 (let ((_g28189_
                                        (gx#syntax-split-splice
                                         _tl2609626128_
                                         '1)))
                                   (begin
                                     (let ((_g28190_ (values-count _g28189_)))
                                       (if (not (fx= _g28190_ 2))
                                           (error "Context expects 2 values"
                                                  _g28190_)))
                                     (let ((_target2609726131_
                                            (values-ref _g28189_ 0))
                                           (_tl2609926134_
                                            (values-ref _g28189_ 1)))
                                       (if (gx#stx-pair? _tl2609926134_)
                                           (let ((_e2610626137_
                                                  (gx#syntax-e
                                                   _tl2609926134_)))
                                             (let ((_hd2610726141_
                                                    (##car _e2610626137_))
                                                   (_tl2610826144_
                                                    (##cdr _e2610626137_)))
                                               (if (gx#stx-null?
                                                    _tl2610826144_)
                                                   (letrec ((_loop2610026147_
                                                             (lambda (_hd2609826151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2610426154_)
                       (if (gx#stx-pair? _hd2609826151_)
                           (let ((_e2610126157_ (gx#syntax-e _hd2609826151_)))
                             (let ((_lp-hd2610226161_ (##car _e2610126157_))
                                   (_lp-tl2610326164_ (##cdr _e2610126157_)))
                               (_loop2610026147_
                                _lp-tl2610326164_
                                (cons _lp-hd2610226161_ _tgt2610426154_))))
                           (let ((_tgt2610526167_ (reverse _tgt2610426154_)))
                             ((lambda (_L26171_ _L26173_)
                                (let ((_g2619126208_
                                       (lambda (_g2619226204_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2619226204_))))
                                  (let ((_g2619026280_
                                         (lambda (_g2619226212_)
                                           (if (gx#stx-pair/null?
                                                _g2619226212_)
                                               (if (fx>= (gx#stx-length
                                                          _g2619226212_)
                                                         '0)
                                                   (let ((_g28191_
                                                          (gx#syntax-split-splice
                                                           _g2619226212_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28192_
                                                              (values-count
                                                               _g28191_)))
                                                         (if (not (fx= _g28192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28192_)))
               (let ((_target2619426215_ (values-ref _g28191_ 0))
                     (_tl2619626218_ (values-ref _g28191_ 1)))
                 (if (gx#stx-null? _tl2619626218_)
                     (letrec ((_loop2619726221_
                               (lambda (_hd2619526225_ _$e2620126228_)
                                 (if (gx#stx-pair? _hd2619526225_)
                                     (let ((_e2619826231_
                                            (gx#syntax-e _hd2619526225_)))
                                       (let ((_lp-hd2619926235_
                                              (##car _e2619826231_))
                                             (_lp-tl2620026238_
                                              (##cdr _e2619826231_)))
                                         (_loop2619726221_
                                          _lp-tl2620026238_
                                          (cons _lp-hd2619926235_
                                                _$e2620126228_))))
                                     (let ((_$e2620226241_
                                            (reverse _$e2620126228_)))
                                       ((lambda (_L26245_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2626026266_ _g2626126269_)
                                       (cons _g2626026266_ _g2626126269_))
                                     '()
                                     _L26245_))
                            (cons _L26171_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26245_ _L26173_)
                  (foldr (lambda (_g2626226272_ _g2626326275_ _g2626426277_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2626326275_
                                             (cons _g2626226272_ '())))
                                 _g2626426277_))
                         '()
                         _L26245_
                         _L26173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2620226241_))))))
                       (_loop2619726221_ _target2619426215_ '()))
                     (_g2619126208_ _g2619226212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2619126208_
                                                    _g2619226212_))
                                               (_g2619126208_
                                                _g2619226212_)))))
                                    (_g2619026280_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2628326286_
                                                        _g2628426289_)
                                                 (cons _g2628326286_
                                                       _g2628426289_))
                                               '()
                                               _L26173_)))))))
                              _hd2610726141_
                              _tgt2610526167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2610026147_
                                                      _target2609726131_
                                                      '()))
                                                   (_g2609026114_
                                                    _g2609126118_))))
                                           (_g2609026114_ _g2609126118_)))))
                                 (_g2609026114_ _g2609126118_))
                             (_g2609026114_ _g2609126118_))))
                     (_g2609026114_ _g2609126118_)))))
          (_g2608926292_ _stx26087_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26298_)
      (let ((_g2630226360_
             (lambda (_g2630326356_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2630326356_))))
        (let ((_g2630126637_
               (lambda (_g2630326364_)
                 (if (gx#stx-pair? _g2630326364_)
                     (let ((_e2632326367_ (gx#syntax-e _g2630326364_)))
                       (let ((_hd2632426371_ (##car _e2632326367_))
                             (_tl2632526374_ (##cdr _e2632326367_)))
                         (if (gx#stx-pair? _tl2632526374_)
                             (let ((_e2632626377_
                                    (gx#syntax-e _tl2632526374_)))
                               (let ((_hd2632726381_ (##car _e2632626377_))
                                     (_tl2632826384_ (##cdr _e2632626377_)))
                                 (if (gx#stx-pair/null? _hd2632726381_)
                                     (if (fx>= (gx#stx-length _hd2632726381_)
                                               '0)
                                         (let ((_g28193_
                                                (gx#syntax-split-splice
                                                 _hd2632726381_
                                                 '0)))
                                           (begin
                                             (let ((_g28194_
                                                    (values-count _g28193_)))
                                               (if (not (fx= _g28194_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28194_)))
                                             (let ((_target2632926387_
                                                    (values-ref _g28193_ 0))
                                                   (_tl2633126390_
                                                    (values-ref _g28193_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2633126390_)
                                                   (letrec ((_loop2633226393_
                                                             (lambda (_hd2633026397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2633626400_
                              _param2633726402_)
                       (if (gx#stx-pair? _hd2633026397_)
                           (let ((_e2633326405_ (gx#syntax-e _hd2633026397_)))
                             (let ((_lp-hd2633426409_ (##car _e2633326405_))
                                   (_lp-tl2633526412_ (##cdr _e2633326405_)))
                               (if (gx#stx-pair? _lp-hd2633426409_)
                                   (let ((_e2634026415_
                                          (gx#syntax-e _lp-hd2633426409_)))
                                     (let ((_hd2634126419_
                                            (##car _e2634026415_))
                                           (_tl2634226422_
                                            (##cdr _e2634026415_)))
                                       (if (gx#stx-pair? _tl2634226422_)
                                           (let ((_e2634326425_
                                                  (gx#syntax-e
                                                   _tl2634226422_)))
                                             (let ((_hd2634426429_
                                                    (##car _e2634326425_))
                                                   (_tl2634526432_
                                                    (##cdr _e2634326425_)))
                                               (if (gx#stx-null?
                                                    _tl2634526432_)
                                                   (_loop2633226393_
                                                    _lp-tl2633526412_
                                                    (cons _hd2634426429_
                                                          _expr2633626400_)
                                                    (cons _hd2634126419_
                                                          _param2633726402_))
                                                   (_g2630226360_
                                                    _g2630326364_))))
                                           (_g2630226360_ _g2630326364_))))
                                   (_g2630226360_ _g2630326364_))))
                           (let ((_expr2633826435_ (reverse _expr2633626400_))
                                 (_param2633926438_
                                  (reverse _param2633726402_)))
                             (if (gx#stx-pair/null? _tl2632826384_)
                                 (if (fx>= (gx#stx-length _tl2632826384_) '0)
                                     (let ((_g28195_
                                            (gx#syntax-split-splice
                                             _tl2632826384_
                                             '0)))
                                       (begin
                                         (let ((_g28196_
                                                (values-count _g28195_)))
                                           (if (not (fx= _g28196_ 2))
                                               (error "Context expects 2 values"
                                                      _g28196_)))
                                         (let ((_target2634626441_
                                                (values-ref _g28195_ 0))
                                               (_tl2634826444_
                                                (values-ref _g28195_ 1)))
                                           (if (gx#stx-null? _tl2634826444_)
                                               (letrec ((_loop2634926447_
                                                         (lambda (_hd2634726451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2635326454_)
                   (if (gx#stx-pair? _hd2634726451_)
                       (let ((_e2635026457_ (gx#syntax-e _hd2634726451_)))
                         (let ((_lp-hd2635126461_ (##car _e2635026457_))
                               (_lp-tl2635226464_ (##cdr _e2635026457_)))
                           (_loop2634926447_
                            _lp-tl2635226464_
                            (cons _lp-hd2635126461_ _body2635326454_))))
                       (let ((_body2635426467_ (reverse _body2635326454_)))
                         ((lambda (_L26471_ _L26473_ _L26474_)
                            (let ((_g2649726505_
                                   (lambda (_g2649826501_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2649826501_))))
                              (let ((_g2649626625_
                                     (lambda (_g2649826509_)
                                       ((lambda (_L26512_)
                                          (let ()
                                            (let ((_g2652426541_
                                                   (lambda (_g2652526537_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2652526537_))))
                                              (let ((_g2652326605_
                                                     (lambda (_g2652526545_)
                                                       (if (gx#stx-pair/null?
                                                            _g2652526545_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2652526545_)
                             '0)
                       (let ((_g28197_
                              (gx#syntax-split-splice _g2652526545_ '0)))
                         (begin
                           (let ((_g28198_ (values-count _g28197_)))
                             (if (not (fx= _g28198_ 2))
                                 (error "Context expects 2 values" _g28198_)))
                           (let ((_target2652726548_ (values-ref _g28197_ 0))
                                 (_tl2652926551_ (values-ref _g28197_ 1)))
                             (if (gx#stx-null? _tl2652926551_)
                                 (letrec ((_loop2653026554_
                                           (lambda (_hd2652826558_
                                                    _arg2653426561_)
                                             (if (gx#stx-pair? _hd2652826558_)
                                                 (let ((_e2653126564_
                                                        (gx#syntax-e
                                                         _hd2652826558_)))
                                                   (let ((_lp-hd2653226568_
                                                          (##car _e2653126564_))
                                                         (_lp-tl2653326571_
                                                          (##cdr _e2653126564_)))
                                                     (_loop2653026554_
                                                      _lp-tl2653326571_
                                                      (cons _lp-hd2653226568_
                                                            _arg2653426561_))))
                                                 (let ((_arg2653526574_
                                                        (reverse _arg2653426561_)))
                                                   ((lambda (_L26578_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26512_
                              (begin
                                '#!void
                                (foldr (lambda (_g2659626599_ _g2659726602_)
                                         (cons _g2659626599_ _g2659726602_))
                                       '()
                                       _L26578_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2653526574_))))))
                                   (_loop2653026554_ _target2652726548_ '()))
                                 (_g2652426541_ _g2652526545_)))))
                       (_g2652426541_ _g2652526545_))
                   (_g2652426541_ _g2652526545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2652326605_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2660826611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2660926614_)
                            (cons _g2660826611_ _g2660926614_))
                          '()
                          _L26474_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2661626619_ _g2661726622_)
                            (cons _g2661626619_ _g2661726622_))
                          '()
                          _L26473_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2649826509_))))
                                (_g2649626625_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2662826631_
                                                                _g2662926634_)
                                                         (cons _g2662826631_
                                                               _g2662926634_))
                                                       '()
                                                       _L26471_))))
                                  (gx#stx-source _stx26298_))))))
                          _body2635426467_
                          _expr2633826435_
                          _param2633926438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2634926447_
                                                  _target2634626441_
                                                  '()))
                                               (_g2630226360_
                                                _g2630326364_)))))
                                     (_g2630226360_ _g2630326364_))
                                 (_g2630226360_ _g2630326364_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2633226393_
                                                      _target2632926387_
                                                      '()
                                                      '()))
                                                   (_g2630226360_
                                                    _g2630326364_)))))
                                         (_g2630226360_ _g2630326364_))
                                     (_g2630226360_ _g2630326364_))))
                             (_g2630226360_ _g2630326364_))))
                     (_g2630226360_ _g2630326364_)))))
          (let ((_g2630026719_
                 (lambda (_g2630326641_)
                   (if (gx#stx-pair? _g2630326641_)
                       (let ((_e2630526644_ (gx#syntax-e _g2630326641_)))
                         (let ((_hd2630626648_ (##car _e2630526644_))
                               (_tl2630726651_ (##cdr _e2630526644_)))
                           (if (gx#stx-pair? _tl2630726651_)
                               (let ((_e2630826654_
                                      (gx#syntax-e _tl2630726651_)))
                                 (let ((_hd2630926658_ (##car _e2630826654_))
                                       (_tl2631026661_ (##cdr _e2630826654_)))
                                   (if (gx#stx-null? _hd2630926658_)
                                       (if (gx#stx-pair/null? _tl2631026661_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2631026661_)
                                                     '0)
                                               (let ((_g28199_
                                                      (gx#syntax-split-splice
                                                       _tl2631026661_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28200_
                                                          (values-count
                                                           _g28199_)))
                                                     (if (not (fx= _g28200_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28200_)))
                                                   (let ((_target2631126664_
                                                          (values-ref
                                                           _g28199_
                                                           0))
                                                         (_tl2631326667_
                                                          (values-ref
                                                           _g28199_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2631326667_)
                                                         (letrec ((_loop2631426670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2631226674_ _body2631826677_)
                             (if (gx#stx-pair? _hd2631226674_)
                                 (let ((_e2631526680_
                                        (gx#syntax-e _hd2631226674_)))
                                   (let ((_lp-hd2631626684_
                                          (##car _e2631526680_))
                                         (_lp-tl2631726687_
                                          (##cdr _e2631526680_)))
                                     (_loop2631426670_
                                      _lp-tl2631726687_
                                      (cons _lp-hd2631626684_
                                            _body2631826677_))))
                                 (let ((_body2631926690_
                                        (reverse _body2631826677_)))
                                   ((lambda (_L26694_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2671026713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2671126716_)
                     (cons _g2671026713_ _g2671126716_))
                   '()
                   _L26694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2631926690_))))))
                   (_loop2631426670_ _target2631126664_ '()))
                 (_g2630126637_ _g2630326641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2630126637_ _g2630326641_))
                                           (_g2630126637_ _g2630326641_))
                                       (_g2630126637_ _g2630326641_))))
                               (_g2630126637_ _g2630326641_))))
                       (_g2630126637_ _g2630326641_)))))
            (_g2630026719_ _stx26298_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx26727_)
      (let ((_g2673126755_
             (lambda (_g2673226751_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2673226751_))))
        (let ((_g2673026840_
               (lambda (_g2673226759_)
                 (if (gx#stx-pair? _g2673226759_)
                     (let ((_e2673526762_ (gx#syntax-e _g2673226759_)))
                       (let ((_hd2673626766_ (##car _e2673526762_))
                             (_tl2673726769_ (##cdr _e2673526762_)))
                         (if (gx#stx-pair? _tl2673726769_)
                             (let ((_e2673826772_
                                    (gx#syntax-e _tl2673726769_)))
                               (let ((_hd2673926776_ (##car _e2673826772_))
                                     (_tl2674026779_ (##cdr _e2673826772_)))
                                 (if (gx#stx-pair/null? _tl2674026779_)
                                     (if (fx>= (gx#stx-length _tl2674026779_)
                                               '0)
                                         (let ((_g28201_
                                                (gx#syntax-split-splice
                                                 _tl2674026779_
                                                 '0)))
                                           (begin
                                             (let ((_g28202_
                                                    (values-count _g28201_)))
                                               (if (not (fx= _g28202_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28202_)))
                                             (let ((_target2674126782_
                                                    (values-ref _g28201_ 0))
                                                   (_tl2674326785_
                                                    (values-ref _g28201_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2674326785_)
                                                   (letrec ((_loop2674426788_
                                                             (lambda (_hd2674226792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2674826795_)
                       (if (gx#stx-pair? _hd2674226792_)
                           (let ((_e2674526798_ (gx#syntax-e _hd2674226792_)))
                             (let ((_lp-hd2674626802_ (##car _e2674526798_))
                                   (_lp-tl2674726805_ (##cdr _e2674526798_)))
                               (_loop2674426788_
                                _lp-tl2674726805_
                                (cons _lp-hd2674626802_ _body2674826795_))))
                           (let ((_body2674926808_ (reverse _body2674826795_)))
                             ((lambda (_L26812_ _L26814_)
                                (if (gx#identifier? _L26814_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26814_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2683126834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2683226837_)
                               (cons _g2683126834_ _g2683226837_))
                             '()
                             _L26812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2673126755_ _g2673226759_)))
                              _body2674926808_
                              _hd2673926776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2674426788_
                                                      _target2674126782_
                                                      '()))
                                                   (_g2673126755_
                                                    _g2673226759_)))))
                                         (_g2673126755_ _g2673226759_))
                                     (_g2673126755_ _g2673226759_))))
                             (_g2673126755_ _g2673226759_))))
                     (_g2673126755_ _g2673226759_)))))
          (_g2673026840_ _$stx26727_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx26845_)
      (let ((_g2684926873_
             (lambda (_g2685026869_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2685026869_))))
        (let ((_g2684826958_
               (lambda (_g2685026877_)
                 (if (gx#stx-pair? _g2685026877_)
                     (let ((_e2685326880_ (gx#syntax-e _g2685026877_)))
                       (let ((_hd2685426884_ (##car _e2685326880_))
                             (_tl2685526887_ (##cdr _e2685326880_)))
                         (if (gx#stx-pair? _tl2685526887_)
                             (let ((_e2685626890_
                                    (gx#syntax-e _tl2685526887_)))
                               (let ((_hd2685726894_ (##car _e2685626890_))
                                     (_tl2685826897_ (##cdr _e2685626890_)))
                                 (if (gx#stx-pair/null? _tl2685826897_)
                                     (if (fx>= (gx#stx-length _tl2685826897_)
                                               '0)
                                         (let ((_g28203_
                                                (gx#syntax-split-splice
                                                 _tl2685826897_
                                                 '0)))
                                           (begin
                                             (let ((_g28204_
                                                    (values-count _g28203_)))
                                               (if (not (fx= _g28204_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28204_)))
                                             (let ((_target2685926900_
                                                    (values-ref _g28203_ 0))
                                                   (_tl2686126903_
                                                    (values-ref _g28203_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2686126903_)
                                                   (letrec ((_loop2686226906_
                                                             (lambda (_hd2686026910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2686626913_)
                       (if (gx#stx-pair? _hd2686026910_)
                           (let ((_e2686326916_ (gx#syntax-e _hd2686026910_)))
                             (let ((_lp-hd2686426920_ (##car _e2686326916_))
                                   (_lp-tl2686526923_ (##cdr _e2686326916_)))
                               (_loop2686226906_
                                _lp-tl2686526923_
                                (cons _lp-hd2686426920_ _body2686626913_))))
                           (let ((_body2686726926_ (reverse _body2686626913_)))
                             ((lambda (_L26930_ _L26932_)
                                (if (gx#identifier? _L26932_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26932_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2694926952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2695026955_)
                               (cons _g2694926952_ _g2695026955_))
                             '()
                             _L26930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2684926873_ _g2685026877_)))
                              _body2686726926_
                              _hd2685726894_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2686226906_
                                                      _target2685926900_
                                                      '()))
                                                   (_g2684926873_
                                                    _g2685026877_)))))
                                         (_g2684926873_ _g2685026877_))
                                     (_g2684926873_ _g2685026877_))))
                             (_g2684926873_ _g2685026877_))))
                     (_g2684926873_ _g2685026877_)))))
          (_g2684826958_ _$stx26845_)))))
  (define |gerbil/core::<more-sugar>[:0:]#catch|
    (lambda (_$stx26963_)
      (let ((_g2696626973_
             (lambda (_g2696726969_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2696726969_))))
        (_g2696626973_ _$stx26963_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx26977_)
      (let ((_g2698126999_
             (lambda (_g2698226995_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2698226995_))))
        (let ((_g2698027054_
               (lambda (_g2698227003_)
                 (if (gx#stx-pair? _g2698227003_)
                     (let ((_e2698527006_ (gx#syntax-e _g2698227003_)))
                       (let ((_hd2698627010_ (##car _e2698527006_))
                             (_tl2698727013_ (##cdr _e2698527006_)))
                         (if (gx#stx-pair? _tl2698727013_)
                             (let ((_e2698827016_
                                    (gx#syntax-e _tl2698727013_)))
                               (let ((_hd2698927020_ (##car _e2698827016_))
                                     (_tl2699027023_ (##cdr _e2698827016_)))
                                 (if (gx#stx-pair? _tl2699027023_)
                                     (let ((_e2699127026_
                                            (gx#syntax-e _tl2699027023_)))
                                       (let ((_hd2699227030_
                                              (##car _e2699127026_))
                                             (_tl2699327033_
                                              (##cdr _e2699127026_)))
                                         (if (gx#stx-null? _tl2699327033_)
                                             ((lambda (_L27036_ _L27038_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27038_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27036_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2699227030_
                                              _hd2698927020_)
                                             (_g2698126999_ _g2698227003_))))
                                     (_g2698126999_ _g2698227003_))))
                             (_g2698126999_ _g2698227003_))))
                     (_g2698126999_ _g2698227003_)))))
          (_g2698027054_ _$stx26977_))))))
