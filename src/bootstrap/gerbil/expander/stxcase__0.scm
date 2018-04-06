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
    (lambda _$args19671_
      (apply make-struct-instance gx#syntax-pattern::t _$args19671_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19668_ _stx19669_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19669_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19150_)
      (letrec ((_generate19152_
                (lambda (_e19379_)
                  (letrec ((_BUG19381_
                            (lambda (_q19543_)
                              (error '"BUG: syntax; generate"
                                     _stx19150_
                                     _e19379_
                                     _q19543_)))
                           (_local-pattern-e19382_
                            (lambda (_pat19541_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19541_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19383_
                            (lambda (_q19538_ _vars19539_)
                              (assgetq _q19538_ _vars19539_ _BUG19381_)))
                           (_getarg19384_
                            (lambda (_arg19504_ _vars19505_)
                              (let* ((_arg1950619513_ _arg19504_)
                                     (_E1950819517_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1950619513_)))
                                     (_K1950919526_
                                      (lambda (_e19520_ _tag19521_)
                                        (let ((_$e19523_ _tag19521_))
                                          (if (eq? 'ref _$e19523_)
                                              (_getvar19383_
                                               _e19520_
                                               _vars19505_)
                                              (if (eq? 'pattern _$e19523_)
                                                  (_local-pattern-e19382_
                                                   _e19520_)
                                                  (_BUG19381_ _arg19504_)))))))
                                (if (##pair? _arg1950619513_)
                                    (let ((_hd1951019529_
                                           (##car _arg1950619513_))
                                          (_tl1951119531_
                                           (##cdr _arg1950619513_)))
                                      (let* ((_tag19534_ _hd1951019529_)
                                             (_e19536_ _tl1951119531_))
                                        (_K1950919526_ _e19536_ _tag19534_)))
                                    (_E1950819517_))))))
                    (let _recur19386_ ((_e19388_ _e19379_) (_vars19389_ '()))
                      (let* ((_e1939019397_ _e19388_)
                             (_E1939219401_
                              (lambda ()
                                (error '"No clause matching" _e1939019397_)))
                             (_K1939319492_
                              (lambda (_body19404_ _tag19405_)
                                (let ((_$e19407_ _tag19405_))
                                  (if (eq? 'datum _$e19407_)
                                      (gx#core-list 'quote _body19404_)
                                      (if (eq? 'term _$e19407_)
                                          (let ((_id19410_
                                                 (gx#syntax-local-unwrap
                                                  _body19404_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19410_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19412_
                                                       (##unchecked-structure-ref
                                                        _id19410_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19412_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19404_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19404_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19404_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19410_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19404_)
                                                    (_BUG19381_ _e19388_))))
                                          (if (eq? 'pattern _$e19407_)
                                              (_local-pattern-e19382_
                                               _body19404_)
                                              (if (eq? 'ref _$e19407_)
                                                  (_getvar19383_
                                                   _body19404_
                                                   _vars19389_)
                                                  (if (eq? 'cons _$e19407_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19386_
                                                        (car _body19404_)
                                                        _vars19389_)
                                                       (_recur19386_
                                                        (cdr _body19404_)
                                                        _vars19389_))
                                                      (if (eq? 'vector
                                                               _$e19407_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19386_
                                                            _body19404_
                                                            _vars19389_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19407_)
                      (gx#core-list
                       'box
                       (_recur19386_ _body19404_ _vars19389_))
                      (if (eq? 'splice _$e19407_)
                          (let* ((_body1941319424_ _body19404_)
                                 (_E1941519428_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1941319424_)))
                                 (_K1941619466_
                                  (lambda (_args19431_
                                           _iv19432_
                                           _hd19433_
                                           _depth19434_)
                                    (let* ((_targets19440_
                                            (map (lambda (_g1943519437_)
                                                   (_getarg19384_
                                                    _g1943519437_
                                                    _vars19389_))
                                                 _args19431_))
                                           (_fold-in19442_
                                            (gx#gentemps _args19431_))
                                           (_fold-out19444_ (gx#genident__0))
                                           (_lambda-args19446_
                                            (foldr1 cons
                                                    (cons _fold-out19444_ '())
                                                    _fold-in19442_))
                                           (_lambda-body19463_
                                            (if (fx> _depth19434_ '1)
                                                (let ((_r-args19454_
                                                       (map (lambda (_arg19448_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19448_)))
                    _args19431_))
              (_r-vars19455_
               (foldr2 (lambda (_arg19450_ _var19451_ _r19452_)
                         (cons (cons (cdr _arg19450_) _var19451_) _r19452_))
                       _vars19389_
                       _args19431_
                       _fold-in19442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19386_
                                                   (cons 'splice
                                                         (cons (fx- _depth19434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19433_
                             (cons (cons 'var _fold-out19444_)
                                   _r-args19454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19455_))
                                                (let ((_hd-vars19461_
                                                       (foldr2 (lambda (_arg19457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19458_
                                _r19459_)
                         (cons (cons (cdr _arg19457_) _var19458_) _r19459_))
                       _vars19389_
                       _args19431_
                       _fold-in19442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19386_
                                                    _hd19433_
                                                    _hd-vars19461_)
                                                   _fold-out19444_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19440_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19440_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19446_
                                         _lambda-body19463_)
                                        (_recur19386_ _iv19432_ _vars19389_)
                                        _targets19440_))))))
                            (if (##pair? _body1941319424_)
                                (let ((_hd1941719469_ (##car _body1941319424_))
                                      (_tl1941819471_
                                       (##cdr _body1941319424_)))
                                  (let ((_depth19474_ _hd1941719469_))
                                    (if (##pair? _tl1941819471_)
                                        (let ((_hd1941919476_
                                               (##car _tl1941819471_))
                                              (_tl1942019478_
                                               (##cdr _tl1941819471_)))
                                          (let ((_hd19481_ _hd1941919476_))
                                            (if (##pair? _tl1942019478_)
                                                (let ((_hd1942119483_
                                                       (##car _tl1942019478_))
                                                      (_tl1942219485_
                                                       (##cdr _tl1942019478_)))
                                                  (let* ((_iv19488_
                                                          _hd1942119483_)
                                                         (_args19490_
                                                          _tl1942219485_))
                                                    (_K1941619466_
                                                     _args19490_
                                                     _iv19488_
                                                     _hd19481_
                                                     _depth19474_)))
                                                (_E1941519428_))))
                                        (_E1941519428_))))
                                (_E1941519428_)))
                          (if (eq? 'var _$e19407_)
                              _body19404_
                              (_BUG19381_ _e19388_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1939019397_)
                            (let ((_hd1939419495_ (##car _e1939019397_))
                                  (_tl1939519497_ (##cdr _e1939019397_)))
                              (let* ((_tag19500_ _hd1939419495_)
                                     (_body19502_ _tl1939519497_))
                                (_K1939319492_ _body19502_ _tag19500_)))
                            (_E1939219401_)))))))
               (_parse19153_
                (lambda (_e19194_)
                  (letrec ((_make-cons19196_
                            (lambda (_hd19371_ _tl19372_)
                              (let ((_g19673_ _hd19371_) (_g19675_ _tl19372_))
                                (begin
                                  (let ((_g19674_
                                         (if (##values? _g19673_)
                                             (##vector-length _g19673_)
                                             1)))
                                    (if (not (##fx= _g19674_ 2))
                                        (error "Context expects 2 values"
                                               _g19674_)))
                                  (let ((_g19676_
                                         (if (##values? _g19675_)
                                             (##vector-length _g19675_)
                                             1)))
                                    (if (not (##fx= _g19676_ 2))
                                        (error "Context expects 2 values"
                                               _g19676_)))
                                  (let ((_hd-e19374_ (##vector-ref _g19673_ 0))
                                        (_hd-vars19375_
                                         (##vector-ref _g19673_ 1)))
                                    (let ((_tl-e19376_
                                           (##vector-ref _g19675_ 0))
                                          (_tl-vars19377_
                                           (##vector-ref _g19675_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19374_
                                                          _tl-e19376_))
                                              (append _hd-vars19375_
                                                      _tl-vars19377_))))))))
                           (_make-splice19197_
                            (lambda (_where19310_
                                     _depth19311_
                                     _hd19312_
                                     _tl19313_)
                              (let ((_g19677_ _hd19312_) (_g19679_ _tl19313_))
                                (begin
                                  (let ((_g19678_
                                         (if (##values? _g19677_)
                                             (##vector-length _g19677_)
                                             1)))
                                    (if (not (##fx= _g19678_ 2))
                                        (error "Context expects 2 values"
                                               _g19678_)))
                                  (let ((_g19680_
                                         (if (##values? _g19679_)
                                             (##vector-length _g19679_)
                                             1)))
                                    (if (not (##fx= _g19680_ 2))
                                        (error "Context expects 2 values"
                                               _g19680_)))
                                  (let ((_hd-e19315_ (##vector-ref _g19677_ 0))
                                        (_hd-vars19316_
                                         (##vector-ref _g19677_ 1)))
                                    (let ((_tl-e19317_
                                           (##vector-ref _g19679_ 0))
                                          (_tl-vars19318_
                                           (##vector-ref _g19679_ 1)))
                                      (let _lp19320_ ((_rest19322_
                                                       _hd-vars19316_)
                                                      (_targets19323_ '())
                                                      (_vars19324_
                                                       _tl-vars19318_))
                                        (let* ((_rest1932519335_ _rest19322_)
                                               (_else1932719343_
                                                (lambda ()
                                                  (if (null? _targets19323_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19150_
                                                       _where19310_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19311_
                                  (cons _hd-e19315_
                                        (cons _tl-e19317_ _targets19323_))))
                      _vars19324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1932919352_
                                                (lambda (_rest19346_
                                                         _hd-pat19347_
                                                         _hd-depth*19348_)
                                                  (let ((_hd-depth19350_
                                                         (fx- _hd-depth*19348_
                                                              _depth19311_)))
                                                    (if (fxpositive?
                                                         _hd-depth19350_)
                                                        (_lp19320_
                                                         _rest19346_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19347_)
                       _targets19323_)
                 (cons (cons _hd-depth19350_ _hd-pat19347_) _vars19324_))
                (if (fxzero? _hd-depth19350_)
                    (_lp19320_
                     _rest19346_
                     (cons (cons 'pattern _hd-pat19347_) _targets19323_)
                     _vars19324_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19150_
                     _where19310_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1932519335_)
                                              (let ((_hd1933019355_
                                                     (##car _rest1932519335_))
                                                    (_tl1933119357_
                                                     (##cdr _rest1932519335_)))
                                                (if (##pair? _hd1933019355_)
                                                    (let ((_hd1933219360_
                                                           (##car _hd1933019355_))
                                                          (_tl1933319362_
                                                           (##cdr _hd1933019355_)))
                                                      (let* ((_hd-depth*19365_
                                                              _hd1933219360_)
                                                             (_hd-pat19367_
                                                              _tl1933319362_)
                                                             (_rest19369_
                                                              _tl1933119357_))
                                                        (_K1932919352_
                                                         _rest19369_
                                                         _hd-pat19367_
                                                         _hd-depth*19365_)))
                                                    (_else1932719343_)))
                                              (_else1932719343_))))))))))
                           (_recur19198_
                            (lambda (_e19203_ _is-e?19204_)
                              (if (_is-e?19204_ _e19203_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19150_)
                                  (if (gx#syntax-local-pattern? _e19203_)
                                      (let* ((_pat19206_
                                              (gx#syntax-local-e__0 _e19203_))
                                             (_depth19208_
                                              (##structure-ref
                                               _pat19206_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19208_)
                                            (values (cons 'ref _pat19206_)
                                                    (cons (cons _depth19208_
                                                                _pat19206_)
                                                          '()))
                                            (values (cons 'pattern _pat19206_)
                                                    '())))
                                      (if (gx#identifier? _e19203_)
                                          (values (cons 'term _e19203_) '())
                                          (if (gx#stx-pair? _e19203_)
                                              (let* ((_e1921019217_ _e19203_)
                                                     (_E1921219221_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1921019217_)))
                                                     (_E1921119300_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1921019217_)
                                                            (let ((_e1921319225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1921019217_)))
                      (let ((_hd1921419228_ (##car _e1921319225_))
                            (_tl1921519230_ (##cdr _e1921319225_)))
                        (let* ((_hd19233_ _hd1921419228_)
                               (_rest19235_ _tl1921519230_))
                          (if '#t
                              (if (_is-e?19204_ _hd19233_)
                                  (let* ((_e1923619243_ _rest19235_)
                                         (_E1923819247_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19150_
                                             _e19203_)))
                                         (_E1923719261_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1923619243_)
                                                (let ((_e1923919251_
                                                       (gx#syntax-e
                                                        _e1923619243_)))
                                                  (let ((_hd1924019254_
                                                         (##car _e1923919251_))
                                                        (_tl1924119256_
                                                         (##cdr _e1923919251_)))
                                                    (let ((_rest19259_
                                                           _hd1924019254_))
                                                      (if (gx#stx-null?
                                                           _tl1924119256_)
                                                          (if '#t
                                                              (_recur19198_
                                                               _rest19259_
                                                               false)
                                                              (_E1923819247_))
                                                          (_E1923819247_)))))
                                                (_E1923819247_)))))
                                    (_E1923719261_))
                                  (let _lp19265_ ((_rest19267_ _rest19235_)
                                                  (_depth19268_ '0))
                                    (let* ((_e1926919276_ _rest19267_)
                                           (_E1927119280_
                                            (lambda ()
                                              (if (fxpositive? _depth19268_)
                                                  (_make-splice19197_
                                                   _e19203_
                                                   _depth19268_
                                                   (_recur19198_
                                                    _hd19233_
                                                    _is-e?19204_)
                                                   (_recur19198_
                                                    _rest19267_
                                                    _is-e?19204_))
                                                  (_make-cons19196_
                                                   (_recur19198_
                                                    _hd19233_
                                                    _is-e?19204_)
                                                   (_recur19198_
                                                    _rest19267_
                                                    _is-e?19204_)))))
                                           (_E1927019296_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1926919276_)
                                                  (let ((_e1927219284_
                                                         (gx#syntax-e
                                                          _e1926919276_)))
                                                    (let ((_hd1927319287_
                                                           (##car _e1927219284_))
                                                          (_tl1927419289_
                                                           (##cdr _e1927219284_)))
                                                      (let* ((_rest-hd19292_
                                                              _hd1927319287_)
                                                             (_rest-tl19294_
                                                              _tl1927419289_))
                                                        (if '#t
                                                            (if (_is-e?19204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19292_)
                        (_lp19265_ _rest-tl19294_ (fx+ _depth19268_ '1))
                        (if (fxpositive? _depth19268_)
                            (_make-splice19197_
                             _e19203_
                             _depth19268_
                             (_recur19198_ _hd19233_ _is-e?19204_)
                             (_recur19198_ _rest19267_ _is-e?19204_))
                            (_make-cons19196_
                             (_recur19198_ _hd19233_ _is-e?19204_)
                             (_recur19198_ _rest19267_ _is-e?19204_))))
                    (_E1927119280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1927119280_)))))
                                      (_E1927019296_))))
                              (_E1921219221_)))))
                    (_E1921219221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1921119300_))
                                              (if (gx#stx-vector? _e19203_)
                                                  (let ((_g19681_
                                                         (_recur19198_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19203_))
                                                          _is-e?19204_)))
                                                    (begin
                                                      (let ((_g19682_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19681_)
                         (##vector-length _g19681_)
                         1)))
                (if (not (##fx= _g19682_ 2))
                    (error "Context expects 2 values" _g19682_)))
              (let ((_e19304_ (##vector-ref _g19681_ 0))
                    (_vars19305_ (##vector-ref _g19681_ 1)))
                (values (cons 'vector _e19304_) _vars19305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19203_)
                                                      (let ((_g19683_
                                                             (_recur19198_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19203_))
                      _is-e?19204_)))
                (begin
                  (let ((_g19684_
                         (if (##values? _g19683_)
                             (##vector-length _g19683_)
                             1)))
                    (if (not (##fx= _g19684_ 2))
                        (error "Context expects 2 values" _g19684_)))
                  (let ((_e19307_ (##vector-ref _g19683_ 0))
                        (_vars19308_ (##vector-ref _g19683_ 1)))
                    (values (cons 'box _e19307_) _vars19308_))))
              (values (cons 'datum _e19203_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19685_ (_recur19198_ _e19194_ gx#ellipsis?)))
                      (begin
                        (let ((_g19686_
                               (if (##values? _g19685_)
                                   (##vector-length _g19685_)
                                   1)))
                          (if (not (##fx= _g19686_ 2))
                              (error "Context expects 2 values" _g19686_)))
                        (let ((_tree19200_ (##vector-ref _g19685_ 0))
                              (_vars19201_ (##vector-ref _g19685_ 1)))
                          (if (null? _vars19201_)
                              _tree19200_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19150_
                               _vars19201_)))))))))
        (let* ((_e1915419164_ _stx19150_)
               (_E1915619168_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19150_)))
               (_E1915519190_
                (lambda ()
                  (if (gx#stx-pair? _e1915419164_)
                      (let ((_e1915719172_ (gx#syntax-e _e1915419164_)))
                        (let ((_hd1915819175_ (##car _e1915719172_))
                              (_tl1915919177_ (##cdr _e1915719172_)))
                          (if (gx#stx-pair? _tl1915919177_)
                              (let ((_e1916019180_
                                     (gx#syntax-e _tl1915919177_)))
                                (let ((_hd1916119183_ (##car _e1916019180_))
                                      (_tl1916219185_ (##cdr _e1916019180_)))
                                  (let ((_form19188_ _hd1916119183_))
                                    (if (gx#stx-null? _tl1916219185_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19152_
                                              (_parse19153_ _form19188_))
                                             (gx#stx-source _stx19150_))
                                            (_E1915619168_))
                                        (_E1915619168_)))))
                              (_E1915619168_))))
                      (_E1915619168_)))))
          (_E1915519190_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18414_ _identifier=?18415_ _unwrap-e18416_ _wrap-e18417_)
        (letrec ((_generate-bindings18419_
                  (lambda (_target19014_
                           _ids19015_
                           _clauses19016_
                           _clause-ids19017_
                           _E19018_)
                    (letrec ((_generate119020_
                              (lambda (_clause19117_ _clause-id19118_ _E19119_)
                                (cons (cons _clause-id19118_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19014_ '())
                                             (_generate-clause18421_
                                              _target19014_
                                              _ids19015_
                                              _clause19117_
                                              _E19119_))
                                            '())))))
                      (let _lp19022_ ((_rest19024_ _clauses19016_)
                                      (_rest-ids19025_ _clause-ids19017_)
                                      (_bindings19026_ '()))
                        (let* ((_rest1902719035_ _rest19024_)
                               (_else1902919043_ (lambda () _bindings19026_))
                               (_K1903119105_
                                (lambda (_rest19046_ _clause19047_)
                                  (let* ((_rest-ids1904819055_ _rest-ids19025_)
                                         (_E1905019059_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1904819055_)))
                                         (_K1905119093_
                                          (lambda (_rest-ids19062_
                                                   _clause-id19063_)
                                            (let* ((_rest-ids1906419072_
                                                    _rest-ids19062_)
                                                   (_else1906619080_
                                                    (lambda ()
                                                      (cons (_generate119020_
                                                             _clause19047_
                                                             _clause-id19063_
                                                             _E19018_)
                                                            _bindings19026_)))
                                                   (_K1906819085_
                                                    (lambda (_next-clause-id19083_)
                                                      (_lp19022_
                                                       _rest19046_
                                                       _rest-ids19062_
                                                       (cons (_generate119020_
                                                              _clause19047_
                                                              _clause-id19063_
                                                              _next-clause-id19083_)
                                                             _bindings19026_)))))
                                              (if (##pair? _rest-ids1906419072_)
                                                  (let* ((_hd1906919088_
                                                          (##car _rest-ids1906419072_))
                                                         (_next-clause-id19091_
                                                          _hd1906919088_))
                                                    (_K1906819085_
                                                     _next-clause-id19091_))
                                                  (_else1906619080_))))))
                                    (if (##pair? _rest-ids1904819055_)
                                        (let ((_hd1905219096_
                                               (##car _rest-ids1904819055_))
                                              (_tl1905319098_
                                               (##cdr _rest-ids1904819055_)))
                                          (let* ((_clause-id19101_
                                                  _hd1905219096_)
                                                 (_rest-ids19103_
                                                  _tl1905319098_))
                                            (_K1905119093_
                                             _rest-ids19103_
                                             _clause-id19101_)))
                                        (_E1905019059_))))))
                          (if (##pair? _rest1902719035_)
                              (let ((_hd1903219108_ (##car _rest1902719035_))
                                    (_tl1903319110_ (##cdr _rest1902719035_)))
                                (let* ((_clause19113_ _hd1903219108_)
                                       (_rest19115_ _tl1903319110_))
                                  (_K1903119105_ _rest19115_ _clause19113_)))
                              (_else1902919043_)))))))
                 (_generate-body18420_
                  (lambda (_bindings18974_ _body18975_)
                    (let _recur18977_ ((_rest18979_ _bindings18974_))
                      (let* ((_rest1898018988_ _rest18979_)
                             (_else1898218996_ (lambda () _body18975_))
                             (_K1898419002_
                              (lambda (_rest18999_ _hd19000_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd19000_ '())
                                 (_recur18977_ _rest18999_)))))
                        (if (##pair? _rest1898018988_)
                            (let ((_hd1898519005_ (##car _rest1898018988_))
                                  (_tl1898619007_ (##cdr _rest1898018988_)))
                              (let* ((_hd19010_ _hd1898519005_)
                                     (_rest19012_ _tl1898619007_))
                                (_K1898419002_ _rest19012_ _hd19010_)))
                            (_else1898218996_))))))
                 (_generate-clause18421_
                  (lambda (_target18837_ _ids18838_ _clause18839_ _E18840_)
                    (letrec ((_generate118842_
                              (lambda (_hd18929_ _fender18930_ _body18931_)
                                (let ((_g19687_
                                       (_parse-clause18423_
                                        _hd18929_
                                        _ids18838_)))
                                  (begin
                                    (let ((_g19688_
                                           (if (##values? _g19687_)
                                               (##vector-length _g19687_)
                                               1)))
                                      (if (not (##fx= _g19688_ 2))
                                          (error "Context expects 2 values"
                                                 _g19688_)))
                                    (let ((_e18933_ (##vector-ref _g19687_ 0))
                                          (_mvars18934_
                                           (##vector-ref _g19687_ 1)))
                                      (let* ((_pvars18936_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars18934_)))
                                             (_E18938_
                                              (cons _E18840_
                                                    (cons _target18837_ '())))
                                             (_K18971_
                                              (gx#core-list
                                               'lambda%
                                               _pvars18936_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar18940_
                                                              _pvar18941_)
                                                       (let* ((_mvar1894218949_
                                                               _mvar18940_)
                                                              (_E1894418953_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1894218949_)))
                      (_K1894518959_
                       (lambda (_depth18956_ _id18957_)
                         (cons _id18957_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id18957_)
                                      (gx#core-list 'quote _pvar18941_)
                                      _depth18956_)
                                     '())))))
                 (if (##pair? _mvar1894218949_)
                     (let ((_hd1894618962_ (##car _mvar1894218949_))
                           (_tl1894718964_ (##cdr _mvar1894218949_)))
                       (let* ((_id18967_ _hd1894618962_)
                              (_depth18969_ _tl1894718964_))
                         (_K1894518959_ _depth18969_ _id18967_)))
                     (_E1894418953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars18934_
                                                     _pvars18936_)
                                                (if (eq? _fender18930_ '#t)
                                                    _body18931_
                                                    (gx#core-list
                                                     'if
                                                     _fender18930_
                                                     _body18931_
                                                     _E18938_))))))
                                        (_generate-match18422_
                                         _hd18929_
                                         _target18837_
                                         _e18933_
                                         _mvars18934_
                                         _K18971_
                                         _E18938_))))))))
                      (let* ((_e1884318863_ _clause18839_)
                             (_E1885218867_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1884318863_)))
                             (_E1884518901_
                              (lambda ()
                                (if (gx#stx-pair? _e1884318863_)
                                    (let ((_e1885318871_
                                           (gx#syntax-e _e1884318863_)))
                                      (let ((_hd1885418874_
                                             (##car _e1885318871_))
                                            (_tl1885518876_
                                             (##cdr _e1885318871_)))
                                        (let ((_hd18879_ _hd1885418874_))
                                          (if (gx#stx-pair? _tl1885518876_)
                                              (let ((_e1885618881_
                                                     (gx#syntax-e
                                                      _tl1885518876_)))
                                                (let ((_hd1885718884_
                                                       (##car _e1885618881_))
                                                      (_tl1885818886_
                                                       (##cdr _e1885618881_)))
                                                  (let ((_fender18889_
                                                         _hd1885718884_))
                                                    (if (gx#stx-pair?
                                                         _tl1885818886_)
                                                        (let ((_e1885918891_
                                                               (gx#syntax-e
                                                                _tl1885818886_)))
                                                          (let ((_hd1886018894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1885918891_))
                        (_tl1886118896_ (##cdr _e1885918891_)))
                    (let ((_body18899_ _hd1886018894_))
                      (if (gx#stx-null? _tl1886118896_)
                          (if '#t
                              (_generate118842_
                               _hd18879_
                               _fender18889_
                               _body18899_)
                              (_E1885218867_))
                          (_E1885218867_)))))
                (_E1885218867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1885218867_)))))
                                    (_E1885218867_))))
                             (_E1884418925_
                              (lambda ()
                                (if (gx#stx-pair? _e1884318863_)
                                    (let ((_e1884618905_
                                           (gx#syntax-e _e1884318863_)))
                                      (let ((_hd1884718908_
                                             (##car _e1884618905_))
                                            (_tl1884818910_
                                             (##cdr _e1884618905_)))
                                        (let ((_hd18913_ _hd1884718908_))
                                          (if (gx#stx-pair? _tl1884818910_)
                                              (let ((_e1884918915_
                                                     (gx#syntax-e
                                                      _tl1884818910_)))
                                                (let ((_hd1885018918_
                                                       (##car _e1884918915_))
                                                      (_tl1885118920_
                                                       (##cdr _e1884918915_)))
                                                  (let ((_body18923_
                                                         _hd1885018918_))
                                                    (if (gx#stx-null?
                                                         _tl1885118920_)
                                                        (if '#t
                                                            (_generate118842_
                                                             _hd18913_
                                                             '#t
                                                             _body18923_)
                                                            (_E1884518901_))
                                                        (_E1884518901_)))))
                                              (_E1884518901_)))))
                                    (_E1884518901_)))))
                        (_E1884418925_)))))
                 (_generate-match18422_
                  (lambda (_where18586_
                           _target18587_
                           _hd18588_
                           _mvars18589_
                           _K18590_
                           _E18591_)
                    (letrec ((_BUG18593_
                              (lambda (_q18835_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18414_
                                       _hd18588_
                                       _q18835_)))
                             (_recur18594_
                              (lambda (_e18685_
                                       _vars18686_
                                       _target18687_
                                       _E18688_
                                       _k18689_)
                                (let* ((_e1869018697_ _e18685_)
                                       (_E1869218701_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1869018697_)))
                                       (_K1869318823_
                                        (lambda (_body18704_ _tag18705_)
                                          (let ((_$e18707_ _tag18705_))
                                            (if (eq? 'any _$e18707_)
                                                (_k18689_ _vars18686_)
                                                (if (eq? 'id _$e18707_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18687_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18415_
                                                       (gx#core-list
                                                        _wrap-e18417_
                                                        _body18704_)
                                                       _target18687_)
                                                      (_k18689_ _vars18686_)
                                                      _E18688_)
                                                     _E18688_)
                                                    (if (eq? 'var _$e18707_)
                                                        (_k18689_
                                                         (cons (cons _body18704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18687_)
                       _vars18686_))
                (if (eq? 'cons _$e18707_)
                    (let ((_$e18710_ (gx#genident__1 'e))
                          (_$hd18711_ (gx#genident__1 'hd))
                          (_$tl18712_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18687_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18710_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18416_
                                           _target18687_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18711_ '())
                                     (cons (gx#core-list '##car _$e18710_)
                                           '()))
                               (cons (cons (cons _$tl18712_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18710_)
                                                 '()))
                                     '()))
                         (let* ((_body1871318720_ _body18704_)
                                (_E1871518724_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1871318720_)))
                                (_K1871618732_
                                 (lambda (_tl18727_ _hd18728_)
                                   (_recur18594_
                                    _hd18728_
                                    _vars18686_
                                    _$hd18711_
                                    _E18688_
                                    (lambda (_vars18730_)
                                      (_recur18594_
                                       _tl18727_
                                       _vars18730_
                                       _$tl18712_
                                       _E18688_
                                       _k18689_))))))
                           (if (##pair? _body1871318720_)
                               (let ((_hd1871718735_ (##car _body1871318720_))
                                     (_tl1871818737_ (##cdr _body1871318720_)))
                                 (let* ((_hd18740_ _hd1871718735_)
                                        (_tl18742_ _tl1871818737_))
                                   (_K1871618732_ _tl18742_ _hd18740_)))
                               (_E1871518724_)))))
                       _E18688_))
                    (if (eq? 'splice _$e18707_)
                        (let* ((_body1874318750_ _body18704_)
                               (_E1874518754_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1874318750_)))
                               (_K1874618805_
                                (lambda (_tl18757_ _hd18758_)
                                  (let* ((_rlen18760_
                                          (_splice-rlen18595_ _tl18757_))
                                         (_$target18762_
                                          (gx#genident__1 'target))
                                         (_$hd18764_ (gx#genident__1 'hd))
                                         (_$tl18766_ (gx#genident__1 'tl))
                                         (_$lp18768_ (gx#genident__1 'loop))
                                         (_$lp-e18770_ (gx#genident__1 'e))
                                         (_$lp-hd18772_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18774_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18776_
                                          (_splice-vars18596_ _hd18758_))
                                         (_lvars18778_
                                          (gx#gentemps _svars18776_))
                                         (_tlvars18780_
                                          (gx#gentemps _svars18776_))
                                         (_linit18784_
                                          (map (lambda (_var18782_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18778_)))
                                    (letrec ((_make-loop18787_
                                              (lambda (_vars18791_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18764_ _lvars18778_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18764_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18770_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18416_
                                                 _$hd18764_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18772_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18770_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18774_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18770_)
                                                       '()))
                                           '()))
                               (_recur18594_
                                _hd18758_
                                '()
                                _$lp-hd18772_
                                _E18688_
                                (lambda (_hdvars18793_)
                                  (cons _$lp18768_
                                        (cons _$lp-tl18774_
                                              (map (lambda (_svar18795_
                                                            _lvar18796_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18795_
                                                               _hdvars18793_
                                                               _BUG18593_)
                                                      _lvar18796_))
                                                   _svars18776_
                                                   _lvars18778_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18798_ _tlvar18799_)
                                     (cons (cons _tlvar18799_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18798_)
                                                 '())))
                                   _lvars18778_
                                   _tlvars18780_)
                              (_k18689_
                               (foldl2 (lambda (_svar18801_
                                                _tlvar18802_
                                                _r18803_)
                                         (cons (cons _svar18801_ _tlvar18802_)
                                               _r18803_))
                                       _vars18791_
                                       _svars18776_
                                       _tlvars18780_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18768_
                                                       (cons _$target18762_
                                                             _linit18784_))))))
                                      (let ((_body18789_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18762_
                                                                (cons _$tl18766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18687_
                         _rlen18760_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18594_
                                               _tl18757_
                                               _vars18686_
                                               _$tl18766_
                                               _E18688_
                                               _make-loop18787_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18687_)
                                         (if (zero? _rlen18760_)
                                             _body18789_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18687_)
                                               _rlen18760_)
                                              _body18789_
                                              _E18688_))
                                         _E18688_)))))))
                          (if (##pair? _body1874318750_)
                              (let ((_hd1874718808_ (##car _body1874318750_))
                                    (_tl1874818810_ (##cdr _body1874318750_)))
                                (let* ((_hd18813_ _hd1874718808_)
                                       (_tl18815_ _tl1874818810_))
                                  (_K1874618805_ _tl18815_ _hd18813_)))
                              (_E1874518754_)))
                        (if (eq? 'null _$e18707_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18687_)
                             (_k18689_ _vars18686_)
                             _E18688_)
                            (if (eq? 'vector _$e18707_)
                                (let ((_$e18817_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18687_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18817_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18416_
                                                        _target18687_))
                                                      '()))
                                          '())
                                    (_recur18594_
                                     _body18704_
                                     _vars18686_
                                     _$e18817_
                                     _E18688_
                                     _k18689_))
                                   _E18688_))
                                (if (eq? 'box _$e18707_)
                                    (let ((_$e18819_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18687_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18819_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18416_
                                                            _target18687_))
                                                          '()))
                                              '())
                                        (_recur18594_
                                         _body18704_
                                         _vars18686_
                                         _$e18819_
                                         _E18688_
                                         _k18689_))
                                       _E18688_))
                                    (if (eq? 'datum _$e18707_)
                                        (let ((_$e18821_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18687_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18821_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18687_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18821_
                                              _body18704_)
                                             (_k18689_ _vars18686_)
                                             _E18688_))
                                           _E18688_))
                                        (_BUG18593_ _e18685_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1869018697_)
                                      (let ((_hd1869418826_
                                             (##car _e1869018697_))
                                            (_tl1869518828_
                                             (##cdr _e1869018697_)))
                                        (let* ((_tag18831_ _hd1869418826_)
                                               (_body18833_ _tl1869518828_))
                                          (_K1869318823_
                                           _body18833_
                                           _tag18831_)))
                                      (_E1869218701_)))))
                             (_splice-rlen18595_
                              (lambda (_e18647_)
                                (let _lp18649_ ((_e18651_ _e18647_)
                                                (_n18652_ '0))
                                  (let* ((_e1865318660_ _e18651_)
                                         (_E1865518664_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1865318660_)))
                                         (_K1865618673_
                                          (lambda (_body18667_ _tag18668_)
                                            (let ((_$e18670_ _tag18668_))
                                              (if (eq? 'splice _$e18670_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18414_
                                                   _where18586_)
                                                  (if (eq? 'cons _$e18670_)
                                                      (_lp18649_
                                                       (cdr _body18667_)
                                                       (fx+ _n18652_ '1))
                                                      _n18652_))))))
                                    (if (##pair? _e1865318660_)
                                        (let ((_hd1865718676_
                                               (##car _e1865318660_))
                                              (_tl1865818678_
                                               (##cdr _e1865318660_)))
                                          (let* ((_tag18681_ _hd1865718676_)
                                                 (_body18683_ _tl1865818678_))
                                            (_K1865618673_
                                             _body18683_
                                             _tag18681_)))
                                        (_E1865518664_))))))
                             (_splice-vars18596_
                              (lambda (_e18603_)
                                (let _recur18605_ ((_e18607_ _e18603_)
                                                   (_vars18608_ '()))
                                  (let* ((_e1860918616_ _e18607_)
                                         (_E1861118620_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1860918616_)))
                                         (_K1861218635_
                                          (lambda (_body18623_ _tag18624_)
                                            (let ((_$e18626_ _tag18624_))
                                              (if (eq? 'var _$e18626_)
                                                  (cons _body18623_
                                                        _vars18608_)
                                                  (if (let ((_$e18629_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e18626_)))
                (if _$e18629_ _$e18629_ (eq? 'splice _$e18626_)))
              (_recur18605_
               (cdr _body18623_)
               (_recur18605_ (car _body18623_) _vars18608_))
              (if (let ((_$e18632_ (eq? 'vector _$e18626_)))
                    (if _$e18632_ _$e18632_ (eq? 'box _$e18626_)))
                  (_recur18605_ _body18623_ _vars18608_)
                  _vars18608_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1860918616_)
                                        (let ((_hd1861318638_
                                               (##car _e1860918616_))
                                              (_tl1861418640_
                                               (##cdr _e1860918616_)))
                                          (let* ((_tag18643_ _hd1861318638_)
                                                 (_body18645_ _tl1861418640_))
                                            (_K1861218635_
                                             _body18645_
                                             _tag18643_)))
                                        (_E1861118620_))))))
                             (_make-body18597_
                              (lambda (_vars18599_)
                                (cons _K18590_
                                      (map (lambda (_mvar18601_)
                                             (assgetq (car _mvar18601_)
                                                      _vars18599_
                                                      _BUG18593_))
                                           _mvars18589_)))))
                      (_recur18594_
                       _hd18588_
                       '()
                       _target18587_
                       _E18591_
                       _make-body18597_))))
                 (_parse-clause18423_
                  (lambda (_hd18492_ _ids18493_)
                    (let _recur18495_ ((_e18497_ _hd18492_)
                                       (_vars18498_ '())
                                       (_depth18499_ '0))
                      (if (gx#identifier? _e18497_)
                          (if (gx#underscore? _e18497_)
                              (values '(any) _vars18498_)
                              (if (gx#ellipsis? _e18497_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18414_
                                   _hd18492_)
                                  (if (find (lambda (_id18501_)
                                              (gx#bound-identifier=?
                                               _e18497_
                                               _id18501_))
                                            _ids18493_)
                                      (values (cons 'id _e18497_) _vars18498_)
                                      (if (find (lambda (_var18503_)
                                                  (gx#bound-identifier=?
                                                   _e18497_
                                                   (car _var18503_)))
                                                _vars18498_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18414_
                                           _e18497_)
                                          (values (cons 'var _e18497_)
                                                  (cons (cons _e18497_
                                                              _depth18499_)
                                                        _vars18498_))))))
                          (if (gx#stx-pair? _e18497_)
                              (let* ((_e1850418511_ _e18497_)
                                     (_E1850618515_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1850418511_)))
                                     (_E1850518576_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1850418511_)
                                            (let ((_e1850718519_
                                                   (gx#syntax-e
                                                    _e1850418511_)))
                                              (let ((_hd1850818522_
                                                     (##car _e1850718519_))
                                                    (_tl1850918524_
                                                     (##cdr _e1850718519_)))
                                                (let* ((_hd18527_
                                                        _hd1850818522_)
                                                       (_rest18529_
                                                        _tl1850918524_))
                                                  (if '#t
                                                      (let* ((_make-pair18544_
                                                              (lambda (_tag18531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18532_
                               _tl18533_)
                        (let* ((_hd-depth18535_
                                (if (eq? _tag18531_ 'splice)
                                    (fx+ _depth18499_ '1)
                                    _depth18499_))
                               (_g19689_
                                (_recur18495_
                                 _hd18532_
                                 _vars18498_
                                 _hd-depth18535_)))
                          (begin
                            (let ((_g19690_
                                   (if (##values? _g19689_)
                                       (##vector-length _g19689_)
                                       1)))
                              (if (not (##fx= _g19690_ 2))
                                  (error "Context expects 2 values" _g19690_)))
                            (let ((_hd18537_ (##vector-ref _g19689_ 0))
                                  (_vars18538_ (##vector-ref _g19689_ 1)))
                              (let ((_g19691_
                                     (_recur18495_
                                      _tl18533_
                                      _vars18538_
                                      _depth18499_)))
                                (begin
                                  (let ((_g19692_
                                         (if (##values? _g19691_)
                                             (##vector-length _g19691_)
                                             1)))
                                    (if (not (##fx= _g19692_ 2))
                                        (error "Context expects 2 values"
                                               _g19692_)))
                                  (let ((_tl18540_ (##vector-ref _g19691_ 0))
                                        (_vars18541_
                                         (##vector-ref _g19691_ 1)))
                                    (let ()
                                      (values (cons _tag18531_
                                                    (cons _hd18537_ _tl18540_))
                                              _vars18541_))))))))))
                     (_e1854518552_ _rest18529_)
                     (_E1854718556_
                      (lambda ()
                        (_make-pair18544_ 'cons _hd18527_ _rest18529_)))
                     (_E1854618572_
                      (lambda ()
                        (if (gx#stx-pair? _e1854518552_)
                            (let ((_e1854818560_ (gx#syntax-e _e1854518552_)))
                              (let ((_hd1854918563_ (##car _e1854818560_))
                                    (_tl1855018565_ (##cdr _e1854818560_)))
                                (let* ((_rest-hd18568_ _hd1854918563_)
                                       (_rest-tl18570_ _tl1855018565_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18568_)
                                          (_make-pair18544_
                                           'splice
                                           _hd18527_
                                           _rest-tl18570_)
                                          (_make-pair18544_
                                           'cons
                                           _hd18527_
                                           _rest18529_))
                                      (_E1854718556_)))))
                            (_E1854718556_)))))
                (_E1854618572_))
              (_E1850618515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1850618515_)))))
                                (_E1850518576_))
                              (if (gx#stx-null? _e18497_)
                                  (values '(null) _vars18498_)
                                  (if (gx#stx-vector? _e18497_)
                                      (let ((_g19693_
                                             (_recur18495_
                                              (vector->list
                                               (gx#syntax-e _e18497_))
                                              _vars18498_
                                              _depth18499_)))
                                        (begin
                                          (let ((_g19694_
                                                 (if (##values? _g19693_)
                                                     (##vector-length _g19693_)
                                                     1)))
                                            (if (not (##fx= _g19694_ 2))
                                                (error "Context expects 2 values"
                                                       _g19694_)))
                                          (let ((_e18580_
                                                 (##vector-ref _g19693_ 0))
                                                (_vars18581_
                                                 (##vector-ref _g19693_ 1)))
                                            (values (cons 'vector _e18580_)
                                                    _vars18581_))))
                                      (if (gx#stx-box? _e18497_)
                                          (let ((_g19695_
                                                 (_recur18495_
                                                  (unbox (gx#syntax-e
                                                          _e18497_))
                                                  _vars18498_
                                                  _depth18499_)))
                                            (begin
                                              (let ((_g19696_
                                                     (if (##values? _g19695_)
                                                         (##vector-length
                                                          _g19695_)
                                                         1)))
                                                (if (not (##fx= _g19696_ 2))
                                                    (error "Context expects 2 values"
                                                           _g19696_)))
                                              (let ((_e18583_
                                                     (##vector-ref _g19695_ 0))
                                                    (_vars18584_
                                                     (##vector-ref
                                                      _g19695_
                                                      1)))
                                                (values (cons 'box _e18583_)
                                                        _vars18584_))))
                                          (if (gx#stx-datum? _e18497_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18497_))
                                                      _vars18498_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18414_
                                               _e18497_)))))))))))
          (let* ((_e1842418437_ _stx18414_)
                 (_E1842618441_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1842418437_)))
                 (_E1842518488_
                  (lambda ()
                    (if (gx#stx-pair? _e1842418437_)
                        (let ((_e1842718445_ (gx#syntax-e _e1842418437_)))
                          (let ((_hd1842818448_ (##car _e1842718445_))
                                (_tl1842918450_ (##cdr _e1842718445_)))
                            (if (gx#stx-pair? _tl1842918450_)
                                (let ((_e1843018453_
                                       (gx#syntax-e _tl1842918450_)))
                                  (let ((_hd1843118456_ (##car _e1843018453_))
                                        (_tl1843218458_ (##cdr _e1843018453_)))
                                    (let ((_expr18461_ _hd1843118456_))
                                      (if (gx#stx-pair? _tl1843218458_)
                                          (let ((_e1843318463_
                                                 (gx#syntax-e _tl1843218458_)))
                                            (let ((_hd1843418466_
                                                   (##car _e1843318463_))
                                                  (_tl1843518468_
                                                   (##cdr _e1843318463_)))
                                              (let* ((_ids18471_
                                                      _hd1843418466_)
                                                     (_clauses18473_
                                                      _tl1843518468_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18471_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18414_
                                                         _ids18471_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18473_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18414_)
                    (let* ((_ids18475_ (gx#syntax->list _ids18471_))
                           (_clauses18477_ (gx#syntax->list _clauses18473_))
                           (_clause-ids18479_ (gx#gentemps _clauses18477_))
                           (_E18481_ (gx#genident__0))
                           (_target18483_ (gx#genident__0))
                           (_first18485_
                            (if (null? _clauses18477_)
                                _E18481_
                                (car _clause-ids18479_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18481_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18483_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18483_))
                                            '()))
                                '())
                          (_generate-body18420_
                           (_generate-bindings18419_
                            _target18483_
                            _ids18475_
                            _clauses18477_
                            _clause-ids18479_
                            _E18481_)
                           (cons _first18485_ (cons _expr18461_ '()))))
                         (gx#stx-source _stx18414_)))
                       (gx#stx-source _stx18414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1842618441_)))))
                                          (_E1842618441_)))))
                                (_E1842618441_))))
                        (_E1842618441_)))))
            (_E1842518488_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx19124_)
          (let* ((_identifier=?19126_ 'free-identifier=?)
                 (_unwrap-e19128_ 'syntax-e)
                 (_wrap-e19130_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19124_
             _identifier=?19126_
             _unwrap-e19128_
             _wrap-e19130_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx19132_ _identifier=?19133_)
          (let* ((_unwrap-e19135_ 'syntax-e) (_wrap-e19137_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19132_
             _identifier=?19133_
             _unwrap-e19135_
             _wrap-e19137_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx19139_ _identifier=?19140_ _unwrap-e19141_)
          (let ((_wrap-e19143_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19139_
             _identifier=?19140_
             _unwrap-e19141_
             _wrap-e19143_))))
      (define gx#macro-expand-syntax-case
        (lambda _g19698_
          (let ((_g19697_ (length _g19698_)))
            (cond ((##fx= _g19697_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g19698_))
                  ((##fx= _g19697_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g19698_))
                  ((##fx= _g19697_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g19698_))
                  ((##fx= _g19697_ 4)
                   (apply gx#macro-expand-syntax-case__% _g19698_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g19698_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18411_)
      (if (gx#identifier? _stx18411_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18411_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18369_ . _rest18370_)
      (let ((_len18372_ (length _hd18369_)))
        (let _lp18374_ ((_rest18376_ _rest18370_))
          (let* ((_rest1837718385_ _rest18376_)
                 (_else1837918393_ (lambda () '#!void))
                 (_K1838118399_
                  (lambda (_rest18396_ _hd18397_)
                    (if (fx= _len18372_ (length _hd18397_))
                        (_lp18374_ _rest18396_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18397_)))))
            (if (##pair? _rest1837718385_)
                (let ((_hd1838218402_ (##car _rest1837718385_))
                      (_tl1838318404_ (##cdr _rest1837718385_)))
                  (let* ((_hd18407_ _hd1838218402_)
                         (_rest18409_ _tl1838318404_))
                    (_K1838118399_ _rest18409_ _hd18407_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18327_ _n18328_)
      (let _lp18330_ ((_rest18332_ _stx18327_) (_r18333_ '()))
        (if (gx#stx-pair? _rest18332_)
            (let* ((_g1833418341_ (gx#syntax-e _rest18332_))
                   (_E1833618345_
                    (lambda () (error '"No clause matching" _g1833418341_)))
                   (_K1833718351_
                    (lambda (_rest18348_ _hd18349_)
                      (_lp18330_ _rest18348_ (cons _hd18349_ _r18333_)))))
              (if (##pair? _g1833418341_)
                  (let ((_hd1833818354_ (##car _g1833418341_))
                        (_tl1833918356_ (##cdr _g1833418341_)))
                    (let* ((_hd18359_ _hd1833818354_)
                           (_rest18361_ _tl1833918356_))
                      (_K1833718351_ _rest18361_ _hd18359_)))
                  (_E1833618345_)))
            (let _lp18363_ ((_n18365_ _n18328_)
                            (_l18366_ _r18333_)
                            (_r18367_ _rest18332_))
              (if (null? _l18366_)
                  (values _l18366_ _r18367_)
                  (if (fxpositive? _n18365_)
                      (_lp18363_
                       (fx- _n18365_ '1)
                       (cdr _l18366_)
                       (cons (car _l18366_) _r18367_))
                      (values (reverse _l18366_) _r18367_)))))))))
