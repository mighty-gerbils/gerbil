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
    (lambda _$args19735_
      (apply make-struct-instance gx#syntax-pattern::t _$args19735_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19732_ _stx19733_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19733_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19214_)
      (letrec ((_generate19216_
                (lambda (_e19443_)
                  (letrec ((_BUG19445_
                            (lambda (_q19607_)
                              (error '"BUG: syntax; generate"
                                     _stx19214_
                                     _e19443_
                                     _q19607_)))
                           (_local-pattern-e19446_
                            (lambda (_pat19605_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19605_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19447_
                            (lambda (_q19602_ _vars19603_)
                              (assgetq _q19602_ _vars19603_ _BUG19445_)))
                           (_getarg19448_
                            (lambda (_arg19568_ _vars19569_)
                              (let* ((_arg1957019577_ _arg19568_)
                                     (_E1957219581_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1957019577_)))
                                     (_K1957319590_
                                      (lambda (_e19584_ _tag19585_)
                                        (let ((_$e19587_ _tag19585_))
                                          (if (eq? 'ref _$e19587_)
                                              (_getvar19447_
                                               _e19584_
                                               _vars19569_)
                                              (if (eq? 'pattern _$e19587_)
                                                  (_local-pattern-e19446_
                                                   _e19584_)
                                                  (_BUG19445_ _arg19568_)))))))
                                (if (##pair? _arg1957019577_)
                                    (let ((_hd1957419593_
                                           (##car _arg1957019577_))
                                          (_tl1957519595_
                                           (##cdr _arg1957019577_)))
                                      (let* ((_tag19598_ _hd1957419593_)
                                             (_e19600_ _tl1957519595_))
                                        (_K1957319590_ _e19600_ _tag19598_)))
                                    (_E1957219581_))))))
                    (let _recur19450_ ((_e19452_ _e19443_) (_vars19453_ '()))
                      (let* ((_e1945419461_ _e19452_)
                             (_E1945619465_
                              (lambda ()
                                (error '"No clause matching" _e1945419461_)))
                             (_K1945719556_
                              (lambda (_body19468_ _tag19469_)
                                (let ((_$e19471_ _tag19469_))
                                  (if (eq? 'datum _$e19471_)
                                      (gx#core-list 'quote _body19468_)
                                      (if (eq? 'term _$e19471_)
                                          (let ((_id19474_
                                                 (gx#syntax-local-unwrap
                                                  _body19468_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19474_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19476_
                                                       (##direct-structure-ref
                                                        _id19474_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19476_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19468_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19468_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19468_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19474_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19468_)
                                                    (_BUG19445_ _e19452_))))
                                          (if (eq? 'pattern _$e19471_)
                                              (_local-pattern-e19446_
                                               _body19468_)
                                              (if (eq? 'ref _$e19471_)
                                                  (_getvar19447_
                                                   _body19468_
                                                   _vars19453_)
                                                  (if (eq? 'cons _$e19471_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19450_
                                                        (car _body19468_)
                                                        _vars19453_)
                                                       (_recur19450_
                                                        (cdr _body19468_)
                                                        _vars19453_))
                                                      (if (eq? 'vector
                                                               _$e19471_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19450_
                                                            _body19468_
                                                            _vars19453_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19471_)
                      (gx#core-list
                       'box
                       (_recur19450_ _body19468_ _vars19453_))
                      (if (eq? 'splice _$e19471_)
                          (let* ((_body1947719488_ _body19468_)
                                 (_E1947919492_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1947719488_)))
                                 (_K1948019530_
                                  (lambda (_args19495_
                                           _iv19496_
                                           _hd19497_
                                           _depth19498_)
                                    (let* ((_targets19504_
                                            (map (lambda (_g1949919501_)
                                                   (_getarg19448_
                                                    _g1949919501_
                                                    _vars19453_))
                                                 _args19495_))
                                           (_fold-in19506_
                                            (gx#gentemps _args19495_))
                                           (_fold-out19508_ (gx#genident__0))
                                           (_lambda-args19510_
                                            (foldr1 cons
                                                    (cons _fold-out19508_ '())
                                                    _fold-in19506_))
                                           (_lambda-body19527_
                                            (if (fx> _depth19498_ '1)
                                                (let ((_r-args19518_
                                                       (map (lambda (_arg19512_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19512_)))
                    _args19495_))
              (_r-vars19519_
               (foldr2 (lambda (_arg19514_ _var19515_ _r19516_)
                         (cons (cons (cdr _arg19514_) _var19515_) _r19516_))
                       _vars19453_
                       _args19495_
                       _fold-in19506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19450_
                                                   (cons 'splice
                                                         (cons (fx- _depth19498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19497_
                             (cons (cons 'var _fold-out19508_)
                                   _r-args19518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19519_))
                                                (let ((_hd-vars19525_
                                                       (foldr2 (lambda (_arg19521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19522_
                                _r19523_)
                         (cons (cons (cdr _arg19521_) _var19522_) _r19523_))
                       _vars19453_
                       _args19495_
                       _fold-in19506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19450_
                                                    _hd19497_
                                                    _hd-vars19525_)
                                                   _fold-out19508_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19504_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19504_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19510_
                                         _lambda-body19527_)
                                        (_recur19450_ _iv19496_ _vars19453_)
                                        _targets19504_))))))
                            (if (##pair? _body1947719488_)
                                (let ((_hd1948119533_ (##car _body1947719488_))
                                      (_tl1948219535_
                                       (##cdr _body1947719488_)))
                                  (let ((_depth19538_ _hd1948119533_))
                                    (if (##pair? _tl1948219535_)
                                        (let ((_hd1948319540_
                                               (##car _tl1948219535_))
                                              (_tl1948419542_
                                               (##cdr _tl1948219535_)))
                                          (let ((_hd19545_ _hd1948319540_))
                                            (if (##pair? _tl1948419542_)
                                                (let ((_hd1948519547_
                                                       (##car _tl1948419542_))
                                                      (_tl1948619549_
                                                       (##cdr _tl1948419542_)))
                                                  (let* ((_iv19552_
                                                          _hd1948519547_)
                                                         (_args19554_
                                                          _tl1948619549_))
                                                    (_K1948019530_
                                                     _args19554_
                                                     _iv19552_
                                                     _hd19545_
                                                     _depth19538_)))
                                                (_E1947919492_))))
                                        (_E1947919492_))))
                                (_E1947919492_)))
                          (if (eq? 'var _$e19471_)
                              _body19468_
                              (_BUG19445_ _e19452_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1945419461_)
                            (let ((_hd1945819559_ (##car _e1945419461_))
                                  (_tl1945919561_ (##cdr _e1945419461_)))
                              (let* ((_tag19564_ _hd1945819559_)
                                     (_body19566_ _tl1945919561_))
                                (_K1945719556_ _body19566_ _tag19564_)))
                            (_E1945619465_)))))))
               (_parse19217_
                (lambda (_e19258_)
                  (letrec ((_make-cons19260_
                            (lambda (_hd19435_ _tl19436_)
                              (let ((_g19737_ _hd19435_) (_g19739_ _tl19436_))
                                (begin
                                  (let ((_g19738_
                                         (if (##values? _g19737_)
                                             (##vector-length _g19737_)
                                             1)))
                                    (if (not (##fx= _g19738_ 2))
                                        (error "Context expects 2 values"
                                               _g19738_)))
                                  (let ((_g19740_
                                         (if (##values? _g19739_)
                                             (##vector-length _g19739_)
                                             1)))
                                    (if (not (##fx= _g19740_ 2))
                                        (error "Context expects 2 values"
                                               _g19740_)))
                                  (let ((_hd-e19438_ (##vector-ref _g19737_ 0))
                                        (_hd-vars19439_
                                         (##vector-ref _g19737_ 1)))
                                    (let ((_tl-e19440_
                                           (##vector-ref _g19739_ 0))
                                          (_tl-vars19441_
                                           (##vector-ref _g19739_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19438_
                                                          _tl-e19440_))
                                              (append _hd-vars19439_
                                                      _tl-vars19441_))))))))
                           (_make-splice19261_
                            (lambda (_where19374_
                                     _depth19375_
                                     _hd19376_
                                     _tl19377_)
                              (let ((_g19741_ _hd19376_) (_g19743_ _tl19377_))
                                (begin
                                  (let ((_g19742_
                                         (if (##values? _g19741_)
                                             (##vector-length _g19741_)
                                             1)))
                                    (if (not (##fx= _g19742_ 2))
                                        (error "Context expects 2 values"
                                               _g19742_)))
                                  (let ((_g19744_
                                         (if (##values? _g19743_)
                                             (##vector-length _g19743_)
                                             1)))
                                    (if (not (##fx= _g19744_ 2))
                                        (error "Context expects 2 values"
                                               _g19744_)))
                                  (let ((_hd-e19379_ (##vector-ref _g19741_ 0))
                                        (_hd-vars19380_
                                         (##vector-ref _g19741_ 1)))
                                    (let ((_tl-e19381_
                                           (##vector-ref _g19743_ 0))
                                          (_tl-vars19382_
                                           (##vector-ref _g19743_ 1)))
                                      (let _lp19384_ ((_rest19386_
                                                       _hd-vars19380_)
                                                      (_targets19387_ '())
                                                      (_vars19388_
                                                       _tl-vars19382_))
                                        (let* ((_rest1938919399_ _rest19386_)
                                               (_else1939119407_
                                                (lambda ()
                                                  (if (null? _targets19387_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19214_
                                                       _where19374_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19375_
                                  (cons _hd-e19379_
                                        (cons _tl-e19381_ _targets19387_))))
                      _vars19388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1939319416_
                                                (lambda (_rest19410_
                                                         _hd-pat19411_
                                                         _hd-depth*19412_)
                                                  (let ((_hd-depth19414_
                                                         (fx- _hd-depth*19412_
                                                              _depth19375_)))
                                                    (if (fxpositive?
                                                         _hd-depth19414_)
                                                        (_lp19384_
                                                         _rest19410_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19411_)
                       _targets19387_)
                 (cons (cons _hd-depth19414_ _hd-pat19411_) _vars19388_))
                (if (fxzero? _hd-depth19414_)
                    (_lp19384_
                     _rest19410_
                     (cons (cons 'pattern _hd-pat19411_) _targets19387_)
                     _vars19388_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19214_
                     _where19374_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1938919399_)
                                              (let ((_hd1939419419_
                                                     (##car _rest1938919399_))
                                                    (_tl1939519421_
                                                     (##cdr _rest1938919399_)))
                                                (if (##pair? _hd1939419419_)
                                                    (let ((_hd1939619424_
                                                           (##car _hd1939419419_))
                                                          (_tl1939719426_
                                                           (##cdr _hd1939419419_)))
                                                      (let* ((_hd-depth*19429_
                                                              _hd1939619424_)
                                                             (_hd-pat19431_
                                                              _tl1939719426_)
                                                             (_rest19433_
                                                              _tl1939519421_))
                                                        (_K1939319416_
                                                         _rest19433_
                                                         _hd-pat19431_
                                                         _hd-depth*19429_)))
                                                    (_else1939119407_)))
                                              (_else1939119407_))))))))))
                           (_recur19262_
                            (lambda (_e19267_ _is-e?19268_)
                              (if (_is-e?19268_ _e19267_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19214_)
                                  (if (gx#syntax-local-pattern? _e19267_)
                                      (let* ((_pat19270_
                                              (gx#syntax-local-e__0 _e19267_))
                                             (_depth19272_
                                              (##structure-ref
                                               _pat19270_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19272_)
                                            (values (cons 'ref _pat19270_)
                                                    (cons (cons _depth19272_
                                                                _pat19270_)
                                                          '()))
                                            (values (cons 'pattern _pat19270_)
                                                    '())))
                                      (if (gx#identifier? _e19267_)
                                          (values (cons 'term _e19267_) '())
                                          (if (gx#stx-pair? _e19267_)
                                              (let* ((_e1927419281_ _e19267_)
                                                     (_E1927619285_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1927419281_)))
                                                     (_E1927519364_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1927419281_)
                                                            (let ((_e1927719289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1927419281_)))
                      (let ((_hd1927819292_ (##car _e1927719289_))
                            (_tl1927919294_ (##cdr _e1927719289_)))
                        (let* ((_hd19297_ _hd1927819292_)
                               (_rest19299_ _tl1927919294_))
                          (if '#t
                              (if (_is-e?19268_ _hd19297_)
                                  (let* ((_e1930019307_ _rest19299_)
                                         (_E1930219311_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19214_
                                             _e19267_)))
                                         (_E1930119325_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1930019307_)
                                                (let ((_e1930319315_
                                                       (gx#syntax-e
                                                        _e1930019307_)))
                                                  (let ((_hd1930419318_
                                                         (##car _e1930319315_))
                                                        (_tl1930519320_
                                                         (##cdr _e1930319315_)))
                                                    (let ((_rest19323_
                                                           _hd1930419318_))
                                                      (if (gx#stx-null?
                                                           _tl1930519320_)
                                                          (if '#t
                                                              (_recur19262_
                                                               _rest19323_
                                                               false)
                                                              (_E1930219311_))
                                                          (_E1930219311_)))))
                                                (_E1930219311_)))))
                                    (_E1930119325_))
                                  (let _lp19329_ ((_rest19331_ _rest19299_)
                                                  (_depth19332_ '0))
                                    (let* ((_e1933319340_ _rest19331_)
                                           (_E1933519344_
                                            (lambda ()
                                              (if (fxpositive? _depth19332_)
                                                  (_make-splice19261_
                                                   _e19267_
                                                   _depth19332_
                                                   (_recur19262_
                                                    _hd19297_
                                                    _is-e?19268_)
                                                   (_recur19262_
                                                    _rest19331_
                                                    _is-e?19268_))
                                                  (_make-cons19260_
                                                   (_recur19262_
                                                    _hd19297_
                                                    _is-e?19268_)
                                                   (_recur19262_
                                                    _rest19331_
                                                    _is-e?19268_)))))
                                           (_E1933419360_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1933319340_)
                                                  (let ((_e1933619348_
                                                         (gx#syntax-e
                                                          _e1933319340_)))
                                                    (let ((_hd1933719351_
                                                           (##car _e1933619348_))
                                                          (_tl1933819353_
                                                           (##cdr _e1933619348_)))
                                                      (let* ((_rest-hd19356_
                                                              _hd1933719351_)
                                                             (_rest-tl19358_
                                                              _tl1933819353_))
                                                        (if '#t
                                                            (if (_is-e?19268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19356_)
                        (_lp19329_ _rest-tl19358_ (fx+ _depth19332_ '1))
                        (if (fxpositive? _depth19332_)
                            (_make-splice19261_
                             _e19267_
                             _depth19332_
                             (_recur19262_ _hd19297_ _is-e?19268_)
                             (_recur19262_ _rest19331_ _is-e?19268_))
                            (_make-cons19260_
                             (_recur19262_ _hd19297_ _is-e?19268_)
                             (_recur19262_ _rest19331_ _is-e?19268_))))
                    (_E1933519344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1933519344_)))))
                                      (_E1933419360_))))
                              (_E1927619285_)))))
                    (_E1927619285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1927519364_))
                                              (if (gx#stx-vector? _e19267_)
                                                  (let ((_g19745_
                                                         (_recur19262_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19267_))
                                                          _is-e?19268_)))
                                                    (begin
                                                      (let ((_g19746_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19745_)
                         (##vector-length _g19745_)
                         1)))
                (if (not (##fx= _g19746_ 2))
                    (error "Context expects 2 values" _g19746_)))
              (let ((_e19368_ (##vector-ref _g19745_ 0))
                    (_vars19369_ (##vector-ref _g19745_ 1)))
                (values (cons 'vector _e19368_) _vars19369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19267_)
                                                      (let ((_g19747_
                                                             (_recur19262_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19267_))
                      _is-e?19268_)))
                (begin
                  (let ((_g19748_
                         (if (##values? _g19747_)
                             (##vector-length _g19747_)
                             1)))
                    (if (not (##fx= _g19748_ 2))
                        (error "Context expects 2 values" _g19748_)))
                  (let ((_e19371_ (##vector-ref _g19747_ 0))
                        (_vars19372_ (##vector-ref _g19747_ 1)))
                    (values (cons 'box _e19371_) _vars19372_))))
              (values (cons 'datum _e19267_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19749_ (_recur19262_ _e19258_ gx#ellipsis?)))
                      (begin
                        (let ((_g19750_
                               (if (##values? _g19749_)
                                   (##vector-length _g19749_)
                                   1)))
                          (if (not (##fx= _g19750_ 2))
                              (error "Context expects 2 values" _g19750_)))
                        (let ((_tree19264_ (##vector-ref _g19749_ 0))
                              (_vars19265_ (##vector-ref _g19749_ 1)))
                          (if (null? _vars19265_)
                              _tree19264_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19214_
                               _vars19265_)))))))))
        (let* ((_e1921819228_ _stx19214_)
               (_E1922019232_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19214_)))
               (_E1921919254_
                (lambda ()
                  (if (gx#stx-pair? _e1921819228_)
                      (let ((_e1922119236_ (gx#syntax-e _e1921819228_)))
                        (let ((_hd1922219239_ (##car _e1922119236_))
                              (_tl1922319241_ (##cdr _e1922119236_)))
                          (if (gx#stx-pair? _tl1922319241_)
                              (let ((_e1922419244_
                                     (gx#syntax-e _tl1922319241_)))
                                (let ((_hd1922519247_ (##car _e1922419244_))
                                      (_tl1922619249_ (##cdr _e1922419244_)))
                                  (let ((_form19252_ _hd1922519247_))
                                    (if (gx#stx-null? _tl1922619249_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19216_
                                              (_parse19217_ _form19252_))
                                             (gx#stx-source _stx19214_))
                                            (_E1922019232_))
                                        (_E1922019232_)))))
                              (_E1922019232_))))
                      (_E1922019232_)))))
          (_E1921919254_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18478_ _identifier=?18479_ _unwrap-e18480_ _wrap-e18481_)
        (letrec ((_generate-bindings18483_
                  (lambda (_target19078_
                           _ids19079_
                           _clauses19080_
                           _clause-ids19081_
                           _E19082_)
                    (letrec ((_generate119084_
                              (lambda (_clause19181_ _clause-id19182_ _E19183_)
                                (cons (cons _clause-id19182_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19078_ '())
                                             (_generate-clause18485_
                                              _target19078_
                                              _ids19079_
                                              _clause19181_
                                              _E19183_))
                                            '())))))
                      (let _lp19086_ ((_rest19088_ _clauses19080_)
                                      (_rest-ids19089_ _clause-ids19081_)
                                      (_bindings19090_ '()))
                        (let* ((_rest1909119099_ _rest19088_)
                               (_else1909319107_ (lambda () _bindings19090_))
                               (_K1909519169_
                                (lambda (_rest19110_ _clause19111_)
                                  (let* ((_rest-ids1911219119_ _rest-ids19089_)
                                         (_E1911419123_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1911219119_)))
                                         (_K1911519157_
                                          (lambda (_rest-ids19126_
                                                   _clause-id19127_)
                                            (let* ((_rest-ids1912819136_
                                                    _rest-ids19126_)
                                                   (_else1913019144_
                                                    (lambda ()
                                                      (cons (_generate119084_
                                                             _clause19111_
                                                             _clause-id19127_
                                                             _E19082_)
                                                            _bindings19090_)))
                                                   (_K1913219149_
                                                    (lambda (_next-clause-id19147_)
                                                      (_lp19086_
                                                       _rest19110_
                                                       _rest-ids19126_
                                                       (cons (_generate119084_
                                                              _clause19111_
                                                              _clause-id19127_
                                                              _next-clause-id19147_)
                                                             _bindings19090_)))))
                                              (if (##pair? _rest-ids1912819136_)
                                                  (let* ((_hd1913319152_
                                                          (##car _rest-ids1912819136_))
                                                         (_next-clause-id19155_
                                                          _hd1913319152_))
                                                    (_K1913219149_
                                                     _next-clause-id19155_))
                                                  (_else1913019144_))))))
                                    (if (##pair? _rest-ids1911219119_)
                                        (let ((_hd1911619160_
                                               (##car _rest-ids1911219119_))
                                              (_tl1911719162_
                                               (##cdr _rest-ids1911219119_)))
                                          (let* ((_clause-id19165_
                                                  _hd1911619160_)
                                                 (_rest-ids19167_
                                                  _tl1911719162_))
                                            (_K1911519157_
                                             _rest-ids19167_
                                             _clause-id19165_)))
                                        (_E1911419123_))))))
                          (if (##pair? _rest1909119099_)
                              (let ((_hd1909619172_ (##car _rest1909119099_))
                                    (_tl1909719174_ (##cdr _rest1909119099_)))
                                (let* ((_clause19177_ _hd1909619172_)
                                       (_rest19179_ _tl1909719174_))
                                  (_K1909519169_ _rest19179_ _clause19177_)))
                              (_else1909319107_)))))))
                 (_generate-body18484_
                  (lambda (_bindings19038_ _body19039_)
                    (let _recur19041_ ((_rest19043_ _bindings19038_))
                      (let* ((_rest1904419052_ _rest19043_)
                             (_else1904619060_ (lambda () _body19039_))
                             (_K1904819066_
                              (lambda (_rest19063_ _hd19064_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd19064_ '())
                                 (_recur19041_ _rest19063_)))))
                        (if (##pair? _rest1904419052_)
                            (let ((_hd1904919069_ (##car _rest1904419052_))
                                  (_tl1905019071_ (##cdr _rest1904419052_)))
                              (let* ((_hd19074_ _hd1904919069_)
                                     (_rest19076_ _tl1905019071_))
                                (_K1904819066_ _rest19076_ _hd19074_)))
                            (_else1904619060_))))))
                 (_generate-clause18485_
                  (lambda (_target18901_ _ids18902_ _clause18903_ _E18904_)
                    (letrec ((_generate118906_
                              (lambda (_hd18993_ _fender18994_ _body18995_)
                                (let ((_g19751_
                                       (_parse-clause18487_
                                        _hd18993_
                                        _ids18902_)))
                                  (begin
                                    (let ((_g19752_
                                           (if (##values? _g19751_)
                                               (##vector-length _g19751_)
                                               1)))
                                      (if (not (##fx= _g19752_ 2))
                                          (error "Context expects 2 values"
                                                 _g19752_)))
                                    (let ((_e18997_ (##vector-ref _g19751_ 0))
                                          (_mvars18998_
                                           (##vector-ref _g19751_ 1)))
                                      (let* ((_pvars19000_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars18998_)))
                                             (_E19002_
                                              (cons _E18904_
                                                    (cons _target18901_ '())))
                                             (_K19035_
                                              (gx#core-list
                                               'lambda%
                                               _pvars19000_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar19004_
                                                              _pvar19005_)
                                                       (let* ((_mvar1900619013_
                                                               _mvar19004_)
                                                              (_E1900819017_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1900619013_)))
                      (_K1900919023_
                       (lambda (_depth19020_ _id19021_)
                         (cons _id19021_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id19021_)
                                      (gx#core-list 'quote _pvar19005_)
                                      _depth19020_)
                                     '())))))
                 (if (##pair? _mvar1900619013_)
                     (let ((_hd1901019026_ (##car _mvar1900619013_))
                           (_tl1901119028_ (##cdr _mvar1900619013_)))
                       (let* ((_id19031_ _hd1901019026_)
                              (_depth19033_ _tl1901119028_))
                         (_K1900919023_ _depth19033_ _id19031_)))
                     (_E1900819017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars18998_
                                                     _pvars19000_)
                                                (if (eq? _fender18994_ '#t)
                                                    _body18995_
                                                    (gx#core-list
                                                     'if
                                                     _fender18994_
                                                     _body18995_
                                                     _E19002_))))))
                                        (_generate-match18486_
                                         _hd18993_
                                         _target18901_
                                         _e18997_
                                         _mvars18998_
                                         _K19035_
                                         _E19002_))))))))
                      (let* ((_e1890718927_ _clause18903_)
                             (_E1891618931_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1890718927_)))
                             (_E1890918965_
                              (lambda ()
                                (if (gx#stx-pair? _e1890718927_)
                                    (let ((_e1891718935_
                                           (gx#syntax-e _e1890718927_)))
                                      (let ((_hd1891818938_
                                             (##car _e1891718935_))
                                            (_tl1891918940_
                                             (##cdr _e1891718935_)))
                                        (let ((_hd18943_ _hd1891818938_))
                                          (if (gx#stx-pair? _tl1891918940_)
                                              (let ((_e1892018945_
                                                     (gx#syntax-e
                                                      _tl1891918940_)))
                                                (let ((_hd1892118948_
                                                       (##car _e1892018945_))
                                                      (_tl1892218950_
                                                       (##cdr _e1892018945_)))
                                                  (let ((_fender18953_
                                                         _hd1892118948_))
                                                    (if (gx#stx-pair?
                                                         _tl1892218950_)
                                                        (let ((_e1892318955_
                                                               (gx#syntax-e
                                                                _tl1892218950_)))
                                                          (let ((_hd1892418958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1892318955_))
                        (_tl1892518960_ (##cdr _e1892318955_)))
                    (let ((_body18963_ _hd1892418958_))
                      (if (gx#stx-null? _tl1892518960_)
                          (if '#t
                              (_generate118906_
                               _hd18943_
                               _fender18953_
                               _body18963_)
                              (_E1891618931_))
                          (_E1891618931_)))))
                (_E1891618931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1891618931_)))))
                                    (_E1891618931_))))
                             (_E1890818989_
                              (lambda ()
                                (if (gx#stx-pair? _e1890718927_)
                                    (let ((_e1891018969_
                                           (gx#syntax-e _e1890718927_)))
                                      (let ((_hd1891118972_
                                             (##car _e1891018969_))
                                            (_tl1891218974_
                                             (##cdr _e1891018969_)))
                                        (let ((_hd18977_ _hd1891118972_))
                                          (if (gx#stx-pair? _tl1891218974_)
                                              (let ((_e1891318979_
                                                     (gx#syntax-e
                                                      _tl1891218974_)))
                                                (let ((_hd1891418982_
                                                       (##car _e1891318979_))
                                                      (_tl1891518984_
                                                       (##cdr _e1891318979_)))
                                                  (let ((_body18987_
                                                         _hd1891418982_))
                                                    (if (gx#stx-null?
                                                         _tl1891518984_)
                                                        (if '#t
                                                            (_generate118906_
                                                             _hd18977_
                                                             '#t
                                                             _body18987_)
                                                            (_E1890918965_))
                                                        (_E1890918965_)))))
                                              (_E1890918965_)))))
                                    (_E1890918965_)))))
                        (_E1890818989_)))))
                 (_generate-match18486_
                  (lambda (_where18650_
                           _target18651_
                           _hd18652_
                           _mvars18653_
                           _K18654_
                           _E18655_)
                    (letrec ((_BUG18657_
                              (lambda (_q18899_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18478_
                                       _hd18652_
                                       _q18899_)))
                             (_recur18658_
                              (lambda (_e18749_
                                       _vars18750_
                                       _target18751_
                                       _E18752_
                                       _k18753_)
                                (let* ((_e1875418761_ _e18749_)
                                       (_E1875618765_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1875418761_)))
                                       (_K1875718887_
                                        (lambda (_body18768_ _tag18769_)
                                          (let ((_$e18771_ _tag18769_))
                                            (if (eq? 'any _$e18771_)
                                                (_k18753_ _vars18750_)
                                                (if (eq? 'id _$e18771_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18751_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18479_
                                                       (gx#core-list
                                                        _wrap-e18481_
                                                        _body18768_)
                                                       _target18751_)
                                                      (_k18753_ _vars18750_)
                                                      _E18752_)
                                                     _E18752_)
                                                    (if (eq? 'var _$e18771_)
                                                        (_k18753_
                                                         (cons (cons _body18768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18751_)
                       _vars18750_))
                (if (eq? 'cons _$e18771_)
                    (let ((_$e18774_ (gx#genident__1 'e))
                          (_$hd18775_ (gx#genident__1 'hd))
                          (_$tl18776_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18751_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18774_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18480_
                                           _target18751_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18775_ '())
                                     (cons (gx#core-list '##car _$e18774_)
                                           '()))
                               (cons (cons (cons _$tl18776_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18774_)
                                                 '()))
                                     '()))
                         (let* ((_body1877718784_ _body18768_)
                                (_E1877918788_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1877718784_)))
                                (_K1878018796_
                                 (lambda (_tl18791_ _hd18792_)
                                   (_recur18658_
                                    _hd18792_
                                    _vars18750_
                                    _$hd18775_
                                    _E18752_
                                    (lambda (_vars18794_)
                                      (_recur18658_
                                       _tl18791_
                                       _vars18794_
                                       _$tl18776_
                                       _E18752_
                                       _k18753_))))))
                           (if (##pair? _body1877718784_)
                               (let ((_hd1878118799_ (##car _body1877718784_))
                                     (_tl1878218801_ (##cdr _body1877718784_)))
                                 (let* ((_hd18804_ _hd1878118799_)
                                        (_tl18806_ _tl1878218801_))
                                   (_K1878018796_ _tl18806_ _hd18804_)))
                               (_E1877918788_)))))
                       _E18752_))
                    (if (eq? 'splice _$e18771_)
                        (let* ((_body1880718814_ _body18768_)
                               (_E1880918818_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1880718814_)))
                               (_K1881018869_
                                (lambda (_tl18821_ _hd18822_)
                                  (let* ((_rlen18824_
                                          (_splice-rlen18659_ _tl18821_))
                                         (_$target18826_
                                          (gx#genident__1 'target))
                                         (_$hd18828_ (gx#genident__1 'hd))
                                         (_$tl18830_ (gx#genident__1 'tl))
                                         (_$lp18832_ (gx#genident__1 'loop))
                                         (_$lp-e18834_ (gx#genident__1 'e))
                                         (_$lp-hd18836_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18838_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18840_
                                          (_splice-vars18660_ _hd18822_))
                                         (_lvars18842_
                                          (gx#gentemps _svars18840_))
                                         (_tlvars18844_
                                          (gx#gentemps _svars18840_))
                                         (_linit18848_
                                          (map (lambda (_var18846_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18842_)))
                                    (letrec ((_make-loop18851_
                                              (lambda (_vars18855_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18828_ _lvars18842_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18828_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18834_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18480_
                                                 _$hd18828_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18836_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18834_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18838_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18834_)
                                                       '()))
                                           '()))
                               (_recur18658_
                                _hd18822_
                                '()
                                _$lp-hd18836_
                                _E18752_
                                (lambda (_hdvars18857_)
                                  (cons _$lp18832_
                                        (cons _$lp-tl18838_
                                              (map (lambda (_svar18859_
                                                            _lvar18860_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18859_
                                                               _hdvars18857_
                                                               _BUG18657_)
                                                      _lvar18860_))
                                                   _svars18840_
                                                   _lvars18842_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18862_ _tlvar18863_)
                                     (cons (cons _tlvar18863_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18862_)
                                                 '())))
                                   _lvars18842_
                                   _tlvars18844_)
                              (_k18753_
                               (foldl2 (lambda (_svar18865_
                                                _tlvar18866_
                                                _r18867_)
                                         (cons (cons _svar18865_ _tlvar18866_)
                                               _r18867_))
                                       _vars18855_
                                       _svars18840_
                                       _tlvars18844_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18832_
                                                       (cons _$target18826_
                                                             _linit18848_))))))
                                      (let ((_body18853_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18826_
                                                                (cons _$tl18830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18751_
                         _rlen18824_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18658_
                                               _tl18821_
                                               _vars18750_
                                               _$tl18830_
                                               _E18752_
                                               _make-loop18851_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18751_)
                                         (if (zero? _rlen18824_)
                                             _body18853_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18751_)
                                               _rlen18824_)
                                              _body18853_
                                              _E18752_))
                                         _E18752_)))))))
                          (if (##pair? _body1880718814_)
                              (let ((_hd1881118872_ (##car _body1880718814_))
                                    (_tl1881218874_ (##cdr _body1880718814_)))
                                (let* ((_hd18877_ _hd1881118872_)
                                       (_tl18879_ _tl1881218874_))
                                  (_K1881018869_ _tl18879_ _hd18877_)))
                              (_E1880918818_)))
                        (if (eq? 'null _$e18771_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18751_)
                             (_k18753_ _vars18750_)
                             _E18752_)
                            (if (eq? 'vector _$e18771_)
                                (let ((_$e18881_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18751_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18881_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18480_
                                                        _target18751_))
                                                      '()))
                                          '())
                                    (_recur18658_
                                     _body18768_
                                     _vars18750_
                                     _$e18881_
                                     _E18752_
                                     _k18753_))
                                   _E18752_))
                                (if (eq? 'box _$e18771_)
                                    (let ((_$e18883_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18751_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18883_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18480_
                                                            _target18751_))
                                                          '()))
                                              '())
                                        (_recur18658_
                                         _body18768_
                                         _vars18750_
                                         _$e18883_
                                         _E18752_
                                         _k18753_))
                                       _E18752_))
                                    (if (eq? 'datum _$e18771_)
                                        (let ((_$e18885_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18751_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18885_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18751_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18885_
                                              _body18768_)
                                             (_k18753_ _vars18750_)
                                             _E18752_))
                                           _E18752_))
                                        (_BUG18657_ _e18749_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1875418761_)
                                      (let ((_hd1875818890_
                                             (##car _e1875418761_))
                                            (_tl1875918892_
                                             (##cdr _e1875418761_)))
                                        (let* ((_tag18895_ _hd1875818890_)
                                               (_body18897_ _tl1875918892_))
                                          (_K1875718887_
                                           _body18897_
                                           _tag18895_)))
                                      (_E1875618765_)))))
                             (_splice-rlen18659_
                              (lambda (_e18711_)
                                (let _lp18713_ ((_e18715_ _e18711_)
                                                (_n18716_ '0))
                                  (let* ((_e1871718724_ _e18715_)
                                         (_E1871918728_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1871718724_)))
                                         (_K1872018737_
                                          (lambda (_body18731_ _tag18732_)
                                            (let ((_$e18734_ _tag18732_))
                                              (if (eq? 'splice _$e18734_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18478_
                                                   _where18650_)
                                                  (if (eq? 'cons _$e18734_)
                                                      (_lp18713_
                                                       (cdr _body18731_)
                                                       (fx+ _n18716_ '1))
                                                      _n18716_))))))
                                    (if (##pair? _e1871718724_)
                                        (let ((_hd1872118740_
                                               (##car _e1871718724_))
                                              (_tl1872218742_
                                               (##cdr _e1871718724_)))
                                          (let* ((_tag18745_ _hd1872118740_)
                                                 (_body18747_ _tl1872218742_))
                                            (_K1872018737_
                                             _body18747_
                                             _tag18745_)))
                                        (_E1871918728_))))))
                             (_splice-vars18660_
                              (lambda (_e18667_)
                                (let _recur18669_ ((_e18671_ _e18667_)
                                                   (_vars18672_ '()))
                                  (let* ((_e1867318680_ _e18671_)
                                         (_E1867518684_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1867318680_)))
                                         (_K1867618699_
                                          (lambda (_body18687_ _tag18688_)
                                            (let ((_$e18690_ _tag18688_))
                                              (if (eq? 'var _$e18690_)
                                                  (cons _body18687_
                                                        _vars18672_)
                                                  (if (let ((_$e18693_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e18690_)))
                (if _$e18693_ _$e18693_ (eq? 'splice _$e18690_)))
              (_recur18669_
               (cdr _body18687_)
               (_recur18669_ (car _body18687_) _vars18672_))
              (if (let ((_$e18696_ (eq? 'vector _$e18690_)))
                    (if _$e18696_ _$e18696_ (eq? 'box _$e18690_)))
                  (_recur18669_ _body18687_ _vars18672_)
                  _vars18672_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1867318680_)
                                        (let ((_hd1867718702_
                                               (##car _e1867318680_))
                                              (_tl1867818704_
                                               (##cdr _e1867318680_)))
                                          (let* ((_tag18707_ _hd1867718702_)
                                                 (_body18709_ _tl1867818704_))
                                            (_K1867618699_
                                             _body18709_
                                             _tag18707_)))
                                        (_E1867518684_))))))
                             (_make-body18661_
                              (lambda (_vars18663_)
                                (cons _K18654_
                                      (map (lambda (_mvar18665_)
                                             (assgetq (car _mvar18665_)
                                                      _vars18663_
                                                      _BUG18657_))
                                           _mvars18653_)))))
                      (_recur18658_
                       _hd18652_
                       '()
                       _target18651_
                       _E18655_
                       _make-body18661_))))
                 (_parse-clause18487_
                  (lambda (_hd18556_ _ids18557_)
                    (let _recur18559_ ((_e18561_ _hd18556_)
                                       (_vars18562_ '())
                                       (_depth18563_ '0))
                      (if (gx#identifier? _e18561_)
                          (if (gx#underscore? _e18561_)
                              (values '(any) _vars18562_)
                              (if (gx#ellipsis? _e18561_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18478_
                                   _hd18556_)
                                  (if (find (lambda (_id18565_)
                                              (gx#bound-identifier=?
                                               _e18561_
                                               _id18565_))
                                            _ids18557_)
                                      (values (cons 'id _e18561_) _vars18562_)
                                      (if (find (lambda (_var18567_)
                                                  (gx#bound-identifier=?
                                                   _e18561_
                                                   (car _var18567_)))
                                                _vars18562_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18478_
                                           _e18561_)
                                          (values (cons 'var _e18561_)
                                                  (cons (cons _e18561_
                                                              _depth18563_)
                                                        _vars18562_))))))
                          (if (gx#stx-pair? _e18561_)
                              (let* ((_e1856818575_ _e18561_)
                                     (_E1857018579_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1856818575_)))
                                     (_E1856918640_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1856818575_)
                                            (let ((_e1857118583_
                                                   (gx#syntax-e
                                                    _e1856818575_)))
                                              (let ((_hd1857218586_
                                                     (##car _e1857118583_))
                                                    (_tl1857318588_
                                                     (##cdr _e1857118583_)))
                                                (let* ((_hd18591_
                                                        _hd1857218586_)
                                                       (_rest18593_
                                                        _tl1857318588_))
                                                  (if '#t
                                                      (let* ((_make-pair18608_
                                                              (lambda (_tag18595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18596_
                               _tl18597_)
                        (let* ((_hd-depth18599_
                                (if (eq? _tag18595_ 'splice)
                                    (fx+ _depth18563_ '1)
                                    _depth18563_))
                               (_g19753_
                                (_recur18559_
                                 _hd18596_
                                 _vars18562_
                                 _hd-depth18599_)))
                          (begin
                            (let ((_g19754_
                                   (if (##values? _g19753_)
                                       (##vector-length _g19753_)
                                       1)))
                              (if (not (##fx= _g19754_ 2))
                                  (error "Context expects 2 values" _g19754_)))
                            (let ((_hd18601_ (##vector-ref _g19753_ 0))
                                  (_vars18602_ (##vector-ref _g19753_ 1)))
                              (let ((_g19755_
                                     (_recur18559_
                                      _tl18597_
                                      _vars18602_
                                      _depth18563_)))
                                (begin
                                  (let ((_g19756_
                                         (if (##values? _g19755_)
                                             (##vector-length _g19755_)
                                             1)))
                                    (if (not (##fx= _g19756_ 2))
                                        (error "Context expects 2 values"
                                               _g19756_)))
                                  (let ((_tl18604_ (##vector-ref _g19755_ 0))
                                        (_vars18605_
                                         (##vector-ref _g19755_ 1)))
                                    (let ()
                                      (values (cons _tag18595_
                                                    (cons _hd18601_ _tl18604_))
                                              _vars18605_))))))))))
                     (_e1860918616_ _rest18593_)
                     (_E1861118620_
                      (lambda ()
                        (_make-pair18608_ 'cons _hd18591_ _rest18593_)))
                     (_E1861018636_
                      (lambda ()
                        (if (gx#stx-pair? _e1860918616_)
                            (let ((_e1861218624_ (gx#syntax-e _e1860918616_)))
                              (let ((_hd1861318627_ (##car _e1861218624_))
                                    (_tl1861418629_ (##cdr _e1861218624_)))
                                (let* ((_rest-hd18632_ _hd1861318627_)
                                       (_rest-tl18634_ _tl1861418629_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18632_)
                                          (_make-pair18608_
                                           'splice
                                           _hd18591_
                                           _rest-tl18634_)
                                          (_make-pair18608_
                                           'cons
                                           _hd18591_
                                           _rest18593_))
                                      (_E1861118620_)))))
                            (_E1861118620_)))))
                (_E1861018636_))
              (_E1857018579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1857018579_)))))
                                (_E1856918640_))
                              (if (gx#stx-null? _e18561_)
                                  (values '(null) _vars18562_)
                                  (if (gx#stx-vector? _e18561_)
                                      (let ((_g19757_
                                             (_recur18559_
                                              (vector->list
                                               (gx#syntax-e _e18561_))
                                              _vars18562_
                                              _depth18563_)))
                                        (begin
                                          (let ((_g19758_
                                                 (if (##values? _g19757_)
                                                     (##vector-length _g19757_)
                                                     1)))
                                            (if (not (##fx= _g19758_ 2))
                                                (error "Context expects 2 values"
                                                       _g19758_)))
                                          (let ((_e18644_
                                                 (##vector-ref _g19757_ 0))
                                                (_vars18645_
                                                 (##vector-ref _g19757_ 1)))
                                            (values (cons 'vector _e18644_)
                                                    _vars18645_))))
                                      (if (gx#stx-box? _e18561_)
                                          (let ((_g19759_
                                                 (_recur18559_
                                                  (unbox (gx#syntax-e
                                                          _e18561_))
                                                  _vars18562_
                                                  _depth18563_)))
                                            (begin
                                              (let ((_g19760_
                                                     (if (##values? _g19759_)
                                                         (##vector-length
                                                          _g19759_)
                                                         1)))
                                                (if (not (##fx= _g19760_ 2))
                                                    (error "Context expects 2 values"
                                                           _g19760_)))
                                              (let ((_e18647_
                                                     (##vector-ref _g19759_ 0))
                                                    (_vars18648_
                                                     (##vector-ref
                                                      _g19759_
                                                      1)))
                                                (values (cons 'box _e18647_)
                                                        _vars18648_))))
                                          (if (gx#stx-datum? _e18561_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18561_))
                                                      _vars18562_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18478_
                                               _e18561_)))))))))))
          (let* ((_e1848818501_ _stx18478_)
                 (_E1849018505_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1848818501_)))
                 (_E1848918552_
                  (lambda ()
                    (if (gx#stx-pair? _e1848818501_)
                        (let ((_e1849118509_ (gx#syntax-e _e1848818501_)))
                          (let ((_hd1849218512_ (##car _e1849118509_))
                                (_tl1849318514_ (##cdr _e1849118509_)))
                            (if (gx#stx-pair? _tl1849318514_)
                                (let ((_e1849418517_
                                       (gx#syntax-e _tl1849318514_)))
                                  (let ((_hd1849518520_ (##car _e1849418517_))
                                        (_tl1849618522_ (##cdr _e1849418517_)))
                                    (let ((_expr18525_ _hd1849518520_))
                                      (if (gx#stx-pair? _tl1849618522_)
                                          (let ((_e1849718527_
                                                 (gx#syntax-e _tl1849618522_)))
                                            (let ((_hd1849818530_
                                                   (##car _e1849718527_))
                                                  (_tl1849918532_
                                                   (##cdr _e1849718527_)))
                                              (let* ((_ids18535_
                                                      _hd1849818530_)
                                                     (_clauses18537_
                                                      _tl1849918532_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18535_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18478_
                                                         _ids18535_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18537_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18478_)
                    (let* ((_ids18539_ (gx#syntax->list _ids18535_))
                           (_clauses18541_ (gx#syntax->list _clauses18537_))
                           (_clause-ids18543_ (gx#gentemps _clauses18541_))
                           (_E18545_ (gx#genident__0))
                           (_target18547_ (gx#genident__0))
                           (_first18549_
                            (if (null? _clauses18541_)
                                _E18545_
                                (car _clause-ids18543_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18545_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18547_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18547_))
                                            '()))
                                '())
                          (_generate-body18484_
                           (_generate-bindings18483_
                            _target18547_
                            _ids18539_
                            _clauses18541_
                            _clause-ids18543_
                            _E18545_)
                           (cons _first18549_ (cons _expr18525_ '()))))
                         (gx#stx-source _stx18478_)))
                       (gx#stx-source _stx18478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1849018505_)))))
                                          (_E1849018505_)))))
                                (_E1849018505_))))
                        (_E1849018505_)))))
            (_E1848918552_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx19188_)
          (let* ((_identifier=?19190_ 'free-identifier=?)
                 (_unwrap-e19192_ 'syntax-e)
                 (_wrap-e19194_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19188_
             _identifier=?19190_
             _unwrap-e19192_
             _wrap-e19194_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx19196_ _identifier=?19197_)
          (let* ((_unwrap-e19199_ 'syntax-e) (_wrap-e19201_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19196_
             _identifier=?19197_
             _unwrap-e19199_
             _wrap-e19201_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx19203_ _identifier=?19204_ _unwrap-e19205_)
          (let ((_wrap-e19207_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19203_
             _identifier=?19204_
             _unwrap-e19205_
             _wrap-e19207_))))
      (define gx#macro-expand-syntax-case
        (lambda _g19762_
          (let ((_g19761_ (length _g19762_)))
            (cond ((##fx= _g19761_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g19762_))
                  ((##fx= _g19761_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g19762_))
                  ((##fx= _g19761_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g19762_))
                  ((##fx= _g19761_ 4)
                   (apply gx#macro-expand-syntax-case__% _g19762_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g19762_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18475_)
      (if (gx#identifier? _stx18475_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18475_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18433_ . _rest18434_)
      (let ((_len18436_ (length _hd18433_)))
        (let _lp18438_ ((_rest18440_ _rest18434_))
          (let* ((_rest1844118449_ _rest18440_)
                 (_else1844318457_ (lambda () '#!void))
                 (_K1844518463_
                  (lambda (_rest18460_ _hd18461_)
                    (if (fx= _len18436_ (length _hd18461_))
                        (_lp18438_ _rest18460_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18461_)))))
            (if (##pair? _rest1844118449_)
                (let ((_hd1844618466_ (##car _rest1844118449_))
                      (_tl1844718468_ (##cdr _rest1844118449_)))
                  (let* ((_hd18471_ _hd1844618466_)
                         (_rest18473_ _tl1844718468_))
                    (_K1844518463_ _rest18473_ _hd18471_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18391_ _n18392_)
      (let _lp18394_ ((_rest18396_ _stx18391_) (_r18397_ '()))
        (if (gx#stx-pair? _rest18396_)
            (let* ((_g1839818405_ (gx#syntax-e _rest18396_))
                   (_E1840018409_
                    (lambda () (error '"No clause matching" _g1839818405_)))
                   (_K1840118415_
                    (lambda (_rest18412_ _hd18413_)
                      (_lp18394_ _rest18412_ (cons _hd18413_ _r18397_)))))
              (if (##pair? _g1839818405_)
                  (let ((_hd1840218418_ (##car _g1839818405_))
                        (_tl1840318420_ (##cdr _g1839818405_)))
                    (let* ((_hd18423_ _hd1840218418_)
                           (_rest18425_ _tl1840318420_))
                      (_K1840118415_ _rest18425_ _hd18423_)))
                  (_E1840018409_)))
            (let _lp18427_ ((_n18429_ _n18392_)
                            (_l18430_ _r18397_)
                            (_r18431_ _rest18396_))
              (if (null? _l18430_)
                  (values _l18430_ _r18431_)
                  (if (fxpositive? _n18429_)
                      (_lp18427_
                       (fx- _n18429_ '1)
                       (cdr _l18430_)
                       (cons (car _l18430_) _r18431_))
                      (values (reverse _l18430_) _r18431_)))))))))
