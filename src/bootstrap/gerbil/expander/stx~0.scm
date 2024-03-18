(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710781149)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args82838_
        (apply make-instance gx#identifier-wrap::t _$args82838_)))
    (define gx#identifier-wrap-marks
      (make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args82835_
        (apply make-instance gx#syntax-wrap::t _$args82835_)))
    (define gx#syntax-wrap-mark
      (make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args82832_
        (apply make-instance gx#syntax-quote::t _$args82832_)))
    (define gx#syntax-quote-context
      (make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e (make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_stx82830_) (symbol? (gx#stx-e _stx82830_))))
    (define gx#identifier-quote?
      (lambda (_stx82828_)
        (if (##structure-direct-instance-of? _stx82828_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82828_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82826_)
        (if (##structure-direct-instance-of? _stx82826_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82826_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82826_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82824_)
        (if (##structure-direct-instance-of? _stx82824_ 'gx#syntax-quote::t)
            _stx82824_
            (if (##structure-direct-instance-of? _stx82824_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82824_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82807_)
        (if (##structure-direct-instance-of? _stx82807_ 'gx#syntax-wrap::t)
            (let _lp82809_ ((_e82811_
                             (##unchecked-structure-ref
                              _stx82807_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82812_
                             (cons (##unchecked-structure-ref
                                    _stx82807_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82811_)
                  (let ((_$e82814_ (##type-id (##structure-type _e82811_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82814_)
                        (_lp82809_
                         (##unchecked-structure-ref _e82811_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82811_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82812_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82814_)
                                (eq? 'gx#identifier-wrap::t _$e82814_))
                            (##unchecked-structure-ref
                             _e82811_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82814_)
                                (_lp82809_
                                 (##unchecked-structure-ref
                                  _e82811_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82812_)
                                _e82811_))))
                  (if (null? _marks82812_)
                      _e82811_
                      (if (pair? _e82811_)
                          (cons (gx#stx-wrap (car _e82811_) _marks82812_)
                                (gx#stx-wrap (cdr _e82811_) _marks82812_))
                          (if (vector? _e82811_)
                              (vector-map
                               (lambda (_g8281982821_)
                                 (gx#stx-wrap _g8281982821_ _marks82812_))
                               _e82811_)
                              (if (box? _e82811_)
                                  (box (gx#stx-wrap
                                        (unbox _e82811_)
                                        _marks82812_))
                                  _e82811_))))))
            (if (##structure-instance-of? _stx82807_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82807_ '1 gx#AST::t '#f)
                _stx82807_))))
    (define gx#syntax->datum
      (lambda (_stx82805_)
        (if (##structure-instance-of? _stx82805_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82805_ '1 gx#AST::t '#f))
            (if (pair? _stx82805_)
                (cons (gx#syntax->datum (car _stx82805_))
                      (gx#syntax->datum (cdr _stx82805_)))
                (if (vector? _stx82805_)
                    (vector-map gx#syntax->datum _stx82805_)
                    (if (box? _stx82805_)
                        (box (gx#syntax->datum (unbox _stx82805_)))
                        _stx82805_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82748_ _datum82749_ _src82750_ _quote?82751_)
        (letrec ((_wrap-datum82753_
                  (lambda (_e82777_ _marks82778_)
                    (_wrap-inner82755_
                     _e82777_
                     (lambda (_g8277982781_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8277982781_
                        _src82750_
                        _marks82778_)))))
                 (_wrap-quote82754_
                  (lambda (_e82769_ _ctx82770_ _marks82771_)
                    (_wrap-inner82755_
                     _e82769_
                     (lambda (_g8277282774_)
                       (##structure
                        gx#syntax-quote::t
                        _g8277282774_
                        _src82750_
                        _ctx82770_
                        _marks82771_)))))
                 (_wrap-inner82755_
                  (lambda (_e82762_ _wrap-e82763_)
                    (let _recur82765_ ((_e82767_ _e82762_))
                      (if (symbol? _e82767_)
                          (_wrap-e82763_ _e82767_)
                          (if (pair? _e82767_)
                              (cons (_recur82765_ (car _e82767_))
                                    (_recur82765_ (cdr _e82767_)))
                              (if (vector? _e82767_)
                                  (vector-map _recur82765_ _e82767_)
                                  (if (box? _e82767_)
                                      (box (_recur82765_ (unbox _e82767_)))
                                      _e82767_)))))))
                 (_wrap-outer82756_
                  (lambda (_e82760_)
                    (if (##structure-instance-of? _e82760_ 'gerbil#AST::t)
                        _e82760_
                        (##structure gx#AST::t _e82760_ _src82750_)))))
          (if (##structure-instance-of? _datum82749_ 'gerbil#AST::t)
              _datum82749_
              (if (not _stx82748_)
                  (##structure gx#AST::t _datum82749_ _src82750_)
                  (if (gx#identifier? _stx82748_)
                      (let ((_stx82758_ (gx#stx-unwrap__0 _stx82748_)))
                        (_wrap-outer82756_
                         (if (##structure-direct-instance-of?
                              _stx82758_
                              'gx#syntax-quote::t)
                             (if _quote?82751_
                                 (_wrap-quote82754_
                                  _datum82749_
                                  (##unchecked-structure-ref
                                   _stx82758_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82758_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82753_
                                  _datum82749_
                                  (##unchecked-structure-ref
                                   _stx82758_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82753_
                              _datum82749_
                              (##unchecked-structure-ref
                               _stx82758_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82748_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82787_ _datum82788_)
        (let* ((_src82790_ '#f) (_quote?82792_ '#t))
          (gx#datum->syntax__%
           _stx82787_
           _datum82788_
           _src82790_
           _quote?82792_))))
    (define gx#datum->syntax__1
      (lambda (_stx82794_ _datum82795_ _src82796_)
        (let ((_quote?82798_ '#t))
          (gx#datum->syntax__%
           _stx82794_
           _datum82795_
           _src82796_
           _quote?82798_))))
    (define gx#datum->syntax
      (lambda _g82919_
        (let ((_g82918_ (##length _g82919_)))
          (cond ((##fx= _g82918_ 2)
                 (apply (lambda (_stx82787_ _datum82788_)
                          (gx#datum->syntax__0 _stx82787_ _datum82788_))
                        _g82919_))
                ((##fx= _g82918_ 3)
                 (apply (lambda (_stx82794_ _datum82795_ _src82796_)
                          (gx#datum->syntax__1
                           _stx82794_
                           _datum82795_
                           _src82796_))
                        _g82919_))
                ((##fx= _g82918_ 4)
                 (apply (lambda (_stx82800_
                                 _datum82801_
                                 _src82802_
                                 _quote?82803_)
                          (gx#datum->syntax__%
                           _stx82800_
                           _datum82801_
                           _src82802_
                           _quote?82803_))
                        _g82919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82919_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82724_ _marks82725_)
        (let _lp82727_ ((_e82729_ _stx82724_)
                        (_marks82730_ _marks82725_)
                        (_src82731_ (gx#stx-source _stx82724_)))
          (if (##structure-direct-instance-of? _e82729_ 'gx#syntax-wrap::t)
              (_lp82727_
               (##unchecked-structure-ref _e82729_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82729_ '3 gx#syntax-wrap::t '#f)
                _marks82730_)
               (##unchecked-structure-ref _e82729_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82729_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82730_)
                      _e82729_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82729_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82729_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82729_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82730_)))
                  (if (##structure-direct-instance-of?
                       _e82729_
                       'gx#syntax-quote::t)
                      _e82729_
                      (if (##structure-instance-of? _e82729_ 'gerbil#AST::t)
                          (_lp82727_
                           (##unchecked-structure-ref
                            _e82729_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82730_
                           (##unchecked-structure-ref
                            _e82729_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82729_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82729_
                               _src82731_
                               (reverse _marks82730_))
                              (if (null? _marks82730_)
                                  _e82729_
                                  (if (pair? _e82729_)
                                      (cons (gx#stx-wrap
                                             (car _e82729_)
                                             _marks82730_)
                                            (gx#stx-wrap
                                             (cdr _e82729_)
                                             _marks82730_))
                                      (if (vector? _e82729_)
                                          (vector-map
                                           (lambda (_g8273282734_)
                                             (gx#stx-wrap
                                              _g8273282734_
                                              _marks82730_))
                                           _e82729_)
                                          (if (box? _e82729_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82729_)
                                                    _marks82730_))
                                              _e82729_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82740_)
        (let ((_marks82742_ '())) (gx#stx-unwrap__% _stx82740_ _marks82742_))))
    (define gx#stx-unwrap
      (lambda _g82921_
        (let ((_g82920_ (##length _g82921_)))
          (cond ((##fx= _g82920_ 1)
                 (apply (lambda (_stx82740_) (gx#stx-unwrap__0 _stx82740_))
                        _g82921_))
                ((##fx= _g82920_ 2)
                 (apply (lambda (_stx82744_ _marks82745_)
                          (gx#stx-unwrap__% _stx82744_ _marks82745_))
                        _g82921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82921_))))))
    (define gx#stx-wrap
      (lambda (_stx82717_ _marks82718_)
        (foldl1 (lambda (_mark82720_ _stx82721_)
                  (gx#stx-apply-mark _stx82721_ _mark82720_))
                _stx82717_
                _marks82718_)))
    (define gx#stx-rewrap
      (lambda (_stx82711_ _marks82712_)
        (foldr1 (lambda (_mark82714_ _stx82715_)
                  (gx#stx-apply-mark _stx82715_ _mark82714_))
                _stx82711_
                _marks82712_)))
    (define gx#stx-apply-mark
      (lambda (_stx82708_ _mark82709_)
        (if (##structure-direct-instance-of? _stx82708_ 'gx#syntax-quote::t)
            _stx82708_
            (if (and (##structure-direct-instance-of?
                      _stx82708_
                      'gx#syntax-wrap::t)
                     (eq? _mark82709_
                          (##unchecked-structure-ref
                           _stx82708_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82708_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82708_
                 (gx#stx-source _stx82708_)
                 _mark82709_)))))
    (define gx#apply-mark
      (lambda (_mark82672_ _marks82673_)
        (let* ((_marks8267482682_ _marks82673_)
               (_else8267682690_ (lambda () (cons _mark82672_ _marks82673_)))
               (_K8267882696_
                (lambda (_rest82693_ _hd82694_)
                  (if (eq? _mark82672_ _hd82694_)
                      _rest82693_
                      (cons _mark82672_ _marks82673_)))))
          (if (##pair? _marks8267482682_)
              (let ((_hd8267982699_ (##car _marks8267482682_))
                    (_tl8268082701_ (##cdr _marks8267482682_)))
                (let* ((_hd82704_ _hd8267982699_) (_rest82706_ _tl8268082701_))
                  (_K8267882696_ _rest82706_ _hd82704_)))
              (_else8267682690_)))))
    (define gx#stx-e
      (lambda (_stx82670_)
        (if (##structure-direct-instance-of? _stx82670_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82670_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82670_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82670_ '1 gx#AST::t '#f)
                _stx82670_))))
    (define gx#stx-source
      (lambda (_stx82668_)
        (if (##structure-instance-of? _stx82668_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82668_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82662_ _src82663_)
        (if (or (##structure-instance-of? _stx82662_ 'gerbil#AST::t)
                (not _src82663_))
            _stx82662_
            (##structure gx#AST::t _stx82662_ _src82663_))))
    (define gx#stx-datum?
      (lambda (_stx82660_) (gx#self-quoting? (gx#stx-e _stx82660_))))
    (define gx#self-quoting?
      (lambda (_x82643_)
        (let ((_$e82645_ (immediate? _x82643_)))
          (if _$e82645_
              _$e82645_
              (let ((_$e82648_ (number? _x82643_)))
                (if _$e82648_
                    _$e82648_
                    (let ((_$e82651_ (keyword? _x82643_)))
                      (if _$e82651_
                          _$e82651_
                          (let ((_$e82654_ (string? _x82643_)))
                            (if _$e82654_
                                _$e82654_
                                (let ((_$e82657_ (vector? _x82643_)))
                                  (if _$e82657_
                                      _$e82657_
                                      (u8vector? _x82643_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82641_) (boolean? (gx#stx-e _e82641_))))
    (define gx#stx-keyword? (lambda (_e82639_) (keyword? (gx#stx-e _e82639_))))
    (define gx#stx-char? (lambda (_e82637_) (char? (gx#stx-e _e82637_))))
    (define gx#stx-number? (lambda (_e82635_) (number? (gx#stx-e _e82635_))))
    (define gx#stx-fixnum? (lambda (_e82633_) (fixnum? (gx#stx-e _e82633_))))
    (define gx#stx-string? (lambda (_e82631_) (string? (gx#stx-e _e82631_))))
    (define gx#stx-null? (lambda (_e82629_) (null? (gx#stx-e _e82629_))))
    (define gx#stx-pair? (lambda (_e82627_) (pair? (gx#stx-e _e82627_))))
    (define gx#stx-list?
      (lambda (_e82589_)
        (let* ((_g8259082599_ (gx#stx-e _e82589_))
               (_E8259382603_
                (lambda () (error '"No clause matching" _g8259082599_))))
          (let ((_K8259582619_
                 (lambda (_rest82617_) (gx#stx-list? _rest82617_)))
                (_K8259482609_ (lambda (_tail82607_) (null? _tail82607_))))
            (if (##pair? _g8259082599_)
                (let* ((_tl8259782622_ (##cdr _g8259082599_))
                       (_rest82625_ _tl8259782622_))
                  (gx#stx-list? _rest82625_))
                (let ((_tail82612_ _g8259082599_)) (null? _tail82612_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82582_)
        (let* ((_e82584_ (gx#stx-e _e82582_)) (_$e82586_ (pair? _e82584_)))
          (if _$e82586_ _$e82586_ (null? _e82584_)))))
    (define gx#stx-vector? (lambda (_e82580_) (vector? (gx#stx-e _e82580_))))
    (define gx#stx-box? (lambda (_e82578_) (box? (gx#stx-e _e82578_))))
    (define gx#stx-eq?
      (lambda (_x82575_ _y82576_)
        (eq? (gx#stx-e _x82575_) (gx#stx-e _y82576_))))
    (define gx#stx-eqv?
      (lambda (_x82572_ _y82573_)
        (eqv? (gx#stx-e _x82572_) (gx#stx-e _y82573_))))
    (define gx#stx-equal?
      (lambda (_x82569_ _y82570_)
        (equal? (gx#stx-e _x82569_) (gx#stx-e _y82570_))))
    (define gx#stx-false? (lambda (_x82567_) (not (gx#stx-e _x82567_))))
    (define gx#stx-identifier
      (lambda (_template82564_ . _args82565_)
        (gx#datum->syntax__1
         _template82564_
         (apply make-symbol (gx#syntax->datum _args82565_))
         (gx#stx-source _template82564_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82562_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82562_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82560_)
        (if (##structure-direct-instance-of? _stx82560_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82560_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82560_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82560_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82560_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82556_)
        (let ((_stx82558_ (gx#stx-unwrap__0 _stx82556_)))
          (if (gx#identifier-quote? _stx82558_)
              (##unchecked-structure-ref _stx82558_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82511_)
        (let* ((_g8251282522_ (gx#stx-e _stx82511_))
               (_else8251582530_ (lambda () '#f)))
          (let ((_K8251882544_
                 (lambda (_rest82541_ _hd82542_)
                   (if (gx#identifier? _hd82542_)
                       (gx#identifier-list? _rest82541_)
                       '#f)))
                (_K8251782535_ (lambda () '#t)))
            (let ((_try-match8251482538_
                   (lambda ()
                     (if (##null? _g8251282522_)
                         (_K8251782535_)
                         (_else8251582530_)))))
              (if (##pair? _g8251282522_)
                  (let ((_tl8252082549_ (##cdr _g8251282522_))
                        (_hd8251982547_ (##car _g8251282522_)))
                    (let ((_hd82552_ _hd8251982547_)
                          (_rest82554_ _tl8252082549_))
                      (_K8251882544_ _rest82554_ _hd82552_)))
                  (_try-match8251482538_)))))))
    (define gx#genident__%
      (lambda (_e82488_ _src82489_)
        (gx#stx-wrap-source
         (gensym (let ((_e82491_ (gx#stx-e _e82488_)))
                   (if (interned-symbol? _e82491_) _e82491_ 'g)))
         (let ((_$e82493_ (gx#stx-source _e82488_)))
           (if _$e82493_ _$e82493_ _src82489_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82500_ 'g) (_src82502_ '#f))
          (gx#genident__% _e82500_ _src82502_))))
    (define gx#genident__1
      (lambda (_e82504_)
        (let ((_src82506_ '#f)) (gx#genident__% _e82504_ _src82506_))))
    (define gx#genident
      (lambda _g82923_
        (let ((_g82922_ (##length _g82923_)))
          (cond ((##fx= _g82922_ 0)
                 (apply (lambda () (gx#genident__0)) _g82923_))
                ((##fx= _g82922_ 1)
                 (apply (lambda (_e82504_) (gx#genident__1 _e82504_))
                        _g82923_))
                ((##fx= _g82922_ 2)
                 (apply (lambda (_e82508_ _src82509_)
                          (gx#genident__% _e82508_ _src82509_))
                        _g82923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82923_))))))
    (define gx#gentemps
      (lambda (_stx-lst82485_) (gx#stx-map1 gx#genident _stx-lst82485_)))
    (define gx#syntax->list
      (lambda (_stx82483_) (gx#stx-map1 values _stx82483_)))
    (define gx#stx-car
      (lambda (_stx82480_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82480_)))))
    (define gx#stx-cdr
      (lambda (_stx82477_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82477_)))))
    (define gx#stx-length
      (lambda (_stx82442_)
        (let _lp82444_ ((_rest82446_ _stx82442_) (_n82447_ '0))
          (let* ((_g8244882456_ (gx#stx-e _rest82446_))
                 (_else8245082464_ (lambda () _n82447_))
                 (_K8245282469_
                  (lambda (_rest82467_)
                    (_lp82444_ _rest82467_ (fx+ _n82447_ '1)))))
            (if (##pair? _g8244882456_)
                (let* ((_tl8245482472_ (##cdr _g8244882456_))
                       (_rest82475_ _tl8245482472_))
                  (_K8245282469_ _rest82475_))
                (_else8245082464_))))))
    (define gx#stx-for-each
      (lambda _g82925_
        (let ((_g82924_ (##length _g82925_)))
          (cond ((##fx= _g82924_ 2)
                 (apply (lambda (_f82435_ _stx82436_)
                          (gx#stx-for-each1 _f82435_ _stx82436_))
                        _g82925_))
                ((##fx= _g82924_ 3)
                 (apply (lambda (_f82438_ _xstx82439_ _ystx82440_)
                          (gx#stx-for-each2 _f82438_ _xstx82439_ _ystx82440_))
                        _g82925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82925_))))))
    (define gx#stx-for-each1
      (lambda (_f82385_ _stx82386_)
        (if (procedure? _f82385_)
            '#!void
            (error '"expected procedure" _f82385_))
        (let _lp82388_ ((_rest82390_ _stx82386_))
          (let* ((_g8239182401_ (gx#syntax-e _rest82390_))
                 (_else8239482409_ (lambda () (_f82385_ _rest82390_))))
            (let ((_K8239782423_
                   (lambda (_rest82420_ _hd82421_)
                     (_f82385_ _hd82421_)
                     (_lp82388_ _rest82420_)))
                  (_K8239682414_ (lambda () '#!void)))
              (let ((_try-match8239382417_
                     (lambda ()
                       (if (##null? _g8239182401_)
                           (_K8239682414_)
                           (_else8239482409_)))))
                (if (##pair? _g8239182401_)
                    (let ((_tl8239982428_ (##cdr _g8239182401_))
                          (_hd8239882426_ (##car _g8239182401_)))
                      (let ((_hd82431_ _hd8239882426_)
                            (_rest82433_ _tl8239982428_))
                        (_K8239782423_ _rest82433_ _hd82431_)))
                    (_try-match8239382417_))))))))
    (define gx#stx-for-each2
      (lambda (_f82290_ _xstx82291_ _ystx82292_)
        (if (procedure? _f82290_)
            '#!void
            (error '"expected procedure" _f82290_))
        (let _lp82294_ ((_xrest82296_ _xstx82291_) (_yrest82297_ _ystx82292_))
          (let* ((_g8229882308_ (gx#syntax-e _xrest82296_))
                 (_else8230182316_ (lambda () '#!void)))
            (let ((_K8230482373_
                   (lambda (_xrest82342_ _xhd82343_)
                     (let* ((_g8234482351_ (gx#syntax-e _yrest82297_))
                            (_E8234682355_
                             (lambda ()
                               (error '"No clause matching" _g8234482351_)))
                            (_K8234782361_
                             (lambda (_yrest82358_ _yhd82359_)
                               (_f82290_ _xhd82343_ _yhd82359_)
                               (_lp82294_ _xrest82342_ _yrest82358_))))
                       (if (##pair? _g8234482351_)
                           (let ((_hd8234882364_ (##car _g8234482351_))
                                 (_tl8234982366_ (##cdr _g8234482351_)))
                             (let* ((_yhd82369_ _hd8234882364_)
                                    (_yrest82371_ _tl8234982366_))
                               (_K8234782361_ _yrest82371_ _yhd82369_)))
                           (_E8234682355_)))))
                  (_K8230382336_
                   (lambda ()
                     (let* ((_yrest8232082325_ _yrest82297_)
                            (_E8232282329_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8232082325_)))
                            (_K8232382333_
                             (lambda () (_f82290_ _xrest82296_ _yrest82297_))))
                       (if (not (gx#stx-null? _yrest8232082325_))
                           (_K8232382333_)
                           (_E8232282329_))))))
              (let ((_try-match8230082339_
                     (lambda ()
                       (if (not (null? _g8229882308_))
                           (_K8230382336_)
                           (_else8230182316_)))))
                (if (##pair? _g8229882308_)
                    (let ((_tl8230682378_ (##cdr _g8229882308_))
                          (_hd8230582376_ (##car _g8229882308_)))
                      (let ((_xhd82381_ _hd8230582376_)
                            (_xrest82383_ _tl8230682378_))
                        (_K8230482373_ _xrest82383_ _xhd82381_)))
                    (_try-match8230082339_))))))))
    (define gx#stx-map
      (lambda _g82927_
        (let ((_g82926_ (##length _g82927_)))
          (cond ((##fx= _g82926_ 2)
                 (apply (lambda (_f82283_ _stx82284_)
                          (gx#stx-map1 _f82283_ _stx82284_))
                        _g82927_))
                ((##fx= _g82926_ 3)
                 (apply (lambda (_f82286_ _xstx82287_ _ystx82288_)
                          (gx#stx-map2 _f82286_ _xstx82287_ _ystx82288_))
                        _g82927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82927_))))))
    (define gx#stx-map1
      (lambda (_f82233_ _stx82234_)
        (if (procedure? _f82233_)
            '#!void
            (error '"expected procedure" _f82233_))
        (let _recur82236_ ((_rest82238_ _stx82234_))
          (let* ((_g8223982249_ (gx#syntax-e _rest82238_))
                 (_else8224282257_ (lambda () (_f82233_ _rest82238_))))
            (let ((_K8224582271_
                   (lambda (_rest82268_ _hd82269_)
                     (cons (_f82233_ _hd82269_) (_recur82236_ _rest82268_))))
                  (_K8224482262_ (lambda () '())))
              (let ((_try-match8224182265_
                     (lambda ()
                       (if (##null? _g8223982249_)
                           (_K8224482262_)
                           (_else8224282257_)))))
                (if (##pair? _g8223982249_)
                    (let ((_tl8224782276_ (##cdr _g8223982249_))
                          (_hd8224682274_ (##car _g8223982249_)))
                      (let ((_hd82279_ _hd8224682274_)
                            (_rest82281_ _tl8224782276_))
                        (_K8224582271_ _rest82281_ _hd82279_)))
                    (_try-match8224182265_))))))))
    (define gx#stx-map2
      (lambda (_f82138_ _xstx82139_ _ystx82140_)
        (if (procedure? _f82138_)
            '#!void
            (error '"expected procedure" _f82138_))
        (let _recur82142_ ((_xrest82144_ _xstx82139_)
                           (_yrest82145_ _ystx82140_))
          (let* ((_g8214682156_ (gx#syntax-e _xrest82144_))
                 (_else8214982164_ (lambda () '())))
            (let ((_K8215282221_
                   (lambda (_xrest82190_ _xhd82191_)
                     (let* ((_g8219282199_ (gx#syntax-e _yrest82145_))
                            (_E8219482203_
                             (lambda ()
                               (error '"No clause matching" _g8219282199_)))
                            (_K8219582209_
                             (lambda (_yrest82206_ _yhd82207_)
                               (cons (_f82138_ _xhd82191_ _yhd82207_)
                                     (_recur82142_
                                      _xrest82190_
                                      _yrest82206_)))))
                       (if (##pair? _g8219282199_)
                           (let ((_hd8219682212_ (##car _g8219282199_))
                                 (_tl8219782214_ (##cdr _g8219282199_)))
                             (let* ((_yhd82217_ _hd8219682212_)
                                    (_yrest82219_ _tl8219782214_))
                               (_K8219582209_ _yrest82219_ _yhd82217_)))
                           (_E8219482203_)))))
                  (_K8215182184_
                   (lambda ()
                     (let* ((_yrest8216882173_ _yrest82145_)
                            (_E8217082177_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8216882173_)))
                            (_K8217182181_
                             (lambda () (_f82138_ _xrest82144_ _yrest82145_))))
                       (if (not (gx#stx-null? _yrest8216882173_))
                           (_K8217182181_)
                           (_E8217082177_))))))
              (let ((_try-match8214882187_
                     (lambda ()
                       (if (not (null? _g8214682156_))
                           (_K8215182184_)
                           (_else8214982164_)))))
                (if (##pair? _g8214682156_)
                    (let ((_tl8215482226_ (##cdr _g8214682156_))
                          (_hd8215382224_ (##car _g8214682156_)))
                      (let ((_xhd82229_ _hd8215382224_)
                            (_xrest82231_ _tl8215482226_))
                        (_K8215282221_ _xrest82231_ _xhd82229_)))
                    (_try-match8214882187_))))))))
    (define gx#stx-andmap
      (lambda (_f82088_ _stx82089_)
        (if (procedure? _f82088_)
            '#!void
            (error '"expected procedure" _f82088_))
        (let _lp82091_ ((_rest82093_ _stx82089_))
          (let* ((_g8209482104_ (gx#syntax-e _rest82093_))
                 (_else8209782112_ (lambda () (_f82088_ _rest82093_))))
            (let ((_K8210082126_
                   (lambda (_rest82123_ _hd82124_)
                     (if (_f82088_ _hd82124_) (_lp82091_ _rest82123_) '#f)))
                  (_K8209982117_ (lambda () '#t)))
              (let ((_try-match8209682120_
                     (lambda ()
                       (if (##null? _g8209482104_)
                           (_K8209982117_)
                           (_else8209782112_)))))
                (if (##pair? _g8209482104_)
                    (let ((_tl8210282131_ (##cdr _g8209482104_))
                          (_hd8210182129_ (##car _g8209482104_)))
                      (let ((_hd82134_ _hd8210182129_)
                            (_rest82136_ _tl8210282131_))
                        (_K8210082126_ _rest82136_ _hd82134_)))
                    (_try-match8209682120_))))))))
    (define gx#stx-ormap
      (lambda (_f82035_ _stx82036_)
        (if (procedure? _f82035_)
            '#!void
            (error '"expected procedure" _f82035_))
        (let _lp82038_ ((_rest82040_ _stx82036_))
          (let* ((_g8204182051_ (gx#syntax-e _rest82040_))
                 (_else8204482059_ (lambda () (_f82035_ _rest82040_))))
            (let ((_K8204782076_
                   (lambda (_rest82070_ _hd82071_)
                     (let ((_$e82073_ (_f82035_ _hd82071_)))
                       (if _$e82073_ _$e82073_ (_lp82038_ _rest82070_)))))
                  (_K8204682064_ (lambda () '#f)))
              (let ((_try-match8204382067_
                     (lambda ()
                       (if (##null? _g8204182051_)
                           (_K8204682064_)
                           (_else8204482059_)))))
                (if (##pair? _g8204182051_)
                    (let ((_tl8204982081_ (##cdr _g8204182051_))
                          (_hd8204882079_ (##car _g8204182051_)))
                      (let ((_hd82084_ _hd8204882079_)
                            (_rest82086_ _tl8204982081_))
                        (_K8204782076_ _rest82086_ _hd82084_)))
                    (_try-match8204382067_))))))))
    (define gx#stx-foldl
      (lambda (_f81983_ _iv81984_ _stx81985_)
        (if (procedure? _f81983_)
            '#!void
            (error '"expected procedure" _f81983_))
        (let _lp81987_ ((_r81989_ _iv81984_) (_rest81990_ _stx81985_))
          (let* ((_g8199182001_ (gx#syntax-e _rest81990_))
                 (_else8199482009_
                  (lambda () (_f81983_ _rest81990_ _r81989_))))
            (let ((_K8199782023_
                   (lambda (_rest82020_ _hd82021_)
                     (_lp81987_ (_f81983_ _hd82021_ _r81989_) _rest82020_)))
                  (_K8199682014_ (lambda () _r81989_)))
              (let ((_try-match8199382017_
                     (lambda ()
                       (if (##null? _g8199182001_)
                           (_K8199682014_)
                           (_else8199482009_)))))
                (if (##pair? _g8199182001_)
                    (let ((_tl8199982028_ (##cdr _g8199182001_))
                          (_hd8199882026_ (##car _g8199182001_)))
                      (let ((_hd82031_ _hd8199882026_)
                            (_rest82033_ _tl8199982028_))
                        (_K8199782023_ _rest82033_ _hd82031_)))
                    (_try-match8199382017_))))))))
    (define gx#stx-foldr
      (lambda (_f81932_ _iv81933_ _stx81934_)
        (if (procedure? _f81932_)
            '#!void
            (error '"expected procedure" _f81932_))
        (let _recur81936_ ((_rest81938_ _stx81934_))
          (let* ((_g8193981949_ (gx#syntax-e _rest81938_))
                 (_else8194281957_
                  (lambda () (_f81932_ _rest81938_ _iv81933_))))
            (let ((_K8194581971_
                   (lambda (_rest81968_ _hd81969_)
                     (_f81932_ _hd81969_ (_recur81936_ _rest81968_))))
                  (_K8194481962_ (lambda () _iv81933_)))
              (let ((_try-match8194181965_
                     (lambda ()
                       (if (##null? _g8193981949_)
                           (_K8194481962_)
                           (_else8194281957_)))))
                (if (##pair? _g8193981949_)
                    (let ((_tl8194781976_ (##cdr _g8193981949_))
                          (_hd8194681974_ (##car _g8193981949_)))
                      (let ((_hd81979_ _hd8194681974_)
                            (_rest81981_ _tl8194781976_))
                        (_K8194581971_ _rest81981_ _hd81979_)))
                    (_try-match8194181965_))))))))
    (define gx#stx-reverse
      (lambda (_stx81930_) (gx#stx-foldl cons '() _stx81930_)))
    (define gx#stx-last
      (lambda (_stx81891_)
        (let _lp81893_ ((_rest81895_ _stx81891_))
          (let* ((_g8189681904_ (gx#syntax-e _rest81895_))
                 (_else8189881912_ (lambda () _rest81895_))
                 (_K8190081918_
                  (lambda (_rest81915_ _hd81916_)
                    (if (gx#stx-null? _rest81915_)
                        _hd81916_
                        (_lp81893_ _rest81915_)))))
            (if (##pair? _g8189681904_)
                (let ((_hd8190181921_ (##car _g8189681904_))
                      (_tl8190281923_ (##cdr _g8189681904_)))
                  (let* ((_hd81926_ _hd8190181921_)
                         (_rest81928_ _tl8190281923_))
                    (_K8190081918_ _rest81928_ _hd81926_)))
                (_else8189881912_))))))
    (define gx#stx-last-pair
      (lambda (_stx81862_)
        (let _lp81864_ ((_hd81866_ _stx81862_))
          (let* ((_g8186781874_ (gx#syntax-e _hd81866_))
                 (_E8186981878_
                  (lambda () (error '"No clause matching" _g8186781874_)))
                 (_K8187081883_
                  (lambda (_rest81881_)
                    (if (gx#stx-pair? _rest81881_)
                        (_lp81864_ _rest81881_)
                        _hd81866_))))
            (if (##pair? _g8186781874_)
                (let* ((_tl8187281886_ (##cdr _g8186781874_))
                       (_rest81889_ _tl8187281886_))
                  (_K8187081883_ _rest81889_))
                (_E8186981878_))))))
    (define gx#stx-list-tail
      (lambda (_stx81831_ _k81832_)
        (let _lp81834_ ((_rest81836_ _stx81831_) (_k81837_ _k81832_))
          (if (fxpositive? _k81837_)
              (let* ((_g8183881845_ (gx#syntax-e _rest81836_))
                     (_E8184081849_
                      (lambda () (error '"No clause matching" _g8183881845_)))
                     (_K8184181854_
                      (lambda (_rest81852_)
                        (_lp81834_ _rest81852_ (fx- _k81837_ '1)))))
                (if (##pair? _g8183881845_)
                    (let* ((_tl8184381857_ (##cdr _g8183881845_))
                           (_rest81860_ _tl8184381857_))
                      (_K8184181854_ _rest81860_))
                    (_E8184081849_)))
              _rest81836_))))
    (define gx#stx-list-ref
      (lambda (_stx81828_ _k81829_)
        (gx#stx-car (gx#stx-list-tail _stx81828_ _k81829_))))
    (define gx#stx-plist?__%
      (lambda (_stx81740_ _key?81741_)
        (if (procedure? _key?81741_)
            '#!void
            (error '"expected procedure" _key?81741_))
        (let _lp81743_ ((_rest81745_ _stx81740_))
          (let* ((_g8174681756_ (gx#stx-e _rest81745_))
                 (_else8174981764_ (lambda () '#f)))
            (let ((_K8175281806_
                   (lambda (_rest81775_ _hd81776_)
                     (if (_key?81741_ _hd81776_)
                         (let* ((_g8177781785_ (gx#stx-e _rest81775_))
                                (_else8177981793_ (lambda () '#f))
                                (_K8178181798_
                                 (lambda (_rest81796_)
                                   (_lp81743_ _rest81796_))))
                           (if (##pair? _g8177781785_)
                               (let* ((_tl8178381801_ (##cdr _g8177781785_))
                                      (_rest81804_ _tl8178381801_))
                                 (_lp81743_ _rest81804_))
                               (_else8177981793_)))
                         '#f)))
                  (_K8175181769_ (lambda () '#t)))
              (let ((_try-match8174881772_
                     (lambda ()
                       (if (##null? _g8174681756_)
                           (_K8175181769_)
                           (_else8174981764_)))))
                (if (##pair? _g8174681756_)
                    (let ((_tl8175481811_ (##cdr _g8174681756_))
                          (_hd8175381809_ (##car _g8174681756_)))
                      (let ((_hd81814_ _hd8175381809_)
                            (_rest81816_ _tl8175481811_))
                        (_K8175281806_ _rest81816_ _hd81814_)))
                    (_try-match8174881772_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81821_)
        (let ((_key?81823_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81821_ _key?81823_))))
    (define gx#stx-plist?
      (lambda _g82929_
        (let ((_g82928_ (##length _g82929_)))
          (cond ((##fx= _g82928_ 1)
                 (apply (lambda (_stx81821_) (gx#stx-plist?__0 _stx81821_))
                        _g82929_))
                ((##fx= _g82928_ 2)
                 (apply (lambda (_stx81825_ _key?81826_)
                          (gx#stx-plist?__% _stx81825_ _key?81826_))
                        _g82929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82929_))))))
    (define gx#stx-getq__%
      (lambda (_key81658_ _stx81659_ _key=?81660_)
        (if (procedure? _key=?81660_)
            '#!void
            (error '"expected procedure" _key=?81660_))
        (let _lp81662_ ((_rest81664_ _stx81659_))
          (let* ((_g8166581673_ (gx#syntax-e _rest81664_))
                 (_else8166781681_ (lambda () '#f))
                 (_K8166981715_
                  (lambda (_rest81684_ _hd81685_)
                    (let* ((_g8168681693_ (gx#syntax-e _rest81684_))
                           (_E8168881697_
                            (lambda ()
                              (error '"No clause matching" _g8168681693_)))
                           (_K8168981703_
                            (lambda (_rest81700_ _val81701_)
                              (if (_key=?81660_ _hd81685_ _key81658_)
                                  _val81701_
                                  (_lp81662_ _rest81700_)))))
                      (if (##pair? _g8168681693_)
                          (let ((_hd8169081706_ (##car _g8168681693_))
                                (_tl8169181708_ (##cdr _g8168681693_)))
                            (let* ((_val81711_ _hd8169081706_)
                                   (_rest81713_ _tl8169181708_))
                              (_K8168981703_ _rest81713_ _val81711_)))
                          (_E8168881697_))))))
            (if (##pair? _g8166581673_)
                (let ((_hd8167081718_ (##car _g8166581673_))
                      (_tl8167181720_ (##cdr _g8166581673_)))
                  (let* ((_hd81723_ _hd8167081718_)
                         (_rest81725_ _tl8167181720_))
                    (_K8166981715_ _rest81725_ _hd81723_)))
                (_else8166781681_))))))
    (define gx#stx-getq__0
      (lambda (_key81730_ _stx81731_)
        (let ((_key=?81733_ gx#stx-eq?))
          (gx#stx-getq__% _key81730_ _stx81731_ _key=?81733_))))
    (define gx#stx-getq
      (lambda _g82931_
        (let ((_g82930_ (##length _g82931_)))
          (cond ((##fx= _g82930_ 2)
                 (apply (lambda (_key81730_ _stx81731_)
                          (gx#stx-getq__0 _key81730_ _stx81731_))
                        _g82931_))
                ((##fx= _g82930_ 3)
                 (apply (lambda (_key81735_ _stx81736_ _key=?81737_)
                          (gx#stx-getq__% _key81735_ _stx81736_ _key=?81737_))
                        _g82931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82931_))))))))
