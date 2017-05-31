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
    (lambda _$args25937_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args25937_)))
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
    (lambda _$args25933_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args25933_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx25930_)
      (if (gx#identifier? _stx25930_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx25930_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx25927_)
      (if (gx#identifier? _stx25927_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx25927_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx25941_)
      (let ((_g2594726006_
             (lambda (_g2594826002_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2594826002_))))
        (let ((_g2594626061_
               (lambda (_g2594826010_)
                 (if (gx#stx-pair? _g2594826010_)
                     (let ((_e2599226013_ (gx#syntax-e _g2594826010_)))
                       (let ((_hd2599326017_ (##car _e2599226013_))
                             (_tl2599426020_ (##cdr _e2599226013_)))
                         (if (gx#stx-pair? _tl2599426020_)
                             (let ((_e2599526023_
                                    (gx#syntax-e _tl2599426020_)))
                               (let ((_hd2599626027_ (##car _e2599526023_))
                                     (_tl2599726030_ (##cdr _e2599526023_)))
                                 (if (gx#stx-pair? _tl2599726030_)
                                     (let ((_e2599826033_
                                            (gx#syntax-e _tl2599726030_)))
                                       (let ((_hd2599926037_
                                              (##car _e2599826033_))
                                             (_tl2600026040_
                                              (##cdr _e2599826033_)))
                                         (if (gx#stx-null? _tl2600026040_)
                                             ((lambda (_L26043_ _L26045_)
                                                (if (gx#identifier? _L26045_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26045_
                                                                (cons _L26043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2594726006_
                                                     _g2594826010_)))
                                              _hd2599926037_
                                              _hd2599626027_)
                                             (_g2594726006_ _g2594826010_))))
                                     (_g2594726006_ _g2594826010_))))
                             (_g2594726006_ _g2594826010_))))
                     (_g2594726006_ _g2594826010_)))))
          (let ((_g2594526101_
                 (lambda (_g2594826065_)
                   (if (gx#stx-pair? _g2594826065_)
                       (let ((_e2598426068_ (gx#syntax-e _g2594826065_)))
                         (let ((_hd2598526072_ (##car _e2598426068_))
                               (_tl2598626075_ (##cdr _e2598426068_)))
                           (if (gx#stx-pair? _tl2598626075_)
                               (let ((_e2598726078_
                                      (gx#syntax-e _tl2598626075_)))
                                 (let ((_hd2598826082_ (##car _e2598726078_))
                                       (_tl2598926085_ (##cdr _e2598726078_)))
                                   ((lambda (_L26088_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26088_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26088_)
                                           _stx25941_)
                                          (_g2594626061_ _g2594826065_)))
                                    _hd2598826082_)))
                               (_g2594626061_ _g2594826065_))))
                       (_g2594626061_ _g2594826065_)))))
            (let ((_g2594426242_
                   (lambda (_g2594826105_)
                     (if (gx#stx-pair? _g2594826105_)
                         (let ((_e2596226108_ (gx#syntax-e _g2594826105_)))
                           (let ((_hd2596326112_ (##car _e2596226108_))
                                 (_tl2596426115_ (##cdr _e2596226108_)))
                             (if (gx#stx-pair? _tl2596426115_)
                                 (let ((_e2596526118_
                                        (gx#syntax-e _tl2596426115_)))
                                   (let ((_hd2596626122_ (##car _e2596526118_))
                                         (_tl2596726125_
                                          (##cdr _e2596526118_)))
                                     (if (gx#stx-pair? _hd2596626122_)
                                         (let ((_e2596826128_
                                                (gx#syntax-e _hd2596626122_)))
                                           (let ((_hd2596926132_
                                                  (##car _e2596826128_))
                                                 (_tl2597026135_
                                                  (##cdr _e2596826128_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2597026135_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2597026135_)
                                                           '0)
                                                     (let ((_g29521_
                                                            (gx#syntax-split-splice
                                                             _tl2597026135_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29522_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29521_)))
                   (if (not (fx= _g29522_ 2))
                       (error "Context expects 2 values" _g29522_)))
                 (let ((_target2597126138_ (values-ref _g29521_ 0))
                       (_tl2597326141_ (values-ref _g29521_ 1)))
                   (if (gx#stx-null? _tl2597326141_)
                       (letrec ((_loop2597426144_
                                 (lambda (_hd2597226148_ _arg2597826151_)
                                   (if (gx#stx-pair? _hd2597226148_)
                                       (let ((_e2597526154_
                                              (gx#syntax-e _hd2597226148_)))
                                         (let ((_lp-hd2597626158_
                                                (##car _e2597526154_))
                                               (_lp-tl2597726161_
                                                (##cdr _e2597526154_)))
                                           (_loop2597426144_
                                            _lp-tl2597726161_
                                            (cons _lp-hd2597626158_
                                                  _arg2597826151_))))
                                       (let ((_arg2597926164_
                                              (reverse _arg2597826151_)))
                                         (if (gx#stx-pair? _tl2596726125_)
                                             (let ((_e2598026168_
                                                    (gx#syntax-e
                                                     _tl2596726125_)))
                                               (let ((_hd2598126172_
                                                      (##car _e2598026168_))
                                                     (_tl2598226175_
                                                      (##cdr _e2598026168_)))
                                                 (if (gx#stx-null?
                                                      _tl2598226175_)
                                                     ((lambda (_L26178_
                                                               _L26180_
                                                               _L26181_)
                                                        (if (gx#identifier?
                                                             _L26181_)
                                                            (let ((_g2620326211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2620426207_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2620426207_))))
                      (let ((_g2620226238_
                             (lambda (_g2620426215_)
                               ((lambda (_L26218_)
                                  (let ()
                                    (cons _L26218_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2622926232_
                                                            _g2623026235_)
                                                     (cons _g2622926232_
                                                           _g2623026235_))
                                                   (cons _L26178_ '())
                                                   _L26180_)))))
                                _g2620426215_))))
                        (_g2620226238_
                         (gx#stx-identifier _L26181_ _L26181_ '"-set!"))))
                    (_g2594526101_ _g2594826105_)))
              _hd2598126172_
              _arg2597926164_
              _hd2596926132_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2594526101_
                                                      _g2594826105_))))
                                             (_g2594526101_
                                              _g2594826105_)))))))
                         (_loop2597426144_ _target2597126138_ '()))
                       (_g2594526101_ _g2594826105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2594526101_
                                                      _g2594826105_))
                                                 (_g2594526101_
                                                  _g2594826105_))))
                                         (_g2594526101_ _g2594826105_))))
                                 (_g2594526101_ _g2594826105_))))
                         (_g2594526101_ _g2594826105_)))))
              (let ((_g2594326294_
                     (lambda (_g2594826246_)
                       (if (gx#stx-pair? _g2594826246_)
                           (let ((_e2595026249_ (gx#syntax-e _g2594826246_)))
                             (let ((_hd2595126253_ (##car _e2595026249_))
                                   (_tl2595226256_ (##cdr _e2595026249_)))
                               (if (gx#stx-pair? _tl2595226256_)
                                   (let ((_e2595326259_
                                          (gx#syntax-e _tl2595226256_)))
                                     (let ((_hd2595426263_
                                            (##car _e2595326259_))
                                           (_tl2595526266_
                                            (##cdr _e2595326259_)))
                                       (if (gx#stx-pair? _hd2595426263_)
                                           (let ((_e2595626269_
                                                  (gx#syntax-e
                                                   _hd2595426263_)))
                                             (let ((_hd2595726273_
                                                    (##car _e2595626269_))
                                                   (_tl2595826276_
                                                    (##cdr _e2595626269_)))
                                               ((lambda (_L26279_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26279_)
                                                       _stx25941_)
                                                      (_g2594426242_
                                                       _g2594826246_)))
                                                _hd2595726273_)))
                                           (_g2594426242_ _g2594826246_))))
                                   (_g2594426242_ _g2594826246_))))
                           (_g2594426242_ _g2594826246_)))))
                (_g2594326294_ _stx25941_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26299_)
      (let ((_g2630226326_
             (lambda (_g2630326322_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2630326322_))))
        (let ((_g2630126504_
               (lambda (_g2630326330_)
                 (if (gx#stx-pair? _g2630326330_)
                     (let ((_e2630626333_ (gx#syntax-e _g2630326330_)))
                       (let ((_hd2630726337_ (##car _e2630626333_))
                             (_tl2630826340_ (##cdr _e2630626333_)))
                         (if (gx#stx-pair/null? _tl2630826340_)
                             (if (fx>= (gx#stx-length _tl2630826340_) '1)
                                 (let ((_g29523_
                                        (gx#syntax-split-splice
                                         _tl2630826340_
                                         '1)))
                                   (begin
                                     (let ((_g29524_ (values-count _g29523_)))
                                       (if (not (fx= _g29524_ 2))
                                           (error "Context expects 2 values"
                                                  _g29524_)))
                                     (let ((_target2630926343_
                                            (values-ref _g29523_ 0))
                                           (_tl2631126346_
                                            (values-ref _g29523_ 1)))
                                       (if (gx#stx-pair? _tl2631126346_)
                                           (let ((_e2631826349_
                                                  (gx#syntax-e
                                                   _tl2631126346_)))
                                             (let ((_hd2631926353_
                                                    (##car _e2631826349_))
                                                   (_tl2632026356_
                                                    (##cdr _e2631826349_)))
                                               (if (gx#stx-null?
                                                    _tl2632026356_)
                                                   (letrec ((_loop2631226359_
                                                             (lambda (_hd2631026363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2631626366_)
                       (if (gx#stx-pair? _hd2631026363_)
                           (let ((_e2631326369_ (gx#syntax-e _hd2631026363_)))
                             (let ((_lp-hd2631426373_ (##car _e2631326369_))
                                   (_lp-tl2631526376_ (##cdr _e2631326369_)))
                               (_loop2631226359_
                                _lp-tl2631526376_
                                (cons _lp-hd2631426373_ _tgt2631626366_))))
                           (let ((_tgt2631726379_ (reverse _tgt2631626366_)))
                             ((lambda (_L26383_ _L26385_)
                                (let ((_g2640326420_
                                       (lambda (_g2640426416_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2640426416_))))
                                  (let ((_g2640226492_
                                         (lambda (_g2640426424_)
                                           (if (gx#stx-pair/null?
                                                _g2640426424_)
                                               (if (fx>= (gx#stx-length
                                                          _g2640426424_)
                                                         '0)
                                                   (let ((_g29525_
                                                          (gx#syntax-split-splice
                                                           _g2640426424_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29526_
                                                              (values-count
                                                               _g29525_)))
                                                         (if (not (fx= _g29526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29526_)))
               (let ((_target2640626427_ (values-ref _g29525_ 0))
                     (_tl2640826430_ (values-ref _g29525_ 1)))
                 (if (gx#stx-null? _tl2640826430_)
                     (letrec ((_loop2640926433_
                               (lambda (_hd2640726437_ _$e2641326440_)
                                 (if (gx#stx-pair? _hd2640726437_)
                                     (let ((_e2641026443_
                                            (gx#syntax-e _hd2640726437_)))
                                       (let ((_lp-hd2641126447_
                                              (##car _e2641026443_))
                                             (_lp-tl2641226450_
                                              (##cdr _e2641026443_)))
                                         (_loop2640926433_
                                          _lp-tl2641226450_
                                          (cons _lp-hd2641126447_
                                                _$e2641326440_))))
                                     (let ((_$e2641426453_
                                            (reverse _$e2641326440_)))
                                       ((lambda (_L26457_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2647226478_ _g2647326481_)
                                       (cons _g2647226478_ _g2647326481_))
                                     '()
                                     _L26457_))
                            (cons _L26383_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26457_ _L26385_)
                  (foldr (lambda (_g2647426484_ _g2647526487_ _g2647626489_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2647526487_
                                             (cons _g2647426484_ '())))
                                 _g2647626489_))
                         '()
                         _L26457_
                         _L26385_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2641426453_))))))
                       (_loop2640926433_ _target2640626427_ '()))
                     (_g2640326420_ _g2640426424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2640326420_
                                                    _g2640426424_))
                                               (_g2640326420_
                                                _g2640426424_)))))
                                    (_g2640226492_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2649526498_
                                                        _g2649626501_)
                                                 (cons _g2649526498_
                                                       _g2649626501_))
                                               '()
                                               _L26385_)))))))
                              _hd2631926353_
                              _tgt2631726379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2631226359_
                                                      _target2630926343_
                                                      '()))
                                                   (_g2630226326_
                                                    _g2630326330_))))
                                           (_g2630226326_ _g2630326330_)))))
                                 (_g2630226326_ _g2630326330_))
                             (_g2630226326_ _g2630326330_))))
                     (_g2630226326_ _g2630326330_)))))
          (_g2630126504_ _stx26299_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26510_)
      (let ((_g2651426572_
             (lambda (_g2651526568_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2651526568_))))
        (let ((_g2651326849_
               (lambda (_g2651526576_)
                 (if (gx#stx-pair? _g2651526576_)
                     (let ((_e2653526579_ (gx#syntax-e _g2651526576_)))
                       (let ((_hd2653626583_ (##car _e2653526579_))
                             (_tl2653726586_ (##cdr _e2653526579_)))
                         (if (gx#stx-pair? _tl2653726586_)
                             (let ((_e2653826589_
                                    (gx#syntax-e _tl2653726586_)))
                               (let ((_hd2653926593_ (##car _e2653826589_))
                                     (_tl2654026596_ (##cdr _e2653826589_)))
                                 (if (gx#stx-pair/null? _hd2653926593_)
                                     (if (fx>= (gx#stx-length _hd2653926593_)
                                               '0)
                                         (let ((_g29527_
                                                (gx#syntax-split-splice
                                                 _hd2653926593_
                                                 '0)))
                                           (begin
                                             (let ((_g29528_
                                                    (values-count _g29527_)))
                                               (if (not (fx= _g29528_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29528_)))
                                             (let ((_target2654126599_
                                                    (values-ref _g29527_ 0))
                                                   (_tl2654326602_
                                                    (values-ref _g29527_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2654326602_)
                                                   (letrec ((_loop2654426605_
                                                             (lambda (_hd2654226609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2654826612_
                              _param2654926614_)
                       (if (gx#stx-pair? _hd2654226609_)
                           (let ((_e2654526617_ (gx#syntax-e _hd2654226609_)))
                             (let ((_lp-hd2654626621_ (##car _e2654526617_))
                                   (_lp-tl2654726624_ (##cdr _e2654526617_)))
                               (if (gx#stx-pair? _lp-hd2654626621_)
                                   (let ((_e2655226627_
                                          (gx#syntax-e _lp-hd2654626621_)))
                                     (let ((_hd2655326631_
                                            (##car _e2655226627_))
                                           (_tl2655426634_
                                            (##cdr _e2655226627_)))
                                       (if (gx#stx-pair? _tl2655426634_)
                                           (let ((_e2655526637_
                                                  (gx#syntax-e
                                                   _tl2655426634_)))
                                             (let ((_hd2655626641_
                                                    (##car _e2655526637_))
                                                   (_tl2655726644_
                                                    (##cdr _e2655526637_)))
                                               (if (gx#stx-null?
                                                    _tl2655726644_)
                                                   (_loop2654426605_
                                                    _lp-tl2654726624_
                                                    (cons _hd2655626641_
                                                          _expr2654826612_)
                                                    (cons _hd2655326631_
                                                          _param2654926614_))
                                                   (_g2651426572_
                                                    _g2651526576_))))
                                           (_g2651426572_ _g2651526576_))))
                                   (_g2651426572_ _g2651526576_))))
                           (let ((_expr2655026647_ (reverse _expr2654826612_))
                                 (_param2655126650_
                                  (reverse _param2654926614_)))
                             (if (gx#stx-pair/null? _tl2654026596_)
                                 (if (fx>= (gx#stx-length _tl2654026596_) '0)
                                     (let ((_g29529_
                                            (gx#syntax-split-splice
                                             _tl2654026596_
                                             '0)))
                                       (begin
                                         (let ((_g29530_
                                                (values-count _g29529_)))
                                           (if (not (fx= _g29530_ 2))
                                               (error "Context expects 2 values"
                                                      _g29530_)))
                                         (let ((_target2655826653_
                                                (values-ref _g29529_ 0))
                                               (_tl2656026656_
                                                (values-ref _g29529_ 1)))
                                           (if (gx#stx-null? _tl2656026656_)
                                               (letrec ((_loop2656126659_
                                                         (lambda (_hd2655926663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2656526666_)
                   (if (gx#stx-pair? _hd2655926663_)
                       (let ((_e2656226669_ (gx#syntax-e _hd2655926663_)))
                         (let ((_lp-hd2656326673_ (##car _e2656226669_))
                               (_lp-tl2656426676_ (##cdr _e2656226669_)))
                           (_loop2656126659_
                            _lp-tl2656426676_
                            (cons _lp-hd2656326673_ _body2656526666_))))
                       (let ((_body2656626679_ (reverse _body2656526666_)))
                         ((lambda (_L26683_ _L26685_ _L26686_)
                            (let ((_g2670926717_
                                   (lambda (_g2671026713_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2671026713_))))
                              (let ((_g2670826837_
                                     (lambda (_g2671026721_)
                                       ((lambda (_L26724_)
                                          (let ()
                                            (let ((_g2673626753_
                                                   (lambda (_g2673726749_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2673726749_))))
                                              (let ((_g2673526817_
                                                     (lambda (_g2673726757_)
                                                       (if (gx#stx-pair/null?
                                                            _g2673726757_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2673726757_)
                             '0)
                       (let ((_g29531_
                              (gx#syntax-split-splice _g2673726757_ '0)))
                         (begin
                           (let ((_g29532_ (values-count _g29531_)))
                             (if (not (fx= _g29532_ 2))
                                 (error "Context expects 2 values" _g29532_)))
                           (let ((_target2673926760_ (values-ref _g29531_ 0))
                                 (_tl2674126763_ (values-ref _g29531_ 1)))
                             (if (gx#stx-null? _tl2674126763_)
                                 (letrec ((_loop2674226766_
                                           (lambda (_hd2674026770_
                                                    _arg2674626773_)
                                             (if (gx#stx-pair? _hd2674026770_)
                                                 (let ((_e2674326776_
                                                        (gx#syntax-e
                                                         _hd2674026770_)))
                                                   (let ((_lp-hd2674426780_
                                                          (##car _e2674326776_))
                                                         (_lp-tl2674526783_
                                                          (##cdr _e2674326776_)))
                                                     (_loop2674226766_
                                                      _lp-tl2674526783_
                                                      (cons _lp-hd2674426780_
                                                            _arg2674626773_))))
                                                 (let ((_arg2674726786_
                                                        (reverse _arg2674626773_)))
                                                   ((lambda (_L26790_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26724_
                              (begin
                                '#!void
                                (foldr (lambda (_g2680826811_ _g2680926814_)
                                         (cons _g2680826811_ _g2680926814_))
                                       '()
                                       _L26790_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2674726786_))))))
                                   (_loop2674226766_ _target2673926760_ '()))
                                 (_g2673626753_ _g2673726757_)))))
                       (_g2673626753_ _g2673726757_))
                   (_g2673626753_ _g2673726757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2673526817_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2682026823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2682126826_)
                            (cons _g2682026823_ _g2682126826_))
                          '()
                          _L26686_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2682826831_ _g2682926834_)
                            (cons _g2682826831_ _g2682926834_))
                          '()
                          _L26685_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2671026721_))))
                                (_g2670826837_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2684026843_
                                                                _g2684126846_)
                                                         (cons _g2684026843_
                                                               _g2684126846_))
                                                       '()
                                                       _L26683_))))
                                  (gx#stx-source _stx26510_))))))
                          _body2656626679_
                          _expr2655026647_
                          _param2655126650_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2656126659_
                                                  _target2655826653_
                                                  '()))
                                               (_g2651426572_
                                                _g2651526576_)))))
                                     (_g2651426572_ _g2651526576_))
                                 (_g2651426572_ _g2651526576_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2654426605_
                                                      _target2654126599_
                                                      '()
                                                      '()))
                                                   (_g2651426572_
                                                    _g2651526576_)))))
                                         (_g2651426572_ _g2651526576_))
                                     (_g2651426572_ _g2651526576_))))
                             (_g2651426572_ _g2651526576_))))
                     (_g2651426572_ _g2651526576_)))))
          (let ((_g2651226931_
                 (lambda (_g2651526853_)
                   (if (gx#stx-pair? _g2651526853_)
                       (let ((_e2651726856_ (gx#syntax-e _g2651526853_)))
                         (let ((_hd2651826860_ (##car _e2651726856_))
                               (_tl2651926863_ (##cdr _e2651726856_)))
                           (if (gx#stx-pair? _tl2651926863_)
                               (let ((_e2652026866_
                                      (gx#syntax-e _tl2651926863_)))
                                 (let ((_hd2652126870_ (##car _e2652026866_))
                                       (_tl2652226873_ (##cdr _e2652026866_)))
                                   (if (gx#stx-null? _hd2652126870_)
                                       (if (gx#stx-pair/null? _tl2652226873_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2652226873_)
                                                     '0)
                                               (let ((_g29533_
                                                      (gx#syntax-split-splice
                                                       _tl2652226873_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29534_
                                                          (values-count
                                                           _g29533_)))
                                                     (if (not (fx= _g29534_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29534_)))
                                                   (let ((_target2652326876_
                                                          (values-ref
                                                           _g29533_
                                                           0))
                                                         (_tl2652526879_
                                                          (values-ref
                                                           _g29533_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2652526879_)
                                                         (letrec ((_loop2652626882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2652426886_ _body2653026889_)
                             (if (gx#stx-pair? _hd2652426886_)
                                 (let ((_e2652726892_
                                        (gx#syntax-e _hd2652426886_)))
                                   (let ((_lp-hd2652826896_
                                          (##car _e2652726892_))
                                         (_lp-tl2652926899_
                                          (##cdr _e2652726892_)))
                                     (_loop2652626882_
                                      _lp-tl2652926899_
                                      (cons _lp-hd2652826896_
                                            _body2653026889_))))
                                 (let ((_body2653126902_
                                        (reverse _body2653026889_)))
                                   ((lambda (_L26906_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2692226925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2692326928_)
                     (cons _g2692226925_ _g2692326928_))
                   '()
                   _L26906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2653126902_))))))
                   (_loop2652626882_ _target2652326876_ '()))
                 (_g2651326849_ _g2651526853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2651326849_ _g2651526853_))
                                           (_g2651326849_ _g2651526853_))
                                       (_g2651326849_ _g2651526853_))))
                               (_g2651326849_ _g2651526853_))))
                       (_g2651326849_ _g2651526853_)))))
            (_g2651226931_ _stx26510_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx26939_)
      (let ((_g2694326967_
             (lambda (_g2694426963_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2694426963_))))
        (let ((_g2694227052_
               (lambda (_g2694426971_)
                 (if (gx#stx-pair? _g2694426971_)
                     (let ((_e2694726974_ (gx#syntax-e _g2694426971_)))
                       (let ((_hd2694826978_ (##car _e2694726974_))
                             (_tl2694926981_ (##cdr _e2694726974_)))
                         (if (gx#stx-pair? _tl2694926981_)
                             (let ((_e2695026984_
                                    (gx#syntax-e _tl2694926981_)))
                               (let ((_hd2695126988_ (##car _e2695026984_))
                                     (_tl2695226991_ (##cdr _e2695026984_)))
                                 (if (gx#stx-pair/null? _tl2695226991_)
                                     (if (fx>= (gx#stx-length _tl2695226991_)
                                               '0)
                                         (let ((_g29535_
                                                (gx#syntax-split-splice
                                                 _tl2695226991_
                                                 '0)))
                                           (begin
                                             (let ((_g29536_
                                                    (values-count _g29535_)))
                                               (if (not (fx= _g29536_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29536_)))
                                             (let ((_target2695326994_
                                                    (values-ref _g29535_ 0))
                                                   (_tl2695526997_
                                                    (values-ref _g29535_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2695526997_)
                                                   (letrec ((_loop2695627000_
                                                             (lambda (_hd2695427004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2696027007_)
                       (if (gx#stx-pair? _hd2695427004_)
                           (let ((_e2695727010_ (gx#syntax-e _hd2695427004_)))
                             (let ((_lp-hd2695827014_ (##car _e2695727010_))
                                   (_lp-tl2695927017_ (##cdr _e2695727010_)))
                               (_loop2695627000_
                                _lp-tl2695927017_
                                (cons _lp-hd2695827014_ _body2696027007_))))
                           (let ((_body2696127020_ (reverse _body2696027007_)))
                             ((lambda (_L27024_ _L27026_)
                                (if (gx#identifier? _L27026_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27026_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2704327046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2704427049_)
                               (cons _g2704327046_ _g2704427049_))
                             '()
                             _L27024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2694326967_ _g2694426971_)))
                              _body2696127020_
                              _hd2695126988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2695627000_
                                                      _target2695326994_
                                                      '()))
                                                   (_g2694326967_
                                                    _g2694426971_)))))
                                         (_g2694326967_ _g2694426971_))
                                     (_g2694326967_ _g2694426971_))))
                             (_g2694326967_ _g2694426971_))))
                     (_g2694326967_ _g2694426971_)))))
          (_g2694227052_ _$stx26939_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27057_)
      (let ((_g2706127085_
             (lambda (_g2706227081_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2706227081_))))
        (let ((_g2706027170_
               (lambda (_g2706227089_)
                 (if (gx#stx-pair? _g2706227089_)
                     (let ((_e2706527092_ (gx#syntax-e _g2706227089_)))
                       (let ((_hd2706627096_ (##car _e2706527092_))
                             (_tl2706727099_ (##cdr _e2706527092_)))
                         (if (gx#stx-pair? _tl2706727099_)
                             (let ((_e2706827102_
                                    (gx#syntax-e _tl2706727099_)))
                               (let ((_hd2706927106_ (##car _e2706827102_))
                                     (_tl2707027109_ (##cdr _e2706827102_)))
                                 (if (gx#stx-pair/null? _tl2707027109_)
                                     (if (fx>= (gx#stx-length _tl2707027109_)
                                               '0)
                                         (let ((_g29537_
                                                (gx#syntax-split-splice
                                                 _tl2707027109_
                                                 '0)))
                                           (begin
                                             (let ((_g29538_
                                                    (values-count _g29537_)))
                                               (if (not (fx= _g29538_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29538_)))
                                             (let ((_target2707127112_
                                                    (values-ref _g29537_ 0))
                                                   (_tl2707327115_
                                                    (values-ref _g29537_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2707327115_)
                                                   (letrec ((_loop2707427118_
                                                             (lambda (_hd2707227122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2707827125_)
                       (if (gx#stx-pair? _hd2707227122_)
                           (let ((_e2707527128_ (gx#syntax-e _hd2707227122_)))
                             (let ((_lp-hd2707627132_ (##car _e2707527128_))
                                   (_lp-tl2707727135_ (##cdr _e2707527128_)))
                               (_loop2707427118_
                                _lp-tl2707727135_
                                (cons _lp-hd2707627132_ _body2707827125_))))
                           (let ((_body2707927138_ (reverse _body2707827125_)))
                             ((lambda (_L27142_ _L27144_)
                                (if (gx#identifier? _L27144_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27144_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2716127164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2716227167_)
                               (cons _g2716127164_ _g2716227167_))
                             '()
                             _L27142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2706127085_ _g2706227089_)))
                              _body2707927138_
                              _hd2706927106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2707427118_
                                                      _target2707127112_
                                                      '()))
                                                   (_g2706127085_
                                                    _g2706227089_)))))
                                         (_g2706127085_ _g2706227089_))
                                     (_g2706127085_ _g2706227089_))))
                             (_g2706127085_ _g2706227089_))))
                     (_g2706127085_ _g2706227089_)))))
          (_g2706027170_ _$stx27057_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27175_)
      (let ((_g2717927197_
             (lambda (_g2718027193_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2718027193_))))
        (let ((_g2717827252_
               (lambda (_g2718027201_)
                 (if (gx#stx-pair? _g2718027201_)
                     (let ((_e2718327204_ (gx#syntax-e _g2718027201_)))
                       (let ((_hd2718427208_ (##car _e2718327204_))
                             (_tl2718527211_ (##cdr _e2718327204_)))
                         (if (gx#stx-pair? _tl2718527211_)
                             (let ((_e2718627214_
                                    (gx#syntax-e _tl2718527211_)))
                               (let ((_hd2718727218_ (##car _e2718627214_))
                                     (_tl2718827221_ (##cdr _e2718627214_)))
                                 (if (gx#stx-pair? _tl2718827221_)
                                     (let ((_e2718927224_
                                            (gx#syntax-e _tl2718827221_)))
                                       (let ((_hd2719027228_
                                              (##car _e2718927224_))
                                             (_tl2719127231_
                                              (##cdr _e2718927224_)))
                                         (if (gx#stx-null? _tl2719127231_)
                                             ((lambda (_L27234_ _L27236_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27236_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27234_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2719027228_
                                              _hd2718727218_)
                                             (_g2717927197_ _g2718027201_))))
                                     (_g2717927197_ _g2718027201_))))
                             (_g2717927197_ _g2718027201_))))
                     (_g2717927197_ _g2718027201_)))))
          (_g2717827252_ _$stx27175_))))))
