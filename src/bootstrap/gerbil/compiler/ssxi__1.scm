(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx65267_)
      (let* ((_g6527165289_
              (lambda (_g6527265285_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6527265285_)))
             (_g6527065344_
              (lambda (_g6527265293_)
                (if (gx#stx-pair? _g6527265293_)
                    (let ((_e6527565296_ (gx#syntax-e _g6527265293_)))
                      (let ((_hd6527665300_
                             (let ()
                               (declare (not safe))
                               (##car _e6527565296_)))
                            (_tl6527765303_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6527565296_))))
                        (if (gx#stx-pair? _tl6527765303_)
                            (let ((_e6527865306_ (gx#syntax-e _tl6527765303_)))
                              (let ((_hd6527965310_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6527865306_)))
                                    (_tl6528065313_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6527865306_))))
                                (if (gx#stx-pair? _tl6528065313_)
                                    (let ((_e6528165316_
                                           (gx#syntax-e _tl6528065313_)))
                                      (let ((_hd6528265320_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6528165316_)))
                                            (_tl6528365323_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6528165316_))))
                                        (if (gx#stx-null? _tl6528365323_)
                                            ((lambda (_L65326_ _L65328_)
                                               (if (gx#identifier? _L65328_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L65328_ '()))
                       (cons _L65326_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6527165289_
                                                    _g6527265293_)))
                                             _hd6528265320_
                                             _hd6527965310_)
                                            (_g6527165289_ _g6527265293_))))
                                    (_g6527165289_ _g6527265293_))))
                            (_g6527165289_ _g6527265293_))))
                    (_g6527165289_ _g6527265293_)))))
        (_g6527065344_ _$stx65267_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx65348_)
      (let* ((_g6535265381_
              (lambda (_g6535365377_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6535365377_)))
             (_g6535165481_
              (lambda (_g6535365385_)
                (if (gx#stx-pair? _g6535365385_)
                    (let ((_e6535665388_ (gx#syntax-e _g6535365385_)))
                      (let ((_hd6535765392_
                             (let ()
                               (declare (not safe))
                               (##car _e6535665388_)))
                            (_tl6535865395_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6535665388_))))
                        (if (gx#stx-pair/null? _tl6535865395_)
                            (let ((_g69237_
                                   (gx#syntax-split-splice _tl6535865395_ '0)))
                              (begin
                                (let ((_g69238_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69237_)
                                             (##vector-length _g69237_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69238_ 2)))
                                      (error "Context expects 2 values"
                                             _g69238_)))
                                (let ((_target6535965398_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69237_ 0)))
                                      (_tl6536165401_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69237_ 1))))
                                  (if (gx#stx-null? _tl6536165401_)
                                      (letrec ((_loop6536265404_
                                                (lambda (_hd6536065408_
                                                         _type6536665411_
                                                         _symbol6536765413_)
                                                  (if (gx#stx-pair?
                                                       _hd6536065408_)
                                                      (let ((_e6536365416_
                                                             (gx#syntax-e
                                                              _hd6536065408_)))
                                                        (let ((_lp-hd6536465420_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6536365416_)))
                      (_lp-tl6536565423_
                       (let () (declare (not safe)) (##cdr _e6536365416_))))
                  (if (gx#stx-pair? _lp-hd6536465420_)
                      (let ((_e6537065426_ (gx#syntax-e _lp-hd6536465420_)))
                        (let ((_hd6537165430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6537065426_)))
                              (_tl6537265433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6537065426_))))
                          (if (gx#stx-pair? _tl6537265433_)
                              (let ((_e6537365436_
                                     (gx#syntax-e _tl6537265433_)))
                                (let ((_hd6537465440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6537365436_)))
                                      (_tl6537565443_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6537365436_))))
                                  (if (gx#stx-null? _tl6537565443_)
                                      (_loop6536265404_
                                       _lp-tl6536565423_
                                       (cons _hd6537465440_ _type6536665411_)
                                       (cons _hd6537165430_
                                             _symbol6536765413_))
                                      (_g6535265381_ _g6535365385_))))
                              (_g6535265381_ _g6535365385_))))
                      (_g6535265381_ _g6535365385_))))
              (let ((_type6536865446_ (reverse _type6536665411_))
                    (_symbol6536965449_ (reverse _symbol6536765413_)))
                ((lambda (_L65452_ _L65454_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L65452_ _L65454_)
                           (foldr2 (lambda (_g6546965473_
                                            _g6547065476_
                                            _g6547165478_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g6547065476_
                                                       (cons _g6546965473_
                                                             '())))
                                           _g6547165478_))
                                   '()
                                   _L65452_
                                   _L65454_))))
                 _type6536865446_
                 _symbol6536965449_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6536265404_
                                         _target6535965398_
                                         '()
                                         '()))
                                      (_g6535265381_ _g6535365385_)))))
                            (_g6535265381_ _g6535365385_))))
                    (_g6535265381_ _g6535365385_)))))
        (_g6535165481_ _$stx65348_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx65486_)
      (let* ((___stx6861668617_ _$stx65486_)
             (_g6549165533_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6861668617_))))
        (let ((___kont6861968620_
               (lambda (_L65661_ _L65663_ _L65664_ _L65665_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L65665_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L65664_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L65663_ '()))
                                         (cons _L65661_ '())))))))
              (___kont6862168622_
               (lambda (_L65580_ _L65582_ _L65583_ _L65584_)
                 (cons _L65584_
                       (cons _L65583_
                             (cons _L65582_
                                   (cons _L65580_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match6865568656_
                 (lambda (_e6549765611_
                          _hd6549865615_
                          _tl6549965618_
                          _e6550065621_
                          _hd6550165625_
                          _tl6550265628_
                          _e6550365631_
                          _hd6550465635_
                          _tl6550565638_
                          _e6550665641_
                          _hd6550765645_
                          _tl6550865648_
                          _e6550965651_
                          _hd6551065655_
                          _tl6551165658_)
                   (let ((_L65661_ _hd6551065655_)
                         (_L65663_ _hd6550765645_)
                         (_L65664_ _hd6550465635_)
                         (_L65665_ _hd6550165625_))
                     (if (and (gx#identifier? _L65665_)
                              (gx#identifier? _L65664_)
                              (gx#identifier? _L65663_))
                         (___kont6861968620_
                          _L65661_
                          _L65663_
                          _L65664_
                          _L65665_)
                         (_g6549165533_))))))
            (if (gx#stx-pair? ___stx6861668617_)
                (let ((_e6549765611_ (gx#syntax-e ___stx6861668617_)))
                  (let ((_tl6549965618_
                         (let () (declare (not safe)) (##cdr _e6549765611_)))
                        (_hd6549865615_
                         (let () (declare (not safe)) (##car _e6549765611_))))
                    (if (gx#stx-pair? _tl6549965618_)
                        (let ((_e6550065621_ (gx#syntax-e _tl6549965618_)))
                          (let ((_tl6550265628_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6550065621_)))
                                (_hd6550165625_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6550065621_))))
                            (if (gx#stx-pair? _tl6550265628_)
                                (let ((_e6550365631_
                                       (gx#syntax-e _tl6550265628_)))
                                  (let ((_tl6550565638_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6550365631_)))
                                        (_hd6550465635_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6550365631_))))
                                    (if (gx#stx-pair? _tl6550565638_)
                                        (let ((_e6550665641_
                                               (gx#syntax-e _tl6550565638_)))
                                          (let ((_tl6550865648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e6550665641_)))
                                                (_hd6550765645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e6550665641_))))
                                            (if (gx#stx-pair? _tl6550865648_)
                                                (let ((_e6550965651_
                                                       (gx#syntax-e
                                                        _tl6550865648_)))
                                                  (let ((_tl6551165658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6550965651_)))
                                                        (_hd6551065655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6550965651_))))
                                                    (if (gx#stx-null?
                                                         _tl6551165658_)
                                                        (___match6865568656_
                                                         _e6549765611_
                                                         _hd6549865615_
                                                         _tl6549965618_
                                                         _e6550065621_
                                                         _hd6550165625_
                                                         _tl6550265628_
                                                         _e6550365631_
                                                         _hd6550465635_
                                                         _tl6550565638_
                                                         _e6550665641_
                                                         _hd6550765645_
                                                         _tl6550865648_
                                                         _e6550965651_
                                                         _hd6551065655_
                                                         _tl6551165658_)
                                                        (_g6549165533_))))
                                                (if (gx#stx-null?
                                                     _tl6550865648_)
                                                    (___kont6862168622_
                                                     _hd6550765645_
                                                     _hd6550465635_
                                                     _hd6550165625_
                                                     _hd6549865615_)
                                                    (_g6549165533_)))))
                                        (_g6549165533_))))
                                (_g6549165533_))))
                        (_g6549165533_))))
                (_g6549165533_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx65690_)
      (let* ((_g6569465729_
              (lambda (_g6569565725_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6569565725_)))
             (_g6569365848_
              (lambda (_g6569565733_)
                (if (gx#stx-pair? _g6569565733_)
                    (let ((_e6569965736_ (gx#syntax-e _g6569565733_)))
                      (let ((_hd6570065740_
                             (let ()
                               (declare (not safe))
                               (##car _e6569965736_)))
                            (_tl6570165743_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6569965736_))))
                        (if (gx#stx-pair/null? _tl6570165743_)
                            (let ((_g69239_
                                   (gx#syntax-split-splice _tl6570165743_ '0)))
                              (begin
                                (let ((_g69240_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69239_)
                                             (##vector-length _g69239_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69240_ 2)))
                                      (error "Context expects 2 values"
                                             _g69240_)))
                                (let ((_target6570265746_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69239_ 0)))
                                      (_tl6570465749_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69239_ 1))))
                                  (if (gx#stx-null? _tl6570465749_)
                                      (letrec ((_loop6570565752_
                                                (lambda (_hd6570365756_
                                                         _symbol6570965759_
                                                         _method6571065761_
                                                         _type-t6571165763_)
                                                  (if (gx#stx-pair?
                                                       _hd6570365756_)
                                                      (let ((_e6570665766_
                                                             (gx#syntax-e
                                                              _hd6570365756_)))
                                                        (let ((_lp-hd6570765770_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6570665766_)))
                      (_lp-tl6570865773_
                       (let () (declare (not safe)) (##cdr _e6570665766_))))
                  (if (gx#stx-pair? _lp-hd6570765770_)
                      (let ((_e6571565776_ (gx#syntax-e _lp-hd6570765770_)))
                        (let ((_hd6571665780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6571565776_)))
                              (_tl6571765783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6571565776_))))
                          (if (gx#stx-pair? _tl6571765783_)
                              (let ((_e6571865786_
                                     (gx#syntax-e _tl6571765783_)))
                                (let ((_hd6571965790_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6571865786_)))
                                      (_tl6572065793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6571865786_))))
                                  (if (gx#stx-pair? _tl6572065793_)
                                      (let ((_e6572165796_
                                             (gx#syntax-e _tl6572065793_)))
                                        (let ((_hd6572265800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6572165796_)))
                                              (_tl6572365803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6572165796_))))
                                          (if (gx#stx-null? _tl6572365803_)
                                              (_loop6570565752_
                                               _lp-tl6570865773_
                                               (cons _hd6572265800_
                                                     _symbol6570965759_)
                                               (cons _hd6571965790_
                                                     _method6571065761_)
                                               (cons _hd6571665780_
                                                     _type-t6571165763_))
                                              (_g6569465729_ _g6569565733_))))
                                      (_g6569465729_ _g6569565733_))))
                              (_g6569465729_ _g6569565733_))))
                      (_g6569465729_ _g6569565733_))))
              (let ((_symbol6571265806_ (reverse _symbol6570965759_))
                    (_method6571365809_ (reverse _method6571065761_))
                    (_type-t6571465811_ (reverse _type-t6571165763_)))
                ((lambda (_L65814_ _L65816_ _L65817_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L65814_
                            _L65816_
                            _L65817_)
                           (foldr (lambda (_g6583365838_
                                           _g6583465841_
                                           _g6583565843_
                                           _g6583665845_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g6583565843_
                                                      (cons _g6583465841_
                                                            (cons _g6583365838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g6583665845_))
                                  '()
                                  _L65814_
                                  _L65816_
                                  _L65817_))))
                 _symbol6571265806_
                 _method6571365809_
                 _type-t6571465811_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6570565752_
                                         _target6570265746_
                                         '()
                                         '()
                                         '()))
                                      (_g6569465729_ _g6569565733_)))))
                            (_g6569465729_ _g6569565733_))))
                    (_g6569465729_ _g6569565733_)))))
        (_g6569365848_ _$stx65690_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx65853_)
      (let* ((_g6585765890_
              (lambda (_g6585865886_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6585865886_)))
             (_g6585666004_
              (lambda (_g6585865894_)
                (if (gx#stx-pair? _g6585865894_)
                    (let ((_e6586265897_ (gx#syntax-e _g6585865894_)))
                      (let ((_hd6586365901_
                             (let ()
                               (declare (not safe))
                               (##car _e6586265897_)))
                            (_tl6586465904_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6586265897_))))
                        (if (gx#stx-pair? _tl6586465904_)
                            (let ((_e6586565907_ (gx#syntax-e _tl6586465904_)))
                              (let ((_hd6586665911_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6586565907_)))
                                    (_tl6586765914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6586565907_))))
                                (if (gx#stx-pair/null? _tl6586765914_)
                                    (let ((_g69241_
                                           (gx#syntax-split-splice
                                            _tl6586765914_
                                            '0)))
                                      (begin
                                        (let ((_g69242_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g69241_)
                                                     (##vector-length _g69241_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g69242_ 2)))
                                              (error "Context expects 2 values"
                                                     _g69242_)))
                                        (let ((_target6586865917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g69241_ 0)))
                                              (_tl6587065920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g69241_ 1))))
                                          (if (gx#stx-null? _tl6587065920_)
                                              (letrec ((_loop6587165923_
                                                        (lambda (_hd6586965927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol6587565930_
                         _method6587665932_)
                  (if (gx#stx-pair? _hd6586965927_)
                      (let ((_e6587265935_ (gx#syntax-e _hd6586965927_)))
                        (let ((_lp-hd6587365939_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6587265935_)))
                              (_lp-tl6587465942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6587265935_))))
                          (if (gx#stx-pair? _lp-hd6587365939_)
                              (let ((_e6587965945_
                                     (gx#syntax-e _lp-hd6587365939_)))
                                (let ((_hd6588065949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6587965945_)))
                                      (_tl6588165952_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6587965945_))))
                                  (if (gx#stx-pair? _tl6588165952_)
                                      (let ((_e6588265955_
                                             (gx#syntax-e _tl6588165952_)))
                                        (let ((_hd6588365959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6588265955_)))
                                              (_tl6588465962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6588265955_))))
                                          (if (gx#stx-null? _tl6588465962_)
                                              (_loop6587165923_
                                               _lp-tl6587465942_
                                               (cons _hd6588365959_
                                                     _symbol6587565930_)
                                               (cons _hd6588065949_
                                                     _method6587665932_))
                                              (_g6585765890_ _g6585865894_))))
                                      (_g6585765890_ _g6585865894_))))
                              (_g6585765890_ _g6585865894_))))
                      (let ((_symbol6587765965_ (reverse _symbol6587565930_))
                            (_method6587865968_ (reverse _method6587665932_)))
                        ((lambda (_L65971_ _L65973_ _L65974_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L65971_
                                    _L65973_)
                                   (foldr2 (lambda (_g6599265996_
                                                    _g6599365999_
                                                    _g6599466001_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L65974_
                                                               (cons _g6599365999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g6599265996_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g6599466001_))
                                           '()
                                           _L65971_
                                           _L65973_))))
                         _symbol6587765965_
                         _method6587865968_
                         _hd6586665911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop6587165923_
                                                 _target6586865917_
                                                 '()
                                                 '()))
                                              (_g6585765890_ _g6585865894_)))))
                                    (_g6585765890_ _g6585865894_))))
                            (_g6585765890_ _g6585865894_))))
                    (_g6585765890_ _g6585865894_)))))
        (_g6585666004_ _$stx65853_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx66009_)
      (let* ((_g6601366027_
              (lambda (_g6601466023_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6601466023_)))
             (_g6601266068_
              (lambda (_g6601466031_)
                (if (gx#stx-pair? _g6601466031_)
                    (let ((_e6601666034_ (gx#syntax-e _g6601466031_)))
                      (let ((_hd6601766038_
                             (let ()
                               (declare (not safe))
                               (##car _e6601666034_)))
                            (_tl6601866041_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6601666034_))))
                        (if (gx#stx-pair? _tl6601866041_)
                            (let ((_e6601966044_ (gx#syntax-e _tl6601866041_)))
                              (let ((_hd6602066048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6601966044_)))
                                    (_tl6602166051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6601966044_))))
                                (if (gx#stx-null? _tl6602166051_)
                                    ((lambda (_L66054_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66054_ '()))
                                                   '())))
                                     _hd6602066048_)
                                    (_g6601366027_ _g6601466031_))))
                            (_g6601366027_ _g6601466031_))))
                    (_g6601366027_ _g6601466031_)))))
        (_g6601266068_ _$stx66009_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx66072_)
      (let* ((___stx6868468685_ _$stx66072_)
             (_g6607866144_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6868468685_))))
        (let ((___kont6868768688_
               (lambda (_L66366_ _L66368_ _L66369_ _L66370_ _L66371_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L66371_
                             (cons _L66370_
                                   (cons _L66369_
                                         (cons _L66368_
                                               (cons _L66366_ '()))))))))
              (___kont6868968690_
               (lambda (_L66276_ _L66278_ _L66279_ _L66280_)
                 (cons _L66280_
                       (cons _L66279_
                             (cons _L66278_
                                   (cons _L66276_
                                         (cons '#f (cons '#f '()))))))))
              (___kont6869168692_
               (lambda (_L66201_ _L66203_ _L66204_ _L66205_ _L66206_)
                 (cons _L66206_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L66204_
                                   (cons _L66203_
                                         (cons _L66201_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx6868468685_)
              (let ((_e6608566306_ (gx#syntax-e ___stx6868468685_)))
                (let ((_tl6608766313_
                       (let () (declare (not safe)) (##cdr _e6608566306_)))
                      (_hd6608666310_
                       (let () (declare (not safe)) (##car _e6608566306_))))
                  (if (gx#stx-pair? _tl6608766313_)
                      (let ((_e6608866316_ (gx#syntax-e _tl6608766313_)))
                        (let ((_tl6609066323_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6608866316_)))
                              (_hd6608966320_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6608866316_))))
                          (if (gx#stx-pair? _tl6609066323_)
                              (let ((_e6609166326_
                                     (gx#syntax-e _tl6609066323_)))
                                (let ((_tl6609366333_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6609166326_)))
                                      (_hd6609266330_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6609166326_))))
                                  (if (gx#stx-pair? _tl6609366333_)
                                      (let ((_e6609466336_
                                             (gx#syntax-e _tl6609366333_)))
                                        (let ((_tl6609666343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6609466336_)))
                                              (_hd6609566340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6609466336_))))
                                          (if (gx#stx-pair? _tl6609666343_)
                                              (let ((_e6609766346_
                                                     (gx#syntax-e
                                                      _tl6609666343_)))
                                                (let ((_tl6609966353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6609766346_)))
                                                      (_hd6609866350_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6609766346_))))
                                                  (if (gx#stx-pair?
                                                       _tl6609966353_)
                                                      (let ((_e6610066356_
                                                             (gx#syntax-e
                                                              _tl6609966353_)))
                                                        (let ((_tl6610266363_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e6610066356_)))
                      (_hd6610166360_
                       (let () (declare (not safe)) (##car _e6610066356_))))
                  (if (gx#stx-null? _tl6610266363_)
                      (___kont6868768688_
                       _hd6610166360_
                       _hd6609866350_
                       _hd6609566340_
                       _hd6609266330_
                       _hd6608966320_)
                      (_g6607866144_))))
              (if (gx#stx-null? _tl6609966353_)
                  (___kont6869168692_
                   _hd6609866350_
                   _hd6609566340_
                   _hd6609266330_
                   _hd6608966320_
                   _hd6608666310_)
                  (_g6607866144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl6609666343_)
                                                  (___kont6868968690_
                                                   _hd6609566340_
                                                   _hd6609266330_
                                                   _hd6608966320_
                                                   _hd6608666310_)
                                                  (_g6607866144_)))))
                                      (_g6607866144_))))
                              (_g6607866144_))))
                      (_g6607866144_))))
              (_g6607866144_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx66399_)
      (let* ((___stx6879268793_ _$stx66399_)
             (_g6640466457_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6879268793_))))
        (let ((___kont6879568796_
               (lambda (_L66625_ _L66627_ _L66628_ _L66629_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66629_ '()))
                             (cons '#f
                                   (cons _L66628_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L66627_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L66625_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont6879768798_
               (lambda (_L66524_ _L66526_ _L66527_ _L66528_ _L66529_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L66528_ '()))
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
                                     (cons _L66526_ '()))
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
                                                     (cons _L66529_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L66528_ '()))
                                                     (cons _L66527_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L66524_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx6879268793_)
              (let ((_e6641066561_ (gx#syntax-e ___stx6879268793_)))
                (let ((_tl6641266568_
                       (let () (declare (not safe)) (##cdr _e6641066561_)))
                      (_hd6641166565_
                       (let () (declare (not safe)) (##car _e6641066561_))))
                  (if (gx#stx-pair? _tl6641266568_)
                      (let ((_e6641366571_ (gx#syntax-e _tl6641266568_)))
                        (let ((_tl6641566578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6641366571_)))
                              (_hd6641466575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6641366571_))))
                          (if (gx#stx-pair? _tl6641566578_)
                              (let ((_e6641666581_
                                     (gx#syntax-e _tl6641566578_)))
                                (let ((_tl6641866588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6641666581_)))
                                      (_hd6641766585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6641666581_))))
                                  (if (gx#stx-datum? _hd6641766585_)
                                      (let ((_e6641966591_
                                             (gx#stx-e _hd6641766585_)))
                                        (if (equal? _e6641966591_ '#f)
                                            (if (gx#stx-pair? _tl6641866588_)
                                                (let ((_e6642066595_
                                                       (gx#syntax-e
                                                        _tl6641866588_)))
                                                  (let ((_tl6642266602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6642066595_)))
                                                        (_hd6642166599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6642066595_))))
                                                    (if (gx#stx-pair?
                                                         _tl6642266602_)
                                                        (let ((_e6642366605_
                                                               (gx#syntax-e
                                                                _tl6642266602_)))
                                                          (let ((_tl6642566612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e6642366605_)))
                        (_hd6642466609_
                         (let () (declare (not safe)) (##car _e6642366605_))))
                    (if (gx#stx-pair? _tl6642566612_)
                        (let ((_e6642666615_ (gx#syntax-e _tl6642566612_)))
                          (let ((_tl6642866622_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6642666615_)))
                                (_hd6642766619_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6642666615_))))
                            (if (gx#stx-null? _tl6642866622_)
                                (___kont6879568796_
                                 _hd6642766619_
                                 _hd6642466609_
                                 _hd6642166599_
                                 _hd6641466575_)
                                (_g6640466457_))))
                        (_g6640466457_))))
                (_g6640466457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g6640466457_))
                                            (if (gx#stx-pair? _tl6641866588_)
                                                (let ((_e6644366494_
                                                       (gx#syntax-e
                                                        _tl6641866588_)))
                                                  (let ((_tl6644566501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6644366494_)))
                                                        (_hd6644466498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6644366494_))))
                                                    (if (gx#stx-pair?
                                                         _tl6644566501_)
                                                        (let ((_e6644666504_
                                                               (gx#syntax-e
                                                                _tl6644566501_)))
                                                          (let ((_tl6644866511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e6644666504_)))
                        (_hd6644766508_
                         (let () (declare (not safe)) (##car _e6644666504_))))
                    (if (gx#stx-pair? _tl6644866511_)
                        (let ((_e6644966514_ (gx#syntax-e _tl6644866511_)))
                          (let ((_tl6645166521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6644966514_)))
                                (_hd6645066518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6644966514_))))
                            (if (gx#stx-null? _tl6645166521_)
                                (___kont6879768798_
                                 _hd6645066518_
                                 _hd6644766508_
                                 _hd6644466498_
                                 _hd6641766585_
                                 _hd6641466575_)
                                (_g6640466457_))))
                        (_g6640466457_))))
                (_g6640466457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g6640466457_))))
                                      (if (gx#stx-pair? _tl6641866588_)
                                          (let ((_e6644366494_
                                                 (gx#syntax-e _tl6641866588_)))
                                            (let ((_tl6644566501_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6644366494_)))
                                                  (_hd6644466498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6644366494_))))
                                              (if (gx#stx-pair? _tl6644566501_)
                                                  (let ((_e6644666504_
                                                         (gx#syntax-e
                                                          _tl6644566501_)))
                                                    (let ((_tl6644866511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6644666504_)))
                                                          (_hd6644766508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6644666504_))))
                                                      (if (gx#stx-pair?
                                                           _tl6644866511_)
                                                          (let ((_e6644966514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl6644866511_)))
                    (let ((_tl6645166521_
                           (let () (declare (not safe)) (##cdr _e6644966514_)))
                          (_hd6645066518_
                           (let ()
                             (declare (not safe))
                             (##car _e6644966514_))))
                      (if (gx#stx-null? _tl6645166521_)
                          (___kont6879768798_
                           _hd6645066518_
                           _hd6644766508_
                           _hd6644466498_
                           _hd6641766585_
                           _hd6641466575_)
                          (_g6640466457_))))
                  (_g6640466457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g6640466457_))))
                                          (_g6640466457_)))))
                              (_g6640466457_))))
                      (_g6640466457_))))
              (_g6640466457_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx66657_)
      (let* ((_g6666166675_
              (lambda (_g6666266671_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6666266671_)))
             (_g6666066716_
              (lambda (_g6666266679_)
                (if (gx#stx-pair? _g6666266679_)
                    (let ((_e6666466682_ (gx#syntax-e _g6666266679_)))
                      (let ((_hd6666566686_
                             (let ()
                               (declare (not safe))
                               (##car _e6666466682_)))
                            (_tl6666666689_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6666466682_))))
                        (if (gx#stx-pair? _tl6666666689_)
                            (let ((_e6666766692_ (gx#syntax-e _tl6666666689_)))
                              (let ((_hd6666866696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6666766692_)))
                                    (_tl6666966699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6666766692_))))
                                (if (gx#stx-null? _tl6666966699_)
                                    ((lambda (_L66702_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66702_ '()))
                                                   '())))
                                     _hd6666866696_)
                                    (_g6666166675_ _g6666266679_))))
                            (_g6666166675_ _g6666266679_))))
                    (_g6666166675_ _g6666266679_)))))
        (_g6666066716_ _$stx66657_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx66720_)
      (let* ((_g6672466738_
              (lambda (_g6672566734_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6672566734_)))
             (_g6672366779_
              (lambda (_g6672566742_)
                (if (gx#stx-pair? _g6672566742_)
                    (let ((_e6672766745_ (gx#syntax-e _g6672566742_)))
                      (let ((_hd6672866749_
                             (let ()
                               (declare (not safe))
                               (##car _e6672766745_)))
                            (_tl6672966752_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6672766745_))))
                        (if (gx#stx-pair? _tl6672966752_)
                            (let ((_e6673066755_ (gx#syntax-e _tl6672966752_)))
                              (let ((_hd6673166759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6673066755_)))
                                    (_tl6673266762_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6673066755_))))
                                (if (gx#stx-null? _tl6673266762_)
                                    ((lambda (_L66765_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66765_ '()))
                                                   '())))
                                     _hd6673166759_)
                                    (_g6672466738_ _g6672566742_))))
                            (_g6672466738_ _g6672566742_))))
                    (_g6672466738_ _g6672566742_)))))
        (_g6672366779_ _$stx66720_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx66783_)
      (let* ((___stx6888468885_ _$stx66783_)
             (_g6678866821_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6888468885_))))
        (let ((___kont6888768888_
               (lambda (_L66923_ _L66925_ _L66926_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66926_ '()))
                             (cons _L66925_ (cons _L66923_ '()))))))
              (___kont6888968890_
               (lambda (_L66858_ _L66860_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66860_ '()))
                             (cons _L66858_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6888468885_)
              (let ((_e6679366883_ (gx#syntax-e ___stx6888468885_)))
                (let ((_tl6679566890_
                       (let () (declare (not safe)) (##cdr _e6679366883_)))
                      (_hd6679466887_
                       (let () (declare (not safe)) (##car _e6679366883_))))
                  (if (gx#stx-pair? _tl6679566890_)
                      (let ((_e6679666893_ (gx#syntax-e _tl6679566890_)))
                        (let ((_tl6679866900_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6679666893_)))
                              (_hd6679766897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6679666893_))))
                          (if (gx#stx-pair? _tl6679866900_)
                              (let ((_e6679966903_
                                     (gx#syntax-e _tl6679866900_)))
                                (let ((_tl6680166910_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6679966903_)))
                                      (_hd6680066907_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6679966903_))))
                                  (if (gx#stx-pair? _tl6680166910_)
                                      (let ((_e6680266913_
                                             (gx#syntax-e _tl6680166910_)))
                                        (let ((_tl6680466920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6680266913_)))
                                              (_hd6680366917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6680266913_))))
                                          (if (gx#stx-null? _tl6680466920_)
                                              (___kont6888768888_
                                               _hd6680366917_
                                               _hd6680066907_
                                               _hd6679766897_)
                                              (_g6678866821_))))
                                      (if (gx#stx-null? _tl6680166910_)
                                          (___kont6888968890_
                                           _hd6680066907_
                                           _hd6679766897_)
                                          (_g6678866821_)))))
                              (_g6678866821_))))
                      (_g6678866821_))))
              (_g6678866821_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx66948_)
      (let* ((___stx6894068941_ _$stx66948_)
             (_g6695366986_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6894068941_))))
        (let ((___kont6894368944_
               (lambda (_L67088_ _L67090_ _L67091_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67091_ '()))
                             (cons _L67090_ (cons _L67088_ '()))))))
              (___kont6894568946_
               (lambda (_L67023_ _L67025_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67025_ '()))
                             (cons _L67023_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6894068941_)
              (let ((_e6695867048_ (gx#syntax-e ___stx6894068941_)))
                (let ((_tl6696067055_
                       (let () (declare (not safe)) (##cdr _e6695867048_)))
                      (_hd6695967052_
                       (let () (declare (not safe)) (##car _e6695867048_))))
                  (if (gx#stx-pair? _tl6696067055_)
                      (let ((_e6696167058_ (gx#syntax-e _tl6696067055_)))
                        (let ((_tl6696367065_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6696167058_)))
                              (_hd6696267062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6696167058_))))
                          (if (gx#stx-pair? _tl6696367065_)
                              (let ((_e6696467068_
                                     (gx#syntax-e _tl6696367065_)))
                                (let ((_tl6696667075_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6696467068_)))
                                      (_hd6696567072_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6696467068_))))
                                  (if (gx#stx-pair? _tl6696667075_)
                                      (let ((_e6696767078_
                                             (gx#syntax-e _tl6696667075_)))
                                        (let ((_tl6696967085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6696767078_)))
                                              (_hd6696867082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6696767078_))))
                                          (if (gx#stx-null? _tl6696967085_)
                                              (___kont6894368944_
                                               _hd6696867082_
                                               _hd6696567072_
                                               _hd6696267062_)
                                              (_g6695366986_))))
                                      (if (gx#stx-null? _tl6696667075_)
                                          (___kont6894568946_
                                           _hd6696567072_
                                           _hd6696267062_)
                                          (_g6695366986_)))))
                              (_g6695366986_))))
                      (_g6695366986_))))
              (_g6695366986_))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx67113_)
      (let* ((_g6711767155_
              (lambda (_g6711867151_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6711867151_)))
             (_g6711667280_
              (lambda (_g6711867159_)
                (if (gx#stx-pair? _g6711867159_)
                    (let ((_e6712667162_ (gx#syntax-e _g6711867159_)))
                      (let ((_hd6712767166_
                             (let ()
                               (declare (not safe))
                               (##car _e6712667162_)))
                            (_tl6712867169_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6712667162_))))
                        (if (gx#stx-pair? _tl6712867169_)
                            (let ((_e6712967172_ (gx#syntax-e _tl6712867169_)))
                              (let ((_hd6713067176_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6712967172_)))
                                    (_tl6713167179_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6712967172_))))
                                (if (gx#stx-pair? _tl6713167179_)
                                    (let ((_e6713267182_
                                           (gx#syntax-e _tl6713167179_)))
                                      (let ((_hd6713367186_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6713267182_)))
                                            (_tl6713467189_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6713267182_))))
                                        (if (gx#stx-pair? _tl6713467189_)
                                            (let ((_e6713567192_
                                                   (gx#syntax-e
                                                    _tl6713467189_)))
                                              (let ((_hd6713667196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6713567192_)))
                                                    (_tl6713767199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6713567192_))))
                                                (if (gx#stx-pair?
                                                     _tl6713767199_)
                                                    (let ((_e6713867202_
                                                           (gx#syntax-e
                                                            _tl6713767199_)))
                                                      (let ((_hd6713967206_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6713867202_)))
                    (_tl6714067209_
                     (let () (declare (not safe)) (##cdr _e6713867202_))))
                (if (gx#stx-pair? _tl6714067209_)
                    (let ((_e6714167212_ (gx#syntax-e _tl6714067209_)))
                      (let ((_hd6714267216_
                             (let ()
                               (declare (not safe))
                               (##car _e6714167212_)))
                            (_tl6714367219_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6714167212_))))
                        (if (gx#stx-pair? _tl6714367219_)
                            (let ((_e6714467222_ (gx#syntax-e _tl6714367219_)))
                              (let ((_hd6714567226_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6714467222_)))
                                    (_tl6714667229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6714467222_))))
                                (if (gx#stx-pair? _tl6714667229_)
                                    (let ((_e6714767232_
                                           (gx#syntax-e _tl6714667229_)))
                                      (let ((_hd6714867236_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6714767232_)))
                                            (_tl6714967239_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6714767232_))))
                                        (if (gx#stx-null? _tl6714967239_)
                                            ((lambda (_L67242_
                                                      _L67244_
                                                      _L67245_
                                                      _L67246_
                                                      _L67247_
                                                      _L67248_
                                                      _L67249_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!class-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L67249_ '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L67248_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L67247_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L67246_ '()))
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'quote)
                                                 (cons _L67245_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'quote)
                                                       (cons _L67244_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'quote)
                                                             (cons _L67242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6714867236_
                                             _hd6714567226_
                                             _hd6714267216_
                                             _hd6713967206_
                                             _hd6713667196_
                                             _hd6713367186_
                                             _hd6713067176_)
                                            (_g6711767155_ _g6711867159_))))
                                    (_g6711767155_ _g6711867159_))))
                            (_g6711767155_ _g6711867159_))))
                    (_g6711767155_ _g6711867159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6711767155_
                                                     _g6711867159_))))
                                            (_g6711767155_ _g6711867159_))))
                                    (_g6711767155_ _g6711867159_))))
                            (_g6711767155_ _g6711867159_))))
                    (_g6711767155_ _g6711867159_)))))
        (_g6711667280_ _$stx67113_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx67284_)
      (let* ((_g6728867302_
              (lambda (_g6728967298_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6728967298_)))
             (_g6728767343_
              (lambda (_g6728967306_)
                (if (gx#stx-pair? _g6728967306_)
                    (let ((_e6729167309_ (gx#syntax-e _g6728967306_)))
                      (let ((_hd6729267313_
                             (let ()
                               (declare (not safe))
                               (##car _e6729167309_)))
                            (_tl6729367316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6729167309_))))
                        (if (gx#stx-pair? _tl6729367316_)
                            (let ((_e6729467319_ (gx#syntax-e _tl6729367316_)))
                              (let ((_hd6729567323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6729467319_)))
                                    (_tl6729667326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6729467319_))))
                                (if (gx#stx-null? _tl6729667326_)
                                    ((lambda (_L67329_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!class-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L67329_ '()))
                                                   '())))
                                     _hd6729567323_)
                                    (_g6728867302_ _g6728967306_))))
                            (_g6728867302_ _g6728967306_))))
                    (_g6728867302_ _g6728967306_)))))
        (_g6728767343_ _$stx67284_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx67347_)
      (let* ((_g6735167365_
              (lambda (_g6735267361_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6735267361_)))
             (_g6735067406_
              (lambda (_g6735267369_)
                (if (gx#stx-pair? _g6735267369_)
                    (let ((_e6735467372_ (gx#syntax-e _g6735267369_)))
                      (let ((_hd6735567376_
                             (let ()
                               (declare (not safe))
                               (##car _e6735467372_)))
                            (_tl6735667379_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6735467372_))))
                        (if (gx#stx-pair? _tl6735667379_)
                            (let ((_e6735767382_ (gx#syntax-e _tl6735667379_)))
                              (let ((_hd6735867386_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6735767382_)))
                                    (_tl6735967389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6735767382_))))
                                (if (gx#stx-null? _tl6735967389_)
                                    ((lambda (_L67392_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!class-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L67392_ '()))
                                                   '())))
                                     _hd6735867386_)
                                    (_g6735167365_ _g6735267369_))))
                            (_g6735167365_ _g6735267369_))))
                    (_g6735167365_ _g6735267369_)))))
        (_g6735067406_ _$stx67347_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx67410_)
      (let* ((___stx6899668997_ _$stx67410_)
             (_g6741567448_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6899668997_))))
        (let ((___kont6899969000_
               (lambda (_L67550_ _L67552_ _L67553_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67553_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67552_ '()))
                                   (cons _L67550_ '()))))))
              (___kont6900169002_
               (lambda (_L67485_ _L67487_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67487_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67485_ '()))
                                   (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6899668997_)
              (let ((_e6742067510_ (gx#syntax-e ___stx6899668997_)))
                (let ((_tl6742267517_
                       (let () (declare (not safe)) (##cdr _e6742067510_)))
                      (_hd6742167514_
                       (let () (declare (not safe)) (##car _e6742067510_))))
                  (if (gx#stx-pair? _tl6742267517_)
                      (let ((_e6742367520_ (gx#syntax-e _tl6742267517_)))
                        (let ((_tl6742567527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6742367520_)))
                              (_hd6742467524_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6742367520_))))
                          (if (gx#stx-pair? _tl6742567527_)
                              (let ((_e6742667530_
                                     (gx#syntax-e _tl6742567527_)))
                                (let ((_tl6742867537_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6742667530_)))
                                      (_hd6742767534_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6742667530_))))
                                  (if (gx#stx-pair? _tl6742867537_)
                                      (let ((_e6742967540_
                                             (gx#syntax-e _tl6742867537_)))
                                        (let ((_tl6743167547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6742967540_)))
                                              (_hd6743067544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6742967540_))))
                                          (if (gx#stx-null? _tl6743167547_)
                                              (___kont6899969000_
                                               _hd6743067544_
                                               _hd6742767534_
                                               _hd6742467524_)
                                              (_g6741567448_))))
                                      (if (gx#stx-null? _tl6742867537_)
                                          (___kont6900169002_
                                           _hd6742767534_
                                           _hd6742467524_)
                                          (_g6741567448_)))))
                              (_g6741567448_))))
                      (_g6741567448_))))
              (_g6741567448_))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx67575_)
      (let* ((___stx6905269053_ _$stx67575_)
             (_g6758067613_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6905269053_))))
        (let ((___kont6905569056_
               (lambda (_L67715_ _L67717_ _L67718_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67718_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67717_ '()))
                                   (cons _L67715_ '()))))))
              (___kont6905769058_
               (lambda (_L67650_ _L67652_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67652_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67650_ '()))
                                   (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6905269053_)
              (let ((_e6758567675_ (gx#syntax-e ___stx6905269053_)))
                (let ((_tl6758767682_
                       (let () (declare (not safe)) (##cdr _e6758567675_)))
                      (_hd6758667679_
                       (let () (declare (not safe)) (##car _e6758567675_))))
                  (if (gx#stx-pair? _tl6758767682_)
                      (let ((_e6758867685_ (gx#syntax-e _tl6758767682_)))
                        (let ((_tl6759067692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6758867685_)))
                              (_hd6758967689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6758867685_))))
                          (if (gx#stx-pair? _tl6759067692_)
                              (let ((_e6759167695_
                                     (gx#syntax-e _tl6759067692_)))
                                (let ((_tl6759367702_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6759167695_)))
                                      (_hd6759267699_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6759167695_))))
                                  (if (gx#stx-pair? _tl6759367702_)
                                      (let ((_e6759467705_
                                             (gx#syntax-e _tl6759367702_)))
                                        (let ((_tl6759667712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6759467705_)))
                                              (_hd6759567709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6759467705_))))
                                          (if (gx#stx-null? _tl6759667712_)
                                              (___kont6905569056_
                                               _hd6759567709_
                                               _hd6759267699_
                                               _hd6758967689_)
                                              (_g6758067613_))))
                                      (if (gx#stx-null? _tl6759367702_)
                                          (___kont6905769058_
                                           _hd6759267699_
                                           _hd6758967689_)
                                          (_g6758067613_)))))
                              (_g6758067613_))))
                      (_g6758067613_))))
              (_g6758067613_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx67740_)
      (let* ((___stx6910869109_ _$stx67740_)
             (_g6774667787_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6910869109_))))
        (let ((___kont6911169112_
               (lambda (_L67935_ _L67937_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67937_ '()))
                                   (cons '#f
                                         (cons _L67935_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L67935_ '()))
                                                     '()))))))))
              (___kont6911369114_
               (lambda (_L67867_ _L67869_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67869_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L67867_ '()))
                                         '()))))))
              (___kont6911569116_
               (lambda (_L67814_ _L67816_)
                 (cons _L67816_ (cons _L67814_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx6910869109_)
              (let ((_e6775067891_ (gx#syntax-e ___stx6910869109_)))
                (let ((_tl6775267898_
                       (let () (declare (not safe)) (##cdr _e6775067891_)))
                      (_hd6775167895_
                       (let () (declare (not safe)) (##car _e6775067891_))))
                  (if (gx#stx-pair? _tl6775267898_)
                      (let ((_e6775367901_ (gx#syntax-e _tl6775267898_)))
                        (let ((_tl6775567908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6775367901_)))
                              (_hd6775467905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6775367901_))))
                          (if (gx#stx-pair? _tl6775567908_)
                              (let ((_e6775667911_
                                     (gx#syntax-e _tl6775567908_)))
                                (let ((_tl6775867918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6775667911_)))
                                      (_hd6775767915_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6775667911_))))
                                  (if (gx#stx-datum? _hd6775767915_)
                                      (let ((_e6775967921_
                                             (gx#stx-e _hd6775767915_)))
                                        (if (equal? _e6775967921_ 'inline:)
                                            (if (gx#stx-pair? _tl6775867918_)
                                                (let ((_e6776067925_
                                                       (gx#syntax-e
                                                        _tl6775867918_)))
                                                  (let ((_tl6776267932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6776067925_)))
                                                        (_hd6776167929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6776067925_))))
                                                    (if (gx#stx-null?
                                                         _tl6776267932_)
                                                        (___kont6911169112_
                                                         _hd6776167929_
                                                         _hd6775467905_)
                                                        (_g6774667787_))))
                                                (if (gx#stx-null?
                                                     _tl6775867918_)
                                                    (___kont6911369114_
                                                     _hd6775767915_
                                                     _hd6775467905_)
                                                    (_g6774667787_)))
                                            (if (gx#stx-null? _tl6775867918_)
                                                (___kont6911369114_
                                                 _hd6775767915_
                                                 _hd6775467905_)
                                                (_g6774667787_))))
                                      (if (gx#stx-null? _tl6775867918_)
                                          (___kont6911369114_
                                           _hd6775767915_
                                           _hd6775467905_)
                                          (_g6774667787_)))))
                              (if (gx#stx-null? _tl6775567908_)
                                  (___kont6911569116_
                                   _hd6775467905_
                                   _hd6775167895_)
                                  (_g6774667787_)))))
                      (_g6774667787_))))
              (_g6774667787_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx67959_)
      (let* ((_g6796367992_
              (lambda (_g6796467988_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6796467988_)))
             (_g6796268092_
              (lambda (_g6796467996_)
                (if (gx#stx-pair? _g6796467996_)
                    (let ((_e6796767999_ (gx#syntax-e _g6796467996_)))
                      (let ((_hd6796868003_
                             (let ()
                               (declare (not safe))
                               (##car _e6796767999_)))
                            (_tl6796968006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6796767999_))))
                        (if (gx#stx-pair/null? _tl6796968006_)
                            (let ((_g69243_
                                   (gx#syntax-split-splice _tl6796968006_ '0)))
                              (begin
                                (let ((_g69244_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69243_)
                                             (##vector-length _g69243_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69244_ 2)))
                                      (error "Context expects 2 values"
                                             _g69244_)))
                                (let ((_target6797068009_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69243_ 0)))
                                      (_tl6797268012_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69243_ 1))))
                                  (if (gx#stx-null? _tl6797268012_)
                                      (letrec ((_loop6797368015_
                                                (lambda (_hd6797168019_
                                                         _dispatch6797768022_
                                                         _arity6797868024_)
                                                  (if (gx#stx-pair?
                                                       _hd6797168019_)
                                                      (let ((_e6797468027_
                                                             (gx#syntax-e
                                                              _hd6797168019_)))
                                                        (let ((_lp-hd6797568031_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6797468027_)))
                      (_lp-tl6797668034_
                       (let () (declare (not safe)) (##cdr _e6797468027_))))
                  (if (gx#stx-pair? _lp-hd6797568031_)
                      (let ((_e6798168037_ (gx#syntax-e _lp-hd6797568031_)))
                        (let ((_hd6798268041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6798168037_)))
                              (_tl6798368044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6798168037_))))
                          (if (gx#stx-pair? _tl6798368044_)
                              (let ((_e6798468047_
                                     (gx#syntax-e _tl6798368044_)))
                                (let ((_hd6798568051_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6798468047_)))
                                      (_tl6798668054_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6798468047_))))
                                  (if (gx#stx-null? _tl6798668054_)
                                      (_loop6797368015_
                                       _lp-tl6797668034_
                                       (cons _hd6798568051_
                                             _dispatch6797768022_)
                                       (cons _hd6798268041_ _arity6797868024_))
                                      (_g6796367992_ _g6796467996_))))
                              (_g6796367992_ _g6796467996_))))
                      (_g6796367992_ _g6796467996_))))
              (let ((_dispatch6797968057_ (reverse _dispatch6797768022_))
                    (_arity6798068060_ (reverse _arity6797868024_)))
                ((lambda (_L68063_ _L68065_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L68063_
                                              _L68065_)
                                             (foldr2 (lambda (_g6808068084_
                                                              _g6808168087_
                                                              _g6808268089_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g6808168087_ (cons _g6808068084_ '())))
                     _g6808268089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L68063_
                                                     _L68065_)))
                                     '()))))
                 _dispatch6797968057_
                 _arity6798068060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6797368015_
                                         _target6797068009_
                                         '()
                                         '()))
                                      (_g6796367992_ _g6796467996_)))))
                            (_g6796367992_ _g6796467996_))))
                    (_g6796367992_ _g6796467996_)))))
        (_g6796268092_ _$stx67959_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx68097_)
      (let* ((_g6810168119_
              (lambda (_g6810268115_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6810268115_)))
             (_g6810068174_
              (lambda (_g6810268123_)
                (if (gx#stx-pair? _g6810268123_)
                    (let ((_e6810568126_ (gx#syntax-e _g6810268123_)))
                      (let ((_hd6810668130_
                             (let ()
                               (declare (not safe))
                               (##car _e6810568126_)))
                            (_tl6810768133_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6810568126_))))
                        (if (gx#stx-pair? _tl6810768133_)
                            (let ((_e6810868136_ (gx#syntax-e _tl6810768133_)))
                              (let ((_hd6810968140_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6810868136_)))
                                    (_tl6811068143_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6810868136_))))
                                (if (gx#stx-pair? _tl6811068143_)
                                    (let ((_e6811168146_
                                           (gx#syntax-e _tl6811068143_)))
                                      (let ((_hd6811268150_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6811168146_)))
                                            (_tl6811368153_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6811168146_))))
                                        (if (gx#stx-null? _tl6811368153_)
                                            ((lambda (_L68156_ _L68158_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L68158_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L68156_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6811268150_
                                             _hd6810968140_)
                                            (_g6810168119_ _g6810268123_))))
                                    (_g6810168119_ _g6810268123_))))
                            (_g6810168119_ _g6810268123_))))
                    (_g6810168119_ _g6810268123_)))))
        (_g6810068174_ _$stx68097_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx68178_)
      (let* ((_g6818268200_
              (lambda (_g6818368196_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6818368196_)))
             (_g6818168255_
              (lambda (_g6818368204_)
                (if (gx#stx-pair? _g6818368204_)
                    (let ((_e6818668207_ (gx#syntax-e _g6818368204_)))
                      (let ((_hd6818768211_
                             (let ()
                               (declare (not safe))
                               (##car _e6818668207_)))
                            (_tl6818868214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6818668207_))))
                        (if (gx#stx-pair? _tl6818868214_)
                            (let ((_e6818968217_ (gx#syntax-e _tl6818868214_)))
                              (let ((_hd6819068221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6818968217_)))
                                    (_tl6819168224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6818968217_))))
                                (if (gx#stx-pair? _tl6819168224_)
                                    (let ((_e6819268227_
                                           (gx#syntax-e _tl6819168224_)))
                                      (let ((_hd6819368231_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6819268227_)))
                                            (_tl6819468234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6819268227_))))
                                        (if (gx#stx-null? _tl6819468234_)
                                            ((lambda (_L68237_ _L68239_)
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
                               (cons _L68239_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L68237_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6819368231_
                                             _hd6819068221_)
                                            (_g6818268200_ _g6818368204_))))
                                    (_g6818268200_ _g6818368204_))))
                            (_g6818268200_ _g6818368204_))))
                    (_g6818268200_ _g6818368204_)))))
        (_g6818168255_ _$stx68178_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx68259_)
      (let* ((___stx6918669187_ _$stx68259_)
             (_g6826468299_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6918669187_))))
        (let ((___kont6918969190_
               (lambda (_L68421_ _L68423_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L68423_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L68421_ '()))
                                   '())))))
              (___kont6919169192_
               (lambda (_L68356_ _L68358_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L68358_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (foldr1 (lambda (_g6837568378_
                                                          _g6837668381_)
                                                   (cons (cons _g6837568378_
                                                               (cons '#f '()))
                                                         _g6837668381_))
                                                 '()
                                                 _L68356_))
                                   '()))))))
          (let ((___match6923569236_
                 (lambda (_e6827968306_
                          _hd6828068310_
                          _tl6828168313_
                          _e6828268316_
                          _hd6828368320_
                          _tl6828468323_
                          ___splice6919369194_
                          _target6828568326_
                          _tl6828768329_)
                   (letrec ((_loop6828868332_
                             (lambda (_hd6828668336_ _arity6829268339_)
                               (if (gx#stx-pair? _hd6828668336_)
                                   (let ((_e6828968342_
                                          (gx#syntax-e _hd6828668336_)))
                                     (let ((_lp-tl6829168349_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e6828968342_)))
                                           (_lp-hd6829068346_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e6828968342_))))
                                       (_loop6828868332_
                                        _lp-tl6829168349_
                                        (cons _lp-hd6829068346_
                                              _arity6829268339_))))
                                   (let ((_arity6829368352_
                                          (reverse _arity6829268339_)))
                                     (___kont6919169192_
                                      _arity6829368352_
                                      _hd6828368320_))))))
                     (_loop6828868332_ _target6828568326_ '())))))
            (if (gx#stx-pair? ___stx6918669187_)
                (let ((_e6826868391_ (gx#syntax-e ___stx6918669187_)))
                  (let ((_tl6827068398_
                         (let () (declare (not safe)) (##cdr _e6826868391_)))
                        (_hd6826968395_
                         (let () (declare (not safe)) (##car _e6826868391_))))
                    (if (gx#stx-pair? _tl6827068398_)
                        (let ((_e6827168401_ (gx#syntax-e _tl6827068398_)))
                          (let ((_tl6827368408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6827168401_)))
                                (_hd6827268405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6827168401_))))
                            (if (gx#stx-pair? _tl6827368408_)
                                (let ((_e6827468411_
                                       (gx#syntax-e _tl6827368408_)))
                                  (let ((_tl6827668418_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6827468411_)))
                                        (_hd6827568415_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6827468411_))))
                                    (if (gx#stx-null? _tl6827668418_)
                                        (___kont6918969190_
                                         _hd6827568415_
                                         _hd6827268405_)
                                        (if (gx#stx-pair/null? _tl6827368408_)
                                            (let ((___splice6919369194_
                                                   (gx#syntax-split-splice
                                                    _tl6827368408_
                                                    '0)))
                                              (let ((_tl6828768329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6919369194_
                                                        '1)))
                                                    (_target6828568326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6919369194_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl6828768329_)
                                                    (___match6923569236_
                                                     _e6826868391_
                                                     _hd6826968395_
                                                     _tl6827068398_
                                                     _e6827168401_
                                                     _hd6827268405_
                                                     _tl6827368408_
                                                     ___splice6919369194_
                                                     _target6828568326_
                                                     _tl6828768329_)
                                                    (_g6826468299_))))
                                            (_g6826468299_)))))
                                (if (gx#stx-pair/null? _tl6827368408_)
                                    (let ((___splice6919369194_
                                           (gx#syntax-split-splice
                                            _tl6827368408_
                                            '0)))
                                      (let ((_tl6828768329_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6919369194_
                                                '1)))
                                            (_target6828568326_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6919369194_
                                                '0))))
                                        (if (gx#stx-null? _tl6828768329_)
                                            (___match6923569236_
                                             _e6826868391_
                                             _hd6826968395_
                                             _tl6827068398_
                                             _e6827168401_
                                             _hd6827268405_
                                             _tl6827368408_
                                             ___splice6919369194_
                                             _target6828568326_
                                             _tl6828768329_)
                                            (_g6826468299_))))
                                    (_g6826468299_)))))
                        (_g6826468299_))))
                (_g6826468299_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx68443_)
      (let* ((_g6844768482_
              (lambda (_g6844868478_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6844868478_)))
             (_g6844668610_
              (lambda (_g6844868486_)
                (if (gx#stx-pair? _g6844868486_)
                    (let ((_e6845168489_ (gx#syntax-e _g6844868486_)))
                      (let ((_hd6845268493_
                             (let ()
                               (declare (not safe))
                               (##car _e6845168489_)))
                            (_tl6845368496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6845168489_))))
                        (if (gx#stx-pair/null? _tl6845368496_)
                            (let ((_g69245_
                                   (gx#syntax-split-splice _tl6845368496_ '0)))
                              (begin
                                (let ((_g69246_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69245_)
                                             (##vector-length _g69245_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69246_ 2)))
                                      (error "Context expects 2 values"
                                             _g69246_)))
                                (let ((_target6845468499_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69245_ 0)))
                                      (_tl6845668502_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69245_ 1))))
                                  (if (gx#stx-null? _tl6845668502_)
                                      (letrec ((_loop6845768505_
                                                (lambda (_hd6845568509_
                                                         _arity6846168512_
                                                         _prim6846268514_)
                                                  (if (gx#stx-pair?
                                                       _hd6845568509_)
                                                      (let ((_e6845868517_
                                                             (gx#syntax-e
                                                              _hd6845568509_)))
                                                        (let ((_lp-hd6845968521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6845868517_)))
                      (_lp-tl6846068524_
                       (let () (declare (not safe)) (##cdr _e6845868517_))))
                  (if (gx#stx-pair? _lp-hd6845968521_)
                      (let ((_e6846568527_ (gx#syntax-e _lp-hd6845968521_)))
                        (let ((_hd6846668531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6846568527_)))
                              (_tl6846768534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6846568527_))))
                          (if (gx#stx-pair/null? _tl6846768534_)
                              (let ((_g69247_
                                     (gx#syntax-split-splice
                                      _tl6846768534_
                                      '0)))
                                (begin
                                  (let ((_g69248_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g69247_)
                                               (##vector-length _g69247_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g69248_ 2)))
                                        (error "Context expects 2 values"
                                               _g69248_)))
                                  (let ((_target6846868537_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g69247_ 0)))
                                        (_tl6847068540_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g69247_ 1))))
                                    (if (gx#stx-null? _tl6847068540_)
                                        (letrec ((_loop6847168543_
                                                  (lambda (_hd6846968547_
                                                           _arity6847568550_)
                                                    (if (gx#stx-pair?
                                                         _hd6846968547_)
                                                        (let ((_e6847268553_
                                                               (gx#syntax-e
                                                                _hd6846968547_)))
                                                          (let ((_lp-hd6847368557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e6847268553_)))
                        (_lp-tl6847468560_
                         (let () (declare (not safe)) (##cdr _e6847268553_))))
                    (_loop6847168543_
                     _lp-tl6847468560_
                     (cons _lp-hd6847368557_ _arity6847568550_))))
                (let ((_arity6847668563_ (reverse _arity6847568550_)))
                  (_loop6845768505_
                   _lp-tl6846068524_
                   (cons _arity6847668563_ _arity6846168512_)
                   (cons _hd6846668531_ _prim6846268514_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop6847168543_
                                           _target6846868537_
                                           '()))
                                        (_g6844768482_ _g6844868486_)))))
                              (_g6844768482_ _g6844868486_))))
                      (_g6844768482_ _g6844868486_))))
              (let ((_arity6846368567_ (reverse _arity6846168512_))
                    (_prim6846468570_ (reverse _prim6846268514_)))
                ((lambda (_L68573_ _L68575_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L68573_ _L68575_)
                           (foldr2 (lambda (_g6859068596_
                                            _g6859168599_
                                            _g6859268601_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g6859168599_
                                                       (foldr1 (lambda (_g6859368604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g6859468607_)
                         (cons _g6859368604_ _g6859468607_))
                       '()
                       _g6859068596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g6859268601_))
                                   '()
                                   _L68573_
                                   _L68575_))))
                 _arity6846368567_
                 _prim6846468570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6845768505_
                                         _target6845468499_
                                         '()
                                         '()))
                                      (_g6844768482_ _g6844868486_)))))
                            (_g6844768482_ _g6844868486_))))
                    (_g6844768482_ _g6844868486_)))))
        (_g6844668610_ _$stx68443_)))))
