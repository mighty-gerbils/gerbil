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
    (lambda _$args19667_
      (apply make-struct-instance gx#syntax-pattern::t _$args19667_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19664_ _stx19665_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19665_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19146_)
      (letrec ((_generate19148_
                (lambda (_e19375_)
                  (letrec ((_BUG19377_
                            (lambda (_q19539_)
                              (error '"BUG: syntax; generate"
                                     _stx19146_
                                     _e19375_
                                     _q19539_)))
                           (_local-pattern-e19378_
                            (lambda (_pat19537_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19537_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19379_
                            (lambda (_q19534_ _vars19535_)
                              (assgetq _q19534_ _vars19535_ _BUG19377_)))
                           (_getarg19380_
                            (lambda (_arg19500_ _vars19501_)
                              (let* ((_arg1950219509_ _arg19500_)
                                     (_E1950419513_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1950219509_)))
                                     (_K1950519522_
                                      (lambda (_e19516_ _tag19517_)
                                        (let ((_$e19519_ _tag19517_))
                                          (if (eq? 'ref _$e19519_)
                                              (_getvar19379_
                                               _e19516_
                                               _vars19501_)
                                              (if (eq? 'pattern _$e19519_)
                                                  (_local-pattern-e19378_
                                                   _e19516_)
                                                  (_BUG19377_ _arg19500_)))))))
                                (if (##pair? _arg1950219509_)
                                    (let ((_hd1950619525_
                                           (##car _arg1950219509_))
                                          (_tl1950719527_
                                           (##cdr _arg1950219509_)))
                                      (let* ((_tag19530_ _hd1950619525_)
                                             (_e19532_ _tl1950719527_))
                                        (_K1950519522_ _e19532_ _tag19530_)))
                                    (_E1950419513_))))))
                    (let _recur19382_ ((_e19384_ _e19375_) (_vars19385_ '()))
                      (let* ((_e1938619393_ _e19384_)
                             (_E1938819397_
                              (lambda ()
                                (error '"No clause matching" _e1938619393_)))
                             (_K1938919488_
                              (lambda (_body19400_ _tag19401_)
                                (let ((_$e19403_ _tag19401_))
                                  (if (eq? 'datum _$e19403_)
                                      (gx#core-list 'quote _body19400_)
                                      (if (eq? 'term _$e19403_)
                                          (let ((_id19406_
                                                 (gx#syntax-local-unwrap
                                                  _body19400_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19406_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19408_
                                                       (##unchecked-structure-ref
                                                        _id19406_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19408_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19400_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19400_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19400_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19406_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19400_)
                                                    (_BUG19377_ _e19384_))))
                                          (if (eq? 'pattern _$e19403_)
                                              (_local-pattern-e19378_
                                               _body19400_)
                                              (if (eq? 'ref _$e19403_)
                                                  (_getvar19379_
                                                   _body19400_
                                                   _vars19385_)
                                                  (if (eq? 'cons _$e19403_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19382_
                                                        (car _body19400_)
                                                        _vars19385_)
                                                       (_recur19382_
                                                        (cdr _body19400_)
                                                        _vars19385_))
                                                      (if (eq? 'vector
                                                               _$e19403_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19382_
                                                            _body19400_
                                                            _vars19385_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19403_)
                      (gx#core-list
                       'box
                       (_recur19382_ _body19400_ _vars19385_))
                      (if (eq? 'splice _$e19403_)
                          (let* ((_body1940919420_ _body19400_)
                                 (_E1941119424_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1940919420_)))
                                 (_K1941219462_
                                  (lambda (_args19427_
                                           _iv19428_
                                           _hd19429_
                                           _depth19430_)
                                    (let* ((_targets19436_
                                            (map (lambda (_g1943119433_)
                                                   (_getarg19380_
                                                    _g1943119433_
                                                    _vars19385_))
                                                 _args19427_))
                                           (_fold-in19438_
                                            (gx#gentemps _args19427_))
                                           (_fold-out19440_ (gx#genident__0))
                                           (_lambda-args19442_
                                            (foldr1 cons
                                                    (cons _fold-out19440_ '())
                                                    _fold-in19438_))
                                           (_lambda-body19459_
                                            (if (fx> _depth19430_ '1)
                                                (let ((_r-args19450_
                                                       (map (lambda (_arg19444_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19444_)))
                    _args19427_))
              (_r-vars19451_
               (foldr2 (lambda (_arg19446_ _var19447_ _r19448_)
                         (cons (cons (cdr _arg19446_) _var19447_) _r19448_))
                       _vars19385_
                       _args19427_
                       _fold-in19438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19382_
                                                   (cons 'splice
                                                         (cons (fx- _depth19430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19429_
                             (cons (cons 'var _fold-out19440_)
                                   _r-args19450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19451_))
                                                (let ((_hd-vars19457_
                                                       (foldr2 (lambda (_arg19453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19454_
                                _r19455_)
                         (cons (cons (cdr _arg19453_) _var19454_) _r19455_))
                       _vars19385_
                       _args19427_
                       _fold-in19438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19382_
                                                    _hd19429_
                                                    _hd-vars19457_)
                                                   _fold-out19440_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19436_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19436_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19442_
                                         _lambda-body19459_)
                                        (_recur19382_ _iv19428_ _vars19385_)
                                        _targets19436_))))))
                            (if (##pair? _body1940919420_)
                                (let ((_hd1941319465_ (##car _body1940919420_))
                                      (_tl1941419467_
                                       (##cdr _body1940919420_)))
                                  (let ((_depth19470_ _hd1941319465_))
                                    (if (##pair? _tl1941419467_)
                                        (let ((_hd1941519472_
                                               (##car _tl1941419467_))
                                              (_tl1941619474_
                                               (##cdr _tl1941419467_)))
                                          (let ((_hd19477_ _hd1941519472_))
                                            (if (##pair? _tl1941619474_)
                                                (let ((_hd1941719479_
                                                       (##car _tl1941619474_))
                                                      (_tl1941819481_
                                                       (##cdr _tl1941619474_)))
                                                  (let* ((_iv19484_
                                                          _hd1941719479_)
                                                         (_args19486_
                                                          _tl1941819481_))
                                                    (_K1941219462_
                                                     _args19486_
                                                     _iv19484_
                                                     _hd19477_
                                                     _depth19470_)))
                                                (_E1941119424_))))
                                        (_E1941119424_))))
                                (_E1941119424_)))
                          (if (eq? 'var _$e19403_)
                              _body19400_
                              (_BUG19377_ _e19384_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1938619393_)
                            (let ((_hd1939019491_ (##car _e1938619393_))
                                  (_tl1939119493_ (##cdr _e1938619393_)))
                              (let* ((_tag19496_ _hd1939019491_)
                                     (_body19498_ _tl1939119493_))
                                (_K1938919488_ _body19498_ _tag19496_)))
                            (_E1938819397_)))))))
               (_parse19149_
                (lambda (_e19190_)
                  (letrec ((_make-cons19192_
                            (lambda (_hd19367_ _tl19368_)
                              (let ((_g19669_ _hd19367_) (_g19671_ _tl19368_))
                                (begin
                                  (let ((_g19670_
                                         (if (##values? _g19669_)
                                             (##vector-length _g19669_)
                                             1)))
                                    (if (not (##fx= _g19670_ 2))
                                        (error "Context expects 2 values"
                                               _g19670_)))
                                  (let ((_g19672_
                                         (if (##values? _g19671_)
                                             (##vector-length _g19671_)
                                             1)))
                                    (if (not (##fx= _g19672_ 2))
                                        (error "Context expects 2 values"
                                               _g19672_)))
                                  (let ((_hd-e19370_ (##vector-ref _g19669_ 0))
                                        (_hd-vars19371_
                                         (##vector-ref _g19669_ 1)))
                                    (let ((_tl-e19372_
                                           (##vector-ref _g19671_ 0))
                                          (_tl-vars19373_
                                           (##vector-ref _g19671_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19370_
                                                          _tl-e19372_))
                                              (append _hd-vars19371_
                                                      _tl-vars19373_))))))))
                           (_make-splice19193_
                            (lambda (_where19306_
                                     _depth19307_
                                     _hd19308_
                                     _tl19309_)
                              (let ((_g19673_ _hd19308_) (_g19675_ _tl19309_))
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
                                  (let ((_hd-e19311_ (##vector-ref _g19673_ 0))
                                        (_hd-vars19312_
                                         (##vector-ref _g19673_ 1)))
                                    (let ((_tl-e19313_
                                           (##vector-ref _g19675_ 0))
                                          (_tl-vars19314_
                                           (##vector-ref _g19675_ 1)))
                                      (let _lp19316_ ((_rest19318_
                                                       _hd-vars19312_)
                                                      (_targets19319_ '())
                                                      (_vars19320_
                                                       _tl-vars19314_))
                                        (let* ((_rest1932119331_ _rest19318_)
                                               (_else1932319339_
                                                (lambda ()
                                                  (if (null? _targets19319_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19146_
                                                       _where19306_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19307_
                                  (cons _hd-e19311_
                                        (cons _tl-e19313_ _targets19319_))))
                      _vars19320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1932519348_
                                                (lambda (_rest19342_
                                                         _hd-pat19343_
                                                         _hd-depth*19344_)
                                                  (let ((_hd-depth19346_
                                                         (fx- _hd-depth*19344_
                                                              _depth19307_)))
                                                    (if (fxpositive?
                                                         _hd-depth19346_)
                                                        (_lp19316_
                                                         _rest19342_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19343_)
                       _targets19319_)
                 (cons (cons _hd-depth19346_ _hd-pat19343_) _vars19320_))
                (if (fxzero? _hd-depth19346_)
                    (_lp19316_
                     _rest19342_
                     (cons (cons 'pattern _hd-pat19343_) _targets19319_)
                     _vars19320_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19146_
                     _where19306_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1932119331_)
                                              (let ((_hd1932619351_
                                                     (##car _rest1932119331_))
                                                    (_tl1932719353_
                                                     (##cdr _rest1932119331_)))
                                                (if (##pair? _hd1932619351_)
                                                    (let ((_hd1932819356_
                                                           (##car _hd1932619351_))
                                                          (_tl1932919358_
                                                           (##cdr _hd1932619351_)))
                                                      (let* ((_hd-depth*19361_
                                                              _hd1932819356_)
                                                             (_hd-pat19363_
                                                              _tl1932919358_)
                                                             (_rest19365_
                                                              _tl1932719353_))
                                                        (_K1932519348_
                                                         _rest19365_
                                                         _hd-pat19363_
                                                         _hd-depth*19361_)))
                                                    (_else1932319339_)))
                                              (_else1932319339_))))))))))
                           (_recur19194_
                            (lambda (_e19199_ _is-e?19200_)
                              (if (_is-e?19200_ _e19199_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19146_)
                                  (if (gx#syntax-local-pattern? _e19199_)
                                      (let* ((_pat19202_
                                              (gx#syntax-local-e__0 _e19199_))
                                             (_depth19204_
                                              (##structure-ref
                                               _pat19202_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19204_)
                                            (values (cons 'ref _pat19202_)
                                                    (cons (cons _depth19204_
                                                                _pat19202_)
                                                          '()))
                                            (values (cons 'pattern _pat19202_)
                                                    '())))
                                      (if (gx#identifier? _e19199_)
                                          (values (cons 'term _e19199_) '())
                                          (if (gx#stx-pair? _e19199_)
                                              (let* ((_e1920619213_ _e19199_)
                                                     (_E1920819217_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1920619213_)))
                                                     (_E1920719296_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1920619213_)
                                                            (let ((_e1920919221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1920619213_)))
                      (let ((_hd1921019224_ (##car _e1920919221_))
                            (_tl1921119226_ (##cdr _e1920919221_)))
                        (let* ((_hd19229_ _hd1921019224_)
                               (_rest19231_ _tl1921119226_))
                          (if '#t
                              (if (_is-e?19200_ _hd19229_)
                                  (let* ((_e1923219239_ _rest19231_)
                                         (_E1923419243_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19146_
                                             _e19199_)))
                                         (_E1923319257_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1923219239_)
                                                (let ((_e1923519247_
                                                       (gx#syntax-e
                                                        _e1923219239_)))
                                                  (let ((_hd1923619250_
                                                         (##car _e1923519247_))
                                                        (_tl1923719252_
                                                         (##cdr _e1923519247_)))
                                                    (let ((_rest19255_
                                                           _hd1923619250_))
                                                      (if (gx#stx-null?
                                                           _tl1923719252_)
                                                          (if '#t
                                                              (_recur19194_
                                                               _rest19255_
                                                               false)
                                                              (_E1923419243_))
                                                          (_E1923419243_)))))
                                                (_E1923419243_)))))
                                    (_E1923319257_))
                                  (let _lp19261_ ((_rest19263_ _rest19231_)
                                                  (_depth19264_ '0))
                                    (let* ((_e1926519272_ _rest19263_)
                                           (_E1926719276_
                                            (lambda ()
                                              (if (fxpositive? _depth19264_)
                                                  (_make-splice19193_
                                                   _e19199_
                                                   _depth19264_
                                                   (_recur19194_
                                                    _hd19229_
                                                    _is-e?19200_)
                                                   (_recur19194_
                                                    _rest19263_
                                                    _is-e?19200_))
                                                  (_make-cons19192_
                                                   (_recur19194_
                                                    _hd19229_
                                                    _is-e?19200_)
                                                   (_recur19194_
                                                    _rest19263_
                                                    _is-e?19200_)))))
                                           (_E1926619292_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1926519272_)
                                                  (let ((_e1926819280_
                                                         (gx#syntax-e
                                                          _e1926519272_)))
                                                    (let ((_hd1926919283_
                                                           (##car _e1926819280_))
                                                          (_tl1927019285_
                                                           (##cdr _e1926819280_)))
                                                      (let* ((_rest-hd19288_
                                                              _hd1926919283_)
                                                             (_rest-tl19290_
                                                              _tl1927019285_))
                                                        (if '#t
                                                            (if (_is-e?19200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19288_)
                        (_lp19261_ _rest-tl19290_ (fx+ _depth19264_ '1))
                        (if (fxpositive? _depth19264_)
                            (_make-splice19193_
                             _e19199_
                             _depth19264_
                             (_recur19194_ _hd19229_ _is-e?19200_)
                             (_recur19194_ _rest19263_ _is-e?19200_))
                            (_make-cons19192_
                             (_recur19194_ _hd19229_ _is-e?19200_)
                             (_recur19194_ _rest19263_ _is-e?19200_))))
                    (_E1926719276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1926719276_)))))
                                      (_E1926619292_))))
                              (_E1920819217_)))))
                    (_E1920819217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1920719296_))
                                              (if (gx#stx-vector? _e19199_)
                                                  (let ((_g19677_
                                                         (_recur19194_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19199_))
                                                          _is-e?19200_)))
                                                    (begin
                                                      (let ((_g19678_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19677_)
                         (##vector-length _g19677_)
                         1)))
                (if (not (##fx= _g19678_ 2))
                    (error "Context expects 2 values" _g19678_)))
              (let ((_e19300_ (##vector-ref _g19677_ 0))
                    (_vars19301_ (##vector-ref _g19677_ 1)))
                (values (cons 'vector _e19300_) _vars19301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19199_)
                                                      (let ((_g19679_
                                                             (_recur19194_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19199_))
                      _is-e?19200_)))
                (begin
                  (let ((_g19680_
                         (if (##values? _g19679_)
                             (##vector-length _g19679_)
                             1)))
                    (if (not (##fx= _g19680_ 2))
                        (error "Context expects 2 values" _g19680_)))
                  (let ((_e19303_ (##vector-ref _g19679_ 0))
                        (_vars19304_ (##vector-ref _g19679_ 1)))
                    (values (cons 'box _e19303_) _vars19304_))))
              (values (cons 'datum _e19199_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19681_ (_recur19194_ _e19190_ gx#ellipsis?)))
                      (begin
                        (let ((_g19682_
                               (if (##values? _g19681_)
                                   (##vector-length _g19681_)
                                   1)))
                          (if (not (##fx= _g19682_ 2))
                              (error "Context expects 2 values" _g19682_)))
                        (let ((_tree19196_ (##vector-ref _g19681_ 0))
                              (_vars19197_ (##vector-ref _g19681_ 1)))
                          (if (null? _vars19197_)
                              _tree19196_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19146_
                               _vars19197_)))))))))
        (let* ((_e1915019160_ _stx19146_)
               (_E1915219164_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19146_)))
               (_E1915119186_
                (lambda ()
                  (if (gx#stx-pair? _e1915019160_)
                      (let ((_e1915319168_ (gx#syntax-e _e1915019160_)))
                        (let ((_hd1915419171_ (##car _e1915319168_))
                              (_tl1915519173_ (##cdr _e1915319168_)))
                          (if (gx#stx-pair? _tl1915519173_)
                              (let ((_e1915619176_
                                     (gx#syntax-e _tl1915519173_)))
                                (let ((_hd1915719179_ (##car _e1915619176_))
                                      (_tl1915819181_ (##cdr _e1915619176_)))
                                  (let ((_form19184_ _hd1915719179_))
                                    (if (gx#stx-null? _tl1915819181_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19148_
                                              (_parse19149_ _form19184_))
                                             (gx#stx-source _stx19146_))
                                            (_E1915219164_))
                                        (_E1915219164_)))))
                              (_E1915219164_))))
                      (_E1915219164_)))))
          (_E1915119186_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18410_ _identifier=?18411_ _unwrap-e18412_ _wrap-e18413_)
        (letrec ((_generate-bindings18415_
                  (lambda (_target19010_
                           _ids19011_
                           _clauses19012_
                           _clause-ids19013_
                           _E19014_)
                    (letrec ((_generate119016_
                              (lambda (_clause19113_ _clause-id19114_ _E19115_)
                                (cons (cons _clause-id19114_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19010_ '())
                                             (_generate-clause18417_
                                              _target19010_
                                              _ids19011_
                                              _clause19113_
                                              _E19115_))
                                            '())))))
                      (let _lp19018_ ((_rest19020_ _clauses19012_)
                                      (_rest-ids19021_ _clause-ids19013_)
                                      (_bindings19022_ '()))
                        (let* ((_rest1902319031_ _rest19020_)
                               (_else1902519039_ (lambda () _bindings19022_))
                               (_K1902719101_
                                (lambda (_rest19042_ _clause19043_)
                                  (let* ((_rest-ids1904419051_ _rest-ids19021_)
                                         (_E1904619055_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1904419051_)))
                                         (_K1904719089_
                                          (lambda (_rest-ids19058_
                                                   _clause-id19059_)
                                            (let* ((_rest-ids1906019068_
                                                    _rest-ids19058_)
                                                   (_else1906219076_
                                                    (lambda ()
                                                      (cons (_generate119016_
                                                             _clause19043_
                                                             _clause-id19059_
                                                             _E19014_)
                                                            _bindings19022_)))
                                                   (_K1906419081_
                                                    (lambda (_next-clause-id19079_)
                                                      (_lp19018_
                                                       _rest19042_
                                                       _rest-ids19058_
                                                       (cons (_generate119016_
                                                              _clause19043_
                                                              _clause-id19059_
                                                              _next-clause-id19079_)
                                                             _bindings19022_)))))
                                              (if (##pair? _rest-ids1906019068_)
                                                  (let* ((_hd1906519084_
                                                          (##car _rest-ids1906019068_))
                                                         (_next-clause-id19087_
                                                          _hd1906519084_))
                                                    (_K1906419081_
                                                     _next-clause-id19087_))
                                                  (_else1906219076_))))))
                                    (if (##pair? _rest-ids1904419051_)
                                        (let ((_hd1904819092_
                                               (##car _rest-ids1904419051_))
                                              (_tl1904919094_
                                               (##cdr _rest-ids1904419051_)))
                                          (let* ((_clause-id19097_
                                                  _hd1904819092_)
                                                 (_rest-ids19099_
                                                  _tl1904919094_))
                                            (_K1904719089_
                                             _rest-ids19099_
                                             _clause-id19097_)))
                                        (_E1904619055_))))))
                          (if (##pair? _rest1902319031_)
                              (let ((_hd1902819104_ (##car _rest1902319031_))
                                    (_tl1902919106_ (##cdr _rest1902319031_)))
                                (let* ((_clause19109_ _hd1902819104_)
                                       (_rest19111_ _tl1902919106_))
                                  (_K1902719101_ _rest19111_ _clause19109_)))
                              (_else1902519039_)))))))
                 (_generate-body18416_
                  (lambda (_bindings18970_ _body18971_)
                    (let _recur18973_ ((_rest18975_ _bindings18970_))
                      (let* ((_rest1897618984_ _rest18975_)
                             (_else1897818992_ (lambda () _body18971_))
                             (_K1898018998_
                              (lambda (_rest18995_ _hd18996_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd18996_ '())
                                 (_recur18973_ _rest18995_)))))
                        (if (##pair? _rest1897618984_)
                            (let ((_hd1898119001_ (##car _rest1897618984_))
                                  (_tl1898219003_ (##cdr _rest1897618984_)))
                              (let* ((_hd19006_ _hd1898119001_)
                                     (_rest19008_ _tl1898219003_))
                                (_K1898018998_ _rest19008_ _hd19006_)))
                            (_else1897818992_))))))
                 (_generate-clause18417_
                  (lambda (_target18833_ _ids18834_ _clause18835_ _E18836_)
                    (letrec ((_generate118838_
                              (lambda (_hd18925_ _fender18926_ _body18927_)
                                (let ((_g19683_
                                       (_parse-clause18419_
                                        _hd18925_
                                        _ids18834_)))
                                  (begin
                                    (let ((_g19684_
                                           (if (##values? _g19683_)
                                               (##vector-length _g19683_)
                                               1)))
                                      (if (not (##fx= _g19684_ 2))
                                          (error "Context expects 2 values"
                                                 _g19684_)))
                                    (let ((_e18929_ (##vector-ref _g19683_ 0))
                                          (_mvars18930_
                                           (##vector-ref _g19683_ 1)))
                                      (let* ((_pvars18932_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars18930_)))
                                             (_E18934_
                                              (cons _E18836_
                                                    (cons _target18833_ '())))
                                             (_K18967_
                                              (gx#core-list
                                               'lambda%
                                               _pvars18932_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar18936_
                                                              _pvar18937_)
                                                       (let* ((_mvar1893818945_
                                                               _mvar18936_)
                                                              (_E1894018949_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1893818945_)))
                      (_K1894118955_
                       (lambda (_depth18952_ _id18953_)
                         (cons _id18953_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id18953_)
                                      (gx#core-list 'quote _pvar18937_)
                                      _depth18952_)
                                     '())))))
                 (if (##pair? _mvar1893818945_)
                     (let ((_hd1894218958_ (##car _mvar1893818945_))
                           (_tl1894318960_ (##cdr _mvar1893818945_)))
                       (let* ((_id18963_ _hd1894218958_)
                              (_depth18965_ _tl1894318960_))
                         (_K1894118955_ _depth18965_ _id18963_)))
                     (_E1894018949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars18930_
                                                     _pvars18932_)
                                                (if (eq? _fender18926_ '#t)
                                                    _body18927_
                                                    (gx#core-list
                                                     'if
                                                     _fender18926_
                                                     _body18927_
                                                     _E18934_))))))
                                        (_generate-match18418_
                                         _hd18925_
                                         _target18833_
                                         _e18929_
                                         _mvars18930_
                                         _K18967_
                                         _E18934_))))))))
                      (let* ((_e1883918859_ _clause18835_)
                             (_E1884818863_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1883918859_)))
                             (_E1884118897_
                              (lambda ()
                                (if (gx#stx-pair? _e1883918859_)
                                    (let ((_e1884918867_
                                           (gx#syntax-e _e1883918859_)))
                                      (let ((_hd1885018870_
                                             (##car _e1884918867_))
                                            (_tl1885118872_
                                             (##cdr _e1884918867_)))
                                        (let ((_hd18875_ _hd1885018870_))
                                          (if (gx#stx-pair? _tl1885118872_)
                                              (let ((_e1885218877_
                                                     (gx#syntax-e
                                                      _tl1885118872_)))
                                                (let ((_hd1885318880_
                                                       (##car _e1885218877_))
                                                      (_tl1885418882_
                                                       (##cdr _e1885218877_)))
                                                  (let ((_fender18885_
                                                         _hd1885318880_))
                                                    (if (gx#stx-pair?
                                                         _tl1885418882_)
                                                        (let ((_e1885518887_
                                                               (gx#syntax-e
                                                                _tl1885418882_)))
                                                          (let ((_hd1885618890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1885518887_))
                        (_tl1885718892_ (##cdr _e1885518887_)))
                    (let ((_body18895_ _hd1885618890_))
                      (if (gx#stx-null? _tl1885718892_)
                          (if '#t
                              (_generate118838_
                               _hd18875_
                               _fender18885_
                               _body18895_)
                              (_E1884818863_))
                          (_E1884818863_)))))
                (_E1884818863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1884818863_)))))
                                    (_E1884818863_))))
                             (_E1884018921_
                              (lambda ()
                                (if (gx#stx-pair? _e1883918859_)
                                    (let ((_e1884218901_
                                           (gx#syntax-e _e1883918859_)))
                                      (let ((_hd1884318904_
                                             (##car _e1884218901_))
                                            (_tl1884418906_
                                             (##cdr _e1884218901_)))
                                        (let ((_hd18909_ _hd1884318904_))
                                          (if (gx#stx-pair? _tl1884418906_)
                                              (let ((_e1884518911_
                                                     (gx#syntax-e
                                                      _tl1884418906_)))
                                                (let ((_hd1884618914_
                                                       (##car _e1884518911_))
                                                      (_tl1884718916_
                                                       (##cdr _e1884518911_)))
                                                  (let ((_body18919_
                                                         _hd1884618914_))
                                                    (if (gx#stx-null?
                                                         _tl1884718916_)
                                                        (if '#t
                                                            (_generate118838_
                                                             _hd18909_
                                                             '#t
                                                             _body18919_)
                                                            (_E1884118897_))
                                                        (_E1884118897_)))))
                                              (_E1884118897_)))))
                                    (_E1884118897_)))))
                        (_E1884018921_)))))
                 (_generate-match18418_
                  (lambda (_where18582_
                           _target18583_
                           _hd18584_
                           _mvars18585_
                           _K18586_
                           _E18587_)
                    (letrec ((_BUG18589_
                              (lambda (_q18831_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18410_
                                       _hd18584_
                                       _q18831_)))
                             (_recur18590_
                              (lambda (_e18681_
                                       _vars18682_
                                       _target18683_
                                       _E18684_
                                       _k18685_)
                                (let* ((_e1868618693_ _e18681_)
                                       (_E1868818697_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1868618693_)))
                                       (_K1868918819_
                                        (lambda (_body18700_ _tag18701_)
                                          (let ((_$e18703_ _tag18701_))
                                            (if (eq? 'any _$e18703_)
                                                (_k18685_ _vars18682_)
                                                (if (eq? 'id _$e18703_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18683_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18411_
                                                       (gx#core-list
                                                        _wrap-e18413_
                                                        _body18700_)
                                                       _target18683_)
                                                      (_k18685_ _vars18682_)
                                                      _E18684_)
                                                     _E18684_)
                                                    (if (eq? 'var _$e18703_)
                                                        (_k18685_
                                                         (cons (cons _body18700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18683_)
                       _vars18682_))
                (if (eq? 'cons _$e18703_)
                    (let ((_$e18706_ (gx#genident__1 'e))
                          (_$hd18707_ (gx#genident__1 'hd))
                          (_$tl18708_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18683_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18706_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18412_
                                           _target18683_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18707_ '())
                                     (cons (gx#core-list '##car _$e18706_)
                                           '()))
                               (cons (cons (cons _$tl18708_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18706_)
                                                 '()))
                                     '()))
                         (let* ((_body1870918716_ _body18700_)
                                (_E1871118720_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1870918716_)))
                                (_K1871218728_
                                 (lambda (_tl18723_ _hd18724_)
                                   (_recur18590_
                                    _hd18724_
                                    _vars18682_
                                    _$hd18707_
                                    _E18684_
                                    (lambda (_vars18726_)
                                      (_recur18590_
                                       _tl18723_
                                       _vars18726_
                                       _$tl18708_
                                       _E18684_
                                       _k18685_))))))
                           (if (##pair? _body1870918716_)
                               (let ((_hd1871318731_ (##car _body1870918716_))
                                     (_tl1871418733_ (##cdr _body1870918716_)))
                                 (let* ((_hd18736_ _hd1871318731_)
                                        (_tl18738_ _tl1871418733_))
                                   (_K1871218728_ _tl18738_ _hd18736_)))
                               (_E1871118720_)))))
                       _E18684_))
                    (if (eq? 'splice _$e18703_)
                        (let* ((_body1873918746_ _body18700_)
                               (_E1874118750_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1873918746_)))
                               (_K1874218801_
                                (lambda (_tl18753_ _hd18754_)
                                  (let* ((_rlen18756_
                                          (_splice-rlen18591_ _tl18753_))
                                         (_$target18758_
                                          (gx#genident__1 'target))
                                         (_$hd18760_ (gx#genident__1 'hd))
                                         (_$tl18762_ (gx#genident__1 'tl))
                                         (_$lp18764_ (gx#genident__1 'loop))
                                         (_$lp-e18766_ (gx#genident__1 'e))
                                         (_$lp-hd18768_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18770_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18772_
                                          (_splice-vars18592_ _hd18754_))
                                         (_lvars18774_
                                          (gx#gentemps _svars18772_))
                                         (_tlvars18776_
                                          (gx#gentemps _svars18772_))
                                         (_linit18780_
                                          (map (lambda (_var18778_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18774_)))
                                    (letrec ((_make-loop18783_
                                              (lambda (_vars18787_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18760_ _lvars18774_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18760_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18766_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18412_
                                                 _$hd18760_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18768_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18766_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18770_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18766_)
                                                       '()))
                                           '()))
                               (_recur18590_
                                _hd18754_
                                '()
                                _$lp-hd18768_
                                _E18684_
                                (lambda (_hdvars18789_)
                                  (cons _$lp18764_
                                        (cons _$lp-tl18770_
                                              (map (lambda (_svar18791_
                                                            _lvar18792_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18791_
                                                               _hdvars18789_
                                                               _BUG18589_)
                                                      _lvar18792_))
                                                   _svars18772_
                                                   _lvars18774_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18794_ _tlvar18795_)
                                     (cons (cons _tlvar18795_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18794_)
                                                 '())))
                                   _lvars18774_
                                   _tlvars18776_)
                              (_k18685_
                               (foldl2 (lambda (_svar18797_
                                                _tlvar18798_
                                                _r18799_)
                                         (cons (cons _svar18797_ _tlvar18798_)
                                               _r18799_))
                                       _vars18787_
                                       _svars18772_
                                       _tlvars18776_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18764_
                                                       (cons _$target18758_
                                                             _linit18780_))))))
                                      (let ((_body18785_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18758_
                                                                (cons _$tl18762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18683_
                         _rlen18756_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18590_
                                               _tl18753_
                                               _vars18682_
                                               _$tl18762_
                                               _E18684_
                                               _make-loop18783_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18683_)
                                         (if (zero? _rlen18756_)
                                             _body18785_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18683_)
                                               _rlen18756_)
                                              _body18785_
                                              _E18684_))
                                         _E18684_)))))))
                          (if (##pair? _body1873918746_)
                              (let ((_hd1874318804_ (##car _body1873918746_))
                                    (_tl1874418806_ (##cdr _body1873918746_)))
                                (let* ((_hd18809_ _hd1874318804_)
                                       (_tl18811_ _tl1874418806_))
                                  (_K1874218801_ _tl18811_ _hd18809_)))
                              (_E1874118750_)))
                        (if (eq? 'null _$e18703_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18683_)
                             (_k18685_ _vars18682_)
                             _E18684_)
                            (if (eq? 'vector _$e18703_)
                                (let ((_$e18813_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18683_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18813_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18412_
                                                        _target18683_))
                                                      '()))
                                          '())
                                    (_recur18590_
                                     _body18700_
                                     _vars18682_
                                     _$e18813_
                                     _E18684_
                                     _k18685_))
                                   _E18684_))
                                (if (eq? 'box _$e18703_)
                                    (let ((_$e18815_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18683_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18815_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18412_
                                                            _target18683_))
                                                          '()))
                                              '())
                                        (_recur18590_
                                         _body18700_
                                         _vars18682_
                                         _$e18815_
                                         _E18684_
                                         _k18685_))
                                       _E18684_))
                                    (if (eq? 'datum _$e18703_)
                                        (let ((_$e18817_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18683_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18817_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18683_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18817_
                                              _body18700_)
                                             (_k18685_ _vars18682_)
                                             _E18684_))
                                           _E18684_))
                                        (_BUG18589_ _e18681_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1868618693_)
                                      (let ((_hd1869018822_
                                             (##car _e1868618693_))
                                            (_tl1869118824_
                                             (##cdr _e1868618693_)))
                                        (let* ((_tag18827_ _hd1869018822_)
                                               (_body18829_ _tl1869118824_))
                                          (_K1868918819_
                                           _body18829_
                                           _tag18827_)))
                                      (_E1868818697_)))))
                             (_splice-rlen18591_
                              (lambda (_e18643_)
                                (let _lp18645_ ((_e18647_ _e18643_)
                                                (_n18648_ '0))
                                  (let* ((_e1864918656_ _e18647_)
                                         (_E1865118660_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1864918656_)))
                                         (_K1865218669_
                                          (lambda (_body18663_ _tag18664_)
                                            (let ((_$e18666_ _tag18664_))
                                              (if (eq? 'splice _$e18666_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18410_
                                                   _where18582_)
                                                  (if (eq? 'cons _$e18666_)
                                                      (_lp18645_
                                                       (cdr _body18663_)
                                                       (fx+ _n18648_ '1))
                                                      _n18648_))))))
                                    (if (##pair? _e1864918656_)
                                        (let ((_hd1865318672_
                                               (##car _e1864918656_))
                                              (_tl1865418674_
                                               (##cdr _e1864918656_)))
                                          (let* ((_tag18677_ _hd1865318672_)
                                                 (_body18679_ _tl1865418674_))
                                            (_K1865218669_
                                             _body18679_
                                             _tag18677_)))
                                        (_E1865118660_))))))
                             (_splice-vars18592_
                              (lambda (_e18599_)
                                (let _recur18601_ ((_e18603_ _e18599_)
                                                   (_vars18604_ '()))
                                  (let* ((_e1860518612_ _e18603_)
                                         (_E1860718616_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1860518612_)))
                                         (_K1860818631_
                                          (lambda (_body18619_ _tag18620_)
                                            (let ((_$e18622_ _tag18620_))
                                              (if (eq? 'var _$e18622_)
                                                  (cons _body18619_
                                                        _vars18604_)
                                                  (if (let ((_$e18625_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e18622_)))
                (if _$e18625_ _$e18625_ (eq? 'splice _$e18622_)))
              (_recur18601_
               (cdr _body18619_)
               (_recur18601_ (car _body18619_) _vars18604_))
              (if (let ((_$e18628_ (eq? 'vector _$e18622_)))
                    (if _$e18628_ _$e18628_ (eq? 'box _$e18622_)))
                  (_recur18601_ _body18619_ _vars18604_)
                  _vars18604_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1860518612_)
                                        (let ((_hd1860918634_
                                               (##car _e1860518612_))
                                              (_tl1861018636_
                                               (##cdr _e1860518612_)))
                                          (let* ((_tag18639_ _hd1860918634_)
                                                 (_body18641_ _tl1861018636_))
                                            (_K1860818631_
                                             _body18641_
                                             _tag18639_)))
                                        (_E1860718616_))))))
                             (_make-body18593_
                              (lambda (_vars18595_)
                                (cons _K18586_
                                      (map (lambda (_mvar18597_)
                                             (assgetq (car _mvar18597_)
                                                      _vars18595_
                                                      _BUG18589_))
                                           _mvars18585_)))))
                      (_recur18590_
                       _hd18584_
                       '()
                       _target18583_
                       _E18587_
                       _make-body18593_))))
                 (_parse-clause18419_
                  (lambda (_hd18488_ _ids18489_)
                    (let _recur18491_ ((_e18493_ _hd18488_)
                                       (_vars18494_ '())
                                       (_depth18495_ '0))
                      (if (gx#identifier? _e18493_)
                          (if (gx#underscore? _e18493_)
                              (values '(any) _vars18494_)
                              (if (gx#ellipsis? _e18493_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18410_
                                   _hd18488_)
                                  (if (find (lambda (_id18497_)
                                              (gx#bound-identifier=?
                                               _e18493_
                                               _id18497_))
                                            _ids18489_)
                                      (values (cons 'id _e18493_) _vars18494_)
                                      (if (find (lambda (_var18499_)
                                                  (gx#bound-identifier=?
                                                   _e18493_
                                                   (car _var18499_)))
                                                _vars18494_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18410_
                                           _e18493_)
                                          (values (cons 'var _e18493_)
                                                  (cons (cons _e18493_
                                                              _depth18495_)
                                                        _vars18494_))))))
                          (if (gx#stx-pair? _e18493_)
                              (let* ((_e1850018507_ _e18493_)
                                     (_E1850218511_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1850018507_)))
                                     (_E1850118572_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1850018507_)
                                            (let ((_e1850318515_
                                                   (gx#syntax-e
                                                    _e1850018507_)))
                                              (let ((_hd1850418518_
                                                     (##car _e1850318515_))
                                                    (_tl1850518520_
                                                     (##cdr _e1850318515_)))
                                                (let* ((_hd18523_
                                                        _hd1850418518_)
                                                       (_rest18525_
                                                        _tl1850518520_))
                                                  (if '#t
                                                      (let* ((_make-pair18540_
                                                              (lambda (_tag18527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18528_
                               _tl18529_)
                        (let* ((_hd-depth18531_
                                (if (eq? _tag18527_ 'splice)
                                    (fx+ _depth18495_ '1)
                                    _depth18495_))
                               (_g19685_
                                (_recur18491_
                                 _hd18528_
                                 _vars18494_
                                 _hd-depth18531_)))
                          (begin
                            (let ((_g19686_
                                   (if (##values? _g19685_)
                                       (##vector-length _g19685_)
                                       1)))
                              (if (not (##fx= _g19686_ 2))
                                  (error "Context expects 2 values" _g19686_)))
                            (let ((_hd18533_ (##vector-ref _g19685_ 0))
                                  (_vars18534_ (##vector-ref _g19685_ 1)))
                              (let ((_g19687_
                                     (_recur18491_
                                      _tl18529_
                                      _vars18534_
                                      _depth18495_)))
                                (begin
                                  (let ((_g19688_
                                         (if (##values? _g19687_)
                                             (##vector-length _g19687_)
                                             1)))
                                    (if (not (##fx= _g19688_ 2))
                                        (error "Context expects 2 values"
                                               _g19688_)))
                                  (let ((_tl18536_ (##vector-ref _g19687_ 0))
                                        (_vars18537_
                                         (##vector-ref _g19687_ 1)))
                                    (let ()
                                      (values (cons _tag18527_
                                                    (cons _hd18533_ _tl18536_))
                                              _vars18537_))))))))))
                     (_e1854118548_ _rest18525_)
                     (_E1854318552_
                      (lambda ()
                        (_make-pair18540_ 'cons _hd18523_ _rest18525_)))
                     (_E1854218568_
                      (lambda ()
                        (if (gx#stx-pair? _e1854118548_)
                            (let ((_e1854418556_ (gx#syntax-e _e1854118548_)))
                              (let ((_hd1854518559_ (##car _e1854418556_))
                                    (_tl1854618561_ (##cdr _e1854418556_)))
                                (let* ((_rest-hd18564_ _hd1854518559_)
                                       (_rest-tl18566_ _tl1854618561_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18564_)
                                          (_make-pair18540_
                                           'splice
                                           _hd18523_
                                           _rest-tl18566_)
                                          (_make-pair18540_
                                           'cons
                                           _hd18523_
                                           _rest18525_))
                                      (_E1854318552_)))))
                            (_E1854318552_)))))
                (_E1854218568_))
              (_E1850218511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1850218511_)))))
                                (_E1850118572_))
                              (if (gx#stx-null? _e18493_)
                                  (values '(null) _vars18494_)
                                  (if (gx#stx-vector? _e18493_)
                                      (let ((_g19689_
                                             (_recur18491_
                                              (vector->list
                                               (gx#syntax-e _e18493_))
                                              _vars18494_
                                              _depth18495_)))
                                        (begin
                                          (let ((_g19690_
                                                 (if (##values? _g19689_)
                                                     (##vector-length _g19689_)
                                                     1)))
                                            (if (not (##fx= _g19690_ 2))
                                                (error "Context expects 2 values"
                                                       _g19690_)))
                                          (let ((_e18576_
                                                 (##vector-ref _g19689_ 0))
                                                (_vars18577_
                                                 (##vector-ref _g19689_ 1)))
                                            (values (cons 'vector _e18576_)
                                                    _vars18577_))))
                                      (if (gx#stx-box? _e18493_)
                                          (let ((_g19691_
                                                 (_recur18491_
                                                  (unbox (gx#syntax-e
                                                          _e18493_))
                                                  _vars18494_
                                                  _depth18495_)))
                                            (begin
                                              (let ((_g19692_
                                                     (if (##values? _g19691_)
                                                         (##vector-length
                                                          _g19691_)
                                                         1)))
                                                (if (not (##fx= _g19692_ 2))
                                                    (error "Context expects 2 values"
                                                           _g19692_)))
                                              (let ((_e18579_
                                                     (##vector-ref _g19691_ 0))
                                                    (_vars18580_
                                                     (##vector-ref
                                                      _g19691_
                                                      1)))
                                                (values (cons 'box _e18579_)
                                                        _vars18580_))))
                                          (if (gx#stx-datum? _e18493_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18493_))
                                                      _vars18494_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18410_
                                               _e18493_)))))))))))
          (let* ((_e1842018433_ _stx18410_)
                 (_E1842218437_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1842018433_)))
                 (_E1842118484_
                  (lambda ()
                    (if (gx#stx-pair? _e1842018433_)
                        (let ((_e1842318441_ (gx#syntax-e _e1842018433_)))
                          (let ((_hd1842418444_ (##car _e1842318441_))
                                (_tl1842518446_ (##cdr _e1842318441_)))
                            (if (gx#stx-pair? _tl1842518446_)
                                (let ((_e1842618449_
                                       (gx#syntax-e _tl1842518446_)))
                                  (let ((_hd1842718452_ (##car _e1842618449_))
                                        (_tl1842818454_ (##cdr _e1842618449_)))
                                    (let ((_expr18457_ _hd1842718452_))
                                      (if (gx#stx-pair? _tl1842818454_)
                                          (let ((_e1842918459_
                                                 (gx#syntax-e _tl1842818454_)))
                                            (let ((_hd1843018462_
                                                   (##car _e1842918459_))
                                                  (_tl1843118464_
                                                   (##cdr _e1842918459_)))
                                              (let* ((_ids18467_
                                                      _hd1843018462_)
                                                     (_clauses18469_
                                                      _tl1843118464_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18467_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18410_
                                                         _ids18467_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18469_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18410_)
                    (let* ((_ids18471_ (gx#syntax->list _ids18467_))
                           (_clauses18473_ (gx#syntax->list _clauses18469_))
                           (_clause-ids18475_ (gx#gentemps _clauses18473_))
                           (_E18477_ (gx#genident__0))
                           (_target18479_ (gx#genident__0))
                           (_first18481_
                            (if (null? _clauses18473_)
                                _E18477_
                                (car _clause-ids18475_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18477_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18479_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18479_))
                                            '()))
                                '())
                          (_generate-body18416_
                           (_generate-bindings18415_
                            _target18479_
                            _ids18471_
                            _clauses18473_
                            _clause-ids18475_
                            _E18477_)
                           (cons _first18481_ (cons _expr18457_ '()))))
                         (gx#stx-source _stx18410_)))
                       (gx#stx-source _stx18410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1842218437_)))))
                                          (_E1842218437_)))))
                                (_E1842218437_))))
                        (_E1842218437_)))))
            (_E1842118484_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx19120_)
          (let* ((_identifier=?19122_ 'free-identifier=?)
                 (_unwrap-e19124_ 'syntax-e)
                 (_wrap-e19126_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19120_
             _identifier=?19122_
             _unwrap-e19124_
             _wrap-e19126_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx19128_ _identifier=?19129_)
          (let* ((_unwrap-e19131_ 'syntax-e) (_wrap-e19133_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19128_
             _identifier=?19129_
             _unwrap-e19131_
             _wrap-e19133_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx19135_ _identifier=?19136_ _unwrap-e19137_)
          (let ((_wrap-e19139_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx19135_
             _identifier=?19136_
             _unwrap-e19137_
             _wrap-e19139_))))
      (define gx#macro-expand-syntax-case
        (lambda _g19694_
          (let ((_g19693_ (length _g19694_)))
            (cond ((##fx= _g19693_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g19694_))
                  ((##fx= _g19693_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g19694_))
                  ((##fx= _g19693_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g19694_))
                  ((##fx= _g19693_ 4)
                   (apply gx#macro-expand-syntax-case__% _g19694_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g19694_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18407_)
      (if (gx#identifier? _stx18407_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18407_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18365_ . _rest18366_)
      (let ((_len18368_ (length _hd18365_)))
        (let _lp18370_ ((_rest18372_ _rest18366_))
          (let* ((_rest1837318381_ _rest18372_)
                 (_else1837518389_ (lambda () '#!void))
                 (_K1837718395_
                  (lambda (_rest18392_ _hd18393_)
                    (if (fx= _len18368_ (length _hd18393_))
                        (_lp18370_ _rest18392_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18393_)))))
            (if (##pair? _rest1837318381_)
                (let ((_hd1837818398_ (##car _rest1837318381_))
                      (_tl1837918400_ (##cdr _rest1837318381_)))
                  (let* ((_hd18403_ _hd1837818398_)
                         (_rest18405_ _tl1837918400_))
                    (_K1837718395_ _rest18405_ _hd18403_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18323_ _n18324_)
      (let _lp18326_ ((_rest18328_ _stx18323_) (_r18329_ '()))
        (if (gx#stx-pair? _rest18328_)
            (let* ((_g1833018337_ (gx#syntax-e _rest18328_))
                   (_E1833218341_
                    (lambda () (error '"No clause matching" _g1833018337_)))
                   (_K1833318347_
                    (lambda (_rest18344_ _hd18345_)
                      (_lp18326_ _rest18344_ (cons _hd18345_ _r18329_)))))
              (if (##pair? _g1833018337_)
                  (let ((_hd1833418350_ (##car _g1833018337_))
                        (_tl1833518352_ (##cdr _g1833018337_)))
                    (let* ((_hd18355_ _hd1833418350_)
                           (_rest18357_ _tl1833518352_))
                      (_K1833318347_ _rest18357_ _hd18355_)))
                  (_E1833218341_)))
            (let _lp18359_ ((_n18361_ _n18324_)
                            (_l18362_ _r18329_)
                            (_r18363_ _rest18328_))
              (if (null? _l18362_)
                  (values _l18362_ _r18363_)
                  (if (fxpositive? _n18361_)
                      (_lp18359_
                       (fx- _n18361_ '1)
                       (cdr _l18362_)
                       (cons (car _l18362_) _r18363_))
                      (values (reverse _l18362_) _r18363_)))))))))
