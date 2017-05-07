(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g28250_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx175_)
        (let ((_g178202_
               (lambda (_g179198_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g179198_))))
          (let ((_g177507_
                 (lambda (_g179206_)
                   (if (gx#stx-pair? _g179206_)
                       (let ((_e182209_ (gx#syntax-e _g179206_)))
                         (let ((_hd183213_ (##car _e182209_))
                               (_tl184216_ (##cdr _e182209_)))
                           (if (gx#stx-pair? _tl184216_)
                               (let ((_e185219_ (gx#syntax-e _tl184216_)))
                                 (let ((_hd186223_ (##car _e185219_))
                                       (_tl187226_ (##cdr _e185219_)))
                                   (if (gx#stx-pair/null? _tl187226_)
                                       (if (fx>= (gx#stx-length _tl187226_) '0)
                                           (let ((_g28236_
                                                  (gx#syntax-split-splice
                                                   _tl187226_
                                                   '0)))
                                             (begin
                                               (let ((_g28237_
                                                      (values-count _g28236_)))
                                                 (if (not (fx= _g28237_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28237_)))
                                               (let ((_target188229_
                                                      (values-ref _g28236_ 0))
                                                     (_tl190232_
                                                      (values-ref _g28236_ 1)))
                                                 (if (gx#stx-null? _tl190232_)
                                                     (letrec ((_loop191235_
                                                               (lambda (_hd189239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses195242_)
                         (if (gx#stx-pair? _hd189239_)
                             (let ((_e192245_ (gx#syntax-e _hd189239_)))
                               (let ((_lp-hd193249_ (##car _e192245_))
                                     (_lp-tl194252_ (##cdr _e192245_)))
                                 (_loop191235_
                                  _lp-tl194252_
                                  (cons _lp-hd193249_ _clauses195242_))))
                             (let ((_clauses196255_ (reverse _clauses195242_)))
                               ((lambda (_L259_ _L261_)
                                  (if (gx#identifier-list? _L261_)
                                      (let ((_body424_
                                             (gx#stx-map
                                              (lambda (_clause281_)
                                                (let ((_g285312_
                                                       (lambda (_g286308_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g286308_))))
                                                  (let ((_g284370_
                                                         (lambda (_g286316_)
                                                           (if (gx#stx-pair?
                                                                _g286316_)
                                                               (let ((_e298319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g286316_)))
                         (let ((_hd299323_ (##car _e298319_))
                               (_tl300326_ (##cdr _e298319_)))
                           (if (gx#stx-pair? _tl300326_)
                               (let ((_e301329_ (gx#syntax-e _tl300326_)))
                                 (let ((_hd302333_ (##car _e301329_))
                                       (_tl303336_ (##cdr _e301329_)))
                                   (if (gx#stx-pair? _tl303336_)
                                       (let ((_e304339_
                                              (gx#syntax-e _tl303336_)))
                                         (let ((_hd305343_ (##car _e304339_))
                                               (_tl306346_ (##cdr _e304339_)))
                                           (if (gx#stx-null? _tl306346_)
                                               ((lambda (_L349_ _L351_ _L352_)
                                                  (cons _L352_
                                                        (cons _L351_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L349_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd305343_
                                                _hd302333_
                                                _hd299323_)
                                               (_g285312_ _g286316_))))
                                       (_g285312_ _g286316_))))
                               (_g285312_ _g286316_))))
                       (_g285312_ _g286316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g283412_
                                                           (lambda (_g286374_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g286374_)
                         (let ((_e289377_ (gx#syntax-e _g286374_)))
                           (let ((_hd290381_ (##car _e289377_))
                                 (_tl291384_ (##cdr _e289377_)))
                             (if (gx#stx-pair? _tl291384_)
                                 (let ((_e292387_ (gx#syntax-e _tl291384_)))
                                   (let ((_hd293391_ (##car _e292387_))
                                         (_tl294394_ (##cdr _e292387_)))
                                     (if (gx#stx-null? _tl294394_)
                                         ((lambda (_L397_ _L399_)
                                            (cons _L399_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd293391_
                                          _hd290381_)
                                         (_g284370_ _g286374_))))
                                 (_g284370_ _g286374_))))
                         (_g284370_ _g286374_)))))
              (_g283412_ _clause281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g415418_
                                                                _g416421_)
                                                         (cons _g415418_
                                                               _g416421_))
                                                       '()
                                                       _L259_)))))
                                        (let ((_g427444_
                                               (lambda (_g428440_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g428440_))))
                                          (let ((_g426503_
                                                 (lambda (_g428448_)
                                                   (if (gx#stx-pair/null?
                                                        _g428448_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g428448_)
                         '0)
                   (let ((_g28238_ (gx#syntax-split-splice _g428448_ '0)))
                     (begin
                       (let ((_g28239_ (values-count _g28238_)))
                         (if (not (fx= _g28239_ 2))
                             (error "Context expects 2 values" _g28239_)))
                       (let ((_target430451_ (values-ref _g28238_ 0))
                             (_tl432454_ (values-ref _g28238_ 1)))
                         (if (gx#stx-null? _tl432454_)
                             (letrec ((_loop433457_
                                       (lambda (_hd431461_ _clause437464_)
                                         (if (gx#stx-pair? _hd431461_)
                                             (let ((_e434467_
                                                    (gx#syntax-e _hd431461_)))
                                               (let ((_lp-hd435471_
                                                      (##car _e434467_))
                                                     (_lp-tl436474_
                                                      (##cdr _e434467_)))
                                                 (_loop433457_
                                                  _lp-tl436474_
                                                  (cons _lp-hd435471_
                                                        _clause437464_))))
                                             (let ((_clause438477_
                                                    (reverse _clause437464_)))
                                               ((lambda (_L481_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda%)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons (gx#datum->syntax '#f '$stx)
                                        (cons _L261_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g494497_
                                                                _g495500_)
                                                         (cons _g494497_
                                                               _g495500_))
                                                       '()
                                                       _L481_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause438477_))))))
                               (_loop433457_ _target430451_ '()))
                             (_g427444_ _g428448_)))))
                   (_g427444_ _g428448_))
               (_g427444_ _g428448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g426503_ _body424_))))
                                      (_g178202_ _g179206_)))
                                _clauses196255_
                                _hd186223_))))))
               (_loop191235_ _target188229_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g178202_ _g179206_)))))
                                           (_g178202_ _g179206_))
                                       (_g178202_ _g179206_))))
                               (_g178202_ _g179206_))))
                       (_g178202_ _g179206_)))))
            (_g177507_ _stx175_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx513_)
        (let ((_g518603_
               (lambda (_g519599_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g519599_))))
          (let ((_g517764_
                 (lambda (_g519607_)
                   (if (gx#stx-pair? _g519607_)
                       (let ((_e566610_ (gx#syntax-e _g519607_)))
                         (let ((_hd567614_ (##car _e566610_))
                               (_tl568617_ (##cdr _e566610_)))
                           (if (gx#stx-pair? _tl568617_)
                               (let ((_e569620_ (gx#syntax-e _tl568617_)))
                                 (let ((_hd570624_ (##car _e569620_))
                                       (_tl571627_ (##cdr _e569620_)))
                                   (if (gx#stx-pair/null? _hd570624_)
                                       (if (fx>= (gx#stx-length _hd570624_) '0)
                                           (let ((_g28240_
                                                  (gx#syntax-split-splice
                                                   _hd570624_
                                                   '0)))
                                             (begin
                                               (let ((_g28241_
                                                      (values-count _g28240_)))
                                                 (if (not (fx= _g28241_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28241_)))
                                               (let ((_target572630_
                                                      (values-ref _g28240_ 0))
                                                     (_tl574633_
                                                      (values-ref _g28240_ 1)))
                                                 (if (gx#stx-null? _tl574633_)
                                                     (letrec ((_loop575636_
                                                               (lambda (_hd573640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e579643_
                                _pat580645_)
                         (if (gx#stx-pair? _hd573640_)
                             (let ((_e576648_ (gx#syntax-e _hd573640_)))
                               (let ((_lp-hd577652_ (##car _e576648_))
                                     (_lp-tl578655_ (##cdr _e576648_)))
                                 (if (gx#stx-pair? _lp-hd577652_)
                                     (let ((_e583658_
                                            (gx#syntax-e _lp-hd577652_)))
                                       (let ((_hd584662_ (##car _e583658_))
                                             (_tl585665_ (##cdr _e583658_)))
                                         (if (gx#stx-pair? _tl585665_)
                                             (let ((_e586668_
                                                    (gx#syntax-e _tl585665_)))
                                               (let ((_hd587672_
                                                      (##car _e586668_))
                                                     (_tl588675_
                                                      (##cdr _e586668_)))
                                                 (if (gx#stx-null? _tl588675_)
                                                     (_loop575636_
                                                      _lp-tl578655_
                                                      (cons _hd587672_
                                                            _e579643_)
                                                      (cons _hd584662_
                                                            _pat580645_))
                                                     (_g518603_ _g519607_))))
                                             (_g518603_ _g519607_))))
                                     (_g518603_ _g519607_))))
                             (let ((_e581678_ (reverse _e579643_))
                                   (_pat582681_ (reverse _pat580645_)))
                               (if (gx#stx-pair/null? _tl571627_)
                                   (if (fx>= (gx#stx-length _tl571627_) '0)
                                       (let ((_g28242_
                                              (gx#syntax-split-splice
                                               _tl571627_
                                               '0)))
                                         (begin
                                           (let ((_g28243_
                                                  (values-count _g28242_)))
                                             (if (not (fx= _g28243_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28243_)))
                                           (let ((_target589684_
                                                  (values-ref _g28242_ 0))
                                                 (_tl591687_
                                                  (values-ref _g28242_ 1)))
                                             (if (gx#stx-null? _tl591687_)
                                                 (letrec ((_loop592690_
                                                           (lambda (_hd590694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body596697_)
                     (if (gx#stx-pair? _hd590694_)
                         (let ((_e593700_ (gx#syntax-e _hd590694_)))
                           (let ((_lp-hd594704_ (##car _e593700_))
                                 (_lp-tl595707_ (##cdr _e593700_)))
                             (_loop592690_
                              _lp-tl595707_
                              (cons _lp-hd594704_ _body596697_))))
                         (let ((_body597710_ (reverse _body596697_)))
                           ((lambda (_L714_ _L716_ _L717_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g739746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g740749_)
                   (cons _g739746_ _g740749_))
                 '()
                 _L716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g741752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g742755_)
                               (cons _g741752_ _g742755_))
                             '()
                             _L717_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g743758_ _g744761_)
                                                 (cons _g743758_ _g744761_))
                                               '()
                                               _L714_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body597710_
                            _e581678_
                            _pat582681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop592690_
                                                    _target589684_
                                                    '()))
                                                 (_g518603_ _g519607_)))))
                                       (_g518603_ _g519607_))
                                   (_g518603_ _g519607_)))))))
               (_loop575636_ _target572630_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g518603_ _g519607_)))))
                                           (_g518603_ _g519607_))
                                       (_g518603_ _g519607_))))
                               (_g518603_ _g519607_))))
                       (_g518603_ _g519607_)))))
            (let ((_g516886_
                   (lambda (_g519768_)
                     (if (gx#stx-pair? _g519768_)
                         (let ((_e539771_ (gx#syntax-e _g519768_)))
                           (let ((_hd540775_ (##car _e539771_))
                                 (_tl541778_ (##cdr _e539771_)))
                             (if (gx#stx-pair? _tl541778_)
                                 (let ((_e542781_ (gx#syntax-e _tl541778_)))
                                   (let ((_hd543785_ (##car _e542781_))
                                         (_tl544788_ (##cdr _e542781_)))
                                     (if (gx#stx-pair? _hd543785_)
                                         (let ((_e545791_
                                                (gx#syntax-e _hd543785_)))
                                           (let ((_hd546795_ (##car _e545791_))
                                                 (_tl547798_
                                                  (##cdr _e545791_)))
                                             (if (gx#stx-pair? _hd546795_)
                                                 (let ((_e548801_
                                                        (gx#syntax-e
                                                         _hd546795_)))
                                                   (let ((_hd549805_
                                                          (##car _e548801_))
                                                         (_tl550808_
                                                          (##cdr _e548801_)))
                                                     (if (gx#stx-pair?
                                                          _tl550808_)
                                                         (let ((_e551811_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl550808_)))
                   (let ((_hd552815_ (##car _e551811_))
                         (_tl553818_ (##cdr _e551811_)))
                     (if (gx#stx-null? _tl553818_)
                         (if (gx#stx-null? _tl547798_)
                             (if (gx#stx-pair/null? _tl544788_)
                                 (if (fx>= (gx#stx-length _tl544788_) '0)
                                     (let ((_g28244_
                                            (gx#syntax-split-splice
                                             _tl544788_
                                             '0)))
                                       (begin
                                         (let ((_g28245_
                                                (values-count _g28244_)))
                                           (if (not (fx= _g28245_ 2))
                                               (error "Context expects 2 values"
                                                      _g28245_)))
                                         (let ((_target554821_
                                                (values-ref _g28244_ 0))
                                               (_tl556824_
                                                (values-ref _g28244_ 1)))
                                           (if (gx#stx-null? _tl556824_)
                                               (letrec ((_loop557827_
                                                         (lambda (_hd555831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body561834_)
                   (if (gx#stx-pair? _hd555831_)
                       (let ((_e558837_ (gx#syntax-e _hd555831_)))
                         (let ((_lp-hd559841_ (##car _e558837_))
                               (_lp-tl560844_ (##cdr _e558837_)))
                           (_loop557827_
                            _lp-tl560844_
                            (cons _lp-hd559841_ _body561834_))))
                       (let ((_body562847_ (reverse _body561834_)))
                         ((lambda (_L851_ _L853_ _L854_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L853_
                                        (cons '()
                                              (cons (cons _L854_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g877880_ _g878883_)
                                               (cons _g877880_ _g878883_))
                                             '()
                                             _L851_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body562847_
                          _hd552815_
                          _hd549805_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop557827_
                                                  _target554821_
                                                  '()))
                                               (_g517764_ _g519768_)))))
                                     (_g517764_ _g519768_))
                                 (_g517764_ _g519768_))
                             (_g517764_ _g519768_))
                         (_g517764_ _g519768_))))
                 (_g517764_ _g519768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g517764_ _g519768_))))
                                         (_g517764_ _g519768_))))
                                 (_g517764_ _g519768_))))
                         (_g517764_ _g519768_)))))
              (let ((_g515968_
                     (lambda (_g519890_)
                       (if (gx#stx-pair? _g519890_)
                           (let ((_e521893_ (gx#syntax-e _g519890_)))
                             (let ((_hd522897_ (##car _e521893_))
                                   (_tl523900_ (##cdr _e521893_)))
                               (if (gx#stx-pair? _tl523900_)
                                   (let ((_e524903_ (gx#syntax-e _tl523900_)))
                                     (let ((_hd525907_ (##car _e524903_))
                                           (_tl526910_ (##cdr _e524903_)))
                                       (if (gx#stx-null? _hd525907_)
                                           (if (gx#stx-pair/null? _tl526910_)
                                               (if (fx>= (gx#stx-length
                                                          _tl526910_)
                                                         '0)
                                                   (let ((_g28246_
                                                          (gx#syntax-split-splice
                                                           _tl526910_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28247_
                                                              (values-count
                                                               _g28246_)))
                                                         (if (not (fx= _g28247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28247_)))
               (let ((_target527913_ (values-ref _g28246_ 0))
                     (_tl529916_ (values-ref _g28246_ 1)))
                 (if (gx#stx-null? _tl529916_)
                     (letrec ((_loop530919_
                               (lambda (_hd528923_ _body534926_)
                                 (if (gx#stx-pair? _hd528923_)
                                     (let ((_e531929_
                                            (gx#syntax-e _hd528923_)))
                                       (let ((_lp-hd532933_ (##car _e531929_))
                                             (_lp-tl533936_ (##cdr _e531929_)))
                                         (_loop530919_
                                          _lp-tl533936_
                                          (cons _lp-hd532933_ _body534926_))))
                                     (let ((_body535939_
                                            (reverse _body534926_)))
                                       ((lambda (_L943_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g959962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g960965_)
                         (cons _g959962_ _g960965_))
                       '()
                       _L943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body535939_))))))
                       (_loop530919_ _target527913_ '()))
                     (_g516886_ _g519890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g516886_ _g519890_))
                                               (_g516886_ _g519890_))
                                           (_g516886_ _g519890_))))
                                   (_g516886_ _g519890_))))
                           (_g516886_ _g519890_)))))
                (_g515968_ _stx513_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx976_)
        (let ((_g9811058_
               (lambda (_g9821054_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g9821054_))))
          (let ((_g9801159_
                 (lambda (_g9821062_)
                   (if (gx#stx-pair? _g9821062_)
                       (let ((_e10351065_ (gx#syntax-e _g9821062_)))
                         (let ((_hd10361069_ (##car _e10351065_))
                               (_tl10371072_ (##cdr _e10351065_)))
                           (if (gx#stx-pair? _tl10371072_)
                               (let ((_e10381075_ (gx#syntax-e _tl10371072_)))
                                 (let ((_hd10391079_ (##car _e10381075_))
                                       (_tl10401082_ (##cdr _e10381075_)))
                                   (if (gx#stx-pair? _hd10391079_)
                                       (let ((_e10411085_
                                              (gx#syntax-e _hd10391079_)))
                                         (let ((_hd10421089_
                                                (##car _e10411085_))
                                               (_tl10431092_
                                                (##cdr _e10411085_)))
                                           (if (gx#stx-pair/null? _tl10401082_)
                                               (if (fx>= (gx#stx-length
                                                          _tl10401082_)
                                                         '0)
                                                   (let ((_g28248_
                                                          (gx#syntax-split-splice
                                                           _tl10401082_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28249_
                                                              (values-count
                                                               _g28248_)))
                                                         (if (not (fx= _g28249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28249_)))
               (let ((_target10441095_ (values-ref _g28248_ 0))
                     (_tl10461098_ (values-ref _g28248_ 1)))
                 (if (gx#stx-null? _tl10461098_)
                     (letrec ((_loop10471101_
                               (lambda (_hd10451105_ _body10511108_)
                                 (if (gx#stx-pair? _hd10451105_)
                                     (let ((_e10481111_
                                            (gx#syntax-e _hd10451105_)))
                                       (let ((_lp-hd10491115_
                                              (##car _e10481111_))
                                             (_lp-tl10501118_
                                              (##cdr _e10481111_)))
                                         (_loop10471101_
                                          _lp-tl10501118_
                                          (cons _lp-hd10491115_
                                                _body10511108_))))
                                     (let ((_body10521121_
                                            (reverse _body10511108_)))
                                       ((lambda (_L1125_
                                                 _L1127_
                                                 _L1128_
                                                 _L1129_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1128_ '())
                                                      (cons (cons _L1129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1127_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g11501153_ _g11511156_)
                                           (cons _g11501153_ _g11511156_))
                                         '()
                                         _L1125_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body10521121_
                                        _tl10431092_
                                        _hd10421089_
                                        _hd10361069_))))))
                       (_loop10471101_ _target10441095_ '()))
                     (_g9811058_ _g9821062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9811058_ _g9821062_))
                                               (_g9811058_ _g9821062_))))
                                       (_g9811058_ _g9821062_))))
                               (_g9811058_ _g9821062_))))
                       (_g9811058_ _g9821062_)))))
            (let ((_g9791297_
                   (lambda (_g9821163_)
                     (if (gx#stx-pair? _g9821163_)
                         (let ((_e10041166_ (gx#syntax-e _g9821163_)))
                           (let ((_hd10051170_ (##car _e10041166_))
                                 (_tl10061173_ (##cdr _e10041166_)))
                             (if (gx#stx-pair? _tl10061173_)
                                 (let ((_e10071176_
                                        (gx#syntax-e _tl10061173_)))
                                   (let ((_hd10081180_ (##car _e10071176_))
                                         (_tl10091183_ (##cdr _e10071176_)))
                                     (if (gx#stx-pair? _hd10081180_)
                                         (let ((_e10101186_
                                                (gx#syntax-e _hd10081180_)))
                                           (let ((_hd10111190_
                                                  (##car _e10101186_))
                                                 (_tl10121193_
                                                  (##cdr _e10101186_)))
                                             (if (gx#stx-pair? _hd10111190_)
                                                 (let ((_e10131196_
                                                        (gx#syntax-e
                                                         _hd10111190_)))
                                                   (let ((_hd10141200_
                                                          (##car _e10131196_))
                                                         (_tl10151203_
                                                          (##cdr _e10131196_)))
                                                     (if (gx#stx-pair?
                                                          _hd10141200_)
                                                         (let ((_e10161206_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd10141200_)))
                   (let ((_hd10171210_ (##car _e10161206_))
                         (_tl10181213_ (##cdr _e10161206_)))
                     (if (gx#identifier? _hd10171210_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g28250_|
                              _hd10171210_)
                             (if (gx#stx-pair? _tl10151203_)
                                 (let ((_e10191216_
                                        (gx#syntax-e _tl10151203_)))
                                   (let ((_hd10201220_ (##car _e10191216_))
                                         (_tl10211223_ (##cdr _e10191216_)))
                                     (if (gx#stx-null? _tl10211223_)
                                         (if (gx#stx-pair/null? _tl10091183_)
                                             (if (fx>= (gx#stx-length
                                                        _tl10091183_)
                                                       '0)
                                                 (let ((_g28251_
                                                        (gx#syntax-split-splice
                                                         _tl10091183_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28252_
                                                            (values-count
                                                             _g28251_)))
                                                       (if (not (fx= _g28252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28252_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target10221226_
                                                            (values-ref
                                                             _g28251_
                                                             0))
                                                           (_tl10241229_
                                                            (values-ref
                                                             _g28251_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl10241229_)
                                                           (letrec ((_loop10251232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd10231236_ _body10291239_)
                               (if (gx#stx-pair? _hd10231236_)
                                   (let ((_e10261242_
                                          (gx#syntax-e _hd10231236_)))
                                     (let ((_lp-hd10271246_
                                            (##car _e10261242_))
                                           (_lp-tl10281249_
                                            (##cdr _e10261242_)))
                                       (_loop10251232_
                                        _lp-tl10281249_
                                        (cons _lp-hd10271246_
                                              _body10291239_))))
                                   (let ((_body10301252_
                                          (reverse _body10291239_)))
                                     ((lambda (_L1256_
                                               _L1258_
                                               _L1259_
                                               _L1260_
                                               _L1261_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1260_
                                                                (cons _L1259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1261_
                                                                (cons _L1258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g12881291_ _g12891294_)
                                         (cons _g12881291_ _g12891294_))
                                       '()
                                       _L1256_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body10301252_
                                      _tl10121193_
                                      _hd10201220_
                                      _tl10181213_
                                      _hd10051170_))))))
                     (_loop10251232_ _target10221226_ '()))
                   (_g9801159_ _g9821163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g9801159_ _g9821163_))
                                             (_g9801159_ _g9821163_))
                                         (_g9801159_ _g9821163_))))
                                 (_g9801159_ _g9821163_))
                             (_g9801159_ _g9821163_))
                         (_g9801159_ _g9821163_))))
                 (_g9801159_ _g9821163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g9801159_ _g9821163_))))
                                         (_g9801159_ _g9821163_))))
                                 (_g9801159_ _g9821163_))))
                         (_g9801159_ _g9821163_)))))
              (let ((_g9781379_
                     (lambda (_g9821301_)
                       (if (gx#stx-pair? _g9821301_)
                           (let ((_e9841304_ (gx#syntax-e _g9821301_)))
                             (let ((_hd9851308_ (##car _e9841304_))
                                   (_tl9861311_ (##cdr _e9841304_)))
                               (if (gx#stx-pair? _tl9861311_)
                                   (let ((_e9871314_
                                          (gx#syntax-e _tl9861311_)))
                                     (let ((_hd9881318_ (##car _e9871314_))
                                           (_tl9891321_ (##cdr _e9871314_)))
                                       (if (gx#stx-null? _hd9881318_)
                                           (if (gx#stx-pair/null? _tl9891321_)
                                               (if (fx>= (gx#stx-length
                                                          _tl9891321_)
                                                         '0)
                                                   (let ((_g28253_
                                                          (gx#syntax-split-splice
                                                           _tl9891321_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28254_
                                                              (values-count
                                                               _g28253_)))
                                                         (if (not (fx= _g28254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28254_)))
               (let ((_target9901324_ (values-ref _g28253_ 0))
                     (_tl9921327_ (values-ref _g28253_ 1)))
                 (if (gx#stx-null? _tl9921327_)
                     (letrec ((_loop9931330_
                               (lambda (_hd9911334_ _body9971337_)
                                 (if (gx#stx-pair? _hd9911334_)
                                     (let ((_e9941340_
                                            (gx#syntax-e _hd9911334_)))
                                       (let ((_lp-hd9951344_
                                              (##car _e9941340_))
                                             (_lp-tl9961347_
                                              (##cdr _e9941340_)))
                                         (_loop9931330_
                                          _lp-tl9961347_
                                          (cons _lp-hd9951344_
                                                _body9971337_))))
                                     (let ((_body9981350_
                                            (reverse _body9971337_)))
                                       ((lambda (_L1354_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g13701373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g13711376_)
                         (cons _g13701373_ _g13711376_))
                       '()
                       _L1354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body9981350_))))))
                       (_loop9931330_ _target9901324_ '()))
                     (_g9791297_ _g9821301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9791297_ _g9821301_))
                                               (_g9791297_ _g9821301_))
                                           (_g9791297_ _g9821301_))))
                                   (_g9791297_ _g9821301_))))
                           (_g9791297_ _g9821301_)))))
                (_g9781379_ _stx976_)))))))))
