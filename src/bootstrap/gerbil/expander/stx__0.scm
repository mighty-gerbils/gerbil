(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707767843)
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
      (lambda _$args136989_
        (apply make-instance gx#identifier-wrap::t _$args136989_)))
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
      (lambda _$args136986_
        (apply make-instance gx#syntax-wrap::t _$args136986_)))
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
      (lambda _$args136983_
        (apply make-instance gx#syntax-quote::t _$args136983_)))
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
      (lambda (_stx136981_) (symbol? (gx#stx-e _stx136981_))))
    (define gx#identifier-quote?
      (lambda (_stx136979_)
        (if (##structure-direct-instance-of? _stx136979_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136979_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136977_)
        (if (##structure-direct-instance-of? _stx136977_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136977_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136977_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136975_)
        (if (##structure-direct-instance-of? _stx136975_ 'gx#syntax-quote::t)
            _stx136975_
            (if (##structure-direct-instance-of?
                 _stx136975_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136975_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136958_)
        (if (##structure-direct-instance-of? _stx136958_ 'gx#syntax-wrap::t)
            (let _lp136960_ ((_e136962_
                              (##unchecked-structure-ref
                               _stx136958_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136963_
                              (cons (##unchecked-structure-ref
                                     _stx136958_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136962_)
                  (let ((_$e136965_ (##type-id (##structure-type _e136962_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136965_)
                        (_lp136960_
                         (##unchecked-structure-ref _e136962_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136962_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136963_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136965_)
                                (eq? 'gx#identifier-wrap::t _$e136965_))
                            (##unchecked-structure-ref
                             _e136962_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136965_)
                                (_lp136960_
                                 (##unchecked-structure-ref
                                  _e136962_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136963_)
                                _e136962_))))
                  (if (null? _marks136963_)
                      _e136962_
                      (if (pair? _e136962_)
                          (cons (gx#stx-wrap (car _e136962_) _marks136963_)
                                (gx#stx-wrap (cdr _e136962_) _marks136963_))
                          (if (vector? _e136962_)
                              (vector-map
                               (lambda (_g136970136972_)
                                 (gx#stx-wrap _g136970136972_ _marks136963_))
                               _e136962_)
                              (if (box? _e136962_)
                                  (box (gx#stx-wrap
                                        (unbox _e136962_)
                                        _marks136963_))
                                  _e136962_))))))
            (if (##structure-instance-of? _stx136958_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136958_ '1 gx#AST::t '#f)
                _stx136958_))))
    (define gx#syntax->datum
      (lambda (_stx136956_)
        (if (##structure-instance-of? _stx136956_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136956_ '1 gx#AST::t '#f))
            (if (pair? _stx136956_)
                (cons (gx#syntax->datum (car _stx136956_))
                      (gx#syntax->datum (cdr _stx136956_)))
                (if (vector? _stx136956_)
                    (vector-map gx#syntax->datum _stx136956_)
                    (if (box? _stx136956_)
                        (box (gx#syntax->datum (unbox _stx136956_)))
                        _stx136956_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136899_ _datum136900_ _src136901_ _quote?136902_)
        (letrec ((_wrap-datum136904_
                  (lambda (_e136928_ _marks136929_)
                    (_wrap-inner136906_
                     _e136928_
                     (lambda (_g136930136932_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136930136932_
                        _src136901_
                        _marks136929_)))))
                 (_wrap-quote136905_
                  (lambda (_e136920_ _ctx136921_ _marks136922_)
                    (_wrap-inner136906_
                     _e136920_
                     (lambda (_g136923136925_)
                       (##structure
                        gx#syntax-quote::t
                        _g136923136925_
                        _src136901_
                        _ctx136921_
                        _marks136922_)))))
                 (_wrap-inner136906_
                  (lambda (_e136913_ _wrap-e136914_)
                    (let _recur136916_ ((_e136918_ _e136913_))
                      (if (symbol? _e136918_)
                          (_wrap-e136914_ _e136918_)
                          (if (pair? _e136918_)
                              (cons (_recur136916_ (car _e136918_))
                                    (_recur136916_ (cdr _e136918_)))
                              (if (vector? _e136918_)
                                  (vector-map _recur136916_ _e136918_)
                                  (if (box? _e136918_)
                                      (box (_recur136916_ (unbox _e136918_)))
                                      _e136918_)))))))
                 (_wrap-outer136907_
                  (lambda (_e136911_)
                    (if (##structure-instance-of? _e136911_ 'gerbil#AST::t)
                        _e136911_
                        (##structure gx#AST::t _e136911_ _src136901_)))))
          (if (##structure-instance-of? _datum136900_ 'gerbil#AST::t)
              _datum136900_
              (if (not _stx136899_)
                  (##structure gx#AST::t _datum136900_ _src136901_)
                  (if (gx#identifier? _stx136899_)
                      (let ((_stx136909_ (gx#stx-unwrap__0 _stx136899_)))
                        (_wrap-outer136907_
                         (if (##structure-direct-instance-of?
                              _stx136909_
                              'gx#syntax-quote::t)
                             (if _quote?136902_
                                 (_wrap-quote136905_
                                  _datum136900_
                                  (##unchecked-structure-ref
                                   _stx136909_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136909_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136904_
                                  _datum136900_
                                  (##unchecked-structure-ref
                                   _stx136909_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136904_
                              _datum136900_
                              (##unchecked-structure-ref
                               _stx136909_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136899_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136938_ _datum136939_)
        (let* ((_src136941_ '#f) (_quote?136943_ '#t))
          (gx#datum->syntax__%
           _stx136938_
           _datum136939_
           _src136941_
           _quote?136943_))))
    (define gx#datum->syntax__1
      (lambda (_stx136945_ _datum136946_ _src136947_)
        (let ((_quote?136949_ '#t))
          (gx#datum->syntax__%
           _stx136945_
           _datum136946_
           _src136947_
           _quote?136949_))))
    (define gx#datum->syntax
      (lambda _g141638_
        (let ((_g141637_ (##length _g141638_)))
          (cond ((##fx= _g141637_ 2)
                 (apply (lambda (_stx136938_ _datum136939_)
                          (gx#datum->syntax__0 _stx136938_ _datum136939_))
                        _g141638_))
                ((##fx= _g141637_ 3)
                 (apply (lambda (_stx136945_ _datum136946_ _src136947_)
                          (gx#datum->syntax__1
                           _stx136945_
                           _datum136946_
                           _src136947_))
                        _g141638_))
                ((##fx= _g141637_ 4)
                 (apply (lambda (_stx136951_
                                 _datum136952_
                                 _src136953_
                                 _quote?136954_)
                          (gx#datum->syntax__%
                           _stx136951_
                           _datum136952_
                           _src136953_
                           _quote?136954_))
                        _g141638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g141638_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136875_ _marks136876_)
        (let _lp136878_ ((_e136880_ _stx136875_)
                         (_marks136881_ _marks136876_)
                         (_src136882_ (gx#stx-source _stx136875_)))
          (if (##structure-direct-instance-of? _e136880_ 'gx#syntax-wrap::t)
              (_lp136878_
               (##unchecked-structure-ref _e136880_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136880_ '3 gx#syntax-wrap::t '#f)
                _marks136881_)
               (##unchecked-structure-ref _e136880_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136880_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136881_)
                      _e136880_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136880_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136880_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136880_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136881_)))
                  (if (##structure-direct-instance-of?
                       _e136880_
                       'gx#syntax-quote::t)
                      _e136880_
                      (if (##structure-instance-of? _e136880_ 'gerbil#AST::t)
                          (_lp136878_
                           (##unchecked-structure-ref
                            _e136880_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136881_
                           (##unchecked-structure-ref
                            _e136880_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136880_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136880_
                               _src136882_
                               (reverse _marks136881_))
                              (if (null? _marks136881_)
                                  _e136880_
                                  (if (pair? _e136880_)
                                      (cons (gx#stx-wrap
                                             (car _e136880_)
                                             _marks136881_)
                                            (gx#stx-wrap
                                             (cdr _e136880_)
                                             _marks136881_))
                                      (if (vector? _e136880_)
                                          (vector-map
                                           (lambda (_g136883136885_)
                                             (gx#stx-wrap
                                              _g136883136885_
                                              _marks136881_))
                                           _e136880_)
                                          (if (box? _e136880_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136880_)
                                                    _marks136881_))
                                              _e136880_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136891_)
        (let ((_marks136893_ '()))
          (gx#stx-unwrap__% _stx136891_ _marks136893_))))
    (define gx#stx-unwrap
      (lambda _g141640_
        (let ((_g141639_ (##length _g141640_)))
          (cond ((##fx= _g141639_ 1)
                 (apply (lambda (_stx136891_) (gx#stx-unwrap__0 _stx136891_))
                        _g141640_))
                ((##fx= _g141639_ 2)
                 (apply (lambda (_stx136895_ _marks136896_)
                          (gx#stx-unwrap__% _stx136895_ _marks136896_))
                        _g141640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g141640_))))))
    (define gx#stx-wrap
      (lambda (_stx136868_ _marks136869_)
        (foldl1 (lambda (_mark136871_ _stx136872_)
                  (gx#stx-apply-mark _stx136872_ _mark136871_))
                _stx136868_
                _marks136869_)))
    (define gx#stx-rewrap
      (lambda (_stx136862_ _marks136863_)
        (foldr1 (lambda (_mark136865_ _stx136866_)
                  (gx#stx-apply-mark _stx136866_ _mark136865_))
                _stx136862_
                _marks136863_)))
    (define gx#stx-apply-mark
      (lambda (_stx136859_ _mark136860_)
        (if (##structure-direct-instance-of? _stx136859_ 'gx#syntax-quote::t)
            _stx136859_
            (if (and (##structure-direct-instance-of?
                      _stx136859_
                      'gx#syntax-wrap::t)
                     (eq? _mark136860_
                          (##unchecked-structure-ref
                           _stx136859_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136859_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136859_
                 (gx#stx-source _stx136859_)
                 _mark136860_)))))
    (define gx#apply-mark
      (lambda (_mark136823_ _marks136824_)
        (let* ((_marks136825136833_ _marks136824_)
               (_else136827136841_
                (lambda () (cons _mark136823_ _marks136824_)))
               (_K136829136847_
                (lambda (_rest136844_ _hd136845_)
                  (if (eq? _mark136823_ _hd136845_)
                      _rest136844_
                      (cons _mark136823_ _marks136824_)))))
          (if (##pair? _marks136825136833_)
              (let ((_hd136830136850_ (##car _marks136825136833_))
                    (_tl136831136852_ (##cdr _marks136825136833_)))
                (let* ((_hd136855_ _hd136830136850_)
                       (_rest136857_ _tl136831136852_))
                  (_K136829136847_ _rest136857_ _hd136855_)))
              (_else136827136841_)))))
    (define gx#stx-e
      (lambda (_stx136821_)
        (if (##structure-direct-instance-of? _stx136821_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136821_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136821_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136821_ '1 gx#AST::t '#f)
                _stx136821_))))
    (define gx#stx-source
      (lambda (_stx136819_)
        (if (##structure-instance-of? _stx136819_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136819_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136813_ _src136814_)
        (if (or (##structure-instance-of? _stx136813_ 'gerbil#AST::t)
                (not _src136814_))
            _stx136813_
            (##structure gx#AST::t _stx136813_ _src136814_))))
    (define gx#stx-datum?
      (lambda (_stx136811_) (gx#self-quoting? (gx#stx-e _stx136811_))))
    (define gx#self-quoting?
      (lambda (_x136794_)
        (let ((_$e136796_ (immediate? _x136794_)))
          (if _$e136796_
              _$e136796_
              (let ((_$e136799_ (number? _x136794_)))
                (if _$e136799_
                    _$e136799_
                    (let ((_$e136802_ (keyword? _x136794_)))
                      (if _$e136802_
                          _$e136802_
                          (let ((_$e136805_ (string? _x136794_)))
                            (if _$e136805_
                                _$e136805_
                                (let ((_$e136808_ (vector? _x136794_)))
                                  (if _$e136808_
                                      _$e136808_
                                      (u8vector? _x136794_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136792_) (boolean? (gx#stx-e _e136792_))))
    (define gx#stx-keyword?
      (lambda (_e136790_) (keyword? (gx#stx-e _e136790_))))
    (define gx#stx-char? (lambda (_e136788_) (char? (gx#stx-e _e136788_))))
    (define gx#stx-number? (lambda (_e136786_) (number? (gx#stx-e _e136786_))))
    (define gx#stx-fixnum? (lambda (_e136784_) (fixnum? (gx#stx-e _e136784_))))
    (define gx#stx-string? (lambda (_e136782_) (string? (gx#stx-e _e136782_))))
    (define gx#stx-null? (lambda (_e136780_) (null? (gx#stx-e _e136780_))))
    (define gx#stx-pair? (lambda (_e136778_) (pair? (gx#stx-e _e136778_))))
    (define gx#stx-list?
      (lambda (_e136740_)
        (let* ((_g136741136750_ (gx#stx-e _e136740_))
               (_E136744136754_
                (lambda () (error '"No clause matching" _g136741136750_))))
          (let ((_K136746136770_
                 (lambda (_rest136768_) (gx#stx-list? _rest136768_)))
                (_K136745136760_ (lambda (_tail136758_) (null? _tail136758_))))
            (if (##pair? _g136741136750_)
                (let* ((_tl136748136773_ (##cdr _g136741136750_))
                       (_rest136776_ _tl136748136773_))
                  (gx#stx-list? _rest136776_))
                (let ((_tail136763_ _g136741136750_))
                  (null? _tail136763_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136733_)
        (let* ((_e136735_ (gx#stx-e _e136733_)) (_$e136737_ (pair? _e136735_)))
          (if _$e136737_ _$e136737_ (null? _e136735_)))))
    (define gx#stx-vector? (lambda (_e136731_) (vector? (gx#stx-e _e136731_))))
    (define gx#stx-box? (lambda (_e136729_) (box? (gx#stx-e _e136729_))))
    (define gx#stx-eq?
      (lambda (_x136726_ _y136727_)
        (eq? (gx#stx-e _x136726_) (gx#stx-e _y136727_))))
    (define gx#stx-eqv?
      (lambda (_x136723_ _y136724_)
        (eqv? (gx#stx-e _x136723_) (gx#stx-e _y136724_))))
    (define gx#stx-equal?
      (lambda (_x136720_ _y136721_)
        (equal? (gx#stx-e _x136720_) (gx#stx-e _y136721_))))
    (define gx#stx-false? (lambda (_x136718_) (not (gx#stx-e _x136718_))))
    (define gx#stx-identifier
      (lambda (_template136715_ . _args136716_)
        (gx#datum->syntax__1
         _template136715_
         (apply make-symbol (gx#syntax->datum _args136716_))
         (gx#stx-source _template136715_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136713_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136713_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136711_)
        (if (##structure-direct-instance-of?
             _stx136711_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136711_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136711_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136711_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136711_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136707_)
        (let ((_stx136709_ (gx#stx-unwrap__0 _stx136707_)))
          (if (gx#identifier-quote? _stx136709_)
              (##unchecked-structure-ref _stx136709_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136662_)
        (let* ((_g136663136673_ (gx#stx-e _stx136662_))
               (_else136666136681_ (lambda () '#f)))
          (let ((_K136669136695_
                 (lambda (_rest136692_ _hd136693_)
                   (if (gx#identifier? _hd136693_)
                       (gx#identifier-list? _rest136692_)
                       '#f)))
                (_K136668136686_ (lambda () '#t)))
            (let ((_try-match136665136689_
                   (lambda ()
                     (if (##null? _g136663136673_)
                         (_K136668136686_)
                         (_else136666136681_)))))
              (if (##pair? _g136663136673_)
                  (let ((_tl136671136700_ (##cdr _g136663136673_))
                        (_hd136670136698_ (##car _g136663136673_)))
                    (let ((_hd136703_ _hd136670136698_)
                          (_rest136705_ _tl136671136700_))
                      (_K136669136695_ _rest136705_ _hd136703_)))
                  (_try-match136665136689_)))))))
    (define gx#genident__%
      (lambda (_e136639_ _src136640_)
        (gx#stx-wrap-source
         (gensym (let ((_e136642_ (gx#stx-e _e136639_)))
                   (if (interned-symbol? _e136642_) _e136642_ 'g)))
         (let ((_$e136644_ (gx#stx-source _e136639_)))
           (if _$e136644_ _$e136644_ _src136640_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136651_ 'g) (_src136653_ '#f))
          (gx#genident__% _e136651_ _src136653_))))
    (define gx#genident__1
      (lambda (_e136655_)
        (let ((_src136657_ '#f)) (gx#genident__% _e136655_ _src136657_))))
    (define gx#genident
      (lambda _g141642_
        (let ((_g141641_ (##length _g141642_)))
          (cond ((##fx= _g141641_ 0)
                 (apply (lambda () (gx#genident__0)) _g141642_))
                ((##fx= _g141641_ 1)
                 (apply (lambda (_e136655_) (gx#genident__1 _e136655_))
                        _g141642_))
                ((##fx= _g141641_ 2)
                 (apply (lambda (_e136659_ _src136660_)
                          (gx#genident__% _e136659_ _src136660_))
                        _g141642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g141642_))))))
    (define gx#gentemps
      (lambda (_stx-lst136636_) (gx#stx-map1 gx#genident _stx-lst136636_)))
    (define gx#syntax->list
      (lambda (_stx136634_) (gx#stx-map1 values _stx136634_)))
    (define gx#stx-car
      (lambda (_stx136631_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136631_)))))
    (define gx#stx-cdr
      (lambda (_stx136628_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136628_)))))
    (define gx#stx-length
      (lambda (_stx136593_)
        (let _lp136595_ ((_rest136597_ _stx136593_) (_n136598_ '0))
          (let* ((_g136599136607_ (gx#stx-e _rest136597_))
                 (_else136601136615_ (lambda () _n136598_))
                 (_K136603136620_
                  (lambda (_rest136618_)
                    (_lp136595_ _rest136618_ (fx+ _n136598_ '1)))))
            (if (##pair? _g136599136607_)
                (let* ((_tl136605136623_ (##cdr _g136599136607_))
                       (_rest136626_ _tl136605136623_))
                  (_K136603136620_ _rest136626_))
                (_else136601136615_))))))
    (define gx#stx-for-each
      (lambda _g141644_
        (let ((_g141643_ (##length _g141644_)))
          (cond ((##fx= _g141643_ 2)
                 (apply (lambda (_f136586_ _stx136587_)
                          (gx#stx-for-each1 _f136586_ _stx136587_))
                        _g141644_))
                ((##fx= _g141643_ 3)
                 (apply (lambda (_f136589_ _xstx136590_ _ystx136591_)
                          (gx#stx-for-each2
                           _f136589_
                           _xstx136590_
                           _ystx136591_))
                        _g141644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g141644_))))))
    (define gx#stx-for-each1
      (lambda (_f136536_ _stx136537_)
        (if (procedure? _f136536_)
            '#!void
            (error '"expected procedure" _f136536_))
        (let _lp136539_ ((_rest136541_ _stx136537_))
          (let* ((_g136542136552_ (gx#syntax-e _rest136541_))
                 (_else136545136560_ (lambda () (_f136536_ _rest136541_))))
            (let ((_K136548136574_
                   (lambda (_rest136571_ _hd136572_)
                     (_f136536_ _hd136572_)
                     (_lp136539_ _rest136571_)))
                  (_K136547136565_ (lambda () '#!void)))
              (let ((_try-match136544136568_
                     (lambda ()
                       (if (##null? _g136542136552_)
                           (_K136547136565_)
                           (_else136545136560_)))))
                (if (##pair? _g136542136552_)
                    (let ((_tl136550136579_ (##cdr _g136542136552_))
                          (_hd136549136577_ (##car _g136542136552_)))
                      (let ((_hd136582_ _hd136549136577_)
                            (_rest136584_ _tl136550136579_))
                        (_K136548136574_ _rest136584_ _hd136582_)))
                    (_try-match136544136568_))))))))
    (define gx#stx-for-each2
      (lambda (_f136441_ _xstx136442_ _ystx136443_)
        (if (procedure? _f136441_)
            '#!void
            (error '"expected procedure" _f136441_))
        (let _lp136445_ ((_xrest136447_ _xstx136442_)
                         (_yrest136448_ _ystx136443_))
          (let* ((_g136449136459_ (gx#syntax-e _xrest136447_))
                 (_else136452136467_ (lambda () '#!void)))
            (let ((_K136455136524_
                   (lambda (_xrest136493_ _xhd136494_)
                     (let* ((_g136495136502_ (gx#syntax-e _yrest136448_))
                            (_E136497136506_
                             (lambda ()
                               (error '"No clause matching" _g136495136502_)))
                            (_K136498136512_
                             (lambda (_yrest136509_ _yhd136510_)
                               (_f136441_ _xhd136494_ _yhd136510_)
                               (_lp136445_ _xrest136493_ _yrest136509_))))
                       (if (##pair? _g136495136502_)
                           (let ((_hd136499136515_ (##car _g136495136502_))
                                 (_tl136500136517_ (##cdr _g136495136502_)))
                             (let* ((_yhd136520_ _hd136499136515_)
                                    (_yrest136522_ _tl136500136517_))
                               (_K136498136512_ _yrest136522_ _yhd136520_)))
                           (_E136497136506_)))))
                  (_K136454136487_
                   (lambda ()
                     (let* ((_yrest136471136476_ _yrest136448_)
                            (_E136473136480_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136471136476_)))
                            (_K136474136484_
                             (lambda ()
                               (_f136441_ _xrest136447_ _yrest136448_))))
                       (if (not (gx#stx-null? _yrest136471136476_))
                           (_K136474136484_)
                           (_E136473136480_))))))
              (let ((_try-match136451136490_
                     (lambda ()
                       (if (not (null? _g136449136459_))
                           (_K136454136487_)
                           (_else136452136467_)))))
                (if (##pair? _g136449136459_)
                    (let ((_tl136457136529_ (##cdr _g136449136459_))
                          (_hd136456136527_ (##car _g136449136459_)))
                      (let ((_xhd136532_ _hd136456136527_)
                            (_xrest136534_ _tl136457136529_))
                        (_K136455136524_ _xrest136534_ _xhd136532_)))
                    (_try-match136451136490_))))))))
    (define gx#stx-map
      (lambda _g141646_
        (let ((_g141645_ (##length _g141646_)))
          (cond ((##fx= _g141645_ 2)
                 (apply (lambda (_f136434_ _stx136435_)
                          (gx#stx-map1 _f136434_ _stx136435_))
                        _g141646_))
                ((##fx= _g141645_ 3)
                 (apply (lambda (_f136437_ _xstx136438_ _ystx136439_)
                          (gx#stx-map2 _f136437_ _xstx136438_ _ystx136439_))
                        _g141646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g141646_))))))
    (define gx#stx-map1
      (lambda (_f136384_ _stx136385_)
        (if (procedure? _f136384_)
            '#!void
            (error '"expected procedure" _f136384_))
        (let _recur136387_ ((_rest136389_ _stx136385_))
          (let* ((_g136390136400_ (gx#syntax-e _rest136389_))
                 (_else136393136408_ (lambda () (_f136384_ _rest136389_))))
            (let ((_K136396136422_
                   (lambda (_rest136419_ _hd136420_)
                     (cons (_f136384_ _hd136420_)
                           (_recur136387_ _rest136419_))))
                  (_K136395136413_ (lambda () '())))
              (let ((_try-match136392136416_
                     (lambda ()
                       (if (##null? _g136390136400_)
                           (_K136395136413_)
                           (_else136393136408_)))))
                (if (##pair? _g136390136400_)
                    (let ((_tl136398136427_ (##cdr _g136390136400_))
                          (_hd136397136425_ (##car _g136390136400_)))
                      (let ((_hd136430_ _hd136397136425_)
                            (_rest136432_ _tl136398136427_))
                        (_K136396136422_ _rest136432_ _hd136430_)))
                    (_try-match136392136416_))))))))
    (define gx#stx-map2
      (lambda (_f136289_ _xstx136290_ _ystx136291_)
        (if (procedure? _f136289_)
            '#!void
            (error '"expected procedure" _f136289_))
        (let _recur136293_ ((_xrest136295_ _xstx136290_)
                            (_yrest136296_ _ystx136291_))
          (let* ((_g136297136307_ (gx#syntax-e _xrest136295_))
                 (_else136300136315_ (lambda () '())))
            (let ((_K136303136372_
                   (lambda (_xrest136341_ _xhd136342_)
                     (let* ((_g136343136350_ (gx#syntax-e _yrest136296_))
                            (_E136345136354_
                             (lambda ()
                               (error '"No clause matching" _g136343136350_)))
                            (_K136346136360_
                             (lambda (_yrest136357_ _yhd136358_)
                               (cons (_f136289_ _xhd136342_ _yhd136358_)
                                     (_recur136293_
                                      _xrest136341_
                                      _yrest136357_)))))
                       (if (##pair? _g136343136350_)
                           (let ((_hd136347136363_ (##car _g136343136350_))
                                 (_tl136348136365_ (##cdr _g136343136350_)))
                             (let* ((_yhd136368_ _hd136347136363_)
                                    (_yrest136370_ _tl136348136365_))
                               (_K136346136360_ _yrest136370_ _yhd136368_)))
                           (_E136345136354_)))))
                  (_K136302136335_
                   (lambda ()
                     (let* ((_yrest136319136324_ _yrest136296_)
                            (_E136321136328_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136319136324_)))
                            (_K136322136332_
                             (lambda ()
                               (_f136289_ _xrest136295_ _yrest136296_))))
                       (if (not (gx#stx-null? _yrest136319136324_))
                           (_K136322136332_)
                           (_E136321136328_))))))
              (let ((_try-match136299136338_
                     (lambda ()
                       (if (not (null? _g136297136307_))
                           (_K136302136335_)
                           (_else136300136315_)))))
                (if (##pair? _g136297136307_)
                    (let ((_tl136305136377_ (##cdr _g136297136307_))
                          (_hd136304136375_ (##car _g136297136307_)))
                      (let ((_xhd136380_ _hd136304136375_)
                            (_xrest136382_ _tl136305136377_))
                        (_K136303136372_ _xrest136382_ _xhd136380_)))
                    (_try-match136299136338_))))))))
    (define gx#stx-andmap
      (lambda (_f136239_ _stx136240_)
        (if (procedure? _f136239_)
            '#!void
            (error '"expected procedure" _f136239_))
        (let _lp136242_ ((_rest136244_ _stx136240_))
          (let* ((_g136245136255_ (gx#syntax-e _rest136244_))
                 (_else136248136263_ (lambda () (_f136239_ _rest136244_))))
            (let ((_K136251136277_
                   (lambda (_rest136274_ _hd136275_)
                     (if (_f136239_ _hd136275_)
                         (_lp136242_ _rest136274_)
                         '#f)))
                  (_K136250136268_ (lambda () '#t)))
              (let ((_try-match136247136271_
                     (lambda ()
                       (if (##null? _g136245136255_)
                           (_K136250136268_)
                           (_else136248136263_)))))
                (if (##pair? _g136245136255_)
                    (let ((_tl136253136282_ (##cdr _g136245136255_))
                          (_hd136252136280_ (##car _g136245136255_)))
                      (let ((_hd136285_ _hd136252136280_)
                            (_rest136287_ _tl136253136282_))
                        (_K136251136277_ _rest136287_ _hd136285_)))
                    (_try-match136247136271_))))))))
    (define gx#stx-ormap
      (lambda (_f136186_ _stx136187_)
        (if (procedure? _f136186_)
            '#!void
            (error '"expected procedure" _f136186_))
        (let _lp136189_ ((_rest136191_ _stx136187_))
          (let* ((_g136192136202_ (gx#syntax-e _rest136191_))
                 (_else136195136210_ (lambda () (_f136186_ _rest136191_))))
            (let ((_K136198136227_
                   (lambda (_rest136221_ _hd136222_)
                     (let ((_$e136224_ (_f136186_ _hd136222_)))
                       (if _$e136224_ _$e136224_ (_lp136189_ _rest136221_)))))
                  (_K136197136215_ (lambda () '#f)))
              (let ((_try-match136194136218_
                     (lambda ()
                       (if (##null? _g136192136202_)
                           (_K136197136215_)
                           (_else136195136210_)))))
                (if (##pair? _g136192136202_)
                    (let ((_tl136200136232_ (##cdr _g136192136202_))
                          (_hd136199136230_ (##car _g136192136202_)))
                      (let ((_hd136235_ _hd136199136230_)
                            (_rest136237_ _tl136200136232_))
                        (_K136198136227_ _rest136237_ _hd136235_)))
                    (_try-match136194136218_))))))))
    (define gx#stx-foldl
      (lambda (_f136134_ _iv136135_ _stx136136_)
        (if (procedure? _f136134_)
            '#!void
            (error '"expected procedure" _f136134_))
        (let _lp136138_ ((_r136140_ _iv136135_) (_rest136141_ _stx136136_))
          (let* ((_g136142136152_ (gx#syntax-e _rest136141_))
                 (_else136145136160_
                  (lambda () (_f136134_ _rest136141_ _r136140_))))
            (let ((_K136148136174_
                   (lambda (_rest136171_ _hd136172_)
                     (_lp136138_
                      (_f136134_ _hd136172_ _r136140_)
                      _rest136171_)))
                  (_K136147136165_ (lambda () _r136140_)))
              (let ((_try-match136144136168_
                     (lambda ()
                       (if (##null? _g136142136152_)
                           (_K136147136165_)
                           (_else136145136160_)))))
                (if (##pair? _g136142136152_)
                    (let ((_tl136150136179_ (##cdr _g136142136152_))
                          (_hd136149136177_ (##car _g136142136152_)))
                      (let ((_hd136182_ _hd136149136177_)
                            (_rest136184_ _tl136150136179_))
                        (_K136148136174_ _rest136184_ _hd136182_)))
                    (_try-match136144136168_))))))))
    (define gx#stx-foldr
      (lambda (_f136083_ _iv136084_ _stx136085_)
        (if (procedure? _f136083_)
            '#!void
            (error '"expected procedure" _f136083_))
        (let _recur136087_ ((_rest136089_ _stx136085_))
          (let* ((_g136090136100_ (gx#syntax-e _rest136089_))
                 (_else136093136108_
                  (lambda () (_f136083_ _rest136089_ _iv136084_))))
            (let ((_K136096136122_
                   (lambda (_rest136119_ _hd136120_)
                     (_f136083_ _hd136120_ (_recur136087_ _rest136119_))))
                  (_K136095136113_ (lambda () _iv136084_)))
              (let ((_try-match136092136116_
                     (lambda ()
                       (if (##null? _g136090136100_)
                           (_K136095136113_)
                           (_else136093136108_)))))
                (if (##pair? _g136090136100_)
                    (let ((_tl136098136127_ (##cdr _g136090136100_))
                          (_hd136097136125_ (##car _g136090136100_)))
                      (let ((_hd136130_ _hd136097136125_)
                            (_rest136132_ _tl136098136127_))
                        (_K136096136122_ _rest136132_ _hd136130_)))
                    (_try-match136092136116_))))))))
    (define gx#stx-reverse
      (lambda (_stx136081_) (gx#stx-foldl cons '() _stx136081_)))
    (define gx#stx-last
      (lambda (_stx136042_)
        (let _lp136044_ ((_rest136046_ _stx136042_))
          (let* ((_g136047136055_ (gx#syntax-e _rest136046_))
                 (_else136049136063_ (lambda () _rest136046_))
                 (_K136051136069_
                  (lambda (_rest136066_ _hd136067_)
                    (if (gx#stx-null? _rest136066_)
                        _hd136067_
                        (_lp136044_ _rest136066_)))))
            (if (##pair? _g136047136055_)
                (let ((_hd136052136072_ (##car _g136047136055_))
                      (_tl136053136074_ (##cdr _g136047136055_)))
                  (let* ((_hd136077_ _hd136052136072_)
                         (_rest136079_ _tl136053136074_))
                    (_K136051136069_ _rest136079_ _hd136077_)))
                (_else136049136063_))))))
    (define gx#stx-last-pair
      (lambda (_stx136013_)
        (let _lp136015_ ((_hd136017_ _stx136013_))
          (let* ((_g136018136025_ (gx#syntax-e _hd136017_))
                 (_E136020136029_
                  (lambda () (error '"No clause matching" _g136018136025_)))
                 (_K136021136034_
                  (lambda (_rest136032_)
                    (if (gx#stx-pair? _rest136032_)
                        (_lp136015_ _rest136032_)
                        _hd136017_))))
            (if (##pair? _g136018136025_)
                (let* ((_tl136023136037_ (##cdr _g136018136025_))
                       (_rest136040_ _tl136023136037_))
                  (_K136021136034_ _rest136040_))
                (_E136020136029_))))))
    (define gx#stx-list-tail
      (lambda (_stx135982_ _k135983_)
        (let _lp135985_ ((_rest135987_ _stx135982_) (_k135988_ _k135983_))
          (if (fxpositive? _k135988_)
              (let* ((_g135989135996_ (gx#syntax-e _rest135987_))
                     (_E135991136000_
                      (lambda ()
                        (error '"No clause matching" _g135989135996_)))
                     (_K135992136005_
                      (lambda (_rest136003_)
                        (_lp135985_ _rest136003_ (fx- _k135988_ '1)))))
                (if (##pair? _g135989135996_)
                    (let* ((_tl135994136008_ (##cdr _g135989135996_))
                           (_rest136011_ _tl135994136008_))
                      (_K135992136005_ _rest136011_))
                    (_E135991136000_)))
              _rest135987_))))
    (define gx#stx-list-ref
      (lambda (_stx135979_ _k135980_)
        (gx#stx-car (gx#stx-list-tail _stx135979_ _k135980_))))
    (define gx#stx-plist?__%
      (lambda (_stx135891_ _key?135892_)
        (if (procedure? _key?135892_)
            '#!void
            (error '"expected procedure" _key?135892_))
        (let _lp135894_ ((_rest135896_ _stx135891_))
          (let* ((_g135897135907_ (gx#stx-e _rest135896_))
                 (_else135900135915_ (lambda () '#f)))
            (let ((_K135903135957_
                   (lambda (_rest135926_ _hd135927_)
                     (if (_key?135892_ _hd135927_)
                         (let* ((_g135928135936_ (gx#stx-e _rest135926_))
                                (_else135930135944_ (lambda () '#f))
                                (_K135932135949_
                                 (lambda (_rest135947_)
                                   (_lp135894_ _rest135947_))))
                           (if (##pair? _g135928135936_)
                               (let* ((_tl135934135952_
                                       (##cdr _g135928135936_))
                                      (_rest135955_ _tl135934135952_))
                                 (_lp135894_ _rest135955_))
                               (_else135930135944_)))
                         '#f)))
                  (_K135902135920_ (lambda () '#t)))
              (let ((_try-match135899135923_
                     (lambda ()
                       (if (##null? _g135897135907_)
                           (_K135902135920_)
                           (_else135900135915_)))))
                (if (##pair? _g135897135907_)
                    (let ((_tl135905135962_ (##cdr _g135897135907_))
                          (_hd135904135960_ (##car _g135897135907_)))
                      (let ((_hd135965_ _hd135904135960_)
                            (_rest135967_ _tl135905135962_))
                        (_K135903135957_ _rest135967_ _hd135965_)))
                    (_try-match135899135923_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135972_)
        (let ((_key?135974_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135972_ _key?135974_))))
    (define gx#stx-plist?
      (lambda _g141648_
        (let ((_g141647_ (##length _g141648_)))
          (cond ((##fx= _g141647_ 1)
                 (apply (lambda (_stx135972_) (gx#stx-plist?__0 _stx135972_))
                        _g141648_))
                ((##fx= _g141647_ 2)
                 (apply (lambda (_stx135976_ _key?135977_)
                          (gx#stx-plist?__% _stx135976_ _key?135977_))
                        _g141648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g141648_))))))
    (define gx#stx-getq__%
      (lambda (_key135809_ _stx135810_ _key=?135811_)
        (if (procedure? _key=?135811_)
            '#!void
            (error '"expected procedure" _key=?135811_))
        (let _lp135813_ ((_rest135815_ _stx135810_))
          (let* ((_g135816135824_ (gx#syntax-e _rest135815_))
                 (_else135818135832_ (lambda () '#f))
                 (_K135820135866_
                  (lambda (_rest135835_ _hd135836_)
                    (let* ((_g135837135844_ (gx#syntax-e _rest135835_))
                           (_E135839135848_
                            (lambda ()
                              (error '"No clause matching" _g135837135844_)))
                           (_K135840135854_
                            (lambda (_rest135851_ _val135852_)
                              (if (_key=?135811_ _hd135836_ _key135809_)
                                  _val135852_
                                  (_lp135813_ _rest135851_)))))
                      (if (##pair? _g135837135844_)
                          (let ((_hd135841135857_ (##car _g135837135844_))
                                (_tl135842135859_ (##cdr _g135837135844_)))
                            (let* ((_val135862_ _hd135841135857_)
                                   (_rest135864_ _tl135842135859_))
                              (_K135840135854_ _rest135864_ _val135862_)))
                          (_E135839135848_))))))
            (if (##pair? _g135816135824_)
                (let ((_hd135821135869_ (##car _g135816135824_))
                      (_tl135822135871_ (##cdr _g135816135824_)))
                  (let* ((_hd135874_ _hd135821135869_)
                         (_rest135876_ _tl135822135871_))
                    (_K135820135866_ _rest135876_ _hd135874_)))
                (_else135818135832_))))))
    (define gx#stx-getq__0
      (lambda (_key135881_ _stx135882_)
        (let ((_key=?135884_ gx#stx-eq?))
          (gx#stx-getq__% _key135881_ _stx135882_ _key=?135884_))))
    (define gx#stx-getq
      (lambda _g141650_
        (let ((_g141649_ (##length _g141650_)))
          (cond ((##fx= _g141649_ 2)
                 (apply (lambda (_key135881_ _stx135882_)
                          (gx#stx-getq__0 _key135881_ _stx135882_))
                        _g141650_))
                ((##fx= _g141649_ 3)
                 (apply (lambda (_key135886_ _stx135887_ _key=?135888_)
                          (gx#stx-getq__%
                           _key135886_
                           _stx135887_
                           _key=?135888_))
                        _g141650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g141650_))))))))
