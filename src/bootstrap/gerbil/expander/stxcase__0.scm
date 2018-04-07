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
    (lambda _$args19704_
      (apply make-struct-instance gx#syntax-pattern::t _$args19704_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19701_ _stx19702_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19702_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19183_)
      (letrec ((_generate19185_
                (lambda (_e19412_)
                  (letrec ((_BUG19414_
                            (lambda (_q19576_)
                              (error '"BUG: syntax; generate"
                                     _stx19183_
                                     _e19412_
                                     _q19576_)))
                           (_local-pattern-e19415_
                            (lambda (_pat19574_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19574_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19416_
                            (lambda (_q19571_ _vars19572_)
                              (assgetq _q19571_ _vars19572_ _BUG19414_)))
                           (_getarg19417_
                            (lambda (_arg19537_ _vars19538_)
                              (let* ((_arg1953919546_ _arg19537_)
                                     (_E1954119550_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1953919546_)))
                                     (_K1954219559_
                                      (lambda (_e19553_ _tag19554_)
                                        (let ((_$e19556_ _tag19554_))
                                          (if (eq? 'ref _$e19556_)
                                              (_getvar19416_
                                               _e19553_
                                               _vars19538_)
                                              (if (eq? 'pattern _$e19556_)
                                                  (_local-pattern-e19415_
                                                   _e19553_)
                                                  (_BUG19414_ _arg19537_)))))))
                                (if (##pair? _arg1953919546_)
                                    (let ((_hd1954319562_
                                           (##car _arg1953919546_))
                                          (_tl1954419564_
                                           (##cdr _arg1953919546_)))
                                      (let* ((_tag19567_ _hd1954319562_)
                                             (_e19569_ _tl1954419564_))
                                        (_K1954219559_ _e19569_ _tag19567_)))
                                    (_E1954119550_))))))
                    (let _recur19419_ ((_e19421_ _e19412_) (_vars19422_ '()))
                      (let* ((_e1942319430_ _e19421_)
                             (_E1942519434_
                              (lambda ()
                                (error '"No clause matching" _e1942319430_)))
                             (_K1942619525_
                              (lambda (_body19437_ _tag19438_)
                                (let ((_$e19440_ _tag19438_))
                                  (if (eq? 'datum _$e19440_)
                                      (gx#core-list 'quote _body19437_)
                                      (if (eq? 'term _$e19440_)
                                          (let ((_id19443_
                                                 (gx#syntax-local-unwrap
                                                  _body19437_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19443_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19445_
                                                       (##unchecked-structure-ref
                                                        _id19443_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19445_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19437_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19437_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19437_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19443_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19437_)
                                                    (_BUG19414_ _e19421_))))
                                          (if (eq? 'pattern _$e19440_)
                                              (_local-pattern-e19415_
                                               _body19437_)
                                              (if (eq? 'ref _$e19440_)
                                                  (_getvar19416_
                                                   _body19437_
                                                   _vars19422_)
                                                  (if (eq? 'cons _$e19440_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19419_
                                                        (car _body19437_)
                                                        _vars19422_)
                                                       (_recur19419_
                                                        (cdr _body19437_)
                                                        _vars19422_))
                                                      (if (eq? 'vector
                                                               _$e19440_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19419_
                                                            _body19437_
                                                            _vars19422_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19440_)
                      (gx#core-list
                       'box
                       (_recur19419_ _body19437_ _vars19422_))
                      (if (eq? 'splice _$e19440_)
                          (let* ((_body1944619457_ _body19437_)
                                 (_E1944819461_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1944619457_)))
                                 (_K1944919499_
                                  (lambda (_args19464_
                                           _iv19465_
                                           _hd19466_
                                           _depth19467_)
                                    (let* ((_targets19473_
                                            (map (lambda (_g1946819470_)
                                                   (_getarg19417_
                                                    _g1946819470_
                                                    _vars19422_))
                                                 _args19464_))
                                           (_fold-in19475_
                                            (gx#gentemps _args19464_))
                                           (_fold-out19477_ (gx#genident__0))
                                           (_lambda-args19479_
                                            (foldr1 cons
                                                    (cons _fold-out19477_ '())
                                                    _fold-in19475_))
                                           (_lambda-body19496_
                                            (if (fx> _depth19467_ '1)
                                                (let ((_r-args19487_
                                                       (map (lambda (_arg19481_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19481_)))
                    _args19464_))
              (_r-vars19488_
               (foldr2 (lambda (_arg19483_ _var19484_ _r19485_)
                         (cons (cons (cdr _arg19483_) _var19484_) _r19485_))
                       _vars19422_
                       _args19464_
                       _fold-in19475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19419_
                                                   (cons 'splice
                                                         (cons (fx- _depth19467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19466_
                             (cons (cons 'var _fold-out19477_)
                                   _r-args19487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19488_))
                                                (let ((_hd-vars19494_
                                                       (foldr2 (lambda (_arg19490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19491_
                                _r19492_)
                         (cons (cons (cdr _arg19490_) _var19491_) _r19492_))
                       _vars19422_
                       _args19464_
                       _fold-in19475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19419_
                                                    _hd19466_
                                                    _hd-vars19494_)
                                                   _fold-out19477_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19473_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19473_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19479_
                                         _lambda-body19496_)
                                        (_recur19419_ _iv19465_ _vars19422_)
                                        _targets19473_))))))
                            (if (##pair? _body1944619457_)
                                (let ((_hd1945019502_ (##car _body1944619457_))
                                      (_tl1945119504_
                                       (##cdr _body1944619457_)))
                                  (let ((_depth19507_ _hd1945019502_))
                                    (if (##pair? _tl1945119504_)
                                        (let ((_hd1945219509_
                                               (##car _tl1945119504_))
                                              (_tl1945319511_
                                               (##cdr _tl1945119504_)))
                                          (let ((_hd19514_ _hd1945219509_))
                                            (if (##pair? _tl1945319511_)
                                                (let ((_hd1945419516_
                                                       (##car _tl1945319511_))
                                                      (_tl1945519518_
                                                       (##cdr _tl1945319511_)))
                                                  (let* ((_iv19521_
                                                          _hd1945419516_)
                                                         (_args19523_
                                                          _tl1945519518_))
                                                    (_K1944919499_
                                                     _args19523_
                                                     _iv19521_
                                                     _hd19514_
                                                     _depth19507_)))
                                                (_E1944819461_))))
                                        (_E1944819461_))))
                                (_E1944819461_)))
                          (if (eq? 'var _$e19440_)
                              _body19437_
                              (_BUG19414_ _e19421_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1942319430_)
                            (let ((_hd1942719528_ (##car _e1942319430_))
                                  (_tl1942819530_ (##cdr _e1942319430_)))
                              (let* ((_tag19533_ _hd1942719528_)
                                     (_body19535_ _tl1942819530_))
                                (_K1942619525_ _body19535_ _tag19533_)))
                            (_E1942519434_)))))))
               (_parse19186_
                (lambda (_e19227_)
                  (letrec ((_make-cons19229_
                            (lambda (_hd19404_ _tl19405_)
                              (let ((_g19706_ _hd19404_) (_g19708_ _tl19405_))
                                (begin
                                  (let ((_g19707_
                                         (if (##values? _g19706_)
                                             (##vector-length _g19706_)
                                             1)))
                                    (if (not (##fx= _g19707_ 2))
                                        (error "Context expects 2 values"
                                               _g19707_)))
                                  (let ((_g19709_
                                         (if (##values? _g19708_)
                                             (##vector-length _g19708_)
                                             1)))
                                    (if (not (##fx= _g19709_ 2))
                                        (error "Context expects 2 values"
                                               _g19709_)))
                                  (let ((_hd-e19407_ (##vector-ref _g19706_ 0))
                                        (_hd-vars19408_
                                         (##vector-ref _g19706_ 1)))
                                    (let ((_tl-e19409_
                                           (##vector-ref _g19708_ 0))
                                          (_tl-vars19410_
                                           (##vector-ref _g19708_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19407_
                                                          _tl-e19409_))
                                              (append _hd-vars19408_
                                                      _tl-vars19410_))))))))
                           (_make-splice19230_
                            (lambda (_where19343_
                                     _depth19344_
                                     _hd19345_
                                     _tl19346_)
                              (let ((_g19710_ _hd19345_) (_g19712_ _tl19346_))
                                (begin
                                  (let ((_g19711_
                                         (if (##values? _g19710_)
                                             (##vector-length _g19710_)
                                             1)))
                                    (if (not (##fx= _g19711_ 2))
                                        (error "Context expects 2 values"
                                               _g19711_)))
                                  (let ((_g19713_
                                         (if (##values? _g19712_)
                                             (##vector-length _g19712_)
                                             1)))
                                    (if (not (##fx= _g19713_ 2))
                                        (error "Context expects 2 values"
                                               _g19713_)))
                                  (let ((_hd-e19348_ (##vector-ref _g19710_ 0))
                                        (_hd-vars19349_
                                         (##vector-ref _g19710_ 1)))
                                    (let ((_tl-e19350_
                                           (##vector-ref _g19712_ 0))
                                          (_tl-vars19351_
                                           (##vector-ref _g19712_ 1)))
                                      (let _lp19353_ ((_rest19355_
                                                       _hd-vars19349_)
                                                      (_targets19356_ '())
                                                      (_vars19357_
                                                       _tl-vars19351_))
                                        (let* ((_rest1935819368_ _rest19355_)
                                               (_else1936019376_
                                                (lambda ()
                                                  (if (null? _targets19356_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19183_
                                                       _where19343_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19344_
                                  (cons _hd-e19348_
                                        (cons _tl-e19350_ _targets19356_))))
                      _vars19357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1936219385_
                                                (lambda (_rest19379_
                                                         _hd-pat19380_
                                                         _hd-depth*19381_)
                                                  (let ((_hd-depth19383_
                                                         (fx- _hd-depth*19381_
                                                              _depth19344_)))
                                                    (if (fxpositive?
                                                         _hd-depth19383_)
                                                        (_lp19353_
                                                         _rest19379_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19380_)
                       _targets19356_)
                 (cons (cons _hd-depth19383_ _hd-pat19380_) _vars19357_))
                (if (fxzero? _hd-depth19383_)
                    (_lp19353_
                     _rest19379_
                     (cons (cons 'pattern _hd-pat19380_) _targets19356_)
                     _vars19357_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19183_
                     _where19343_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1935819368_)
                                              (let ((_hd1936319388_
                                                     (##car _rest1935819368_))
                                                    (_tl1936419390_
                                                     (##cdr _rest1935819368_)))
                                                (if (##pair? _hd1936319388_)
                                                    (let ((_hd1936519393_
                                                           (##car _hd1936319388_))
                                                          (_tl1936619395_
                                                           (##cdr _hd1936319388_)))
                                                      (let* ((_hd-depth*19398_
                                                              _hd1936519393_)
                                                             (_hd-pat19400_
                                                              _tl1936619395_)
                                                             (_rest19402_
                                                              _tl1936419390_))
                                                        (_K1936219385_
                                                         _rest19402_
                                                         _hd-pat19400_
                                                         _hd-depth*19398_)))
                                                    (_else1936019376_)))
                                              (_else1936019376_))))))))))
                           (_recur19231_
                            (lambda (_e19236_ _is-e?19237_)
                              (if (_is-e?19237_ _e19236_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19183_)
                                  (if (gx#syntax-local-pattern? _e19236_)
                                      (let* ((_pat19239_
                                              (gx#syntax-local-e__0 _e19236_))
                                             (_depth19241_
                                              (##structure-ref
                                               _pat19239_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19241_)
                                            (values (cons 'ref _pat19239_)
                                                    (cons (cons _depth19241_
                                                                _pat19239_)
                                                          '()))
                                            (values (cons 'pattern _pat19239_)
                                                    '())))
                                      (if (gx#identifier? _e19236_)
                                          (values (cons 'term _e19236_) '())
                                          (if (gx#stx-pair? _e19236_)
                                              (let* ((_e1924319250_ _e19236_)
                                                     (_E1924519254_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1924319250_)))
                                                     (_E1924419333_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1924319250_)
                                                            (let ((_e1924619258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1924319250_)))
                      (let ((_hd1924719261_ (##car _e1924619258_))
                            (_tl1924819263_ (##cdr _e1924619258_)))
                        (let* ((_hd19266_ _hd1924719261_)
                               (_rest19268_ _tl1924819263_))
                          (if '#t
                              (if (_is-e?19237_ _hd19266_)
                                  (let* ((_e1926919276_ _rest19268_)
                                         (_E1927119280_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19183_
                                             _e19236_)))
                                         (_E1927019294_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1926919276_)
                                                (let ((_e1927219284_
                                                       (gx#syntax-e
                                                        _e1926919276_)))
                                                  (let ((_hd1927319287_
                                                         (##car _e1927219284_))
                                                        (_tl1927419289_
                                                         (##cdr _e1927219284_)))
                                                    (let ((_rest19292_
                                                           _hd1927319287_))
                                                      (if (gx#stx-null?
                                                           _tl1927419289_)
                                                          (if '#t
                                                              (_recur19231_
                                                               _rest19292_
                                                               false)
                                                              (_E1927119280_))
                                                          (_E1927119280_)))))
                                                (_E1927119280_)))))
                                    (_E1927019294_))
                                  (let _lp19298_ ((_rest19300_ _rest19268_)
                                                  (_depth19301_ '0))
                                    (let* ((_e1930219309_ _rest19300_)
                                           (_E1930419313_
                                            (lambda ()
                                              (if (fxpositive? _depth19301_)
                                                  (_make-splice19230_
                                                   _e19236_
                                                   _depth19301_
                                                   (_recur19231_
                                                    _hd19266_
                                                    _is-e?19237_)
                                                   (_recur19231_
                                                    _rest19300_
                                                    _is-e?19237_))
                                                  (_make-cons19229_
                                                   (_recur19231_
                                                    _hd19266_
                                                    _is-e?19237_)
                                                   (_recur19231_
                                                    _rest19300_
                                                    _is-e?19237_)))))
                                           (_E1930319329_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1930219309_)
                                                  (let ((_e1930519317_
                                                         (gx#syntax-e
                                                          _e1930219309_)))
                                                    (let ((_hd1930619320_
                                                           (##car _e1930519317_))
                                                          (_tl1930719322_
                                                           (##cdr _e1930519317_)))
                                                      (let* ((_rest-hd19325_
                                                              _hd1930619320_)
                                                             (_rest-tl19327_
                                                              _tl1930719322_))
                                                        (if '#t
                                                            (if (_is-e?19237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19325_)
                        (_lp19298_ _rest-tl19327_ (fx+ _depth19301_ '1))
                        (if (fxpositive? _depth19301_)
                            (_make-splice19230_
                             _e19236_
                             _depth19301_
                             (_recur19231_ _hd19266_ _is-e?19237_)
                             (_recur19231_ _rest19300_ _is-e?19237_))
                            (_make-cons19229_
                             (_recur19231_ _hd19266_ _is-e?19237_)
                             (_recur19231_ _rest19300_ _is-e?19237_))))
                    (_E1930419313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1930419313_)))))
                                      (_E1930319329_))))
                              (_E1924519254_)))))
                    (_E1924519254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1924419333_))
                                              (if (gx#stx-vector? _e19236_)
                                                  (let ((_g19714_
                                                         (_recur19231_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19236_))
                                                          _is-e?19237_)))
                                                    (begin
                                                      (let ((_g19715_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19714_)
                         (##vector-length _g19714_)
                         1)))
                (if (not (##fx= _g19715_ 2))
                    (error "Context expects 2 values" _g19715_)))
              (let ((_e19337_ (##vector-ref _g19714_ 0))
                    (_vars19338_ (##vector-ref _g19714_ 1)))
                (values (cons 'vector _e19337_) _vars19338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19236_)
                                                      (let ((_g19716_
                                                             (_recur19231_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19236_))
                      _is-e?19237_)))
                (begin
                  (let ((_g19717_
                         (if (##values? _g19716_)
                             (##vector-length _g19716_)
                             1)))
                    (if (not (##fx= _g19717_ 2))
                        (error "Context expects 2 values" _g19717_)))
                  (let ((_e19340_ (##vector-ref _g19716_ 0))
                        (_vars19341_ (##vector-ref _g19716_ 1)))
                    (values (cons 'box _e19340_) _vars19341_))))
              (values (cons 'datum _e19236_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19718_ (_recur19231_ _e19227_ gx#ellipsis?)))
                      (begin
                        (let ((_g19719_
                               (if (##values? _g19718_)
                                   (##vector-length _g19718_)
                                   1)))
                          (if (not (##fx= _g19719_ 2))
                              (error "Context expects 2 values" _g19719_)))
                        (let ((_tree19233_ (##vector-ref _g19718_ 0))
                              (_vars19234_ (##vector-ref _g19718_ 1)))
                          (if (null? _vars19234_)
                              _tree19233_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19183_
                               _vars19234_)))))))))
        (let* ((_e1918719197_ _stx19183_)
               (_E1918919201_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19183_)))
               (_E1918819223_
                (lambda ()
                  (if (gx#stx-pair? _e1918719197_)
                      (let ((_e1919019205_ (gx#syntax-e _e1918719197_)))
                        (let ((_hd1919119208_ (##car _e1919019205_))
                              (_tl1919219210_ (##cdr _e1919019205_)))
                          (if (gx#stx-pair? _tl1919219210_)
                              (let ((_e1919319213_
                                     (gx#syntax-e _tl1919219210_)))
                                (let ((_hd1919419216_ (##car _e1919319213_))
                                      (_tl1919519218_ (##cdr _e1919319213_)))
                                  (let ((_form19221_ _hd1919419216_))
                                    (if (gx#stx-null? _tl1919519218_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19185_
                                              (_parse19186_ _form19221_))
                                             (gx#stx-source _stx19183_))
                                            (_E1918919201_))
                                        (_E1918919201_)))))
                              (_E1918919201_))))
                      (_E1918919201_)))))
          (_E1918819223_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18447_ _identifier=?18448_ _unwrap-e18449_ _wrap-e18450_)
        (letrec ((_generate-bindings18452_
                  (lambda (_target19047_
                           _ids19048_
                           _clauses19049_
                           _clause-ids19050_
                           _E19051_)
                    (letrec ((_generate119053_
                              (lambda (_clause19150_ _clause-id19151_ _E19152_)
                                (cons (cons _clause-id19151_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19047_ '())
                                             (_generate-clause18454_
                                              _target19047_
                                              _ids19048_
                                              _clause19150_
                                              _E19152_))
                                            '())))))
                      (let _lp19055_ ((_rest19057_ _clauses19049_)
                                      (_rest-ids19058_ _clause-ids19050_)
                                      (_bindings19059_ '()))
                        (let* ((_rest1906019068_ _rest19057_)
                               (_else1906219076_ (lambda () _bindings19059_))
                               (_K1906419138_
                                (lambda (_rest19079_ _clause19080_)
                                  (let* ((_rest-ids1908119088_ _rest-ids19058_)
                                         (_E1908319092_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1908119088_)))
                                         (_K1908419126_
                                          (lambda (_rest-ids19095_
                                                   _clause-id19096_)
                                            (let* ((_rest-ids1909719105_
                                                    _rest-ids19095_)
                                                   (_else1909919113_
                                                    (lambda ()
                                                      (cons (_generate119053_
                                                             _clause19080_
                                                             _clause-id19096_
                                                             _E19051_)
                                                            _bindings19059_)))
                                                   (_K1910119118_
                                                    (lambda (_next-clause-id19116_)
                                                      (_lp19055_
                                                       _rest19079_
                                                       _rest-ids19095_
                                                       (cons (_generate119053_
                                                              _clause19080_
                                                              _clause-id19096_
                                                              _next-clause-id19116_)
                                                             _bindings19059_)))))
                                              (if (##pair? _rest-ids1909719105_)
                                                  (let* ((_hd1910219121_
                                                          (##car _rest-ids1909719105_))
                                                         (_next-clause-id19124_
                                                          _hd1910219121_))
                                                    (_K1910119118_
                                                     _next-clause-id19124_))
                                                  (_else1909919113_))))))
                                    (if (##pair? _rest-ids1908119088_)
                                        (let ((_hd1908519129_
                                               (##car _rest-ids1908119088_))
                                              (_tl1908619131_
                                               (##cdr _rest-ids1908119088_)))
                                          (let* ((_clause-id19134_
                                                  _hd1908519129_)
                                                 (_rest-ids19136_
                                                  _tl1908619131_))
                                            (_K1908419126_
                                             _rest-ids19136_
                                             _clause-id19134_)))
                                        (_E1908319092_))))))
                          (if (##pair? _rest1906019068_)
                              (let ((_hd1906519141_ (##car _rest1906019068_))
                                    (_tl1906619143_ (##cdr _rest1906019068_)))
                                (let* ((_clause19146_ _hd1906519141_)
                                       (_rest19148_ _tl1906619143_))
                                  (_K1906419138_ _rest19148_ _clause19146_)))
                              (_else1906219076_)))))))
                 (_generate-body18453_
                  (lambda (_bindings19007_ _body19008_)
                    (let _recur19010_ ((_rest19012_ _bindings19007_))
                      (let* ((_rest1901319021_ _rest19012_)
                             (_else1901519029_ (lambda () _body19008_))
                             (_K1901719035_
                              (lambda (_rest19032_ _hd19033_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd19033_ '())
                                 (_recur19010_ _rest19032_)))))
                        (if (##pair? _rest1901319021_)
                            (let ((_hd1901819038_ (##car _rest1901319021_))
                                  (_tl1901919040_ (##cdr _rest1901319021_)))
                              (let* ((_hd19043_ _hd1901819038_)
                                     (_rest19045_ _tl1901919040_))
                                (_K1901719035_ _rest19045_ _hd19043_)))
                            (_else1901519029_))))))
                 (_generate-clause18454_
                  (lambda (_target18870_ _ids18871_ _clause18872_ _E18873_)
                    (letrec ((_generate118875_
                              (lambda (_hd18962_ _fender18963_ _body18964_)
                                (let ((_g19720_
                                       (_parse-clause18456_
                                        _hd18962_
                                        _ids18871_)))
                                  (begin
                                    (let ((_g19721_
                                           (if (##values? _g19720_)
                                               (##vector-length _g19720_)
                                               1)))
                                      (if (not (##fx= _g19721_ 2))
                                          (error "Context expects 2 values"
                                                 _g19721_)))
                                    (let ((_e18966_ (##vector-ref _g19720_ 0))
                                          (_mvars18967_
                                           (##vector-ref _g19720_ 1)))
                                      (let* ((_pvars18969_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars18967_)))
                                             (_E18971_
                                              (cons _E18873_
                                                    (cons _target18870_ '())))
                                             (_K19004_
                                              (gx#core-list
                                               'lambda%
                                               _pvars18969_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar18973_
                                                              _pvar18974_)
                                                       (let* ((_mvar1897518982_
                                                               _mvar18973_)
                                                              (_E1897718986_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1897518982_)))
                      (_K1897818992_
                       (lambda (_depth18989_ _id18990_)
                         (cons _id18990_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id18990_)
                                      (gx#core-list 'quote _pvar18974_)
                                      _depth18989_)
                                     '())))))
                 (if (##pair? _mvar1897518982_)
                     (let ((_hd1897918995_ (##car _mvar1897518982_))
                           (_tl1898018997_ (##cdr _mvar1897518982_)))
                       (let* ((_id19000_ _hd1897918995_)
                              (_depth19002_ _tl1898018997_))
                         (_K1897818992_ _depth19002_ _id19000_)))
                     (_E1897718986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars18967_
                                                     _pvars18969_)
                                                (if (eq? _fender18963_ '#t)
                                                    _body18964_
                                                    (gx#core-list
                                                     'if
                                                     _fender18963_
                                                     _body18964_
                                                     _E18971_))))))
                                        (_generate-match18455_
                                         _hd18962_
                                         _target18870_
                                         _e18966_
                                         _mvars18967_
                                         _K19004_
                                         _E18971_))))))))
                      (let* ((_e1887618896_ _clause18872_)
                             (_E1888518900_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1887618896_)))
                             (_E1887818934_
                              (lambda ()
                                (if (gx#stx-pair? _e1887618896_)
                                    (let ((_e1888618904_
                                           (gx#syntax-e _e1887618896_)))
                                      (let ((_hd1888718907_
                                             (##car _e1888618904_))
                                            (_tl1888818909_
                                             (##cdr _e1888618904_)))
                                        (let ((_hd18912_ _hd1888718907_))
                                          (if (gx#stx-pair? _tl1888818909_)
                                              (let ((_e1888918914_
                                                     (gx#syntax-e
                                                      _tl1888818909_)))
                                                (let ((_hd1889018917_
                                                       (##car _e1888918914_))
                                                      (_tl1889118919_
                                                       (##cdr _e1888918914_)))
                                                  (let ((_fender18922_
                                                         _hd1889018917_))
                                                    (if (gx#stx-pair?
                                                         _tl1889118919_)
                                                        (let ((_e1889218924_
                                                               (gx#syntax-e
                                                                _tl1889118919_)))
                                                          (let ((_hd1889318927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1889218924_))
                        (_tl1889418929_ (##cdr _e1889218924_)))
                    (let ((_body18932_ _hd1889318927_))
                      (if (gx#stx-null? _tl1889418929_)
                          (if '#t
                              (_generate118875_
                               _hd18912_
                               _fender18922_
                               _body18932_)
                              (_E1888518900_))
                          (_E1888518900_)))))
                (_E1888518900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1888518900_)))))
                                    (_E1888518900_))))
                             (_E1887718958_
                              (lambda ()
                                (if (gx#stx-pair? _e1887618896_)
                                    (let ((_e1887918938_
                                           (gx#syntax-e _e1887618896_)))
                                      (let ((_hd1888018941_
                                             (##car _e1887918938_))
                                            (_tl1888118943_
                                             (##cdr _e1887918938_)))
                                        (let ((_hd18946_ _hd1888018941_))
                                          (if (gx#stx-pair? _tl1888118943_)
                                              (let ((_e1888218948_
                                                     (gx#syntax-e
                                                      _tl1888118943_)))
                                                (let ((_hd1888318951_
                                                       (##car _e1888218948_))
                                                      (_tl1888418953_
                                                       (##cdr _e1888218948_)))
                                                  (let ((_body18956_
                                                         _hd1888318951_))
                                                    (if (gx#stx-null?
                                                         _tl1888418953_)
                                                        (if '#t
                                                            (_generate118875_
                                                             _hd18946_
                                                             '#t
                                                             _body18956_)
                                                            (_E1887818934_))
                                                        (_E1887818934_)))))
                                              (_E1887818934_)))))
                                    (_E1887818934_)))))
                        (_E1887718958_)))))
                 (_generate-match18455_
                  (lambda (_where18619_
                           _target18620_
                           _hd18621_
                           _mvars18622_
                           _K18623_
                           _E18624_)
                    (letrec ((_BUG18626_
                              (lambda (_q18868_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18447_
                                       _hd18621_
                                       _q18868_)))
                             (_recur18627_
                              (lambda (_e18718_
                                       _vars18719_
                                       _target18720_
                                       _E18721_
                                       _k18722_)
                                (let* ((_e1872318730_ _e18718_)
                                       (_E1872518734_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1872318730_)))
                                       (_K1872618856_
                                        (lambda (_body18737_ _tag18738_)
                                          (let ((_$e18740_ _tag18738_))
                                            (if (eq? 'any _$e18740_)
                                                (_k18722_ _vars18719_)
                                                (if (eq? 'id _$e18740_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18720_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18448_
                                                       (gx#core-list
                                                        _wrap-e18450_
                                                        _body18737_)
                                                       _target18720_)
                                                      (_k18722_ _vars18719_)
                                                      _E18721_)
                                                     _E18721_)
                                                    (if (eq? 'var _$e18740_)
                                                        (_k18722_
                                                         (cons (cons _body18737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18720_)
                       _vars18719_))
                (if (eq? 'cons _$e18740_)
                    (let ((_$e18743_ (gx#genident__1 'e))
                          (_$hd18744_ (gx#genident__1 'hd))
                          (_$tl18745_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18720_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18743_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18449_
                                           _target18720_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18744_ '())
                                     (cons (gx#core-list '##car _$e18743_)
                                           '()))
                               (cons (cons (cons _$tl18745_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18743_)
                                                 '()))
                                     '()))
                         (let* ((_body1874618753_ _body18737_)
                                (_E1874818757_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1874618753_)))
                                (_K1874918765_
                                 (lambda (_tl18760_ _hd18761_)
                                   (_recur18627_
                                    _hd18761_
                                    _vars18719_
                                    _$hd18744_
                                    _E18721_
                                    (lambda (_vars18763_)
                                      (_recur18627_
                                       _tl18760_
                                       _vars18763_
                                       _$tl18745_
                                       _E18721_
                                       _k18722_))))))
                           (if (##pair? _body1874618753_)
                               (let ((_hd1875018768_ (##car _body1874618753_))
                                     (_tl1875118770_ (##cdr _body1874618753_)))
                                 (let* ((_hd18773_ _hd1875018768_)
                                        (_tl18775_ _tl1875118770_))
                                   (_K1874918765_ _tl18775_ _hd18773_)))
                               (_E1874818757_)))))
                       _E18721_))
                    (if (eq? 'splice _$e18740_)
                        (let* ((_body1877618783_ _body18737_)
                               (_E1877818787_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1877618783_)))
                               (_K1877918838_
                                (lambda (_tl18790_ _hd18791_)
                                  (let* ((_rlen18793_
                                          (_splice-rlen18628_ _tl18790_))
                                         (_$target18795_
                                          (gx#genident__1 'target))
                                         (_$hd18797_ (gx#genident__1 'hd))
                                         (_$tl18799_ (gx#genident__1 'tl))
                                         (_$lp18801_ (gx#genident__1 'loop))
                                         (_$lp-e18803_ (gx#genident__1 'e))
                                         (_$lp-hd18805_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18807_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18809_
                                          (_splice-vars18629_ _hd18791_))
                                         (_lvars18811_
                                          (gx#gentemps _svars18809_))
                                         (_tlvars18813_
                                          (gx#gentemps _svars18809_))
                                         (_linit18817_
                                          (map (lambda (_var18815_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18811_)))
                                    (letrec ((_make-loop18820_
                                              (lambda (_vars18824_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18797_ _lvars18811_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18797_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18803_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18449_
                                                 _$hd18797_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18805_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18803_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18807_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18803_)
                                                       '()))
                                           '()))
                               (_recur18627_
                                _hd18791_
                                '()
                                _$lp-hd18805_
                                _E18721_
                                (lambda (_hdvars18826_)
                                  (cons _$lp18801_
                                        (cons _$lp-tl18807_
                                              (map (lambda (_svar18828_
                                                            _lvar18829_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18828_
                                                               _hdvars18826_
                                                               _BUG18626_)
                                                      _lvar18829_))
                                                   _svars18809_
                                                   _lvars18811_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18831_ _tlvar18832_)
                                     (cons (cons _tlvar18832_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18831_)
                                                 '())))
                                   _lvars18811_
                                   _tlvars18813_)
                              (_k18722_
                               (foldl2 (lambda (_svar18834_
                                                _tlvar18835_
                                                _r18836_)
                                         (cons (cons _svar18834_ _tlvar18835_)
                                               _r18836_))
                                       _vars18824_
                                       _svars18809_
                                       _tlvars18813_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18801_
                                                       (cons _$target18795_
                                                             _linit18817_))))))
                                      (let ((_body18822_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18795_
                                                                (cons _$tl18799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18720_
                         _rlen18793_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18627_
                                               _tl18790_
                                               _vars18719_
                                               _$tl18799_
                                               _E18721_
                                               _make-loop18820_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18720_)
                                         (if (zero? _rlen18793_)
                                             _body18822_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18720_)
                                               _rlen18793_)
                                              _body18822_
                                              _E18721_))
                                         _E18721_)))))))
                          (if (##pair? _body1877618783_)
                              (let ((_hd1878018841_ (##car _body1877618783_))
                                    (_tl1878118843_ (##cdr _body1877618783_)))
                                (let* ((_hd18846_ _hd1878018841_)
                                       (_tl18848_ _tl1878118843_))
                                  (_K1877918838_ _tl18848_ _hd18846_)))
                              (_E1877818787_)))
                        (if (eq? 'null _$e18740_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18720_)
                             (_k18722_ _vars18719_)
                             _E18721_)
                            (if (eq? 'vector _$e18740_)
                                (let ((_$e18850_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18720_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18850_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18449_
                                                        _target18720_))
                                                      '()))
                                          '())
                                    (_recur18627_
                                     _body18737_
                                     _vars18719_
                                     _$e18850_
                                     _E18721_
                                     _k18722_))
                                   _E18721_))
                                (if (eq? 'box _$e18740_)
                                    (let ((_$e18852_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18720_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18852_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18449_
                                                            _target18720_))
                                                          '()))
                                              '())
                                        (_recur18627_
                                         _body18737_
                                         _vars18719_
                                         _$e18852_
                                         _E18721_
                                         _k18722_))
                                       _E18721_))
                                    (if (eq? 'datum _$e18740_)
                                        (let ((_$e18854_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18720_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18854_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18720_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18854_
                                              _body18737_)
                                             (_k18722_ _vars18719_)
                                             _E18721_))
                                           _E18721_))
                                        (_BUG18626_ _e18718_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1872318730_)
                                      (let ((_hd1872718859_
                                             (##car _e1872318730_))
                                            (_tl1872818861_
                                             (##cdr _e1872318730_)))
                                        (let* ((_tag18864_ _hd1872718859_)
                                               (_body18866_ _tl1872818861_))
                                          (_K1872618856_
                                           _body18866_
                                           _tag18864_)))
                                      (_E1872518734_)))))
                             (_splice-rlen18628_
                              (lambda (_e18680_)
                                (let _lp18682_ ((_e18684_ _e18680_)
                                                (_n18685_ '0))
                                  (let* ((_e1868618693_ _e18684_)
                                         (_E1868818697_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1868618693_)))
                                         (_K1868918706_
                                          (lambda (_body18700_ _tag18701_)
                                            (let ((_$e18703_ _tag18701_))
                                              (if (eq? 'splice _$e18703_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18447_
                                                   _where18619_)
                                                  (if (eq? 'cons _$e18703_)
                                                      (_lp18682_
                                                       (cdr _body18700_)
                                                       (fx+ _n18685_ '1))
                                                      _n18685_))))))
                                    (if (##pair? _e1868618693_)
                                        (let ((_hd1869018709_
                                               (##car _e1868618693_))
                                              (_tl1869118711_
                                               (##cdr _e1868618693_)))
                                          (let* ((_tag18714_ _hd1869018709_)
                                                 (_body18716_ _tl1869118711_))
                                            (_K1868918706_
                                             _body18716_
                                             _tag18714_)))
                                        (_E1868818697_))))))
                             (_splice-vars18629_
                              (lambda (_e18636_)
                                (let _recur18638_ ((_e18640_ _e18636_)
                                                   (_vars18641_ '()))
                                  (let* ((_e1864218649_ _e18640_)
                                         (_E1864418653_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1864218649_)))
                                         (_K1864518668_
                                          (lambda (_body18656_ _tag18657_)
                                            (let ((_$e18659_ _tag18657_))
                                              (if (eq? 'var _$e18659_)
                                                  (cons _body18656_
                                                        _vars18641_)
                                                  (if (let ((_$e18662_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e18659_)))
                (if _$e18662_ _$e18662_ (eq? 'splice _$e18659_)))
              (_recur18638_
               (cdr _body18656_)
               (_recur18638_ (car _body18656_) _vars18641_))
              (if (let ((_$e18665_ (eq? 'vector _$e18659_)))
                    (if _$e18665_ _$e18665_ (eq? 'box _$e18659_)))
                  (_recur18638_ _body18656_ _vars18641_)
                  _vars18641_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1864218649_)
                                        (let ((_hd1864618671_
                                               (##car _e1864218649_))
                                              (_tl1864718673_
                                               (##cdr _e1864218649_)))
                                          (let* ((_tag18676_ _hd1864618671_)
                                                 (_body18678_ _tl1864718673_))
                                            (_K1864518668_
                                             _body18678_
                                             _tag18676_)))
                                        (_E1864418653_))))))
                             (_make-body18630_
                              (lambda (_vars18632_)
                                (cons _K18623_
                                      (map (lambda (_mvar18634_)
                                             (assgetq (car _mvar18634_)
                                                      _vars18632_
                                                      _BUG18626_))
                                           _mvars18622_)))))
                      (_recur18627_
                       _hd18621_
                       '()
                       _target18620_
                       _E18624_
                       _make-body18630_))))
                 (_parse-clause18456_
                  (lambda (_hd18525_ _ids18526_)
                    (let _recur18528_ ((_e18530_ _hd18525_)
                                       (_vars18531_ '())
                                       (_depth18532_ '0))
                      (if (gx#identifier? _e18530_)
                          (if (gx#underscore? _e18530_)
                              (values '(any) _vars18531_)
                              (if (gx#ellipsis? _e18530_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18447_
                                   _hd18525_)
                                  (if (find (lambda (_id18534_)
                                              (gx#bound-identifier=?
                                               _e18530_
                                               _id18534_))
                                            _ids18526_)
                                      (values (cons 'id _e18530_) _vars18531_)
                                      (if (find (lambda (_var18536_)
                                                  (gx#bound-identifier=?
                                                   _e18530_
                                                   (car _var18536_)))
                                                _vars18531_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18447_
                                           _e18530_)
                                          (values (cons 'var _e18530_)
                                                  (cons (cons _e18530_
                                                              _depth18532_)
                                                        _vars18531_))))))
                          (if (gx#stx-pair? _e18530_)
                              (let* ((_e1853718544_ _e18530_)
                                     (_E1853918548_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1853718544_)))
                                     (_E1853818609_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1853718544_)
                                            (let ((_e1854018552_
                                                   (gx#syntax-e
                                                    _e1853718544_)))
                                              (let ((_hd1854118555_
                                                     (##car _e1854018552_))
                                                    (_tl1854218557_
                                                     (##cdr _e1854018552_)))
                                                (let* ((_hd18560_
                                                        _hd1854118555_)
                                                       (_rest18562_
                                                        _tl1854218557_))
                                                  (if '#t
                                                      (let* ((_make-pair18577_
                                                              (lambda (_tag18564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18565_
                               _tl18566_)
                        (let* ((_hd-depth18568_
                                (if (eq? _tag18564_ 'splice)
                                    (fx+ _depth18532_ '1)
                                    _depth18532_))
                               (_g19722_
                                (_recur18528_
                                 _hd18565_
                                 _vars18531_
                                 _hd-depth18568_)))
                          (begin
                            (let ((_g19723_
                                   (if (##values? _g19722_)
                                       (##vector-length _g19722_)
                                       1)))
                              (if (not (##fx= _g19723_ 2))
                                  (error "Context expects 2 values" _g19723_)))
                            (let ((_hd18570_ (##vector-ref _g19722_ 0))
                                  (_vars18571_ (##vector-ref _g19722_ 1)))
                              (let ((_g19724_
                                     (_recur18528_
                                      _tl18566_
                                      _vars18571_
                                      _depth18532_)))
                                (begin
                                  (let ((_g19725_
                                         (if (##values? _g19724_)
                                             (##vector-length _g19724_)
                                             1)))
                                    (if (not (##fx= _g19725_ 2))
                                        (error "Context expects 2 values"
                                               _g19725_)))
                                  (let ((_tl18573_ (##vector-ref _g19724_ 0))
                                        (_vars18574_
                                         (##vector-ref _g19724_ 1)))
                                    (let ()
                                      (values (cons _tag18564_
                                                    (cons _hd18570_ _tl18573_))
                                              _vars18574_))))))))))
                     (_e1857818585_ _rest18562_)
                     (_E1858018589_
                      (lambda ()
                        (_make-pair18577_ 'cons _hd18560_ _rest18562_)))
                     (_E1857918605_
                      (lambda ()
                        (if (gx#stx-pair? _e1857818585_)
                            (let ((_e1858118593_ (gx#syntax-e _e1857818585_)))
                              (let ((_hd1858218596_ (##car _e1858118593_))
                                    (_tl1858318598_ (##cdr _e1858118593_)))
                                (let* ((_rest-hd18601_ _hd1858218596_)
                                       (_rest-tl18603_ _tl1858318598_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18601_)
                                          (_make-pair18577_
                                           'splice
                                           _hd18560_
                                           _rest-tl18603_)
                                          (_make-pair18577_
                                           'cons
                                           _hd18560_
                                           _rest18562_))
                                      (_E1858018589_)))))
                            (_E1858018589_)))))
                (_E1857918605_))
              (_E1853918548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1853918548_)))))
                                (_E1853818609_))
                              (if (gx#stx-null? _e18530_)
                                  (values '(null) _vars18531_)
                                  (if (gx#stx-vector? _e18530_)
                                      (let ((_g19726_
                                             (_recur18528_
                                              (vector->list
                                               (gx#syntax-e _e18530_))
                                              _vars18531_
                                              _depth18532_)))
                                        (begin
                                          (let ((_g19727_
                                                 (if (##values? _g19726_)
                                                     (##vector-length _g19726_)
                                                     1)))
                                            (if (not (##fx= _g19727_ 2))
                                                (error "Context expects 2 values"
                                                       _g19727_)))
                                          (let ((_e18613_
                                                 (##vector-ref _g19726_ 0))
                                                (_vars18614_
                                                 (##vector-ref _g19726_ 1)))
                                            (values (cons 'vector _e18613_)
                                                    _vars18614_))))
                                      (if (gx#stx-box? _e18530_)
                                          (let ((_g19728_
                                                 (_recur18528_
                                                  (unbox (gx#syntax-e
                                                          _e18530_))
                                                  _vars18531_
                                                  _depth18532_)))
                                            (begin
                                              (let ((_g19729_
                                                     (if (##values? _g19728_)
                                                         (##vector-length
                                                          _g19728_)
                                                         1)))
                                                (if (not (##fx= _g19729_ 2))
                                                    (error "Context expects 2 values"
                                                           _g19729_)))
                                              (let ((_e18616_
                                                     (##vector-ref _g19728_ 0))
                                                    (_vars18617_
                                                     (##vector-ref
                                                      _g19728_
                                                      1)))
                                                (values (cons 'box _e18616_)
                                                        _vars18617_))))
                                          (if (gx#stx-datum? _e18530_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18530_))
                                                      _vars18531_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18447_
                                               _e18530_)))))))))))
          (let* ((_e1845718470_ _stx18447_)
                 (_E1845918474_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1845718470_)))
                 (_E1845818521_
                  (lambda ()
                    (if (gx#stx-pair? _e1845718470_)
                        (let ((_e1846018478_ (gx#syntax-e _e1845718470_)))
                          (let ((_hd1846118481_ (##car _e1846018478_))
                                (_tl1846218483_ (##cdr _e1846018478_)))
                            (if (gx#stx-pair? _tl1846218483_)
                                (let ((_e1846318486_
                                       (gx#syntax-e _tl1846218483_)))
                                  (let ((_hd1846418489_ (##car _e1846318486_))
                                        (_tl1846518491_ (##cdr _e1846318486_)))
                                    (let ((_expr18494_ _hd1846418489_))
                                      (if (gx#stx-pair? _tl1846518491_)
                                          (let ((_e1846618496_
                                                 (gx#syntax-e _tl1846518491_)))
                                            (let ((_hd1846718499_
                                                   (##car _e1846618496_))
                                                  (_tl1846818501_
                                                   (##cdr _e1846618496_)))
                                              (let* ((_ids18504_
                                                      _hd1846718499_)
                                                     (_clauses18506_
                                                      _tl1846818501_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18504_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18447_
                                                         _ids18504_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18506_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18447_)
                    (let* ((_ids18508_ (gx#syntax->list _ids18504_))
                           (_clauses18510_ (gx#syntax->list _clauses18506_))
                           (_clause-ids18512_ (gx#gentemps _clauses18510_))
                           (_E18514_ (gx#genident__0))
                           (_target18516_ (gx#genident__0))
                           (_first18518_
                            (if (null? _clauses18510_)
                                _E18514_
                                (car _clause-ids18512_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18514_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18516_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18516_))
                                            '()))
                                '())
                          (_generate-body18453_
                           (_generate-bindings18452_
                            _target18516_
                            _ids18508_
                            _clauses18510_
                            _clause-ids18512_
                            _E18514_)
                           (cons _first18518_ (cons _expr18494_ '()))))
                         (gx#stx-source _stx18447_)))
                       (gx#stx-source _stx18447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1845918474_)))))
                                          (_E1845918474_)))))
                                (_E1845918474_))))
                        (_E1845918474_)))))
            (_E1845818521_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx19157_)
          (let* ((_identifier=?19159_ 'free-identifier=?)
                 (_unwrap-e19161_ 'syntax-e)
                 (_wrap-e19163_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19157_
             _identifier=?19159_
             _unwrap-e19161_
             _wrap-e19163_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx19165_ _identifier=?19166_)
          (let* ((_unwrap-e19168_ 'syntax-e) (_wrap-e19170_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19165_
             _identifier=?19166_
             _unwrap-e19168_
             _wrap-e19170_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx19172_ _identifier=?19173_ _unwrap-e19174_)
          (let ((_wrap-e19176_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19172_
             _identifier=?19173_
             _unwrap-e19174_
             _wrap-e19176_))))
      (define gx#macro-expand-syntax-case
        (lambda _g19731_
          (let ((_g19730_ (length _g19731_)))
            (cond ((##fx= _g19730_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g19731_))
                  ((##fx= _g19730_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g19731_))
                  ((##fx= _g19730_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g19731_))
                  ((##fx= _g19730_ 4)
                   (apply gx#macro-expand-syntax-case__% _g19731_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g19731_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18444_)
      (if (gx#identifier? _stx18444_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18444_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18402_ . _rest18403_)
      (let ((_len18405_ (length _hd18402_)))
        (let _lp18407_ ((_rest18409_ _rest18403_))
          (let* ((_rest1841018418_ _rest18409_)
                 (_else1841218426_ (lambda () '#!void))
                 (_K1841418432_
                  (lambda (_rest18429_ _hd18430_)
                    (if (fx= _len18405_ (length _hd18430_))
                        (_lp18407_ _rest18429_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18430_)))))
            (if (##pair? _rest1841018418_)
                (let ((_hd1841518435_ (##car _rest1841018418_))
                      (_tl1841618437_ (##cdr _rest1841018418_)))
                  (let* ((_hd18440_ _hd1841518435_)
                         (_rest18442_ _tl1841618437_))
                    (_K1841418432_ _rest18442_ _hd18440_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18360_ _n18361_)
      (let _lp18363_ ((_rest18365_ _stx18360_) (_r18366_ '()))
        (if (gx#stx-pair? _rest18365_)
            (let* ((_g1836718374_ (gx#syntax-e _rest18365_))
                   (_E1836918378_
                    (lambda () (error '"No clause matching" _g1836718374_)))
                   (_K1837018384_
                    (lambda (_rest18381_ _hd18382_)
                      (_lp18363_ _rest18381_ (cons _hd18382_ _r18366_)))))
              (if (##pair? _g1836718374_)
                  (let ((_hd1837118387_ (##car _g1836718374_))
                        (_tl1837218389_ (##cdr _g1836718374_)))
                    (let* ((_hd18392_ _hd1837118387_)
                           (_rest18394_ _tl1837218389_))
                      (_K1837018384_ _rest18394_ _hd18392_)))
                  (_E1836918378_)))
            (let _lp18396_ ((_n18398_ _n18361_)
                            (_l18399_ _r18366_)
                            (_r18400_ _rest18365_))
              (if (null? _l18399_)
                  (values _l18399_ _r18400_)
                  (if (fxpositive? _n18398_)
                      (_lp18396_
                       (fx- _n18398_ '1)
                       (cdr _l18399_)
                       (cons (car _l18399_) _r18400_))
                      (values (reverse _l18399_) _r18400_)))))))))
