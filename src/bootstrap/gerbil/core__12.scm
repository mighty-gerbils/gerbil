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
    (lambda _$args26017_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26017_)))
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
    (lambda _$args26013_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26013_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26010_)
      (if (gx#identifier? _stx26010_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26010_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26007_)
      (if (gx#identifier? _stx26007_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26007_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26021_)
      (let ((_g2602726086_
             (lambda (_g2602826082_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2602826082_))))
        (let ((_g2602626141_
               (lambda (_g2602826090_)
                 (if (gx#stx-pair? _g2602826090_)
                     (let ((_e2607226093_ (gx#syntax-e _g2602826090_)))
                       (let ((_hd2607326097_ (##car _e2607226093_))
                             (_tl2607426100_ (##cdr _e2607226093_)))
                         (if (gx#stx-pair? _tl2607426100_)
                             (let ((_e2607526103_
                                    (gx#syntax-e _tl2607426100_)))
                               (let ((_hd2607626107_ (##car _e2607526103_))
                                     (_tl2607726110_ (##cdr _e2607526103_)))
                                 (if (gx#stx-pair? _tl2607726110_)
                                     (let ((_e2607826113_
                                            (gx#syntax-e _tl2607726110_)))
                                       (let ((_hd2607926117_
                                              (##car _e2607826113_))
                                             (_tl2608026120_
                                              (##cdr _e2607826113_)))
                                         (if (gx#stx-null? _tl2608026120_)
                                             ((lambda (_L26123_ _L26125_)
                                                (if (gx#identifier? _L26125_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26125_
                                                                (cons _L26123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2602726086_
                                                     _g2602826090_)))
                                              _hd2607926117_
                                              _hd2607626107_)
                                             (_g2602726086_ _g2602826090_))))
                                     (_g2602726086_ _g2602826090_))))
                             (_g2602726086_ _g2602826090_))))
                     (_g2602726086_ _g2602826090_)))))
          (let ((_g2602526181_
                 (lambda (_g2602826145_)
                   (if (gx#stx-pair? _g2602826145_)
                       (let ((_e2606426148_ (gx#syntax-e _g2602826145_)))
                         (let ((_hd2606526152_ (##car _e2606426148_))
                               (_tl2606626155_ (##cdr _e2606426148_)))
                           (if (gx#stx-pair? _tl2606626155_)
                               (let ((_e2606726158_
                                      (gx#syntax-e _tl2606626155_)))
                                 (let ((_hd2606826162_ (##car _e2606726158_))
                                       (_tl2606926165_ (##cdr _e2606726158_)))
                                   ((lambda (_L26168_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26168_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26168_)
                                           _stx26021_)
                                          (_g2602626141_ _g2602826145_)))
                                    _hd2606826162_)))
                               (_g2602626141_ _g2602826145_))))
                       (_g2602626141_ _g2602826145_)))))
            (let ((_g2602426322_
                   (lambda (_g2602826185_)
                     (if (gx#stx-pair? _g2602826185_)
                         (let ((_e2604226188_ (gx#syntax-e _g2602826185_)))
                           (let ((_hd2604326192_ (##car _e2604226188_))
                                 (_tl2604426195_ (##cdr _e2604226188_)))
                             (if (gx#stx-pair? _tl2604426195_)
                                 (let ((_e2604526198_
                                        (gx#syntax-e _tl2604426195_)))
                                   (let ((_hd2604626202_ (##car _e2604526198_))
                                         (_tl2604726205_
                                          (##cdr _e2604526198_)))
                                     (if (gx#stx-pair? _hd2604626202_)
                                         (let ((_e2604826208_
                                                (gx#syntax-e _hd2604626202_)))
                                           (let ((_hd2604926212_
                                                  (##car _e2604826208_))
                                                 (_tl2605026215_
                                                  (##cdr _e2604826208_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2605026215_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2605026215_)
                                                           '0)
                                                     (let ((_g29601_
                                                            (gx#syntax-split-splice
                                                             _tl2605026215_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29602_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29601_)))
                   (if (not (fx= _g29602_ 2))
                       (error "Context expects 2 values" _g29602_)))
                 (let ((_target2605126218_ (values-ref _g29601_ 0))
                       (_tl2605326221_ (values-ref _g29601_ 1)))
                   (if (gx#stx-null? _tl2605326221_)
                       (letrec ((_loop2605426224_
                                 (lambda (_hd2605226228_ _arg2605826231_)
                                   (if (gx#stx-pair? _hd2605226228_)
                                       (let ((_e2605526234_
                                              (gx#syntax-e _hd2605226228_)))
                                         (let ((_lp-hd2605626238_
                                                (##car _e2605526234_))
                                               (_lp-tl2605726241_
                                                (##cdr _e2605526234_)))
                                           (_loop2605426224_
                                            _lp-tl2605726241_
                                            (cons _lp-hd2605626238_
                                                  _arg2605826231_))))
                                       (let ((_arg2605926244_
                                              (reverse _arg2605826231_)))
                                         (if (gx#stx-pair? _tl2604726205_)
                                             (let ((_e2606026248_
                                                    (gx#syntax-e
                                                     _tl2604726205_)))
                                               (let ((_hd2606126252_
                                                      (##car _e2606026248_))
                                                     (_tl2606226255_
                                                      (##cdr _e2606026248_)))
                                                 (if (gx#stx-null?
                                                      _tl2606226255_)
                                                     ((lambda (_L26258_
                                                               _L26260_
                                                               _L26261_)
                                                        (if (gx#identifier?
                                                             _L26261_)
                                                            (let ((_g2628326291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2628426287_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2628426287_))))
                      (let ((_g2628226318_
                             (lambda (_g2628426295_)
                               ((lambda (_L26298_)
                                  (let ()
                                    (cons _L26298_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2630926312_
                                                            _g2631026315_)
                                                     (cons _g2630926312_
                                                           _g2631026315_))
                                                   (cons _L26258_ '())
                                                   _L26260_)))))
                                _g2628426295_))))
                        (_g2628226318_
                         (gx#stx-identifier _L26261_ _L26261_ '"-set!"))))
                    (_g2602526181_ _g2602826185_)))
              _hd2606126252_
              _arg2605926244_
              _hd2604926212_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2602526181_
                                                      _g2602826185_))))
                                             (_g2602526181_
                                              _g2602826185_)))))))
                         (_loop2605426224_ _target2605126218_ '()))
                       (_g2602526181_ _g2602826185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2602526181_
                                                      _g2602826185_))
                                                 (_g2602526181_
                                                  _g2602826185_))))
                                         (_g2602526181_ _g2602826185_))))
                                 (_g2602526181_ _g2602826185_))))
                         (_g2602526181_ _g2602826185_)))))
              (let ((_g2602326374_
                     (lambda (_g2602826326_)
                       (if (gx#stx-pair? _g2602826326_)
                           (let ((_e2603026329_ (gx#syntax-e _g2602826326_)))
                             (let ((_hd2603126333_ (##car _e2603026329_))
                                   (_tl2603226336_ (##cdr _e2603026329_)))
                               (if (gx#stx-pair? _tl2603226336_)
                                   (let ((_e2603326339_
                                          (gx#syntax-e _tl2603226336_)))
                                     (let ((_hd2603426343_
                                            (##car _e2603326339_))
                                           (_tl2603526346_
                                            (##cdr _e2603326339_)))
                                       (if (gx#stx-pair? _hd2603426343_)
                                           (let ((_e2603626349_
                                                  (gx#syntax-e
                                                   _hd2603426343_)))
                                             (let ((_hd2603726353_
                                                    (##car _e2603626349_))
                                                   (_tl2603826356_
                                                    (##cdr _e2603626349_)))
                                               ((lambda (_L26359_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26359_)
                                                       _stx26021_)
                                                      (_g2602426322_
                                                       _g2602826326_)))
                                                _hd2603726353_)))
                                           (_g2602426322_ _g2602826326_))))
                                   (_g2602426322_ _g2602826326_))))
                           (_g2602426322_ _g2602826326_)))))
                (_g2602326374_ _stx26021_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26379_)
      (let ((_g2638226406_
             (lambda (_g2638326402_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2638326402_))))
        (let ((_g2638126584_
               (lambda (_g2638326410_)
                 (if (gx#stx-pair? _g2638326410_)
                     (let ((_e2638626413_ (gx#syntax-e _g2638326410_)))
                       (let ((_hd2638726417_ (##car _e2638626413_))
                             (_tl2638826420_ (##cdr _e2638626413_)))
                         (if (gx#stx-pair/null? _tl2638826420_)
                             (if (fx>= (gx#stx-length _tl2638826420_) '1)
                                 (let ((_g29603_
                                        (gx#syntax-split-splice
                                         _tl2638826420_
                                         '1)))
                                   (begin
                                     (let ((_g29604_ (values-count _g29603_)))
                                       (if (not (fx= _g29604_ 2))
                                           (error "Context expects 2 values"
                                                  _g29604_)))
                                     (let ((_target2638926423_
                                            (values-ref _g29603_ 0))
                                           (_tl2639126426_
                                            (values-ref _g29603_ 1)))
                                       (if (gx#stx-pair? _tl2639126426_)
                                           (let ((_e2639826429_
                                                  (gx#syntax-e
                                                   _tl2639126426_)))
                                             (let ((_hd2639926433_
                                                    (##car _e2639826429_))
                                                   (_tl2640026436_
                                                    (##cdr _e2639826429_)))
                                               (if (gx#stx-null?
                                                    _tl2640026436_)
                                                   (letrec ((_loop2639226439_
                                                             (lambda (_hd2639026443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2639626446_)
                       (if (gx#stx-pair? _hd2639026443_)
                           (let ((_e2639326449_ (gx#syntax-e _hd2639026443_)))
                             (let ((_lp-hd2639426453_ (##car _e2639326449_))
                                   (_lp-tl2639526456_ (##cdr _e2639326449_)))
                               (_loop2639226439_
                                _lp-tl2639526456_
                                (cons _lp-hd2639426453_ _tgt2639626446_))))
                           (let ((_tgt2639726459_ (reverse _tgt2639626446_)))
                             ((lambda (_L26463_ _L26465_)
                                (let ((_g2648326500_
                                       (lambda (_g2648426496_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2648426496_))))
                                  (let ((_g2648226572_
                                         (lambda (_g2648426504_)
                                           (if (gx#stx-pair/null?
                                                _g2648426504_)
                                               (if (fx>= (gx#stx-length
                                                          _g2648426504_)
                                                         '0)
                                                   (let ((_g29605_
                                                          (gx#syntax-split-splice
                                                           _g2648426504_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29606_
                                                              (values-count
                                                               _g29605_)))
                                                         (if (not (fx= _g29606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29606_)))
               (let ((_target2648626507_ (values-ref _g29605_ 0))
                     (_tl2648826510_ (values-ref _g29605_ 1)))
                 (if (gx#stx-null? _tl2648826510_)
                     (letrec ((_loop2648926513_
                               (lambda (_hd2648726517_ _$e2649326520_)
                                 (if (gx#stx-pair? _hd2648726517_)
                                     (let ((_e2649026523_
                                            (gx#syntax-e _hd2648726517_)))
                                       (let ((_lp-hd2649126527_
                                              (##car _e2649026523_))
                                             (_lp-tl2649226530_
                                              (##cdr _e2649026523_)))
                                         (_loop2648926513_
                                          _lp-tl2649226530_
                                          (cons _lp-hd2649126527_
                                                _$e2649326520_))))
                                     (let ((_$e2649426533_
                                            (reverse _$e2649326520_)))
                                       ((lambda (_L26537_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2655226558_ _g2655326561_)
                                       (cons _g2655226558_ _g2655326561_))
                                     '()
                                     _L26537_))
                            (cons _L26463_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26537_ _L26465_)
                  (foldr (lambda (_g2655426564_ _g2655526567_ _g2655626569_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2655526567_
                                             (cons _g2655426564_ '())))
                                 _g2655626569_))
                         '()
                         _L26537_
                         _L26465_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2649426533_))))))
                       (_loop2648926513_ _target2648626507_ '()))
                     (_g2648326500_ _g2648426504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2648326500_
                                                    _g2648426504_))
                                               (_g2648326500_
                                                _g2648426504_)))))
                                    (_g2648226572_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2657526578_
                                                        _g2657626581_)
                                                 (cons _g2657526578_
                                                       _g2657626581_))
                                               '()
                                               _L26465_)))))))
                              _hd2639926433_
                              _tgt2639726459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2639226439_
                                                      _target2638926423_
                                                      '()))
                                                   (_g2638226406_
                                                    _g2638326410_))))
                                           (_g2638226406_ _g2638326410_)))))
                                 (_g2638226406_ _g2638326410_))
                             (_g2638226406_ _g2638326410_))))
                     (_g2638226406_ _g2638326410_)))))
          (_g2638126584_ _stx26379_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26590_)
      (let ((_g2659426652_
             (lambda (_g2659526648_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2659526648_))))
        (let ((_g2659326929_
               (lambda (_g2659526656_)
                 (if (gx#stx-pair? _g2659526656_)
                     (let ((_e2661526659_ (gx#syntax-e _g2659526656_)))
                       (let ((_hd2661626663_ (##car _e2661526659_))
                             (_tl2661726666_ (##cdr _e2661526659_)))
                         (if (gx#stx-pair? _tl2661726666_)
                             (let ((_e2661826669_
                                    (gx#syntax-e _tl2661726666_)))
                               (let ((_hd2661926673_ (##car _e2661826669_))
                                     (_tl2662026676_ (##cdr _e2661826669_)))
                                 (if (gx#stx-pair/null? _hd2661926673_)
                                     (if (fx>= (gx#stx-length _hd2661926673_)
                                               '0)
                                         (let ((_g29607_
                                                (gx#syntax-split-splice
                                                 _hd2661926673_
                                                 '0)))
                                           (begin
                                             (let ((_g29608_
                                                    (values-count _g29607_)))
                                               (if (not (fx= _g29608_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29608_)))
                                             (let ((_target2662126679_
                                                    (values-ref _g29607_ 0))
                                                   (_tl2662326682_
                                                    (values-ref _g29607_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2662326682_)
                                                   (letrec ((_loop2662426685_
                                                             (lambda (_hd2662226689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2662826692_
                              _param2662926694_)
                       (if (gx#stx-pair? _hd2662226689_)
                           (let ((_e2662526697_ (gx#syntax-e _hd2662226689_)))
                             (let ((_lp-hd2662626701_ (##car _e2662526697_))
                                   (_lp-tl2662726704_ (##cdr _e2662526697_)))
                               (if (gx#stx-pair? _lp-hd2662626701_)
                                   (let ((_e2663226707_
                                          (gx#syntax-e _lp-hd2662626701_)))
                                     (let ((_hd2663326711_
                                            (##car _e2663226707_))
                                           (_tl2663426714_
                                            (##cdr _e2663226707_)))
                                       (if (gx#stx-pair? _tl2663426714_)
                                           (let ((_e2663526717_
                                                  (gx#syntax-e
                                                   _tl2663426714_)))
                                             (let ((_hd2663626721_
                                                    (##car _e2663526717_))
                                                   (_tl2663726724_
                                                    (##cdr _e2663526717_)))
                                               (if (gx#stx-null?
                                                    _tl2663726724_)
                                                   (_loop2662426685_
                                                    _lp-tl2662726704_
                                                    (cons _hd2663626721_
                                                          _expr2662826692_)
                                                    (cons _hd2663326711_
                                                          _param2662926694_))
                                                   (_g2659426652_
                                                    _g2659526656_))))
                                           (_g2659426652_ _g2659526656_))))
                                   (_g2659426652_ _g2659526656_))))
                           (let ((_expr2663026727_ (reverse _expr2662826692_))
                                 (_param2663126730_
                                  (reverse _param2662926694_)))
                             (if (gx#stx-pair/null? _tl2662026676_)
                                 (if (fx>= (gx#stx-length _tl2662026676_) '0)
                                     (let ((_g29609_
                                            (gx#syntax-split-splice
                                             _tl2662026676_
                                             '0)))
                                       (begin
                                         (let ((_g29610_
                                                (values-count _g29609_)))
                                           (if (not (fx= _g29610_ 2))
                                               (error "Context expects 2 values"
                                                      _g29610_)))
                                         (let ((_target2663826733_
                                                (values-ref _g29609_ 0))
                                               (_tl2664026736_
                                                (values-ref _g29609_ 1)))
                                           (if (gx#stx-null? _tl2664026736_)
                                               (letrec ((_loop2664126739_
                                                         (lambda (_hd2663926743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2664526746_)
                   (if (gx#stx-pair? _hd2663926743_)
                       (let ((_e2664226749_ (gx#syntax-e _hd2663926743_)))
                         (let ((_lp-hd2664326753_ (##car _e2664226749_))
                               (_lp-tl2664426756_ (##cdr _e2664226749_)))
                           (_loop2664126739_
                            _lp-tl2664426756_
                            (cons _lp-hd2664326753_ _body2664526746_))))
                       (let ((_body2664626759_ (reverse _body2664526746_)))
                         ((lambda (_L26763_ _L26765_ _L26766_)
                            (let ((_g2678926797_
                                   (lambda (_g2679026793_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2679026793_))))
                              (let ((_g2678826917_
                                     (lambda (_g2679026801_)
                                       ((lambda (_L26804_)
                                          (let ()
                                            (let ((_g2681626833_
                                                   (lambda (_g2681726829_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2681726829_))))
                                              (let ((_g2681526897_
                                                     (lambda (_g2681726837_)
                                                       (if (gx#stx-pair/null?
                                                            _g2681726837_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2681726837_)
                             '0)
                       (let ((_g29611_
                              (gx#syntax-split-splice _g2681726837_ '0)))
                         (begin
                           (let ((_g29612_ (values-count _g29611_)))
                             (if (not (fx= _g29612_ 2))
                                 (error "Context expects 2 values" _g29612_)))
                           (let ((_target2681926840_ (values-ref _g29611_ 0))
                                 (_tl2682126843_ (values-ref _g29611_ 1)))
                             (if (gx#stx-null? _tl2682126843_)
                                 (letrec ((_loop2682226846_
                                           (lambda (_hd2682026850_
                                                    _arg2682626853_)
                                             (if (gx#stx-pair? _hd2682026850_)
                                                 (let ((_e2682326856_
                                                        (gx#syntax-e
                                                         _hd2682026850_)))
                                                   (let ((_lp-hd2682426860_
                                                          (##car _e2682326856_))
                                                         (_lp-tl2682526863_
                                                          (##cdr _e2682326856_)))
                                                     (_loop2682226846_
                                                      _lp-tl2682526863_
                                                      (cons _lp-hd2682426860_
                                                            _arg2682626853_))))
                                                 (let ((_arg2682726866_
                                                        (reverse _arg2682626853_)))
                                                   ((lambda (_L26870_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26804_
                              (begin
                                '#!void
                                (foldr (lambda (_g2688826891_ _g2688926894_)
                                         (cons _g2688826891_ _g2688926894_))
                                       '()
                                       _L26870_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2682726866_))))))
                                   (_loop2682226846_ _target2681926840_ '()))
                                 (_g2681626833_ _g2681726837_)))))
                       (_g2681626833_ _g2681726837_))
                   (_g2681626833_ _g2681726837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2681526897_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2690026903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2690126906_)
                            (cons _g2690026903_ _g2690126906_))
                          '()
                          _L26766_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2690826911_ _g2690926914_)
                            (cons _g2690826911_ _g2690926914_))
                          '()
                          _L26765_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2679026801_))))
                                (_g2678826917_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2692026923_
                                                                _g2692126926_)
                                                         (cons _g2692026923_
                                                               _g2692126926_))
                                                       '()
                                                       _L26763_))))
                                  (gx#stx-source _stx26590_))))))
                          _body2664626759_
                          _expr2663026727_
                          _param2663126730_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2664126739_
                                                  _target2663826733_
                                                  '()))
                                               (_g2659426652_
                                                _g2659526656_)))))
                                     (_g2659426652_ _g2659526656_))
                                 (_g2659426652_ _g2659526656_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2662426685_
                                                      _target2662126679_
                                                      '()
                                                      '()))
                                                   (_g2659426652_
                                                    _g2659526656_)))))
                                         (_g2659426652_ _g2659526656_))
                                     (_g2659426652_ _g2659526656_))))
                             (_g2659426652_ _g2659526656_))))
                     (_g2659426652_ _g2659526656_)))))
          (let ((_g2659227011_
                 (lambda (_g2659526933_)
                   (if (gx#stx-pair? _g2659526933_)
                       (let ((_e2659726936_ (gx#syntax-e _g2659526933_)))
                         (let ((_hd2659826940_ (##car _e2659726936_))
                               (_tl2659926943_ (##cdr _e2659726936_)))
                           (if (gx#stx-pair? _tl2659926943_)
                               (let ((_e2660026946_
                                      (gx#syntax-e _tl2659926943_)))
                                 (let ((_hd2660126950_ (##car _e2660026946_))
                                       (_tl2660226953_ (##cdr _e2660026946_)))
                                   (if (gx#stx-null? _hd2660126950_)
                                       (if (gx#stx-pair/null? _tl2660226953_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2660226953_)
                                                     '0)
                                               (let ((_g29613_
                                                      (gx#syntax-split-splice
                                                       _tl2660226953_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29614_
                                                          (values-count
                                                           _g29613_)))
                                                     (if (not (fx= _g29614_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29614_)))
                                                   (let ((_target2660326956_
                                                          (values-ref
                                                           _g29613_
                                                           0))
                                                         (_tl2660526959_
                                                          (values-ref
                                                           _g29613_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2660526959_)
                                                         (letrec ((_loop2660626962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2660426966_ _body2661026969_)
                             (if (gx#stx-pair? _hd2660426966_)
                                 (let ((_e2660726972_
                                        (gx#syntax-e _hd2660426966_)))
                                   (let ((_lp-hd2660826976_
                                          (##car _e2660726972_))
                                         (_lp-tl2660926979_
                                          (##cdr _e2660726972_)))
                                     (_loop2660626962_
                                      _lp-tl2660926979_
                                      (cons _lp-hd2660826976_
                                            _body2661026969_))))
                                 (let ((_body2661126982_
                                        (reverse _body2661026969_)))
                                   ((lambda (_L26986_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2700227005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2700327008_)
                     (cons _g2700227005_ _g2700327008_))
                   '()
                   _L26986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2661126982_))))))
                   (_loop2660626962_ _target2660326956_ '()))
                 (_g2659326929_ _g2659526933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2659326929_ _g2659526933_))
                                           (_g2659326929_ _g2659526933_))
                                       (_g2659326929_ _g2659526933_))))
                               (_g2659326929_ _g2659526933_))))
                       (_g2659326929_ _g2659526933_)))))
            (_g2659227011_ _stx26590_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27019_)
      (let ((_g2702327047_
             (lambda (_g2702427043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2702427043_))))
        (let ((_g2702227132_
               (lambda (_g2702427051_)
                 (if (gx#stx-pair? _g2702427051_)
                     (let ((_e2702727054_ (gx#syntax-e _g2702427051_)))
                       (let ((_hd2702827058_ (##car _e2702727054_))
                             (_tl2702927061_ (##cdr _e2702727054_)))
                         (if (gx#stx-pair? _tl2702927061_)
                             (let ((_e2703027064_
                                    (gx#syntax-e _tl2702927061_)))
                               (let ((_hd2703127068_ (##car _e2703027064_))
                                     (_tl2703227071_ (##cdr _e2703027064_)))
                                 (if (gx#stx-pair/null? _tl2703227071_)
                                     (if (fx>= (gx#stx-length _tl2703227071_)
                                               '0)
                                         (let ((_g29615_
                                                (gx#syntax-split-splice
                                                 _tl2703227071_
                                                 '0)))
                                           (begin
                                             (let ((_g29616_
                                                    (values-count _g29615_)))
                                               (if (not (fx= _g29616_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29616_)))
                                             (let ((_target2703327074_
                                                    (values-ref _g29615_ 0))
                                                   (_tl2703527077_
                                                    (values-ref _g29615_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2703527077_)
                                                   (letrec ((_loop2703627080_
                                                             (lambda (_hd2703427084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2704027087_)
                       (if (gx#stx-pair? _hd2703427084_)
                           (let ((_e2703727090_ (gx#syntax-e _hd2703427084_)))
                             (let ((_lp-hd2703827094_ (##car _e2703727090_))
                                   (_lp-tl2703927097_ (##cdr _e2703727090_)))
                               (_loop2703627080_
                                _lp-tl2703927097_
                                (cons _lp-hd2703827094_ _body2704027087_))))
                           (let ((_body2704127100_ (reverse _body2704027087_)))
                             ((lambda (_L27104_ _L27106_)
                                (if (gx#identifier? _L27106_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27106_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2712327126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2712427129_)
                               (cons _g2712327126_ _g2712427129_))
                             '()
                             _L27104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2702327047_ _g2702427051_)))
                              _body2704127100_
                              _hd2703127068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2703627080_
                                                      _target2703327074_
                                                      '()))
                                                   (_g2702327047_
                                                    _g2702427051_)))))
                                         (_g2702327047_ _g2702427051_))
                                     (_g2702327047_ _g2702427051_))))
                             (_g2702327047_ _g2702427051_))))
                     (_g2702327047_ _g2702427051_)))))
          (_g2702227132_ _$stx27019_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27137_)
      (let ((_g2714127165_
             (lambda (_g2714227161_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2714227161_))))
        (let ((_g2714027250_
               (lambda (_g2714227169_)
                 (if (gx#stx-pair? _g2714227169_)
                     (let ((_e2714527172_ (gx#syntax-e _g2714227169_)))
                       (let ((_hd2714627176_ (##car _e2714527172_))
                             (_tl2714727179_ (##cdr _e2714527172_)))
                         (if (gx#stx-pair? _tl2714727179_)
                             (let ((_e2714827182_
                                    (gx#syntax-e _tl2714727179_)))
                               (let ((_hd2714927186_ (##car _e2714827182_))
                                     (_tl2715027189_ (##cdr _e2714827182_)))
                                 (if (gx#stx-pair/null? _tl2715027189_)
                                     (if (fx>= (gx#stx-length _tl2715027189_)
                                               '0)
                                         (let ((_g29617_
                                                (gx#syntax-split-splice
                                                 _tl2715027189_
                                                 '0)))
                                           (begin
                                             (let ((_g29618_
                                                    (values-count _g29617_)))
                                               (if (not (fx= _g29618_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29618_)))
                                             (let ((_target2715127192_
                                                    (values-ref _g29617_ 0))
                                                   (_tl2715327195_
                                                    (values-ref _g29617_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2715327195_)
                                                   (letrec ((_loop2715427198_
                                                             (lambda (_hd2715227202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2715827205_)
                       (if (gx#stx-pair? _hd2715227202_)
                           (let ((_e2715527208_ (gx#syntax-e _hd2715227202_)))
                             (let ((_lp-hd2715627212_ (##car _e2715527208_))
                                   (_lp-tl2715727215_ (##cdr _e2715527208_)))
                               (_loop2715427198_
                                _lp-tl2715727215_
                                (cons _lp-hd2715627212_ _body2715827205_))))
                           (let ((_body2715927218_ (reverse _body2715827205_)))
                             ((lambda (_L27222_ _L27224_)
                                (if (gx#identifier? _L27224_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27224_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2724127244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2724227247_)
                               (cons _g2724127244_ _g2724227247_))
                             '()
                             _L27222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2714127165_ _g2714227169_)))
                              _body2715927218_
                              _hd2714927186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2715427198_
                                                      _target2715127192_
                                                      '()))
                                                   (_g2714127165_
                                                    _g2714227169_)))))
                                         (_g2714127165_ _g2714227169_))
                                     (_g2714127165_ _g2714227169_))))
                             (_g2714127165_ _g2714227169_))))
                     (_g2714127165_ _g2714227169_)))))
          (_g2714027250_ _$stx27137_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27255_)
      (let ((_g2725927277_
             (lambda (_g2726027273_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2726027273_))))
        (let ((_g2725827332_
               (lambda (_g2726027281_)
                 (if (gx#stx-pair? _g2726027281_)
                     (let ((_e2726327284_ (gx#syntax-e _g2726027281_)))
                       (let ((_hd2726427288_ (##car _e2726327284_))
                             (_tl2726527291_ (##cdr _e2726327284_)))
                         (if (gx#stx-pair? _tl2726527291_)
                             (let ((_e2726627294_
                                    (gx#syntax-e _tl2726527291_)))
                               (let ((_hd2726727298_ (##car _e2726627294_))
                                     (_tl2726827301_ (##cdr _e2726627294_)))
                                 (if (gx#stx-pair? _tl2726827301_)
                                     (let ((_e2726927304_
                                            (gx#syntax-e _tl2726827301_)))
                                       (let ((_hd2727027308_
                                              (##car _e2726927304_))
                                             (_tl2727127311_
                                              (##cdr _e2726927304_)))
                                         (if (gx#stx-null? _tl2727127311_)
                                             ((lambda (_L27314_ _L27316_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27316_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27314_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2727027308_
                                              _hd2726727298_)
                                             (_g2725927277_ _g2726027281_))))
                                     (_g2725927277_ _g2726027281_))))
                             (_g2725927277_ _g2726027281_))))
                     (_g2725927277_ _g2726027281_)))))
          (_g2725827332_ _$stx27255_))))))
