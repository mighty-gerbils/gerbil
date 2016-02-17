(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27125_)
      (let ((_g2713027149_
             (lambda (_g2713127145_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2713127145_))))
        (let ((_g2712927195_
               (lambda (_g2713127153_)
                 (if (gx#stx-pair? _g2713127153_)
                     (let ((_e2713827156_ (gx#syntax-e _g2713127153_)))
                       (let ((_hd2713927160_ (##car _e2713827156_))
                             (_tl2714027163_ (##cdr _e2713827156_)))
                         (if (gx#stx-pair? _tl2714027163_)
                             (let ((_e2714127166_
                                    (gx#syntax-e _tl2714027163_)))
                               (let ((_hd2714227170_ (##car _e2714127166_))
                                     (_tl2714327173_ (##cdr _e2714127166_)))
                                 ((lambda (_L27176_ _L27178_ _L27179_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27178_
                                                      (cons (cons _L27179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27176_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'else)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax-error)
                                (cons '"Missing required feature"
                                      (cons _L27178_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2714327173_
                                  _hd2714227170_
                                  _hd2713927160_)))
                             (_g2713027149_ _g2713127153_))))
                     (_g2713027149_ _g2713127153_)))))
          (let ((_g2712827216_
                 (lambda (_g2713127199_)
                   (if (gx#stx-pair? _g2713127199_)
                       (let ((_e2713227202_ (gx#syntax-e _g2713127199_)))
                         (let ((_hd2713327206_ (##car _e2713227202_))
                               (_tl2713427209_ (##cdr _e2713227202_)))
                           (if (gx#stx-null? _tl2713427209_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2712927195_ _g2713127199_))))
                       (_g2712927195_ _g2713127199_)))))
            (_g2712827216_ _$stx27125_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27220_)
      (let ((_g2722527265_
             (lambda (_g2722627261_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2722627261_))))
        (let ((_g2722427366_
               (lambda (_g2722627269_)
                 (if (gx#stx-pair? _g2722627269_)
                     (let ((_e2724227272_ (gx#syntax-e _g2722627269_)))
                       (let ((_hd2724327276_ (##car _e2724227272_))
                             (_tl2724427279_ (##cdr _e2724227272_)))
                         (if (gx#stx-pair? _tl2724427279_)
                             (let ((_e2724527282_
                                    (gx#syntax-e _tl2724427279_)))
                               (let ((_hd2724627286_ (##car _e2724527282_))
                                     (_tl2724727289_ (##cdr _e2724527282_)))
                                 (if (gx#stx-pair? _hd2724627286_)
                                     (let ((_e2724827292_
                                            (gx#syntax-e _hd2724627286_)))
                                       (let ((_hd2724927296_
                                              (##car _e2724827292_))
                                             (_tl2725027299_
                                              (##cdr _e2724827292_)))
                                         (if (gx#stx-pair/null? _tl2724727289_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2724727289_)
                                                       '0)
                                                 (let ((_g28217_
                                                        (gx#syntax-split-splice
                                                         _tl2724727289_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28218_
                                                            (values-count
                                                             _g28217_)))
                                                       (if (not (fx= _g28218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2725127302_
                                                            (values-ref
                                                             _g28217_
                                                             0))
                                                           (_tl2725327305_
                                                            (values-ref
                                                             _g28217_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2725327305_)
                                                           (letrec ((_loop2725427308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2725227312_ _body2725827315_)
                               (if (gx#stx-pair? _hd2725227312_)
                                   (let ((_e2725527318_
                                          (gx#syntax-e _hd2725227312_)))
                                     (let ((_lp-hd2725627322_
                                            (##car _e2725527318_))
                                           (_lp-tl2725727325_
                                            (##cdr _e2725527318_)))
                                       (_loop2725427308_
                                        _lp-tl2725727325_
                                        (cons _lp-hd2725627322_
                                              _body2725827315_))))
                                   (let ((_body2725927328_
                                          (reverse _body2725827315_)))
                                     ((lambda (_L27332_
                                               _L27334_
                                               _L27335_
                                               _L27336_)
                                        (if (gx#identifier? _L27335_)
                                            (cons _L27336_
                                                  (cons _L27335_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27334_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2735727360_
                                                    _g2735827363_)
                                             (cons _g2735727360_
                                                   _g2735827363_))
                                           '()
                                           _L27332_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2722527265_ _g2722627269_)))
                                      _body2725927328_
                                      _tl2725027299_
                                      _hd2724927296_
                                      _hd2724327276_))))))
                     (_loop2725427308_ _target2725127302_ '()))
                   (_g2722527265_ _g2722627269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2722527265_ _g2722627269_))
                                             (_g2722527265_ _g2722627269_))))
                                     (_g2722527265_ _g2722627269_))))
                             (_g2722527265_ _g2722627269_))))
                     (_g2722527265_ _g2722627269_)))))
          (let ((_g2722327420_
                 (lambda (_g2722627370_)
                   (if (gx#stx-pair? _g2722627370_)
                       (let ((_e2722927373_ (gx#syntax-e _g2722627370_)))
                         (let ((_hd2723027377_ (##car _e2722927373_))
                               (_tl2723127380_ (##cdr _e2722927373_)))
                           (if (gx#stx-pair? _tl2723127380_)
                               (let ((_e2723227383_
                                      (gx#syntax-e _tl2723127380_)))
                                 (let ((_hd2723327387_ (##car _e2723227383_))
                                       (_tl2723427390_ (##cdr _e2723227383_)))
                                   (if (gx#stx-pair? _tl2723427390_)
                                       (let ((_e2723527393_
                                              (gx#syntax-e _tl2723427390_)))
                                         (let ((_hd2723627397_
                                                (##car _e2723527393_))
                                               (_tl2723727400_
                                                (##cdr _e2723527393_)))
                                           (if (gx#stx-null? _tl2723727400_)
                                               ((lambda (_L27403_ _L27405_)
                                                  (if (gx#identifier? _L27405_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27403_ '()))
                                '())))
              (_g2722427366_ _g2722627370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2723627397_
                                                _hd2723327387_)
                                               (_g2722427366_ _g2722627370_))))
                                       (_g2722427366_ _g2722627370_))))
                               (_g2722427366_ _g2722627370_))))
                       (_g2722427366_ _g2722627370_)))))
            (_g2722327420_ _$stx27220_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27425_)
      (let ((_g2743027470_
             (lambda (_g2743127466_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2743127466_))))
        (let ((_g2742927571_
               (lambda (_g2743127474_)
                 (if (gx#stx-pair? _g2743127474_)
                     (let ((_e2744727477_ (gx#syntax-e _g2743127474_)))
                       (let ((_hd2744827481_ (##car _e2744727477_))
                             (_tl2744927484_ (##cdr _e2744727477_)))
                         (if (gx#stx-pair? _tl2744927484_)
                             (let ((_e2745027487_
                                    (gx#syntax-e _tl2744927484_)))
                               (let ((_hd2745127491_ (##car _e2745027487_))
                                     (_tl2745227494_ (##cdr _e2745027487_)))
                                 (if (gx#stx-pair? _hd2745127491_)
                                     (let ((_e2745327497_
                                            (gx#syntax-e _hd2745127491_)))
                                       (let ((_hd2745427501_
                                              (##car _e2745327497_))
                                             (_tl2745527504_
                                              (##cdr _e2745327497_)))
                                         (if (gx#stx-pair/null? _tl2745227494_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2745227494_)
                                                       '0)
                                                 (let ((_g28219_
                                                        (gx#syntax-split-splice
                                                         _tl2745227494_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28220_
                                                            (values-count
                                                             _g28219_)))
                                                       (if (not (fx= _g28220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2745627507_
                                                            (values-ref
                                                             _g28219_
                                                             0))
                                                           (_tl2745827510_
                                                            (values-ref
                                                             _g28219_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2745827510_)
                                                           (letrec ((_loop2745927513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2745727517_ _body2746327520_)
                               (if (gx#stx-pair? _hd2745727517_)
                                   (let ((_e2746027523_
                                          (gx#syntax-e _hd2745727517_)))
                                     (let ((_lp-hd2746127527_
                                            (##car _e2746027523_))
                                           (_lp-tl2746227530_
                                            (##cdr _e2746027523_)))
                                       (_loop2745927513_
                                        _lp-tl2746227530_
                                        (cons _lp-hd2746127527_
                                              _body2746327520_))))
                                   (let ((_body2746427533_
                                          (reverse _body2746327520_)))
                                     ((lambda (_L27537_
                                               _L27539_
                                               _L27540_
                                               _L27541_)
                                        (if (gx#identifier? _L27540_)
                                            (cons _L27541_
                                                  (cons _L27540_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27539_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2756227565_
                                                    _g2756327568_)
                                             (cons _g2756227565_
                                                   _g2756327568_))
                                           '()
                                           _L27537_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2743027470_ _g2743127474_)))
                                      _body2746427533_
                                      _tl2745527504_
                                      _hd2745427501_
                                      _hd2744827481_))))))
                     (_loop2745927513_ _target2745627507_ '()))
                   (_g2743027470_ _g2743127474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2743027470_ _g2743127474_))
                                             (_g2743027470_ _g2743127474_))))
                                     (_g2743027470_ _g2743127474_))))
                             (_g2743027470_ _g2743127474_))))
                     (_g2743027470_ _g2743127474_)))))
          (let ((_g2742827625_
                 (lambda (_g2743127575_)
                   (if (gx#stx-pair? _g2743127575_)
                       (let ((_e2743427578_ (gx#syntax-e _g2743127575_)))
                         (let ((_hd2743527582_ (##car _e2743427578_))
                               (_tl2743627585_ (##cdr _e2743427578_)))
                           (if (gx#stx-pair? _tl2743627585_)
                               (let ((_e2743727588_
                                      (gx#syntax-e _tl2743627585_)))
                                 (let ((_hd2743827592_ (##car _e2743727588_))
                                       (_tl2743927595_ (##cdr _e2743727588_)))
                                   (if (gx#stx-pair? _tl2743927595_)
                                       (let ((_e2744027598_
                                              (gx#syntax-e _tl2743927595_)))
                                         (let ((_hd2744127602_
                                                (##car _e2744027598_))
                                               (_tl2744227605_
                                                (##cdr _e2744027598_)))
                                           (if (gx#stx-null? _tl2744227605_)
                                               ((lambda (_L27608_ _L27610_)
                                                  (if (gx#identifier? _L27610_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27608_ '()))
                                '())))
              (_g2742927571_ _g2743127575_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2744127602_
                                                _hd2743827592_)
                                               (_g2742927571_ _g2743127575_))))
                                       (_g2742927571_ _g2743127575_))))
                               (_g2742927571_ _g2743127575_))))
                       (_g2742927571_ _g2743127575_)))))
            (_g2742827625_ _$stx27425_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27630_)
       (let ((_g2763327657_
              (lambda (_g2763427653_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2763427653_))))
         (let ((_g2763227779_
                (lambda (_g2763427661_)
                  (if (gx#stx-pair? _g2763427661_)
                      (let ((_e2763727664_ (gx#syntax-e _g2763427661_)))
                        (let ((_hd2763827668_ (##car _e2763727664_))
                              (_tl2763927671_ (##cdr _e2763727664_)))
                          (if (gx#stx-pair? _tl2763927671_)
                              (let ((_e2764027674_
                                     (gx#syntax-e _tl2763927671_)))
                                (let ((_hd2764127678_ (##car _e2764027674_))
                                      (_tl2764227681_ (##cdr _e2764027674_)))
                                  (if (gx#stx-pair/null? _tl2764227681_)
                                      (if (fx>= (gx#stx-length _tl2764227681_)
                                                '0)
                                          (let ((_g28221_
                                                 (gx#syntax-split-splice
                                                  _tl2764227681_
                                                  '0)))
                                            (begin
                                              (let ((_g28222_
                                                     (values-count _g28221_)))
                                                (if (not (fx= _g28222_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28222_)))
                                              (let ((_target2764327684_
                                                     (values-ref _g28221_ 0))
                                                    (_tl2764527687_
                                                     (values-ref _g28221_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2764527687_)
                                                    (letrec ((_loop2764627690_
                                                              (lambda (_hd2764427694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2765027697_)
                        (if (gx#stx-pair? _hd2764427694_)
                            (let ((_e2764727700_ (gx#syntax-e _hd2764427694_)))
                              (let ((_lp-hd2764827704_ (##car _e2764727700_))
                                    (_lp-tl2764927707_ (##cdr _e2764727700_)))
                                (_loop2764627690_
                                 _lp-tl2764927707_
                                 (cons _lp-hd2764827704_ _id2765027697_))))
                            (let ((_id2765127710_ (reverse _id2765027697_)))
                              ((lambda (_L27714_ _L27716_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2773327736_
                                                        _g2773427739_)
                                                 (cons _g2773327736_
                                                       _g2773427739_))
                                               '()
                                               _L27714_)))
                                     (let ((_keys27750_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2774127744_
                                                               _g2774227747_)
                                                        (cons _g2774127744_
                                                              _g2774227747_))
                                                      '()
                                                      _L27714_)))))
                                       (let ((_keytab27761_
                                              (let ((_ht27753_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2775527757_)
                                                     (hash-put!
                                                      _ht27753_
                                                      _g2775527757_
                                                      '#t))
                                                   _keys27750_)
                                                  _ht27753_))))
                                         (let ((_imports27764_
                                                (gx#core-expand-import-source
                                                 _L27716_)))
                                           (let ((_fold-e27774_
                                                  (letrec ((_fold-e27767_
                                                            (lambda (_in27770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27772_)
                      (if (gx#module-import? _in27770_)
                          (if (hash-get
                               _keytab27761_
                               (gx#module-import-name _in27770_))
                              (cons _in27770_ _r27772_)
                              _r27772_)
                          (if (gx#import-set? _in27770_)
                              (foldl _fold-e27767_
                                     _r27772_
                                     (gx#import-set-imports _in27770_))
                              _r27772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27767_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27774_
                                                            '()
                                                            _imports27764_)))))))
                                     (_g2763327657_ _g2763427661_)))
                               _id2765127710_
                               _hd2764127678_))))))
              (_loop2764627690_ _target2764327684_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2763327657_
                                                     _g2763427661_)))))
                                          (_g2763327657_ _g2763427661_))
                                      (_g2763327657_ _g2763427661_))))
                              (_g2763327657_ _g2763427661_))))
                      (_g2763327657_ _g2763427661_)))))
           (_g2763227779_ _stx27630_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx27784_)
       (let ((_g2778727811_
              (lambda (_g2778827807_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2778827807_))))
         (let ((_g2778627933_
                (lambda (_g2778827815_)
                  (if (gx#stx-pair? _g2778827815_)
                      (let ((_e2779127818_ (gx#syntax-e _g2778827815_)))
                        (let ((_hd2779227822_ (##car _e2779127818_))
                              (_tl2779327825_ (##cdr _e2779127818_)))
                          (if (gx#stx-pair? _tl2779327825_)
                              (let ((_e2779427828_
                                     (gx#syntax-e _tl2779327825_)))
                                (let ((_hd2779527832_ (##car _e2779427828_))
                                      (_tl2779627835_ (##cdr _e2779427828_)))
                                  (if (gx#stx-pair/null? _tl2779627835_)
                                      (if (fx>= (gx#stx-length _tl2779627835_)
                                                '0)
                                          (let ((_g28223_
                                                 (gx#syntax-split-splice
                                                  _tl2779627835_
                                                  '0)))
                                            (begin
                                              (let ((_g28224_
                                                     (values-count _g28223_)))
                                                (if (not (fx= _g28224_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28224_)))
                                              (let ((_target2779727838_
                                                     (values-ref _g28223_ 0))
                                                    (_tl2779927841_
                                                     (values-ref _g28223_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2779927841_)
                                                    (letrec ((_loop2780027844_
                                                              (lambda (_hd2779827848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2780427851_)
                        (if (gx#stx-pair? _hd2779827848_)
                            (let ((_e2780127854_ (gx#syntax-e _hd2779827848_)))
                              (let ((_lp-hd2780227858_ (##car _e2780127854_))
                                    (_lp-tl2780327861_ (##cdr _e2780127854_)))
                                (_loop2780027844_
                                 _lp-tl2780327861_
                                 (cons _lp-hd2780227858_ _id2780427851_))))
                            (let ((_id2780527864_ (reverse _id2780427851_)))
                              ((lambda (_L27868_ _L27870_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2788727890_
                                                        _g2788827893_)
                                                 (cons _g2788727890_
                                                       _g2788827893_))
                                               '()
                                               _L27868_)))
                                     (let ((_keys27904_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2789527898_
                                                               _g2789627901_)
                                                        (cons _g2789527898_
                                                              _g2789627901_))
                                                      '()
                                                      _L27868_)))))
                                       (let ((_keytab27915_
                                              (let ((_ht27907_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2790927911_)
                                                     (hash-put!
                                                      _ht27907_
                                                      _g2790927911_
                                                      '#t))
                                                   _keys27904_)
                                                  _ht27907_))))
                                         (let ((_exports27918_
                                                (gx#core-expand-export-source
                                                 _L27870_)))
                                           (let ((_fold-e27928_
                                                  (letrec ((_fold-e27921_
                                                            (lambda (_out27924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27926_)
                      (if (gx#module-export? _out27924_)
                          (if (hash-get
                               _keytab27915_
                               (gx#module-export-name _out27924_))
                              _r27926_
                              (cons _out27924_ _r27926_))
                          (if (gx#export-set? _out27924_)
                              (foldl _fold-e27921_
                                     _r27926_
                                     (gx#export-set-exports _out27924_))
                              _r27926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27921_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27928_
                                                            '()
                                                            _exports27918_)))))))
                                     (_g2778727811_ _g2778827815_)))
                               _id2780527864_
                               _hd2779527832_))))))
              (_loop2780027844_ _target2779727838_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2778727811_
                                                     _g2778827815_)))))
                                          (_g2778727811_ _g2778827815_))
                                      (_g2778727811_ _g2778827815_))))
                              (_g2778727811_ _g2778827815_))))
                      (_g2778727811_ _g2778827815_)))))
           (_g2778627933_ _stx27784_)))))))
