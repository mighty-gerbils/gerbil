(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710617601)
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
      (lambda _$args79872_
        (apply make-instance gx#identifier-wrap::t _$args79872_)))
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
      (lambda _$args79869_
        (apply make-instance gx#syntax-wrap::t _$args79869_)))
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
      (lambda _$args79866_
        (apply make-instance gx#syntax-quote::t _$args79866_)))
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
      (lambda (_stx79864_) (symbol? (gx#stx-e _stx79864_))))
    (define gx#identifier-quote?
      (lambda (_stx79862_)
        (if (##structure-direct-instance-of? _stx79862_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx79862_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx79860_)
        (if (##structure-direct-instance-of? _stx79860_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx79860_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx79860_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx79858_)
        (if (##structure-direct-instance-of? _stx79858_ 'gx#syntax-quote::t)
            _stx79858_
            (if (##structure-direct-instance-of? _stx79858_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx79858_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx79841_)
        (if (##structure-direct-instance-of? _stx79841_ 'gx#syntax-wrap::t)
            (let _lp79843_ ((_e79845_
                             (##unchecked-structure-ref
                              _stx79841_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks79846_
                             (cons (##unchecked-structure-ref
                                    _stx79841_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e79845_)
                  (let ((_$e79848_ (##type-id (##structure-type _e79845_))))
                    (if (eq? 'gx#syntax-wrap::t _$e79848_)
                        (_lp79843_
                         (##unchecked-structure-ref _e79845_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e79845_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks79846_))
                        (if (or (eq? 'gx#syntax-quote::t _$e79848_)
                                (eq? 'gx#identifier-wrap::t _$e79848_))
                            (##unchecked-structure-ref
                             _e79845_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e79848_)
                                (_lp79843_
                                 (##unchecked-structure-ref
                                  _e79845_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks79846_)
                                _e79845_))))
                  (if (null? _marks79846_)
                      _e79845_
                      (if (pair? _e79845_)
                          (cons (gx#stx-wrap (car _e79845_) _marks79846_)
                                (gx#stx-wrap (cdr _e79845_) _marks79846_))
                          (if (vector? _e79845_)
                              (vector-map
                               (lambda (_g7985379855_)
                                 (gx#stx-wrap _g7985379855_ _marks79846_))
                               _e79845_)
                              (if (box? _e79845_)
                                  (box (gx#stx-wrap
                                        (unbox _e79845_)
                                        _marks79846_))
                                  _e79845_))))))
            (if (##structure-instance-of? _stx79841_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx79841_ '1 gx#AST::t '#f)
                _stx79841_))))
    (define gx#syntax->datum
      (lambda (_stx79839_)
        (if (##structure-instance-of? _stx79839_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx79839_ '1 gx#AST::t '#f))
            (if (pair? _stx79839_)
                (cons (gx#syntax->datum (car _stx79839_))
                      (gx#syntax->datum (cdr _stx79839_)))
                (if (vector? _stx79839_)
                    (vector-map gx#syntax->datum _stx79839_)
                    (if (box? _stx79839_)
                        (box (gx#syntax->datum (unbox _stx79839_)))
                        _stx79839_))))))
    (define gx#datum->syntax__%
      (lambda (_stx79782_ _datum79783_ _src79784_ _quote?79785_)
        (letrec ((_wrap-datum79787_
                  (lambda (_e79811_ _marks79812_)
                    (_wrap-inner79789_
                     _e79811_
                     (lambda (_g7981379815_)
                       (##structure
                        gx#identifier-wrap::t
                        _g7981379815_
                        _src79784_
                        _marks79812_)))))
                 (_wrap-quote79788_
                  (lambda (_e79803_ _ctx79804_ _marks79805_)
                    (_wrap-inner79789_
                     _e79803_
                     (lambda (_g7980679808_)
                       (##structure
                        gx#syntax-quote::t
                        _g7980679808_
                        _src79784_
                        _ctx79804_
                        _marks79805_)))))
                 (_wrap-inner79789_
                  (lambda (_e79796_ _wrap-e79797_)
                    (let _recur79799_ ((_e79801_ _e79796_))
                      (if (symbol? _e79801_)
                          (_wrap-e79797_ _e79801_)
                          (if (pair? _e79801_)
                              (cons (_recur79799_ (car _e79801_))
                                    (_recur79799_ (cdr _e79801_)))
                              (if (vector? _e79801_)
                                  (vector-map _recur79799_ _e79801_)
                                  (if (box? _e79801_)
                                      (box (_recur79799_ (unbox _e79801_)))
                                      _e79801_)))))))
                 (_wrap-outer79790_
                  (lambda (_e79794_)
                    (if (##structure-instance-of? _e79794_ 'gerbil#AST::t)
                        _e79794_
                        (##structure gx#AST::t _e79794_ _src79784_)))))
          (if (##structure-instance-of? _datum79783_ 'gerbil#AST::t)
              _datum79783_
              (if (not _stx79782_)
                  (##structure gx#AST::t _datum79783_ _src79784_)
                  (if (gx#identifier? _stx79782_)
                      (let ((_stx79792_ (gx#stx-unwrap__0 _stx79782_)))
                        (_wrap-outer79790_
                         (if (##structure-direct-instance-of?
                              _stx79792_
                              'gx#syntax-quote::t)
                             (if _quote?79785_
                                 (_wrap-quote79788_
                                  _datum79783_
                                  (##unchecked-structure-ref
                                   _stx79792_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx79792_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum79787_
                                  _datum79783_
                                  (##unchecked-structure-ref
                                   _stx79792_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum79787_
                              _datum79783_
                              (##unchecked-structure-ref
                               _stx79792_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx79782_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx79821_ _datum79822_)
        (let* ((_src79824_ '#f) (_quote?79826_ '#t))
          (gx#datum->syntax__%
           _stx79821_
           _datum79822_
           _src79824_
           _quote?79826_))))
    (define gx#datum->syntax__1
      (lambda (_stx79828_ _datum79829_ _src79830_)
        (let ((_quote?79832_ '#t))
          (gx#datum->syntax__%
           _stx79828_
           _datum79829_
           _src79830_
           _quote?79832_))))
    (define gx#datum->syntax
      (lambda _g79953_
        (let ((_g79952_ (##length _g79953_)))
          (cond ((##fx= _g79952_ 2)
                 (apply (lambda (_stx79821_ _datum79822_)
                          (gx#datum->syntax__0 _stx79821_ _datum79822_))
                        _g79953_))
                ((##fx= _g79952_ 3)
                 (apply (lambda (_stx79828_ _datum79829_ _src79830_)
                          (gx#datum->syntax__1
                           _stx79828_
                           _datum79829_
                           _src79830_))
                        _g79953_))
                ((##fx= _g79952_ 4)
                 (apply (lambda (_stx79834_
                                 _datum79835_
                                 _src79836_
                                 _quote?79837_)
                          (gx#datum->syntax__%
                           _stx79834_
                           _datum79835_
                           _src79836_
                           _quote?79837_))
                        _g79953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g79953_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx79758_ _marks79759_)
        (let _lp79761_ ((_e79763_ _stx79758_)
                        (_marks79764_ _marks79759_)
                        (_src79765_ (gx#stx-source _stx79758_)))
          (if (##structure-direct-instance-of? _e79763_ 'gx#syntax-wrap::t)
              (_lp79761_
               (##unchecked-structure-ref _e79763_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e79763_ '3 gx#syntax-wrap::t '#f)
                _marks79764_)
               (##unchecked-structure-ref _e79763_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e79763_
                   'gx#identifier-wrap::t)
                  (if (null? _marks79764_)
                      _e79763_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e79763_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e79763_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e79763_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks79764_)))
                  (if (##structure-direct-instance-of?
                       _e79763_
                       'gx#syntax-quote::t)
                      _e79763_
                      (if (##structure-instance-of? _e79763_ 'gerbil#AST::t)
                          (_lp79761_
                           (##unchecked-structure-ref
                            _e79763_
                            '1
                            gx#AST::t
                            '#f)
                           _marks79764_
                           (##unchecked-structure-ref
                            _e79763_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e79763_)
                              (##structure
                               gx#identifier-wrap::t
                               _e79763_
                               _src79765_
                               (reverse _marks79764_))
                              (if (null? _marks79764_)
                                  _e79763_
                                  (if (pair? _e79763_)
                                      (cons (gx#stx-wrap
                                             (car _e79763_)
                                             _marks79764_)
                                            (gx#stx-wrap
                                             (cdr _e79763_)
                                             _marks79764_))
                                      (if (vector? _e79763_)
                                          (vector-map
                                           (lambda (_g7976679768_)
                                             (gx#stx-wrap
                                              _g7976679768_
                                              _marks79764_))
                                           _e79763_)
                                          (if (box? _e79763_)
                                              (box (gx#stx-wrap
                                                    (unbox _e79763_)
                                                    _marks79764_))
                                              _e79763_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx79774_)
        (let ((_marks79776_ '())) (gx#stx-unwrap__% _stx79774_ _marks79776_))))
    (define gx#stx-unwrap
      (lambda _g79955_
        (let ((_g79954_ (##length _g79955_)))
          (cond ((##fx= _g79954_ 1)
                 (apply (lambda (_stx79774_) (gx#stx-unwrap__0 _stx79774_))
                        _g79955_))
                ((##fx= _g79954_ 2)
                 (apply (lambda (_stx79778_ _marks79779_)
                          (gx#stx-unwrap__% _stx79778_ _marks79779_))
                        _g79955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g79955_))))))
    (define gx#stx-wrap
      (lambda (_stx79751_ _marks79752_)
        (foldl1 (lambda (_mark79754_ _stx79755_)
                  (gx#stx-apply-mark _stx79755_ _mark79754_))
                _stx79751_
                _marks79752_)))
    (define gx#stx-rewrap
      (lambda (_stx79745_ _marks79746_)
        (foldr1 (lambda (_mark79748_ _stx79749_)
                  (gx#stx-apply-mark _stx79749_ _mark79748_))
                _stx79745_
                _marks79746_)))
    (define gx#stx-apply-mark
      (lambda (_stx79742_ _mark79743_)
        (if (##structure-direct-instance-of? _stx79742_ 'gx#syntax-quote::t)
            _stx79742_
            (if (and (##structure-direct-instance-of?
                      _stx79742_
                      'gx#syntax-wrap::t)
                     (eq? _mark79743_
                          (##unchecked-structure-ref
                           _stx79742_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx79742_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx79742_
                 (gx#stx-source _stx79742_)
                 _mark79743_)))))
    (define gx#apply-mark
      (lambda (_mark79706_ _marks79707_)
        (let* ((_marks7970879716_ _marks79707_)
               (_else7971079724_ (lambda () (cons _mark79706_ _marks79707_)))
               (_K7971279730_
                (lambda (_rest79727_ _hd79728_)
                  (if (eq? _mark79706_ _hd79728_)
                      _rest79727_
                      (cons _mark79706_ _marks79707_)))))
          (if (##pair? _marks7970879716_)
              (let ((_hd7971379733_ (##car _marks7970879716_))
                    (_tl7971479735_ (##cdr _marks7970879716_)))
                (let* ((_hd79738_ _hd7971379733_) (_rest79740_ _tl7971479735_))
                  (_K7971279730_ _rest79740_ _hd79738_)))
              (_else7971079724_)))))
    (define gx#stx-e
      (lambda (_stx79704_)
        (if (##structure-direct-instance-of? _stx79704_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx79704_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx79704_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx79704_ '1 gx#AST::t '#f)
                _stx79704_))))
    (define gx#stx-source
      (lambda (_stx79702_)
        (if (##structure-instance-of? _stx79702_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx79702_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx79696_ _src79697_)
        (if (or (##structure-instance-of? _stx79696_ 'gerbil#AST::t)
                (not _src79697_))
            _stx79696_
            (##structure gx#AST::t _stx79696_ _src79697_))))
    (define gx#stx-datum?
      (lambda (_stx79694_) (gx#self-quoting? (gx#stx-e _stx79694_))))
    (define gx#self-quoting?
      (lambda (_x79677_)
        (let ((_$e79679_ (immediate? _x79677_)))
          (if _$e79679_
              _$e79679_
              (let ((_$e79682_ (number? _x79677_)))
                (if _$e79682_
                    _$e79682_
                    (let ((_$e79685_ (keyword? _x79677_)))
                      (if _$e79685_
                          _$e79685_
                          (let ((_$e79688_ (string? _x79677_)))
                            (if _$e79688_
                                _$e79688_
                                (let ((_$e79691_ (vector? _x79677_)))
                                  (if _$e79691_
                                      _$e79691_
                                      (u8vector? _x79677_)))))))))))))
    (define gx#stx-boolean? (lambda (_e79675_) (boolean? (gx#stx-e _e79675_))))
    (define gx#stx-keyword? (lambda (_e79673_) (keyword? (gx#stx-e _e79673_))))
    (define gx#stx-char? (lambda (_e79671_) (char? (gx#stx-e _e79671_))))
    (define gx#stx-number? (lambda (_e79669_) (number? (gx#stx-e _e79669_))))
    (define gx#stx-fixnum? (lambda (_e79667_) (fixnum? (gx#stx-e _e79667_))))
    (define gx#stx-string? (lambda (_e79665_) (string? (gx#stx-e _e79665_))))
    (define gx#stx-null? (lambda (_e79663_) (null? (gx#stx-e _e79663_))))
    (define gx#stx-pair? (lambda (_e79661_) (pair? (gx#stx-e _e79661_))))
    (define gx#stx-list?
      (lambda (_e79623_)
        (let* ((_g7962479633_ (gx#stx-e _e79623_))
               (_E7962779637_
                (lambda () (error '"No clause matching" _g7962479633_))))
          (let ((_K7962979653_
                 (lambda (_rest79651_) (gx#stx-list? _rest79651_)))
                (_K7962879643_ (lambda (_tail79641_) (null? _tail79641_))))
            (if (##pair? _g7962479633_)
                (let* ((_tl7963179656_ (##cdr _g7962479633_))
                       (_rest79659_ _tl7963179656_))
                  (gx#stx-list? _rest79659_))
                (let ((_tail79646_ _g7962479633_)) (null? _tail79646_)))))))
    (define gx#stx-pair/null?
      (lambda (_e79616_)
        (let* ((_e79618_ (gx#stx-e _e79616_)) (_$e79620_ (pair? _e79618_)))
          (if _$e79620_ _$e79620_ (null? _e79618_)))))
    (define gx#stx-vector? (lambda (_e79614_) (vector? (gx#stx-e _e79614_))))
    (define gx#stx-box? (lambda (_e79612_) (box? (gx#stx-e _e79612_))))
    (define gx#stx-eq?
      (lambda (_x79609_ _y79610_)
        (eq? (gx#stx-e _x79609_) (gx#stx-e _y79610_))))
    (define gx#stx-eqv?
      (lambda (_x79606_ _y79607_)
        (eqv? (gx#stx-e _x79606_) (gx#stx-e _y79607_))))
    (define gx#stx-equal?
      (lambda (_x79603_ _y79604_)
        (equal? (gx#stx-e _x79603_) (gx#stx-e _y79604_))))
    (define gx#stx-false? (lambda (_x79601_) (not (gx#stx-e _x79601_))))
    (define gx#stx-identifier
      (lambda (_template79598_ . _args79599_)
        (gx#datum->syntax__1
         _template79598_
         (apply make-symbol (gx#syntax->datum _args79599_))
         (gx#stx-source _template79598_))))
    (define gx#stx-identifier-marks
      (lambda (_stx79596_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx79596_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx79594_)
        (if (##structure-direct-instance-of? _stx79594_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx79594_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx79594_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx79594_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx79594_)))))
    (define gx#stx-identifier-context
      (lambda (_stx79590_)
        (let ((_stx79592_ (gx#stx-unwrap__0 _stx79590_)))
          (if (gx#identifier-quote? _stx79592_)
              (##unchecked-structure-ref _stx79592_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx79545_)
        (let* ((_g7954679556_ (gx#stx-e _stx79545_))
               (_else7954979564_ (lambda () '#f)))
          (let ((_K7955279578_
                 (lambda (_rest79575_ _hd79576_)
                   (if (gx#identifier? _hd79576_)
                       (gx#identifier-list? _rest79575_)
                       '#f)))
                (_K7955179569_ (lambda () '#t)))
            (let ((_try-match7954879572_
                   (lambda ()
                     (if (##null? _g7954679556_)
                         (_K7955179569_)
                         (_else7954979564_)))))
              (if (##pair? _g7954679556_)
                  (let ((_tl7955479583_ (##cdr _g7954679556_))
                        (_hd7955379581_ (##car _g7954679556_)))
                    (let ((_hd79586_ _hd7955379581_)
                          (_rest79588_ _tl7955479583_))
                      (_K7955279578_ _rest79588_ _hd79586_)))
                  (_try-match7954879572_)))))))
    (define gx#genident__%
      (lambda (_e79522_ _src79523_)
        (gx#stx-wrap-source
         (gensym (let ((_e79525_ (gx#stx-e _e79522_)))
                   (if (interned-symbol? _e79525_) _e79525_ 'g)))
         (let ((_$e79527_ (gx#stx-source _e79522_)))
           (if _$e79527_ _$e79527_ _src79523_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e79534_ 'g) (_src79536_ '#f))
          (gx#genident__% _e79534_ _src79536_))))
    (define gx#genident__1
      (lambda (_e79538_)
        (let ((_src79540_ '#f)) (gx#genident__% _e79538_ _src79540_))))
    (define gx#genident
      (lambda _g79957_
        (let ((_g79956_ (##length _g79957_)))
          (cond ((##fx= _g79956_ 0)
                 (apply (lambda () (gx#genident__0)) _g79957_))
                ((##fx= _g79956_ 1)
                 (apply (lambda (_e79538_) (gx#genident__1 _e79538_))
                        _g79957_))
                ((##fx= _g79956_ 2)
                 (apply (lambda (_e79542_ _src79543_)
                          (gx#genident__% _e79542_ _src79543_))
                        _g79957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g79957_))))))
    (define gx#gentemps
      (lambda (_stx-lst79519_) (gx#stx-map1 gx#genident _stx-lst79519_)))
    (define gx#syntax->list
      (lambda (_stx79517_) (gx#stx-map1 values _stx79517_)))
    (define gx#stx-car
      (lambda (_stx79514_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx79514_)))))
    (define gx#stx-cdr
      (lambda (_stx79511_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx79511_)))))
    (define gx#stx-length
      (lambda (_stx79476_)
        (let _lp79478_ ((_rest79480_ _stx79476_) (_n79481_ '0))
          (let* ((_g7948279490_ (gx#stx-e _rest79480_))
                 (_else7948479498_ (lambda () _n79481_))
                 (_K7948679503_
                  (lambda (_rest79501_)
                    (_lp79478_ _rest79501_ (fx+ _n79481_ '1)))))
            (if (##pair? _g7948279490_)
                (let* ((_tl7948879506_ (##cdr _g7948279490_))
                       (_rest79509_ _tl7948879506_))
                  (_K7948679503_ _rest79509_))
                (_else7948479498_))))))
    (define gx#stx-for-each
      (lambda _g79959_
        (let ((_g79958_ (##length _g79959_)))
          (cond ((##fx= _g79958_ 2)
                 (apply (lambda (_f79469_ _stx79470_)
                          (gx#stx-for-each1 _f79469_ _stx79470_))
                        _g79959_))
                ((##fx= _g79958_ 3)
                 (apply (lambda (_f79472_ _xstx79473_ _ystx79474_)
                          (gx#stx-for-each2 _f79472_ _xstx79473_ _ystx79474_))
                        _g79959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g79959_))))))
    (define gx#stx-for-each1
      (lambda (_f79419_ _stx79420_)
        (if (procedure? _f79419_)
            '#!void
            (error '"expected procedure" _f79419_))
        (let _lp79422_ ((_rest79424_ _stx79420_))
          (let* ((_g7942579435_ (gx#syntax-e _rest79424_))
                 (_else7942879443_ (lambda () (_f79419_ _rest79424_))))
            (let ((_K7943179457_
                   (lambda (_rest79454_ _hd79455_)
                     (_f79419_ _hd79455_)
                     (_lp79422_ _rest79454_)))
                  (_K7943079448_ (lambda () '#!void)))
              (let ((_try-match7942779451_
                     (lambda ()
                       (if (##null? _g7942579435_)
                           (_K7943079448_)
                           (_else7942879443_)))))
                (if (##pair? _g7942579435_)
                    (let ((_tl7943379462_ (##cdr _g7942579435_))
                          (_hd7943279460_ (##car _g7942579435_)))
                      (let ((_hd79465_ _hd7943279460_)
                            (_rest79467_ _tl7943379462_))
                        (_K7943179457_ _rest79467_ _hd79465_)))
                    (_try-match7942779451_))))))))
    (define gx#stx-for-each2
      (lambda (_f79324_ _xstx79325_ _ystx79326_)
        (if (procedure? _f79324_)
            '#!void
            (error '"expected procedure" _f79324_))
        (let _lp79328_ ((_xrest79330_ _xstx79325_) (_yrest79331_ _ystx79326_))
          (let* ((_g7933279342_ (gx#syntax-e _xrest79330_))
                 (_else7933579350_ (lambda () '#!void)))
            (let ((_K7933879407_
                   (lambda (_xrest79376_ _xhd79377_)
                     (let* ((_g7937879385_ (gx#syntax-e _yrest79331_))
                            (_E7938079389_
                             (lambda ()
                               (error '"No clause matching" _g7937879385_)))
                            (_K7938179395_
                             (lambda (_yrest79392_ _yhd79393_)
                               (_f79324_ _xhd79377_ _yhd79393_)
                               (_lp79328_ _xrest79376_ _yrest79392_))))
                       (if (##pair? _g7937879385_)
                           (let ((_hd7938279398_ (##car _g7937879385_))
                                 (_tl7938379400_ (##cdr _g7937879385_)))
                             (let* ((_yhd79403_ _hd7938279398_)
                                    (_yrest79405_ _tl7938379400_))
                               (_K7938179395_ _yrest79405_ _yhd79403_)))
                           (_E7938079389_)))))
                  (_K7933779370_
                   (lambda ()
                     (let* ((_yrest7935479359_ _yrest79331_)
                            (_E7935679363_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7935479359_)))
                            (_K7935779367_
                             (lambda () (_f79324_ _xrest79330_ _yrest79331_))))
                       (if (not (gx#stx-null? _yrest7935479359_))
                           (_K7935779367_)
                           (_E7935679363_))))))
              (let ((_try-match7933479373_
                     (lambda ()
                       (if (not (null? _g7933279342_))
                           (_K7933779370_)
                           (_else7933579350_)))))
                (if (##pair? _g7933279342_)
                    (let ((_tl7934079412_ (##cdr _g7933279342_))
                          (_hd7933979410_ (##car _g7933279342_)))
                      (let ((_xhd79415_ _hd7933979410_)
                            (_xrest79417_ _tl7934079412_))
                        (_K7933879407_ _xrest79417_ _xhd79415_)))
                    (_try-match7933479373_))))))))
    (define gx#stx-map
      (lambda _g79961_
        (let ((_g79960_ (##length _g79961_)))
          (cond ((##fx= _g79960_ 2)
                 (apply (lambda (_f79317_ _stx79318_)
                          (gx#stx-map1 _f79317_ _stx79318_))
                        _g79961_))
                ((##fx= _g79960_ 3)
                 (apply (lambda (_f79320_ _xstx79321_ _ystx79322_)
                          (gx#stx-map2 _f79320_ _xstx79321_ _ystx79322_))
                        _g79961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g79961_))))))
    (define gx#stx-map1
      (lambda (_f79267_ _stx79268_)
        (if (procedure? _f79267_)
            '#!void
            (error '"expected procedure" _f79267_))
        (let _recur79270_ ((_rest79272_ _stx79268_))
          (let* ((_g7927379283_ (gx#syntax-e _rest79272_))
                 (_else7927679291_ (lambda () (_f79267_ _rest79272_))))
            (let ((_K7927979305_
                   (lambda (_rest79302_ _hd79303_)
                     (cons (_f79267_ _hd79303_) (_recur79270_ _rest79302_))))
                  (_K7927879296_ (lambda () '())))
              (let ((_try-match7927579299_
                     (lambda ()
                       (if (##null? _g7927379283_)
                           (_K7927879296_)
                           (_else7927679291_)))))
                (if (##pair? _g7927379283_)
                    (let ((_tl7928179310_ (##cdr _g7927379283_))
                          (_hd7928079308_ (##car _g7927379283_)))
                      (let ((_hd79313_ _hd7928079308_)
                            (_rest79315_ _tl7928179310_))
                        (_K7927979305_ _rest79315_ _hd79313_)))
                    (_try-match7927579299_))))))))
    (define gx#stx-map2
      (lambda (_f79172_ _xstx79173_ _ystx79174_)
        (if (procedure? _f79172_)
            '#!void
            (error '"expected procedure" _f79172_))
        (let _recur79176_ ((_xrest79178_ _xstx79173_)
                           (_yrest79179_ _ystx79174_))
          (let* ((_g7918079190_ (gx#syntax-e _xrest79178_))
                 (_else7918379198_ (lambda () '())))
            (let ((_K7918679255_
                   (lambda (_xrest79224_ _xhd79225_)
                     (let* ((_g7922679233_ (gx#syntax-e _yrest79179_))
                            (_E7922879237_
                             (lambda ()
                               (error '"No clause matching" _g7922679233_)))
                            (_K7922979243_
                             (lambda (_yrest79240_ _yhd79241_)
                               (cons (_f79172_ _xhd79225_ _yhd79241_)
                                     (_recur79176_
                                      _xrest79224_
                                      _yrest79240_)))))
                       (if (##pair? _g7922679233_)
                           (let ((_hd7923079246_ (##car _g7922679233_))
                                 (_tl7923179248_ (##cdr _g7922679233_)))
                             (let* ((_yhd79251_ _hd7923079246_)
                                    (_yrest79253_ _tl7923179248_))
                               (_K7922979243_ _yrest79253_ _yhd79251_)))
                           (_E7922879237_)))))
                  (_K7918579218_
                   (lambda ()
                     (let* ((_yrest7920279207_ _yrest79179_)
                            (_E7920479211_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7920279207_)))
                            (_K7920579215_
                             (lambda () (_f79172_ _xrest79178_ _yrest79179_))))
                       (if (not (gx#stx-null? _yrest7920279207_))
                           (_K7920579215_)
                           (_E7920479211_))))))
              (let ((_try-match7918279221_
                     (lambda ()
                       (if (not (null? _g7918079190_))
                           (_K7918579218_)
                           (_else7918379198_)))))
                (if (##pair? _g7918079190_)
                    (let ((_tl7918879260_ (##cdr _g7918079190_))
                          (_hd7918779258_ (##car _g7918079190_)))
                      (let ((_xhd79263_ _hd7918779258_)
                            (_xrest79265_ _tl7918879260_))
                        (_K7918679255_ _xrest79265_ _xhd79263_)))
                    (_try-match7918279221_))))))))
    (define gx#stx-andmap
      (lambda (_f79122_ _stx79123_)
        (if (procedure? _f79122_)
            '#!void
            (error '"expected procedure" _f79122_))
        (let _lp79125_ ((_rest79127_ _stx79123_))
          (let* ((_g7912879138_ (gx#syntax-e _rest79127_))
                 (_else7913179146_ (lambda () (_f79122_ _rest79127_))))
            (let ((_K7913479160_
                   (lambda (_rest79157_ _hd79158_)
                     (if (_f79122_ _hd79158_) (_lp79125_ _rest79157_) '#f)))
                  (_K7913379151_ (lambda () '#t)))
              (let ((_try-match7913079154_
                     (lambda ()
                       (if (##null? _g7912879138_)
                           (_K7913379151_)
                           (_else7913179146_)))))
                (if (##pair? _g7912879138_)
                    (let ((_tl7913679165_ (##cdr _g7912879138_))
                          (_hd7913579163_ (##car _g7912879138_)))
                      (let ((_hd79168_ _hd7913579163_)
                            (_rest79170_ _tl7913679165_))
                        (_K7913479160_ _rest79170_ _hd79168_)))
                    (_try-match7913079154_))))))))
    (define gx#stx-ormap
      (lambda (_f79069_ _stx79070_)
        (if (procedure? _f79069_)
            '#!void
            (error '"expected procedure" _f79069_))
        (let _lp79072_ ((_rest79074_ _stx79070_))
          (let* ((_g7907579085_ (gx#syntax-e _rest79074_))
                 (_else7907879093_ (lambda () (_f79069_ _rest79074_))))
            (let ((_K7908179110_
                   (lambda (_rest79104_ _hd79105_)
                     (let ((_$e79107_ (_f79069_ _hd79105_)))
                       (if _$e79107_ _$e79107_ (_lp79072_ _rest79104_)))))
                  (_K7908079098_ (lambda () '#f)))
              (let ((_try-match7907779101_
                     (lambda ()
                       (if (##null? _g7907579085_)
                           (_K7908079098_)
                           (_else7907879093_)))))
                (if (##pair? _g7907579085_)
                    (let ((_tl7908379115_ (##cdr _g7907579085_))
                          (_hd7908279113_ (##car _g7907579085_)))
                      (let ((_hd79118_ _hd7908279113_)
                            (_rest79120_ _tl7908379115_))
                        (_K7908179110_ _rest79120_ _hd79118_)))
                    (_try-match7907779101_))))))))
    (define gx#stx-foldl
      (lambda (_f79017_ _iv79018_ _stx79019_)
        (if (procedure? _f79017_)
            '#!void
            (error '"expected procedure" _f79017_))
        (let _lp79021_ ((_r79023_ _iv79018_) (_rest79024_ _stx79019_))
          (let* ((_g7902579035_ (gx#syntax-e _rest79024_))
                 (_else7902879043_
                  (lambda () (_f79017_ _rest79024_ _r79023_))))
            (let ((_K7903179057_
                   (lambda (_rest79054_ _hd79055_)
                     (_lp79021_ (_f79017_ _hd79055_ _r79023_) _rest79054_)))
                  (_K7903079048_ (lambda () _r79023_)))
              (let ((_try-match7902779051_
                     (lambda ()
                       (if (##null? _g7902579035_)
                           (_K7903079048_)
                           (_else7902879043_)))))
                (if (##pair? _g7902579035_)
                    (let ((_tl7903379062_ (##cdr _g7902579035_))
                          (_hd7903279060_ (##car _g7902579035_)))
                      (let ((_hd79065_ _hd7903279060_)
                            (_rest79067_ _tl7903379062_))
                        (_K7903179057_ _rest79067_ _hd79065_)))
                    (_try-match7902779051_))))))))
    (define gx#stx-foldr
      (lambda (_f78966_ _iv78967_ _stx78968_)
        (if (procedure? _f78966_)
            '#!void
            (error '"expected procedure" _f78966_))
        (let _recur78970_ ((_rest78972_ _stx78968_))
          (let* ((_g7897378983_ (gx#syntax-e _rest78972_))
                 (_else7897678991_
                  (lambda () (_f78966_ _rest78972_ _iv78967_))))
            (let ((_K7897979005_
                   (lambda (_rest79002_ _hd79003_)
                     (_f78966_ _hd79003_ (_recur78970_ _rest79002_))))
                  (_K7897878996_ (lambda () _iv78967_)))
              (let ((_try-match7897578999_
                     (lambda ()
                       (if (##null? _g7897378983_)
                           (_K7897878996_)
                           (_else7897678991_)))))
                (if (##pair? _g7897378983_)
                    (let ((_tl7898179010_ (##cdr _g7897378983_))
                          (_hd7898079008_ (##car _g7897378983_)))
                      (let ((_hd79013_ _hd7898079008_)
                            (_rest79015_ _tl7898179010_))
                        (_K7897979005_ _rest79015_ _hd79013_)))
                    (_try-match7897578999_))))))))
    (define gx#stx-reverse
      (lambda (_stx78964_) (gx#stx-foldl cons '() _stx78964_)))
    (define gx#stx-last
      (lambda (_stx78925_)
        (let _lp78927_ ((_rest78929_ _stx78925_))
          (let* ((_g7893078938_ (gx#syntax-e _rest78929_))
                 (_else7893278946_ (lambda () _rest78929_))
                 (_K7893478952_
                  (lambda (_rest78949_ _hd78950_)
                    (if (gx#stx-null? _rest78949_)
                        _hd78950_
                        (_lp78927_ _rest78949_)))))
            (if (##pair? _g7893078938_)
                (let ((_hd7893578955_ (##car _g7893078938_))
                      (_tl7893678957_ (##cdr _g7893078938_)))
                  (let* ((_hd78960_ _hd7893578955_)
                         (_rest78962_ _tl7893678957_))
                    (_K7893478952_ _rest78962_ _hd78960_)))
                (_else7893278946_))))))
    (define gx#stx-last-pair
      (lambda (_stx78896_)
        (let _lp78898_ ((_hd78900_ _stx78896_))
          (let* ((_g7890178908_ (gx#syntax-e _hd78900_))
                 (_E7890378912_
                  (lambda () (error '"No clause matching" _g7890178908_)))
                 (_K7890478917_
                  (lambda (_rest78915_)
                    (if (gx#stx-pair? _rest78915_)
                        (_lp78898_ _rest78915_)
                        _hd78900_))))
            (if (##pair? _g7890178908_)
                (let* ((_tl7890678920_ (##cdr _g7890178908_))
                       (_rest78923_ _tl7890678920_))
                  (_K7890478917_ _rest78923_))
                (_E7890378912_))))))
    (define gx#stx-list-tail
      (lambda (_stx78865_ _k78866_)
        (let _lp78868_ ((_rest78870_ _stx78865_) (_k78871_ _k78866_))
          (if (fxpositive? _k78871_)
              (let* ((_g7887278879_ (gx#syntax-e _rest78870_))
                     (_E7887478883_
                      (lambda () (error '"No clause matching" _g7887278879_)))
                     (_K7887578888_
                      (lambda (_rest78886_)
                        (_lp78868_ _rest78886_ (fx- _k78871_ '1)))))
                (if (##pair? _g7887278879_)
                    (let* ((_tl7887778891_ (##cdr _g7887278879_))
                           (_rest78894_ _tl7887778891_))
                      (_K7887578888_ _rest78894_))
                    (_E7887478883_)))
              _rest78870_))))
    (define gx#stx-list-ref
      (lambda (_stx78862_ _k78863_)
        (gx#stx-car (gx#stx-list-tail _stx78862_ _k78863_))))
    (define gx#stx-plist?__%
      (lambda (_stx78774_ _key?78775_)
        (if (procedure? _key?78775_)
            '#!void
            (error '"expected procedure" _key?78775_))
        (let _lp78777_ ((_rest78779_ _stx78774_))
          (let* ((_g7878078790_ (gx#stx-e _rest78779_))
                 (_else7878378798_ (lambda () '#f)))
            (let ((_K7878678840_
                   (lambda (_rest78809_ _hd78810_)
                     (if (_key?78775_ _hd78810_)
                         (let* ((_g7881178819_ (gx#stx-e _rest78809_))
                                (_else7881378827_ (lambda () '#f))
                                (_K7881578832_
                                 (lambda (_rest78830_)
                                   (_lp78777_ _rest78830_))))
                           (if (##pair? _g7881178819_)
                               (let* ((_tl7881778835_ (##cdr _g7881178819_))
                                      (_rest78838_ _tl7881778835_))
                                 (_lp78777_ _rest78838_))
                               (_else7881378827_)))
                         '#f)))
                  (_K7878578803_ (lambda () '#t)))
              (let ((_try-match7878278806_
                     (lambda ()
                       (if (##null? _g7878078790_)
                           (_K7878578803_)
                           (_else7878378798_)))))
                (if (##pair? _g7878078790_)
                    (let ((_tl7878878845_ (##cdr _g7878078790_))
                          (_hd7878778843_ (##car _g7878078790_)))
                      (let ((_hd78848_ _hd7878778843_)
                            (_rest78850_ _tl7878878845_))
                        (_K7878678840_ _rest78850_ _hd78848_)))
                    (_try-match7878278806_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx78855_)
        (let ((_key?78857_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx78855_ _key?78857_))))
    (define gx#stx-plist?
      (lambda _g79963_
        (let ((_g79962_ (##length _g79963_)))
          (cond ((##fx= _g79962_ 1)
                 (apply (lambda (_stx78855_) (gx#stx-plist?__0 _stx78855_))
                        _g79963_))
                ((##fx= _g79962_ 2)
                 (apply (lambda (_stx78859_ _key?78860_)
                          (gx#stx-plist?__% _stx78859_ _key?78860_))
                        _g79963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g79963_))))))
    (define gx#stx-getq__%
      (lambda (_key78692_ _stx78693_ _key=?78694_)
        (if (procedure? _key=?78694_)
            '#!void
            (error '"expected procedure" _key=?78694_))
        (let _lp78696_ ((_rest78698_ _stx78693_))
          (let* ((_g7869978707_ (gx#syntax-e _rest78698_))
                 (_else7870178715_ (lambda () '#f))
                 (_K7870378749_
                  (lambda (_rest78718_ _hd78719_)
                    (let* ((_g7872078727_ (gx#syntax-e _rest78718_))
                           (_E7872278731_
                            (lambda ()
                              (error '"No clause matching" _g7872078727_)))
                           (_K7872378737_
                            (lambda (_rest78734_ _val78735_)
                              (if (_key=?78694_ _hd78719_ _key78692_)
                                  _val78735_
                                  (_lp78696_ _rest78734_)))))
                      (if (##pair? _g7872078727_)
                          (let ((_hd7872478740_ (##car _g7872078727_))
                                (_tl7872578742_ (##cdr _g7872078727_)))
                            (let* ((_val78745_ _hd7872478740_)
                                   (_rest78747_ _tl7872578742_))
                              (_K7872378737_ _rest78747_ _val78745_)))
                          (_E7872278731_))))))
            (if (##pair? _g7869978707_)
                (let ((_hd7870478752_ (##car _g7869978707_))
                      (_tl7870578754_ (##cdr _g7869978707_)))
                  (let* ((_hd78757_ _hd7870478752_)
                         (_rest78759_ _tl7870578754_))
                    (_K7870378749_ _rest78759_ _hd78757_)))
                (_else7870178715_))))))
    (define gx#stx-getq__0
      (lambda (_key78764_ _stx78765_)
        (let ((_key=?78767_ gx#stx-eq?))
          (gx#stx-getq__% _key78764_ _stx78765_ _key=?78767_))))
    (define gx#stx-getq
      (lambda _g79965_
        (let ((_g79964_ (##length _g79965_)))
          (cond ((##fx= _g79964_ 2)
                 (apply (lambda (_key78764_ _stx78765_)
                          (gx#stx-getq__0 _key78764_ _stx78765_))
                        _g79965_))
                ((##fx= _g79964_ 3)
                 (apply (lambda (_key78769_ _stx78770_ _key=?78771_)
                          (gx#stx-getq__% _key78769_ _stx78770_ _key=?78771_))
                        _g79965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g79965_))))))))
