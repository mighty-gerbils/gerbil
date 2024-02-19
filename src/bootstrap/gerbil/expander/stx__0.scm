(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708334575)
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
      (lambda _$args151042_
        (apply make-instance gx#identifier-wrap::t _$args151042_)))
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
      (lambda _$args151039_
        (apply make-instance gx#syntax-wrap::t _$args151039_)))
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
      (lambda _$args151036_
        (apply make-instance gx#syntax-quote::t _$args151036_)))
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
      (lambda (_stx151034_) (symbol? (gx#stx-e _stx151034_))))
    (define gx#identifier-quote?
      (lambda (_stx151032_)
        (if (##structure-direct-instance-of? _stx151032_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx151032_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx151030_)
        (if (##structure-direct-instance-of? _stx151030_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx151030_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx151030_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx151028_)
        (if (##structure-direct-instance-of? _stx151028_ 'gx#syntax-quote::t)
            _stx151028_
            (if (##structure-direct-instance-of?
                 _stx151028_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx151028_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx151011_)
        (if (##structure-direct-instance-of? _stx151011_ 'gx#syntax-wrap::t)
            (let _lp151013_ ((_e151015_
                              (##unchecked-structure-ref
                               _stx151011_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks151016_
                              (cons (##unchecked-structure-ref
                                     _stx151011_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e151015_)
                  (let ((_$e151018_ (##type-id (##structure-type _e151015_))))
                    (if (eq? 'gx#syntax-wrap::t _$e151018_)
                        (_lp151013_
                         (##unchecked-structure-ref _e151015_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e151015_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks151016_))
                        (if (or (eq? 'gx#syntax-quote::t _$e151018_)
                                (eq? 'gx#identifier-wrap::t _$e151018_))
                            (##unchecked-structure-ref
                             _e151015_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e151018_)
                                (_lp151013_
                                 (##unchecked-structure-ref
                                  _e151015_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks151016_)
                                _e151015_))))
                  (if (null? _marks151016_)
                      _e151015_
                      (if (pair? _e151015_)
                          (cons (gx#stx-wrap (car _e151015_) _marks151016_)
                                (gx#stx-wrap (cdr _e151015_) _marks151016_))
                          (if (vector? _e151015_)
                              (vector-map
                               (lambda (_g151023151025_)
                                 (gx#stx-wrap _g151023151025_ _marks151016_))
                               _e151015_)
                              (if (box? _e151015_)
                                  (box (gx#stx-wrap
                                        (unbox _e151015_)
                                        _marks151016_))
                                  _e151015_))))))
            (if (##structure-instance-of? _stx151011_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx151011_ '1 gx#AST::t '#f)
                _stx151011_))))
    (define gx#syntax->datum
      (lambda (_stx151009_)
        (if (##structure-instance-of? _stx151009_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx151009_ '1 gx#AST::t '#f))
            (if (pair? _stx151009_)
                (cons (gx#syntax->datum (car _stx151009_))
                      (gx#syntax->datum (cdr _stx151009_)))
                (if (vector? _stx151009_)
                    (vector-map gx#syntax->datum _stx151009_)
                    (if (box? _stx151009_)
                        (box (gx#syntax->datum (unbox _stx151009_)))
                        _stx151009_))))))
    (define gx#datum->syntax__%
      (lambda (_stx150952_ _datum150953_ _src150954_ _quote?150955_)
        (letrec ((_wrap-datum150957_
                  (lambda (_e150981_ _marks150982_)
                    (_wrap-inner150959_
                     _e150981_
                     (lambda (_g150983150985_)
                       (##structure
                        gx#identifier-wrap::t
                        _g150983150985_
                        _src150954_
                        _marks150982_)))))
                 (_wrap-quote150958_
                  (lambda (_e150973_ _ctx150974_ _marks150975_)
                    (_wrap-inner150959_
                     _e150973_
                     (lambda (_g150976150978_)
                       (##structure
                        gx#syntax-quote::t
                        _g150976150978_
                        _src150954_
                        _ctx150974_
                        _marks150975_)))))
                 (_wrap-inner150959_
                  (lambda (_e150966_ _wrap-e150967_)
                    (let _recur150969_ ((_e150971_ _e150966_))
                      (if (symbol? _e150971_)
                          (_wrap-e150967_ _e150971_)
                          (if (pair? _e150971_)
                              (cons (_recur150969_ (car _e150971_))
                                    (_recur150969_ (cdr _e150971_)))
                              (if (vector? _e150971_)
                                  (vector-map _recur150969_ _e150971_)
                                  (if (box? _e150971_)
                                      (box (_recur150969_ (unbox _e150971_)))
                                      _e150971_)))))))
                 (_wrap-outer150960_
                  (lambda (_e150964_)
                    (if (##structure-instance-of? _e150964_ 'gerbil#AST::t)
                        _e150964_
                        (##structure gx#AST::t _e150964_ _src150954_)))))
          (if (##structure-instance-of? _datum150953_ 'gerbil#AST::t)
              _datum150953_
              (if (not _stx150952_)
                  (##structure gx#AST::t _datum150953_ _src150954_)
                  (if (gx#identifier? _stx150952_)
                      (let ((_stx150962_ (gx#stx-unwrap__0 _stx150952_)))
                        (_wrap-outer150960_
                         (if (##structure-direct-instance-of?
                              _stx150962_
                              'gx#syntax-quote::t)
                             (if _quote?150955_
                                 (_wrap-quote150958_
                                  _datum150953_
                                  (##unchecked-structure-ref
                                   _stx150962_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx150962_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum150957_
                                  _datum150953_
                                  (##unchecked-structure-ref
                                   _stx150962_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum150957_
                              _datum150953_
                              (##unchecked-structure-ref
                               _stx150962_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx150952_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx150991_ _datum150992_)
        (let* ((_src150994_ '#f) (_quote?150996_ '#t))
          (gx#datum->syntax__%
           _stx150991_
           _datum150992_
           _src150994_
           _quote?150996_))))
    (define gx#datum->syntax__1
      (lambda (_stx150998_ _datum150999_ _src151000_)
        (let ((_quote?151002_ '#t))
          (gx#datum->syntax__%
           _stx150998_
           _datum150999_
           _src151000_
           _quote?151002_))))
    (define gx#datum->syntax
      (lambda _g155190_
        (let ((_g155189_ (##length _g155190_)))
          (cond ((##fx= _g155189_ 2)
                 (apply (lambda (_stx150991_ _datum150992_)
                          (gx#datum->syntax__0 _stx150991_ _datum150992_))
                        _g155190_))
                ((##fx= _g155189_ 3)
                 (apply (lambda (_stx150998_ _datum150999_ _src151000_)
                          (gx#datum->syntax__1
                           _stx150998_
                           _datum150999_
                           _src151000_))
                        _g155190_))
                ((##fx= _g155189_ 4)
                 (apply (lambda (_stx151004_
                                 _datum151005_
                                 _src151006_
                                 _quote?151007_)
                          (gx#datum->syntax__%
                           _stx151004_
                           _datum151005_
                           _src151006_
                           _quote?151007_))
                        _g155190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g155190_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx150928_ _marks150929_)
        (let _lp150931_ ((_e150933_ _stx150928_)
                         (_marks150934_ _marks150929_)
                         (_src150935_ (gx#stx-source _stx150928_)))
          (if (##structure-direct-instance-of? _e150933_ 'gx#syntax-wrap::t)
              (_lp150931_
               (##unchecked-structure-ref _e150933_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e150933_ '3 gx#syntax-wrap::t '#f)
                _marks150934_)
               (##unchecked-structure-ref _e150933_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e150933_
                   'gx#identifier-wrap::t)
                  (if (null? _marks150934_)
                      _e150933_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e150933_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e150933_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e150933_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks150934_)))
                  (if (##structure-direct-instance-of?
                       _e150933_
                       'gx#syntax-quote::t)
                      _e150933_
                      (if (##structure-instance-of? _e150933_ 'gerbil#AST::t)
                          (_lp150931_
                           (##unchecked-structure-ref
                            _e150933_
                            '1
                            gx#AST::t
                            '#f)
                           _marks150934_
                           (##unchecked-structure-ref
                            _e150933_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e150933_)
                              (##structure
                               gx#identifier-wrap::t
                               _e150933_
                               _src150935_
                               (reverse _marks150934_))
                              (if (null? _marks150934_)
                                  _e150933_
                                  (if (pair? _e150933_)
                                      (cons (gx#stx-wrap
                                             (car _e150933_)
                                             _marks150934_)
                                            (gx#stx-wrap
                                             (cdr _e150933_)
                                             _marks150934_))
                                      (if (vector? _e150933_)
                                          (vector-map
                                           (lambda (_g150936150938_)
                                             (gx#stx-wrap
                                              _g150936150938_
                                              _marks150934_))
                                           _e150933_)
                                          (if (box? _e150933_)
                                              (box (gx#stx-wrap
                                                    (unbox _e150933_)
                                                    _marks150934_))
                                              _e150933_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx150944_)
        (let ((_marks150946_ '()))
          (gx#stx-unwrap__% _stx150944_ _marks150946_))))
    (define gx#stx-unwrap
      (lambda _g155192_
        (let ((_g155191_ (##length _g155192_)))
          (cond ((##fx= _g155191_ 1)
                 (apply (lambda (_stx150944_) (gx#stx-unwrap__0 _stx150944_))
                        _g155192_))
                ((##fx= _g155191_ 2)
                 (apply (lambda (_stx150948_ _marks150949_)
                          (gx#stx-unwrap__% _stx150948_ _marks150949_))
                        _g155192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g155192_))))))
    (define gx#stx-wrap
      (lambda (_stx150921_ _marks150922_)
        (foldl1 (lambda (_mark150924_ _stx150925_)
                  (gx#stx-apply-mark _stx150925_ _mark150924_))
                _stx150921_
                _marks150922_)))
    (define gx#stx-rewrap
      (lambda (_stx150915_ _marks150916_)
        (foldr1 (lambda (_mark150918_ _stx150919_)
                  (gx#stx-apply-mark _stx150919_ _mark150918_))
                _stx150915_
                _marks150916_)))
    (define gx#stx-apply-mark
      (lambda (_stx150912_ _mark150913_)
        (if (##structure-direct-instance-of? _stx150912_ 'gx#syntax-quote::t)
            _stx150912_
            (if (and (##structure-direct-instance-of?
                      _stx150912_
                      'gx#syntax-wrap::t)
                     (eq? _mark150913_
                          (##unchecked-structure-ref
                           _stx150912_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx150912_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx150912_
                 (gx#stx-source _stx150912_)
                 _mark150913_)))))
    (define gx#apply-mark
      (lambda (_mark150876_ _marks150877_)
        (let* ((_marks150878150886_ _marks150877_)
               (_else150880150894_
                (lambda () (cons _mark150876_ _marks150877_)))
               (_K150882150900_
                (lambda (_rest150897_ _hd150898_)
                  (if (eq? _mark150876_ _hd150898_)
                      _rest150897_
                      (cons _mark150876_ _marks150877_)))))
          (if (##pair? _marks150878150886_)
              (let ((_hd150883150903_ (##car _marks150878150886_))
                    (_tl150884150905_ (##cdr _marks150878150886_)))
                (let* ((_hd150908_ _hd150883150903_)
                       (_rest150910_ _tl150884150905_))
                  (_K150882150900_ _rest150910_ _hd150908_)))
              (_else150880150894_)))))
    (define gx#stx-e
      (lambda (_stx150874_)
        (if (##structure-direct-instance-of? _stx150874_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx150874_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx150874_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx150874_ '1 gx#AST::t '#f)
                _stx150874_))))
    (define gx#stx-source
      (lambda (_stx150872_)
        (if (##structure-instance-of? _stx150872_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx150872_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx150866_ _src150867_)
        (if (or (##structure-instance-of? _stx150866_ 'gerbil#AST::t)
                (not _src150867_))
            _stx150866_
            (##structure gx#AST::t _stx150866_ _src150867_))))
    (define gx#stx-datum?
      (lambda (_stx150864_) (gx#self-quoting? (gx#stx-e _stx150864_))))
    (define gx#self-quoting?
      (lambda (_x150847_)
        (let ((_$e150849_ (immediate? _x150847_)))
          (if _$e150849_
              _$e150849_
              (let ((_$e150852_ (number? _x150847_)))
                (if _$e150852_
                    _$e150852_
                    (let ((_$e150855_ (keyword? _x150847_)))
                      (if _$e150855_
                          _$e150855_
                          (let ((_$e150858_ (string? _x150847_)))
                            (if _$e150858_
                                _$e150858_
                                (let ((_$e150861_ (vector? _x150847_)))
                                  (if _$e150861_
                                      _$e150861_
                                      (u8vector? _x150847_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e150845_) (boolean? (gx#stx-e _e150845_))))
    (define gx#stx-keyword?
      (lambda (_e150843_) (keyword? (gx#stx-e _e150843_))))
    (define gx#stx-char? (lambda (_e150841_) (char? (gx#stx-e _e150841_))))
    (define gx#stx-number? (lambda (_e150839_) (number? (gx#stx-e _e150839_))))
    (define gx#stx-fixnum? (lambda (_e150837_) (fixnum? (gx#stx-e _e150837_))))
    (define gx#stx-string? (lambda (_e150835_) (string? (gx#stx-e _e150835_))))
    (define gx#stx-null? (lambda (_e150833_) (null? (gx#stx-e _e150833_))))
    (define gx#stx-pair? (lambda (_e150831_) (pair? (gx#stx-e _e150831_))))
    (define gx#stx-list?
      (lambda (_e150793_)
        (let* ((_g150794150803_ (gx#stx-e _e150793_))
               (_E150797150807_
                (lambda () (error '"No clause matching" _g150794150803_))))
          (let ((_K150799150823_
                 (lambda (_rest150821_) (gx#stx-list? _rest150821_)))
                (_K150798150813_ (lambda (_tail150811_) (null? _tail150811_))))
            (if (##pair? _g150794150803_)
                (let* ((_tl150801150826_ (##cdr _g150794150803_))
                       (_rest150829_ _tl150801150826_))
                  (gx#stx-list? _rest150829_))
                (let ((_tail150816_ _g150794150803_))
                  (null? _tail150816_)))))))
    (define gx#stx-pair/null?
      (lambda (_e150786_)
        (let* ((_e150788_ (gx#stx-e _e150786_)) (_$e150790_ (pair? _e150788_)))
          (if _$e150790_ _$e150790_ (null? _e150788_)))))
    (define gx#stx-vector? (lambda (_e150784_) (vector? (gx#stx-e _e150784_))))
    (define gx#stx-box? (lambda (_e150782_) (box? (gx#stx-e _e150782_))))
    (define gx#stx-eq?
      (lambda (_x150779_ _y150780_)
        (eq? (gx#stx-e _x150779_) (gx#stx-e _y150780_))))
    (define gx#stx-eqv?
      (lambda (_x150776_ _y150777_)
        (eqv? (gx#stx-e _x150776_) (gx#stx-e _y150777_))))
    (define gx#stx-equal?
      (lambda (_x150773_ _y150774_)
        (equal? (gx#stx-e _x150773_) (gx#stx-e _y150774_))))
    (define gx#stx-false? (lambda (_x150771_) (not (gx#stx-e _x150771_))))
    (define gx#stx-identifier
      (lambda (_template150768_ . _args150769_)
        (gx#datum->syntax__1
         _template150768_
         (apply make-symbol (gx#syntax->datum _args150769_))
         (gx#stx-source _template150768_))))
    (define gx#stx-identifier-marks
      (lambda (_stx150766_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx150766_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx150764_)
        (if (##structure-direct-instance-of?
             _stx150764_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx150764_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx150764_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx150764_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx150764_)))))
    (define gx#stx-identifier-context
      (lambda (_stx150760_)
        (let ((_stx150762_ (gx#stx-unwrap__0 _stx150760_)))
          (if (gx#identifier-quote? _stx150762_)
              (##unchecked-structure-ref _stx150762_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx150715_)
        (let* ((_g150716150726_ (gx#stx-e _stx150715_))
               (_else150719150734_ (lambda () '#f)))
          (let ((_K150722150748_
                 (lambda (_rest150745_ _hd150746_)
                   (if (gx#identifier? _hd150746_)
                       (gx#identifier-list? _rest150745_)
                       '#f)))
                (_K150721150739_ (lambda () '#t)))
            (let ((_try-match150718150742_
                   (lambda ()
                     (if (##null? _g150716150726_)
                         (_K150721150739_)
                         (_else150719150734_)))))
              (if (##pair? _g150716150726_)
                  (let ((_tl150724150753_ (##cdr _g150716150726_))
                        (_hd150723150751_ (##car _g150716150726_)))
                    (let ((_hd150756_ _hd150723150751_)
                          (_rest150758_ _tl150724150753_))
                      (_K150722150748_ _rest150758_ _hd150756_)))
                  (_try-match150718150742_)))))))
    (define gx#genident__%
      (lambda (_e150692_ _src150693_)
        (gx#stx-wrap-source
         (gensym (let ((_e150695_ (gx#stx-e _e150692_)))
                   (if (interned-symbol? _e150695_) _e150695_ 'g)))
         (let ((_$e150697_ (gx#stx-source _e150692_)))
           (if _$e150697_ _$e150697_ _src150693_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e150704_ 'g) (_src150706_ '#f))
          (gx#genident__% _e150704_ _src150706_))))
    (define gx#genident__1
      (lambda (_e150708_)
        (let ((_src150710_ '#f)) (gx#genident__% _e150708_ _src150710_))))
    (define gx#genident
      (lambda _g155194_
        (let ((_g155193_ (##length _g155194_)))
          (cond ((##fx= _g155193_ 0)
                 (apply (lambda () (gx#genident__0)) _g155194_))
                ((##fx= _g155193_ 1)
                 (apply (lambda (_e150708_) (gx#genident__1 _e150708_))
                        _g155194_))
                ((##fx= _g155193_ 2)
                 (apply (lambda (_e150712_ _src150713_)
                          (gx#genident__% _e150712_ _src150713_))
                        _g155194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g155194_))))))
    (define gx#gentemps
      (lambda (_stx-lst150689_) (gx#stx-map1 gx#genident _stx-lst150689_)))
    (define gx#syntax->list
      (lambda (_stx150687_) (gx#stx-map1 values _stx150687_)))
    (define gx#stx-car
      (lambda (_stx150684_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx150684_)))))
    (define gx#stx-cdr
      (lambda (_stx150681_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx150681_)))))
    (define gx#stx-length
      (lambda (_stx150646_)
        (let _lp150648_ ((_rest150650_ _stx150646_) (_n150651_ '0))
          (let* ((_g150652150660_ (gx#stx-e _rest150650_))
                 (_else150654150668_ (lambda () _n150651_))
                 (_K150656150673_
                  (lambda (_rest150671_)
                    (_lp150648_ _rest150671_ (fx+ _n150651_ '1)))))
            (if (##pair? _g150652150660_)
                (let* ((_tl150658150676_ (##cdr _g150652150660_))
                       (_rest150679_ _tl150658150676_))
                  (_K150656150673_ _rest150679_))
                (_else150654150668_))))))
    (define gx#stx-for-each
      (lambda _g155196_
        (let ((_g155195_ (##length _g155196_)))
          (cond ((##fx= _g155195_ 2)
                 (apply (lambda (_f150639_ _stx150640_)
                          (gx#stx-for-each1 _f150639_ _stx150640_))
                        _g155196_))
                ((##fx= _g155195_ 3)
                 (apply (lambda (_f150642_ _xstx150643_ _ystx150644_)
                          (gx#stx-for-each2
                           _f150642_
                           _xstx150643_
                           _ystx150644_))
                        _g155196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g155196_))))))
    (define gx#stx-for-each1
      (lambda (_f150589_ _stx150590_)
        (if (procedure? _f150589_)
            '#!void
            (error '"expected procedure" _f150589_))
        (let _lp150592_ ((_rest150594_ _stx150590_))
          (let* ((_g150595150605_ (gx#syntax-e _rest150594_))
                 (_else150598150613_ (lambda () (_f150589_ _rest150594_))))
            (let ((_K150601150627_
                   (lambda (_rest150624_ _hd150625_)
                     (_f150589_ _hd150625_)
                     (_lp150592_ _rest150624_)))
                  (_K150600150618_ (lambda () '#!void)))
              (let ((_try-match150597150621_
                     (lambda ()
                       (if (##null? _g150595150605_)
                           (_K150600150618_)
                           (_else150598150613_)))))
                (if (##pair? _g150595150605_)
                    (let ((_tl150603150632_ (##cdr _g150595150605_))
                          (_hd150602150630_ (##car _g150595150605_)))
                      (let ((_hd150635_ _hd150602150630_)
                            (_rest150637_ _tl150603150632_))
                        (_K150601150627_ _rest150637_ _hd150635_)))
                    (_try-match150597150621_))))))))
    (define gx#stx-for-each2
      (lambda (_f150494_ _xstx150495_ _ystx150496_)
        (if (procedure? _f150494_)
            '#!void
            (error '"expected procedure" _f150494_))
        (let _lp150498_ ((_xrest150500_ _xstx150495_)
                         (_yrest150501_ _ystx150496_))
          (let* ((_g150502150512_ (gx#syntax-e _xrest150500_))
                 (_else150505150520_ (lambda () '#!void)))
            (let ((_K150508150577_
                   (lambda (_xrest150546_ _xhd150547_)
                     (let* ((_g150548150555_ (gx#syntax-e _yrest150501_))
                            (_E150550150559_
                             (lambda ()
                               (error '"No clause matching" _g150548150555_)))
                            (_K150551150565_
                             (lambda (_yrest150562_ _yhd150563_)
                               (_f150494_ _xhd150547_ _yhd150563_)
                               (_lp150498_ _xrest150546_ _yrest150562_))))
                       (if (##pair? _g150548150555_)
                           (let ((_hd150552150568_ (##car _g150548150555_))
                                 (_tl150553150570_ (##cdr _g150548150555_)))
                             (let* ((_yhd150573_ _hd150552150568_)
                                    (_yrest150575_ _tl150553150570_))
                               (_K150551150565_ _yrest150575_ _yhd150573_)))
                           (_E150550150559_)))))
                  (_K150507150540_
                   (lambda ()
                     (let* ((_yrest150524150529_ _yrest150501_)
                            (_E150526150533_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest150524150529_)))
                            (_K150527150537_
                             (lambda ()
                               (_f150494_ _xrest150500_ _yrest150501_))))
                       (if (not (gx#stx-null? _yrest150524150529_))
                           (_K150527150537_)
                           (_E150526150533_))))))
              (let ((_try-match150504150543_
                     (lambda ()
                       (if (not (null? _g150502150512_))
                           (_K150507150540_)
                           (_else150505150520_)))))
                (if (##pair? _g150502150512_)
                    (let ((_tl150510150582_ (##cdr _g150502150512_))
                          (_hd150509150580_ (##car _g150502150512_)))
                      (let ((_xhd150585_ _hd150509150580_)
                            (_xrest150587_ _tl150510150582_))
                        (_K150508150577_ _xrest150587_ _xhd150585_)))
                    (_try-match150504150543_))))))))
    (define gx#stx-map
      (lambda _g155198_
        (let ((_g155197_ (##length _g155198_)))
          (cond ((##fx= _g155197_ 2)
                 (apply (lambda (_f150487_ _stx150488_)
                          (gx#stx-map1 _f150487_ _stx150488_))
                        _g155198_))
                ((##fx= _g155197_ 3)
                 (apply (lambda (_f150490_ _xstx150491_ _ystx150492_)
                          (gx#stx-map2 _f150490_ _xstx150491_ _ystx150492_))
                        _g155198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g155198_))))))
    (define gx#stx-map1
      (lambda (_f150437_ _stx150438_)
        (if (procedure? _f150437_)
            '#!void
            (error '"expected procedure" _f150437_))
        (let _recur150440_ ((_rest150442_ _stx150438_))
          (let* ((_g150443150453_ (gx#syntax-e _rest150442_))
                 (_else150446150461_ (lambda () (_f150437_ _rest150442_))))
            (let ((_K150449150475_
                   (lambda (_rest150472_ _hd150473_)
                     (cons (_f150437_ _hd150473_)
                           (_recur150440_ _rest150472_))))
                  (_K150448150466_ (lambda () '())))
              (let ((_try-match150445150469_
                     (lambda ()
                       (if (##null? _g150443150453_)
                           (_K150448150466_)
                           (_else150446150461_)))))
                (if (##pair? _g150443150453_)
                    (let ((_tl150451150480_ (##cdr _g150443150453_))
                          (_hd150450150478_ (##car _g150443150453_)))
                      (let ((_hd150483_ _hd150450150478_)
                            (_rest150485_ _tl150451150480_))
                        (_K150449150475_ _rest150485_ _hd150483_)))
                    (_try-match150445150469_))))))))
    (define gx#stx-map2
      (lambda (_f150342_ _xstx150343_ _ystx150344_)
        (if (procedure? _f150342_)
            '#!void
            (error '"expected procedure" _f150342_))
        (let _recur150346_ ((_xrest150348_ _xstx150343_)
                            (_yrest150349_ _ystx150344_))
          (let* ((_g150350150360_ (gx#syntax-e _xrest150348_))
                 (_else150353150368_ (lambda () '())))
            (let ((_K150356150425_
                   (lambda (_xrest150394_ _xhd150395_)
                     (let* ((_g150396150403_ (gx#syntax-e _yrest150349_))
                            (_E150398150407_
                             (lambda ()
                               (error '"No clause matching" _g150396150403_)))
                            (_K150399150413_
                             (lambda (_yrest150410_ _yhd150411_)
                               (cons (_f150342_ _xhd150395_ _yhd150411_)
                                     (_recur150346_
                                      _xrest150394_
                                      _yrest150410_)))))
                       (if (##pair? _g150396150403_)
                           (let ((_hd150400150416_ (##car _g150396150403_))
                                 (_tl150401150418_ (##cdr _g150396150403_)))
                             (let* ((_yhd150421_ _hd150400150416_)
                                    (_yrest150423_ _tl150401150418_))
                               (_K150399150413_ _yrest150423_ _yhd150421_)))
                           (_E150398150407_)))))
                  (_K150355150388_
                   (lambda ()
                     (let* ((_yrest150372150377_ _yrest150349_)
                            (_E150374150381_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest150372150377_)))
                            (_K150375150385_
                             (lambda ()
                               (_f150342_ _xrest150348_ _yrest150349_))))
                       (if (not (gx#stx-null? _yrest150372150377_))
                           (_K150375150385_)
                           (_E150374150381_))))))
              (let ((_try-match150352150391_
                     (lambda ()
                       (if (not (null? _g150350150360_))
                           (_K150355150388_)
                           (_else150353150368_)))))
                (if (##pair? _g150350150360_)
                    (let ((_tl150358150430_ (##cdr _g150350150360_))
                          (_hd150357150428_ (##car _g150350150360_)))
                      (let ((_xhd150433_ _hd150357150428_)
                            (_xrest150435_ _tl150358150430_))
                        (_K150356150425_ _xrest150435_ _xhd150433_)))
                    (_try-match150352150391_))))))))
    (define gx#stx-andmap
      (lambda (_f150292_ _stx150293_)
        (if (procedure? _f150292_)
            '#!void
            (error '"expected procedure" _f150292_))
        (let _lp150295_ ((_rest150297_ _stx150293_))
          (let* ((_g150298150308_ (gx#syntax-e _rest150297_))
                 (_else150301150316_ (lambda () (_f150292_ _rest150297_))))
            (let ((_K150304150330_
                   (lambda (_rest150327_ _hd150328_)
                     (if (_f150292_ _hd150328_)
                         (_lp150295_ _rest150327_)
                         '#f)))
                  (_K150303150321_ (lambda () '#t)))
              (let ((_try-match150300150324_
                     (lambda ()
                       (if (##null? _g150298150308_)
                           (_K150303150321_)
                           (_else150301150316_)))))
                (if (##pair? _g150298150308_)
                    (let ((_tl150306150335_ (##cdr _g150298150308_))
                          (_hd150305150333_ (##car _g150298150308_)))
                      (let ((_hd150338_ _hd150305150333_)
                            (_rest150340_ _tl150306150335_))
                        (_K150304150330_ _rest150340_ _hd150338_)))
                    (_try-match150300150324_))))))))
    (define gx#stx-ormap
      (lambda (_f150239_ _stx150240_)
        (if (procedure? _f150239_)
            '#!void
            (error '"expected procedure" _f150239_))
        (let _lp150242_ ((_rest150244_ _stx150240_))
          (let* ((_g150245150255_ (gx#syntax-e _rest150244_))
                 (_else150248150263_ (lambda () (_f150239_ _rest150244_))))
            (let ((_K150251150280_
                   (lambda (_rest150274_ _hd150275_)
                     (let ((_$e150277_ (_f150239_ _hd150275_)))
                       (if _$e150277_ _$e150277_ (_lp150242_ _rest150274_)))))
                  (_K150250150268_ (lambda () '#f)))
              (let ((_try-match150247150271_
                     (lambda ()
                       (if (##null? _g150245150255_)
                           (_K150250150268_)
                           (_else150248150263_)))))
                (if (##pair? _g150245150255_)
                    (let ((_tl150253150285_ (##cdr _g150245150255_))
                          (_hd150252150283_ (##car _g150245150255_)))
                      (let ((_hd150288_ _hd150252150283_)
                            (_rest150290_ _tl150253150285_))
                        (_K150251150280_ _rest150290_ _hd150288_)))
                    (_try-match150247150271_))))))))
    (define gx#stx-foldl
      (lambda (_f150187_ _iv150188_ _stx150189_)
        (if (procedure? _f150187_)
            '#!void
            (error '"expected procedure" _f150187_))
        (let _lp150191_ ((_r150193_ _iv150188_) (_rest150194_ _stx150189_))
          (let* ((_g150195150205_ (gx#syntax-e _rest150194_))
                 (_else150198150213_
                  (lambda () (_f150187_ _rest150194_ _r150193_))))
            (let ((_K150201150227_
                   (lambda (_rest150224_ _hd150225_)
                     (_lp150191_
                      (_f150187_ _hd150225_ _r150193_)
                      _rest150224_)))
                  (_K150200150218_ (lambda () _r150193_)))
              (let ((_try-match150197150221_
                     (lambda ()
                       (if (##null? _g150195150205_)
                           (_K150200150218_)
                           (_else150198150213_)))))
                (if (##pair? _g150195150205_)
                    (let ((_tl150203150232_ (##cdr _g150195150205_))
                          (_hd150202150230_ (##car _g150195150205_)))
                      (let ((_hd150235_ _hd150202150230_)
                            (_rest150237_ _tl150203150232_))
                        (_K150201150227_ _rest150237_ _hd150235_)))
                    (_try-match150197150221_))))))))
    (define gx#stx-foldr
      (lambda (_f150136_ _iv150137_ _stx150138_)
        (if (procedure? _f150136_)
            '#!void
            (error '"expected procedure" _f150136_))
        (let _recur150140_ ((_rest150142_ _stx150138_))
          (let* ((_g150143150153_ (gx#syntax-e _rest150142_))
                 (_else150146150161_
                  (lambda () (_f150136_ _rest150142_ _iv150137_))))
            (let ((_K150149150175_
                   (lambda (_rest150172_ _hd150173_)
                     (_f150136_ _hd150173_ (_recur150140_ _rest150172_))))
                  (_K150148150166_ (lambda () _iv150137_)))
              (let ((_try-match150145150169_
                     (lambda ()
                       (if (##null? _g150143150153_)
                           (_K150148150166_)
                           (_else150146150161_)))))
                (if (##pair? _g150143150153_)
                    (let ((_tl150151150180_ (##cdr _g150143150153_))
                          (_hd150150150178_ (##car _g150143150153_)))
                      (let ((_hd150183_ _hd150150150178_)
                            (_rest150185_ _tl150151150180_))
                        (_K150149150175_ _rest150185_ _hd150183_)))
                    (_try-match150145150169_))))))))
    (define gx#stx-reverse
      (lambda (_stx150134_) (gx#stx-foldl cons '() _stx150134_)))
    (define gx#stx-last
      (lambda (_stx150095_)
        (let _lp150097_ ((_rest150099_ _stx150095_))
          (let* ((_g150100150108_ (gx#syntax-e _rest150099_))
                 (_else150102150116_ (lambda () _rest150099_))
                 (_K150104150122_
                  (lambda (_rest150119_ _hd150120_)
                    (if (gx#stx-null? _rest150119_)
                        _hd150120_
                        (_lp150097_ _rest150119_)))))
            (if (##pair? _g150100150108_)
                (let ((_hd150105150125_ (##car _g150100150108_))
                      (_tl150106150127_ (##cdr _g150100150108_)))
                  (let* ((_hd150130_ _hd150105150125_)
                         (_rest150132_ _tl150106150127_))
                    (_K150104150122_ _rest150132_ _hd150130_)))
                (_else150102150116_))))))
    (define gx#stx-last-pair
      (lambda (_stx150066_)
        (let _lp150068_ ((_hd150070_ _stx150066_))
          (let* ((_g150071150078_ (gx#syntax-e _hd150070_))
                 (_E150073150082_
                  (lambda () (error '"No clause matching" _g150071150078_)))
                 (_K150074150087_
                  (lambda (_rest150085_)
                    (if (gx#stx-pair? _rest150085_)
                        (_lp150068_ _rest150085_)
                        _hd150070_))))
            (if (##pair? _g150071150078_)
                (let* ((_tl150076150090_ (##cdr _g150071150078_))
                       (_rest150093_ _tl150076150090_))
                  (_K150074150087_ _rest150093_))
                (_E150073150082_))))))
    (define gx#stx-list-tail
      (lambda (_stx150035_ _k150036_)
        (let _lp150038_ ((_rest150040_ _stx150035_) (_k150041_ _k150036_))
          (if (fxpositive? _k150041_)
              (let* ((_g150042150049_ (gx#syntax-e _rest150040_))
                     (_E150044150053_
                      (lambda ()
                        (error '"No clause matching" _g150042150049_)))
                     (_K150045150058_
                      (lambda (_rest150056_)
                        (_lp150038_ _rest150056_ (fx- _k150041_ '1)))))
                (if (##pair? _g150042150049_)
                    (let* ((_tl150047150061_ (##cdr _g150042150049_))
                           (_rest150064_ _tl150047150061_))
                      (_K150045150058_ _rest150064_))
                    (_E150044150053_)))
              _rest150040_))))
    (define gx#stx-list-ref
      (lambda (_stx150032_ _k150033_)
        (gx#stx-car (gx#stx-list-tail _stx150032_ _k150033_))))
    (define gx#stx-plist?__%
      (lambda (_stx149944_ _key?149945_)
        (if (procedure? _key?149945_)
            '#!void
            (error '"expected procedure" _key?149945_))
        (let _lp149947_ ((_rest149949_ _stx149944_))
          (let* ((_g149950149960_ (gx#stx-e _rest149949_))
                 (_else149953149968_ (lambda () '#f)))
            (let ((_K149956150010_
                   (lambda (_rest149979_ _hd149980_)
                     (if (_key?149945_ _hd149980_)
                         (let* ((_g149981149989_ (gx#stx-e _rest149979_))
                                (_else149983149997_ (lambda () '#f))
                                (_K149985150002_
                                 (lambda (_rest150000_)
                                   (_lp149947_ _rest150000_))))
                           (if (##pair? _g149981149989_)
                               (let* ((_tl149987150005_
                                       (##cdr _g149981149989_))
                                      (_rest150008_ _tl149987150005_))
                                 (_lp149947_ _rest150008_))
                               (_else149983149997_)))
                         '#f)))
                  (_K149955149973_ (lambda () '#t)))
              (let ((_try-match149952149976_
                     (lambda ()
                       (if (##null? _g149950149960_)
                           (_K149955149973_)
                           (_else149953149968_)))))
                (if (##pair? _g149950149960_)
                    (let ((_tl149958150015_ (##cdr _g149950149960_))
                          (_hd149957150013_ (##car _g149950149960_)))
                      (let ((_hd150018_ _hd149957150013_)
                            (_rest150020_ _tl149958150015_))
                        (_K149956150010_ _rest150020_ _hd150018_)))
                    (_try-match149952149976_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx150025_)
        (let ((_key?150027_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx150025_ _key?150027_))))
    (define gx#stx-plist?
      (lambda _g155200_
        (let ((_g155199_ (##length _g155200_)))
          (cond ((##fx= _g155199_ 1)
                 (apply (lambda (_stx150025_) (gx#stx-plist?__0 _stx150025_))
                        _g155200_))
                ((##fx= _g155199_ 2)
                 (apply (lambda (_stx150029_ _key?150030_)
                          (gx#stx-plist?__% _stx150029_ _key?150030_))
                        _g155200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g155200_))))))
    (define gx#stx-getq__%
      (lambda (_key149862_ _stx149863_ _key=?149864_)
        (if (procedure? _key=?149864_)
            '#!void
            (error '"expected procedure" _key=?149864_))
        (let _lp149866_ ((_rest149868_ _stx149863_))
          (let* ((_g149869149877_ (gx#syntax-e _rest149868_))
                 (_else149871149885_ (lambda () '#f))
                 (_K149873149919_
                  (lambda (_rest149888_ _hd149889_)
                    (let* ((_g149890149897_ (gx#syntax-e _rest149888_))
                           (_E149892149901_
                            (lambda ()
                              (error '"No clause matching" _g149890149897_)))
                           (_K149893149907_
                            (lambda (_rest149904_ _val149905_)
                              (if (_key=?149864_ _hd149889_ _key149862_)
                                  _val149905_
                                  (_lp149866_ _rest149904_)))))
                      (if (##pair? _g149890149897_)
                          (let ((_hd149894149910_ (##car _g149890149897_))
                                (_tl149895149912_ (##cdr _g149890149897_)))
                            (let* ((_val149915_ _hd149894149910_)
                                   (_rest149917_ _tl149895149912_))
                              (_K149893149907_ _rest149917_ _val149915_)))
                          (_E149892149901_))))))
            (if (##pair? _g149869149877_)
                (let ((_hd149874149922_ (##car _g149869149877_))
                      (_tl149875149924_ (##cdr _g149869149877_)))
                  (let* ((_hd149927_ _hd149874149922_)
                         (_rest149929_ _tl149875149924_))
                    (_K149873149919_ _rest149929_ _hd149927_)))
                (_else149871149885_))))))
    (define gx#stx-getq__0
      (lambda (_key149934_ _stx149935_)
        (let ((_key=?149937_ gx#stx-eq?))
          (gx#stx-getq__% _key149934_ _stx149935_ _key=?149937_))))
    (define gx#stx-getq
      (lambda _g155202_
        (let ((_g155201_ (##length _g155202_)))
          (cond ((##fx= _g155201_ 2)
                 (apply (lambda (_key149934_ _stx149935_)
                          (gx#stx-getq__0 _key149934_ _stx149935_))
                        _g155202_))
                ((##fx= _g155201_ 3)
                 (apply (lambda (_key149939_ _stx149940_ _key=?149941_)
                          (gx#stx-getq__%
                           _key149939_
                           _stx149940_
                           _key=?149941_))
                        _g155202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g155202_))))))))
