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
    (lambda _$args25916_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args25916_)))
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
    (lambda _$args25912_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args25912_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx25909_)
      (if (gx#identifier? _stx25909_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx25909_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx25906_)
      (if (gx#identifier? _stx25906_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx25906_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx25920_)
      (let ((_g2592625985_
             (lambda (_g2592725981_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2592725981_))))
        (let ((_g2592526040_
               (lambda (_g2592725989_)
                 (if (gx#stx-pair? _g2592725989_)
                     (let ((_e2597125992_ (gx#syntax-e _g2592725989_)))
                       (let ((_hd2597225996_ (##car _e2597125992_))
                             (_tl2597325999_ (##cdr _e2597125992_)))
                         (if (gx#stx-pair? _tl2597325999_)
                             (let ((_e2597426002_
                                    (gx#syntax-e _tl2597325999_)))
                               (let ((_hd2597526006_ (##car _e2597426002_))
                                     (_tl2597626009_ (##cdr _e2597426002_)))
                                 (if (gx#stx-pair? _tl2597626009_)
                                     (let ((_e2597726012_
                                            (gx#syntax-e _tl2597626009_)))
                                       (let ((_hd2597826016_
                                              (##car _e2597726012_))
                                             (_tl2597926019_
                                              (##cdr _e2597726012_)))
                                         (if (gx#stx-null? _tl2597926019_)
                                             ((lambda (_L26022_ _L26024_)
                                                (if (gx#identifier? _L26024_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26024_
                                                                (cons _L26022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2592625985_
                                                     _g2592725989_)))
                                              _hd2597826016_
                                              _hd2597526006_)
                                             (_g2592625985_ _g2592725989_))))
                                     (_g2592625985_ _g2592725989_))))
                             (_g2592625985_ _g2592725989_))))
                     (_g2592625985_ _g2592725989_)))))
          (let ((_g2592426080_
                 (lambda (_g2592726044_)
                   (if (gx#stx-pair? _g2592726044_)
                       (let ((_e2596326047_ (gx#syntax-e _g2592726044_)))
                         (let ((_hd2596426051_ (##car _e2596326047_))
                               (_tl2596526054_ (##cdr _e2596326047_)))
                           (if (gx#stx-pair? _tl2596526054_)
                               (let ((_e2596626057_
                                      (gx#syntax-e _tl2596526054_)))
                                 (let ((_hd2596726061_ (##car _e2596626057_))
                                       (_tl2596826064_ (##cdr _e2596626057_)))
                                   ((lambda (_L26067_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26067_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26067_)
                                           _stx25920_)
                                          (_g2592526040_ _g2592726044_)))
                                    _hd2596726061_)))
                               (_g2592526040_ _g2592726044_))))
                       (_g2592526040_ _g2592726044_)))))
            (let ((_g2592326221_
                   (lambda (_g2592726084_)
                     (if (gx#stx-pair? _g2592726084_)
                         (let ((_e2594126087_ (gx#syntax-e _g2592726084_)))
                           (let ((_hd2594226091_ (##car _e2594126087_))
                                 (_tl2594326094_ (##cdr _e2594126087_)))
                             (if (gx#stx-pair? _tl2594326094_)
                                 (let ((_e2594426097_
                                        (gx#syntax-e _tl2594326094_)))
                                   (let ((_hd2594526101_ (##car _e2594426097_))
                                         (_tl2594626104_
                                          (##cdr _e2594426097_)))
                                     (if (gx#stx-pair? _hd2594526101_)
                                         (let ((_e2594726107_
                                                (gx#syntax-e _hd2594526101_)))
                                           (let ((_hd2594826111_
                                                  (##car _e2594726107_))
                                                 (_tl2594926114_
                                                  (##cdr _e2594726107_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2594926114_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2594926114_)
                                                           '0)
                                                     (let ((_g28641_
                                                            (gx#syntax-split-splice
                                                             _tl2594926114_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28642_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28641_)))
                   (if (not (fx= _g28642_ 2))
                       (error "Context expects 2 values" _g28642_)))
                 (let ((_target2595026117_ (values-ref _g28641_ 0))
                       (_tl2595226120_ (values-ref _g28641_ 1)))
                   (if (gx#stx-null? _tl2595226120_)
                       (letrec ((_loop2595326123_
                                 (lambda (_hd2595126127_ _arg2595726130_)
                                   (if (gx#stx-pair? _hd2595126127_)
                                       (let ((_e2595426133_
                                              (gx#syntax-e _hd2595126127_)))
                                         (let ((_lp-hd2595526137_
                                                (##car _e2595426133_))
                                               (_lp-tl2595626140_
                                                (##cdr _e2595426133_)))
                                           (_loop2595326123_
                                            _lp-tl2595626140_
                                            (cons _lp-hd2595526137_
                                                  _arg2595726130_))))
                                       (let ((_arg2595826143_
                                              (reverse _arg2595726130_)))
                                         (if (gx#stx-pair? _tl2594626104_)
                                             (let ((_e2595926147_
                                                    (gx#syntax-e
                                                     _tl2594626104_)))
                                               (let ((_hd2596026151_
                                                      (##car _e2595926147_))
                                                     (_tl2596126154_
                                                      (##cdr _e2595926147_)))
                                                 (if (gx#stx-null?
                                                      _tl2596126154_)
                                                     ((lambda (_L26157_
                                                               _L26159_
                                                               _L26160_)
                                                        (if (gx#identifier?
                                                             _L26160_)
                                                            (let ((_g2618226190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2618326186_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2618326186_))))
                      (let ((_g2618126217_
                             (lambda (_g2618326194_)
                               ((lambda (_L26197_)
                                  (let ()
                                    (cons _L26197_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2620826211_
                                                            _g2620926214_)
                                                     (cons _g2620826211_
                                                           _g2620926214_))
                                                   (cons _L26157_ '())
                                                   _L26159_)))))
                                _g2618326194_))))
                        (_g2618126217_
                         (gx#stx-identifier _L26160_ _L26160_ '"-set!"))))
                    (_g2592426080_ _g2592726084_)))
              _hd2596026151_
              _arg2595826143_
              _hd2594826111_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2592426080_
                                                      _g2592726084_))))
                                             (_g2592426080_
                                              _g2592726084_)))))))
                         (_loop2595326123_ _target2595026117_ '()))
                       (_g2592426080_ _g2592726084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2592426080_
                                                      _g2592726084_))
                                                 (_g2592426080_
                                                  _g2592726084_))))
                                         (_g2592426080_ _g2592726084_))))
                                 (_g2592426080_ _g2592726084_))))
                         (_g2592426080_ _g2592726084_)))))
              (let ((_g2592226273_
                     (lambda (_g2592726225_)
                       (if (gx#stx-pair? _g2592726225_)
                           (let ((_e2592926228_ (gx#syntax-e _g2592726225_)))
                             (let ((_hd2593026232_ (##car _e2592926228_))
                                   (_tl2593126235_ (##cdr _e2592926228_)))
                               (if (gx#stx-pair? _tl2593126235_)
                                   (let ((_e2593226238_
                                          (gx#syntax-e _tl2593126235_)))
                                     (let ((_hd2593326242_
                                            (##car _e2593226238_))
                                           (_tl2593426245_
                                            (##cdr _e2593226238_)))
                                       (if (gx#stx-pair? _hd2593326242_)
                                           (let ((_e2593526248_
                                                  (gx#syntax-e
                                                   _hd2593326242_)))
                                             (let ((_hd2593626252_
                                                    (##car _e2593526248_))
                                                   (_tl2593726255_
                                                    (##cdr _e2593526248_)))
                                               ((lambda (_L26258_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26258_)
                                                       _stx25920_)
                                                      (_g2592326221_
                                                       _g2592726225_)))
                                                _hd2593626252_)))
                                           (_g2592326221_ _g2592726225_))))
                                   (_g2592326221_ _g2592726225_))))
                           (_g2592326221_ _g2592726225_)))))
                (_g2592226273_ _stx25920_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26278_)
      (let ((_g2628126305_
             (lambda (_g2628226301_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2628226301_))))
        (let ((_g2628026483_
               (lambda (_g2628226309_)
                 (if (gx#stx-pair? _g2628226309_)
                     (let ((_e2628526312_ (gx#syntax-e _g2628226309_)))
                       (let ((_hd2628626316_ (##car _e2628526312_))
                             (_tl2628726319_ (##cdr _e2628526312_)))
                         (if (gx#stx-pair/null? _tl2628726319_)
                             (if (fx>= (gx#stx-length _tl2628726319_) '1)
                                 (let ((_g28643_
                                        (gx#syntax-split-splice
                                         _tl2628726319_
                                         '1)))
                                   (begin
                                     (let ((_g28644_ (values-count _g28643_)))
                                       (if (not (fx= _g28644_ 2))
                                           (error "Context expects 2 values"
                                                  _g28644_)))
                                     (let ((_target2628826322_
                                            (values-ref _g28643_ 0))
                                           (_tl2629026325_
                                            (values-ref _g28643_ 1)))
                                       (if (gx#stx-pair? _tl2629026325_)
                                           (let ((_e2629726328_
                                                  (gx#syntax-e
                                                   _tl2629026325_)))
                                             (let ((_hd2629826332_
                                                    (##car _e2629726328_))
                                                   (_tl2629926335_
                                                    (##cdr _e2629726328_)))
                                               (if (gx#stx-null?
                                                    _tl2629926335_)
                                                   (letrec ((_loop2629126338_
                                                             (lambda (_hd2628926342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2629526345_)
                       (if (gx#stx-pair? _hd2628926342_)
                           (let ((_e2629226348_ (gx#syntax-e _hd2628926342_)))
                             (let ((_lp-hd2629326352_ (##car _e2629226348_))
                                   (_lp-tl2629426355_ (##cdr _e2629226348_)))
                               (_loop2629126338_
                                _lp-tl2629426355_
                                (cons _lp-hd2629326352_ _tgt2629526345_))))
                           (let ((_tgt2629626358_ (reverse _tgt2629526345_)))
                             ((lambda (_L26362_ _L26364_)
                                (let ((_g2638226399_
                                       (lambda (_g2638326395_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2638326395_))))
                                  (let ((_g2638126471_
                                         (lambda (_g2638326403_)
                                           (if (gx#stx-pair/null?
                                                _g2638326403_)
                                               (if (fx>= (gx#stx-length
                                                          _g2638326403_)
                                                         '0)
                                                   (let ((_g28645_
                                                          (gx#syntax-split-splice
                                                           _g2638326403_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28646_
                                                              (values-count
                                                               _g28645_)))
                                                         (if (not (fx= _g28646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28646_)))
               (let ((_target2638526406_ (values-ref _g28645_ 0))
                     (_tl2638726409_ (values-ref _g28645_ 1)))
                 (if (gx#stx-null? _tl2638726409_)
                     (letrec ((_loop2638826412_
                               (lambda (_hd2638626416_ _$e2639226419_)
                                 (if (gx#stx-pair? _hd2638626416_)
                                     (let ((_e2638926422_
                                            (gx#syntax-e _hd2638626416_)))
                                       (let ((_lp-hd2639026426_
                                              (##car _e2638926422_))
                                             (_lp-tl2639126429_
                                              (##cdr _e2638926422_)))
                                         (_loop2638826412_
                                          _lp-tl2639126429_
                                          (cons _lp-hd2639026426_
                                                _$e2639226419_))))
                                     (let ((_$e2639326432_
                                            (reverse _$e2639226419_)))
                                       ((lambda (_L26436_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2645126457_ _g2645226460_)
                                       (cons _g2645126457_ _g2645226460_))
                                     '()
                                     _L26436_))
                            (cons _L26362_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26436_ _L26364_)
                  (foldr (lambda (_g2645326463_ _g2645426466_ _g2645526468_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2645426466_
                                             (cons _g2645326463_ '())))
                                 _g2645526468_))
                         '()
                         _L26436_
                         _L26364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2639326432_))))))
                       (_loop2638826412_ _target2638526406_ '()))
                     (_g2638226399_ _g2638326403_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2638226399_
                                                    _g2638326403_))
                                               (_g2638226399_
                                                _g2638326403_)))))
                                    (_g2638126471_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2647426477_
                                                        _g2647526480_)
                                                 (cons _g2647426477_
                                                       _g2647526480_))
                                               '()
                                               _L26364_)))))))
                              _hd2629826332_
                              _tgt2629626358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2629126338_
                                                      _target2628826322_
                                                      '()))
                                                   (_g2628126305_
                                                    _g2628226309_))))
                                           (_g2628126305_ _g2628226309_)))))
                                 (_g2628126305_ _g2628226309_))
                             (_g2628126305_ _g2628226309_))))
                     (_g2628126305_ _g2628226309_)))))
          (_g2628026483_ _stx26278_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26489_)
      (let ((_g2649326551_
             (lambda (_g2649426547_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2649426547_))))
        (let ((_g2649226828_
               (lambda (_g2649426555_)
                 (if (gx#stx-pair? _g2649426555_)
                     (let ((_e2651426558_ (gx#syntax-e _g2649426555_)))
                       (let ((_hd2651526562_ (##car _e2651426558_))
                             (_tl2651626565_ (##cdr _e2651426558_)))
                         (if (gx#stx-pair? _tl2651626565_)
                             (let ((_e2651726568_
                                    (gx#syntax-e _tl2651626565_)))
                               (let ((_hd2651826572_ (##car _e2651726568_))
                                     (_tl2651926575_ (##cdr _e2651726568_)))
                                 (if (gx#stx-pair/null? _hd2651826572_)
                                     (if (fx>= (gx#stx-length _hd2651826572_)
                                               '0)
                                         (let ((_g28647_
                                                (gx#syntax-split-splice
                                                 _hd2651826572_
                                                 '0)))
                                           (begin
                                             (let ((_g28648_
                                                    (values-count _g28647_)))
                                               (if (not (fx= _g28648_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28648_)))
                                             (let ((_target2652026578_
                                                    (values-ref _g28647_ 0))
                                                   (_tl2652226581_
                                                    (values-ref _g28647_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2652226581_)
                                                   (letrec ((_loop2652326584_
                                                             (lambda (_hd2652126588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2652726591_
                              _param2652826593_)
                       (if (gx#stx-pair? _hd2652126588_)
                           (let ((_e2652426596_ (gx#syntax-e _hd2652126588_)))
                             (let ((_lp-hd2652526600_ (##car _e2652426596_))
                                   (_lp-tl2652626603_ (##cdr _e2652426596_)))
                               (if (gx#stx-pair? _lp-hd2652526600_)
                                   (let ((_e2653126606_
                                          (gx#syntax-e _lp-hd2652526600_)))
                                     (let ((_hd2653226610_
                                            (##car _e2653126606_))
                                           (_tl2653326613_
                                            (##cdr _e2653126606_)))
                                       (if (gx#stx-pair? _tl2653326613_)
                                           (let ((_e2653426616_
                                                  (gx#syntax-e
                                                   _tl2653326613_)))
                                             (let ((_hd2653526620_
                                                    (##car _e2653426616_))
                                                   (_tl2653626623_
                                                    (##cdr _e2653426616_)))
                                               (if (gx#stx-null?
                                                    _tl2653626623_)
                                                   (_loop2652326584_
                                                    _lp-tl2652626603_
                                                    (cons _hd2653526620_
                                                          _expr2652726591_)
                                                    (cons _hd2653226610_
                                                          _param2652826593_))
                                                   (_g2649326551_
                                                    _g2649426555_))))
                                           (_g2649326551_ _g2649426555_))))
                                   (_g2649326551_ _g2649426555_))))
                           (let ((_expr2652926626_ (reverse _expr2652726591_))
                                 (_param2653026629_
                                  (reverse _param2652826593_)))
                             (if (gx#stx-pair/null? _tl2651926575_)
                                 (if (fx>= (gx#stx-length _tl2651926575_) '0)
                                     (let ((_g28649_
                                            (gx#syntax-split-splice
                                             _tl2651926575_
                                             '0)))
                                       (begin
                                         (let ((_g28650_
                                                (values-count _g28649_)))
                                           (if (not (fx= _g28650_ 2))
                                               (error "Context expects 2 values"
                                                      _g28650_)))
                                         (let ((_target2653726632_
                                                (values-ref _g28649_ 0))
                                               (_tl2653926635_
                                                (values-ref _g28649_ 1)))
                                           (if (gx#stx-null? _tl2653926635_)
                                               (letrec ((_loop2654026638_
                                                         (lambda (_hd2653826642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2654426645_)
                   (if (gx#stx-pair? _hd2653826642_)
                       (let ((_e2654126648_ (gx#syntax-e _hd2653826642_)))
                         (let ((_lp-hd2654226652_ (##car _e2654126648_))
                               (_lp-tl2654326655_ (##cdr _e2654126648_)))
                           (_loop2654026638_
                            _lp-tl2654326655_
                            (cons _lp-hd2654226652_ _body2654426645_))))
                       (let ((_body2654526658_ (reverse _body2654426645_)))
                         ((lambda (_L26662_ _L26664_ _L26665_)
                            (let ((_g2668826696_
                                   (lambda (_g2668926692_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2668926692_))))
                              (let ((_g2668726816_
                                     (lambda (_g2668926700_)
                                       ((lambda (_L26703_)
                                          (let ()
                                            (let ((_g2671526732_
                                                   (lambda (_g2671626728_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2671626728_))))
                                              (let ((_g2671426796_
                                                     (lambda (_g2671626736_)
                                                       (if (gx#stx-pair/null?
                                                            _g2671626736_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2671626736_)
                             '0)
                       (let ((_g28651_
                              (gx#syntax-split-splice _g2671626736_ '0)))
                         (begin
                           (let ((_g28652_ (values-count _g28651_)))
                             (if (not (fx= _g28652_ 2))
                                 (error "Context expects 2 values" _g28652_)))
                           (let ((_target2671826739_ (values-ref _g28651_ 0))
                                 (_tl2672026742_ (values-ref _g28651_ 1)))
                             (if (gx#stx-null? _tl2672026742_)
                                 (letrec ((_loop2672126745_
                                           (lambda (_hd2671926749_
                                                    _arg2672526752_)
                                             (if (gx#stx-pair? _hd2671926749_)
                                                 (let ((_e2672226755_
                                                        (gx#syntax-e
                                                         _hd2671926749_)))
                                                   (let ((_lp-hd2672326759_
                                                          (##car _e2672226755_))
                                                         (_lp-tl2672426762_
                                                          (##cdr _e2672226755_)))
                                                     (_loop2672126745_
                                                      _lp-tl2672426762_
                                                      (cons _lp-hd2672326759_
                                                            _arg2672526752_))))
                                                 (let ((_arg2672626765_
                                                        (reverse _arg2672526752_)))
                                                   ((lambda (_L26769_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26703_
                              (begin
                                '#!void
                                (foldr (lambda (_g2678726790_ _g2678826793_)
                                         (cons _g2678726790_ _g2678826793_))
                                       '()
                                       _L26769_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2672626765_))))))
                                   (_loop2672126745_ _target2671826739_ '()))
                                 (_g2671526732_ _g2671626736_)))))
                       (_g2671526732_ _g2671626736_))
                   (_g2671526732_ _g2671626736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2671426796_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2679926802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2680026805_)
                            (cons _g2679926802_ _g2680026805_))
                          '()
                          _L26665_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2680726810_ _g2680826813_)
                            (cons _g2680726810_ _g2680826813_))
                          '()
                          _L26664_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2668926700_))))
                                (_g2668726816_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2681926822_
                                                                _g2682026825_)
                                                         (cons _g2681926822_
                                                               _g2682026825_))
                                                       '()
                                                       _L26662_))))
                                  (gx#stx-source _stx26489_))))))
                          _body2654526658_
                          _expr2652926626_
                          _param2653026629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2654026638_
                                                  _target2653726632_
                                                  '()))
                                               (_g2649326551_
                                                _g2649426555_)))))
                                     (_g2649326551_ _g2649426555_))
                                 (_g2649326551_ _g2649426555_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2652326584_
                                                      _target2652026578_
                                                      '()
                                                      '()))
                                                   (_g2649326551_
                                                    _g2649426555_)))))
                                         (_g2649326551_ _g2649426555_))
                                     (_g2649326551_ _g2649426555_))))
                             (_g2649326551_ _g2649426555_))))
                     (_g2649326551_ _g2649426555_)))))
          (let ((_g2649126910_
                 (lambda (_g2649426832_)
                   (if (gx#stx-pair? _g2649426832_)
                       (let ((_e2649626835_ (gx#syntax-e _g2649426832_)))
                         (let ((_hd2649726839_ (##car _e2649626835_))
                               (_tl2649826842_ (##cdr _e2649626835_)))
                           (if (gx#stx-pair? _tl2649826842_)
                               (let ((_e2649926845_
                                      (gx#syntax-e _tl2649826842_)))
                                 (let ((_hd2650026849_ (##car _e2649926845_))
                                       (_tl2650126852_ (##cdr _e2649926845_)))
                                   (if (gx#stx-null? _hd2650026849_)
                                       (if (gx#stx-pair/null? _tl2650126852_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2650126852_)
                                                     '0)
                                               (let ((_g28653_
                                                      (gx#syntax-split-splice
                                                       _tl2650126852_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28654_
                                                          (values-count
                                                           _g28653_)))
                                                     (if (not (fx= _g28654_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28654_)))
                                                   (let ((_target2650226855_
                                                          (values-ref
                                                           _g28653_
                                                           0))
                                                         (_tl2650426858_
                                                          (values-ref
                                                           _g28653_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2650426858_)
                                                         (letrec ((_loop2650526861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2650326865_ _body2650926868_)
                             (if (gx#stx-pair? _hd2650326865_)
                                 (let ((_e2650626871_
                                        (gx#syntax-e _hd2650326865_)))
                                   (let ((_lp-hd2650726875_
                                          (##car _e2650626871_))
                                         (_lp-tl2650826878_
                                          (##cdr _e2650626871_)))
                                     (_loop2650526861_
                                      _lp-tl2650826878_
                                      (cons _lp-hd2650726875_
                                            _body2650926868_))))
                                 (let ((_body2651026881_
                                        (reverse _body2650926868_)))
                                   ((lambda (_L26885_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2690126904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2690226907_)
                     (cons _g2690126904_ _g2690226907_))
                   '()
                   _L26885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2651026881_))))))
                   (_loop2650526861_ _target2650226855_ '()))
                 (_g2649226828_ _g2649426832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2649226828_ _g2649426832_))
                                           (_g2649226828_ _g2649426832_))
                                       (_g2649226828_ _g2649426832_))))
                               (_g2649226828_ _g2649426832_))))
                       (_g2649226828_ _g2649426832_)))))
            (_g2649126910_ _stx26489_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx26918_)
      (let ((_g2692226946_
             (lambda (_g2692326942_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2692326942_))))
        (let ((_g2692127031_
               (lambda (_g2692326950_)
                 (if (gx#stx-pair? _g2692326950_)
                     (let ((_e2692626953_ (gx#syntax-e _g2692326950_)))
                       (let ((_hd2692726957_ (##car _e2692626953_))
                             (_tl2692826960_ (##cdr _e2692626953_)))
                         (if (gx#stx-pair? _tl2692826960_)
                             (let ((_e2692926963_
                                    (gx#syntax-e _tl2692826960_)))
                               (let ((_hd2693026967_ (##car _e2692926963_))
                                     (_tl2693126970_ (##cdr _e2692926963_)))
                                 (if (gx#stx-pair/null? _tl2693126970_)
                                     (if (fx>= (gx#stx-length _tl2693126970_)
                                               '0)
                                         (let ((_g28655_
                                                (gx#syntax-split-splice
                                                 _tl2693126970_
                                                 '0)))
                                           (begin
                                             (let ((_g28656_
                                                    (values-count _g28655_)))
                                               (if (not (fx= _g28656_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28656_)))
                                             (let ((_target2693226973_
                                                    (values-ref _g28655_ 0))
                                                   (_tl2693426976_
                                                    (values-ref _g28655_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2693426976_)
                                                   (letrec ((_loop2693526979_
                                                             (lambda (_hd2693326983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2693926986_)
                       (if (gx#stx-pair? _hd2693326983_)
                           (let ((_e2693626989_ (gx#syntax-e _hd2693326983_)))
                             (let ((_lp-hd2693726993_ (##car _e2693626989_))
                                   (_lp-tl2693826996_ (##cdr _e2693626989_)))
                               (_loop2693526979_
                                _lp-tl2693826996_
                                (cons _lp-hd2693726993_ _body2693926986_))))
                           (let ((_body2694026999_ (reverse _body2693926986_)))
                             ((lambda (_L27003_ _L27005_)
                                (if (gx#identifier? _L27005_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27005_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2702227025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2702327028_)
                               (cons _g2702227025_ _g2702327028_))
                             '()
                             _L27003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2692226946_ _g2692326950_)))
                              _body2694026999_
                              _hd2693026967_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2693526979_
                                                      _target2693226973_
                                                      '()))
                                                   (_g2692226946_
                                                    _g2692326950_)))))
                                         (_g2692226946_ _g2692326950_))
                                     (_g2692226946_ _g2692326950_))))
                             (_g2692226946_ _g2692326950_))))
                     (_g2692226946_ _g2692326950_)))))
          (_g2692127031_ _$stx26918_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27036_)
      (let ((_g2704027064_
             (lambda (_g2704127060_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2704127060_))))
        (let ((_g2703927149_
               (lambda (_g2704127068_)
                 (if (gx#stx-pair? _g2704127068_)
                     (let ((_e2704427071_ (gx#syntax-e _g2704127068_)))
                       (let ((_hd2704527075_ (##car _e2704427071_))
                             (_tl2704627078_ (##cdr _e2704427071_)))
                         (if (gx#stx-pair? _tl2704627078_)
                             (let ((_e2704727081_
                                    (gx#syntax-e _tl2704627078_)))
                               (let ((_hd2704827085_ (##car _e2704727081_))
                                     (_tl2704927088_ (##cdr _e2704727081_)))
                                 (if (gx#stx-pair/null? _tl2704927088_)
                                     (if (fx>= (gx#stx-length _tl2704927088_)
                                               '0)
                                         (let ((_g28657_
                                                (gx#syntax-split-splice
                                                 _tl2704927088_
                                                 '0)))
                                           (begin
                                             (let ((_g28658_
                                                    (values-count _g28657_)))
                                               (if (not (fx= _g28658_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28658_)))
                                             (let ((_target2705027091_
                                                    (values-ref _g28657_ 0))
                                                   (_tl2705227094_
                                                    (values-ref _g28657_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2705227094_)
                                                   (letrec ((_loop2705327097_
                                                             (lambda (_hd2705127101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2705727104_)
                       (if (gx#stx-pair? _hd2705127101_)
                           (let ((_e2705427107_ (gx#syntax-e _hd2705127101_)))
                             (let ((_lp-hd2705527111_ (##car _e2705427107_))
                                   (_lp-tl2705627114_ (##cdr _e2705427107_)))
                               (_loop2705327097_
                                _lp-tl2705627114_
                                (cons _lp-hd2705527111_ _body2705727104_))))
                           (let ((_body2705827117_ (reverse _body2705727104_)))
                             ((lambda (_L27121_ _L27123_)
                                (if (gx#identifier? _L27123_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27123_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2714027143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2714127146_)
                               (cons _g2714027143_ _g2714127146_))
                             '()
                             _L27121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2704027064_ _g2704127068_)))
                              _body2705827117_
                              _hd2704827085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2705327097_
                                                      _target2705027091_
                                                      '()))
                                                   (_g2704027064_
                                                    _g2704127068_)))))
                                         (_g2704027064_ _g2704127068_))
                                     (_g2704027064_ _g2704127068_))))
                             (_g2704027064_ _g2704127068_))))
                     (_g2704027064_ _g2704127068_)))))
          (_g2703927149_ _$stx27036_)))))
  (define |gerbil/core::<more-sugar>[:0:]#catch|
    (lambda (_$stx27154_)
      (let ((_g2715727164_
             (lambda (_g2715827160_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2715827160_))))
        (_g2715727164_ _$stx27154_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27168_)
      (let ((_g2717227190_
             (lambda (_g2717327186_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2717327186_))))
        (let ((_g2717127245_
               (lambda (_g2717327194_)
                 (if (gx#stx-pair? _g2717327194_)
                     (let ((_e2717627197_ (gx#syntax-e _g2717327194_)))
                       (let ((_hd2717727201_ (##car _e2717627197_))
                             (_tl2717827204_ (##cdr _e2717627197_)))
                         (if (gx#stx-pair? _tl2717827204_)
                             (let ((_e2717927207_
                                    (gx#syntax-e _tl2717827204_)))
                               (let ((_hd2718027211_ (##car _e2717927207_))
                                     (_tl2718127214_ (##cdr _e2717927207_)))
                                 (if (gx#stx-pair? _tl2718127214_)
                                     (let ((_e2718227217_
                                            (gx#syntax-e _tl2718127214_)))
                                       (let ((_hd2718327221_
                                              (##car _e2718227217_))
                                             (_tl2718427224_
                                              (##cdr _e2718227217_)))
                                         (if (gx#stx-null? _tl2718427224_)
                                             ((lambda (_L27227_ _L27229_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27229_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27227_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2718327221_
                                              _hd2718027211_)
                                             (_g2717227190_ _g2717327194_))))
                                     (_g2717227190_ _g2717327194_))))
                             (_g2717227190_ _g2717327194_))))
                     (_g2717227190_ _g2717327194_)))))
          (_g2717127245_ _$stx27168_))))))
