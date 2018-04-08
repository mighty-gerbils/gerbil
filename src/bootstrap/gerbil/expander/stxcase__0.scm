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
    (lambda _$args19613_
      (apply make-struct-instance gx#syntax-pattern::t _$args19613_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19610_ _stx19611_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19611_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19092_)
      (letrec ((_generate19094_
                (lambda (_e19321_)
                  (letrec ((_BUG19323_
                            (lambda (_q19485_)
                              (error '"BUG: syntax; generate"
                                     _stx19092_
                                     _e19321_
                                     _q19485_)))
                           (_local-pattern-e19324_
                            (lambda (_pat19483_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19483_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19325_
                            (lambda (_q19480_ _vars19481_)
                              (assgetq _q19480_ _vars19481_ _BUG19323_)))
                           (_getarg19326_
                            (lambda (_arg19446_ _vars19447_)
                              (let* ((_arg1944819455_ _arg19446_)
                                     (_E1945019459_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1944819455_)))
                                     (_K1945119468_
                                      (lambda (_e19462_ _tag19463_)
                                        (let ((_$e19465_ _tag19463_))
                                          (if (eq? 'ref _$e19465_)
                                              (_getvar19325_
                                               _e19462_
                                               _vars19447_)
                                              (if (eq? 'pattern _$e19465_)
                                                  (_local-pattern-e19324_
                                                   _e19462_)
                                                  (_BUG19323_ _arg19446_)))))))
                                (if (##pair? _arg1944819455_)
                                    (let ((_hd1945219471_
                                           (##car _arg1944819455_))
                                          (_tl1945319473_
                                           (##cdr _arg1944819455_)))
                                      (let* ((_tag19476_ _hd1945219471_)
                                             (_e19478_ _tl1945319473_))
                                        (_K1945119468_ _e19478_ _tag19476_)))
                                    (_E1945019459_))))))
                    (let _recur19328_ ((_e19330_ _e19321_) (_vars19331_ '()))
                      (let* ((_e1933219339_ _e19330_)
                             (_E1933419343_
                              (lambda ()
                                (error '"No clause matching" _e1933219339_)))
                             (_K1933519434_
                              (lambda (_body19346_ _tag19347_)
                                (let ((_$e19349_ _tag19347_))
                                  (if (eq? 'datum _$e19349_)
                                      (gx#core-list 'quote _body19346_)
                                      (if (eq? 'term _$e19349_)
                                          (let ((_id19352_
                                                 (gx#syntax-local-unwrap
                                                  _body19346_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19352_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19354_
                                                       (##unchecked-structure-ref
                                                        _id19352_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19354_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19346_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19346_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19346_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19352_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19346_)
                                                    (_BUG19323_ _e19330_))))
                                          (if (eq? 'pattern _$e19349_)
                                              (_local-pattern-e19324_
                                               _body19346_)
                                              (if (eq? 'ref _$e19349_)
                                                  (_getvar19325_
                                                   _body19346_
                                                   _vars19331_)
                                                  (if (eq? 'cons _$e19349_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19328_
                                                        (car _body19346_)
                                                        _vars19331_)
                                                       (_recur19328_
                                                        (cdr _body19346_)
                                                        _vars19331_))
                                                      (if (eq? 'vector
                                                               _$e19349_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19328_
                                                            _body19346_
                                                            _vars19331_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19349_)
                      (gx#core-list
                       'box
                       (_recur19328_ _body19346_ _vars19331_))
                      (if (eq? 'splice _$e19349_)
                          (let* ((_body1935519366_ _body19346_)
                                 (_E1935719370_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1935519366_)))
                                 (_K1935819408_
                                  (lambda (_args19373_
                                           _iv19374_
                                           _hd19375_
                                           _depth19376_)
                                    (let* ((_targets19382_
                                            (map (lambda (_g1937719379_)
                                                   (_getarg19326_
                                                    _g1937719379_
                                                    _vars19331_))
                                                 _args19373_))
                                           (_fold-in19384_
                                            (gx#gentemps _args19373_))
                                           (_fold-out19386_ (gx#genident__0))
                                           (_lambda-args19388_
                                            (foldr1 cons
                                                    (cons _fold-out19386_ '())
                                                    _fold-in19384_))
                                           (_lambda-body19405_
                                            (if (fx> _depth19376_ '1)
                                                (let ((_r-args19396_
                                                       (map (lambda (_arg19390_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19390_)))
                    _args19373_))
              (_r-vars19397_
               (foldr2 (lambda (_arg19392_ _var19393_ _r19394_)
                         (cons (cons (cdr _arg19392_) _var19393_) _r19394_))
                       _vars19331_
                       _args19373_
                       _fold-in19384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19328_
                                                   (cons 'splice
                                                         (cons (fx- _depth19376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19375_
                             (cons (cons 'var _fold-out19386_)
                                   _r-args19396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19397_))
                                                (let ((_hd-vars19403_
                                                       (foldr2 (lambda (_arg19399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19400_
                                _r19401_)
                         (cons (cons (cdr _arg19399_) _var19400_) _r19401_))
                       _vars19331_
                       _args19373_
                       _fold-in19384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19328_
                                                    _hd19375_
                                                    _hd-vars19403_)
                                                   _fold-out19386_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19382_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19382_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19388_
                                         _lambda-body19405_)
                                        (_recur19328_ _iv19374_ _vars19331_)
                                        _targets19382_))))))
                            (if (##pair? _body1935519366_)
                                (let ((_hd1935919411_ (##car _body1935519366_))
                                      (_tl1936019413_
                                       (##cdr _body1935519366_)))
                                  (let ((_depth19416_ _hd1935919411_))
                                    (if (##pair? _tl1936019413_)
                                        (let ((_hd1936119418_
                                               (##car _tl1936019413_))
                                              (_tl1936219420_
                                               (##cdr _tl1936019413_)))
                                          (let ((_hd19423_ _hd1936119418_))
                                            (if (##pair? _tl1936219420_)
                                                (let ((_hd1936319425_
                                                       (##car _tl1936219420_))
                                                      (_tl1936419427_
                                                       (##cdr _tl1936219420_)))
                                                  (let* ((_iv19430_
                                                          _hd1936319425_)
                                                         (_args19432_
                                                          _tl1936419427_))
                                                    (_K1935819408_
                                                     _args19432_
                                                     _iv19430_
                                                     _hd19423_
                                                     _depth19416_)))
                                                (_E1935719370_))))
                                        (_E1935719370_))))
                                (_E1935719370_)))
                          (if (eq? 'var _$e19349_)
                              _body19346_
                              (_BUG19323_ _e19330_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1933219339_)
                            (let ((_hd1933619437_ (##car _e1933219339_))
                                  (_tl1933719439_ (##cdr _e1933219339_)))
                              (let* ((_tag19442_ _hd1933619437_)
                                     (_body19444_ _tl1933719439_))
                                (_K1933519434_ _body19444_ _tag19442_)))
                            (_E1933419343_)))))))
               (_parse19095_
                (lambda (_e19136_)
                  (letrec ((_make-cons19138_
                            (lambda (_hd19313_ _tl19314_)
                              (let ((_g19615_ _hd19313_) (_g19617_ _tl19314_))
                                (begin
                                  (let ((_g19616_
                                         (if (##values? _g19615_)
                                             (##vector-length _g19615_)
                                             1)))
                                    (if (not (##fx= _g19616_ 2))
                                        (error "Context expects 2 values"
                                               _g19616_)))
                                  (let ((_g19618_
                                         (if (##values? _g19617_)
                                             (##vector-length _g19617_)
                                             1)))
                                    (if (not (##fx= _g19618_ 2))
                                        (error "Context expects 2 values"
                                               _g19618_)))
                                  (let ((_hd-e19316_ (##vector-ref _g19615_ 0))
                                        (_hd-vars19317_
                                         (##vector-ref _g19615_ 1)))
                                    (let ((_tl-e19318_
                                           (##vector-ref _g19617_ 0))
                                          (_tl-vars19319_
                                           (##vector-ref _g19617_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19316_
                                                          _tl-e19318_))
                                              (append _hd-vars19317_
                                                      _tl-vars19319_))))))))
                           (_make-splice19139_
                            (lambda (_where19252_
                                     _depth19253_
                                     _hd19254_
                                     _tl19255_)
                              (let ((_g19619_ _hd19254_) (_g19621_ _tl19255_))
                                (begin
                                  (let ((_g19620_
                                         (if (##values? _g19619_)
                                             (##vector-length _g19619_)
                                             1)))
                                    (if (not (##fx= _g19620_ 2))
                                        (error "Context expects 2 values"
                                               _g19620_)))
                                  (let ((_g19622_
                                         (if (##values? _g19621_)
                                             (##vector-length _g19621_)
                                             1)))
                                    (if (not (##fx= _g19622_ 2))
                                        (error "Context expects 2 values"
                                               _g19622_)))
                                  (let ((_hd-e19257_ (##vector-ref _g19619_ 0))
                                        (_hd-vars19258_
                                         (##vector-ref _g19619_ 1)))
                                    (let ((_tl-e19259_
                                           (##vector-ref _g19621_ 0))
                                          (_tl-vars19260_
                                           (##vector-ref _g19621_ 1)))
                                      (let _lp19262_ ((_rest19264_
                                                       _hd-vars19258_)
                                                      (_targets19265_ '())
                                                      (_vars19266_
                                                       _tl-vars19260_))
                                        (let* ((_rest1926719277_ _rest19264_)
                                               (_else1926919285_
                                                (lambda ()
                                                  (if (null? _targets19265_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19092_
                                                       _where19252_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19253_
                                  (cons _hd-e19257_
                                        (cons _tl-e19259_ _targets19265_))))
                      _vars19266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1927119294_
                                                (lambda (_rest19288_
                                                         _hd-pat19289_
                                                         _hd-depth*19290_)
                                                  (let ((_hd-depth19292_
                                                         (fx- _hd-depth*19290_
                                                              _depth19253_)))
                                                    (if (fxpositive?
                                                         _hd-depth19292_)
                                                        (_lp19262_
                                                         _rest19288_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19289_)
                       _targets19265_)
                 (cons (cons _hd-depth19292_ _hd-pat19289_) _vars19266_))
                (if (fxzero? _hd-depth19292_)
                    (_lp19262_
                     _rest19288_
                     (cons (cons 'pattern _hd-pat19289_) _targets19265_)
                     _vars19266_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19092_
                     _where19252_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1926719277_)
                                              (let ((_hd1927219297_
                                                     (##car _rest1926719277_))
                                                    (_tl1927319299_
                                                     (##cdr _rest1926719277_)))
                                                (if (##pair? _hd1927219297_)
                                                    (let ((_hd1927419302_
                                                           (##car _hd1927219297_))
                                                          (_tl1927519304_
                                                           (##cdr _hd1927219297_)))
                                                      (let* ((_hd-depth*19307_
                                                              _hd1927419302_)
                                                             (_hd-pat19309_
                                                              _tl1927519304_)
                                                             (_rest19311_
                                                              _tl1927319299_))
                                                        (_K1927119294_
                                                         _rest19311_
                                                         _hd-pat19309_
                                                         _hd-depth*19307_)))
                                                    (_else1926919285_)))
                                              (_else1926919285_))))))))))
                           (_recur19140_
                            (lambda (_e19145_ _is-e?19146_)
                              (if (_is-e?19146_ _e19145_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19092_)
                                  (if (gx#syntax-local-pattern? _e19145_)
                                      (let* ((_pat19148_
                                              (gx#syntax-local-e__0 _e19145_))
                                             (_depth19150_
                                              (##structure-ref
                                               _pat19148_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19150_)
                                            (values (cons 'ref _pat19148_)
                                                    (cons (cons _depth19150_
                                                                _pat19148_)
                                                          '()))
                                            (values (cons 'pattern _pat19148_)
                                                    '())))
                                      (if (gx#identifier? _e19145_)
                                          (values (cons 'term _e19145_) '())
                                          (if (gx#stx-pair? _e19145_)
                                              (let* ((_e1915219159_ _e19145_)
                                                     (_E1915419163_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1915219159_)))
                                                     (_E1915319242_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1915219159_)
                                                            (let ((_e1915519167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1915219159_)))
                      (let ((_hd1915619170_ (##car _e1915519167_))
                            (_tl1915719172_ (##cdr _e1915519167_)))
                        (let* ((_hd19175_ _hd1915619170_)
                               (_rest19177_ _tl1915719172_))
                          (if '#t
                              (if (_is-e?19146_ _hd19175_)
                                  (let* ((_e1917819185_ _rest19177_)
                                         (_E1918019189_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19092_
                                             _e19145_)))
                                         (_E1917919203_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1917819185_)
                                                (let ((_e1918119193_
                                                       (gx#syntax-e
                                                        _e1917819185_)))
                                                  (let ((_hd1918219196_
                                                         (##car _e1918119193_))
                                                        (_tl1918319198_
                                                         (##cdr _e1918119193_)))
                                                    (let ((_rest19201_
                                                           _hd1918219196_))
                                                      (if (gx#stx-null?
                                                           _tl1918319198_)
                                                          (if '#t
                                                              (_recur19140_
                                                               _rest19201_
                                                               false)
                                                              (_E1918019189_))
                                                          (_E1918019189_)))))
                                                (_E1918019189_)))))
                                    (_E1917919203_))
                                  (let _lp19207_ ((_rest19209_ _rest19177_)
                                                  (_depth19210_ '0))
                                    (let* ((_e1921119218_ _rest19209_)
                                           (_E1921319222_
                                            (lambda ()
                                              (if (fxpositive? _depth19210_)
                                                  (_make-splice19139_
                                                   _e19145_
                                                   _depth19210_
                                                   (_recur19140_
                                                    _hd19175_
                                                    _is-e?19146_)
                                                   (_recur19140_
                                                    _rest19209_
                                                    _is-e?19146_))
                                                  (_make-cons19138_
                                                   (_recur19140_
                                                    _hd19175_
                                                    _is-e?19146_)
                                                   (_recur19140_
                                                    _rest19209_
                                                    _is-e?19146_)))))
                                           (_E1921219238_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1921119218_)
                                                  (let ((_e1921419226_
                                                         (gx#syntax-e
                                                          _e1921119218_)))
                                                    (let ((_hd1921519229_
                                                           (##car _e1921419226_))
                                                          (_tl1921619231_
                                                           (##cdr _e1921419226_)))
                                                      (let* ((_rest-hd19234_
                                                              _hd1921519229_)
                                                             (_rest-tl19236_
                                                              _tl1921619231_))
                                                        (if '#t
                                                            (if (_is-e?19146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19234_)
                        (_lp19207_ _rest-tl19236_ (fx+ _depth19210_ '1))
                        (if (fxpositive? _depth19210_)
                            (_make-splice19139_
                             _e19145_
                             _depth19210_
                             (_recur19140_ _hd19175_ _is-e?19146_)
                             (_recur19140_ _rest19209_ _is-e?19146_))
                            (_make-cons19138_
                             (_recur19140_ _hd19175_ _is-e?19146_)
                             (_recur19140_ _rest19209_ _is-e?19146_))))
                    (_E1921319222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1921319222_)))))
                                      (_E1921219238_))))
                              (_E1915419163_)))))
                    (_E1915419163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1915319242_))
                                              (if (gx#stx-vector? _e19145_)
                                                  (let ((_g19623_
                                                         (_recur19140_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19145_))
                                                          _is-e?19146_)))
                                                    (begin
                                                      (let ((_g19624_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19623_)
                         (##vector-length _g19623_)
                         1)))
                (if (not (##fx= _g19624_ 2))
                    (error "Context expects 2 values" _g19624_)))
              (let ((_e19246_ (##vector-ref _g19623_ 0))
                    (_vars19247_ (##vector-ref _g19623_ 1)))
                (values (cons 'vector _e19246_) _vars19247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19145_)
                                                      (let ((_g19625_
                                                             (_recur19140_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19145_))
                      _is-e?19146_)))
                (begin
                  (let ((_g19626_
                         (if (##values? _g19625_)
                             (##vector-length _g19625_)
                             1)))
                    (if (not (##fx= _g19626_ 2))
                        (error "Context expects 2 values" _g19626_)))
                  (let ((_e19249_ (##vector-ref _g19625_ 0))
                        (_vars19250_ (##vector-ref _g19625_ 1)))
                    (values (cons 'box _e19249_) _vars19250_))))
              (values (cons 'datum _e19145_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19627_ (_recur19140_ _e19136_ gx#ellipsis?)))
                      (begin
                        (let ((_g19628_
                               (if (##values? _g19627_)
                                   (##vector-length _g19627_)
                                   1)))
                          (if (not (##fx= _g19628_ 2))
                              (error "Context expects 2 values" _g19628_)))
                        (let ((_tree19142_ (##vector-ref _g19627_ 0))
                              (_vars19143_ (##vector-ref _g19627_ 1)))
                          (if (null? _vars19143_)
                              _tree19142_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19092_
                               _vars19143_)))))))))
        (let* ((_e1909619106_ _stx19092_)
               (_E1909819110_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19092_)))
               (_E1909719132_
                (lambda ()
                  (if (gx#stx-pair? _e1909619106_)
                      (let ((_e1909919114_ (gx#syntax-e _e1909619106_)))
                        (let ((_hd1910019117_ (##car _e1909919114_))
                              (_tl1910119119_ (##cdr _e1909919114_)))
                          (if (gx#stx-pair? _tl1910119119_)
                              (let ((_e1910219122_
                                     (gx#syntax-e _tl1910119119_)))
                                (let ((_hd1910319125_ (##car _e1910219122_))
                                      (_tl1910419127_ (##cdr _e1910219122_)))
                                  (let ((_form19130_ _hd1910319125_))
                                    (if (gx#stx-null? _tl1910419127_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19094_
                                              (_parse19095_ _form19130_))
                                             (gx#stx-source _stx19092_))
                                            (_E1909819110_))
                                        (_E1909819110_)))))
                              (_E1909819110_))))
                      (_E1909819110_)))))
          (_E1909719132_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18356_ _identifier=?18357_ _unwrap-e18358_ _wrap-e18359_)
        (letrec ((_generate-bindings18361_
                  (lambda (_target18956_
                           _ids18957_
                           _clauses18958_
                           _clause-ids18959_
                           _E18960_)
                    (letrec ((_generate118962_
                              (lambda (_clause19059_ _clause-id19060_ _E19061_)
                                (cons (cons _clause-id19060_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18956_ '())
                                             (_generate-clause18363_
                                              _target18956_
                                              _ids18957_
                                              _clause19059_
                                              _E19061_))
                                            '())))))
                      (let _lp18964_ ((_rest18966_ _clauses18958_)
                                      (_rest-ids18967_ _clause-ids18959_)
                                      (_bindings18968_ '()))
                        (let* ((_rest1896918977_ _rest18966_)
                               (_else1897118985_ (lambda () _bindings18968_))
                               (_K1897319047_
                                (lambda (_rest18988_ _clause18989_)
                                  (let* ((_rest-ids1899018997_ _rest-ids18967_)
                                         (_E1899219001_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1899018997_)))
                                         (_K1899319035_
                                          (lambda (_rest-ids19004_
                                                   _clause-id19005_)
                                            (let* ((_rest-ids1900619014_
                                                    _rest-ids19004_)
                                                   (_else1900819022_
                                                    (lambda ()
                                                      (cons (_generate118962_
                                                             _clause18989_
                                                             _clause-id19005_
                                                             _E18960_)
                                                            _bindings18968_)))
                                                   (_K1901019027_
                                                    (lambda (_next-clause-id19025_)
                                                      (_lp18964_
                                                       _rest18988_
                                                       _rest-ids19004_
                                                       (cons (_generate118962_
                                                              _clause18989_
                                                              _clause-id19005_
                                                              _next-clause-id19025_)
                                                             _bindings18968_)))))
                                              (if (##pair? _rest-ids1900619014_)
                                                  (let* ((_hd1901119030_
                                                          (##car _rest-ids1900619014_))
                                                         (_next-clause-id19033_
                                                          _hd1901119030_))
                                                    (_K1901019027_
                                                     _next-clause-id19033_))
                                                  (_else1900819022_))))))
                                    (if (##pair? _rest-ids1899018997_)
                                        (let ((_hd1899419038_
                                               (##car _rest-ids1899018997_))
                                              (_tl1899519040_
                                               (##cdr _rest-ids1899018997_)))
                                          (let* ((_clause-id19043_
                                                  _hd1899419038_)
                                                 (_rest-ids19045_
                                                  _tl1899519040_))
                                            (_K1899319035_
                                             _rest-ids19045_
                                             _clause-id19043_)))
                                        (_E1899219001_))))))
                          (if (##pair? _rest1896918977_)
                              (let ((_hd1897419050_ (##car _rest1896918977_))
                                    (_tl1897519052_ (##cdr _rest1896918977_)))
                                (let* ((_clause19055_ _hd1897419050_)
                                       (_rest19057_ _tl1897519052_))
                                  (_K1897319047_ _rest19057_ _clause19055_)))
                              (_else1897118985_)))))))
                 (_generate-body18362_
                  (lambda (_bindings18916_ _body18917_)
                    (let _recur18919_ ((_rest18921_ _bindings18916_))
                      (let* ((_rest1892218930_ _rest18921_)
                             (_else1892418938_ (lambda () _body18917_))
                             (_K1892618944_
                              (lambda (_rest18941_ _hd18942_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd18942_ '())
                                 (_recur18919_ _rest18941_)))))
                        (if (##pair? _rest1892218930_)
                            (let ((_hd1892718947_ (##car _rest1892218930_))
                                  (_tl1892818949_ (##cdr _rest1892218930_)))
                              (let* ((_hd18952_ _hd1892718947_)
                                     (_rest18954_ _tl1892818949_))
                                (_K1892618944_ _rest18954_ _hd18952_)))
                            (_else1892418938_))))))
                 (_generate-clause18363_
                  (lambda (_target18779_ _ids18780_ _clause18781_ _E18782_)
                    (letrec ((_generate118784_
                              (lambda (_hd18871_ _fender18872_ _body18873_)
                                (let ((_g19629_
                                       (_parse-clause18365_
                                        _hd18871_
                                        _ids18780_)))
                                  (begin
                                    (let ((_g19630_
                                           (if (##values? _g19629_)
                                               (##vector-length _g19629_)
                                               1)))
                                      (if (not (##fx= _g19630_ 2))
                                          (error "Context expects 2 values"
                                                 _g19630_)))
                                    (let ((_e18875_ (##vector-ref _g19629_ 0))
                                          (_mvars18876_
                                           (##vector-ref _g19629_ 1)))
                                      (let* ((_pvars18878_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars18876_)))
                                             (_E18880_
                                              (cons _E18782_
                                                    (cons _target18779_ '())))
                                             (_K18913_
                                              (gx#core-list
                                               'lambda%
                                               _pvars18878_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar18882_
                                                              _pvar18883_)
                                                       (let* ((_mvar1888418891_
                                                               _mvar18882_)
                                                              (_E1888618895_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1888418891_)))
                      (_K1888718901_
                       (lambda (_depth18898_ _id18899_)
                         (cons _id18899_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id18899_)
                                      (gx#core-list 'quote _pvar18883_)
                                      _depth18898_)
                                     '())))))
                 (if (##pair? _mvar1888418891_)
                     (let ((_hd1888818904_ (##car _mvar1888418891_))
                           (_tl1888918906_ (##cdr _mvar1888418891_)))
                       (let* ((_id18909_ _hd1888818904_)
                              (_depth18911_ _tl1888918906_))
                         (_K1888718901_ _depth18911_ _id18909_)))
                     (_E1888618895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars18876_
                                                     _pvars18878_)
                                                (if (eq? _fender18872_ '#t)
                                                    _body18873_
                                                    (gx#core-list
                                                     'if
                                                     _fender18872_
                                                     _body18873_
                                                     _E18880_))))))
                                        (_generate-match18364_
                                         _hd18871_
                                         _target18779_
                                         _e18875_
                                         _mvars18876_
                                         _K18913_
                                         _E18880_))))))))
                      (let* ((_e1878518805_ _clause18781_)
                             (_E1879418809_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1878518805_)))
                             (_E1878718843_
                              (lambda ()
                                (if (gx#stx-pair? _e1878518805_)
                                    (let ((_e1879518813_
                                           (gx#syntax-e _e1878518805_)))
                                      (let ((_hd1879618816_
                                             (##car _e1879518813_))
                                            (_tl1879718818_
                                             (##cdr _e1879518813_)))
                                        (let ((_hd18821_ _hd1879618816_))
                                          (if (gx#stx-pair? _tl1879718818_)
                                              (let ((_e1879818823_
                                                     (gx#syntax-e
                                                      _tl1879718818_)))
                                                (let ((_hd1879918826_
                                                       (##car _e1879818823_))
                                                      (_tl1880018828_
                                                       (##cdr _e1879818823_)))
                                                  (let ((_fender18831_
                                                         _hd1879918826_))
                                                    (if (gx#stx-pair?
                                                         _tl1880018828_)
                                                        (let ((_e1880118833_
                                                               (gx#syntax-e
                                                                _tl1880018828_)))
                                                          (let ((_hd1880218836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1880118833_))
                        (_tl1880318838_ (##cdr _e1880118833_)))
                    (let ((_body18841_ _hd1880218836_))
                      (if (gx#stx-null? _tl1880318838_)
                          (if '#t
                              (_generate118784_
                               _hd18821_
                               _fender18831_
                               _body18841_)
                              (_E1879418809_))
                          (_E1879418809_)))))
                (_E1879418809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1879418809_)))))
                                    (_E1879418809_))))
                             (_E1878618867_
                              (lambda ()
                                (if (gx#stx-pair? _e1878518805_)
                                    (let ((_e1878818847_
                                           (gx#syntax-e _e1878518805_)))
                                      (let ((_hd1878918850_
                                             (##car _e1878818847_))
                                            (_tl1879018852_
                                             (##cdr _e1878818847_)))
                                        (let ((_hd18855_ _hd1878918850_))
                                          (if (gx#stx-pair? _tl1879018852_)
                                              (let ((_e1879118857_
                                                     (gx#syntax-e
                                                      _tl1879018852_)))
                                                (let ((_hd1879218860_
                                                       (##car _e1879118857_))
                                                      (_tl1879318862_
                                                       (##cdr _e1879118857_)))
                                                  (let ((_body18865_
                                                         _hd1879218860_))
                                                    (if (gx#stx-null?
                                                         _tl1879318862_)
                                                        (if '#t
                                                            (_generate118784_
                                                             _hd18855_
                                                             '#t
                                                             _body18865_)
                                                            (_E1878718843_))
                                                        (_E1878718843_)))))
                                              (_E1878718843_)))))
                                    (_E1878718843_)))))
                        (_E1878618867_)))))
                 (_generate-match18364_
                  (lambda (_where18528_
                           _target18529_
                           _hd18530_
                           _mvars18531_
                           _K18532_
                           _E18533_)
                    (letrec ((_BUG18535_
                              (lambda (_q18777_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18356_
                                       _hd18530_
                                       _q18777_)))
                             (_recur18536_
                              (lambda (_e18627_
                                       _vars18628_
                                       _target18629_
                                       _E18630_
                                       _k18631_)
                                (let* ((_e1863218639_ _e18627_)
                                       (_E1863418643_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1863218639_)))
                                       (_K1863518765_
                                        (lambda (_body18646_ _tag18647_)
                                          (let ((_$e18649_ _tag18647_))
                                            (if (eq? 'any _$e18649_)
                                                (_k18631_ _vars18628_)
                                                (if (eq? 'id _$e18649_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18629_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18357_
                                                       (gx#core-list
                                                        _wrap-e18359_
                                                        _body18646_)
                                                       _target18629_)
                                                      (_k18631_ _vars18628_)
                                                      _E18630_)
                                                     _E18630_)
                                                    (if (eq? 'var _$e18649_)
                                                        (_k18631_
                                                         (cons (cons _body18646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18629_)
                       _vars18628_))
                (if (eq? 'cons _$e18649_)
                    (let ((_$e18652_ (gx#genident__1 'e))
                          (_$hd18653_ (gx#genident__1 'hd))
                          (_$tl18654_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18629_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18652_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18358_
                                           _target18629_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18653_ '())
                                     (cons (gx#core-list '##car _$e18652_)
                                           '()))
                               (cons (cons (cons _$tl18654_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18652_)
                                                 '()))
                                     '()))
                         (let* ((_body1865518662_ _body18646_)
                                (_E1865718666_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1865518662_)))
                                (_K1865818674_
                                 (lambda (_tl18669_ _hd18670_)
                                   (_recur18536_
                                    _hd18670_
                                    _vars18628_
                                    _$hd18653_
                                    _E18630_
                                    (lambda (_vars18672_)
                                      (_recur18536_
                                       _tl18669_
                                       _vars18672_
                                       _$tl18654_
                                       _E18630_
                                       _k18631_))))))
                           (if (##pair? _body1865518662_)
                               (let ((_hd1865918677_ (##car _body1865518662_))
                                     (_tl1866018679_ (##cdr _body1865518662_)))
                                 (let* ((_hd18682_ _hd1865918677_)
                                        (_tl18684_ _tl1866018679_))
                                   (_K1865818674_ _tl18684_ _hd18682_)))
                               (_E1865718666_)))))
                       _E18630_))
                    (if (eq? 'splice _$e18649_)
                        (let* ((_body1868518692_ _body18646_)
                               (_E1868718696_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1868518692_)))
                               (_K1868818747_
                                (lambda (_tl18699_ _hd18700_)
                                  (let* ((_rlen18702_
                                          (_splice-rlen18537_ _tl18699_))
                                         (_$target18704_
                                          (gx#genident__1 'target))
                                         (_$hd18706_ (gx#genident__1 'hd))
                                         (_$tl18708_ (gx#genident__1 'tl))
                                         (_$lp18710_ (gx#genident__1 'loop))
                                         (_$lp-e18712_ (gx#genident__1 'e))
                                         (_$lp-hd18714_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18716_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18718_
                                          (_splice-vars18538_ _hd18700_))
                                         (_lvars18720_
                                          (gx#gentemps _svars18718_))
                                         (_tlvars18722_
                                          (gx#gentemps _svars18718_))
                                         (_linit18726_
                                          (map (lambda (_var18724_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18720_)))
                                    (letrec ((_make-loop18729_
                                              (lambda (_vars18733_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18706_ _lvars18720_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18706_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18712_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18358_
                                                 _$hd18706_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18714_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18712_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18716_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18712_)
                                                       '()))
                                           '()))
                               (_recur18536_
                                _hd18700_
                                '()
                                _$lp-hd18714_
                                _E18630_
                                (lambda (_hdvars18735_)
                                  (cons _$lp18710_
                                        (cons _$lp-tl18716_
                                              (map (lambda (_svar18737_
                                                            _lvar18738_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18737_
                                                               _hdvars18735_
                                                               _BUG18535_)
                                                      _lvar18738_))
                                                   _svars18718_
                                                   _lvars18720_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18740_ _tlvar18741_)
                                     (cons (cons _tlvar18741_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18740_)
                                                 '())))
                                   _lvars18720_
                                   _tlvars18722_)
                              (_k18631_
                               (foldl2 (lambda (_svar18743_
                                                _tlvar18744_
                                                _r18745_)
                                         (cons (cons _svar18743_ _tlvar18744_)
                                               _r18745_))
                                       _vars18733_
                                       _svars18718_
                                       _tlvars18722_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18710_
                                                       (cons _$target18704_
                                                             _linit18726_))))))
                                      (let ((_body18731_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18704_
                                                                (cons _$tl18708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18629_
                         _rlen18702_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18536_
                                               _tl18699_
                                               _vars18628_
                                               _$tl18708_
                                               _E18630_
                                               _make-loop18729_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18629_)
                                         (if (zero? _rlen18702_)
                                             _body18731_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18629_)
                                               _rlen18702_)
                                              _body18731_
                                              _E18630_))
                                         _E18630_)))))))
                          (if (##pair? _body1868518692_)
                              (let ((_hd1868918750_ (##car _body1868518692_))
                                    (_tl1869018752_ (##cdr _body1868518692_)))
                                (let* ((_hd18755_ _hd1868918750_)
                                       (_tl18757_ _tl1869018752_))
                                  (_K1868818747_ _tl18757_ _hd18755_)))
                              (_E1868718696_)))
                        (if (eq? 'null _$e18649_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18629_)
                             (_k18631_ _vars18628_)
                             _E18630_)
                            (if (eq? 'vector _$e18649_)
                                (let ((_$e18759_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18629_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18759_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18358_
                                                        _target18629_))
                                                      '()))
                                          '())
                                    (_recur18536_
                                     _body18646_
                                     _vars18628_
                                     _$e18759_
                                     _E18630_
                                     _k18631_))
                                   _E18630_))
                                (if (eq? 'box _$e18649_)
                                    (let ((_$e18761_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18629_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18761_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18358_
                                                            _target18629_))
                                                          '()))
                                              '())
                                        (_recur18536_
                                         _body18646_
                                         _vars18628_
                                         _$e18761_
                                         _E18630_
                                         _k18631_))
                                       _E18630_))
                                    (if (eq? 'datum _$e18649_)
                                        (let ((_$e18763_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18629_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18763_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18629_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18763_
                                              _body18646_)
                                             (_k18631_ _vars18628_)
                                             _E18630_))
                                           _E18630_))
                                        (_BUG18535_ _e18627_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1863218639_)
                                      (let ((_hd1863618768_
                                             (##car _e1863218639_))
                                            (_tl1863718770_
                                             (##cdr _e1863218639_)))
                                        (let* ((_tag18773_ _hd1863618768_)
                                               (_body18775_ _tl1863718770_))
                                          (_K1863518765_
                                           _body18775_
                                           _tag18773_)))
                                      (_E1863418643_)))))
                             (_splice-rlen18537_
                              (lambda (_e18589_)
                                (let _lp18591_ ((_e18593_ _e18589_)
                                                (_n18594_ '0))
                                  (let* ((_e1859518602_ _e18593_)
                                         (_E1859718606_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1859518602_)))
                                         (_K1859818615_
                                          (lambda (_body18609_ _tag18610_)
                                            (let ((_$e18612_ _tag18610_))
                                              (if (eq? 'splice _$e18612_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18356_
                                                   _where18528_)
                                                  (if (eq? 'cons _$e18612_)
                                                      (_lp18591_
                                                       (cdr _body18609_)
                                                       (fx+ _n18594_ '1))
                                                      _n18594_))))))
                                    (if (##pair? _e1859518602_)
                                        (let ((_hd1859918618_
                                               (##car _e1859518602_))
                                              (_tl1860018620_
                                               (##cdr _e1859518602_)))
                                          (let* ((_tag18623_ _hd1859918618_)
                                                 (_body18625_ _tl1860018620_))
                                            (_K1859818615_
                                             _body18625_
                                             _tag18623_)))
                                        (_E1859718606_))))))
                             (_splice-vars18538_
                              (lambda (_e18545_)
                                (let _recur18547_ ((_e18549_ _e18545_)
                                                   (_vars18550_ '()))
                                  (let* ((_e1855118558_ _e18549_)
                                         (_E1855318562_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1855118558_)))
                                         (_K1855418577_
                                          (lambda (_body18565_ _tag18566_)
                                            (let ((_$e18568_ _tag18566_))
                                              (if (eq? 'var _$e18568_)
                                                  (cons _body18565_
                                                        _vars18550_)
                                                  (if (let ((_$e18571_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e18568_)))
                (if _$e18571_ _$e18571_ (eq? 'splice _$e18568_)))
              (_recur18547_
               (cdr _body18565_)
               (_recur18547_ (car _body18565_) _vars18550_))
              (if (let ((_$e18574_ (eq? 'vector _$e18568_)))
                    (if _$e18574_ _$e18574_ (eq? 'box _$e18568_)))
                  (_recur18547_ _body18565_ _vars18550_)
                  _vars18550_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1855118558_)
                                        (let ((_hd1855518580_
                                               (##car _e1855118558_))
                                              (_tl1855618582_
                                               (##cdr _e1855118558_)))
                                          (let* ((_tag18585_ _hd1855518580_)
                                                 (_body18587_ _tl1855618582_))
                                            (_K1855418577_
                                             _body18587_
                                             _tag18585_)))
                                        (_E1855318562_))))))
                             (_make-body18539_
                              (lambda (_vars18541_)
                                (cons _K18532_
                                      (map (lambda (_mvar18543_)
                                             (assgetq (car _mvar18543_)
                                                      _vars18541_
                                                      _BUG18535_))
                                           _mvars18531_)))))
                      (_recur18536_
                       _hd18530_
                       '()
                       _target18529_
                       _E18533_
                       _make-body18539_))))
                 (_parse-clause18365_
                  (lambda (_hd18434_ _ids18435_)
                    (let _recur18437_ ((_e18439_ _hd18434_)
                                       (_vars18440_ '())
                                       (_depth18441_ '0))
                      (if (gx#identifier? _e18439_)
                          (if (gx#underscore? _e18439_)
                              (values '(any) _vars18440_)
                              (if (gx#ellipsis? _e18439_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18356_
                                   _hd18434_)
                                  (if (find (lambda (_id18443_)
                                              (gx#bound-identifier=?
                                               _e18439_
                                               _id18443_))
                                            _ids18435_)
                                      (values (cons 'id _e18439_) _vars18440_)
                                      (if (find (lambda (_var18445_)
                                                  (gx#bound-identifier=?
                                                   _e18439_
                                                   (car _var18445_)))
                                                _vars18440_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18356_
                                           _e18439_)
                                          (values (cons 'var _e18439_)
                                                  (cons (cons _e18439_
                                                              _depth18441_)
                                                        _vars18440_))))))
                          (if (gx#stx-pair? _e18439_)
                              (let* ((_e1844618453_ _e18439_)
                                     (_E1844818457_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1844618453_)))
                                     (_E1844718518_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1844618453_)
                                            (let ((_e1844918461_
                                                   (gx#syntax-e
                                                    _e1844618453_)))
                                              (let ((_hd1845018464_
                                                     (##car _e1844918461_))
                                                    (_tl1845118466_
                                                     (##cdr _e1844918461_)))
                                                (let* ((_hd18469_
                                                        _hd1845018464_)
                                                       (_rest18471_
                                                        _tl1845118466_))
                                                  (if '#t
                                                      (let* ((_make-pair18486_
                                                              (lambda (_tag18473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18474_
                               _tl18475_)
                        (let* ((_hd-depth18477_
                                (if (eq? _tag18473_ 'splice)
                                    (fx+ _depth18441_ '1)
                                    _depth18441_))
                               (_g19631_
                                (_recur18437_
                                 _hd18474_
                                 _vars18440_
                                 _hd-depth18477_)))
                          (begin
                            (let ((_g19632_
                                   (if (##values? _g19631_)
                                       (##vector-length _g19631_)
                                       1)))
                              (if (not (##fx= _g19632_ 2))
                                  (error "Context expects 2 values" _g19632_)))
                            (let ((_hd18479_ (##vector-ref _g19631_ 0))
                                  (_vars18480_ (##vector-ref _g19631_ 1)))
                              (let ((_g19633_
                                     (_recur18437_
                                      _tl18475_
                                      _vars18480_
                                      _depth18441_)))
                                (begin
                                  (let ((_g19634_
                                         (if (##values? _g19633_)
                                             (##vector-length _g19633_)
                                             1)))
                                    (if (not (##fx= _g19634_ 2))
                                        (error "Context expects 2 values"
                                               _g19634_)))
                                  (let ((_tl18482_ (##vector-ref _g19633_ 0))
                                        (_vars18483_
                                         (##vector-ref _g19633_ 1)))
                                    (let ()
                                      (values (cons _tag18473_
                                                    (cons _hd18479_ _tl18482_))
                                              _vars18483_))))))))))
                     (_e1848718494_ _rest18471_)
                     (_E1848918498_
                      (lambda ()
                        (_make-pair18486_ 'cons _hd18469_ _rest18471_)))
                     (_E1848818514_
                      (lambda ()
                        (if (gx#stx-pair? _e1848718494_)
                            (let ((_e1849018502_ (gx#syntax-e _e1848718494_)))
                              (let ((_hd1849118505_ (##car _e1849018502_))
                                    (_tl1849218507_ (##cdr _e1849018502_)))
                                (let* ((_rest-hd18510_ _hd1849118505_)
                                       (_rest-tl18512_ _tl1849218507_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18510_)
                                          (_make-pair18486_
                                           'splice
                                           _hd18469_
                                           _rest-tl18512_)
                                          (_make-pair18486_
                                           'cons
                                           _hd18469_
                                           _rest18471_))
                                      (_E1848918498_)))))
                            (_E1848918498_)))))
                (_E1848818514_))
              (_E1844818457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1844818457_)))))
                                (_E1844718518_))
                              (if (gx#stx-null? _e18439_)
                                  (values '(null) _vars18440_)
                                  (if (gx#stx-vector? _e18439_)
                                      (let ((_g19635_
                                             (_recur18437_
                                              (vector->list
                                               (gx#syntax-e _e18439_))
                                              _vars18440_
                                              _depth18441_)))
                                        (begin
                                          (let ((_g19636_
                                                 (if (##values? _g19635_)
                                                     (##vector-length _g19635_)
                                                     1)))
                                            (if (not (##fx= _g19636_ 2))
                                                (error "Context expects 2 values"
                                                       _g19636_)))
                                          (let ((_e18522_
                                                 (##vector-ref _g19635_ 0))
                                                (_vars18523_
                                                 (##vector-ref _g19635_ 1)))
                                            (values (cons 'vector _e18522_)
                                                    _vars18523_))))
                                      (if (gx#stx-box? _e18439_)
                                          (let ((_g19637_
                                                 (_recur18437_
                                                  (unbox (gx#syntax-e
                                                          _e18439_))
                                                  _vars18440_
                                                  _depth18441_)))
                                            (begin
                                              (let ((_g19638_
                                                     (if (##values? _g19637_)
                                                         (##vector-length
                                                          _g19637_)
                                                         1)))
                                                (if (not (##fx= _g19638_ 2))
                                                    (error "Context expects 2 values"
                                                           _g19638_)))
                                              (let ((_e18525_
                                                     (##vector-ref _g19637_ 0))
                                                    (_vars18526_
                                                     (##vector-ref
                                                      _g19637_
                                                      1)))
                                                (values (cons 'box _e18525_)
                                                        _vars18526_))))
                                          (if (gx#stx-datum? _e18439_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18439_))
                                                      _vars18440_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18356_
                                               _e18439_)))))))))))
          (let* ((_e1836618379_ _stx18356_)
                 (_E1836818383_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1836618379_)))
                 (_E1836718430_
                  (lambda ()
                    (if (gx#stx-pair? _e1836618379_)
                        (let ((_e1836918387_ (gx#syntax-e _e1836618379_)))
                          (let ((_hd1837018390_ (##car _e1836918387_))
                                (_tl1837118392_ (##cdr _e1836918387_)))
                            (if (gx#stx-pair? _tl1837118392_)
                                (let ((_e1837218395_
                                       (gx#syntax-e _tl1837118392_)))
                                  (let ((_hd1837318398_ (##car _e1837218395_))
                                        (_tl1837418400_ (##cdr _e1837218395_)))
                                    (let ((_expr18403_ _hd1837318398_))
                                      (if (gx#stx-pair? _tl1837418400_)
                                          (let ((_e1837518405_
                                                 (gx#syntax-e _tl1837418400_)))
                                            (let ((_hd1837618408_
                                                   (##car _e1837518405_))
                                                  (_tl1837718410_
                                                   (##cdr _e1837518405_)))
                                              (let* ((_ids18413_
                                                      _hd1837618408_)
                                                     (_clauses18415_
                                                      _tl1837718410_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18413_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18356_
                                                         _ids18413_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18415_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18356_)
                    (let* ((_ids18417_ (gx#syntax->list _ids18413_))
                           (_clauses18419_ (gx#syntax->list _clauses18415_))
                           (_clause-ids18421_ (gx#gentemps _clauses18419_))
                           (_E18423_ (gx#genident__0))
                           (_target18425_ (gx#genident__0))
                           (_first18427_
                            (if (null? _clauses18419_)
                                _E18423_
                                (car _clause-ids18421_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18423_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18425_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18425_))
                                            '()))
                                '())
                          (_generate-body18362_
                           (_generate-bindings18361_
                            _target18425_
                            _ids18417_
                            _clauses18419_
                            _clause-ids18421_
                            _E18423_)
                           (cons _first18427_ (cons _expr18403_ '()))))
                         (gx#stx-source _stx18356_)))
                       (gx#stx-source _stx18356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1836818383_)))))
                                          (_E1836818383_)))))
                                (_E1836818383_))))
                        (_E1836818383_)))))
            (_E1836718430_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx19066_)
          (let* ((_identifier=?19068_ 'free-identifier=?)
                 (_unwrap-e19070_ 'syntax-e)
                 (_wrap-e19072_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19066_
             _identifier=?19068_
             _unwrap-e19070_
             _wrap-e19072_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx19074_ _identifier=?19075_)
          (let* ((_unwrap-e19077_ 'syntax-e) (_wrap-e19079_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19074_
             _identifier=?19075_
             _unwrap-e19077_
             _wrap-e19079_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx19081_ _identifier=?19082_ _unwrap-e19083_)
          (let ((_wrap-e19085_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19081_
             _identifier=?19082_
             _unwrap-e19083_
             _wrap-e19085_))))
      (define gx#macro-expand-syntax-case
        (lambda _g19640_
          (let ((_g19639_ (length _g19640_)))
            (cond ((##fx= _g19639_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g19640_))
                  ((##fx= _g19639_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g19640_))
                  ((##fx= _g19639_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g19640_))
                  ((##fx= _g19639_ 4)
                   (apply gx#macro-expand-syntax-case__% _g19640_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g19640_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18353_)
      (if (gx#identifier? _stx18353_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18353_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18311_ . _rest18312_)
      (let ((_len18314_ (length _hd18311_)))
        (let _lp18316_ ((_rest18318_ _rest18312_))
          (let* ((_rest1831918327_ _rest18318_)
                 (_else1832118335_ (lambda () '#!void))
                 (_K1832318341_
                  (lambda (_rest18338_ _hd18339_)
                    (if (fx= _len18314_ (length _hd18339_))
                        (_lp18316_ _rest18338_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18339_)))))
            (if (##pair? _rest1831918327_)
                (let ((_hd1832418344_ (##car _rest1831918327_))
                      (_tl1832518346_ (##cdr _rest1831918327_)))
                  (let* ((_hd18349_ _hd1832418344_)
                         (_rest18351_ _tl1832518346_))
                    (_K1832318341_ _rest18351_ _hd18349_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18269_ _n18270_)
      (let _lp18272_ ((_rest18274_ _stx18269_) (_r18275_ '()))
        (if (gx#stx-pair? _rest18274_)
            (let* ((_g1827618283_ (gx#syntax-e _rest18274_))
                   (_E1827818287_
                    (lambda () (error '"No clause matching" _g1827618283_)))
                   (_K1827918293_
                    (lambda (_rest18290_ _hd18291_)
                      (_lp18272_ _rest18290_ (cons _hd18291_ _r18275_)))))
              (if (##pair? _g1827618283_)
                  (let ((_hd1828018296_ (##car _g1827618283_))
                        (_tl1828118298_ (##cdr _g1827618283_)))
                    (let* ((_hd18301_ _hd1828018296_)
                           (_rest18303_ _tl1828118298_))
                      (_K1827918293_ _rest18303_ _hd18301_)))
                  (_E1827818287_)))
            (let _lp18305_ ((_n18307_ _n18270_)
                            (_l18308_ _r18275_)
                            (_r18309_ _rest18274_))
              (if (null? _l18308_)
                  (values _l18308_ _r18309_)
                  (if (fxpositive? _n18307_)
                      (_lp18305_
                       (fx- _n18307_ '1)
                       (cdr _l18308_)
                       (cons (car _l18308_) _r18309_))
                      (values (reverse _l18308_) _r18309_)))))))))
