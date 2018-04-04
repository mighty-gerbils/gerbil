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
    (lambda _$args19733_
      (apply make-struct-instance gx#syntax-pattern::t _$args19733_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19730_ _stx19731_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19731_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19212_)
      (letrec ((_generate19214_
                (lambda (_e19441_)
                  (letrec ((_BUG19443_
                            (lambda (_q19605_)
                              (error '"BUG: syntax; generate"
                                     _stx19212_
                                     _e19441_
                                     _q19605_)))
                           (_local-pattern-e19444_
                            (lambda (_pat19603_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19603_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19445_
                            (lambda (_q19600_ _vars19601_)
                              (assgetq _q19600_ _vars19601_ _BUG19443_)))
                           (_getarg19446_
                            (lambda (_arg19566_ _vars19567_)
                              (let* ((_arg1956819575_ _arg19566_)
                                     (_E1957019579_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1956819575_)))
                                     (_K1957119588_
                                      (lambda (_e19582_ _tag19583_)
                                        (let ((_$e19585_ _tag19583_))
                                          (if (eq? 'ref _$e19585_)
                                              (_getvar19445_
                                               _e19582_
                                               _vars19567_)
                                              (if (eq? 'pattern _$e19585_)
                                                  (_local-pattern-e19444_
                                                   _e19582_)
                                                  (_BUG19443_ _arg19566_)))))))
                                (if (##pair? _arg1956819575_)
                                    (let ((_hd1957219591_
                                           (##car _arg1956819575_))
                                          (_tl1957319593_
                                           (##cdr _arg1956819575_)))
                                      (let* ((_tag19596_ _hd1957219591_)
                                             (_e19598_ _tl1957319593_))
                                        (_K1957119588_ _e19598_ _tag19596_)))
                                    (_E1957019579_))))))
                    (let _recur19448_ ((_e19450_ _e19441_) (_vars19451_ '()))
                      (let* ((_e1945219459_ _e19450_)
                             (_E1945419463_
                              (lambda ()
                                (error '"No clause matching" _e1945219459_)))
                             (_K1945519554_
                              (lambda (_body19466_ _tag19467_)
                                (let ((_$e19469_ _tag19467_))
                                  (if (eq? 'datum _$e19469_)
                                      (gx#core-list 'quote _body19466_)
                                      (if (eq? 'term _$e19469_)
                                          (let ((_id19472_
                                                 (gx#syntax-local-unwrap
                                                  _body19466_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19472_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19474_
                                                       (##direct-structure-ref
                                                        _id19472_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19474_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19466_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19466_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19466_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19472_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19466_)
                                                    (_BUG19443_ _e19450_))))
                                          (if (eq? 'pattern _$e19469_)
                                              (_local-pattern-e19444_
                                               _body19466_)
                                              (if (eq? 'ref _$e19469_)
                                                  (_getvar19445_
                                                   _body19466_
                                                   _vars19451_)
                                                  (if (eq? 'cons _$e19469_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19448_
                                                        (car _body19466_)
                                                        _vars19451_)
                                                       (_recur19448_
                                                        (cdr _body19466_)
                                                        _vars19451_))
                                                      (if (eq? 'vector
                                                               _$e19469_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19448_
                                                            _body19466_
                                                            _vars19451_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19469_)
                      (gx#core-list
                       'box
                       (_recur19448_ _body19466_ _vars19451_))
                      (if (eq? 'splice _$e19469_)
                          (let* ((_body1947519486_ _body19466_)
                                 (_E1947719490_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1947519486_)))
                                 (_K1947819528_
                                  (lambda (_args19493_
                                           _iv19494_
                                           _hd19495_
                                           _depth19496_)
                                    (let* ((_targets19502_
                                            (map (lambda (_g1949719499_)
                                                   (_getarg19446_
                                                    _g1949719499_
                                                    _vars19451_))
                                                 _args19493_))
                                           (_fold-in19504_
                                            (gx#gentemps _args19493_))
                                           (_fold-out19506_ (gx#genident__0))
                                           (_lambda-args19508_
                                            (foldr1 cons
                                                    (cons _fold-out19506_ '())
                                                    _fold-in19504_))
                                           (_lambda-body19525_
                                            (if (fx> _depth19496_ '1)
                                                (let ((_r-args19516_
                                                       (map (lambda (_arg19510_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19510_)))
                    _args19493_))
              (_r-vars19517_
               (foldr2 (lambda (_arg19512_ _var19513_ _r19514_)
                         (cons (cons (cdr _arg19512_) _var19513_) _r19514_))
                       _vars19451_
                       _args19493_
                       _fold-in19504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19448_
                                                   (cons 'splice
                                                         (cons (fx- _depth19496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19495_
                             (cons (cons 'var _fold-out19506_)
                                   _r-args19516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19517_))
                                                (let ((_hd-vars19523_
                                                       (foldr2 (lambda (_arg19519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19520_
                                _r19521_)
                         (cons (cons (cdr _arg19519_) _var19520_) _r19521_))
                       _vars19451_
                       _args19493_
                       _fold-in19504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19448_
                                                    _hd19495_
                                                    _hd-vars19523_)
                                                   _fold-out19506_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19502_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19502_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19508_
                                         _lambda-body19525_)
                                        (_recur19448_ _iv19494_ _vars19451_)
                                        _targets19502_))))))
                            (if (##pair? _body1947519486_)
                                (let ((_hd1947919531_ (##car _body1947519486_))
                                      (_tl1948019533_
                                       (##cdr _body1947519486_)))
                                  (let ((_depth19536_ _hd1947919531_))
                                    (if (##pair? _tl1948019533_)
                                        (let ((_hd1948119538_
                                               (##car _tl1948019533_))
                                              (_tl1948219540_
                                               (##cdr _tl1948019533_)))
                                          (let ((_hd19543_ _hd1948119538_))
                                            (if (##pair? _tl1948219540_)
                                                (let ((_hd1948319545_
                                                       (##car _tl1948219540_))
                                                      (_tl1948419547_
                                                       (##cdr _tl1948219540_)))
                                                  (let* ((_iv19550_
                                                          _hd1948319545_)
                                                         (_args19552_
                                                          _tl1948419547_))
                                                    (_K1947819528_
                                                     _args19552_
                                                     _iv19550_
                                                     _hd19543_
                                                     _depth19536_)))
                                                (_E1947719490_))))
                                        (_E1947719490_))))
                                (_E1947719490_)))
                          (if (eq? 'var _$e19469_)
                              _body19466_
                              (_BUG19443_ _e19450_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1945219459_)
                            (let ((_hd1945619557_ (##car _e1945219459_))
                                  (_tl1945719559_ (##cdr _e1945219459_)))
                              (let* ((_tag19562_ _hd1945619557_)
                                     (_body19564_ _tl1945719559_))
                                (_K1945519554_ _body19564_ _tag19562_)))
                            (_E1945419463_)))))))
               (_parse19215_
                (lambda (_e19256_)
                  (letrec ((_make-cons19258_
                            (lambda (_hd19433_ _tl19434_)
                              (let ((_g19735_ _hd19433_) (_g19737_ _tl19434_))
                                (begin
                                  (let ((_g19736_
                                         (if (##values? _g19735_)
                                             (##vector-length _g19735_)
                                             1)))
                                    (if (not (##fx= _g19736_ 2))
                                        (error "Context expects 2 values"
                                               _g19736_)))
                                  (let ((_g19738_
                                         (if (##values? _g19737_)
                                             (##vector-length _g19737_)
                                             1)))
                                    (if (not (##fx= _g19738_ 2))
                                        (error "Context expects 2 values"
                                               _g19738_)))
                                  (let ((_hd-e19436_ (##vector-ref _g19735_ 0))
                                        (_hd-vars19437_
                                         (##vector-ref _g19735_ 1)))
                                    (let ((_tl-e19438_
                                           (##vector-ref _g19737_ 0))
                                          (_tl-vars19439_
                                           (##vector-ref _g19737_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19436_
                                                          _tl-e19438_))
                                              (append _hd-vars19437_
                                                      _tl-vars19439_))))))))
                           (_make-splice19259_
                            (lambda (_where19372_
                                     _depth19373_
                                     _hd19374_
                                     _tl19375_)
                              (let ((_g19739_ _hd19374_) (_g19741_ _tl19375_))
                                (begin
                                  (let ((_g19740_
                                         (if (##values? _g19739_)
                                             (##vector-length _g19739_)
                                             1)))
                                    (if (not (##fx= _g19740_ 2))
                                        (error "Context expects 2 values"
                                               _g19740_)))
                                  (let ((_g19742_
                                         (if (##values? _g19741_)
                                             (##vector-length _g19741_)
                                             1)))
                                    (if (not (##fx= _g19742_ 2))
                                        (error "Context expects 2 values"
                                               _g19742_)))
                                  (let ((_hd-e19377_ (##vector-ref _g19739_ 0))
                                        (_hd-vars19378_
                                         (##vector-ref _g19739_ 1)))
                                    (let ((_tl-e19379_
                                           (##vector-ref _g19741_ 0))
                                          (_tl-vars19380_
                                           (##vector-ref _g19741_ 1)))
                                      (let _lp19382_ ((_rest19384_
                                                       _hd-vars19378_)
                                                      (_targets19385_ '())
                                                      (_vars19386_
                                                       _tl-vars19380_))
                                        (let* ((_rest1938719397_ _rest19384_)
                                               (_else1938919405_
                                                (lambda ()
                                                  (if (null? _targets19385_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19212_
                                                       _where19372_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19373_
                                  (cons _hd-e19377_
                                        (cons _tl-e19379_ _targets19385_))))
                      _vars19386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1939119414_
                                                (lambda (_rest19408_
                                                         _hd-pat19409_
                                                         _hd-depth*19410_)
                                                  (let ((_hd-depth19412_
                                                         (fx- _hd-depth*19410_
                                                              _depth19373_)))
                                                    (if (fxpositive?
                                                         _hd-depth19412_)
                                                        (_lp19382_
                                                         _rest19408_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19409_)
                       _targets19385_)
                 (cons (cons _hd-depth19412_ _hd-pat19409_) _vars19386_))
                (if (fxzero? _hd-depth19412_)
                    (_lp19382_
                     _rest19408_
                     (cons (cons 'pattern _hd-pat19409_) _targets19385_)
                     _vars19386_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19212_
                     _where19372_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1938719397_)
                                              (let ((_hd1939219417_
                                                     (##car _rest1938719397_))
                                                    (_tl1939319419_
                                                     (##cdr _rest1938719397_)))
                                                (if (##pair? _hd1939219417_)
                                                    (let ((_hd1939419422_
                                                           (##car _hd1939219417_))
                                                          (_tl1939519424_
                                                           (##cdr _hd1939219417_)))
                                                      (let* ((_hd-depth*19427_
                                                              _hd1939419422_)
                                                             (_hd-pat19429_
                                                              _tl1939519424_)
                                                             (_rest19431_
                                                              _tl1939319419_))
                                                        (_K1939119414_
                                                         _rest19431_
                                                         _hd-pat19429_
                                                         _hd-depth*19427_)))
                                                    (_else1938919405_)))
                                              (_else1938919405_))))))))))
                           (_recur19260_
                            (lambda (_e19265_ _is-e?19266_)
                              (if (_is-e?19266_ _e19265_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19212_)
                                  (if (gx#syntax-local-pattern? _e19265_)
                                      (let* ((_pat19268_
                                              (gx#syntax-local-e__0 _e19265_))
                                             (_depth19270_
                                              (##structure-ref
                                               _pat19268_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19270_)
                                            (values (cons 'ref _pat19268_)
                                                    (cons (cons _depth19270_
                                                                _pat19268_)
                                                          '()))
                                            (values (cons 'pattern _pat19268_)
                                                    '())))
                                      (if (gx#identifier? _e19265_)
                                          (values (cons 'term _e19265_) '())
                                          (if (gx#stx-pair? _e19265_)
                                              (let* ((_e1927219279_ _e19265_)
                                                     (_E1927419283_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1927219279_)))
                                                     (_E1927319362_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1927219279_)
                                                            (let ((_e1927519287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1927219279_)))
                      (let ((_hd1927619290_ (##car _e1927519287_))
                            (_tl1927719292_ (##cdr _e1927519287_)))
                        (let* ((_hd19295_ _hd1927619290_)
                               (_rest19297_ _tl1927719292_))
                          (if '#t
                              (if (_is-e?19266_ _hd19295_)
                                  (let* ((_e1929819305_ _rest19297_)
                                         (_E1930019309_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19212_
                                             _e19265_)))
                                         (_E1929919323_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1929819305_)
                                                (let ((_e1930119313_
                                                       (gx#syntax-e
                                                        _e1929819305_)))
                                                  (let ((_hd1930219316_
                                                         (##car _e1930119313_))
                                                        (_tl1930319318_
                                                         (##cdr _e1930119313_)))
                                                    (let ((_rest19321_
                                                           _hd1930219316_))
                                                      (if (gx#stx-null?
                                                           _tl1930319318_)
                                                          (if '#t
                                                              (_recur19260_
                                                               _rest19321_
                                                               false)
                                                              (_E1930019309_))
                                                          (_E1930019309_)))))
                                                (_E1930019309_)))))
                                    (_E1929919323_))
                                  (let _lp19327_ ((_rest19329_ _rest19297_)
                                                  (_depth19330_ '0))
                                    (let* ((_e1933119338_ _rest19329_)
                                           (_E1933319342_
                                            (lambda ()
                                              (if (fxpositive? _depth19330_)
                                                  (_make-splice19259_
                                                   _e19265_
                                                   _depth19330_
                                                   (_recur19260_
                                                    _hd19295_
                                                    _is-e?19266_)
                                                   (_recur19260_
                                                    _rest19329_
                                                    _is-e?19266_))
                                                  (_make-cons19258_
                                                   (_recur19260_
                                                    _hd19295_
                                                    _is-e?19266_)
                                                   (_recur19260_
                                                    _rest19329_
                                                    _is-e?19266_)))))
                                           (_E1933219358_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1933119338_)
                                                  (let ((_e1933419346_
                                                         (gx#syntax-e
                                                          _e1933119338_)))
                                                    (let ((_hd1933519349_
                                                           (##car _e1933419346_))
                                                          (_tl1933619351_
                                                           (##cdr _e1933419346_)))
                                                      (let* ((_rest-hd19354_
                                                              _hd1933519349_)
                                                             (_rest-tl19356_
                                                              _tl1933619351_))
                                                        (if '#t
                                                            (if (_is-e?19266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19354_)
                        (_lp19327_ _rest-tl19356_ (fx+ _depth19330_ '1))
                        (if (fxpositive? _depth19330_)
                            (_make-splice19259_
                             _e19265_
                             _depth19330_
                             (_recur19260_ _hd19295_ _is-e?19266_)
                             (_recur19260_ _rest19329_ _is-e?19266_))
                            (_make-cons19258_
                             (_recur19260_ _hd19295_ _is-e?19266_)
                             (_recur19260_ _rest19329_ _is-e?19266_))))
                    (_E1933319342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1933319342_)))))
                                      (_E1933219358_))))
                              (_E1927419283_)))))
                    (_E1927419283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1927319362_))
                                              (if (gx#stx-vector? _e19265_)
                                                  (let ((_g19743_
                                                         (_recur19260_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19265_))
                                                          _is-e?19266_)))
                                                    (begin
                                                      (let ((_g19744_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19743_)
                         (##vector-length _g19743_)
                         1)))
                (if (not (##fx= _g19744_ 2))
                    (error "Context expects 2 values" _g19744_)))
              (let ((_e19366_ (##vector-ref _g19743_ 0))
                    (_vars19367_ (##vector-ref _g19743_ 1)))
                (values (cons 'vector _e19366_) _vars19367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19265_)
                                                      (let ((_g19745_
                                                             (_recur19260_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19265_))
                      _is-e?19266_)))
                (begin
                  (let ((_g19746_
                         (if (##values? _g19745_)
                             (##vector-length _g19745_)
                             1)))
                    (if (not (##fx= _g19746_ 2))
                        (error "Context expects 2 values" _g19746_)))
                  (let ((_e19369_ (##vector-ref _g19745_ 0))
                        (_vars19370_ (##vector-ref _g19745_ 1)))
                    (values (cons 'box _e19369_) _vars19370_))))
              (values (cons 'datum _e19265_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19747_ (_recur19260_ _e19256_ gx#ellipsis?)))
                      (begin
                        (let ((_g19748_
                               (if (##values? _g19747_)
                                   (##vector-length _g19747_)
                                   1)))
                          (if (not (##fx= _g19748_ 2))
                              (error "Context expects 2 values" _g19748_)))
                        (let ((_tree19262_ (##vector-ref _g19747_ 0))
                              (_vars19263_ (##vector-ref _g19747_ 1)))
                          (if (null? _vars19263_)
                              _tree19262_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19212_
                               _vars19263_)))))))))
        (let* ((_e1921619226_ _stx19212_)
               (_E1921819230_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19212_)))
               (_E1921719252_
                (lambda ()
                  (if (gx#stx-pair? _e1921619226_)
                      (let ((_e1921919234_ (gx#syntax-e _e1921619226_)))
                        (let ((_hd1922019237_ (##car _e1921919234_))
                              (_tl1922119239_ (##cdr _e1921919234_)))
                          (if (gx#stx-pair? _tl1922119239_)
                              (let ((_e1922219242_
                                     (gx#syntax-e _tl1922119239_)))
                                (let ((_hd1922319245_ (##car _e1922219242_))
                                      (_tl1922419247_ (##cdr _e1922219242_)))
                                  (let ((_form19250_ _hd1922319245_))
                                    (if (gx#stx-null? _tl1922419247_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19214_
                                              (_parse19215_ _form19250_))
                                             (gx#stx-source _stx19212_))
                                            (_E1921819230_))
                                        (_E1921819230_)))))
                              (_E1921819230_))))
                      (_E1921819230_)))))
          (_E1921719252_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18476_ _identifier=?18477_ _unwrap-e18478_ _wrap-e18479_)
        (letrec ((_generate-bindings18481_
                  (lambda (_target19076_
                           _ids19077_
                           _clauses19078_
                           _clause-ids19079_
                           _E19080_)
                    (letrec ((_generate119082_
                              (lambda (_clause19179_ _clause-id19180_ _E19181_)
                                (cons (cons _clause-id19180_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19076_ '())
                                             (_generate-clause18483_
                                              _target19076_
                                              _ids19077_
                                              _clause19179_
                                              _E19181_))
                                            '())))))
                      (let _lp19084_ ((_rest19086_ _clauses19078_)
                                      (_rest-ids19087_ _clause-ids19079_)
                                      (_bindings19088_ '()))
                        (let* ((_rest1908919097_ _rest19086_)
                               (_else1909119105_ (lambda () _bindings19088_))
                               (_K1909319167_
                                (lambda (_rest19108_ _clause19109_)
                                  (let* ((_rest-ids1911019117_ _rest-ids19087_)
                                         (_E1911219121_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1911019117_)))
                                         (_K1911319155_
                                          (lambda (_rest-ids19124_
                                                   _clause-id19125_)
                                            (let* ((_rest-ids1912619134_
                                                    _rest-ids19124_)
                                                   (_else1912819142_
                                                    (lambda ()
                                                      (cons (_generate119082_
                                                             _clause19109_
                                                             _clause-id19125_
                                                             _E19080_)
                                                            _bindings19088_)))
                                                   (_K1913019147_
                                                    (lambda (_next-clause-id19145_)
                                                      (_lp19084_
                                                       _rest19108_
                                                       _rest-ids19124_
                                                       (cons (_generate119082_
                                                              _clause19109_
                                                              _clause-id19125_
                                                              _next-clause-id19145_)
                                                             _bindings19088_)))))
                                              (if (##pair? _rest-ids1912619134_)
                                                  (let* ((_hd1913119150_
                                                          (##car _rest-ids1912619134_))
                                                         (_next-clause-id19153_
                                                          _hd1913119150_))
                                                    (_K1913019147_
                                                     _next-clause-id19153_))
                                                  (_else1912819142_))))))
                                    (if (##pair? _rest-ids1911019117_)
                                        (let ((_hd1911419158_
                                               (##car _rest-ids1911019117_))
                                              (_tl1911519160_
                                               (##cdr _rest-ids1911019117_)))
                                          (let* ((_clause-id19163_
                                                  _hd1911419158_)
                                                 (_rest-ids19165_
                                                  _tl1911519160_))
                                            (_K1911319155_
                                             _rest-ids19165_
                                             _clause-id19163_)))
                                        (_E1911219121_))))))
                          (if (##pair? _rest1908919097_)
                              (let ((_hd1909419170_ (##car _rest1908919097_))
                                    (_tl1909519172_ (##cdr _rest1908919097_)))
                                (let* ((_clause19175_ _hd1909419170_)
                                       (_rest19177_ _tl1909519172_))
                                  (_K1909319167_ _rest19177_ _clause19175_)))
                              (_else1909119105_)))))))
                 (_generate-body18482_
                  (lambda (_bindings19036_ _body19037_)
                    (let _recur19039_ ((_rest19041_ _bindings19036_))
                      (let* ((_rest1904219050_ _rest19041_)
                             (_else1904419058_ (lambda () _body19037_))
                             (_K1904619064_
                              (lambda (_rest19061_ _hd19062_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd19062_ '())
                                 (_recur19039_ _rest19061_)))))
                        (if (##pair? _rest1904219050_)
                            (let ((_hd1904719067_ (##car _rest1904219050_))
                                  (_tl1904819069_ (##cdr _rest1904219050_)))
                              (let* ((_hd19072_ _hd1904719067_)
                                     (_rest19074_ _tl1904819069_))
                                (_K1904619064_ _rest19074_ _hd19072_)))
                            (_else1904419058_))))))
                 (_generate-clause18483_
                  (lambda (_target18899_ _ids18900_ _clause18901_ _E18902_)
                    (letrec ((_generate118904_
                              (lambda (_hd18991_ _fender18992_ _body18993_)
                                (let ((_g19749_
                                       (_parse-clause18485_
                                        _hd18991_
                                        _ids18900_)))
                                  (begin
                                    (let ((_g19750_
                                           (if (##values? _g19749_)
                                               (##vector-length _g19749_)
                                               1)))
                                      (if (not (##fx= _g19750_ 2))
                                          (error "Context expects 2 values"
                                                 _g19750_)))
                                    (let ((_e18995_ (##vector-ref _g19749_ 0))
                                          (_mvars18996_
                                           (##vector-ref _g19749_ 1)))
                                      (let* ((_pvars18998_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars18996_)))
                                             (_E19000_
                                              (cons _E18902_
                                                    (cons _target18899_ '())))
                                             (_K19033_
                                              (gx#core-list
                                               'lambda%
                                               _pvars18998_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar19002_
                                                              _pvar19003_)
                                                       (let* ((_mvar1900419011_
                                                               _mvar19002_)
                                                              (_E1900619015_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1900419011_)))
                      (_K1900719021_
                       (lambda (_depth19018_ _id19019_)
                         (cons _id19019_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id19019_)
                                      (gx#core-list 'quote _pvar19003_)
                                      _depth19018_)
                                     '())))))
                 (if (##pair? _mvar1900419011_)
                     (let ((_hd1900819024_ (##car _mvar1900419011_))
                           (_tl1900919026_ (##cdr _mvar1900419011_)))
                       (let* ((_id19029_ _hd1900819024_)
                              (_depth19031_ _tl1900919026_))
                         (_K1900719021_ _depth19031_ _id19029_)))
                     (_E1900619015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars18996_
                                                     _pvars18998_)
                                                (if (eq? _fender18992_ '#t)
                                                    _body18993_
                                                    (gx#core-list
                                                     'if
                                                     _fender18992_
                                                     _body18993_
                                                     _E19000_))))))
                                        (_generate-match18484_
                                         _hd18991_
                                         _target18899_
                                         _e18995_
                                         _mvars18996_
                                         _K19033_
                                         _E19000_))))))))
                      (let* ((_e1890518925_ _clause18901_)
                             (_E1891418929_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1890518925_)))
                             (_E1890718963_
                              (lambda ()
                                (if (gx#stx-pair? _e1890518925_)
                                    (let ((_e1891518933_
                                           (gx#syntax-e _e1890518925_)))
                                      (let ((_hd1891618936_
                                             (##car _e1891518933_))
                                            (_tl1891718938_
                                             (##cdr _e1891518933_)))
                                        (let ((_hd18941_ _hd1891618936_))
                                          (if (gx#stx-pair? _tl1891718938_)
                                              (let ((_e1891818943_
                                                     (gx#syntax-e
                                                      _tl1891718938_)))
                                                (let ((_hd1891918946_
                                                       (##car _e1891818943_))
                                                      (_tl1892018948_
                                                       (##cdr _e1891818943_)))
                                                  (let ((_fender18951_
                                                         _hd1891918946_))
                                                    (if (gx#stx-pair?
                                                         _tl1892018948_)
                                                        (let ((_e1892118953_
                                                               (gx#syntax-e
                                                                _tl1892018948_)))
                                                          (let ((_hd1892218956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1892118953_))
                        (_tl1892318958_ (##cdr _e1892118953_)))
                    (let ((_body18961_ _hd1892218956_))
                      (if (gx#stx-null? _tl1892318958_)
                          (if '#t
                              (_generate118904_
                               _hd18941_
                               _fender18951_
                               _body18961_)
                              (_E1891418929_))
                          (_E1891418929_)))))
                (_E1891418929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1891418929_)))))
                                    (_E1891418929_))))
                             (_E1890618987_
                              (lambda ()
                                (if (gx#stx-pair? _e1890518925_)
                                    (let ((_e1890818967_
                                           (gx#syntax-e _e1890518925_)))
                                      (let ((_hd1890918970_
                                             (##car _e1890818967_))
                                            (_tl1891018972_
                                             (##cdr _e1890818967_)))
                                        (let ((_hd18975_ _hd1890918970_))
                                          (if (gx#stx-pair? _tl1891018972_)
                                              (let ((_e1891118977_
                                                     (gx#syntax-e
                                                      _tl1891018972_)))
                                                (let ((_hd1891218980_
                                                       (##car _e1891118977_))
                                                      (_tl1891318982_
                                                       (##cdr _e1891118977_)))
                                                  (let ((_body18985_
                                                         _hd1891218980_))
                                                    (if (gx#stx-null?
                                                         _tl1891318982_)
                                                        (if '#t
                                                            (_generate118904_
                                                             _hd18975_
                                                             '#t
                                                             _body18985_)
                                                            (_E1890718963_))
                                                        (_E1890718963_)))))
                                              (_E1890718963_)))))
                                    (_E1890718963_)))))
                        (_E1890618987_)))))
                 (_generate-match18484_
                  (lambda (_where18648_
                           _target18649_
                           _hd18650_
                           _mvars18651_
                           _K18652_
                           _E18653_)
                    (letrec ((_BUG18655_
                              (lambda (_q18897_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18476_
                                       _hd18650_
                                       _q18897_)))
                             (_recur18656_
                              (lambda (_e18747_
                                       _vars18748_
                                       _target18749_
                                       _E18750_
                                       _k18751_)
                                (let* ((_e1875218759_ _e18747_)
                                       (_E1875418763_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1875218759_)))
                                       (_K1875518885_
                                        (lambda (_body18766_ _tag18767_)
                                          (let ((_$e18769_ _tag18767_))
                                            (if (eq? 'any _$e18769_)
                                                (_k18751_ _vars18748_)
                                                (if (eq? 'id _$e18769_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18749_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18477_
                                                       (gx#core-list
                                                        _wrap-e18479_
                                                        _body18766_)
                                                       _target18749_)
                                                      (_k18751_ _vars18748_)
                                                      _E18750_)
                                                     _E18750_)
                                                    (if (eq? 'var _$e18769_)
                                                        (_k18751_
                                                         (cons (cons _body18766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18749_)
                       _vars18748_))
                (if (eq? 'cons _$e18769_)
                    (let ((_$e18772_ (gx#genident__1 'e))
                          (_$hd18773_ (gx#genident__1 'hd))
                          (_$tl18774_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18749_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18772_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18478_
                                           _target18749_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18773_ '())
                                     (cons (gx#core-list '##car _$e18772_)
                                           '()))
                               (cons (cons (cons _$tl18774_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18772_)
                                                 '()))
                                     '()))
                         (let* ((_body1877518782_ _body18766_)
                                (_E1877718786_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1877518782_)))
                                (_K1877818794_
                                 (lambda (_tl18789_ _hd18790_)
                                   (_recur18656_
                                    _hd18790_
                                    _vars18748_
                                    _$hd18773_
                                    _E18750_
                                    (lambda (_vars18792_)
                                      (_recur18656_
                                       _tl18789_
                                       _vars18792_
                                       _$tl18774_
                                       _E18750_
                                       _k18751_))))))
                           (if (##pair? _body1877518782_)
                               (let ((_hd1877918797_ (##car _body1877518782_))
                                     (_tl1878018799_ (##cdr _body1877518782_)))
                                 (let* ((_hd18802_ _hd1877918797_)
                                        (_tl18804_ _tl1878018799_))
                                   (_K1877818794_ _tl18804_ _hd18802_)))
                               (_E1877718786_)))))
                       _E18750_))
                    (if (eq? 'splice _$e18769_)
                        (let* ((_body1880518812_ _body18766_)
                               (_E1880718816_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1880518812_)))
                               (_K1880818867_
                                (lambda (_tl18819_ _hd18820_)
                                  (let* ((_rlen18822_
                                          (_splice-rlen18657_ _tl18819_))
                                         (_$target18824_
                                          (gx#genident__1 'target))
                                         (_$hd18826_ (gx#genident__1 'hd))
                                         (_$tl18828_ (gx#genident__1 'tl))
                                         (_$lp18830_ (gx#genident__1 'loop))
                                         (_$lp-e18832_ (gx#genident__1 'e))
                                         (_$lp-hd18834_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18836_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18838_
                                          (_splice-vars18658_ _hd18820_))
                                         (_lvars18840_
                                          (gx#gentemps _svars18838_))
                                         (_tlvars18842_
                                          (gx#gentemps _svars18838_))
                                         (_linit18846_
                                          (map (lambda (_var18844_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18840_)))
                                    (letrec ((_make-loop18849_
                                              (lambda (_vars18853_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18826_ _lvars18840_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18826_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18832_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18478_
                                                 _$hd18826_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18834_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18832_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18836_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18832_)
                                                       '()))
                                           '()))
                               (_recur18656_
                                _hd18820_
                                '()
                                _$lp-hd18834_
                                _E18750_
                                (lambda (_hdvars18855_)
                                  (cons _$lp18830_
                                        (cons _$lp-tl18836_
                                              (map (lambda (_svar18857_
                                                            _lvar18858_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18857_
                                                               _hdvars18855_
                                                               _BUG18655_)
                                                      _lvar18858_))
                                                   _svars18838_
                                                   _lvars18840_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18860_ _tlvar18861_)
                                     (cons (cons _tlvar18861_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18860_)
                                                 '())))
                                   _lvars18840_
                                   _tlvars18842_)
                              (_k18751_
                               (foldl2 (lambda (_svar18863_
                                                _tlvar18864_
                                                _r18865_)
                                         (cons (cons _svar18863_ _tlvar18864_)
                                               _r18865_))
                                       _vars18853_
                                       _svars18838_
                                       _tlvars18842_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18830_
                                                       (cons _$target18824_
                                                             _linit18846_))))))
                                      (let ((_body18851_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18824_
                                                                (cons _$tl18828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18749_
                         _rlen18822_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18656_
                                               _tl18819_
                                               _vars18748_
                                               _$tl18828_
                                               _E18750_
                                               _make-loop18849_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18749_)
                                         (if (zero? _rlen18822_)
                                             _body18851_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18749_)
                                               _rlen18822_)
                                              _body18851_
                                              _E18750_))
                                         _E18750_)))))))
                          (if (##pair? _body1880518812_)
                              (let ((_hd1880918870_ (##car _body1880518812_))
                                    (_tl1881018872_ (##cdr _body1880518812_)))
                                (let* ((_hd18875_ _hd1880918870_)
                                       (_tl18877_ _tl1881018872_))
                                  (_K1880818867_ _tl18877_ _hd18875_)))
                              (_E1880718816_)))
                        (if (eq? 'null _$e18769_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18749_)
                             (_k18751_ _vars18748_)
                             _E18750_)
                            (if (eq? 'vector _$e18769_)
                                (let ((_$e18879_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18749_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18879_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18478_
                                                        _target18749_))
                                                      '()))
                                          '())
                                    (_recur18656_
                                     _body18766_
                                     _vars18748_
                                     _$e18879_
                                     _E18750_
                                     _k18751_))
                                   _E18750_))
                                (if (eq? 'box _$e18769_)
                                    (let ((_$e18881_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18749_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18881_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18478_
                                                            _target18749_))
                                                          '()))
                                              '())
                                        (_recur18656_
                                         _body18766_
                                         _vars18748_
                                         _$e18881_
                                         _E18750_
                                         _k18751_))
                                       _E18750_))
                                    (if (eq? 'datum _$e18769_)
                                        (let ((_$e18883_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18749_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18883_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18749_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18883_
                                              _body18766_)
                                             (_k18751_ _vars18748_)
                                             _E18750_))
                                           _E18750_))
                                        (_BUG18655_ _e18747_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1875218759_)
                                      (let ((_hd1875618888_
                                             (##car _e1875218759_))
                                            (_tl1875718890_
                                             (##cdr _e1875218759_)))
                                        (let* ((_tag18893_ _hd1875618888_)
                                               (_body18895_ _tl1875718890_))
                                          (_K1875518885_
                                           _body18895_
                                           _tag18893_)))
                                      (_E1875418763_)))))
                             (_splice-rlen18657_
                              (lambda (_e18709_)
                                (let _lp18711_ ((_e18713_ _e18709_)
                                                (_n18714_ '0))
                                  (let* ((_e1871518722_ _e18713_)
                                         (_E1871718726_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1871518722_)))
                                         (_K1871818735_
                                          (lambda (_body18729_ _tag18730_)
                                            (let ((_$e18732_ _tag18730_))
                                              (if (eq? 'splice _$e18732_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18476_
                                                   _where18648_)
                                                  (if (eq? 'cons _$e18732_)
                                                      (_lp18711_
                                                       (cdr _body18729_)
                                                       (fx+ _n18714_ '1))
                                                      _n18714_))))))
                                    (if (##pair? _e1871518722_)
                                        (let ((_hd1871918738_
                                               (##car _e1871518722_))
                                              (_tl1872018740_
                                               (##cdr _e1871518722_)))
                                          (let* ((_tag18743_ _hd1871918738_)
                                                 (_body18745_ _tl1872018740_))
                                            (_K1871818735_
                                             _body18745_
                                             _tag18743_)))
                                        (_E1871718726_))))))
                             (_splice-vars18658_
                              (lambda (_e18665_)
                                (let _recur18667_ ((_e18669_ _e18665_)
                                                   (_vars18670_ '()))
                                  (let* ((_e1867118678_ _e18669_)
                                         (_E1867318682_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1867118678_)))
                                         (_K1867418697_
                                          (lambda (_body18685_ _tag18686_)
                                            (let ((_$e18688_ _tag18686_))
                                              (if (eq? 'var _$e18688_)
                                                  (cons _body18685_
                                                        _vars18670_)
                                                  (if (let ((_$e18691_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e18688_)))
                (if _$e18691_ _$e18691_ (eq? 'splice _$e18688_)))
              (_recur18667_
               (cdr _body18685_)
               (_recur18667_ (car _body18685_) _vars18670_))
              (if (let ((_$e18694_ (eq? 'vector _$e18688_)))
                    (if _$e18694_ _$e18694_ (eq? 'box _$e18688_)))
                  (_recur18667_ _body18685_ _vars18670_)
                  _vars18670_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1867118678_)
                                        (let ((_hd1867518700_
                                               (##car _e1867118678_))
                                              (_tl1867618702_
                                               (##cdr _e1867118678_)))
                                          (let* ((_tag18705_ _hd1867518700_)
                                                 (_body18707_ _tl1867618702_))
                                            (_K1867418697_
                                             _body18707_
                                             _tag18705_)))
                                        (_E1867318682_))))))
                             (_make-body18659_
                              (lambda (_vars18661_)
                                (cons _K18652_
                                      (map (lambda (_mvar18663_)
                                             (assgetq (car _mvar18663_)
                                                      _vars18661_
                                                      _BUG18655_))
                                           _mvars18651_)))))
                      (_recur18656_
                       _hd18650_
                       '()
                       _target18649_
                       _E18653_
                       _make-body18659_))))
                 (_parse-clause18485_
                  (lambda (_hd18554_ _ids18555_)
                    (let _recur18557_ ((_e18559_ _hd18554_)
                                       (_vars18560_ '())
                                       (_depth18561_ '0))
                      (if (gx#identifier? _e18559_)
                          (if (gx#underscore? _e18559_)
                              (values '(any) _vars18560_)
                              (if (gx#ellipsis? _e18559_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18476_
                                   _hd18554_)
                                  (if (find (lambda (_id18563_)
                                              (gx#bound-identifier=?
                                               _e18559_
                                               _id18563_))
                                            _ids18555_)
                                      (values (cons 'id _e18559_) _vars18560_)
                                      (if (find (lambda (_var18565_)
                                                  (gx#bound-identifier=?
                                                   _e18559_
                                                   (car _var18565_)))
                                                _vars18560_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18476_
                                           _e18559_)
                                          (values (cons 'var _e18559_)
                                                  (cons (cons _e18559_
                                                              _depth18561_)
                                                        _vars18560_))))))
                          (if (gx#stx-pair? _e18559_)
                              (let* ((_e1856618573_ _e18559_)
                                     (_E1856818577_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1856618573_)))
                                     (_E1856718638_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1856618573_)
                                            (let ((_e1856918581_
                                                   (gx#syntax-e
                                                    _e1856618573_)))
                                              (let ((_hd1857018584_
                                                     (##car _e1856918581_))
                                                    (_tl1857118586_
                                                     (##cdr _e1856918581_)))
                                                (let* ((_hd18589_
                                                        _hd1857018584_)
                                                       (_rest18591_
                                                        _tl1857118586_))
                                                  (if '#t
                                                      (let* ((_make-pair18606_
                                                              (lambda (_tag18593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18594_
                               _tl18595_)
                        (let* ((_hd-depth18597_
                                (if (eq? _tag18593_ 'splice)
                                    (fx+ _depth18561_ '1)
                                    _depth18561_))
                               (_g19751_
                                (_recur18557_
                                 _hd18594_
                                 _vars18560_
                                 _hd-depth18597_)))
                          (begin
                            (let ((_g19752_
                                   (if (##values? _g19751_)
                                       (##vector-length _g19751_)
                                       1)))
                              (if (not (##fx= _g19752_ 2))
                                  (error "Context expects 2 values" _g19752_)))
                            (let ((_hd18599_ (##vector-ref _g19751_ 0))
                                  (_vars18600_ (##vector-ref _g19751_ 1)))
                              (let ((_g19753_
                                     (_recur18557_
                                      _tl18595_
                                      _vars18600_
                                      _depth18561_)))
                                (begin
                                  (let ((_g19754_
                                         (if (##values? _g19753_)
                                             (##vector-length _g19753_)
                                             1)))
                                    (if (not (##fx= _g19754_ 2))
                                        (error "Context expects 2 values"
                                               _g19754_)))
                                  (let ((_tl18602_ (##vector-ref _g19753_ 0))
                                        (_vars18603_
                                         (##vector-ref _g19753_ 1)))
                                    (let ()
                                      (values (cons _tag18593_
                                                    (cons _hd18599_ _tl18602_))
                                              _vars18603_))))))))))
                     (_e1860718614_ _rest18591_)
                     (_E1860918618_
                      (lambda ()
                        (_make-pair18606_ 'cons _hd18589_ _rest18591_)))
                     (_E1860818634_
                      (lambda ()
                        (if (gx#stx-pair? _e1860718614_)
                            (let ((_e1861018622_ (gx#syntax-e _e1860718614_)))
                              (let ((_hd1861118625_ (##car _e1861018622_))
                                    (_tl1861218627_ (##cdr _e1861018622_)))
                                (let* ((_rest-hd18630_ _hd1861118625_)
                                       (_rest-tl18632_ _tl1861218627_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18630_)
                                          (_make-pair18606_
                                           'splice
                                           _hd18589_
                                           _rest-tl18632_)
                                          (_make-pair18606_
                                           'cons
                                           _hd18589_
                                           _rest18591_))
                                      (_E1860918618_)))))
                            (_E1860918618_)))))
                (_E1860818634_))
              (_E1856818577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1856818577_)))))
                                (_E1856718638_))
                              (if (gx#stx-null? _e18559_)
                                  (values '(null) _vars18560_)
                                  (if (gx#stx-vector? _e18559_)
                                      (let ((_g19755_
                                             (_recur18557_
                                              (vector->list
                                               (gx#syntax-e _e18559_))
                                              _vars18560_
                                              _depth18561_)))
                                        (begin
                                          (let ((_g19756_
                                                 (if (##values? _g19755_)
                                                     (##vector-length _g19755_)
                                                     1)))
                                            (if (not (##fx= _g19756_ 2))
                                                (error "Context expects 2 values"
                                                       _g19756_)))
                                          (let ((_e18642_
                                                 (##vector-ref _g19755_ 0))
                                                (_vars18643_
                                                 (##vector-ref _g19755_ 1)))
                                            (values (cons 'vector _e18642_)
                                                    _vars18643_))))
                                      (if (gx#stx-box? _e18559_)
                                          (let ((_g19757_
                                                 (_recur18557_
                                                  (unbox (gx#syntax-e
                                                          _e18559_))
                                                  _vars18560_
                                                  _depth18561_)))
                                            (begin
                                              (let ((_g19758_
                                                     (if (##values? _g19757_)
                                                         (##vector-length
                                                          _g19757_)
                                                         1)))
                                                (if (not (##fx= _g19758_ 2))
                                                    (error "Context expects 2 values"
                                                           _g19758_)))
                                              (let ((_e18645_
                                                     (##vector-ref _g19757_ 0))
                                                    (_vars18646_
                                                     (##vector-ref
                                                      _g19757_
                                                      1)))
                                                (values (cons 'box _e18645_)
                                                        _vars18646_))))
                                          (if (gx#stx-datum? _e18559_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18559_))
                                                      _vars18560_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18476_
                                               _e18559_)))))))))))
          (let* ((_e1848618499_ _stx18476_)
                 (_E1848818503_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1848618499_)))
                 (_E1848718550_
                  (lambda ()
                    (if (gx#stx-pair? _e1848618499_)
                        (let ((_e1848918507_ (gx#syntax-e _e1848618499_)))
                          (let ((_hd1849018510_ (##car _e1848918507_))
                                (_tl1849118512_ (##cdr _e1848918507_)))
                            (if (gx#stx-pair? _tl1849118512_)
                                (let ((_e1849218515_
                                       (gx#syntax-e _tl1849118512_)))
                                  (let ((_hd1849318518_ (##car _e1849218515_))
                                        (_tl1849418520_ (##cdr _e1849218515_)))
                                    (let ((_expr18523_ _hd1849318518_))
                                      (if (gx#stx-pair? _tl1849418520_)
                                          (let ((_e1849518525_
                                                 (gx#syntax-e _tl1849418520_)))
                                            (let ((_hd1849618528_
                                                   (##car _e1849518525_))
                                                  (_tl1849718530_
                                                   (##cdr _e1849518525_)))
                                              (let* ((_ids18533_
                                                      _hd1849618528_)
                                                     (_clauses18535_
                                                      _tl1849718530_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18533_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18476_
                                                         _ids18533_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18535_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18476_)
                    (let* ((_ids18537_ (gx#syntax->list _ids18533_))
                           (_clauses18539_ (gx#syntax->list _clauses18535_))
                           (_clause-ids18541_ (gx#gentemps _clauses18539_))
                           (_E18543_ (gx#genident__0))
                           (_target18545_ (gx#genident__0))
                           (_first18547_
                            (if (null? _clauses18539_)
                                _E18543_
                                (car _clause-ids18541_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18543_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18545_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18545_))
                                            '()))
                                '())
                          (_generate-body18482_
                           (_generate-bindings18481_
                            _target18545_
                            _ids18537_
                            _clauses18539_
                            _clause-ids18541_
                            _E18543_)
                           (cons _first18547_ (cons _expr18523_ '()))))
                         (gx#stx-source _stx18476_)))
                       (gx#stx-source _stx18476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1848818503_)))))
                                          (_E1848818503_)))))
                                (_E1848818503_))))
                        (_E1848818503_)))))
            (_E1848718550_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx19186_)
          (let* ((_identifier=?19188_ 'free-identifier=?)
                 (_unwrap-e19190_ 'syntax-e)
                 (_wrap-e19192_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19186_
             _identifier=?19188_
             _unwrap-e19190_
             _wrap-e19192_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx19194_ _identifier=?19195_)
          (let* ((_unwrap-e19197_ 'syntax-e) (_wrap-e19199_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19194_
             _identifier=?19195_
             _unwrap-e19197_
             _wrap-e19199_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx19201_ _identifier=?19202_ _unwrap-e19203_)
          (let ((_wrap-e19205_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19201_
             _identifier=?19202_
             _unwrap-e19203_
             _wrap-e19205_))))
      (define gx#macro-expand-syntax-case
        (lambda _g19760_
          (let ((_g19759_ (length _g19760_)))
            (cond ((##fx= _g19759_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g19760_))
                  ((##fx= _g19759_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g19760_))
                  ((##fx= _g19759_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g19760_))
                  ((##fx= _g19759_ 4)
                   (apply gx#macro-expand-syntax-case__% _g19760_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g19760_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18473_)
      (if (gx#identifier? _stx18473_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18473_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18431_ . _rest18432_)
      (let ((_len18434_ (length _hd18431_)))
        (let _lp18436_ ((_rest18438_ _rest18432_))
          (let* ((_rest1843918447_ _rest18438_)
                 (_else1844118455_ (lambda () '#!void))
                 (_K1844318461_
                  (lambda (_rest18458_ _hd18459_)
                    (if (fx= _len18434_ (length _hd18459_))
                        (_lp18436_ _rest18458_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18459_)))))
            (if (##pair? _rest1843918447_)
                (let ((_hd1844418464_ (##car _rest1843918447_))
                      (_tl1844518466_ (##cdr _rest1843918447_)))
                  (let* ((_hd18469_ _hd1844418464_)
                         (_rest18471_ _tl1844518466_))
                    (_K1844318461_ _rest18471_ _hd18469_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18389_ _n18390_)
      (let _lp18392_ ((_rest18394_ _stx18389_) (_r18395_ '()))
        (if (gx#stx-pair? _rest18394_)
            (let* ((_g1839618403_ (gx#syntax-e _rest18394_))
                   (_E1839818407_
                    (lambda () (error '"No clause matching" _g1839618403_)))
                   (_K1839918413_
                    (lambda (_rest18410_ _hd18411_)
                      (_lp18392_ _rest18410_ (cons _hd18411_ _r18395_)))))
              (if (##pair? _g1839618403_)
                  (let ((_hd1840018416_ (##car _g1839618403_))
                        (_tl1840118418_ (##cdr _g1839618403_)))
                    (let* ((_hd18421_ _hd1840018416_)
                           (_rest18423_ _tl1840118418_))
                      (_K1839918413_ _rest18423_ _hd18421_)))
                  (_E1839818407_)))
            (let _lp18425_ ((_n18427_ _n18390_)
                            (_l18428_ _r18395_)
                            (_r18429_ _rest18394_))
              (if (null? _l18428_)
                  (values _l18428_ _r18429_)
                  (if (fxpositive? _n18427_)
                      (_lp18425_
                       (fx- _n18427_ '1)
                       (cdr _l18428_)
                       (cons (car _l18428_) _r18429_))
                      (values (reverse _l18428_) _r18429_)))))))))
