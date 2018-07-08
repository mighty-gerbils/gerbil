(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f
     '(id depth)))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args19619_
      (apply make-struct-instance gx#syntax-pattern::t _$args19619_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19616_ _stx19617_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19617_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19098_)
      (letrec ((_generate19100_
                (lambda (_e19327_)
                  (letrec ((_BUG19329_
                            (lambda (_q19491_)
                              (error '"BUG: syntax; generate"
                                     _stx19098_
                                     _e19327_
                                     _q19491_)))
                           (_local-pattern-e19330_
                            (lambda (_pat19489_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19489_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19331_
                            (lambda (_q19486_ _vars19487_)
                              (assgetq _q19486_ _vars19487_ _BUG19329_)))
                           (_getarg19332_
                            (lambda (_arg19452_ _vars19453_)
                              (let* ((_arg1945419461_ _arg19452_)
                                     (_E1945619465_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1945419461_)))
                                     (_K1945719474_
                                      (lambda (_e19468_ _tag19469_)
                                        (let ((_$e19471_ _tag19469_))
                                          (if (eq? 'ref _$e19471_)
                                              (_getvar19331_
                                               _e19468_
                                               _vars19453_)
                                              (if (eq? 'pattern _$e19471_)
                                                  (_local-pattern-e19330_
                                                   _e19468_)
                                                  (_BUG19329_ _arg19452_)))))))
                                (if (##pair? _arg1945419461_)
                                    (let ((_hd1945819477_
                                           (##car _arg1945419461_))
                                          (_tl1945919479_
                                           (##cdr _arg1945419461_)))
                                      (let* ((_tag19482_ _hd1945819477_)
                                             (_e19484_ _tl1945919479_))
                                        (_K1945719474_ _e19484_ _tag19482_)))
                                    (_E1945619465_))))))
                    (let _recur19334_ ((_e19336_ _e19327_) (_vars19337_ '()))
                      (let* ((_e1933819345_ _e19336_)
                             (_E1934019349_
                              (lambda ()
                                (error '"No clause matching" _e1933819345_)))
                             (_K1934119440_
                              (lambda (_body19352_ _tag19353_)
                                (let ((_$e19355_ _tag19353_))
                                  (if (eq? 'datum _$e19355_)
                                      (gx#core-list 'quote _body19352_)
                                      (if (eq? 'term _$e19355_)
                                          (let ((_id19358_
                                                 (gx#syntax-local-unwrap
                                                  _body19352_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19358_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19360_
                                                       (##unchecked-structure-ref
                                                        _id19358_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19360_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19352_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19352_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19352_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19358_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19352_)
                                                    (_BUG19329_ _e19336_))))
                                          (if (eq? 'pattern _$e19355_)
                                              (_local-pattern-e19330_
                                               _body19352_)
                                              (if (eq? 'ref _$e19355_)
                                                  (_getvar19331_
                                                   _body19352_
                                                   _vars19337_)
                                                  (if (eq? 'cons _$e19355_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19334_
                                                        (car _body19352_)
                                                        _vars19337_)
                                                       (_recur19334_
                                                        (cdr _body19352_)
                                                        _vars19337_))
                                                      (if (eq? 'vector
                                                               _$e19355_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19334_
                                                            _body19352_
                                                            _vars19337_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19355_)
                      (gx#core-list
                       'box
                       (_recur19334_ _body19352_ _vars19337_))
                      (if (eq? 'splice _$e19355_)
                          (let* ((_body1936119372_ _body19352_)
                                 (_E1936319376_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1936119372_)))
                                 (_K1936419414_
                                  (lambda (_args19379_
                                           _iv19380_
                                           _hd19381_
                                           _depth19382_)
                                    (let* ((_targets19388_
                                            (map (lambda (_g1938319385_)
                                                   (_getarg19332_
                                                    _g1938319385_
                                                    _vars19337_))
                                                 _args19379_))
                                           (_fold-in19390_
                                            (gx#gentemps _args19379_))
                                           (_fold-out19392_ (gx#genident__0))
                                           (_lambda-args19394_
                                            (foldr1 cons
                                                    (cons _fold-out19392_ '())
                                                    _fold-in19390_))
                                           (_lambda-body19411_
                                            (if (fx> _depth19382_ '1)
                                                (let ((_r-args19402_
                                                       (map (lambda (_arg19396_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19396_)))
                    _args19379_))
              (_r-vars19403_
               (foldr2 (lambda (_arg19398_ _var19399_ _r19400_)
                         (cons (cons (cdr _arg19398_) _var19399_) _r19400_))
                       _vars19337_
                       _args19379_
                       _fold-in19390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19334_
                                                   (cons 'splice
                                                         (cons (fx- _depth19382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19381_
                             (cons (cons 'var _fold-out19392_)
                                   _r-args19402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19403_))
                                                (let ((_hd-vars19409_
                                                       (foldr2 (lambda (_arg19405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19406_
                                _r19407_)
                         (cons (cons (cdr _arg19405_) _var19406_) _r19407_))
                       _vars19337_
                       _args19379_
                       _fold-in19390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19334_
                                                    _hd19381_
                                                    _hd-vars19409_)
                                                   _fold-out19392_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19388_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19388_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19394_
                                         _lambda-body19411_)
                                        (_recur19334_ _iv19380_ _vars19337_)
                                        _targets19388_))))))
                            (if (##pair? _body1936119372_)
                                (let ((_hd1936519417_ (##car _body1936119372_))
                                      (_tl1936619419_
                                       (##cdr _body1936119372_)))
                                  (let ((_depth19422_ _hd1936519417_))
                                    (if (##pair? _tl1936619419_)
                                        (let ((_hd1936719424_
                                               (##car _tl1936619419_))
                                              (_tl1936819426_
                                               (##cdr _tl1936619419_)))
                                          (let ((_hd19429_ _hd1936719424_))
                                            (if (##pair? _tl1936819426_)
                                                (let ((_hd1936919431_
                                                       (##car _tl1936819426_))
                                                      (_tl1937019433_
                                                       (##cdr _tl1936819426_)))
                                                  (let* ((_iv19436_
                                                          _hd1936919431_)
                                                         (_args19438_
                                                          _tl1937019433_))
                                                    (_K1936419414_
                                                     _args19438_
                                                     _iv19436_
                                                     _hd19429_
                                                     _depth19422_)))
                                                (_E1936319376_))))
                                        (_E1936319376_))))
                                (_E1936319376_)))
                          (if (eq? 'var _$e19355_)
                              _body19352_
                              (_BUG19329_ _e19336_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1933819345_)
                            (let ((_hd1934219443_ (##car _e1933819345_))
                                  (_tl1934319445_ (##cdr _e1933819345_)))
                              (let* ((_tag19448_ _hd1934219443_)
                                     (_body19450_ _tl1934319445_))
                                (_K1934119440_ _body19450_ _tag19448_)))
                            (_E1934019349_)))))))
               (_parse19101_
                (lambda (_e19142_)
                  (letrec ((_make-cons19144_
                            (lambda (_hd19319_ _tl19320_)
                              (let ((_g19621_ _hd19319_) (_g19623_ _tl19320_))
                                (begin
                                  (let ((_g19622_
                                         (if (##values? _g19621_)
                                             (##vector-length _g19621_)
                                             1)))
                                    (if (not (##fx= _g19622_ 2))
                                        (error "Context expects 2 values"
                                               _g19622_)))
                                  (let ((_g19624_
                                         (if (##values? _g19623_)
                                             (##vector-length _g19623_)
                                             1)))
                                    (if (not (##fx= _g19624_ 2))
                                        (error "Context expects 2 values"
                                               _g19624_)))
                                  (let ((_hd-e19322_ (##vector-ref _g19621_ 0))
                                        (_hd-vars19323_
                                         (##vector-ref _g19621_ 1)))
                                    (let ((_tl-e19324_
                                           (##vector-ref _g19623_ 0))
                                          (_tl-vars19325_
                                           (##vector-ref _g19623_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19322_
                                                          _tl-e19324_))
                                              (append _hd-vars19323_
                                                      _tl-vars19325_))))))))
                           (_make-splice19145_
                            (lambda (_where19258_
                                     _depth19259_
                                     _hd19260_
                                     _tl19261_)
                              (let ((_g19625_ _hd19260_) (_g19627_ _tl19261_))
                                (begin
                                  (let ((_g19626_
                                         (if (##values? _g19625_)
                                             (##vector-length _g19625_)
                                             1)))
                                    (if (not (##fx= _g19626_ 2))
                                        (error "Context expects 2 values"
                                               _g19626_)))
                                  (let ((_g19628_
                                         (if (##values? _g19627_)
                                             (##vector-length _g19627_)
                                             1)))
                                    (if (not (##fx= _g19628_ 2))
                                        (error "Context expects 2 values"
                                               _g19628_)))
                                  (let ((_hd-e19263_ (##vector-ref _g19625_ 0))
                                        (_hd-vars19264_
                                         (##vector-ref _g19625_ 1)))
                                    (let ((_tl-e19265_
                                           (##vector-ref _g19627_ 0))
                                          (_tl-vars19266_
                                           (##vector-ref _g19627_ 1)))
                                      (let _lp19268_ ((_rest19270_
                                                       _hd-vars19264_)
                                                      (_targets19271_ '())
                                                      (_vars19272_
                                                       _tl-vars19266_))
                                        (let* ((_rest1927319283_ _rest19270_)
                                               (_else1927519291_
                                                (lambda ()
                                                  (if (null? _targets19271_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19098_
                                                       _where19258_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19259_
                                  (cons _hd-e19263_
                                        (cons _tl-e19265_ _targets19271_))))
                      _vars19272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1927719300_
                                                (lambda (_rest19294_
                                                         _hd-pat19295_
                                                         _hd-depth*19296_)
                                                  (let ((_hd-depth19298_
                                                         (fx- _hd-depth*19296_
                                                              _depth19259_)))
                                                    (if (fxpositive?
                                                         _hd-depth19298_)
                                                        (_lp19268_
                                                         _rest19294_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19295_)
                       _targets19271_)
                 (cons (cons _hd-depth19298_ _hd-pat19295_) _vars19272_))
                (if (fxzero? _hd-depth19298_)
                    (_lp19268_
                     _rest19294_
                     (cons (cons 'pattern _hd-pat19295_) _targets19271_)
                     _vars19272_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19098_
                     _where19258_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1927319283_)
                                              (let ((_hd1927819303_
                                                     (##car _rest1927319283_))
                                                    (_tl1927919305_
                                                     (##cdr _rest1927319283_)))
                                                (if (##pair? _hd1927819303_)
                                                    (let ((_hd1928019308_
                                                           (##car _hd1927819303_))
                                                          (_tl1928119310_
                                                           (##cdr _hd1927819303_)))
                                                      (let* ((_hd-depth*19313_
                                                              _hd1928019308_)
                                                             (_hd-pat19315_
                                                              _tl1928119310_)
                                                             (_rest19317_
                                                              _tl1927919305_))
                                                        (_K1927719300_
                                                         _rest19317_
                                                         _hd-pat19315_
                                                         _hd-depth*19313_)))
                                                    (_else1927519291_)))
                                              (_else1927519291_))))))))))
                           (_recur19146_
                            (lambda (_e19151_ _is-e?19152_)
                              (if (_is-e?19152_ _e19151_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19098_)
                                  (if (gx#syntax-local-pattern? _e19151_)
                                      (let* ((_pat19154_
                                              (gx#syntax-local-e__0 _e19151_))
                                             (_depth19156_
                                              (##structure-ref
                                               _pat19154_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19156_)
                                            (values (cons 'ref _pat19154_)
                                                    (cons (cons _depth19156_
                                                                _pat19154_)
                                                          '()))
                                            (values (cons 'pattern _pat19154_)
                                                    '())))
                                      (if (gx#identifier? _e19151_)
                                          (values (cons 'term _e19151_) '())
                                          (if (gx#stx-pair? _e19151_)
                                              (let* ((_e1915819165_ _e19151_)
                                                     (_E1916019169_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1915819165_)))
                                                     (_E1915919248_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1915819165_)
                                                            (let ((_e1916119173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1915819165_)))
                      (let ((_hd1916219176_ (##car _e1916119173_))
                            (_tl1916319178_ (##cdr _e1916119173_)))
                        (let* ((_hd19181_ _hd1916219176_)
                               (_rest19183_ _tl1916319178_))
                          (if '#t
                              (if (_is-e?19152_ _hd19181_)
                                  (let* ((_e1918419191_ _rest19183_)
                                         (_E1918619195_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19098_
                                             _e19151_)))
                                         (_E1918519209_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1918419191_)
                                                (let ((_e1918719199_
                                                       (gx#syntax-e
                                                        _e1918419191_)))
                                                  (let ((_hd1918819202_
                                                         (##car _e1918719199_))
                                                        (_tl1918919204_
                                                         (##cdr _e1918719199_)))
                                                    (let ((_rest19207_
                                                           _hd1918819202_))
                                                      (if (gx#stx-null?
                                                           _tl1918919204_)
                                                          (if '#t
                                                              (_recur19146_
                                                               _rest19207_
                                                               false)
                                                              (_E1918619195_))
                                                          (_E1918619195_)))))
                                                (_E1918619195_)))))
                                    (_E1918519209_))
                                  (let _lp19213_ ((_rest19215_ _rest19183_)
                                                  (_depth19216_ '0))
                                    (let* ((_e1921719224_ _rest19215_)
                                           (_E1921919228_
                                            (lambda ()
                                              (if (fxpositive? _depth19216_)
                                                  (_make-splice19145_
                                                   _e19151_
                                                   _depth19216_
                                                   (_recur19146_
                                                    _hd19181_
                                                    _is-e?19152_)
                                                   (_recur19146_
                                                    _rest19215_
                                                    _is-e?19152_))
                                                  (_make-cons19144_
                                                   (_recur19146_
                                                    _hd19181_
                                                    _is-e?19152_)
                                                   (_recur19146_
                                                    _rest19215_
                                                    _is-e?19152_)))))
                                           (_E1921819244_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1921719224_)
                                                  (let ((_e1922019232_
                                                         (gx#syntax-e
                                                          _e1921719224_)))
                                                    (let ((_hd1922119235_
                                                           (##car _e1922019232_))
                                                          (_tl1922219237_
                                                           (##cdr _e1922019232_)))
                                                      (let* ((_rest-hd19240_
                                                              _hd1922119235_)
                                                             (_rest-tl19242_
                                                              _tl1922219237_))
                                                        (if '#t
                                                            (if (_is-e?19152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19240_)
                        (_lp19213_ _rest-tl19242_ (fx+ _depth19216_ '1))
                        (if (fxpositive? _depth19216_)
                            (_make-splice19145_
                             _e19151_
                             _depth19216_
                             (_recur19146_ _hd19181_ _is-e?19152_)
                             (_recur19146_ _rest19215_ _is-e?19152_))
                            (_make-cons19144_
                             (_recur19146_ _hd19181_ _is-e?19152_)
                             (_recur19146_ _rest19215_ _is-e?19152_))))
                    (_E1921919228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1921919228_)))))
                                      (_E1921819244_))))
                              (_E1916019169_)))))
                    (_E1916019169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1915919248_))
                                              (if (gx#stx-vector? _e19151_)
                                                  (let ((_g19629_
                                                         (_recur19146_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19151_))
                                                          _is-e?19152_)))
                                                    (begin
                                                      (let ((_g19630_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19629_)
                         (##vector-length _g19629_)
                         1)))
                (if (not (##fx= _g19630_ 2))
                    (error "Context expects 2 values" _g19630_)))
              (let ((_e19252_ (##vector-ref _g19629_ 0))
                    (_vars19253_ (##vector-ref _g19629_ 1)))
                (values (cons 'vector _e19252_) _vars19253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19151_)
                                                      (let ((_g19631_
                                                             (_recur19146_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19151_))
                      _is-e?19152_)))
                (begin
                  (let ((_g19632_
                         (if (##values? _g19631_)
                             (##vector-length _g19631_)
                             1)))
                    (if (not (##fx= _g19632_ 2))
                        (error "Context expects 2 values" _g19632_)))
                  (let ((_e19255_ (##vector-ref _g19631_ 0))
                        (_vars19256_ (##vector-ref _g19631_ 1)))
                    (values (cons 'box _e19255_) _vars19256_))))
              (values (cons 'datum _e19151_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19633_ (_recur19146_ _e19142_ gx#ellipsis?)))
                      (begin
                        (let ((_g19634_
                               (if (##values? _g19633_)
                                   (##vector-length _g19633_)
                                   1)))
                          (if (not (##fx= _g19634_ 2))
                              (error "Context expects 2 values" _g19634_)))
                        (let ((_tree19148_ (##vector-ref _g19633_ 0))
                              (_vars19149_ (##vector-ref _g19633_ 1)))
                          (if (null? _vars19149_)
                              _tree19148_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19098_
                               _vars19149_)))))))))
        (let* ((_e1910219112_ _stx19098_)
               (_E1910419116_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19098_)))
               (_E1910319138_
                (lambda ()
                  (if (gx#stx-pair? _e1910219112_)
                      (let ((_e1910519120_ (gx#syntax-e _e1910219112_)))
                        (let ((_hd1910619123_ (##car _e1910519120_))
                              (_tl1910719125_ (##cdr _e1910519120_)))
                          (if (gx#stx-pair? _tl1910719125_)
                              (let ((_e1910819128_
                                     (gx#syntax-e _tl1910719125_)))
                                (let ((_hd1910919131_ (##car _e1910819128_))
                                      (_tl1911019133_ (##cdr _e1910819128_)))
                                  (let ((_form19136_ _hd1910919131_))
                                    (if (gx#stx-null? _tl1911019133_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19100_
                                              (_parse19101_ _form19136_))
                                             (gx#stx-source _stx19098_))
                                            (_E1910419116_))
                                        (_E1910419116_)))))
                              (_E1910419116_))))
                      (_E1910419116_)))))
          (_E1910319138_)))))
  (define gx#macro-expand-syntax-case__%
    (lambda (_stx18362_ _identifier=?18363_ _unwrap-e18364_ _wrap-e18365_)
      (letrec ((_generate-bindings18367_
                (lambda (_target18962_
                         _ids18963_
                         _clauses18964_
                         _clause-ids18965_
                         _E18966_)
                  (letrec ((_generate118968_
                            (lambda (_clause19065_ _clause-id19066_ _E19067_)
                              (cons (cons _clause-id19066_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18962_ '())
                                           (_generate-clause18369_
                                            _target18962_
                                            _ids18963_
                                            _clause19065_
                                            _E19067_))
                                          '())))))
                    (let _lp18970_ ((_rest18972_ _clauses18964_)
                                    (_rest-ids18973_ _clause-ids18965_)
                                    (_bindings18974_ '()))
                      (let* ((_rest1897518983_ _rest18972_)
                             (_else1897718991_ (lambda () _bindings18974_))
                             (_K1897919053_
                              (lambda (_rest18994_ _clause18995_)
                                (let* ((_rest-ids1899619003_ _rest-ids18973_)
                                       (_E1899819007_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest-ids1899619003_)))
                                       (_K1899919041_
                                        (lambda (_rest-ids19010_
                                                 _clause-id19011_)
                                          (let* ((_rest-ids1901219020_
                                                  _rest-ids19010_)
                                                 (_else1901419028_
                                                  (lambda ()
                                                    (cons (_generate118968_
                                                           _clause18995_
                                                           _clause-id19011_
                                                           _E18966_)
                                                          _bindings18974_)))
                                                 (_K1901619033_
                                                  (lambda (_next-clause-id19031_)
                                                    (_lp18970_
                                                     _rest18994_
                                                     _rest-ids19010_
                                                     (cons (_generate118968_
                                                            _clause18995_
                                                            _clause-id19011_
                                                            _next-clause-id19031_)
                                                           _bindings18974_)))))
                                            (if (##pair? _rest-ids1901219020_)
                                                (let* ((_hd1901719036_
                                                        (##car _rest-ids1901219020_))
                                                       (_next-clause-id19039_
                                                        _hd1901719036_))
                                                  (_K1901619033_
                                                   _next-clause-id19039_))
                                                (_else1901419028_))))))
                                  (if (##pair? _rest-ids1899619003_)
                                      (let ((_hd1900019044_
                                             (##car _rest-ids1899619003_))
                                            (_tl1900119046_
                                             (##cdr _rest-ids1899619003_)))
                                        (let* ((_clause-id19049_
                                                _hd1900019044_)
                                               (_rest-ids19051_
                                                _tl1900119046_))
                                          (_K1899919041_
                                           _rest-ids19051_
                                           _clause-id19049_)))
                                      (_E1899819007_))))))
                        (if (##pair? _rest1897518983_)
                            (let ((_hd1898019056_ (##car _rest1897518983_))
                                  (_tl1898119058_ (##cdr _rest1897518983_)))
                              (let* ((_clause19061_ _hd1898019056_)
                                     (_rest19063_ _tl1898119058_))
                                (_K1897919053_ _rest19063_ _clause19061_)))
                            (_else1897718991_)))))))
               (_generate-body18368_
                (lambda (_bindings18922_ _body18923_)
                  (let _recur18925_ ((_rest18927_ _bindings18922_))
                    (let* ((_rest1892818936_ _rest18927_)
                           (_else1893018944_ (lambda () _body18923_))
                           (_K1893218950_
                            (lambda (_rest18947_ _hd18948_)
                              (gx#core-list
                               'let-values
                               (cons _hd18948_ '())
                               (_recur18925_ _rest18947_)))))
                      (if (##pair? _rest1892818936_)
                          (let ((_hd1893318953_ (##car _rest1892818936_))
                                (_tl1893418955_ (##cdr _rest1892818936_)))
                            (let* ((_hd18958_ _hd1893318953_)
                                   (_rest18960_ _tl1893418955_))
                              (_K1893218950_ _rest18960_ _hd18958_)))
                          (_else1893018944_))))))
               (_generate-clause18369_
                (lambda (_target18785_ _ids18786_ _clause18787_ _E18788_)
                  (letrec ((_generate118790_
                            (lambda (_hd18877_ _fender18878_ _body18879_)
                              (let ((_g19635_
                                     (_parse-clause18371_
                                      _hd18877_
                                      _ids18786_)))
                                (begin
                                  (let ((_g19636_
                                         (if (##values? _g19635_)
                                             (##vector-length _g19635_)
                                             1)))
                                    (if (not (##fx= _g19636_ 2))
                                        (error "Context expects 2 values"
                                               _g19636_)))
                                  (let ((_e18881_ (##vector-ref _g19635_ 0))
                                        (_mvars18882_
                                         (##vector-ref _g19635_ 1)))
                                    (let* ((_pvars18884_
                                            (map gx#syntax-local-rewrap
                                                 (gx#gentemps _mvars18882_)))
                                           (_E18886_
                                            (cons _E18788_
                                                  (cons _target18785_ '())))
                                           (_K18919_
                                            (gx#core-list
                                             'lambda%
                                             _pvars18884_
                                             (gx#core-list
                                              'let-syntax
                                              (map (lambda (_mvar18888_
                                                            _pvar18889_)
                                                     (let* ((_mvar1889018897_
                                                             _mvar18888_)
                                                            (_E1889218901_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _mvar1889018897_)))
                    (_K1889318907_
                     (lambda (_depth18904_ _id18905_)
                       (cons _id18905_
                             (cons (gx#core-list
                                    'make-syntax-pattern
                                    (gx#core-list 'quote _id18905_)
                                    (gx#core-list 'quote _pvar18889_)
                                    _depth18904_)
                                   '())))))
               (if (##pair? _mvar1889018897_)
                   (let ((_hd1889418910_ (##car _mvar1889018897_))
                         (_tl1889518912_ (##cdr _mvar1889018897_)))
                     (let* ((_id18915_ _hd1889418910_)
                            (_depth18917_ _tl1889518912_))
                       (_K1889318907_ _depth18917_ _id18915_)))
                   (_E1889218901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _mvars18882_
                                                   _pvars18884_)
                                              (if (eq? _fender18878_ '#t)
                                                  _body18879_
                                                  (gx#core-list
                                                   'if
                                                   _fender18878_
                                                   _body18879_
                                                   _E18886_))))))
                                      (_generate-match18370_
                                       _hd18877_
                                       _target18785_
                                       _e18881_
                                       _mvars18882_
                                       _K18919_
                                       _E18886_))))))))
                    (let* ((_e1879118811_ _clause18787_)
                           (_E1880018815_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1879118811_)))
                           (_E1879318849_
                            (lambda ()
                              (if (gx#stx-pair? _e1879118811_)
                                  (let ((_e1880118819_
                                         (gx#syntax-e _e1879118811_)))
                                    (let ((_hd1880218822_
                                           (##car _e1880118819_))
                                          (_tl1880318824_
                                           (##cdr _e1880118819_)))
                                      (let ((_hd18827_ _hd1880218822_))
                                        (if (gx#stx-pair? _tl1880318824_)
                                            (let ((_e1880418829_
                                                   (gx#syntax-e
                                                    _tl1880318824_)))
                                              (let ((_hd1880518832_
                                                     (##car _e1880418829_))
                                                    (_tl1880618834_
                                                     (##cdr _e1880418829_)))
                                                (let ((_fender18837_
                                                       _hd1880518832_))
                                                  (if (gx#stx-pair?
                                                       _tl1880618834_)
                                                      (let ((_e1880718839_
                                                             (gx#syntax-e
                                                              _tl1880618834_)))
                                                        (let ((_hd1880818842_
                                                               (##car _e1880718839_))
                                                              (_tl1880918844_
                                                               (##cdr _e1880718839_)))
                                                          (let ((_body18847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1880818842_))
                    (if (gx#stx-null? _tl1880918844_)
                        (if '#t
                            (_generate118790_
                             _hd18827_
                             _fender18837_
                             _body18847_)
                            (_E1880018815_))
                        (_E1880018815_)))))
              (_E1880018815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1880018815_)))))
                                  (_E1880018815_))))
                           (_E1879218873_
                            (lambda ()
                              (if (gx#stx-pair? _e1879118811_)
                                  (let ((_e1879418853_
                                         (gx#syntax-e _e1879118811_)))
                                    (let ((_hd1879518856_
                                           (##car _e1879418853_))
                                          (_tl1879618858_
                                           (##cdr _e1879418853_)))
                                      (let ((_hd18861_ _hd1879518856_))
                                        (if (gx#stx-pair? _tl1879618858_)
                                            (let ((_e1879718863_
                                                   (gx#syntax-e
                                                    _tl1879618858_)))
                                              (let ((_hd1879818866_
                                                     (##car _e1879718863_))
                                                    (_tl1879918868_
                                                     (##cdr _e1879718863_)))
                                                (let ((_body18871_
                                                       _hd1879818866_))
                                                  (if (gx#stx-null?
                                                       _tl1879918868_)
                                                      (if '#t
                                                          (_generate118790_
                                                           _hd18861_
                                                           '#t
                                                           _body18871_)
                                                          (_E1879318849_))
                                                      (_E1879318849_)))))
                                            (_E1879318849_)))))
                                  (_E1879318849_)))))
                      (_E1879218873_)))))
               (_generate-match18370_
                (lambda (_where18534_
                         _target18535_
                         _hd18536_
                         _mvars18537_
                         _K18538_
                         _E18539_)
                  (letrec ((_BUG18541_
                            (lambda (_q18783_)
                              (error '"BUG: syntax-case; generate"
                                     _stx18362_
                                     _hd18536_
                                     _q18783_)))
                           (_recur18542_
                            (lambda (_e18633_
                                     _vars18634_
                                     _target18635_
                                     _E18636_
                                     _k18637_)
                              (let* ((_e1863818645_ _e18633_)
                                     (_E1864018649_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _e1863818645_)))
                                     (_K1864118771_
                                      (lambda (_body18652_ _tag18653_)
                                        (let ((_$e18655_ _tag18653_))
                                          (if (eq? 'any _$e18655_)
                                              (_k18637_ _vars18634_)
                                              (if (eq? 'id _$e18655_)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'identifier?
                                                    _target18635_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     _identifier=?18363_
                                                     (gx#core-list
                                                      _wrap-e18365_
                                                      _body18652_)
                                                     _target18635_)
                                                    (_k18637_ _vars18634_)
                                                    _E18636_)
                                                   _E18636_)
                                                  (if (eq? 'var _$e18655_)
                                                      (_k18637_
                                                       (cons (cons _body18652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _target18635_)
                     _vars18634_))
              (if (eq? 'cons _$e18655_)
                  (let ((_$e18658_ (gx#genident__1 'e))
                        (_$hd18659_ (gx#genident__1 'hd))
                        (_$tl18660_ (gx#genident__1 'tl)))
                    (gx#core-list
                     'if
                     (gx#core-list 'stx-pair? _target18635_)
                     (gx#core-list
                      'let-values
                      (cons (cons (cons _$e18658_ '())
                                  (cons (gx#core-list
                                         _unwrap-e18364_
                                         _target18635_)
                                        '()))
                            '())
                      (gx#core-list
                       'let-values
                       (cons (cons (cons _$hd18659_ '())
                                   (cons (gx#core-list '##car _$e18658_) '()))
                             (cons (cons (cons _$tl18660_ '())
                                         (cons (gx#core-list '##cdr _$e18658_)
                                               '()))
                                   '()))
                       (let* ((_body1866118668_ _body18652_)
                              (_E1866318672_
                               (lambda ()
                                 (error '"No clause matching"
                                        _body1866118668_)))
                              (_K1866418680_
                               (lambda (_tl18675_ _hd18676_)
                                 (_recur18542_
                                  _hd18676_
                                  _vars18634_
                                  _$hd18659_
                                  _E18636_
                                  (lambda (_vars18678_)
                                    (_recur18542_
                                     _tl18675_
                                     _vars18678_
                                     _$tl18660_
                                     _E18636_
                                     _k18637_))))))
                         (if (##pair? _body1866118668_)
                             (let ((_hd1866518683_ (##car _body1866118668_))
                                   (_tl1866618685_ (##cdr _body1866118668_)))
                               (let* ((_hd18688_ _hd1866518683_)
                                      (_tl18690_ _tl1866618685_))
                                 (_K1866418680_ _tl18690_ _hd18688_)))
                             (_E1866318672_)))))
                     _E18636_))
                  (if (eq? 'splice _$e18655_)
                      (let* ((_body1869118698_ _body18652_)
                             (_E1869318702_
                              (lambda ()
                                (error '"No clause matching"
                                       _body1869118698_)))
                             (_K1869418753_
                              (lambda (_tl18705_ _hd18706_)
                                (let* ((_rlen18708_
                                        (_splice-rlen18543_ _tl18705_))
                                       (_$target18710_
                                        (gx#genident__1 'target))
                                       (_$hd18712_ (gx#genident__1 'hd))
                                       (_$tl18714_ (gx#genident__1 'tl))
                                       (_$lp18716_ (gx#genident__1 'loop))
                                       (_$lp-e18718_ (gx#genident__1 'e))
                                       (_$lp-hd18720_ (gx#genident__1 'lp-hd))
                                       (_$lp-tl18722_ (gx#genident__1 'lp-tl))
                                       (_svars18724_
                                        (_splice-vars18544_ _hd18706_))
                                       (_lvars18726_
                                        (gx#gentemps _svars18724_))
                                       (_tlvars18728_
                                        (gx#gentemps _svars18724_))
                                       (_linit18732_
                                        (map (lambda (_var18730_)
                                               (gx#core-list 'quote '()))
                                             _lvars18726_)))
                                  (letrec ((_make-loop18735_
                                            (lambda (_vars18739_)
                                              (gx#core-list
                                               'letrec-values
                                               (cons (cons (cons _$lp18716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (gx#core-list
                          'lambda%
                          (cons _$hd18712_ _lvars18726_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-pair? _$hd18712_)
                           (gx#core-list
                            'let-values
                            (cons (cons (cons _$lp-e18718_ '())
                                        (cons (gx#core-list
                                               _unwrap-e18364_
                                               _$hd18712_)
                                              '()))
                                  '())
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-hd18720_ '())
                                         (cons (gx#core-list
                                                '##car
                                                _$lp-e18718_)
                                               '()))
                                   (cons (cons (cons _$lp-tl18722_ '())
                                               (cons (gx#core-list
                                                      '##cdr
                                                      _$lp-e18718_)
                                                     '()))
                                         '()))
                             (_recur18542_
                              _hd18706_
                              '()
                              _$lp-hd18720_
                              _E18636_
                              (lambda (_hdvars18741_)
                                (cons _$lp18716_
                                      (cons _$lp-tl18722_
                                            (map (lambda (_svar18743_
                                                          _lvar18744_)
                                                   (gx#core-list
                                                    'cons
                                                    (assgetq _svar18743_
                                                             _hdvars18741_
                                                             _BUG18541_)
                                                    _lvar18744_))
                                                 _svars18724_
                                                 _lvars18726_)))))))
                           (gx#core-list
                            'let-values
                            (map (lambda (_lvar18746_ _tlvar18747_)
                                   (cons (cons _tlvar18747_ '())
                                         (cons (gx#core-list
                                                'reverse
                                                _lvar18746_)
                                               '())))
                                 _lvars18726_
                                 _tlvars18728_)
                            (_k18637_
                             (foldl2 (lambda (_svar18749_
                                              _tlvar18750_
                                              _r18751_)
                                       (cons (cons _svar18749_ _tlvar18750_)
                                             _r18751_))
                                     _vars18739_
                                     _svars18724_
                                     _tlvars18728_)))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _$lp18716_
                                                     (cons _$target18710_
                                                           _linit18732_))))))
                                    (let ((_body18737_
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$target18710_
                                                              (cons _$tl18714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (gx#core-list
                       'syntax-split-splice
                       _target18635_
                       _rlen18708_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (_recur18542_
                                             _tl18705_
                                             _vars18634_
                                             _$tl18714_
                                             _E18636_
                                             _make-loop18735_))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target18635_)
                                       (if (zero? _rlen18708_)
                                           _body18737_
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'fx>=
                                             (gx#core-list
                                              'stx-length
                                              _target18635_)
                                             _rlen18708_)
                                            _body18737_
                                            _E18636_))
                                       _E18636_)))))))
                        (if (##pair? _body1869118698_)
                            (let ((_hd1869518756_ (##car _body1869118698_))
                                  (_tl1869618758_ (##cdr _body1869118698_)))
                              (let* ((_hd18761_ _hd1869518756_)
                                     (_tl18763_ _tl1869618758_))
                                (_K1869418753_ _tl18763_ _hd18761_)))
                            (_E1869318702_)))
                      (if (eq? 'null _$e18655_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-null? _target18635_)
                           (_k18637_ _vars18634_)
                           _E18636_)
                          (if (eq? 'vector _$e18655_)
                              (let ((_$e18765_ (gx#genident__1 'e)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-vector? _target18635_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e18765_ '())
                                              (cons (gx#core-list
                                                     'vector->list
                                                     (gx#core-list
                                                      _unwrap-e18364_
                                                      _target18635_))
                                                    '()))
                                        '())
                                  (_recur18542_
                                   _body18652_
                                   _vars18634_
                                   _$e18765_
                                   _E18636_
                                   _k18637_))
                                 _E18636_))
                              (if (eq? 'box _$e18655_)
                                  (let ((_$e18767_ (gx#genident__1 'e)))
                                    (gx#core-list
                                     'if
                                     (gx#core-list 'stx-box? _target18635_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$e18767_ '())
                                                  (cons (gx#core-list
                                                         'unbox
                                                         (gx#core-list
                                                          _unwrap-e18364_
                                                          _target18635_))
                                                        '()))
                                            '())
                                      (_recur18542_
                                       _body18652_
                                       _vars18634_
                                       _$e18767_
                                       _E18636_
                                       _k18637_))
                                     _E18636_))
                                  (if (eq? 'datum _$e18655_)
                                      (let ((_$e18769_ (gx#genident__1 'e)))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target18635_)
                                         (gx#core-list
                                          'let-values
                                          (cons (cons (cons _$e18769_ '())
                                                      (cons (gx#core-list
                                                             'stx-e
                                                             _target18635_)
                                                            '()))
                                                '())
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'equal?
                                            _$e18769_
                                            _body18652_)
                                           (_k18637_ _vars18634_)
                                           _E18636_))
                                         _E18636_))
                                      (_BUG18541_ _e18633_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (##pair? _e1863818645_)
                                    (let ((_hd1864218774_
                                           (##car _e1863818645_))
                                          (_tl1864318776_
                                           (##cdr _e1863818645_)))
                                      (let* ((_tag18779_ _hd1864218774_)
                                             (_body18781_ _tl1864318776_))
                                        (_K1864118771_
                                         _body18781_
                                         _tag18779_)))
                                    (_E1864018649_)))))
                           (_splice-rlen18543_
                            (lambda (_e18595_)
                              (let _lp18597_ ((_e18599_ _e18595_)
                                              (_n18600_ '0))
                                (let* ((_e1860118608_ _e18599_)
                                       (_E1860318612_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1860118608_)))
                                       (_K1860418621_
                                        (lambda (_body18615_ _tag18616_)
                                          (let ((_$e18618_ _tag18616_))
                                            (if (eq? 'splice _$e18618_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Ambiguous pattern"
                                                 _stx18362_
                                                 _where18534_)
                                                (if (eq? 'cons _$e18618_)
                                                    (_lp18597_
                                                     (cdr _body18615_)
                                                     (fx+ _n18600_ '1))
                                                    _n18600_))))))
                                  (if (##pair? _e1860118608_)
                                      (let ((_hd1860518624_
                                             (##car _e1860118608_))
                                            (_tl1860618626_
                                             (##cdr _e1860118608_)))
                                        (let* ((_tag18629_ _hd1860518624_)
                                               (_body18631_ _tl1860618626_))
                                          (_K1860418621_
                                           _body18631_
                                           _tag18629_)))
                                      (_E1860318612_))))))
                           (_splice-vars18544_
                            (lambda (_e18551_)
                              (let _recur18553_ ((_e18555_ _e18551_)
                                                 (_vars18556_ '()))
                                (let* ((_e1855718564_ _e18555_)
                                       (_E1855918568_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1855718564_)))
                                       (_K1856018583_
                                        (lambda (_body18571_ _tag18572_)
                                          (let ((_$e18574_ _tag18572_))
                                            (if (eq? 'var _$e18574_)
                                                (cons _body18571_ _vars18556_)
                                                (if (or (eq? 'cons _$e18574_)
                                                        (eq? 'splice
                                                             _$e18574_))
                                                    (_recur18553_
                                                     (cdr _body18571_)
                                                     (_recur18553_
                                                      (car _body18571_)
                                                      _vars18556_))
                                                    (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e18574_)
                    (eq? 'box _$e18574_))
                (_recur18553_ _body18571_ _vars18556_)
                _vars18556_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1855718564_)
                                      (let ((_hd1856118586_
                                             (##car _e1855718564_))
                                            (_tl1856218588_
                                             (##cdr _e1855718564_)))
                                        (let* ((_tag18591_ _hd1856118586_)
                                               (_body18593_ _tl1856218588_))
                                          (_K1856018583_
                                           _body18593_
                                           _tag18591_)))
                                      (_E1855918568_))))))
                           (_make-body18545_
                            (lambda (_vars18547_)
                              (cons _K18538_
                                    (map (lambda (_mvar18549_)
                                           (assgetq (car _mvar18549_)
                                                    _vars18547_
                                                    _BUG18541_))
                                         _mvars18537_)))))
                    (_recur18542_
                     _hd18536_
                     '()
                     _target18535_
                     _E18539_
                     _make-body18545_))))
               (_parse-clause18371_
                (lambda (_hd18440_ _ids18441_)
                  (let _recur18443_ ((_e18445_ _hd18440_)
                                     (_vars18446_ '())
                                     (_depth18447_ '0))
                    (if (gx#identifier? _e18445_)
                        (if (gx#underscore? _e18445_)
                            (values '(any) _vars18446_)
                            (if (gx#ellipsis? _e18445_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced ellipsis"
                                 _stx18362_
                                 _hd18440_)
                                (if (find (lambda (_id18449_)
                                            (gx#bound-identifier=?
                                             _e18445_
                                             _id18449_))
                                          _ids18441_)
                                    (values (cons 'id _e18445_) _vars18446_)
                                    (if (find (lambda (_var18451_)
                                                (gx#bound-identifier=?
                                                 _e18445_
                                                 (car _var18451_)))
                                              _vars18446_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Duplicate pattern variable"
                                         _stx18362_
                                         _e18445_)
                                        (values (cons 'var _e18445_)
                                                (cons (cons _e18445_
                                                            _depth18447_)
                                                      _vars18446_))))))
                        (if (gx#stx-pair? _e18445_)
                            (let* ((_e1845218459_ _e18445_)
                                   (_E1845418463_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _e1845218459_)))
                                   (_E1845318524_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1845218459_)
                                          (let ((_e1845518467_
                                                 (gx#syntax-e _e1845218459_)))
                                            (let ((_hd1845618470_
                                                   (##car _e1845518467_))
                                                  (_tl1845718472_
                                                   (##cdr _e1845518467_)))
                                              (let* ((_hd18475_ _hd1845618470_)
                                                     (_rest18477_
                                                      _tl1845718472_))
                                                (if '#t
                                                    (let* ((_make-pair18492_
                                                            (lambda (_tag18479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd18480_
                             _tl18481_)
                      (let* ((_hd-depth18483_
                              (if (eq? _tag18479_ 'splice)
                                  (fx+ _depth18447_ '1)
                                  _depth18447_))
                             (_g19637_
                              (_recur18443_
                               _hd18480_
                               _vars18446_
                               _hd-depth18483_)))
                        (begin
                          (let ((_g19638_
                                 (if (##values? _g19637_)
                                     (##vector-length _g19637_)
                                     1)))
                            (if (not (##fx= _g19638_ 2))
                                (error "Context expects 2 values" _g19638_)))
                          (let ((_hd18485_ (##vector-ref _g19637_ 0))
                                (_vars18486_ (##vector-ref _g19637_ 1)))
                            (let ((_g19639_
                                   (_recur18443_
                                    _tl18481_
                                    _vars18486_
                                    _depth18447_)))
                              (begin
                                (let ((_g19640_
                                       (if (##values? _g19639_)
                                           (##vector-length _g19639_)
                                           1)))
                                  (if (not (##fx= _g19640_ 2))
                                      (error "Context expects 2 values"
                                             _g19640_)))
                                (let ((_tl18488_ (##vector-ref _g19639_ 0))
                                      (_vars18489_ (##vector-ref _g19639_ 1)))
                                  (let ()
                                    (values (cons _tag18479_
                                                  (cons _hd18485_ _tl18488_))
                                            _vars18489_))))))))))
                   (_e1849318500_ _rest18477_)
                   (_E1849518504_
                    (lambda () (_make-pair18492_ 'cons _hd18475_ _rest18477_)))
                   (_E1849418520_
                    (lambda ()
                      (if (gx#stx-pair? _e1849318500_)
                          (let ((_e1849618508_ (gx#syntax-e _e1849318500_)))
                            (let ((_hd1849718511_ (##car _e1849618508_))
                                  (_tl1849818513_ (##cdr _e1849618508_)))
                              (let* ((_rest-hd18516_ _hd1849718511_)
                                     (_rest-tl18518_ _tl1849818513_))
                                (if '#t
                                    (if (gx#ellipsis? _rest-hd18516_)
                                        (_make-pair18492_
                                         'splice
                                         _hd18475_
                                         _rest-tl18518_)
                                        (_make-pair18492_
                                         'cons
                                         _hd18475_
                                         _rest18477_))
                                    (_E1849518504_)))))
                          (_E1849518504_)))))
              (_E1849418520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1845418463_)))))
                                          (_E1845418463_)))))
                              (_E1845318524_))
                            (if (gx#stx-null? _e18445_)
                                (values '(null) _vars18446_)
                                (if (gx#stx-vector? _e18445_)
                                    (let ((_g19641_
                                           (_recur18443_
                                            (vector->list
                                             (gx#syntax-e _e18445_))
                                            _vars18446_
                                            _depth18447_)))
                                      (begin
                                        (let ((_g19642_
                                               (if (##values? _g19641_)
                                                   (##vector-length _g19641_)
                                                   1)))
                                          (if (not (##fx= _g19642_ 2))
                                              (error "Context expects 2 values"
                                                     _g19642_)))
                                        (let ((_e18528_
                                               (##vector-ref _g19641_ 0))
                                              (_vars18529_
                                               (##vector-ref _g19641_ 1)))
                                          (values (cons 'vector _e18528_)
                                                  _vars18529_))))
                                    (if (gx#stx-box? _e18445_)
                                        (let ((_g19643_
                                               (_recur18443_
                                                (unbox (gx#syntax-e _e18445_))
                                                _vars18446_
                                                _depth18447_)))
                                          (begin
                                            (let ((_g19644_
                                                   (if (##values? _g19643_)
                                                       (##vector-length
                                                        _g19643_)
                                                       1)))
                                              (if (not (##fx= _g19644_ 2))
                                                  (error "Context expects 2 values"
                                                         _g19644_)))
                                            (let ((_e18531_
                                                   (##vector-ref _g19643_ 0))
                                                  (_vars18532_
                                                   (##vector-ref _g19643_ 1)))
                                              (values (cons 'box _e18531_)
                                                      _vars18532_))))
                                        (if (gx#stx-datum? _e18445_)
                                            (values (cons 'datum
                                                          (gx#stx-e _e18445_))
                                                    _vars18446_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad pattern"
                                             _stx18362_
                                             _e18445_)))))))))))
        (let* ((_e1837218385_ _stx18362_)
               (_E1837418389_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1837218385_)))
               (_E1837318436_
                (lambda ()
                  (if (gx#stx-pair? _e1837218385_)
                      (let ((_e1837518393_ (gx#syntax-e _e1837218385_)))
                        (let ((_hd1837618396_ (##car _e1837518393_))
                              (_tl1837718398_ (##cdr _e1837518393_)))
                          (if (gx#stx-pair? _tl1837718398_)
                              (let ((_e1837818401_
                                     (gx#syntax-e _tl1837718398_)))
                                (let ((_hd1837918404_ (##car _e1837818401_))
                                      (_tl1838018406_ (##cdr _e1837818401_)))
                                  (let ((_expr18409_ _hd1837918404_))
                                    (if (gx#stx-pair? _tl1838018406_)
                                        (let ((_e1838118411_
                                               (gx#syntax-e _tl1838018406_)))
                                          (let ((_hd1838218414_
                                                 (##car _e1838118411_))
                                                (_tl1838318416_
                                                 (##cdr _e1838118411_)))
                                            (let* ((_ids18419_ _hd1838218414_)
                                                   (_clauses18421_
                                                    _tl1838318416_))
                                              (if '#t
                                                  (if (not (gx#identifier-list?
                                                            _ids18419_))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _stx18362_
                                                       _ids18419_)
                                                      (if (not (gx#stx-list?
                                                                _clauses18421_))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _stx18362_)
                                                          (let* ((_ids18423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax->list _ids18419_))
                         (_clauses18425_ (gx#syntax->list _clauses18421_))
                         (_clause-ids18427_ (gx#gentemps _clauses18425_))
                         (_E18429_ (gx#genident__0))
                         (_target18431_ (gx#genident__0))
                         (_first18433_
                          (if (null? _clauses18425_)
                              _E18429_
                              (car _clause-ids18427_))))
                    (gx#stx-wrap-source
                     (gx#core-list
                      'begin-annotation
                      '@syntax-case
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E18429_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18431_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target18431_))
                                          '()))
                              '())
                        (_generate-body18368_
                         (_generate-bindings18367_
                          _target18431_
                          _ids18423_
                          _clauses18425_
                          _clause-ids18427_
                          _E18429_)
                         (cons _first18433_ (cons _expr18409_ '()))))
                       (gx#stx-source _stx18362_)))
                     (gx#stx-source _stx18362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1837418389_)))))
                                        (_E1837418389_)))))
                              (_E1837418389_))))
                      (_E1837418389_)))))
          (_E1837318436_)))))
  (define gx#macro-expand-syntax-case__0
    (lambda (_stx19072_)
      (let* ((_identifier=?19074_ 'free-identifier=?)
             (_unwrap-e19076_ 'syntax-e)
             (_wrap-e19078_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19072_
         _identifier=?19074_
         _unwrap-e19076_
         _wrap-e19078_))))
  (define gx#macro-expand-syntax-case__1
    (lambda (_stx19080_ _identifier=?19081_)
      (let* ((_unwrap-e19083_ 'syntax-e) (_wrap-e19085_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19080_
         _identifier=?19081_
         _unwrap-e19083_
         _wrap-e19085_))))
  (define gx#macro-expand-syntax-case__2
    (lambda (_stx19087_ _identifier=?19088_ _unwrap-e19089_)
      (let ((_wrap-e19091_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19087_
         _identifier=?19088_
         _unwrap-e19089_
         _wrap-e19091_))))
  (define gx#macro-expand-syntax-case
    (lambda _g19646_
      (let ((_g19645_ (length _g19646_)))
        (cond ((##fx= _g19645_ 1)
               (apply gx#macro-expand-syntax-case__0 _g19646_))
              ((##fx= _g19645_ 2)
               (apply gx#macro-expand-syntax-case__1 _g19646_))
              ((##fx= _g19645_ 3)
               (apply gx#macro-expand-syntax-case__2 _g19646_))
              ((##fx= _g19645_ 4)
               (apply gx#macro-expand-syntax-case__% _g19646_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-syntax-case
                _g19646_))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18359_)
      (if (gx#identifier? _stx18359_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18359_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18317_ . _rest18318_)
      (let ((_len18320_ (length _hd18317_)))
        (let _lp18322_ ((_rest18324_ _rest18318_))
          (let* ((_rest1832518333_ _rest18324_)
                 (_else1832718341_ (lambda () '#!void))
                 (_K1832918347_
                  (lambda (_rest18344_ _hd18345_)
                    (if (fx= _len18320_ (length _hd18345_))
                        (_lp18322_ _rest18344_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18345_)))))
            (if (##pair? _rest1832518333_)
                (let ((_hd1833018350_ (##car _rest1832518333_))
                      (_tl1833118352_ (##cdr _rest1832518333_)))
                  (let* ((_hd18355_ _hd1833018350_)
                         (_rest18357_ _tl1833118352_))
                    (_K1832918347_ _rest18357_ _hd18355_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18275_ _n18276_)
      (let _lp18278_ ((_rest18280_ _stx18275_) (_r18281_ '()))
        (if (gx#stx-pair? _rest18280_)
            (let* ((_g1828218289_ (gx#syntax-e _rest18280_))
                   (_E1828418293_
                    (lambda () (error '"No clause matching" _g1828218289_)))
                   (_K1828518299_
                    (lambda (_rest18296_ _hd18297_)
                      (_lp18278_ _rest18296_ (cons _hd18297_ _r18281_)))))
              (if (##pair? _g1828218289_)
                  (let ((_hd1828618302_ (##car _g1828218289_))
                        (_tl1828718304_ (##cdr _g1828218289_)))
                    (let* ((_hd18307_ _hd1828618302_)
                           (_rest18309_ _tl1828718304_))
                      (_K1828518299_ _rest18309_ _hd18307_)))
                  (_E1828418293_)))
            (let _lp18311_ ((_n18313_ _n18276_)
                            (_l18314_ _r18281_)
                            (_r18315_ _rest18280_))
              (if (null? _l18314_)
                  (values _l18314_ _r18315_)
                  (if (fxpositive? _n18313_)
                      (_lp18311_
                       (fx- _n18313_ '1)
                       (cdr _l18314_)
                       (cons (car _l18314_) _r18315_))
                      (values (reverse _l18314_) _r18315_)))))))))
