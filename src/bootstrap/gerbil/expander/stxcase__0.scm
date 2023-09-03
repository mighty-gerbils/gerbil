(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1693679894)
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
      (lambda _$args19766_
        (apply make-struct-instance gx#syntax-pattern::t _$args19766_)))
    (define gx#syntax-pattern-id
      (make-struct-field-accessor gx#syntax-pattern::t '0))
    (define gx#syntax-pattern-depth
      (make-struct-field-accessor gx#syntax-pattern::t '1))
    (define gx#syntax-pattern-id-set!
      (make-struct-field-mutator gx#syntax-pattern::t '0))
    (define gx#syntax-pattern-depth-set!
      (make-struct-field-mutator gx#syntax-pattern::t '1))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self19763_ _stx19764_)
        (gx#raise-syntax-error
         '#f
         '"Identifier used out of context"
         _stx19764_)))
    (bind-method!
     gx#syntax-pattern::t
     'apply-macro-expander
     gx#syntax-pattern::apply-macro-expander
     '#f)
    (define gx#macro-expand-syntax
      (lambda (_stx19245_)
        (letrec ((_generate19247_
                  (lambda (_e19474_)
                    (letrec ((_BUG19476_
                              (lambda (_q19638_)
                                (error '"BUG: syntax; generate"
                                       _stx19245_
                                       _e19474_
                                       _q19638_)))
                             (_local-pattern-e19477_
                              (lambda (_pat19636_)
                                (gx#syntax-local-rewrap
                                 (##structure-ref
                                  _pat19636_
                                  '2
                                  gx#syntax-pattern::t
                                  '#f))))
                             (_getvar19478_
                              (lambda (_q19633_ _vars19634_)
                                (assgetq _q19633_ _vars19634_ _BUG19476_)))
                             (_getarg19479_
                              (lambda (_arg19599_ _vars19600_)
                                (let* ((_arg1960119608_ _arg19599_)
                                       (_E1960319612_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg1960119608_)))
                                       (_K1960419621_
                                        (lambda (_e19615_ _tag19616_)
                                          (let ((_$e19618_ _tag19616_))
                                            (if (eq? 'ref _$e19618_)
                                                (_getvar19478_
                                                 _e19615_
                                                 _vars19600_)
                                                (if (eq? 'pattern _$e19618_)
                                                    (_local-pattern-e19477_
                                                     _e19615_)
                                                    (_BUG19476_
                                                     _arg19599_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg1960119608_))
                                      (let ((_hd1960519624_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg1960119608_)))
                                            (_tl1960619626_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg1960119608_))))
                                        (let* ((_tag19629_ _hd1960519624_)
                                               (_e19631_ _tl1960619626_))
                                          (_K1960419621_ _e19631_ _tag19629_)))
                                      (_E1960319612_))))))
                      (let _recur19481_ ((_e19483_ _e19474_) (_vars19484_ '()))
                        (let* ((_e1948519492_ _e19483_)
                               (_E1948719496_
                                (lambda ()
                                  (error '"No clause matching" _e1948519492_)))
                               (_K1948819587_
                                (lambda (_body19499_ _tag19500_)
                                  (let ((_$e19502_ _tag19500_))
                                    (if (eq? 'datum _$e19502_)
                                        (gx#core-list 'quote _body19499_)
                                        (if (eq? 'term _$e19502_)
                                            (let ((_id19505_
                                                   (gx#syntax-local-unwrap
                                                    _body19499_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id19505_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks19507_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id19505_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (null? _marks19507_)
                                                        (gx#core-list
                                                         'datum->syntax
                                                         '#f
                                                         (gx#core-list
                                                          'quote
                                                          _body19499_))
                                                        (gx#core-list
                                                         'datum->syntax
                                                         (gx#core-list
                                                          'quote-syntax
                                                          _body19499_)
                                                         (gx#core-list
                                                          'quote
                                                          _body19499_)
                                                         '#f
                                                         '#f)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id19505_
                                                         'gx#syntax-quote::t))
                                                      (gx#core-list
                                                       'quote-syntax
                                                       _body19499_)
                                                      (_BUG19476_ _e19483_))))
                                            (if (eq? 'pattern _$e19502_)
                                                (_local-pattern-e19477_
                                                 _body19499_)
                                                (if (eq? 'ref _$e19502_)
                                                    (_getvar19478_
                                                     _body19499_
                                                     _vars19484_)
                                                    (if (eq? 'cons _$e19502_)
                                                        (gx#core-list
                                                         'cons
                                                         (_recur19481_
                                                          (car _body19499_)
                                                          _vars19484_)
                                                         (_recur19481_
                                                          (cdr _body19499_)
                                                          _vars19484_))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e19502_)
                    (gx#core-list
                     'list->vector
                     (_recur19481_ _body19499_ _vars19484_))
                    (if (eq? 'box _$e19502_)
                        (gx#core-list
                         'box
                         (_recur19481_ _body19499_ _vars19484_))
                        (if (eq? 'splice _$e19502_)
                            (let* ((_body1950819519_ _body19499_)
                                   (_E1951019523_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body1950819519_)))
                                   (_K1951119561_
                                    (lambda (_args19526_
                                             _iv19527_
                                             _hd19528_
                                             _depth19529_)
                                      (let* ((_targets19535_
                                              (map (lambda (_g1953019532_)
                                                     (_getarg19479_
                                                      _g1953019532_
                                                      _vars19484_))
                                                   _args19526_))
                                             (_fold-in19537_
                                              (gx#gentemps _args19526_))
                                             (_fold-out19539_ (gx#genident__0))
                                             (_lambda-args19541_
                                              (foldr1 cons
                                                      (cons _fold-out19539_
                                                            '())
                                                      _fold-in19537_))
                                             (_lambda-body19558_
                                              (if (fx> _depth19529_ '1)
                                                  (let ((_r-args19549_
                                                         (map (lambda (_arg19543_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _arg19543_)))
                      _args19526_))
                (_r-vars19550_
                 (foldr2 (lambda (_arg19545_ _var19546_ _r19547_)
                           (cons (cons (cdr _arg19545_) _var19546_) _r19547_))
                         _vars19484_
                         _args19526_
                         _fold-in19537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_recur19481_
                                                     (cons 'splice
                                                           (cons (fx- _depth19529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '1)
                         (cons _hd19528_
                               (cons (cons 'var _fold-out19539_)
                                     _r-args19549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r-vars19550_))
                                                  (let ((_hd-vars19556_
                                                         (foldr2 (lambda (_arg19552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _var19553_
                                  _r19554_)
                           (cons (cons (cdr _arg19552_) _var19553_) _r19554_))
                         _vars19484_
                         _args19526_
                         _fold-in19537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-list
                                                     'cons
                                                     (_recur19481_
                                                      _hd19528_
                                                      _hd-vars19556_)
                                                     _fold-out19539_)))))
                                        (gx#core-list
                                         'begin
                                         (if (fx> (length _targets19535_) '1)
                                             (gx#core-cons*
                                              'syntax-check-splice-targets
                                              _targets19535_)
                                             '#!void)
                                         (gx#core-cons*
                                          'foldr
                                          (gx#core-list
                                           'lambda%
                                           _lambda-args19541_
                                           _lambda-body19558_)
                                          (_recur19481_ _iv19527_ _vars19484_)
                                          _targets19535_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body1950819519_))
                                  (let ((_hd1951219564_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body1950819519_)))
                                        (_tl1951319566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body1950819519_))))
                                    (let ((_depth19569_ _hd1951219564_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1951319566_))
                                          (let ((_hd1951419571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1951319566_)))
                                                (_tl1951519573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1951319566_))))
                                            (let ((_hd19576_ _hd1951419571_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1951519573_))
                                                  (let ((_hd1951619578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1951519573_)))
                                                        (_tl1951719580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1951519573_))))
                                                    (let* ((_iv19583_
                                                            _hd1951619578_)
                                                           (_args19585_
                                                            _tl1951719580_))
                                                      (_K1951119561_
                                                       _args19585_
                                                       _iv19583_
                                                       _hd19576_
                                                       _depth19569_)))
                                                  (_E1951019523_))))
                                          (_E1951019523_))))
                                  (_E1951019523_)))
                            (if (eq? 'var _$e19502_)
                                _body19499_
                                (_BUG19476_ _e19483_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e1948519492_))
                              (let ((_hd1948919590_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1948519492_)))
                                    (_tl1949019592_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1948519492_))))
                                (let* ((_tag19595_ _hd1948919590_)
                                       (_body19597_ _tl1949019592_))
                                  (_K1948819587_ _body19597_ _tag19595_)))
                              (_E1948719496_)))))))
                 (_parse19248_
                  (lambda (_e19289_)
                    (letrec ((_make-cons19291_
                              (lambda (_hd19466_ _tl19467_)
                                (let ((_g19768_ _hd19466_)
                                      (_g19770_ _tl19467_))
                                  (begin
                                    (let ((_g19769_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19768_)
                                                 (##vector-length _g19768_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19769_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19769_)))
                                    (let ((_g19771_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19770_)
                                                 (##vector-length _g19770_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19771_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19771_)))
                                    (let ((_hd-e19469_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19768_ 0)))
                                          (_hd-vars19470_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19768_ 1))))
                                      (let ((_tl-e19471_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19770_ 0)))
                                            (_tl-vars19472_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19770_ 1))))
                                        (values (cons 'cons
                                                      (cons _hd-e19469_
                                                            _tl-e19471_))
                                                (append _hd-vars19470_
                                                        _tl-vars19472_))))))))
                             (_make-splice19292_
                              (lambda (_where19405_
                                       _depth19406_
                                       _hd19407_
                                       _tl19408_)
                                (let ((_g19772_ _hd19407_)
                                      (_g19774_ _tl19408_))
                                  (begin
                                    (let ((_g19773_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19772_)
                                                 (##vector-length _g19772_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19773_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19773_)))
                                    (let ((_g19775_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19774_)
                                                 (##vector-length _g19774_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19775_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19775_)))
                                    (let ((_hd-e19410_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19772_ 0)))
                                          (_hd-vars19411_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19772_ 1))))
                                      (let ((_tl-e19412_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19774_ 0)))
                                            (_tl-vars19413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19774_ 1))))
                                        (let _lp19415_ ((_rest19417_
                                                         _hd-vars19411_)
                                                        (_targets19418_ '())
                                                        (_vars19419_
                                                         _tl-vars19413_))
                                          (let* ((_rest1942019430_ _rest19417_)
                                                 (_else1942219438_
                                                  (lambda ()
                                                    (if (null? _targets19418_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Misplaced ellipsis"
                                                         _stx19245_
                                                         _where19405_)
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _depth19406_
                                    (cons _hd-e19410_
                                          (cons _tl-e19412_ _targets19418_))))
                        _vars19419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1942419447_
                                                  (lambda (_rest19441_
                                                           _hd-pat19442_
                                                           _hd-depth*19443_)
                                                    (let ((_hd-depth19445_
                                                           (fx- _hd-depth*19443_
                                                                _depth19406_)))
                                                      (if (fxpositive?
                                                           _hd-depth19445_)
                                                          (_lp19415_
                                                           _rest19441_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd-pat19442_)
                         _targets19418_)
                   (cons (cons _hd-depth19445_ _hd-pat19442_) _vars19419_))
                  (if (fxzero? _hd-depth19445_)
                      (_lp19415_
                       _rest19441_
                       (cons (cons 'pattern _hd-pat19442_) _targets19418_)
                       _vars19419_)
                      (gx#raise-syntax-error
                       '#f
                       '"Too many ellipses"
                       _stx19245_
                       _where19405_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest1942019430_))
                                                (let ((_hd1942519450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest1942019430_)))
                                                      (_tl1942619452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest1942019430_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1942519450_))
                                                      (let ((_hd1942719455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1942519450_)))
                    (_tl1942819457_
                     (let () (declare (not safe)) (##cdr _hd1942519450_))))
                (let* ((_hd-depth*19460_ _hd1942719455_)
                       (_hd-pat19462_ _tl1942819457_)
                       (_rest19464_ _tl1942619452_))
                  (_K1942419447_ _rest19464_ _hd-pat19462_ _hd-depth*19460_)))
              (_else1942219438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_else1942219438_))))))))))
                             (_recur19293_
                              (lambda (_e19298_ _is-e?19299_)
                                (if (_is-e?19299_ _e19298_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Mislpaced ellipsis"
                                     _stx19245_)
                                    (if (gx#syntax-local-pattern? _e19298_)
                                        (let* ((_pat19301_
                                                (gx#syntax-local-e__0
                                                 _e19298_))
                                               (_depth19303_
                                                (##structure-ref
                                                 _pat19301_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth19303_)
                                              (values (cons 'ref _pat19301_)
                                                      (cons (cons _depth19303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pat19301_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _pat19301_)
                                                      '())))
                                        (if (gx#identifier? _e19298_)
                                            (values (cons 'term _e19298_) '())
                                            (if (gx#stx-pair? _e19298_)
                                                (let* ((_e1930519312_ _e19298_)
                                                       (_E1930719316_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1930519312_)))
                                                       (_E1930619395_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1930519312_)
                                                              (let ((_e1930819320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1930519312_)))
                        (let ((_hd1930919323_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1930819320_)))
                              (_tl1931019325_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1930819320_))))
                          (let* ((_hd19328_ _hd1930919323_)
                                 (_rest19330_ _tl1931019325_))
                            (if '#t
                                (if (_is-e?19299_ _hd19328_)
                                    (let* ((_e1933119338_ _rest19330_)
                                           (_E1933319342_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad ellipsis syntax"
                                               _stx19245_
                                               _e19298_)))
                                           (_E1933219356_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1933119338_)
                                                  (let ((_e1933419346_
                                                         (gx#syntax-e
                                                          _e1933119338_)))
                                                    (let ((_hd1933519349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1933419346_)))
                                                          (_tl1933619351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1933419346_))))
                                                      (let ((_rest19354_
                                                             _hd1933519349_))
                                                        (if (gx#stx-null?
                                                             _tl1933619351_)
                                                            (if '#t
                                                                (_recur19293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest19354_
                         false)
                        (_E1933319342_))
                    (_E1933319342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1933319342_)))))
                                      (_E1933219356_))
                                    (let _lp19360_ ((_rest19362_ _rest19330_)
                                                    (_depth19363_ '0))
                                      (let* ((_e1936419371_ _rest19362_)
                                             (_E1936619375_
                                              (lambda ()
                                                (if (fxpositive? _depth19363_)
                                                    (_make-splice19292_
                                                     _e19298_
                                                     _depth19363_
                                                     (_recur19293_
                                                      _hd19328_
                                                      _is-e?19299_)
                                                     (_recur19293_
                                                      _rest19362_
                                                      _is-e?19299_))
                                                    (_make-cons19291_
                                                     (_recur19293_
                                                      _hd19328_
                                                      _is-e?19299_)
                                                     (_recur19293_
                                                      _rest19362_
                                                      _is-e?19299_)))))
                                             (_E1936519391_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _e1936419371_)
                                                    (let ((_e1936719379_
                                                           (gx#syntax-e
                                                            _e1936419371_)))
                                                      (let ((_hd1936819382_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1936719379_)))
                    (_tl1936919384_
                     (let () (declare (not safe)) (##cdr _e1936719379_))))
                (let* ((_rest-hd19387_ _hd1936819382_)
                       (_rest-tl19389_ _tl1936919384_))
                  (if '#t
                      (if (_is-e?19299_ _rest-hd19387_)
                          (_lp19360_ _rest-tl19389_ (fx+ _depth19363_ '1))
                          (if (fxpositive? _depth19363_)
                              (_make-splice19292_
                               _e19298_
                               _depth19363_
                               (_recur19293_ _hd19328_ _is-e?19299_)
                               (_recur19293_ _rest19362_ _is-e?19299_))
                              (_make-cons19291_
                               (_recur19293_ _hd19328_ _is-e?19299_)
                               (_recur19293_ _rest19362_ _is-e?19299_))))
                      (_E1936619375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1936619375_)))))
                                        (_E1936519391_))))
                                (_E1930719316_)))))
                      (_E1930719316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1930619395_))
                                                (if (gx#stx-vector? _e19298_)
                                                    (let ((_g19776_
                                                           (_recur19293_
                                                            (vector->list
                                                             (gx#stx-unwrap__0
                                                              _e19298_))
                                                            _is-e?19299_)))
                                                      (begin
                                                        (let ((_g19777_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g19776_)
                             (##vector-length _g19776_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g19777_ 2)))
                      (error "Context expects 2 values" _g19777_)))
                (let ((_e19399_
                       (let () (declare (not safe)) (##vector-ref _g19776_ 0)))
                      (_vars19400_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g19776_ 1))))
                  (values (cons 'vector _e19399_) _vars19400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-box? _e19298_)
                                                        (let ((_g19778_
                                                               (_recur19293_
                                                                (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e19298_))
                        _is-e?19299_)))
                  (begin
                    (let ((_g19779_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g19778_)
                                 (##vector-length _g19778_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g19779_ 2)))
                          (error "Context expects 2 values" _g19779_)))
                    (let ((_e19402_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g19778_ 0)))
                          (_vars19403_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g19778_ 1))))
                      (values (cons 'box _e19402_) _vars19403_))))
                (values (cons 'datum _e19298_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g19780_ (_recur19293_ _e19289_ gx#ellipsis?)))
                        (begin
                          (let ((_g19781_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g19780_)
                                       (##vector-length _g19780_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g19781_ 2)))
                                (error "Context expects 2 values" _g19781_)))
                          (let ((_tree19295_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g19780_ 0)))
                                (_vars19296_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g19780_ 1))))
                            (if (null? _vars19296_)
                                _tree19295_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Missing ellipsis"
                                 _stx19245_
                                 _vars19296_)))))))))
          (let* ((_e1924919259_ _stx19245_)
                 (_E1925119263_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx19245_)))
                 (_E1925019285_
                  (lambda ()
                    (if (gx#stx-pair? _e1924919259_)
                        (let ((_e1925219267_ (gx#syntax-e _e1924919259_)))
                          (let ((_hd1925319270_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1925219267_)))
                                (_tl1925419272_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1925219267_))))
                            (if (gx#stx-pair? _tl1925419272_)
                                (let ((_e1925519275_
                                       (gx#syntax-e _tl1925419272_)))
                                  (let ((_hd1925619278_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1925519275_)))
                                        (_tl1925719280_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1925519275_))))
                                    (let ((_form19283_ _hd1925619278_))
                                      (if (gx#stx-null? _tl1925719280_)
                                          (if '#t
                                              (gx#stx-wrap-source
                                               (_generate19247_
                                                (_parse19248_ _form19283_))
                                               (gx#stx-source _stx19245_))
                                              (_E1925119263_))
                                          (_E1925119263_)))))
                                (_E1925119263_))))
                        (_E1925119263_)))))
            (_E1925019285_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18509_ _identifier=?18510_ _unwrap-e18511_ _wrap-e18512_)
        (letrec ((_generate-bindings18514_
                  (lambda (_target19109_
                           _ids19110_
                           _clauses19111_
                           _clause-ids19112_
                           _E19113_)
                    (letrec ((_generate119115_
                              (lambda (_clause19212_ _clause-id19213_ _E19214_)
                                (cons (cons _clause-id19213_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19109_ '())
                                             (_generate-clause18516_
                                              _target19109_
                                              _ids19110_
                                              _clause19212_
                                              _E19214_))
                                            '())))))
                      (let _lp19117_ ((_rest19119_ _clauses19111_)
                                      (_rest-ids19120_ _clause-ids19112_)
                                      (_bindings19121_ '()))
                        (let* ((_rest1912219130_ _rest19119_)
                               (_else1912419138_ (lambda () _bindings19121_))
                               (_K1912619200_
                                (lambda (_rest19141_ _clause19142_)
                                  (let* ((_rest-ids1914319150_ _rest-ids19120_)
                                         (_E1914519154_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1914319150_)))
                                         (_K1914619188_
                                          (lambda (_rest-ids19157_
                                                   _clause-id19158_)
                                            (let* ((_rest-ids1915919167_
                                                    _rest-ids19157_)
                                                   (_else1916119175_
                                                    (lambda ()
                                                      (cons (_generate119115_
                                                             _clause19142_
                                                             _clause-id19158_
                                                             _E19113_)
                                                            _bindings19121_)))
                                                   (_K1916319180_
                                                    (lambda (_next-clause-id19178_)
                                                      (_lp19117_
                                                       _rest19141_
                                                       _rest-ids19157_
                                                       (cons (_generate119115_
                                                              _clause19142_
                                                              _clause-id19158_
                                                              _next-clause-id19178_)
                                                             _bindings19121_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids1915919167_))
                                                  (let* ((_hd1916419183_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids1915919167_)))
                                                         (_next-clause-id19186_
                                                          _hd1916419183_))
                                                    (_K1916319180_
                                                     _next-clause-id19186_))
                                                  (_else1916119175_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids1914319150_))
                                        (let ((_hd1914719191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids1914319150_)))
                                              (_tl1914819193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids1914319150_))))
                                          (let* ((_clause-id19196_
                                                  _hd1914719191_)
                                                 (_rest-ids19198_
                                                  _tl1914819193_))
                                            (_K1914619188_
                                             _rest-ids19198_
                                             _clause-id19196_)))
                                        (_E1914519154_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1912219130_))
                              (let ((_hd1912719203_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1912219130_)))
                                    (_tl1912819205_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1912219130_))))
                                (let* ((_clause19208_ _hd1912719203_)
                                       (_rest19210_ _tl1912819205_))
                                  (_K1912619200_ _rest19210_ _clause19208_)))
                              (_else1912419138_)))))))
                 (_generate-body18515_
                  (lambda (_bindings19069_ _body19070_)
                    (let _recur19072_ ((_rest19074_ _bindings19069_))
                      (let* ((_rest1907519083_ _rest19074_)
                             (_else1907719091_ (lambda () _body19070_))
                             (_K1907919097_
                              (lambda (_rest19094_ _hd19095_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd19095_ '())
                                 (_recur19072_ _rest19094_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1907519083_))
                            (let ((_hd1908019100_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1907519083_)))
                                  (_tl1908119102_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1907519083_))))
                              (let* ((_hd19105_ _hd1908019100_)
                                     (_rest19107_ _tl1908119102_))
                                (_K1907919097_ _rest19107_ _hd19105_)))
                            (_else1907719091_))))))
                 (_generate-clause18516_
                  (lambda (_target18932_ _ids18933_ _clause18934_ _E18935_)
                    (letrec ((_generate118937_
                              (lambda (_hd19024_ _fender19025_ _body19026_)
                                (let ((_g19782_
                                       (_parse-clause18518_
                                        _hd19024_
                                        _ids18933_)))
                                  (begin
                                    (let ((_g19783_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19782_)
                                                 (##vector-length _g19782_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19783_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19783_)))
                                    (let ((_e19028_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19782_ 0)))
                                          (_mvars19029_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19782_ 1))))
                                      (let* ((_pvars19031_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars19029_)))
                                             (_E19033_
                                              (cons _E18935_
                                                    (cons _target18932_ '())))
                                             (_K19066_
                                              (gx#core-list
                                               'lambda%
                                               _pvars19031_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar19035_
                                                              _pvar19036_)
                                                       (let* ((_mvar1903719044_
                                                               _mvar19035_)
                                                              (_E1903919048_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1903719044_)))
                      (_K1904019054_
                       (lambda (_depth19051_ _id19052_)
                         (cons _id19052_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id19052_)
                                      (gx#core-list 'quote _pvar19036_)
                                      _depth19051_)
                                     '())))))
                 (if (let () (declare (not safe)) (##pair? _mvar1903719044_))
                     (let ((_hd1904119057_
                            (let ()
                              (declare (not safe))
                              (##car _mvar1903719044_)))
                           (_tl1904219059_
                            (let ()
                              (declare (not safe))
                              (##cdr _mvar1903719044_))))
                       (let* ((_id19062_ _hd1904119057_)
                              (_depth19064_ _tl1904219059_))
                         (_K1904019054_ _depth19064_ _id19062_)))
                     (_E1903919048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars19029_
                                                     _pvars19031_)
                                                (if (eq? _fender19025_ '#t)
                                                    _body19026_
                                                    (gx#core-list
                                                     'if
                                                     _fender19025_
                                                     _body19026_
                                                     _E19033_))))))
                                        (_generate-match18517_
                                         _hd19024_
                                         _target18932_
                                         _e19028_
                                         _mvars19029_
                                         _K19066_
                                         _E19033_))))))))
                      (let* ((_e1893818958_ _clause18934_)
                             (_E1894718962_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1893818958_)))
                             (_E1894018996_
                              (lambda ()
                                (if (gx#stx-pair? _e1893818958_)
                                    (let ((_e1894818966_
                                           (gx#syntax-e _e1893818958_)))
                                      (let ((_hd1894918969_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1894818966_)))
                                            (_tl1895018971_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1894818966_))))
                                        (let ((_hd18974_ _hd1894918969_))
                                          (if (gx#stx-pair? _tl1895018971_)
                                              (let ((_e1895118976_
                                                     (gx#syntax-e
                                                      _tl1895018971_)))
                                                (let ((_hd1895218979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1895118976_)))
                                                      (_tl1895318981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1895118976_))))
                                                  (let ((_fender18984_
                                                         _hd1895218979_))
                                                    (if (gx#stx-pair?
                                                         _tl1895318981_)
                                                        (let ((_e1895418986_
                                                               (gx#syntax-e
                                                                _tl1895318981_)))
                                                          (let ((_hd1895518989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1895418986_)))
                        (_tl1895618991_
                         (let () (declare (not safe)) (##cdr _e1895418986_))))
                    (let ((_body18994_ _hd1895518989_))
                      (if (gx#stx-null? _tl1895618991_)
                          (if '#t
                              (_generate118937_
                               _hd18974_
                               _fender18984_
                               _body18994_)
                              (_E1894718962_))
                          (_E1894718962_)))))
                (_E1894718962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1894718962_)))))
                                    (_E1894718962_))))
                             (_E1893919020_
                              (lambda ()
                                (if (gx#stx-pair? _e1893818958_)
                                    (let ((_e1894119000_
                                           (gx#syntax-e _e1893818958_)))
                                      (let ((_hd1894219003_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1894119000_)))
                                            (_tl1894319005_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1894119000_))))
                                        (let ((_hd19008_ _hd1894219003_))
                                          (if (gx#stx-pair? _tl1894319005_)
                                              (let ((_e1894419010_
                                                     (gx#syntax-e
                                                      _tl1894319005_)))
                                                (let ((_hd1894519013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1894419010_)))
                                                      (_tl1894619015_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1894419010_))))
                                                  (let ((_body19018_
                                                         _hd1894519013_))
                                                    (if (gx#stx-null?
                                                         _tl1894619015_)
                                                        (if '#t
                                                            (_generate118937_
                                                             _hd19008_
                                                             '#t
                                                             _body19018_)
                                                            (_E1894018996_))
                                                        (_E1894018996_)))))
                                              (_E1894018996_)))))
                                    (_E1894018996_)))))
                        (_E1893919020_)))))
                 (_generate-match18517_
                  (lambda (_where18681_
                           _target18682_
                           _hd18683_
                           _mvars18684_
                           _K18685_
                           _E18686_)
                    (letrec ((_BUG18688_
                              (lambda (_q18930_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18509_
                                       _hd18683_
                                       _q18930_)))
                             (_recur18689_
                              (lambda (_e18780_
                                       _vars18781_
                                       _target18782_
                                       _E18783_
                                       _k18784_)
                                (let* ((_e1878518792_ _e18780_)
                                       (_E1878718796_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1878518792_)))
                                       (_K1878818918_
                                        (lambda (_body18799_ _tag18800_)
                                          (let ((_$e18802_ _tag18800_))
                                            (if (eq? 'any _$e18802_)
                                                (_k18784_ _vars18781_)
                                                (if (eq? 'id _$e18802_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18782_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18510_
                                                       (gx#core-list
                                                        _wrap-e18512_
                                                        _body18799_)
                                                       _target18782_)
                                                      (_k18784_ _vars18781_)
                                                      _E18783_)
                                                     _E18783_)
                                                    (if (eq? 'var _$e18802_)
                                                        (_k18784_
                                                         (cons (cons _body18799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18782_)
                       _vars18781_))
                (if (eq? 'cons _$e18802_)
                    (let ((_$e18805_ (gx#genident__1 'e))
                          (_$hd18806_ (gx#genident__1 'hd))
                          (_$tl18807_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18782_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18805_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18511_
                                           _target18782_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18806_ '())
                                     (cons (gx#core-list '##car _$e18805_)
                                           '()))
                               (cons (cons (cons _$tl18807_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18805_)
                                                 '()))
                                     '()))
                         (let* ((_body1880818815_ _body18799_)
                                (_E1881018819_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1880818815_)))
                                (_K1881118827_
                                 (lambda (_tl18822_ _hd18823_)
                                   (_recur18689_
                                    _hd18823_
                                    _vars18781_
                                    _$hd18806_
                                    _E18783_
                                    (lambda (_vars18825_)
                                      (_recur18689_
                                       _tl18822_
                                       _vars18825_
                                       _$tl18807_
                                       _E18783_
                                       _k18784_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _body1880818815_))
                               (let ((_hd1881218830_
                                      (let ()
                                        (declare (not safe))
                                        (##car _body1880818815_)))
                                     (_tl1881318832_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _body1880818815_))))
                                 (let* ((_hd18835_ _hd1881218830_)
                                        (_tl18837_ _tl1881318832_))
                                   (_K1881118827_ _tl18837_ _hd18835_)))
                               (_E1881018819_)))))
                       _E18783_))
                    (if (eq? 'splice _$e18802_)
                        (let* ((_body1883818845_ _body18799_)
                               (_E1884018849_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1883818845_)))
                               (_K1884118900_
                                (lambda (_tl18852_ _hd18853_)
                                  (let* ((_rlen18855_
                                          (_splice-rlen18690_ _tl18852_))
                                         (_$target18857_
                                          (gx#genident__1 'target))
                                         (_$hd18859_ (gx#genident__1 'hd))
                                         (_$tl18861_ (gx#genident__1 'tl))
                                         (_$lp18863_ (gx#genident__1 'loop))
                                         (_$lp-e18865_ (gx#genident__1 'e))
                                         (_$lp-hd18867_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18869_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18871_
                                          (_splice-vars18691_ _hd18853_))
                                         (_lvars18873_
                                          (gx#gentemps _svars18871_))
                                         (_tlvars18875_
                                          (gx#gentemps _svars18871_))
                                         (_linit18879_
                                          (map (lambda (_var18877_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18873_)))
                                    (letrec ((_make-loop18882_
                                              (lambda (_vars18886_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18859_ _lvars18873_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18859_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18865_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18511_
                                                 _$hd18859_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18867_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18865_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18869_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18865_)
                                                       '()))
                                           '()))
                               (_recur18689_
                                _hd18853_
                                '()
                                _$lp-hd18867_
                                _E18783_
                                (lambda (_hdvars18888_)
                                  (cons _$lp18863_
                                        (cons _$lp-tl18869_
                                              (map (lambda (_svar18890_
                                                            _lvar18891_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18890_
                                                               _hdvars18888_
                                                               _BUG18688_)
                                                      _lvar18891_))
                                                   _svars18871_
                                                   _lvars18873_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18893_ _tlvar18894_)
                                     (cons (cons _tlvar18894_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18893_)
                                                 '())))
                                   _lvars18873_
                                   _tlvars18875_)
                              (_k18784_
                               (foldl2 (lambda (_svar18896_
                                                _tlvar18897_
                                                _r18898_)
                                         (cons (cons _svar18896_ _tlvar18897_)
                                               _r18898_))
                                       _vars18886_
                                       _svars18871_
                                       _tlvars18875_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18863_
                                                       (cons _$target18857_
                                                             _linit18879_))))))
                                      (let ((_body18884_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18857_
                                                                (cons _$tl18861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18782_
                         _rlen18855_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18689_
                                               _tl18852_
                                               _vars18781_
                                               _$tl18861_
                                               _E18783_
                                               _make-loop18882_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18782_)
                                         (if (zero? _rlen18855_)
                                             _body18884_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18782_)
                                               _rlen18855_)
                                              _body18884_
                                              _E18783_))
                                         _E18783_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body1883818845_))
                              (let ((_hd1884218903_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body1883818845_)))
                                    (_tl1884318905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body1883818845_))))
                                (let* ((_hd18908_ _hd1884218903_)
                                       (_tl18910_ _tl1884318905_))
                                  (_K1884118900_ _tl18910_ _hd18908_)))
                              (_E1884018849_)))
                        (if (eq? 'null _$e18802_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18782_)
                             (_k18784_ _vars18781_)
                             _E18783_)
                            (if (eq? 'vector _$e18802_)
                                (let ((_$e18912_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18782_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18912_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18511_
                                                        _target18782_))
                                                      '()))
                                          '())
                                    (_recur18689_
                                     _body18799_
                                     _vars18781_
                                     _$e18912_
                                     _E18783_
                                     _k18784_))
                                   _E18783_))
                                (if (eq? 'box _$e18802_)
                                    (let ((_$e18914_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18782_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18914_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18511_
                                                            _target18782_))
                                                          '()))
                                              '())
                                        (_recur18689_
                                         _body18799_
                                         _vars18781_
                                         _$e18914_
                                         _E18783_
                                         _k18784_))
                                       _E18783_))
                                    (if (eq? 'datum _$e18802_)
                                        (let ((_$e18916_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18782_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18916_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18782_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18916_
                                              _body18799_)
                                             (_k18784_ _vars18781_)
                                             _E18783_))
                                           _E18783_))
                                        (_BUG18688_ _e18780_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e1878518792_))
                                      (let ((_hd1878918921_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1878518792_)))
                                            (_tl1879018923_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1878518792_))))
                                        (let* ((_tag18926_ _hd1878918921_)
                                               (_body18928_ _tl1879018923_))
                                          (_K1878818918_
                                           _body18928_
                                           _tag18926_)))
                                      (_E1878718796_)))))
                             (_splice-rlen18690_
                              (lambda (_e18742_)
                                (let _lp18744_ ((_e18746_ _e18742_)
                                                (_n18747_ '0))
                                  (let* ((_e1874818755_ _e18746_)
                                         (_E1875018759_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1874818755_)))
                                         (_K1875118768_
                                          (lambda (_body18762_ _tag18763_)
                                            (let ((_$e18765_ _tag18763_))
                                              (if (eq? 'splice _$e18765_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18509_
                                                   _where18681_)
                                                  (if (eq? 'cons _$e18765_)
                                                      (_lp18744_
                                                       (cdr _body18762_)
                                                       (fx+ _n18747_ '1))
                                                      _n18747_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e1874818755_))
                                        (let ((_hd1875218771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1874818755_)))
                                              (_tl1875318773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1874818755_))))
                                          (let* ((_tag18776_ _hd1875218771_)
                                                 (_body18778_ _tl1875318773_))
                                            (_K1875118768_
                                             _body18778_
                                             _tag18776_)))
                                        (_E1875018759_))))))
                             (_splice-vars18691_
                              (lambda (_e18698_)
                                (let _recur18700_ ((_e18702_ _e18698_)
                                                   (_vars18703_ '()))
                                  (let* ((_e1870418711_ _e18702_)
                                         (_E1870618715_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1870418711_)))
                                         (_K1870718730_
                                          (lambda (_body18718_ _tag18719_)
                                            (let ((_$e18721_ _tag18719_))
                                              (if (eq? 'var _$e18721_)
                                                  (cons _body18718_
                                                        _vars18703_)
                                                  (if (or (eq? 'cons _$e18721_)
                                                          (eq? 'splice
                                                               _$e18721_))
                                                      (_recur18700_
                                                       (cdr _body18718_)
                                                       (_recur18700_
                                                        (car _body18718_)
                                                        _vars18703_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e18721_)
                      (eq? 'box _$e18721_))
                  (_recur18700_ _body18718_ _vars18703_)
                  _vars18703_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e1870418711_))
                                        (let ((_hd1870818733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1870418711_)))
                                              (_tl1870918735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1870418711_))))
                                          (let* ((_tag18738_ _hd1870818733_)
                                                 (_body18740_ _tl1870918735_))
                                            (_K1870718730_
                                             _body18740_
                                             _tag18738_)))
                                        (_E1870618715_))))))
                             (_make-body18692_
                              (lambda (_vars18694_)
                                (cons _K18685_
                                      (map (lambda (_mvar18696_)
                                             (assgetq (car _mvar18696_)
                                                      _vars18694_
                                                      _BUG18688_))
                                           _mvars18684_)))))
                      (_recur18689_
                       _hd18683_
                       '()
                       _target18682_
                       _E18686_
                       _make-body18692_))))
                 (_parse-clause18518_
                  (lambda (_hd18587_ _ids18588_)
                    (let _recur18590_ ((_e18592_ _hd18587_)
                                       (_vars18593_ '())
                                       (_depth18594_ '0))
                      (if (gx#identifier? _e18592_)
                          (if (gx#underscore? _e18592_)
                              (values '(any) _vars18593_)
                              (if (gx#ellipsis? _e18592_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18509_
                                   _hd18587_)
                                  (if (find (lambda (_id18596_)
                                              (gx#bound-identifier=?
                                               _e18592_
                                               _id18596_))
                                            _ids18588_)
                                      (values (cons 'id _e18592_) _vars18593_)
                                      (if (find (lambda (_var18598_)
                                                  (gx#bound-identifier=?
                                                   _e18592_
                                                   (car _var18598_)))
                                                _vars18593_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18509_
                                           _e18592_)
                                          (values (cons 'var _e18592_)
                                                  (cons (cons _e18592_
                                                              _depth18594_)
                                                        _vars18593_))))))
                          (if (gx#stx-pair? _e18592_)
                              (let* ((_e1859918606_ _e18592_)
                                     (_E1860118610_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1859918606_)))
                                     (_E1860018671_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1859918606_)
                                            (let ((_e1860218614_
                                                   (gx#syntax-e
                                                    _e1859918606_)))
                                              (let ((_hd1860318617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1860218614_)))
                                                    (_tl1860418619_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1860218614_))))
                                                (let* ((_hd18622_
                                                        _hd1860318617_)
                                                       (_rest18624_
                                                        _tl1860418619_))
                                                  (if '#t
                                                      (let* ((_make-pair18639_
                                                              (lambda (_tag18626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18627_
                               _tl18628_)
                        (let* ((_hd-depth18630_
                                (if (eq? _tag18626_ 'splice)
                                    (fx+ _depth18594_ '1)
                                    _depth18594_))
                               (_g19784_
                                (_recur18590_
                                 _hd18627_
                                 _vars18593_
                                 _hd-depth18630_)))
                          (begin
                            (let ((_g19785_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g19784_)
                                         (##vector-length _g19784_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g19785_ 2)))
                                  (error "Context expects 2 values" _g19785_)))
                            (let ((_hd18632_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g19784_ 0)))
                                  (_vars18633_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g19784_ 1))))
                              (let ((_g19786_
                                     (_recur18590_
                                      _tl18628_
                                      _vars18633_
                                      _depth18594_)))
                                (begin
                                  (let ((_g19787_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g19786_)
                                               (##vector-length _g19786_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g19787_ 2)))
                                        (error "Context expects 2 values"
                                               _g19787_)))
                                  (let ((_tl18635_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g19786_ 0)))
                                        (_vars18636_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g19786_ 1))))
                                    (let ()
                                      (values (cons _tag18626_
                                                    (cons _hd18632_ _tl18635_))
                                              _vars18636_))))))))))
                     (_e1864018647_ _rest18624_)
                     (_E1864218651_
                      (lambda ()
                        (_make-pair18639_ 'cons _hd18622_ _rest18624_)))
                     (_E1864118667_
                      (lambda ()
                        (if (gx#stx-pair? _e1864018647_)
                            (let ((_e1864318655_ (gx#syntax-e _e1864018647_)))
                              (let ((_hd1864418658_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1864318655_)))
                                    (_tl1864518660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1864318655_))))
                                (let* ((_rest-hd18663_ _hd1864418658_)
                                       (_rest-tl18665_ _tl1864518660_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18663_)
                                          (_make-pair18639_
                                           'splice
                                           _hd18622_
                                           _rest-tl18665_)
                                          (_make-pair18639_
                                           'cons
                                           _hd18622_
                                           _rest18624_))
                                      (_E1864218651_)))))
                            (_E1864218651_)))))
                (_E1864118667_))
              (_E1860118610_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1860118610_)))))
                                (_E1860018671_))
                              (if (gx#stx-null? _e18592_)
                                  (values '(null) _vars18593_)
                                  (if (gx#stx-vector? _e18592_)
                                      (let ((_g19788_
                                             (_recur18590_
                                              (vector->list
                                               (gx#syntax-e _e18592_))
                                              _vars18593_
                                              _depth18594_)))
                                        (begin
                                          (let ((_g19789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g19788_)
                                                       (##vector-length
                                                        _g19788_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g19789_ 2)))
                                                (error "Context expects 2 values"
                                                       _g19789_)))
                                          (let ((_e18675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g19788_ 0)))
                                                (_vars18676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g19788_ 1))))
                                            (values (cons 'vector _e18675_)
                                                    _vars18676_))))
                                      (if (gx#stx-box? _e18592_)
                                          (let ((_g19790_
                                                 (_recur18590_
                                                  (unbox (gx#syntax-e
                                                          _e18592_))
                                                  _vars18593_
                                                  _depth18594_)))
                                            (begin
                                              (let ((_g19791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g19790_)
                                                           (##vector-length
                                                            _g19790_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g19791_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g19791_)))
                                              (let ((_e18678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g19790_
                                                        0)))
                                                    (_vars18679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g19790_
                                                        1))))
                                                (values (cons 'box _e18678_)
                                                        _vars18679_))))
                                          (if (gx#stx-datum? _e18592_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18592_))
                                                      _vars18593_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18509_
                                               _e18592_)))))))))))
          (let* ((_e1851918532_ _stx18509_)
                 (_E1852118536_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1851918532_)))
                 (_E1852018583_
                  (lambda ()
                    (if (gx#stx-pair? _e1851918532_)
                        (let ((_e1852218540_ (gx#syntax-e _e1851918532_)))
                          (let ((_hd1852318543_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1852218540_)))
                                (_tl1852418545_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1852218540_))))
                            (if (gx#stx-pair? _tl1852418545_)
                                (let ((_e1852518548_
                                       (gx#syntax-e _tl1852418545_)))
                                  (let ((_hd1852618551_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1852518548_)))
                                        (_tl1852718553_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1852518548_))))
                                    (let ((_expr18556_ _hd1852618551_))
                                      (if (gx#stx-pair? _tl1852718553_)
                                          (let ((_e1852818558_
                                                 (gx#syntax-e _tl1852718553_)))
                                            (let ((_hd1852918561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1852818558_)))
                                                  (_tl1853018563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1852818558_))))
                                              (let* ((_ids18566_
                                                      _hd1852918561_)
                                                     (_clauses18568_
                                                      _tl1853018563_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18566_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18509_
                                                         _ids18566_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18568_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18509_)
                    (let* ((_ids18570_ (gx#syntax->list _ids18566_))
                           (_clauses18572_ (gx#syntax->list _clauses18568_))
                           (_clause-ids18574_ (gx#gentemps _clauses18572_))
                           (_E18576_ (gx#genident__0))
                           (_target18578_ (gx#genident__0))
                           (_first18580_
                            (if (null? _clauses18572_)
                                _E18576_
                                (car _clause-ids18574_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18576_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18578_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18578_))
                                            '()))
                                '())
                          (_generate-body18515_
                           (_generate-bindings18514_
                            _target18578_
                            _ids18570_
                            _clauses18572_
                            _clause-ids18574_
                            _E18576_)
                           (cons _first18580_ (cons _expr18556_ '()))))
                         (gx#stx-source _stx18509_)))
                       (gx#stx-source _stx18509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1852118536_)))))
                                          (_E1852118536_)))))
                                (_E1852118536_))))
                        (_E1852118536_)))))
            (_E1852018583_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx19219_)
        (let* ((_identifier=?19221_ 'free-identifier=?)
               (_unwrap-e19223_ 'syntax-e)
               (_wrap-e19225_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _stx19219_
           _identifier=?19221_
           _unwrap-e19223_
           _wrap-e19225_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx19227_ _identifier=?19228_)
        (let* ((_unwrap-e19230_ 'syntax-e) (_wrap-e19232_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _stx19227_
           _identifier=?19228_
           _unwrap-e19230_
           _wrap-e19232_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx19234_ _identifier=?19235_ _unwrap-e19236_)
        (let ((_wrap-e19238_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _stx19234_
           _identifier=?19235_
           _unwrap-e19236_
           _wrap-e19238_))))
    (define gx#macro-expand-syntax-case
      (lambda _g19793_
        (let ((_g19792_ (let () (declare (not safe)) (##length _g19793_))))
          (cond ((let () (declare (not safe)) (##fx= _g19792_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g19793_))
                ((let () (declare (not safe)) (##fx= _g19792_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g19793_))
                ((let () (declare (not safe)) (##fx= _g19792_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g19793_))
                ((let () (declare (not safe)) (##fx= _g19792_ 4))
                 (apply gx#macro-expand-syntax-case__% _g19793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g19793_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx18506_)
        (if (gx#identifier? _stx18506_)
            (let ((__tmp19794 (gx#syntax-local-e__% _stx18506_ false)))
              (declare (not safe))
              (##structure-instance-of? __tmp19794 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd18464_ . _rest18465_)
        (let ((_len18467_ (length _hd18464_)))
          (let _lp18469_ ((_rest18471_ _rest18465_))
            (let* ((_rest1847218480_ _rest18471_)
                   (_else1847418488_ (lambda () '#!void))
                   (_K1847618494_
                    (lambda (_rest18491_ _hd18492_)
                      (if (fx= _len18467_ (length _hd18492_))
                          (_lp18469_ _rest18491_)
                          (gx#raise-syntax-error
                           '#f
                           '"Splice length mismatch"
                           _hd18492_)))))
              (if (let () (declare (not safe)) (##pair? _rest1847218480_))
                  (let ((_hd1847718497_
                         (let ()
                           (declare (not safe))
                           (##car _rest1847218480_)))
                        (_tl1847818499_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest1847218480_))))
                    (let* ((_hd18502_ _hd1847718497_)
                           (_rest18504_ _tl1847818499_))
                      (_K1847618494_ _rest18504_ _hd18502_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx18422_ _n18423_)
        (let _lp18425_ ((_rest18427_ _stx18422_) (_r18428_ '()))
          (if (gx#stx-pair? _rest18427_)
              (let* ((_g1842918436_ (gx#syntax-e _rest18427_))
                     (_E1843118440_
                      (lambda () (error '"No clause matching" _g1842918436_)))
                     (_K1843218446_
                      (lambda (_rest18443_ _hd18444_)
                        (_lp18425_ _rest18443_ (cons _hd18444_ _r18428_)))))
                (if (let () (declare (not safe)) (##pair? _g1842918436_))
                    (let ((_hd1843318449_
                           (let () (declare (not safe)) (##car _g1842918436_)))
                          (_tl1843418451_
                           (let ()
                             (declare (not safe))
                             (##cdr _g1842918436_))))
                      (let* ((_hd18454_ _hd1843318449_)
                             (_rest18456_ _tl1843418451_))
                        (_K1843218446_ _rest18456_ _hd18454_)))
                    (_E1843118440_)))
              (let _lp18458_ ((_n18460_ _n18423_)
                              (_l18461_ _r18428_)
                              (_r18462_ _rest18427_))
                (if (null? _l18461_)
                    (values _l18461_ _r18462_)
                    (if (fxpositive? _n18460_)
                        (_lp18458_
                         (fx- _n18460_ '1)
                         (cdr _l18461_)
                         (cons (car _l18461_) _r18462_))
                        (values (reverse _l18461_) _r18462_))))))))))
