(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707738031)
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
      (lambda _$args136961_
        (apply make-instance gx#identifier-wrap::t _$args136961_)))
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
      (lambda _$args136958_
        (apply make-instance gx#syntax-wrap::t _$args136958_)))
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
      (lambda _$args136955_
        (apply make-instance gx#syntax-quote::t _$args136955_)))
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
      (lambda (_stx136953_) (symbol? (gx#stx-e _stx136953_))))
    (define gx#identifier-quote?
      (lambda (_stx136951_)
        (if (##structure-direct-instance-of? _stx136951_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136951_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136949_)
        (if (##structure-direct-instance-of? _stx136949_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136949_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136949_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136947_)
        (if (##structure-direct-instance-of? _stx136947_ 'gx#syntax-quote::t)
            _stx136947_
            (if (##structure-direct-instance-of?
                 _stx136947_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136947_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136930_)
        (if (##structure-direct-instance-of? _stx136930_ 'gx#syntax-wrap::t)
            (let _lp136932_ ((_e136934_
                              (##unchecked-structure-ref
                               _stx136930_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136935_
                              (cons (##unchecked-structure-ref
                                     _stx136930_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136934_)
                  (let ((_$e136937_ (##type-id (##structure-type _e136934_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136937_)
                        (_lp136932_
                         (##unchecked-structure-ref _e136934_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136934_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136935_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136937_)
                                (eq? 'gx#identifier-wrap::t _$e136937_))
                            (##unchecked-structure-ref
                             _e136934_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136937_)
                                (_lp136932_
                                 (##unchecked-structure-ref
                                  _e136934_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136935_)
                                _e136934_))))
                  (if (null? _marks136935_)
                      _e136934_
                      (if (pair? _e136934_)
                          (cons (gx#stx-wrap (car _e136934_) _marks136935_)
                                (gx#stx-wrap (cdr _e136934_) _marks136935_))
                          (if (vector? _e136934_)
                              (vector-map
                               (lambda (_g136942136944_)
                                 (gx#stx-wrap _g136942136944_ _marks136935_))
                               _e136934_)
                              (if (box? _e136934_)
                                  (box (gx#stx-wrap
                                        (unbox _e136934_)
                                        _marks136935_))
                                  _e136934_))))))
            (if (##structure-instance-of? _stx136930_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136930_ '1 gx#AST::t '#f)
                _stx136930_))))
    (define gx#syntax->datum
      (lambda (_stx136928_)
        (if (##structure-instance-of? _stx136928_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136928_ '1 gx#AST::t '#f))
            (if (pair? _stx136928_)
                (cons (gx#syntax->datum (car _stx136928_))
                      (gx#syntax->datum (cdr _stx136928_)))
                (if (vector? _stx136928_)
                    (vector-map gx#syntax->datum _stx136928_)
                    (if (box? _stx136928_)
                        (box (gx#syntax->datum (unbox _stx136928_)))
                        _stx136928_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136871_ _datum136872_ _src136873_ _quote?136874_)
        (letrec ((_wrap-datum136876_
                  (lambda (_e136900_ _marks136901_)
                    (_wrap-inner136878_
                     _e136900_
                     (lambda (_g136902136904_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136902136904_
                        _src136873_
                        _marks136901_)))))
                 (_wrap-quote136877_
                  (lambda (_e136892_ _ctx136893_ _marks136894_)
                    (_wrap-inner136878_
                     _e136892_
                     (lambda (_g136895136897_)
                       (##structure
                        gx#syntax-quote::t
                        _g136895136897_
                        _src136873_
                        _ctx136893_
                        _marks136894_)))))
                 (_wrap-inner136878_
                  (lambda (_e136885_ _wrap-e136886_)
                    (let _recur136888_ ((_e136890_ _e136885_))
                      (if (symbol? _e136890_)
                          (_wrap-e136886_ _e136890_)
                          (if (pair? _e136890_)
                              (cons (_recur136888_ (car _e136890_))
                                    (_recur136888_ (cdr _e136890_)))
                              (if (vector? _e136890_)
                                  (vector-map _recur136888_ _e136890_)
                                  (if (box? _e136890_)
                                      (box (_recur136888_ (unbox _e136890_)))
                                      _e136890_)))))))
                 (_wrap-outer136879_
                  (lambda (_e136883_)
                    (if (##structure-instance-of? _e136883_ 'gerbil#AST::t)
                        _e136883_
                        (##structure gx#AST::t _e136883_ _src136873_)))))
          (if (##structure-instance-of? _datum136872_ 'gerbil#AST::t)
              _datum136872_
              (if (not _stx136871_)
                  (##structure gx#AST::t _datum136872_ _src136873_)
                  (if (gx#identifier? _stx136871_)
                      (let ((_stx136881_ (gx#stx-unwrap__0 _stx136871_)))
                        (_wrap-outer136879_
                         (if (##structure-direct-instance-of?
                              _stx136881_
                              'gx#syntax-quote::t)
                             (if _quote?136874_
                                 (_wrap-quote136877_
                                  _datum136872_
                                  (##unchecked-structure-ref
                                   _stx136881_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136881_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136876_
                                  _datum136872_
                                  (##unchecked-structure-ref
                                   _stx136881_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136876_
                              _datum136872_
                              (##unchecked-structure-ref
                               _stx136881_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136871_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136910_ _datum136911_)
        (let* ((_src136913_ '#f) (_quote?136915_ '#t))
          (gx#datum->syntax__%
           _stx136910_
           _datum136911_
           _src136913_
           _quote?136915_))))
    (define gx#datum->syntax__1
      (lambda (_stx136917_ _datum136918_ _src136919_)
        (let ((_quote?136921_ '#t))
          (gx#datum->syntax__%
           _stx136917_
           _datum136918_
           _src136919_
           _quote?136921_))))
    (define gx#datum->syntax
      (lambda _g141610_
        (let ((_g141609_ (##length _g141610_)))
          (cond ((##fx= _g141609_ 2)
                 (apply (lambda (_stx136910_ _datum136911_)
                          (gx#datum->syntax__0 _stx136910_ _datum136911_))
                        _g141610_))
                ((##fx= _g141609_ 3)
                 (apply (lambda (_stx136917_ _datum136918_ _src136919_)
                          (gx#datum->syntax__1
                           _stx136917_
                           _datum136918_
                           _src136919_))
                        _g141610_))
                ((##fx= _g141609_ 4)
                 (apply (lambda (_stx136923_
                                 _datum136924_
                                 _src136925_
                                 _quote?136926_)
                          (gx#datum->syntax__%
                           _stx136923_
                           _datum136924_
                           _src136925_
                           _quote?136926_))
                        _g141610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g141610_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136847_ _marks136848_)
        (let _lp136850_ ((_e136852_ _stx136847_)
                         (_marks136853_ _marks136848_)
                         (_src136854_ (gx#stx-source _stx136847_)))
          (if (##structure-direct-instance-of? _e136852_ 'gx#syntax-wrap::t)
              (_lp136850_
               (##unchecked-structure-ref _e136852_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136852_ '3 gx#syntax-wrap::t '#f)
                _marks136853_)
               (##unchecked-structure-ref _e136852_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136852_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136853_)
                      _e136852_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136852_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136852_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136852_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136853_)))
                  (if (##structure-direct-instance-of?
                       _e136852_
                       'gx#syntax-quote::t)
                      _e136852_
                      (if (##structure-instance-of? _e136852_ 'gerbil#AST::t)
                          (_lp136850_
                           (##unchecked-structure-ref
                            _e136852_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136853_
                           (##unchecked-structure-ref
                            _e136852_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136852_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136852_
                               _src136854_
                               (reverse _marks136853_))
                              (if (null? _marks136853_)
                                  _e136852_
                                  (if (pair? _e136852_)
                                      (cons (gx#stx-wrap
                                             (car _e136852_)
                                             _marks136853_)
                                            (gx#stx-wrap
                                             (cdr _e136852_)
                                             _marks136853_))
                                      (if (vector? _e136852_)
                                          (vector-map
                                           (lambda (_g136855136857_)
                                             (gx#stx-wrap
                                              _g136855136857_
                                              _marks136853_))
                                           _e136852_)
                                          (if (box? _e136852_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136852_)
                                                    _marks136853_))
                                              _e136852_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136863_)
        (let ((_marks136865_ '()))
          (gx#stx-unwrap__% _stx136863_ _marks136865_))))
    (define gx#stx-unwrap
      (lambda _g141612_
        (let ((_g141611_ (##length _g141612_)))
          (cond ((##fx= _g141611_ 1)
                 (apply (lambda (_stx136863_) (gx#stx-unwrap__0 _stx136863_))
                        _g141612_))
                ((##fx= _g141611_ 2)
                 (apply (lambda (_stx136867_ _marks136868_)
                          (gx#stx-unwrap__% _stx136867_ _marks136868_))
                        _g141612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g141612_))))))
    (define gx#stx-wrap
      (lambda (_stx136840_ _marks136841_)
        (foldl1 (lambda (_mark136843_ _stx136844_)
                  (gx#stx-apply-mark _stx136844_ _mark136843_))
                _stx136840_
                _marks136841_)))
    (define gx#stx-rewrap
      (lambda (_stx136834_ _marks136835_)
        (foldr1 (lambda (_mark136837_ _stx136838_)
                  (gx#stx-apply-mark _stx136838_ _mark136837_))
                _stx136834_
                _marks136835_)))
    (define gx#stx-apply-mark
      (lambda (_stx136831_ _mark136832_)
        (if (##structure-direct-instance-of? _stx136831_ 'gx#syntax-quote::t)
            _stx136831_
            (if (and (##structure-direct-instance-of?
                      _stx136831_
                      'gx#syntax-wrap::t)
                     (eq? _mark136832_
                          (##unchecked-structure-ref
                           _stx136831_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136831_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136831_
                 (gx#stx-source _stx136831_)
                 _mark136832_)))))
    (define gx#apply-mark
      (lambda (_mark136795_ _marks136796_)
        (let* ((_marks136797136805_ _marks136796_)
               (_else136799136813_
                (lambda () (cons _mark136795_ _marks136796_)))
               (_K136801136819_
                (lambda (_rest136816_ _hd136817_)
                  (if (eq? _mark136795_ _hd136817_)
                      _rest136816_
                      (cons _mark136795_ _marks136796_)))))
          (if (##pair? _marks136797136805_)
              (let ((_hd136802136822_ (##car _marks136797136805_))
                    (_tl136803136824_ (##cdr _marks136797136805_)))
                (let* ((_hd136827_ _hd136802136822_)
                       (_rest136829_ _tl136803136824_))
                  (_K136801136819_ _rest136829_ _hd136827_)))
              (_else136799136813_)))))
    (define gx#stx-e
      (lambda (_stx136793_)
        (if (##structure-direct-instance-of? _stx136793_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136793_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136793_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136793_ '1 gx#AST::t '#f)
                _stx136793_))))
    (define gx#stx-source
      (lambda (_stx136791_)
        (if (##structure-instance-of? _stx136791_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136791_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136785_ _src136786_)
        (if (or (##structure-instance-of? _stx136785_ 'gerbil#AST::t)
                (not _src136786_))
            _stx136785_
            (##structure gx#AST::t _stx136785_ _src136786_))))
    (define gx#stx-datum?
      (lambda (_stx136783_) (gx#self-quoting? (gx#stx-e _stx136783_))))
    (define gx#self-quoting?
      (lambda (_x136766_)
        (let ((_$e136768_ (immediate? _x136766_)))
          (if _$e136768_
              _$e136768_
              (let ((_$e136771_ (number? _x136766_)))
                (if _$e136771_
                    _$e136771_
                    (let ((_$e136774_ (keyword? _x136766_)))
                      (if _$e136774_
                          _$e136774_
                          (let ((_$e136777_ (string? _x136766_)))
                            (if _$e136777_
                                _$e136777_
                                (let ((_$e136780_ (vector? _x136766_)))
                                  (if _$e136780_
                                      _$e136780_
                                      (u8vector? _x136766_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136764_) (boolean? (gx#stx-e _e136764_))))
    (define gx#stx-keyword?
      (lambda (_e136762_) (keyword? (gx#stx-e _e136762_))))
    (define gx#stx-char? (lambda (_e136760_) (char? (gx#stx-e _e136760_))))
    (define gx#stx-number? (lambda (_e136758_) (number? (gx#stx-e _e136758_))))
    (define gx#stx-fixnum? (lambda (_e136756_) (fixnum? (gx#stx-e _e136756_))))
    (define gx#stx-string? (lambda (_e136754_) (string? (gx#stx-e _e136754_))))
    (define gx#stx-null? (lambda (_e136752_) (null? (gx#stx-e _e136752_))))
    (define gx#stx-pair? (lambda (_e136750_) (pair? (gx#stx-e _e136750_))))
    (define gx#stx-list?
      (lambda (_e136712_)
        (let* ((_g136713136722_ (gx#stx-e _e136712_))
               (_E136716136726_
                (lambda () (error '"No clause matching" _g136713136722_))))
          (let ((_K136718136742_
                 (lambda (_rest136740_) (gx#stx-list? _rest136740_)))
                (_K136717136732_ (lambda (_tail136730_) (null? _tail136730_))))
            (if (##pair? _g136713136722_)
                (let* ((_tl136720136745_ (##cdr _g136713136722_))
                       (_rest136748_ _tl136720136745_))
                  (gx#stx-list? _rest136748_))
                (let ((_tail136735_ _g136713136722_))
                  (null? _tail136735_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136705_)
        (let* ((_e136707_ (gx#stx-e _e136705_)) (_$e136709_ (pair? _e136707_)))
          (if _$e136709_ _$e136709_ (null? _e136707_)))))
    (define gx#stx-vector? (lambda (_e136703_) (vector? (gx#stx-e _e136703_))))
    (define gx#stx-box? (lambda (_e136701_) (box? (gx#stx-e _e136701_))))
    (define gx#stx-eq?
      (lambda (_x136698_ _y136699_)
        (eq? (gx#stx-e _x136698_) (gx#stx-e _y136699_))))
    (define gx#stx-eqv?
      (lambda (_x136695_ _y136696_)
        (eqv? (gx#stx-e _x136695_) (gx#stx-e _y136696_))))
    (define gx#stx-equal?
      (lambda (_x136692_ _y136693_)
        (equal? (gx#stx-e _x136692_) (gx#stx-e _y136693_))))
    (define gx#stx-false? (lambda (_x136690_) (not (gx#stx-e _x136690_))))
    (define gx#stx-identifier
      (lambda (_template136687_ . _args136688_)
        (gx#datum->syntax__1
         _template136687_
         (apply make-symbol (gx#syntax->datum _args136688_))
         (gx#stx-source _template136687_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136685_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136685_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136683_)
        (if (##structure-direct-instance-of?
             _stx136683_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136683_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136683_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136683_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136683_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136679_)
        (let ((_stx136681_ (gx#stx-unwrap__0 _stx136679_)))
          (if (gx#identifier-quote? _stx136681_)
              (##unchecked-structure-ref _stx136681_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136634_)
        (let* ((_g136635136645_ (gx#stx-e _stx136634_))
               (_else136638136653_ (lambda () '#f)))
          (let ((_K136641136667_
                 (lambda (_rest136664_ _hd136665_)
                   (if (gx#identifier? _hd136665_)
                       (gx#identifier-list? _rest136664_)
                       '#f)))
                (_K136640136658_ (lambda () '#t)))
            (let ((_try-match136637136661_
                   (lambda ()
                     (if (##null? _g136635136645_)
                         (_K136640136658_)
                         (_else136638136653_)))))
              (if (##pair? _g136635136645_)
                  (let ((_tl136643136672_ (##cdr _g136635136645_))
                        (_hd136642136670_ (##car _g136635136645_)))
                    (let ((_hd136675_ _hd136642136670_)
                          (_rest136677_ _tl136643136672_))
                      (_K136641136667_ _rest136677_ _hd136675_)))
                  (_try-match136637136661_)))))))
    (define gx#genident__%
      (lambda (_e136611_ _src136612_)
        (gx#stx-wrap-source
         (gensym (let ((_e136614_ (gx#stx-e _e136611_)))
                   (if (interned-symbol? _e136614_) _e136614_ 'g)))
         (let ((_$e136616_ (gx#stx-source _e136611_)))
           (if _$e136616_ _$e136616_ _src136612_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136623_ 'g) (_src136625_ '#f))
          (gx#genident__% _e136623_ _src136625_))))
    (define gx#genident__1
      (lambda (_e136627_)
        (let ((_src136629_ '#f)) (gx#genident__% _e136627_ _src136629_))))
    (define gx#genident
      (lambda _g141614_
        (let ((_g141613_ (##length _g141614_)))
          (cond ((##fx= _g141613_ 0)
                 (apply (lambda () (gx#genident__0)) _g141614_))
                ((##fx= _g141613_ 1)
                 (apply (lambda (_e136627_) (gx#genident__1 _e136627_))
                        _g141614_))
                ((##fx= _g141613_ 2)
                 (apply (lambda (_e136631_ _src136632_)
                          (gx#genident__% _e136631_ _src136632_))
                        _g141614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g141614_))))))
    (define gx#gentemps
      (lambda (_stx-lst136608_) (gx#stx-map1 gx#genident _stx-lst136608_)))
    (define gx#syntax->list
      (lambda (_stx136606_) (gx#stx-map1 values _stx136606_)))
    (define gx#stx-car
      (lambda (_stx136603_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136603_)))))
    (define gx#stx-cdr
      (lambda (_stx136600_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136600_)))))
    (define gx#stx-length
      (lambda (_stx136565_)
        (let _lp136567_ ((_rest136569_ _stx136565_) (_n136570_ '0))
          (let* ((_g136571136579_ (gx#stx-e _rest136569_))
                 (_else136573136587_ (lambda () _n136570_))
                 (_K136575136592_
                  (lambda (_rest136590_)
                    (_lp136567_ _rest136590_ (fx+ _n136570_ '1)))))
            (if (##pair? _g136571136579_)
                (let* ((_tl136577136595_ (##cdr _g136571136579_))
                       (_rest136598_ _tl136577136595_))
                  (_K136575136592_ _rest136598_))
                (_else136573136587_))))))
    (define gx#stx-for-each
      (lambda _g141616_
        (let ((_g141615_ (##length _g141616_)))
          (cond ((##fx= _g141615_ 2)
                 (apply (lambda (_f136558_ _stx136559_)
                          (gx#stx-for-each1 _f136558_ _stx136559_))
                        _g141616_))
                ((##fx= _g141615_ 3)
                 (apply (lambda (_f136561_ _xstx136562_ _ystx136563_)
                          (gx#stx-for-each2
                           _f136561_
                           _xstx136562_
                           _ystx136563_))
                        _g141616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g141616_))))))
    (define gx#stx-for-each1
      (lambda (_f136508_ _stx136509_)
        (if (procedure? _f136508_)
            '#!void
            (error '"expected procedure" _f136508_))
        (let _lp136511_ ((_rest136513_ _stx136509_))
          (let* ((_g136514136524_ (gx#syntax-e _rest136513_))
                 (_else136517136532_ (lambda () (_f136508_ _rest136513_))))
            (let ((_K136520136546_
                   (lambda (_rest136543_ _hd136544_)
                     (_f136508_ _hd136544_)
                     (_lp136511_ _rest136543_)))
                  (_K136519136537_ (lambda () '#!void)))
              (let ((_try-match136516136540_
                     (lambda ()
                       (if (##null? _g136514136524_)
                           (_K136519136537_)
                           (_else136517136532_)))))
                (if (##pair? _g136514136524_)
                    (let ((_tl136522136551_ (##cdr _g136514136524_))
                          (_hd136521136549_ (##car _g136514136524_)))
                      (let ((_hd136554_ _hd136521136549_)
                            (_rest136556_ _tl136522136551_))
                        (_K136520136546_ _rest136556_ _hd136554_)))
                    (_try-match136516136540_))))))))
    (define gx#stx-for-each2
      (lambda (_f136413_ _xstx136414_ _ystx136415_)
        (if (procedure? _f136413_)
            '#!void
            (error '"expected procedure" _f136413_))
        (let _lp136417_ ((_xrest136419_ _xstx136414_)
                         (_yrest136420_ _ystx136415_))
          (let* ((_g136421136431_ (gx#syntax-e _xrest136419_))
                 (_else136424136439_ (lambda () '#!void)))
            (let ((_K136427136496_
                   (lambda (_xrest136465_ _xhd136466_)
                     (let* ((_g136467136474_ (gx#syntax-e _yrest136420_))
                            (_E136469136478_
                             (lambda ()
                               (error '"No clause matching" _g136467136474_)))
                            (_K136470136484_
                             (lambda (_yrest136481_ _yhd136482_)
                               (_f136413_ _xhd136466_ _yhd136482_)
                               (_lp136417_ _xrest136465_ _yrest136481_))))
                       (if (##pair? _g136467136474_)
                           (let ((_hd136471136487_ (##car _g136467136474_))
                                 (_tl136472136489_ (##cdr _g136467136474_)))
                             (let* ((_yhd136492_ _hd136471136487_)
                                    (_yrest136494_ _tl136472136489_))
                               (_K136470136484_ _yrest136494_ _yhd136492_)))
                           (_E136469136478_)))))
                  (_K136426136459_
                   (lambda ()
                     (let* ((_yrest136443136448_ _yrest136420_)
                            (_E136445136452_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136443136448_)))
                            (_K136446136456_
                             (lambda ()
                               (_f136413_ _xrest136419_ _yrest136420_))))
                       (if (not (gx#stx-null? _yrest136443136448_))
                           (_K136446136456_)
                           (_E136445136452_))))))
              (let ((_try-match136423136462_
                     (lambda ()
                       (if (not (null? _g136421136431_))
                           (_K136426136459_)
                           (_else136424136439_)))))
                (if (##pair? _g136421136431_)
                    (let ((_tl136429136501_ (##cdr _g136421136431_))
                          (_hd136428136499_ (##car _g136421136431_)))
                      (let ((_xhd136504_ _hd136428136499_)
                            (_xrest136506_ _tl136429136501_))
                        (_K136427136496_ _xrest136506_ _xhd136504_)))
                    (_try-match136423136462_))))))))
    (define gx#stx-map
      (lambda _g141618_
        (let ((_g141617_ (##length _g141618_)))
          (cond ((##fx= _g141617_ 2)
                 (apply (lambda (_f136406_ _stx136407_)
                          (gx#stx-map1 _f136406_ _stx136407_))
                        _g141618_))
                ((##fx= _g141617_ 3)
                 (apply (lambda (_f136409_ _xstx136410_ _ystx136411_)
                          (gx#stx-map2 _f136409_ _xstx136410_ _ystx136411_))
                        _g141618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g141618_))))))
    (define gx#stx-map1
      (lambda (_f136356_ _stx136357_)
        (if (procedure? _f136356_)
            '#!void
            (error '"expected procedure" _f136356_))
        (let _recur136359_ ((_rest136361_ _stx136357_))
          (let* ((_g136362136372_ (gx#syntax-e _rest136361_))
                 (_else136365136380_ (lambda () (_f136356_ _rest136361_))))
            (let ((_K136368136394_
                   (lambda (_rest136391_ _hd136392_)
                     (cons (_f136356_ _hd136392_)
                           (_recur136359_ _rest136391_))))
                  (_K136367136385_ (lambda () '())))
              (let ((_try-match136364136388_
                     (lambda ()
                       (if (##null? _g136362136372_)
                           (_K136367136385_)
                           (_else136365136380_)))))
                (if (##pair? _g136362136372_)
                    (let ((_tl136370136399_ (##cdr _g136362136372_))
                          (_hd136369136397_ (##car _g136362136372_)))
                      (let ((_hd136402_ _hd136369136397_)
                            (_rest136404_ _tl136370136399_))
                        (_K136368136394_ _rest136404_ _hd136402_)))
                    (_try-match136364136388_))))))))
    (define gx#stx-map2
      (lambda (_f136261_ _xstx136262_ _ystx136263_)
        (if (procedure? _f136261_)
            '#!void
            (error '"expected procedure" _f136261_))
        (let _recur136265_ ((_xrest136267_ _xstx136262_)
                            (_yrest136268_ _ystx136263_))
          (let* ((_g136269136279_ (gx#syntax-e _xrest136267_))
                 (_else136272136287_ (lambda () '())))
            (let ((_K136275136344_
                   (lambda (_xrest136313_ _xhd136314_)
                     (let* ((_g136315136322_ (gx#syntax-e _yrest136268_))
                            (_E136317136326_
                             (lambda ()
                               (error '"No clause matching" _g136315136322_)))
                            (_K136318136332_
                             (lambda (_yrest136329_ _yhd136330_)
                               (cons (_f136261_ _xhd136314_ _yhd136330_)
                                     (_recur136265_
                                      _xrest136313_
                                      _yrest136329_)))))
                       (if (##pair? _g136315136322_)
                           (let ((_hd136319136335_ (##car _g136315136322_))
                                 (_tl136320136337_ (##cdr _g136315136322_)))
                             (let* ((_yhd136340_ _hd136319136335_)
                                    (_yrest136342_ _tl136320136337_))
                               (_K136318136332_ _yrest136342_ _yhd136340_)))
                           (_E136317136326_)))))
                  (_K136274136307_
                   (lambda ()
                     (let* ((_yrest136291136296_ _yrest136268_)
                            (_E136293136300_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136291136296_)))
                            (_K136294136304_
                             (lambda ()
                               (_f136261_ _xrest136267_ _yrest136268_))))
                       (if (not (gx#stx-null? _yrest136291136296_))
                           (_K136294136304_)
                           (_E136293136300_))))))
              (let ((_try-match136271136310_
                     (lambda ()
                       (if (not (null? _g136269136279_))
                           (_K136274136307_)
                           (_else136272136287_)))))
                (if (##pair? _g136269136279_)
                    (let ((_tl136277136349_ (##cdr _g136269136279_))
                          (_hd136276136347_ (##car _g136269136279_)))
                      (let ((_xhd136352_ _hd136276136347_)
                            (_xrest136354_ _tl136277136349_))
                        (_K136275136344_ _xrest136354_ _xhd136352_)))
                    (_try-match136271136310_))))))))
    (define gx#stx-andmap
      (lambda (_f136211_ _stx136212_)
        (if (procedure? _f136211_)
            '#!void
            (error '"expected procedure" _f136211_))
        (let _lp136214_ ((_rest136216_ _stx136212_))
          (let* ((_g136217136227_ (gx#syntax-e _rest136216_))
                 (_else136220136235_ (lambda () (_f136211_ _rest136216_))))
            (let ((_K136223136249_
                   (lambda (_rest136246_ _hd136247_)
                     (if (_f136211_ _hd136247_)
                         (_lp136214_ _rest136246_)
                         '#f)))
                  (_K136222136240_ (lambda () '#t)))
              (let ((_try-match136219136243_
                     (lambda ()
                       (if (##null? _g136217136227_)
                           (_K136222136240_)
                           (_else136220136235_)))))
                (if (##pair? _g136217136227_)
                    (let ((_tl136225136254_ (##cdr _g136217136227_))
                          (_hd136224136252_ (##car _g136217136227_)))
                      (let ((_hd136257_ _hd136224136252_)
                            (_rest136259_ _tl136225136254_))
                        (_K136223136249_ _rest136259_ _hd136257_)))
                    (_try-match136219136243_))))))))
    (define gx#stx-ormap
      (lambda (_f136158_ _stx136159_)
        (if (procedure? _f136158_)
            '#!void
            (error '"expected procedure" _f136158_))
        (let _lp136161_ ((_rest136163_ _stx136159_))
          (let* ((_g136164136174_ (gx#syntax-e _rest136163_))
                 (_else136167136182_ (lambda () (_f136158_ _rest136163_))))
            (let ((_K136170136199_
                   (lambda (_rest136193_ _hd136194_)
                     (let ((_$e136196_ (_f136158_ _hd136194_)))
                       (if _$e136196_ _$e136196_ (_lp136161_ _rest136193_)))))
                  (_K136169136187_ (lambda () '#f)))
              (let ((_try-match136166136190_
                     (lambda ()
                       (if (##null? _g136164136174_)
                           (_K136169136187_)
                           (_else136167136182_)))))
                (if (##pair? _g136164136174_)
                    (let ((_tl136172136204_ (##cdr _g136164136174_))
                          (_hd136171136202_ (##car _g136164136174_)))
                      (let ((_hd136207_ _hd136171136202_)
                            (_rest136209_ _tl136172136204_))
                        (_K136170136199_ _rest136209_ _hd136207_)))
                    (_try-match136166136190_))))))))
    (define gx#stx-foldl
      (lambda (_f136106_ _iv136107_ _stx136108_)
        (if (procedure? _f136106_)
            '#!void
            (error '"expected procedure" _f136106_))
        (let _lp136110_ ((_r136112_ _iv136107_) (_rest136113_ _stx136108_))
          (let* ((_g136114136124_ (gx#syntax-e _rest136113_))
                 (_else136117136132_
                  (lambda () (_f136106_ _rest136113_ _r136112_))))
            (let ((_K136120136146_
                   (lambda (_rest136143_ _hd136144_)
                     (_lp136110_
                      (_f136106_ _hd136144_ _r136112_)
                      _rest136143_)))
                  (_K136119136137_ (lambda () _r136112_)))
              (let ((_try-match136116136140_
                     (lambda ()
                       (if (##null? _g136114136124_)
                           (_K136119136137_)
                           (_else136117136132_)))))
                (if (##pair? _g136114136124_)
                    (let ((_tl136122136151_ (##cdr _g136114136124_))
                          (_hd136121136149_ (##car _g136114136124_)))
                      (let ((_hd136154_ _hd136121136149_)
                            (_rest136156_ _tl136122136151_))
                        (_K136120136146_ _rest136156_ _hd136154_)))
                    (_try-match136116136140_))))))))
    (define gx#stx-foldr
      (lambda (_f136055_ _iv136056_ _stx136057_)
        (if (procedure? _f136055_)
            '#!void
            (error '"expected procedure" _f136055_))
        (let _recur136059_ ((_rest136061_ _stx136057_))
          (let* ((_g136062136072_ (gx#syntax-e _rest136061_))
                 (_else136065136080_
                  (lambda () (_f136055_ _rest136061_ _iv136056_))))
            (let ((_K136068136094_
                   (lambda (_rest136091_ _hd136092_)
                     (_f136055_ _hd136092_ (_recur136059_ _rest136091_))))
                  (_K136067136085_ (lambda () _iv136056_)))
              (let ((_try-match136064136088_
                     (lambda ()
                       (if (##null? _g136062136072_)
                           (_K136067136085_)
                           (_else136065136080_)))))
                (if (##pair? _g136062136072_)
                    (let ((_tl136070136099_ (##cdr _g136062136072_))
                          (_hd136069136097_ (##car _g136062136072_)))
                      (let ((_hd136102_ _hd136069136097_)
                            (_rest136104_ _tl136070136099_))
                        (_K136068136094_ _rest136104_ _hd136102_)))
                    (_try-match136064136088_))))))))
    (define gx#stx-reverse
      (lambda (_stx136053_) (gx#stx-foldl cons '() _stx136053_)))
    (define gx#stx-last
      (lambda (_stx136014_)
        (let _lp136016_ ((_rest136018_ _stx136014_))
          (let* ((_g136019136027_ (gx#syntax-e _rest136018_))
                 (_else136021136035_ (lambda () _rest136018_))
                 (_K136023136041_
                  (lambda (_rest136038_ _hd136039_)
                    (if (gx#stx-null? _rest136038_)
                        _hd136039_
                        (_lp136016_ _rest136038_)))))
            (if (##pair? _g136019136027_)
                (let ((_hd136024136044_ (##car _g136019136027_))
                      (_tl136025136046_ (##cdr _g136019136027_)))
                  (let* ((_hd136049_ _hd136024136044_)
                         (_rest136051_ _tl136025136046_))
                    (_K136023136041_ _rest136051_ _hd136049_)))
                (_else136021136035_))))))
    (define gx#stx-last-pair
      (lambda (_stx135985_)
        (let _lp135987_ ((_hd135989_ _stx135985_))
          (let* ((_g135990135997_ (gx#syntax-e _hd135989_))
                 (_E135992136001_
                  (lambda () (error '"No clause matching" _g135990135997_)))
                 (_K135993136006_
                  (lambda (_rest136004_)
                    (if (gx#stx-pair? _rest136004_)
                        (_lp135987_ _rest136004_)
                        _hd135989_))))
            (if (##pair? _g135990135997_)
                (let* ((_tl135995136009_ (##cdr _g135990135997_))
                       (_rest136012_ _tl135995136009_))
                  (_K135993136006_ _rest136012_))
                (_E135992136001_))))))
    (define gx#stx-list-tail
      (lambda (_stx135954_ _k135955_)
        (let _lp135957_ ((_rest135959_ _stx135954_) (_k135960_ _k135955_))
          (if (fxpositive? _k135960_)
              (let* ((_g135961135968_ (gx#syntax-e _rest135959_))
                     (_E135963135972_
                      (lambda ()
                        (error '"No clause matching" _g135961135968_)))
                     (_K135964135977_
                      (lambda (_rest135975_)
                        (_lp135957_ _rest135975_ (fx- _k135960_ '1)))))
                (if (##pair? _g135961135968_)
                    (let* ((_tl135966135980_ (##cdr _g135961135968_))
                           (_rest135983_ _tl135966135980_))
                      (_K135964135977_ _rest135983_))
                    (_E135963135972_)))
              _rest135959_))))
    (define gx#stx-list-ref
      (lambda (_stx135951_ _k135952_)
        (gx#stx-car (gx#stx-list-tail _stx135951_ _k135952_))))
    (define gx#stx-plist?__%
      (lambda (_stx135863_ _key?135864_)
        (if (procedure? _key?135864_)
            '#!void
            (error '"expected procedure" _key?135864_))
        (let _lp135866_ ((_rest135868_ _stx135863_))
          (let* ((_g135869135879_ (gx#stx-e _rest135868_))
                 (_else135872135887_ (lambda () '#f)))
            (let ((_K135875135929_
                   (lambda (_rest135898_ _hd135899_)
                     (if (_key?135864_ _hd135899_)
                         (let* ((_g135900135908_ (gx#stx-e _rest135898_))
                                (_else135902135916_ (lambda () '#f))
                                (_K135904135921_
                                 (lambda (_rest135919_)
                                   (_lp135866_ _rest135919_))))
                           (if (##pair? _g135900135908_)
                               (let* ((_tl135906135924_
                                       (##cdr _g135900135908_))
                                      (_rest135927_ _tl135906135924_))
                                 (_lp135866_ _rest135927_))
                               (_else135902135916_)))
                         '#f)))
                  (_K135874135892_ (lambda () '#t)))
              (let ((_try-match135871135895_
                     (lambda ()
                       (if (##null? _g135869135879_)
                           (_K135874135892_)
                           (_else135872135887_)))))
                (if (##pair? _g135869135879_)
                    (let ((_tl135877135934_ (##cdr _g135869135879_))
                          (_hd135876135932_ (##car _g135869135879_)))
                      (let ((_hd135937_ _hd135876135932_)
                            (_rest135939_ _tl135877135934_))
                        (_K135875135929_ _rest135939_ _hd135937_)))
                    (_try-match135871135895_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135944_)
        (let ((_key?135946_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135944_ _key?135946_))))
    (define gx#stx-plist?
      (lambda _g141620_
        (let ((_g141619_ (##length _g141620_)))
          (cond ((##fx= _g141619_ 1)
                 (apply (lambda (_stx135944_) (gx#stx-plist?__0 _stx135944_))
                        _g141620_))
                ((##fx= _g141619_ 2)
                 (apply (lambda (_stx135948_ _key?135949_)
                          (gx#stx-plist?__% _stx135948_ _key?135949_))
                        _g141620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g141620_))))))
    (define gx#stx-getq__%
      (lambda (_key135781_ _stx135782_ _key=?135783_)
        (if (procedure? _key=?135783_)
            '#!void
            (error '"expected procedure" _key=?135783_))
        (let _lp135785_ ((_rest135787_ _stx135782_))
          (let* ((_g135788135796_ (gx#syntax-e _rest135787_))
                 (_else135790135804_ (lambda () '#f))
                 (_K135792135838_
                  (lambda (_rest135807_ _hd135808_)
                    (let* ((_g135809135816_ (gx#syntax-e _rest135807_))
                           (_E135811135820_
                            (lambda ()
                              (error '"No clause matching" _g135809135816_)))
                           (_K135812135826_
                            (lambda (_rest135823_ _val135824_)
                              (if (_key=?135783_ _hd135808_ _key135781_)
                                  _val135824_
                                  (_lp135785_ _rest135823_)))))
                      (if (##pair? _g135809135816_)
                          (let ((_hd135813135829_ (##car _g135809135816_))
                                (_tl135814135831_ (##cdr _g135809135816_)))
                            (let* ((_val135834_ _hd135813135829_)
                                   (_rest135836_ _tl135814135831_))
                              (_K135812135826_ _rest135836_ _val135834_)))
                          (_E135811135820_))))))
            (if (##pair? _g135788135796_)
                (let ((_hd135793135841_ (##car _g135788135796_))
                      (_tl135794135843_ (##cdr _g135788135796_)))
                  (let* ((_hd135846_ _hd135793135841_)
                         (_rest135848_ _tl135794135843_))
                    (_K135792135838_ _rest135848_ _hd135846_)))
                (_else135790135804_))))))
    (define gx#stx-getq__0
      (lambda (_key135853_ _stx135854_)
        (let ((_key=?135856_ gx#stx-eq?))
          (gx#stx-getq__% _key135853_ _stx135854_ _key=?135856_))))
    (define gx#stx-getq
      (lambda _g141622_
        (let ((_g141621_ (##length _g141622_)))
          (cond ((##fx= _g141621_ 2)
                 (apply (lambda (_key135853_ _stx135854_)
                          (gx#stx-getq__0 _key135853_ _stx135854_))
                        _g141622_))
                ((##fx= _g141621_ 3)
                 (apply (lambda (_key135858_ _stx135859_ _key=?135860_)
                          (gx#stx-getq__%
                           _key135858_
                           _stx135859_
                           _key=?135860_))
                        _g141622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g141622_))))))))
