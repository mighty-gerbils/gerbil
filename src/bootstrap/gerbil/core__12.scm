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
    (lambda _$args27227_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args27227_)))
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
    (lambda _$args27223_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args27223_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx27220_)
      (if (gx#identifier? _stx27220_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx27220_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx27217_)
      (if (gx#identifier? _stx27217_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx27217_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx27231_)
      (let* ((_g2723727296_
              (lambda (_g2723827292_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2723827292_)))
             (_g2723627351_
              (lambda (_g2723827300_)
                (if (gx#stx-pair? _g2723827300_)
                    (let ((_e2728227303_ (gx#syntax-e _g2723827300_)))
                      (let ((_hd2728327307_ (##car _e2728227303_))
                            (_tl2728427310_ (##cdr _e2728227303_)))
                        (if (gx#stx-pair? _tl2728427310_)
                            (let ((_e2728527313_ (gx#syntax-e _tl2728427310_)))
                              (let ((_hd2728627317_ (##car _e2728527313_))
                                    (_tl2728727320_ (##cdr _e2728527313_)))
                                (if (gx#stx-pair? _tl2728727320_)
                                    (let ((_e2728827323_
                                           (gx#syntax-e _tl2728727320_)))
                                      (let ((_hd2728927327_
                                             (##car _e2728827323_))
                                            (_tl2729027330_
                                             (##cdr _e2728827323_)))
                                        (if (gx#stx-null? _tl2729027330_)
                                            ((lambda (_L27333_ _L27335_)
                                               (if (gx#identifier? _L27335_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L27335_
                                                               (cons _L27333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2723727296_
                                                    _g2723827300_)))
                                             _hd2728927327_
                                             _hd2728627317_)
                                            (_g2723727296_ _g2723827300_))))
                                    (_g2723727296_ _g2723827300_))))
                            (_g2723727296_ _g2723827300_))))
                    (_g2723727296_ _g2723827300_))))
             (_g2723527391_
              (lambda (_g2723827355_)
                (if (gx#stx-pair? _g2723827355_)
                    (let ((_e2727427358_ (gx#syntax-e _g2723827355_)))
                      (let ((_hd2727527362_ (##car _e2727427358_))
                            (_tl2727627365_ (##cdr _e2727427358_)))
                        (if (gx#stx-pair? _tl2727627365_)
                            (let ((_e2727727368_ (gx#syntax-e _tl2727627365_)))
                              (let ((_hd2727827372_ (##car _e2727727368_))
                                    (_tl2727927375_ (##cdr _e2727727368_)))
                                ((lambda (_L27378_)
                                   (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L27378_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L27378_)
                                        _stx27231_)
                                       (_g2723627351_ _g2723827355_)))
                                 _hd2727827372_)))
                            (_g2723627351_ _g2723827355_))))
                    (_g2723627351_ _g2723827355_))))
             (_g2723427532_
              (lambda (_g2723827395_)
                (if (gx#stx-pair? _g2723827395_)
                    (let ((_e2725227398_ (gx#syntax-e _g2723827395_)))
                      (let ((_hd2725327402_ (##car _e2725227398_))
                            (_tl2725427405_ (##cdr _e2725227398_)))
                        (if (gx#stx-pair? _tl2725427405_)
                            (let ((_e2725527408_ (gx#syntax-e _tl2725427405_)))
                              (let ((_hd2725627412_ (##car _e2725527408_))
                                    (_tl2725727415_ (##cdr _e2725527408_)))
                                (if (gx#stx-pair? _hd2725627412_)
                                    (let ((_e2725827418_
                                           (gx#syntax-e _hd2725627412_)))
                                      (let ((_hd2725927422_
                                             (##car _e2725827418_))
                                            (_tl2726027425_
                                             (##cdr _e2725827418_)))
                                        (if (gx#stx-pair/null? _tl2726027425_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2726027425_)
                                                      '0)
                                                (let ((_g30822_
                                                       (gx#syntax-split-splice
                                                        _tl2726027425_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30823_
                                                           (values-count
                                                            _g30822_)))
                                                      (if (not (fx= _g30823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30823_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2726127428_
                                                           (values-ref
                                                            _g30822_
                                                            0))
                                                          (_tl2726327431_
                                                           (values-ref
                                                            _g30822_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2726327431_)
                                                          (letrec ((_loop2726427434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2726227438_ _arg2726827441_)
                              (if (gx#stx-pair? _hd2726227438_)
                                  (let ((_e2726527444_
                                         (gx#syntax-e _hd2726227438_)))
                                    (let ((_lp-hd2726627448_
                                           (##car _e2726527444_))
                                          (_lp-tl2726727451_
                                           (##cdr _e2726527444_)))
                                      (_loop2726427434_
                                       _lp-tl2726727451_
                                       (cons _lp-hd2726627448_
                                             _arg2726827441_))))
                                  (let ((_arg2726927454_
                                         (reverse _arg2726827441_)))
                                    (if (gx#stx-pair? _tl2725727415_)
                                        (let ((_e2727027458_
                                               (gx#syntax-e _tl2725727415_)))
                                          (let ((_hd2727127462_
                                                 (##car _e2727027458_))
                                                (_tl2727227465_
                                                 (##cdr _e2727027458_)))
                                            (if (gx#stx-null? _tl2727227465_)
                                                ((lambda (_L27468_
                                                          _L27470_
                                                          _L27471_)
                                                   (if (gx#identifier?
                                                        _L27471_)
                                                       (let* ((_g2749327501_
                                                               (lambda (_g2749427497_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2749427497_)))
                      (_g2749227528_
                       (lambda (_g2749427505_)
                         ((lambda (_L27508_)
                            (let ()
                              (cons _L27508_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2751927522_
                                                      _g2752027525_)
                                               (cons _g2751927522_
                                                     _g2752027525_))
                                             (cons _L27468_ '())
                                             _L27470_)))))
                          _g2749427505_))))
                 (_g2749227528_
                  (gx#stx-identifier _L27471_ _L27471_ '"-set!")))
               (_g2723527391_ _g2723827395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2727127462_
                                                 _arg2726927454_
                                                 _hd2725927422_)
                                                (_g2723527391_
                                                 _g2723827395_))))
                                        (_g2723527391_ _g2723827395_)))))))
                    (_loop2726427434_ _target2726127428_ '()))
                  (_g2723527391_ _g2723827395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2723527391_ _g2723827395_))
                                            (_g2723527391_ _g2723827395_))))
                                    (_g2723527391_ _g2723827395_))))
                            (_g2723527391_ _g2723827395_))))
                    (_g2723527391_ _g2723827395_))))
             (_g2723327584_
              (lambda (_g2723827536_)
                (if (gx#stx-pair? _g2723827536_)
                    (let ((_e2724027539_ (gx#syntax-e _g2723827536_)))
                      (let ((_hd2724127543_ (##car _e2724027539_))
                            (_tl2724227546_ (##cdr _e2724027539_)))
                        (if (gx#stx-pair? _tl2724227546_)
                            (let ((_e2724327549_ (gx#syntax-e _tl2724227546_)))
                              (let ((_hd2724427553_ (##car _e2724327549_))
                                    (_tl2724527556_ (##cdr _e2724327549_)))
                                (if (gx#stx-pair? _hd2724427553_)
                                    (let ((_e2724627559_
                                           (gx#syntax-e _hd2724427553_)))
                                      (let ((_hd2724727563_
                                             (##car _e2724627559_))
                                            (_tl2724827566_
                                             (##cdr _e2724627559_)))
                                        ((lambda (_L27569_)
                                           (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L27569_)
                                                _stx27231_)
                                               (_g2723427532_ _g2723827536_)))
                                         _hd2724727563_)))
                                    (_g2723427532_ _g2723827536_))))
                            (_g2723427532_ _g2723827536_))))
                    (_g2723427532_ _g2723827536_)))))
        (_g2723327584_ _stx27231_))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx27589_)
      (let* ((_g2759227616_
              (lambda (_g2759327612_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2759327612_)))
             (_g2759127794_
              (lambda (_g2759327620_)
                (if (gx#stx-pair? _g2759327620_)
                    (let ((_e2759627623_ (gx#syntax-e _g2759327620_)))
                      (let ((_hd2759727627_ (##car _e2759627623_))
                            (_tl2759827630_ (##cdr _e2759627623_)))
                        (if (gx#stx-pair/null? _tl2759827630_)
                            (if (fx>= (gx#stx-length _tl2759827630_) '1)
                                (let ((_g30824_
                                       (gx#syntax-split-splice
                                        _tl2759827630_
                                        '1)))
                                  (begin
                                    (let ((_g30825_ (values-count _g30824_)))
                                      (if (not (fx= _g30825_ 2))
                                          (error "Context expects 2 values"
                                                 _g30825_)))
                                    (let ((_target2759927633_
                                           (values-ref _g30824_ 0))
                                          (_tl2760127636_
                                           (values-ref _g30824_ 1)))
                                      (if (gx#stx-pair? _tl2760127636_)
                                          (let ((_e2760827639_
                                                 (gx#syntax-e _tl2760127636_)))
                                            (let ((_hd2760927643_
                                                   (##car _e2760827639_))
                                                  (_tl2761027646_
                                                   (##cdr _e2760827639_)))
                                              (if (gx#stx-null? _tl2761027646_)
                                                  (letrec ((_loop2760227649_
                                                            (lambda (_hd2760027653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt2760627656_)
                      (if (gx#stx-pair? _hd2760027653_)
                          (let ((_e2760327659_ (gx#syntax-e _hd2760027653_)))
                            (let ((_lp-hd2760427663_ (##car _e2760327659_))
                                  (_lp-tl2760527666_ (##cdr _e2760327659_)))
                              (_loop2760227649_
                               _lp-tl2760527666_
                               (cons _lp-hd2760427663_ _tgt2760627656_))))
                          (let ((_tgt2760727669_ (reverse _tgt2760627656_)))
                            ((lambda (_L27673_ _L27675_)
                               (let* ((_g2769327710_
                                       (lambda (_g2769427706_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2769427706_)))
                                      (_g2769227782_
                                       (lambda (_g2769427714_)
                                         (if (gx#stx-pair/null? _g2769427714_)
                                             (if (fx>= (gx#stx-length
                                                        _g2769427714_)
                                                       '0)
                                                 (let ((_g30826_
                                                        (gx#syntax-split-splice
                                                         _g2769427714_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30827_
                                                            (values-count
                                                             _g30826_)))
                                                       (if (not (fx= _g30827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30827_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2769627717_
                                                            (values-ref
                                                             _g30826_
                                                             0))
                                                           (_tl2769827720_
                                                            (values-ref
                                                             _g30826_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2769827720_)
                                                           (letrec ((_loop2769927723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2769727727_ _$e2770327730_)
                               (if (gx#stx-pair? _hd2769727727_)
                                   (let ((_e2770027733_
                                          (gx#syntax-e _hd2769727727_)))
                                     (let ((_lp-hd2770127737_
                                            (##car _e2770027733_))
                                           (_lp-tl2770227740_
                                            (##cdr _e2770027733_)))
                                       (_loop2769927723_
                                        _lp-tl2770227740_
                                        (cons _lp-hd2770127737_
                                              _$e2770327730_))))
                                   (let ((_$e2770427743_
                                          (reverse _$e2770327730_)))
                                     ((lambda (_L27747_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g2776227768_ _g2776327771_)
                                     (cons _g2776227768_ _g2776327771_))
                                   '()
                                   _L27747_))
                          (cons _L27673_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L27747_ _L27675_)
                (foldr (lambda (_g2776427774_ _g2776527777_ _g2776627779_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g2776527777_
                                           (cons _g2776427774_ '())))
                               _g2776627779_))
                       '()
                       _L27747_
                       _L27675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e2770427743_))))))
                     (_loop2769927723_ _target2769627717_ '()))
                   (_g2769327710_ _g2769427714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2769327710_ _g2769427714_))
                                             (_g2769327710_ _g2769427714_)))))
                                 (_g2769227782_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2778527788_
                                                     _g2778627791_)
                                              (cons _g2778527788_
                                                    _g2778627791_))
                                            '()
                                            _L27675_))))))
                             _hd2760927643_
                             _tgt2760727669_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2760227649_
                                                     _target2759927633_
                                                     '()))
                                                  (_g2759227616_
                                                   _g2759327620_))))
                                          (_g2759227616_ _g2759327620_)))))
                                (_g2759227616_ _g2759327620_))
                            (_g2759227616_ _g2759327620_))))
                    (_g2759227616_ _g2759327620_)))))
        (_g2759127794_ _stx27589_))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx27800_)
      (let* ((_g2780427862_
              (lambda (_g2780527858_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2780527858_)))
             (_g2780328139_
              (lambda (_g2780527866_)
                (if (gx#stx-pair? _g2780527866_)
                    (let ((_e2782527869_ (gx#syntax-e _g2780527866_)))
                      (let ((_hd2782627873_ (##car _e2782527869_))
                            (_tl2782727876_ (##cdr _e2782527869_)))
                        (if (gx#stx-pair? _tl2782727876_)
                            (let ((_e2782827879_ (gx#syntax-e _tl2782727876_)))
                              (let ((_hd2782927883_ (##car _e2782827879_))
                                    (_tl2783027886_ (##cdr _e2782827879_)))
                                (if (gx#stx-pair/null? _hd2782927883_)
                                    (if (fx>= (gx#stx-length _hd2782927883_)
                                              '0)
                                        (let ((_g30828_
                                               (gx#syntax-split-splice
                                                _hd2782927883_
                                                '0)))
                                          (begin
                                            (let ((_g30829_
                                                   (values-count _g30828_)))
                                              (if (not (fx= _g30829_ 2))
                                                  (error "Context expects 2 values"
                                                         _g30829_)))
                                            (let ((_target2783127889_
                                                   (values-ref _g30828_ 0))
                                                  (_tl2783327892_
                                                   (values-ref _g30828_ 1)))
                                              (if (gx#stx-null? _tl2783327892_)
                                                  (letrec ((_loop2783427895_
                                                            (lambda (_hd2783227899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2783827902_
                             _param2783927904_)
                      (if (gx#stx-pair? _hd2783227899_)
                          (let ((_e2783527907_ (gx#syntax-e _hd2783227899_)))
                            (let ((_lp-hd2783627911_ (##car _e2783527907_))
                                  (_lp-tl2783727914_ (##cdr _e2783527907_)))
                              (if (gx#stx-pair? _lp-hd2783627911_)
                                  (let ((_e2784227917_
                                         (gx#syntax-e _lp-hd2783627911_)))
                                    (let ((_hd2784327921_
                                           (##car _e2784227917_))
                                          (_tl2784427924_
                                           (##cdr _e2784227917_)))
                                      (if (gx#stx-pair? _tl2784427924_)
                                          (let ((_e2784527927_
                                                 (gx#syntax-e _tl2784427924_)))
                                            (let ((_hd2784627931_
                                                   (##car _e2784527927_))
                                                  (_tl2784727934_
                                                   (##cdr _e2784527927_)))
                                              (if (gx#stx-null? _tl2784727934_)
                                                  (_loop2783427895_
                                                   _lp-tl2783727914_
                                                   (cons _hd2784627931_
                                                         _expr2783827902_)
                                                   (cons _hd2784327921_
                                                         _param2783927904_))
                                                  (_g2780427862_
                                                   _g2780527866_))))
                                          (_g2780427862_ _g2780527866_))))
                                  (_g2780427862_ _g2780527866_))))
                          (let ((_expr2784027937_ (reverse _expr2783827902_))
                                (_param2784127940_
                                 (reverse _param2783927904_)))
                            (if (gx#stx-pair/null? _tl2783027886_)
                                (if (fx>= (gx#stx-length _tl2783027886_) '0)
                                    (let ((_g30830_
                                           (gx#syntax-split-splice
                                            _tl2783027886_
                                            '0)))
                                      (begin
                                        (let ((_g30831_
                                               (values-count _g30830_)))
                                          (if (not (fx= _g30831_ 2))
                                              (error "Context expects 2 values"
                                                     _g30831_)))
                                        (let ((_target2784827943_
                                               (values-ref _g30830_ 0))
                                              (_tl2785027946_
                                               (values-ref _g30830_ 1)))
                                          (if (gx#stx-null? _tl2785027946_)
                                              (letrec ((_loop2785127949_
                                                        (lambda (_hd2784927953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2785527956_)
                  (if (gx#stx-pair? _hd2784927953_)
                      (let ((_e2785227959_ (gx#syntax-e _hd2784927953_)))
                        (let ((_lp-hd2785327963_ (##car _e2785227959_))
                              (_lp-tl2785427966_ (##cdr _e2785227959_)))
                          (_loop2785127949_
                           _lp-tl2785427966_
                           (cons _lp-hd2785327963_ _body2785527956_))))
                      (let ((_body2785627969_ (reverse _body2785527956_)))
                        ((lambda (_L27973_ _L27975_ _L27976_)
                           (let* ((_g2799928007_
                                   (lambda (_g2800028003_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2800028003_)))
                                  (_g2799828127_
                                   (lambda (_g2800028011_)
                                     ((lambda (_L28014_)
                                        (let ()
                                          (let* ((_g2802628043_
                                                  (lambda (_g2802728039_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2802728039_)))
                                                 (_g2802528107_
                                                  (lambda (_g2802728047_)
                                                    (if (gx#stx-pair/null?
                                                         _g2802728047_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2802728047_)
                          '0)
                    (let ((_g30832_ (gx#syntax-split-splice _g2802728047_ '0)))
                      (begin
                        (let ((_g30833_ (values-count _g30832_)))
                          (if (not (fx= _g30833_ 2))
                              (error "Context expects 2 values" _g30833_)))
                        (let ((_target2802928050_ (values-ref _g30832_ 0))
                              (_tl2803128053_ (values-ref _g30832_ 1)))
                          (if (gx#stx-null? _tl2803128053_)
                              (letrec ((_loop2803228056_
                                        (lambda (_hd2803028060_
                                                 _arg2803628063_)
                                          (if (gx#stx-pair? _hd2803028060_)
                                              (let ((_e2803328066_
                                                     (gx#syntax-e
                                                      _hd2803028060_)))
                                                (let ((_lp-hd2803428070_
                                                       (##car _e2803328066_))
                                                      (_lp-tl2803528073_
                                                       (##cdr _e2803328066_)))
                                                  (_loop2803228056_
                                                   _lp-tl2803528073_
                                                   (cons _lp-hd2803428070_
                                                         _arg2803628063_))))
                                              (let ((_arg2803728076_
                                                     (reverse _arg2803628063_)))
                                                ((lambda (_L28080_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L28014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g2809828101_ _g2809928104_)
                                      (cons _g2809828101_ _g2809928104_))
                                    '()
                                    _L28080_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg2803728076_))))))
                                (_loop2803228056_ _target2802928050_ '()))
                              (_g2802628043_ _g2802728047_)))))
                    (_g2802628043_ _g2802728047_))
                (_g2802628043_ _g2802728047_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2802528107_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2811028113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2811128116_)
                        (cons _g2811028113_ _g2811128116_))
                      '()
                      _L27976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2811828121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2811928124_)
                        (cons _g2811828121_ _g2811928124_))
                      '()
                      _L27975_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2800028011_))))
                             (_g2799828127_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g2813028133_
                                                             _g2813128136_)
                                                      (cons _g2813028133_
                                                            _g2813128136_))
                                                    '()
                                                    _L27973_))))
                               (gx#stx-source _stx27800_)))))
                         _body2785627969_
                         _expr2784027937_
                         _param2784127940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2785127949_
                                                 _target2784827943_
                                                 '()))
                                              (_g2780427862_ _g2780527866_)))))
                                    (_g2780427862_ _g2780527866_))
                                (_g2780427862_ _g2780527866_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2783427895_
                                                     _target2783127889_
                                                     '()
                                                     '()))
                                                  (_g2780427862_
                                                   _g2780527866_)))))
                                        (_g2780427862_ _g2780527866_))
                                    (_g2780427862_ _g2780527866_))))
                            (_g2780427862_ _g2780527866_))))
                    (_g2780427862_ _g2780527866_))))
             (_g2780228221_
              (lambda (_g2780528143_)
                (if (gx#stx-pair? _g2780528143_)
                    (let ((_e2780728146_ (gx#syntax-e _g2780528143_)))
                      (let ((_hd2780828150_ (##car _e2780728146_))
                            (_tl2780928153_ (##cdr _e2780728146_)))
                        (if (gx#stx-pair? _tl2780928153_)
                            (let ((_e2781028156_ (gx#syntax-e _tl2780928153_)))
                              (let ((_hd2781128160_ (##car _e2781028156_))
                                    (_tl2781228163_ (##cdr _e2781028156_)))
                                (if (gx#stx-null? _hd2781128160_)
                                    (if (gx#stx-pair/null? _tl2781228163_)
                                        (if (fx>= (gx#stx-length
                                                   _tl2781228163_)
                                                  '0)
                                            (let ((_g30834_
                                                   (gx#syntax-split-splice
                                                    _tl2781228163_
                                                    '0)))
                                              (begin
                                                (let ((_g30835_
                                                       (values-count
                                                        _g30834_)))
                                                  (if (not (fx= _g30835_ 2))
                                                      (error "Context expects 2 values"
                                                             _g30835_)))
                                                (let ((_target2781328166_
                                                       (values-ref _g30834_ 0))
                                                      (_tl2781528169_
                                                       (values-ref
                                                        _g30834_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2781528169_)
                                                      (letrec ((_loop2781628172_
                                                                (lambda (_hd2781428176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2782028179_)
                          (if (gx#stx-pair? _hd2781428176_)
                              (let ((_e2781728182_
                                     (gx#syntax-e _hd2781428176_)))
                                (let ((_lp-hd2781828186_ (##car _e2781728182_))
                                      (_lp-tl2781928189_
                                       (##cdr _e2781728182_)))
                                  (_loop2781628172_
                                   _lp-tl2781928189_
                                   (cons _lp-hd2781828186_ _body2782028179_))))
                              (let ((_body2782128192_
                                     (reverse _body2782028179_)))
                                ((lambda (_L28196_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2821228215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2821328218_)
                  (cons _g2821228215_ _g2821328218_))
                '()
                _L28196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body2782128192_))))))
                (_loop2781628172_ _target2781328166_ '()))
              (_g2780328139_ _g2780528143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2780328139_ _g2780528143_))
                                        (_g2780328139_ _g2780528143_))
                                    (_g2780328139_ _g2780528143_))))
                            (_g2780328139_ _g2780528143_))))
                    (_g2780328139_ _g2780528143_)))))
        (_g2780228221_ _stx27800_))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx28229_)
      (let* ((_g2823328257_
              (lambda (_g2823428253_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2823428253_)))
             (_g2823228342_
              (lambda (_g2823428261_)
                (if (gx#stx-pair? _g2823428261_)
                    (let ((_e2823728264_ (gx#syntax-e _g2823428261_)))
                      (let ((_hd2823828268_ (##car _e2823728264_))
                            (_tl2823928271_ (##cdr _e2823728264_)))
                        (if (gx#stx-pair? _tl2823928271_)
                            (let ((_e2824028274_ (gx#syntax-e _tl2823928271_)))
                              (let ((_hd2824128278_ (##car _e2824028274_))
                                    (_tl2824228281_ (##cdr _e2824028274_)))
                                (if (gx#stx-pair/null? _tl2824228281_)
                                    (if (fx>= (gx#stx-length _tl2824228281_)
                                              '0)
                                        (let ((_g30836_
                                               (gx#syntax-split-splice
                                                _tl2824228281_
                                                '0)))
                                          (begin
                                            (let ((_g30837_
                                                   (values-count _g30836_)))
                                              (if (not (fx= _g30837_ 2))
                                                  (error "Context expects 2 values"
                                                         _g30837_)))
                                            (let ((_target2824328284_
                                                   (values-ref _g30836_ 0))
                                                  (_tl2824528287_
                                                   (values-ref _g30836_ 1)))
                                              (if (gx#stx-null? _tl2824528287_)
                                                  (letrec ((_loop2824628290_
                                                            (lambda (_hd2824428294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2825028297_)
                      (if (gx#stx-pair? _hd2824428294_)
                          (let ((_e2824728300_ (gx#syntax-e _hd2824428294_)))
                            (let ((_lp-hd2824828304_ (##car _e2824728300_))
                                  (_lp-tl2824928307_ (##cdr _e2824728300_)))
                              (_loop2824628290_
                               _lp-tl2824928307_
                               (cons _lp-hd2824828304_ _body2825028297_))))
                          (let ((_body2825128310_ (reverse _body2825028297_)))
                            ((lambda (_L28314_ _L28316_)
                               (if (gx#identifier? _L28316_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28316_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2833328336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2833428339_)
                              (cons _g2833328336_ _g2833428339_))
                            '()
                            _L28314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2823328257_ _g2823428261_)))
                             _body2825128310_
                             _hd2824128278_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2824628290_
                                                     _target2824328284_
                                                     '()))
                                                  (_g2823328257_
                                                   _g2823428261_)))))
                                        (_g2823328257_ _g2823428261_))
                                    (_g2823328257_ _g2823428261_))))
                            (_g2823328257_ _g2823428261_))))
                    (_g2823328257_ _g2823428261_)))))
        (_g2823228342_ _$stx28229_))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx28347_)
      (let* ((_g2835128375_
              (lambda (_g2835228371_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2835228371_)))
             (_g2835028460_
              (lambda (_g2835228379_)
                (if (gx#stx-pair? _g2835228379_)
                    (let ((_e2835528382_ (gx#syntax-e _g2835228379_)))
                      (let ((_hd2835628386_ (##car _e2835528382_))
                            (_tl2835728389_ (##cdr _e2835528382_)))
                        (if (gx#stx-pair? _tl2835728389_)
                            (let ((_e2835828392_ (gx#syntax-e _tl2835728389_)))
                              (let ((_hd2835928396_ (##car _e2835828392_))
                                    (_tl2836028399_ (##cdr _e2835828392_)))
                                (if (gx#stx-pair/null? _tl2836028399_)
                                    (if (fx>= (gx#stx-length _tl2836028399_)
                                              '0)
                                        (let ((_g30838_
                                               (gx#syntax-split-splice
                                                _tl2836028399_
                                                '0)))
                                          (begin
                                            (let ((_g30839_
                                                   (values-count _g30838_)))
                                              (if (not (fx= _g30839_ 2))
                                                  (error "Context expects 2 values"
                                                         _g30839_)))
                                            (let ((_target2836128402_
                                                   (values-ref _g30838_ 0))
                                                  (_tl2836328405_
                                                   (values-ref _g30838_ 1)))
                                              (if (gx#stx-null? _tl2836328405_)
                                                  (letrec ((_loop2836428408_
                                                            (lambda (_hd2836228412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2836828415_)
                      (if (gx#stx-pair? _hd2836228412_)
                          (let ((_e2836528418_ (gx#syntax-e _hd2836228412_)))
                            (let ((_lp-hd2836628422_ (##car _e2836528418_))
                                  (_lp-tl2836728425_ (##cdr _e2836528418_)))
                              (_loop2836428408_
                               _lp-tl2836728425_
                               (cons _lp-hd2836628422_ _body2836828415_))))
                          (let ((_body2836928428_ (reverse _body2836828415_)))
                            ((lambda (_L28432_ _L28434_)
                               (if (gx#identifier? _L28434_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28434_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2845128454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2845228457_)
                              (cons _g2845128454_ _g2845228457_))
                            '()
                            _L28432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2835128375_ _g2835228379_)))
                             _body2836928428_
                             _hd2835928396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2836428408_
                                                     _target2836128402_
                                                     '()))
                                                  (_g2835128375_
                                                   _g2835228379_)))))
                                        (_g2835128375_ _g2835228379_))
                                    (_g2835128375_ _g2835228379_))))
                            (_g2835128375_ _g2835228379_))))
                    (_g2835128375_ _g2835228379_)))))
        (_g2835028460_ _$stx28347_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28465_)
      (let* ((_g2846928487_
              (lambda (_g2847028483_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2847028483_)))
             (_g2846828542_
              (lambda (_g2847028491_)
                (if (gx#stx-pair? _g2847028491_)
                    (let ((_e2847328494_ (gx#syntax-e _g2847028491_)))
                      (let ((_hd2847428498_ (##car _e2847328494_))
                            (_tl2847528501_ (##cdr _e2847328494_)))
                        (if (gx#stx-pair? _tl2847528501_)
                            (let ((_e2847628504_ (gx#syntax-e _tl2847528501_)))
                              (let ((_hd2847728508_ (##car _e2847628504_))
                                    (_tl2847828511_ (##cdr _e2847628504_)))
                                (if (gx#stx-pair? _tl2847828511_)
                                    (let ((_e2847928514_
                                           (gx#syntax-e _tl2847828511_)))
                                      (let ((_hd2848028518_
                                             (##car _e2847928514_))
                                            (_tl2848128521_
                                             (##cdr _e2847928514_)))
                                        (if (gx#stx-null? _tl2848128521_)
                                            ((lambda (_L28524_ _L28526_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'with-unwind-protect)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _L28526_ '())))
                   (cons (cons (gx#datum->syntax '#f 'lambda)
                               (cons '() (cons _L28524_ '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2848028518_
                                             _hd2847728508_)
                                            (_g2846928487_ _g2847028491_))))
                                    (_g2846928487_ _g2847028491_))))
                            (_g2846928487_ _g2847028491_))))
                    (_g2846928487_ _g2847028491_)))))
        (_g2846828542_ _$stx28465_)))))
