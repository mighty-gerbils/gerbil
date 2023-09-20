(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx65228_)
      (let* ((_g6523265250_
              (lambda (_g6523365246_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6523365246_)))
             (_g6523165305_
              (lambda (_g6523365254_)
                (if (gx#stx-pair? _g6523365254_)
                    (let ((_e6523665257_ (gx#syntax-e _g6523365254_)))
                      (let ((_hd6523765261_
                             (let ()
                               (declare (not safe))
                               (##car _e6523665257_)))
                            (_tl6523865264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6523665257_))))
                        (if (gx#stx-pair? _tl6523865264_)
                            (let ((_e6523965267_ (gx#syntax-e _tl6523865264_)))
                              (let ((_hd6524065271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6523965267_)))
                                    (_tl6524165274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6523965267_))))
                                (if (gx#stx-pair? _tl6524165274_)
                                    (let ((_e6524265277_
                                           (gx#syntax-e _tl6524165274_)))
                                      (let ((_hd6524365281_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6524265277_)))
                                            (_tl6524465284_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6524265277_))))
                                        (if (gx#stx-null? _tl6524465284_)
                                            ((lambda (_L65287_ _L65289_)
                                               (if (gx#identifier? _L65289_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L65289_ '()))
                       (cons _L65287_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6523265250_
                                                    _g6523365254_)))
                                             _hd6524365281_
                                             _hd6524065271_)
                                            (_g6523265250_ _g6523365254_))))
                                    (_g6523265250_ _g6523365254_))))
                            (_g6523265250_ _g6523365254_))))
                    (_g6523265250_ _g6523365254_)))))
        (_g6523165305_ _$stx65228_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx65309_)
      (let* ((_g6531365342_
              (lambda (_g6531465338_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6531465338_)))
             (_g6531265442_
              (lambda (_g6531465346_)
                (if (gx#stx-pair? _g6531465346_)
                    (let ((_e6531765349_ (gx#syntax-e _g6531465346_)))
                      (let ((_hd6531865353_
                             (let ()
                               (declare (not safe))
                               (##car _e6531765349_)))
                            (_tl6531965356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6531765349_))))
                        (if (gx#stx-pair/null? _tl6531965356_)
                            (let ((_g69198_
                                   (gx#syntax-split-splice _tl6531965356_ '0)))
                              (begin
                                (let ((_g69199_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69198_)
                                             (##vector-length _g69198_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69199_ 2)))
                                      (error "Context expects 2 values"
                                             _g69199_)))
                                (let ((_target6532065359_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69198_ 0)))
                                      (_tl6532265362_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69198_ 1))))
                                  (if (gx#stx-null? _tl6532265362_)
                                      (letrec ((_loop6532365365_
                                                (lambda (_hd6532165369_
                                                         _type6532765372_
                                                         _symbol6532865374_)
                                                  (if (gx#stx-pair?
                                                       _hd6532165369_)
                                                      (let ((_e6532465377_
                                                             (gx#syntax-e
                                                              _hd6532165369_)))
                                                        (let ((_lp-hd6532565381_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6532465377_)))
                      (_lp-tl6532665384_
                       (let () (declare (not safe)) (##cdr _e6532465377_))))
                  (if (gx#stx-pair? _lp-hd6532565381_)
                      (let ((_e6533165387_ (gx#syntax-e _lp-hd6532565381_)))
                        (let ((_hd6533265391_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6533165387_)))
                              (_tl6533365394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6533165387_))))
                          (if (gx#stx-pair? _tl6533365394_)
                              (let ((_e6533465397_
                                     (gx#syntax-e _tl6533365394_)))
                                (let ((_hd6533565401_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6533465397_)))
                                      (_tl6533665404_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6533465397_))))
                                  (if (gx#stx-null? _tl6533665404_)
                                      (_loop6532365365_
                                       _lp-tl6532665384_
                                       (cons _hd6533565401_ _type6532765372_)
                                       (cons _hd6533265391_
                                             _symbol6532865374_))
                                      (_g6531365342_ _g6531465346_))))
                              (_g6531365342_ _g6531465346_))))
                      (_g6531365342_ _g6531465346_))))
              (let ((_type6532965407_ (reverse _type6532765372_))
                    (_symbol6533065410_ (reverse _symbol6532865374_)))
                ((lambda (_L65413_ _L65415_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L65413_ _L65415_)
                           (foldr2 (lambda (_g6543065434_
                                            _g6543165437_
                                            _g6543265439_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g6543165437_
                                                       (cons _g6543065434_
                                                             '())))
                                           _g6543265439_))
                                   '()
                                   _L65413_
                                   _L65415_))))
                 _type6532965407_
                 _symbol6533065410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6532365365_
                                         _target6532065359_
                                         '()
                                         '()))
                                      (_g6531365342_ _g6531465346_)))))
                            (_g6531365342_ _g6531465346_))))
                    (_g6531365342_ _g6531465346_)))))
        (_g6531265442_ _$stx65309_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx65447_)
      (let* ((___stx6857768578_ _$stx65447_)
             (_g6545265494_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6857768578_))))
        (let ((___kont6858068581_
               (lambda (_L65622_ _L65624_ _L65625_ _L65626_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L65626_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L65625_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L65624_ '()))
                                         (cons _L65622_ '())))))))
              (___kont6858268583_
               (lambda (_L65541_ _L65543_ _L65544_ _L65545_)
                 (cons _L65545_
                       (cons _L65544_
                             (cons _L65543_
                                   (cons _L65541_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match6861668617_
                 (lambda (_e6545865572_
                          _hd6545965576_
                          _tl6546065579_
                          _e6546165582_
                          _hd6546265586_
                          _tl6546365589_
                          _e6546465592_
                          _hd6546565596_
                          _tl6546665599_
                          _e6546765602_
                          _hd6546865606_
                          _tl6546965609_
                          _e6547065612_
                          _hd6547165616_
                          _tl6547265619_)
                   (let ((_L65622_ _hd6547165616_)
                         (_L65624_ _hd6546865606_)
                         (_L65625_ _hd6546565596_)
                         (_L65626_ _hd6546265586_))
                     (if (and (gx#identifier? _L65626_)
                              (gx#identifier? _L65625_)
                              (gx#identifier? _L65624_))
                         (___kont6858068581_
                          _L65622_
                          _L65624_
                          _L65625_
                          _L65626_)
                         (_g6545265494_))))))
            (if (gx#stx-pair? ___stx6857768578_)
                (let ((_e6545865572_ (gx#syntax-e ___stx6857768578_)))
                  (let ((_tl6546065579_
                         (let () (declare (not safe)) (##cdr _e6545865572_)))
                        (_hd6545965576_
                         (let () (declare (not safe)) (##car _e6545865572_))))
                    (if (gx#stx-pair? _tl6546065579_)
                        (let ((_e6546165582_ (gx#syntax-e _tl6546065579_)))
                          (let ((_tl6546365589_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6546165582_)))
                                (_hd6546265586_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6546165582_))))
                            (if (gx#stx-pair? _tl6546365589_)
                                (let ((_e6546465592_
                                       (gx#syntax-e _tl6546365589_)))
                                  (let ((_tl6546665599_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6546465592_)))
                                        (_hd6546565596_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6546465592_))))
                                    (if (gx#stx-pair? _tl6546665599_)
                                        (let ((_e6546765602_
                                               (gx#syntax-e _tl6546665599_)))
                                          (let ((_tl6546965609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e6546765602_)))
                                                (_hd6546865606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e6546765602_))))
                                            (if (gx#stx-pair? _tl6546965609_)
                                                (let ((_e6547065612_
                                                       (gx#syntax-e
                                                        _tl6546965609_)))
                                                  (let ((_tl6547265619_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6547065612_)))
                                                        (_hd6547165616_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6547065612_))))
                                                    (if (gx#stx-null?
                                                         _tl6547265619_)
                                                        (___match6861668617_
                                                         _e6545865572_
                                                         _hd6545965576_
                                                         _tl6546065579_
                                                         _e6546165582_
                                                         _hd6546265586_
                                                         _tl6546365589_
                                                         _e6546465592_
                                                         _hd6546565596_
                                                         _tl6546665599_
                                                         _e6546765602_
                                                         _hd6546865606_
                                                         _tl6546965609_
                                                         _e6547065612_
                                                         _hd6547165616_
                                                         _tl6547265619_)
                                                        (_g6545265494_))))
                                                (if (gx#stx-null?
                                                     _tl6546965609_)
                                                    (___kont6858268583_
                                                     _hd6546865606_
                                                     _hd6546565596_
                                                     _hd6546265586_
                                                     _hd6545965576_)
                                                    (_g6545265494_)))))
                                        (_g6545265494_))))
                                (_g6545265494_))))
                        (_g6545265494_))))
                (_g6545265494_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx65651_)
      (let* ((_g6565565690_
              (lambda (_g6565665686_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6565665686_)))
             (_g6565465809_
              (lambda (_g6565665694_)
                (if (gx#stx-pair? _g6565665694_)
                    (let ((_e6566065697_ (gx#syntax-e _g6565665694_)))
                      (let ((_hd6566165701_
                             (let ()
                               (declare (not safe))
                               (##car _e6566065697_)))
                            (_tl6566265704_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6566065697_))))
                        (if (gx#stx-pair/null? _tl6566265704_)
                            (let ((_g69200_
                                   (gx#syntax-split-splice _tl6566265704_ '0)))
                              (begin
                                (let ((_g69201_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69200_)
                                             (##vector-length _g69200_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69201_ 2)))
                                      (error "Context expects 2 values"
                                             _g69201_)))
                                (let ((_target6566365707_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69200_ 0)))
                                      (_tl6566565710_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69200_ 1))))
                                  (if (gx#stx-null? _tl6566565710_)
                                      (letrec ((_loop6566665713_
                                                (lambda (_hd6566465717_
                                                         _symbol6567065720_
                                                         _method6567165722_
                                                         _type-t6567265724_)
                                                  (if (gx#stx-pair?
                                                       _hd6566465717_)
                                                      (let ((_e6566765727_
                                                             (gx#syntax-e
                                                              _hd6566465717_)))
                                                        (let ((_lp-hd6566865731_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6566765727_)))
                      (_lp-tl6566965734_
                       (let () (declare (not safe)) (##cdr _e6566765727_))))
                  (if (gx#stx-pair? _lp-hd6566865731_)
                      (let ((_e6567665737_ (gx#syntax-e _lp-hd6566865731_)))
                        (let ((_hd6567765741_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6567665737_)))
                              (_tl6567865744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6567665737_))))
                          (if (gx#stx-pair? _tl6567865744_)
                              (let ((_e6567965747_
                                     (gx#syntax-e _tl6567865744_)))
                                (let ((_hd6568065751_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6567965747_)))
                                      (_tl6568165754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6567965747_))))
                                  (if (gx#stx-pair? _tl6568165754_)
                                      (let ((_e6568265757_
                                             (gx#syntax-e _tl6568165754_)))
                                        (let ((_hd6568365761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6568265757_)))
                                              (_tl6568465764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6568265757_))))
                                          (if (gx#stx-null? _tl6568465764_)
                                              (_loop6566665713_
                                               _lp-tl6566965734_
                                               (cons _hd6568365761_
                                                     _symbol6567065720_)
                                               (cons _hd6568065751_
                                                     _method6567165722_)
                                               (cons _hd6567765741_
                                                     _type-t6567265724_))
                                              (_g6565565690_ _g6565665694_))))
                                      (_g6565565690_ _g6565665694_))))
                              (_g6565565690_ _g6565665694_))))
                      (_g6565565690_ _g6565665694_))))
              (let ((_symbol6567365767_ (reverse _symbol6567065720_))
                    (_method6567465770_ (reverse _method6567165722_))
                    (_type-t6567565772_ (reverse _type-t6567265724_)))
                ((lambda (_L65775_ _L65777_ _L65778_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L65775_
                            _L65777_
                            _L65778_)
                           (foldr* (lambda (_g6579465799_
                                            _g6579565802_
                                            _g6579665804_
                                            _g6579765806_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method)
                                                 (cons _g6579665804_
                                                       (cons _g6579565802_
                                                             (cons _g6579465799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g6579765806_))
                                   '()
                                   _L65775_
                                   _L65777_
                                   _L65778_))))
                 _symbol6567365767_
                 _method6567465770_
                 _type-t6567565772_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6566665713_
                                         _target6566365707_
                                         '()
                                         '()
                                         '()))
                                      (_g6565565690_ _g6565665694_)))))
                            (_g6565565690_ _g6565665694_))))
                    (_g6565565690_ _g6565665694_)))))
        (_g6565465809_ _$stx65651_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx65814_)
      (let* ((_g6581865851_
              (lambda (_g6581965847_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6581965847_)))
             (_g6581765965_
              (lambda (_g6581965855_)
                (if (gx#stx-pair? _g6581965855_)
                    (let ((_e6582365858_ (gx#syntax-e _g6581965855_)))
                      (let ((_hd6582465862_
                             (let ()
                               (declare (not safe))
                               (##car _e6582365858_)))
                            (_tl6582565865_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6582365858_))))
                        (if (gx#stx-pair? _tl6582565865_)
                            (let ((_e6582665868_ (gx#syntax-e _tl6582565865_)))
                              (let ((_hd6582765872_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6582665868_)))
                                    (_tl6582865875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6582665868_))))
                                (if (gx#stx-pair/null? _tl6582865875_)
                                    (let ((_g69202_
                                           (gx#syntax-split-splice
                                            _tl6582865875_
                                            '0)))
                                      (begin
                                        (let ((_g69203_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g69202_)
                                                     (##vector-length _g69202_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g69203_ 2)))
                                              (error "Context expects 2 values"
                                                     _g69203_)))
                                        (let ((_target6582965878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g69202_ 0)))
                                              (_tl6583165881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g69202_ 1))))
                                          (if (gx#stx-null? _tl6583165881_)
                                              (letrec ((_loop6583265884_
                                                        (lambda (_hd6583065888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol6583665891_
                         _method6583765893_)
                  (if (gx#stx-pair? _hd6583065888_)
                      (let ((_e6583365896_ (gx#syntax-e _hd6583065888_)))
                        (let ((_lp-hd6583465900_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6583365896_)))
                              (_lp-tl6583565903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6583365896_))))
                          (if (gx#stx-pair? _lp-hd6583465900_)
                              (let ((_e6584065906_
                                     (gx#syntax-e _lp-hd6583465900_)))
                                (let ((_hd6584165910_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6584065906_)))
                                      (_tl6584265913_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6584065906_))))
                                  (if (gx#stx-pair? _tl6584265913_)
                                      (let ((_e6584365916_
                                             (gx#syntax-e _tl6584265913_)))
                                        (let ((_hd6584465920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6584365916_)))
                                              (_tl6584565923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6584365916_))))
                                          (if (gx#stx-null? _tl6584565923_)
                                              (_loop6583265884_
                                               _lp-tl6583565903_
                                               (cons _hd6584465920_
                                                     _symbol6583665891_)
                                               (cons _hd6584165910_
                                                     _method6583765893_))
                                              (_g6581865851_ _g6581965855_))))
                                      (_g6581865851_ _g6581965855_))))
                              (_g6581865851_ _g6581965855_))))
                      (let ((_symbol6583865926_ (reverse _symbol6583665891_))
                            (_method6583965929_ (reverse _method6583765893_)))
                        ((lambda (_L65932_ _L65934_ _L65935_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L65932_
                                    _L65934_)
                                   (foldr2 (lambda (_g6595365957_
                                                    _g6595465960_
                                                    _g6595565962_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L65935_
                                                               (cons _g6595465960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g6595365957_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g6595565962_))
                                           '()
                                           _L65932_
                                           _L65934_))))
                         _symbol6583865926_
                         _method6583965929_
                         _hd6582765872_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop6583265884_
                                                 _target6582965878_
                                                 '()
                                                 '()))
                                              (_g6581865851_ _g6581965855_)))))
                                    (_g6581865851_ _g6581965855_))))
                            (_g6581865851_ _g6581965855_))))
                    (_g6581865851_ _g6581965855_)))))
        (_g6581765965_ _$stx65814_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx65970_)
      (let* ((_g6597465988_
              (lambda (_g6597565984_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6597565984_)))
             (_g6597366029_
              (lambda (_g6597565992_)
                (if (gx#stx-pair? _g6597565992_)
                    (let ((_e6597765995_ (gx#syntax-e _g6597565992_)))
                      (let ((_hd6597865999_
                             (let ()
                               (declare (not safe))
                               (##car _e6597765995_)))
                            (_tl6597966002_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6597765995_))))
                        (if (gx#stx-pair? _tl6597966002_)
                            (let ((_e6598066005_ (gx#syntax-e _tl6597966002_)))
                              (let ((_hd6598166009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6598066005_)))
                                    (_tl6598266012_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6598066005_))))
                                (if (gx#stx-null? _tl6598266012_)
                                    ((lambda (_L66015_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66015_ '()))
                                                   '())))
                                     _hd6598166009_)
                                    (_g6597465988_ _g6597565992_))))
                            (_g6597465988_ _g6597565992_))))
                    (_g6597465988_ _g6597565992_)))))
        (_g6597366029_ _$stx65970_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx66033_)
      (let* ((___stx6864568646_ _$stx66033_)
             (_g6603966105_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6864568646_))))
        (let ((___kont6864868649_
               (lambda (_L66327_ _L66329_ _L66330_ _L66331_ _L66332_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L66332_
                             (cons _L66331_
                                   (cons _L66330_
                                         (cons _L66329_
                                               (cons _L66327_ '()))))))))
              (___kont6865068651_
               (lambda (_L66237_ _L66239_ _L66240_ _L66241_)
                 (cons _L66241_
                       (cons _L66240_
                             (cons _L66239_
                                   (cons _L66237_
                                         (cons '#f (cons '#f '()))))))))
              (___kont6865268653_
               (lambda (_L66162_ _L66164_ _L66165_ _L66166_ _L66167_)
                 (cons _L66167_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L66165_
                                   (cons _L66164_
                                         (cons _L66162_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx6864568646_)
              (let ((_e6604666267_ (gx#syntax-e ___stx6864568646_)))
                (let ((_tl6604866274_
                       (let () (declare (not safe)) (##cdr _e6604666267_)))
                      (_hd6604766271_
                       (let () (declare (not safe)) (##car _e6604666267_))))
                  (if (gx#stx-pair? _tl6604866274_)
                      (let ((_e6604966277_ (gx#syntax-e _tl6604866274_)))
                        (let ((_tl6605166284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6604966277_)))
                              (_hd6605066281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6604966277_))))
                          (if (gx#stx-pair? _tl6605166284_)
                              (let ((_e6605266287_
                                     (gx#syntax-e _tl6605166284_)))
                                (let ((_tl6605466294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6605266287_)))
                                      (_hd6605366291_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6605266287_))))
                                  (if (gx#stx-pair? _tl6605466294_)
                                      (let ((_e6605566297_
                                             (gx#syntax-e _tl6605466294_)))
                                        (let ((_tl6605766304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6605566297_)))
                                              (_hd6605666301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6605566297_))))
                                          (if (gx#stx-pair? _tl6605766304_)
                                              (let ((_e6605866307_
                                                     (gx#syntax-e
                                                      _tl6605766304_)))
                                                (let ((_tl6606066314_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6605866307_)))
                                                      (_hd6605966311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6605866307_))))
                                                  (if (gx#stx-pair?
                                                       _tl6606066314_)
                                                      (let ((_e6606166317_
                                                             (gx#syntax-e
                                                              _tl6606066314_)))
                                                        (let ((_tl6606366324_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e6606166317_)))
                      (_hd6606266321_
                       (let () (declare (not safe)) (##car _e6606166317_))))
                  (if (gx#stx-null? _tl6606366324_)
                      (___kont6864868649_
                       _hd6606266321_
                       _hd6605966311_
                       _hd6605666301_
                       _hd6605366291_
                       _hd6605066281_)
                      (_g6603966105_))))
              (if (gx#stx-null? _tl6606066314_)
                  (___kont6865268653_
                   _hd6605966311_
                   _hd6605666301_
                   _hd6605366291_
                   _hd6605066281_
                   _hd6604766271_)
                  (_g6603966105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl6605766304_)
                                                  (___kont6865068651_
                                                   _hd6605666301_
                                                   _hd6605366291_
                                                   _hd6605066281_
                                                   _hd6604766271_)
                                                  (_g6603966105_)))))
                                      (_g6603966105_))))
                              (_g6603966105_))))
                      (_g6603966105_))))
              (_g6603966105_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx66360_)
      (let* ((___stx6875368754_ _$stx66360_)
             (_g6636566418_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6875368754_))))
        (let ((___kont6875668757_
               (lambda (_L66586_ _L66588_ _L66589_ _L66590_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66590_ '()))
                             (cons '#f
                                   (cons _L66589_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L66588_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L66586_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont6875868759_
               (lambda (_L66485_ _L66487_ _L66488_ _L66489_ _L66490_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L66489_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L66487_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L66490_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L66489_ '()))
                                                     (cons _L66488_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L66485_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx6875368754_)
              (let ((_e6637166522_ (gx#syntax-e ___stx6875368754_)))
                (let ((_tl6637366529_
                       (let () (declare (not safe)) (##cdr _e6637166522_)))
                      (_hd6637266526_
                       (let () (declare (not safe)) (##car _e6637166522_))))
                  (if (gx#stx-pair? _tl6637366529_)
                      (let ((_e6637466532_ (gx#syntax-e _tl6637366529_)))
                        (let ((_tl6637666539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6637466532_)))
                              (_hd6637566536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6637466532_))))
                          (if (gx#stx-pair? _tl6637666539_)
                              (let ((_e6637766542_
                                     (gx#syntax-e _tl6637666539_)))
                                (let ((_tl6637966549_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6637766542_)))
                                      (_hd6637866546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6637766542_))))
                                  (if (gx#stx-datum? _hd6637866546_)
                                      (let ((_e6638066552_
                                             (gx#stx-e _hd6637866546_)))
                                        (if (equal? _e6638066552_ '#f)
                                            (if (gx#stx-pair? _tl6637966549_)
                                                (let ((_e6638166556_
                                                       (gx#syntax-e
                                                        _tl6637966549_)))
                                                  (let ((_tl6638366563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6638166556_)))
                                                        (_hd6638266560_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6638166556_))))
                                                    (if (gx#stx-pair?
                                                         _tl6638366563_)
                                                        (let ((_e6638466566_
                                                               (gx#syntax-e
                                                                _tl6638366563_)))
                                                          (let ((_tl6638666573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e6638466566_)))
                        (_hd6638566570_
                         (let () (declare (not safe)) (##car _e6638466566_))))
                    (if (gx#stx-pair? _tl6638666573_)
                        (let ((_e6638766576_ (gx#syntax-e _tl6638666573_)))
                          (let ((_tl6638966583_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6638766576_)))
                                (_hd6638866580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6638766576_))))
                            (if (gx#stx-null? _tl6638966583_)
                                (___kont6875668757_
                                 _hd6638866580_
                                 _hd6638566570_
                                 _hd6638266560_
                                 _hd6637566536_)
                                (_g6636566418_))))
                        (_g6636566418_))))
                (_g6636566418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g6636566418_))
                                            (if (gx#stx-pair? _tl6637966549_)
                                                (let ((_e6640466455_
                                                       (gx#syntax-e
                                                        _tl6637966549_)))
                                                  (let ((_tl6640666462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6640466455_)))
                                                        (_hd6640566459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6640466455_))))
                                                    (if (gx#stx-pair?
                                                         _tl6640666462_)
                                                        (let ((_e6640766465_
                                                               (gx#syntax-e
                                                                _tl6640666462_)))
                                                          (let ((_tl6640966472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e6640766465_)))
                        (_hd6640866469_
                         (let () (declare (not safe)) (##car _e6640766465_))))
                    (if (gx#stx-pair? _tl6640966472_)
                        (let ((_e6641066475_ (gx#syntax-e _tl6640966472_)))
                          (let ((_tl6641266482_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6641066475_)))
                                (_hd6641166479_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6641066475_))))
                            (if (gx#stx-null? _tl6641266482_)
                                (___kont6875868759_
                                 _hd6641166479_
                                 _hd6640866469_
                                 _hd6640566459_
                                 _hd6637866546_
                                 _hd6637566536_)
                                (_g6636566418_))))
                        (_g6636566418_))))
                (_g6636566418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g6636566418_))))
                                      (if (gx#stx-pair? _tl6637966549_)
                                          (let ((_e6640466455_
                                                 (gx#syntax-e _tl6637966549_)))
                                            (let ((_tl6640666462_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6640466455_)))
                                                  (_hd6640566459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6640466455_))))
                                              (if (gx#stx-pair? _tl6640666462_)
                                                  (let ((_e6640766465_
                                                         (gx#syntax-e
                                                          _tl6640666462_)))
                                                    (let ((_tl6640966472_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6640766465_)))
                                                          (_hd6640866469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6640766465_))))
                                                      (if (gx#stx-pair?
                                                           _tl6640966472_)
                                                          (let ((_e6641066475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl6640966472_)))
                    (let ((_tl6641266482_
                           (let () (declare (not safe)) (##cdr _e6641066475_)))
                          (_hd6641166479_
                           (let ()
                             (declare (not safe))
                             (##car _e6641066475_))))
                      (if (gx#stx-null? _tl6641266482_)
                          (___kont6875868759_
                           _hd6641166479_
                           _hd6640866469_
                           _hd6640566459_
                           _hd6637866546_
                           _hd6637566536_)
                          (_g6636566418_))))
                  (_g6636566418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g6636566418_))))
                                          (_g6636566418_)))))
                              (_g6636566418_))))
                      (_g6636566418_))))
              (_g6636566418_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx66618_)
      (let* ((_g6662266636_
              (lambda (_g6662366632_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6662366632_)))
             (_g6662166677_
              (lambda (_g6662366640_)
                (if (gx#stx-pair? _g6662366640_)
                    (let ((_e6662566643_ (gx#syntax-e _g6662366640_)))
                      (let ((_hd6662666647_
                             (let ()
                               (declare (not safe))
                               (##car _e6662566643_)))
                            (_tl6662766650_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6662566643_))))
                        (if (gx#stx-pair? _tl6662766650_)
                            (let ((_e6662866653_ (gx#syntax-e _tl6662766650_)))
                              (let ((_hd6662966657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6662866653_)))
                                    (_tl6663066660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6662866653_))))
                                (if (gx#stx-null? _tl6663066660_)
                                    ((lambda (_L66663_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66663_ '()))
                                                   '())))
                                     _hd6662966657_)
                                    (_g6662266636_ _g6662366640_))))
                            (_g6662266636_ _g6662366640_))))
                    (_g6662266636_ _g6662366640_)))))
        (_g6662166677_ _$stx66618_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx66681_)
      (let* ((_g6668566699_
              (lambda (_g6668666695_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6668666695_)))
             (_g6668466740_
              (lambda (_g6668666703_)
                (if (gx#stx-pair? _g6668666703_)
                    (let ((_e6668866706_ (gx#syntax-e _g6668666703_)))
                      (let ((_hd6668966710_
                             (let ()
                               (declare (not safe))
                               (##car _e6668866706_)))
                            (_tl6669066713_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6668866706_))))
                        (if (gx#stx-pair? _tl6669066713_)
                            (let ((_e6669166716_ (gx#syntax-e _tl6669066713_)))
                              (let ((_hd6669266720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6669166716_)))
                                    (_tl6669366723_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6669166716_))))
                                (if (gx#stx-null? _tl6669366723_)
                                    ((lambda (_L66726_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66726_ '()))
                                                   '())))
                                     _hd6669266720_)
                                    (_g6668566699_ _g6668666703_))))
                            (_g6668566699_ _g6668666703_))))
                    (_g6668566699_ _g6668666703_)))))
        (_g6668466740_ _$stx66681_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx66744_)
      (let* ((___stx6884568846_ _$stx66744_)
             (_g6674966782_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6884568846_))))
        (let ((___kont6884868849_
               (lambda (_L66884_ _L66886_ _L66887_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66887_ '()))
                             (cons _L66886_ (cons _L66884_ '()))))))
              (___kont6885068851_
               (lambda (_L66819_ _L66821_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66821_ '()))
                             (cons _L66819_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6884568846_)
              (let ((_e6675466844_ (gx#syntax-e ___stx6884568846_)))
                (let ((_tl6675666851_
                       (let () (declare (not safe)) (##cdr _e6675466844_)))
                      (_hd6675566848_
                       (let () (declare (not safe)) (##car _e6675466844_))))
                  (if (gx#stx-pair? _tl6675666851_)
                      (let ((_e6675766854_ (gx#syntax-e _tl6675666851_)))
                        (let ((_tl6675966861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6675766854_)))
                              (_hd6675866858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6675766854_))))
                          (if (gx#stx-pair? _tl6675966861_)
                              (let ((_e6676066864_
                                     (gx#syntax-e _tl6675966861_)))
                                (let ((_tl6676266871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6676066864_)))
                                      (_hd6676166868_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6676066864_))))
                                  (if (gx#stx-pair? _tl6676266871_)
                                      (let ((_e6676366874_
                                             (gx#syntax-e _tl6676266871_)))
                                        (let ((_tl6676566881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6676366874_)))
                                              (_hd6676466878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6676366874_))))
                                          (if (gx#stx-null? _tl6676566881_)
                                              (___kont6884868849_
                                               _hd6676466878_
                                               _hd6676166868_
                                               _hd6675866858_)
                                              (_g6674966782_))))
                                      (if (gx#stx-null? _tl6676266871_)
                                          (___kont6885068851_
                                           _hd6676166868_
                                           _hd6675866858_)
                                          (_g6674966782_)))))
                              (_g6674966782_))))
                      (_g6674966782_))))
              (_g6674966782_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx66909_)
      (let* ((___stx6890168902_ _$stx66909_)
             (_g6691466947_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6890168902_))))
        (let ((___kont6890468905_
               (lambda (_L67049_ _L67051_ _L67052_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67052_ '()))
                             (cons _L67051_ (cons _L67049_ '()))))))
              (___kont6890668907_
               (lambda (_L66984_ _L66986_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66986_ '()))
                             (cons _L66984_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6890168902_)
              (let ((_e6691967009_ (gx#syntax-e ___stx6890168902_)))
                (let ((_tl6692167016_
                       (let () (declare (not safe)) (##cdr _e6691967009_)))
                      (_hd6692067013_
                       (let () (declare (not safe)) (##car _e6691967009_))))
                  (if (gx#stx-pair? _tl6692167016_)
                      (let ((_e6692267019_ (gx#syntax-e _tl6692167016_)))
                        (let ((_tl6692467026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6692267019_)))
                              (_hd6692367023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6692267019_))))
                          (if (gx#stx-pair? _tl6692467026_)
                              (let ((_e6692567029_
                                     (gx#syntax-e _tl6692467026_)))
                                (let ((_tl6692767036_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6692567029_)))
                                      (_hd6692667033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6692567029_))))
                                  (if (gx#stx-pair? _tl6692767036_)
                                      (let ((_e6692867039_
                                             (gx#syntax-e _tl6692767036_)))
                                        (let ((_tl6693067046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6692867039_)))
                                              (_hd6692967043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6692867039_))))
                                          (if (gx#stx-null? _tl6693067046_)
                                              (___kont6890468905_
                                               _hd6692967043_
                                               _hd6692667033_
                                               _hd6692367023_)
                                              (_g6691466947_))))
                                      (if (gx#stx-null? _tl6692767036_)
                                          (___kont6890668907_
                                           _hd6692667033_
                                           _hd6692367023_)
                                          (_g6691466947_)))))
                              (_g6691466947_))))
                      (_g6691466947_))))
              (_g6691466947_))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx67074_)
      (let* ((_g6707867116_
              (lambda (_g6707967112_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6707967112_)))
             (_g6707767241_
              (lambda (_g6707967120_)
                (if (gx#stx-pair? _g6707967120_)
                    (let ((_e6708767123_ (gx#syntax-e _g6707967120_)))
                      (let ((_hd6708867127_
                             (let ()
                               (declare (not safe))
                               (##car _e6708767123_)))
                            (_tl6708967130_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6708767123_))))
                        (if (gx#stx-pair? _tl6708967130_)
                            (let ((_e6709067133_ (gx#syntax-e _tl6708967130_)))
                              (let ((_hd6709167137_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6709067133_)))
                                    (_tl6709267140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6709067133_))))
                                (if (gx#stx-pair? _tl6709267140_)
                                    (let ((_e6709367143_
                                           (gx#syntax-e _tl6709267140_)))
                                      (let ((_hd6709467147_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6709367143_)))
                                            (_tl6709567150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6709367143_))))
                                        (if (gx#stx-pair? _tl6709567150_)
                                            (let ((_e6709667153_
                                                   (gx#syntax-e
                                                    _tl6709567150_)))
                                              (let ((_hd6709767157_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6709667153_)))
                                                    (_tl6709867160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6709667153_))))
                                                (if (gx#stx-pair?
                                                     _tl6709867160_)
                                                    (let ((_e6709967163_
                                                           (gx#syntax-e
                                                            _tl6709867160_)))
                                                      (let ((_hd6710067167_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6709967163_)))
                    (_tl6710167170_
                     (let () (declare (not safe)) (##cdr _e6709967163_))))
                (if (gx#stx-pair? _tl6710167170_)
                    (let ((_e6710267173_ (gx#syntax-e _tl6710167170_)))
                      (let ((_hd6710367177_
                             (let ()
                               (declare (not safe))
                               (##car _e6710267173_)))
                            (_tl6710467180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6710267173_))))
                        (if (gx#stx-pair? _tl6710467180_)
                            (let ((_e6710567183_ (gx#syntax-e _tl6710467180_)))
                              (let ((_hd6710667187_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6710567183_)))
                                    (_tl6710767190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6710567183_))))
                                (if (gx#stx-pair? _tl6710767190_)
                                    (let ((_e6710867193_
                                           (gx#syntax-e _tl6710767190_)))
                                      (let ((_hd6710967197_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6710867193_)))
                                            (_tl6711067200_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6710867193_))))
                                        (if (gx#stx-null? _tl6711067200_)
                                            ((lambda (_L67203_
                                                      _L67205_
                                                      _L67206_
                                                      _L67207_
                                                      _L67208_
                                                      _L67209_
                                                      _L67210_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!class-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L67210_ '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L67209_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L67208_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L67207_ '()))
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'quote)
                                                 (cons _L67206_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'quote)
                                                       (cons _L67205_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'quote)
                                                             (cons _L67203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6710967197_
                                             _hd6710667187_
                                             _hd6710367177_
                                             _hd6710067167_
                                             _hd6709767157_
                                             _hd6709467147_
                                             _hd6709167137_)
                                            (_g6707867116_ _g6707967120_))))
                                    (_g6707867116_ _g6707967120_))))
                            (_g6707867116_ _g6707967120_))))
                    (_g6707867116_ _g6707967120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6707867116_
                                                     _g6707967120_))))
                                            (_g6707867116_ _g6707967120_))))
                                    (_g6707867116_ _g6707967120_))))
                            (_g6707867116_ _g6707967120_))))
                    (_g6707867116_ _g6707967120_)))))
        (_g6707767241_ _$stx67074_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx67245_)
      (let* ((_g6724967263_
              (lambda (_g6725067259_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6725067259_)))
             (_g6724867304_
              (lambda (_g6725067267_)
                (if (gx#stx-pair? _g6725067267_)
                    (let ((_e6725267270_ (gx#syntax-e _g6725067267_)))
                      (let ((_hd6725367274_
                             (let ()
                               (declare (not safe))
                               (##car _e6725267270_)))
                            (_tl6725467277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6725267270_))))
                        (if (gx#stx-pair? _tl6725467277_)
                            (let ((_e6725567280_ (gx#syntax-e _tl6725467277_)))
                              (let ((_hd6725667284_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6725567280_)))
                                    (_tl6725767287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6725567280_))))
                                (if (gx#stx-null? _tl6725767287_)
                                    ((lambda (_L67290_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!class-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L67290_ '()))
                                                   '())))
                                     _hd6725667284_)
                                    (_g6724967263_ _g6725067267_))))
                            (_g6724967263_ _g6725067267_))))
                    (_g6724967263_ _g6725067267_)))))
        (_g6724867304_ _$stx67245_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx67308_)
      (let* ((_g6731267326_
              (lambda (_g6731367322_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6731367322_)))
             (_g6731167367_
              (lambda (_g6731367330_)
                (if (gx#stx-pair? _g6731367330_)
                    (let ((_e6731567333_ (gx#syntax-e _g6731367330_)))
                      (let ((_hd6731667337_
                             (let ()
                               (declare (not safe))
                               (##car _e6731567333_)))
                            (_tl6731767340_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6731567333_))))
                        (if (gx#stx-pair? _tl6731767340_)
                            (let ((_e6731867343_ (gx#syntax-e _tl6731767340_)))
                              (let ((_hd6731967347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6731867343_)))
                                    (_tl6732067350_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6731867343_))))
                                (if (gx#stx-null? _tl6732067350_)
                                    ((lambda (_L67353_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!class-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L67353_ '()))
                                                   '())))
                                     _hd6731967347_)
                                    (_g6731267326_ _g6731367330_))))
                            (_g6731267326_ _g6731367330_))))
                    (_g6731267326_ _g6731367330_)))))
        (_g6731167367_ _$stx67308_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx67371_)
      (let* ((___stx6895768958_ _$stx67371_)
             (_g6737667409_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6895768958_))))
        (let ((___kont6896068961_
               (lambda (_L67511_ _L67513_ _L67514_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67514_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67513_ '()))
                                   (cons _L67511_ '()))))))
              (___kont6896268963_
               (lambda (_L67446_ _L67448_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67448_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67446_ '()))
                                   (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6895768958_)
              (let ((_e6738167471_ (gx#syntax-e ___stx6895768958_)))
                (let ((_tl6738367478_
                       (let () (declare (not safe)) (##cdr _e6738167471_)))
                      (_hd6738267475_
                       (let () (declare (not safe)) (##car _e6738167471_))))
                  (if (gx#stx-pair? _tl6738367478_)
                      (let ((_e6738467481_ (gx#syntax-e _tl6738367478_)))
                        (let ((_tl6738667488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6738467481_)))
                              (_hd6738567485_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6738467481_))))
                          (if (gx#stx-pair? _tl6738667488_)
                              (let ((_e6738767491_
                                     (gx#syntax-e _tl6738667488_)))
                                (let ((_tl6738967498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6738767491_)))
                                      (_hd6738867495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6738767491_))))
                                  (if (gx#stx-pair? _tl6738967498_)
                                      (let ((_e6739067501_
                                             (gx#syntax-e _tl6738967498_)))
                                        (let ((_tl6739267508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6739067501_)))
                                              (_hd6739167505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6739067501_))))
                                          (if (gx#stx-null? _tl6739267508_)
                                              (___kont6896068961_
                                               _hd6739167505_
                                               _hd6738867495_
                                               _hd6738567485_)
                                              (_g6737667409_))))
                                      (if (gx#stx-null? _tl6738967498_)
                                          (___kont6896268963_
                                           _hd6738867495_
                                           _hd6738567485_)
                                          (_g6737667409_)))))
                              (_g6737667409_))))
                      (_g6737667409_))))
              (_g6737667409_))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx67536_)
      (let* ((___stx6901369014_ _$stx67536_)
             (_g6754167574_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6901369014_))))
        (let ((___kont6901669017_
               (lambda (_L67676_ _L67678_ _L67679_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67679_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67678_ '()))
                                   (cons _L67676_ '()))))))
              (___kont6901869019_
               (lambda (_L67611_ _L67613_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67613_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67611_ '()))
                                   (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6901369014_)
              (let ((_e6754667636_ (gx#syntax-e ___stx6901369014_)))
                (let ((_tl6754867643_
                       (let () (declare (not safe)) (##cdr _e6754667636_)))
                      (_hd6754767640_
                       (let () (declare (not safe)) (##car _e6754667636_))))
                  (if (gx#stx-pair? _tl6754867643_)
                      (let ((_e6754967646_ (gx#syntax-e _tl6754867643_)))
                        (let ((_tl6755167653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6754967646_)))
                              (_hd6755067650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6754967646_))))
                          (if (gx#stx-pair? _tl6755167653_)
                              (let ((_e6755267656_
                                     (gx#syntax-e _tl6755167653_)))
                                (let ((_tl6755467663_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6755267656_)))
                                      (_hd6755367660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6755267656_))))
                                  (if (gx#stx-pair? _tl6755467663_)
                                      (let ((_e6755567666_
                                             (gx#syntax-e _tl6755467663_)))
                                        (let ((_tl6755767673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6755567666_)))
                                              (_hd6755667670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6755567666_))))
                                          (if (gx#stx-null? _tl6755767673_)
                                              (___kont6901669017_
                                               _hd6755667670_
                                               _hd6755367660_
                                               _hd6755067650_)
                                              (_g6754167574_))))
                                      (if (gx#stx-null? _tl6755467663_)
                                          (___kont6901869019_
                                           _hd6755367660_
                                           _hd6755067650_)
                                          (_g6754167574_)))))
                              (_g6754167574_))))
                      (_g6754167574_))))
              (_g6754167574_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx67701_)
      (let* ((___stx6906969070_ _$stx67701_)
             (_g6770767748_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6906969070_))))
        (let ((___kont6907269073_
               (lambda (_L67896_ _L67898_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67898_ '()))
                                   (cons '#f
                                         (cons _L67896_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L67896_ '()))
                                                     '()))))))))
              (___kont6907469075_
               (lambda (_L67828_ _L67830_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67830_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L67828_ '()))
                                         '()))))))
              (___kont6907669077_
               (lambda (_L67775_ _L67777_)
                 (cons _L67777_ (cons _L67775_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx6906969070_)
              (let ((_e6771167852_ (gx#syntax-e ___stx6906969070_)))
                (let ((_tl6771367859_
                       (let () (declare (not safe)) (##cdr _e6771167852_)))
                      (_hd6771267856_
                       (let () (declare (not safe)) (##car _e6771167852_))))
                  (if (gx#stx-pair? _tl6771367859_)
                      (let ((_e6771467862_ (gx#syntax-e _tl6771367859_)))
                        (let ((_tl6771667869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6771467862_)))
                              (_hd6771567866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6771467862_))))
                          (if (gx#stx-pair? _tl6771667869_)
                              (let ((_e6771767872_
                                     (gx#syntax-e _tl6771667869_)))
                                (let ((_tl6771967879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6771767872_)))
                                      (_hd6771867876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6771767872_))))
                                  (if (gx#stx-datum? _hd6771867876_)
                                      (let ((_e6772067882_
                                             (gx#stx-e _hd6771867876_)))
                                        (if (equal? _e6772067882_ 'inline:)
                                            (if (gx#stx-pair? _tl6771967879_)
                                                (let ((_e6772167886_
                                                       (gx#syntax-e
                                                        _tl6771967879_)))
                                                  (let ((_tl6772367893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6772167886_)))
                                                        (_hd6772267890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6772167886_))))
                                                    (if (gx#stx-null?
                                                         _tl6772367893_)
                                                        (___kont6907269073_
                                                         _hd6772267890_
                                                         _hd6771567866_)
                                                        (_g6770767748_))))
                                                (if (gx#stx-null?
                                                     _tl6771967879_)
                                                    (___kont6907469075_
                                                     _hd6771867876_
                                                     _hd6771567866_)
                                                    (_g6770767748_)))
                                            (if (gx#stx-null? _tl6771967879_)
                                                (___kont6907469075_
                                                 _hd6771867876_
                                                 _hd6771567866_)
                                                (_g6770767748_))))
                                      (if (gx#stx-null? _tl6771967879_)
                                          (___kont6907469075_
                                           _hd6771867876_
                                           _hd6771567866_)
                                          (_g6770767748_)))))
                              (if (gx#stx-null? _tl6771667869_)
                                  (___kont6907669077_
                                   _hd6771567866_
                                   _hd6771267856_)
                                  (_g6770767748_)))))
                      (_g6770767748_))))
              (_g6770767748_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx67920_)
      (let* ((_g6792467953_
              (lambda (_g6792567949_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6792567949_)))
             (_g6792368053_
              (lambda (_g6792567957_)
                (if (gx#stx-pair? _g6792567957_)
                    (let ((_e6792867960_ (gx#syntax-e _g6792567957_)))
                      (let ((_hd6792967964_
                             (let ()
                               (declare (not safe))
                               (##car _e6792867960_)))
                            (_tl6793067967_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6792867960_))))
                        (if (gx#stx-pair/null? _tl6793067967_)
                            (let ((_g69204_
                                   (gx#syntax-split-splice _tl6793067967_ '0)))
                              (begin
                                (let ((_g69205_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69204_)
                                             (##vector-length _g69204_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69205_ 2)))
                                      (error "Context expects 2 values"
                                             _g69205_)))
                                (let ((_target6793167970_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69204_ 0)))
                                      (_tl6793367973_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69204_ 1))))
                                  (if (gx#stx-null? _tl6793367973_)
                                      (letrec ((_loop6793467976_
                                                (lambda (_hd6793267980_
                                                         _dispatch6793867983_
                                                         _arity6793967985_)
                                                  (if (gx#stx-pair?
                                                       _hd6793267980_)
                                                      (let ((_e6793567988_
                                                             (gx#syntax-e
                                                              _hd6793267980_)))
                                                        (let ((_lp-hd6793667992_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6793567988_)))
                      (_lp-tl6793767995_
                       (let () (declare (not safe)) (##cdr _e6793567988_))))
                  (if (gx#stx-pair? _lp-hd6793667992_)
                      (let ((_e6794267998_ (gx#syntax-e _lp-hd6793667992_)))
                        (let ((_hd6794368002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6794267998_)))
                              (_tl6794468005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6794267998_))))
                          (if (gx#stx-pair? _tl6794468005_)
                              (let ((_e6794568008_
                                     (gx#syntax-e _tl6794468005_)))
                                (let ((_hd6794668012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6794568008_)))
                                      (_tl6794768015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6794568008_))))
                                  (if (gx#stx-null? _tl6794768015_)
                                      (_loop6793467976_
                                       _lp-tl6793767995_
                                       (cons _hd6794668012_
                                             _dispatch6793867983_)
                                       (cons _hd6794368002_ _arity6793967985_))
                                      (_g6792467953_ _g6792567957_))))
                              (_g6792467953_ _g6792567957_))))
                      (_g6792467953_ _g6792567957_))))
              (let ((_dispatch6794068018_ (reverse _dispatch6793867983_))
                    (_arity6794168021_ (reverse _arity6793967985_)))
                ((lambda (_L68024_ _L68026_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L68024_
                                              _L68026_)
                                             (foldr2 (lambda (_g6804168045_
                                                              _g6804268048_
                                                              _g6804368050_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g6804268048_ (cons _g6804168045_ '())))
                     _g6804368050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L68024_
                                                     _L68026_)))
                                     '()))))
                 _dispatch6794068018_
                 _arity6794168021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6793467976_
                                         _target6793167970_
                                         '()
                                         '()))
                                      (_g6792467953_ _g6792567957_)))))
                            (_g6792467953_ _g6792567957_))))
                    (_g6792467953_ _g6792567957_)))))
        (_g6792368053_ _$stx67920_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx68058_)
      (let* ((_g6806268080_
              (lambda (_g6806368076_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6806368076_)))
             (_g6806168135_
              (lambda (_g6806368084_)
                (if (gx#stx-pair? _g6806368084_)
                    (let ((_e6806668087_ (gx#syntax-e _g6806368084_)))
                      (let ((_hd6806768091_
                             (let ()
                               (declare (not safe))
                               (##car _e6806668087_)))
                            (_tl6806868094_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6806668087_))))
                        (if (gx#stx-pair? _tl6806868094_)
                            (let ((_e6806968097_ (gx#syntax-e _tl6806868094_)))
                              (let ((_hd6807068101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6806968097_)))
                                    (_tl6807168104_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6806968097_))))
                                (if (gx#stx-pair? _tl6807168104_)
                                    (let ((_e6807268107_
                                           (gx#syntax-e _tl6807168104_)))
                                      (let ((_hd6807368111_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6807268107_)))
                                            (_tl6807468114_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6807268107_))))
                                        (if (gx#stx-null? _tl6807468114_)
                                            ((lambda (_L68117_ _L68119_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L68119_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L68117_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6807368111_
                                             _hd6807068101_)
                                            (_g6806268080_ _g6806368084_))))
                                    (_g6806268080_ _g6806368084_))))
                            (_g6806268080_ _g6806368084_))))
                    (_g6806268080_ _g6806368084_)))))
        (_g6806168135_ _$stx68058_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx68139_)
      (let* ((_g6814368161_
              (lambda (_g6814468157_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6814468157_)))
             (_g6814268216_
              (lambda (_g6814468165_)
                (if (gx#stx-pair? _g6814468165_)
                    (let ((_e6814768168_ (gx#syntax-e _g6814468165_)))
                      (let ((_hd6814868172_
                             (let ()
                               (declare (not safe))
                               (##car _e6814768168_)))
                            (_tl6814968175_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6814768168_))))
                        (if (gx#stx-pair? _tl6814968175_)
                            (let ((_e6815068178_ (gx#syntax-e _tl6814968175_)))
                              (let ((_hd6815168182_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6815068178_)))
                                    (_tl6815268185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6815068178_))))
                                (if (gx#stx-pair? _tl6815268185_)
                                    (let ((_e6815368188_
                                           (gx#syntax-e _tl6815268185_)))
                                      (let ((_hd6815468192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6815368188_)))
                                            (_tl6815568195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6815368188_))))
                                        (if (gx#stx-null? _tl6815568195_)
                                            ((lambda (_L68198_ _L68200_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L68200_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L68198_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6815468192_
                                             _hd6815168182_)
                                            (_g6814368161_ _g6814468165_))))
                                    (_g6814368161_ _g6814468165_))))
                            (_g6814368161_ _g6814468165_))))
                    (_g6814368161_ _g6814468165_)))))
        (_g6814268216_ _$stx68139_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx68220_)
      (let* ((___stx6914769148_ _$stx68220_)
             (_g6822568260_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6914769148_))))
        (let ((___kont6915069151_
               (lambda (_L68382_ _L68384_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L68384_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L68382_ '()))
                                   '())))))
              (___kont6915269153_
               (lambda (_L68317_ _L68319_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L68319_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (foldr1 (lambda (_g6833668339_
                                                          _g6833768342_)
                                                   (cons (cons _g6833668339_
                                                               (cons '#f '()))
                                                         _g6833768342_))
                                                 '()
                                                 _L68317_))
                                   '()))))))
          (let ((___match6919669197_
                 (lambda (_e6824068267_
                          _hd6824168271_
                          _tl6824268274_
                          _e6824368277_
                          _hd6824468281_
                          _tl6824568284_
                          ___splice6915469155_
                          _target6824668287_
                          _tl6824868290_)
                   (letrec ((_loop6824968293_
                             (lambda (_hd6824768297_ _arity6825368300_)
                               (if (gx#stx-pair? _hd6824768297_)
                                   (let ((_e6825068303_
                                          (gx#syntax-e _hd6824768297_)))
                                     (let ((_lp-tl6825268310_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e6825068303_)))
                                           (_lp-hd6825168307_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e6825068303_))))
                                       (_loop6824968293_
                                        _lp-tl6825268310_
                                        (cons _lp-hd6825168307_
                                              _arity6825368300_))))
                                   (let ((_arity6825468313_
                                          (reverse _arity6825368300_)))
                                     (___kont6915269153_
                                      _arity6825468313_
                                      _hd6824468281_))))))
                     (_loop6824968293_ _target6824668287_ '())))))
            (if (gx#stx-pair? ___stx6914769148_)
                (let ((_e6822968352_ (gx#syntax-e ___stx6914769148_)))
                  (let ((_tl6823168359_
                         (let () (declare (not safe)) (##cdr _e6822968352_)))
                        (_hd6823068356_
                         (let () (declare (not safe)) (##car _e6822968352_))))
                    (if (gx#stx-pair? _tl6823168359_)
                        (let ((_e6823268362_ (gx#syntax-e _tl6823168359_)))
                          (let ((_tl6823468369_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6823268362_)))
                                (_hd6823368366_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6823268362_))))
                            (if (gx#stx-pair? _tl6823468369_)
                                (let ((_e6823568372_
                                       (gx#syntax-e _tl6823468369_)))
                                  (let ((_tl6823768379_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6823568372_)))
                                        (_hd6823668376_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6823568372_))))
                                    (if (gx#stx-null? _tl6823768379_)
                                        (___kont6915069151_
                                         _hd6823668376_
                                         _hd6823368366_)
                                        (if (gx#stx-pair/null? _tl6823468369_)
                                            (let ((___splice6915469155_
                                                   (gx#syntax-split-splice
                                                    _tl6823468369_
                                                    '0)))
                                              (let ((_tl6824868290_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6915469155_
                                                        '1)))
                                                    (_target6824668287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6915469155_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl6824868290_)
                                                    (___match6919669197_
                                                     _e6822968352_
                                                     _hd6823068356_
                                                     _tl6823168359_
                                                     _e6823268362_
                                                     _hd6823368366_
                                                     _tl6823468369_
                                                     ___splice6915469155_
                                                     _target6824668287_
                                                     _tl6824868290_)
                                                    (_g6822568260_))))
                                            (_g6822568260_)))))
                                (if (gx#stx-pair/null? _tl6823468369_)
                                    (let ((___splice6915469155_
                                           (gx#syntax-split-splice
                                            _tl6823468369_
                                            '0)))
                                      (let ((_tl6824868290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6915469155_
                                                '1)))
                                            (_target6824668287_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6915469155_
                                                '0))))
                                        (if (gx#stx-null? _tl6824868290_)
                                            (___match6919669197_
                                             _e6822968352_
                                             _hd6823068356_
                                             _tl6823168359_
                                             _e6823268362_
                                             _hd6823368366_
                                             _tl6823468369_
                                             ___splice6915469155_
                                             _target6824668287_
                                             _tl6824868290_)
                                            (_g6822568260_))))
                                    (_g6822568260_)))))
                        (_g6822568260_))))
                (_g6822568260_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx68404_)
      (let* ((_g6840868443_
              (lambda (_g6840968439_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6840968439_)))
             (_g6840768571_
              (lambda (_g6840968447_)
                (if (gx#stx-pair? _g6840968447_)
                    (let ((_e6841268450_ (gx#syntax-e _g6840968447_)))
                      (let ((_hd6841368454_
                             (let ()
                               (declare (not safe))
                               (##car _e6841268450_)))
                            (_tl6841468457_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6841268450_))))
                        (if (gx#stx-pair/null? _tl6841468457_)
                            (let ((_g69206_
                                   (gx#syntax-split-splice _tl6841468457_ '0)))
                              (begin
                                (let ((_g69207_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69206_)
                                             (##vector-length _g69206_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69207_ 2)))
                                      (error "Context expects 2 values"
                                             _g69207_)))
                                (let ((_target6841568460_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69206_ 0)))
                                      (_tl6841768463_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69206_ 1))))
                                  (if (gx#stx-null? _tl6841768463_)
                                      (letrec ((_loop6841868466_
                                                (lambda (_hd6841668470_
                                                         _arity6842268473_
                                                         _prim6842368475_)
                                                  (if (gx#stx-pair?
                                                       _hd6841668470_)
                                                      (let ((_e6841968478_
                                                             (gx#syntax-e
                                                              _hd6841668470_)))
                                                        (let ((_lp-hd6842068482_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6841968478_)))
                      (_lp-tl6842168485_
                       (let () (declare (not safe)) (##cdr _e6841968478_))))
                  (if (gx#stx-pair? _lp-hd6842068482_)
                      (let ((_e6842668488_ (gx#syntax-e _lp-hd6842068482_)))
                        (let ((_hd6842768492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6842668488_)))
                              (_tl6842868495_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6842668488_))))
                          (if (gx#stx-pair/null? _tl6842868495_)
                              (let ((_g69208_
                                     (gx#syntax-split-splice
                                      _tl6842868495_
                                      '0)))
                                (begin
                                  (let ((_g69209_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g69208_)
                                               (##vector-length _g69208_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g69209_ 2)))
                                        (error "Context expects 2 values"
                                               _g69209_)))
                                  (let ((_target6842968498_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g69208_ 0)))
                                        (_tl6843168501_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g69208_ 1))))
                                    (if (gx#stx-null? _tl6843168501_)
                                        (letrec ((_loop6843268504_
                                                  (lambda (_hd6843068508_
                                                           _arity6843668511_)
                                                    (if (gx#stx-pair?
                                                         _hd6843068508_)
                                                        (let ((_e6843368514_
                                                               (gx#syntax-e
                                                                _hd6843068508_)))
                                                          (let ((_lp-hd6843468518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e6843368514_)))
                        (_lp-tl6843568521_
                         (let () (declare (not safe)) (##cdr _e6843368514_))))
                    (_loop6843268504_
                     _lp-tl6843568521_
                     (cons _lp-hd6843468518_ _arity6843668511_))))
                (let ((_arity6843768524_ (reverse _arity6843668511_)))
                  (_loop6841868466_
                   _lp-tl6842168485_
                   (cons _arity6843768524_ _arity6842268473_)
                   (cons _hd6842768492_ _prim6842368475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop6843268504_
                                           _target6842968498_
                                           '()))
                                        (_g6840868443_ _g6840968447_)))))
                              (_g6840868443_ _g6840968447_))))
                      (_g6840868443_ _g6840968447_))))
              (let ((_arity6842468528_ (reverse _arity6842268473_))
                    (_prim6842568531_ (reverse _prim6842368475_)))
                ((lambda (_L68534_ _L68536_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L68534_ _L68536_)
                           (foldr2 (lambda (_g6855168557_
                                            _g6855268560_
                                            _g6855368562_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g6855268560_
                                                       (foldr1 (lambda (_g6855468565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g6855568568_)
                         (cons _g6855468565_ _g6855568568_))
                       '()
                       _g6855168557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g6855368562_))
                                   '()
                                   _L68534_
                                   _L68536_))))
                 _arity6842468528_
                 _prim6842568531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6841868466_
                                         _target6841568460_
                                         '()
                                         '()))
                                      (_g6840868443_ _g6840968447_)))))
                            (_g6840868443_ _g6840968447_))))
                    (_g6840868443_ _g6840968447_)))))
        (_g6840768571_ _$stx68404_)))))
