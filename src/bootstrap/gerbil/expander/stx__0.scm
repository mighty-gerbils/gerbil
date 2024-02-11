(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707674930)
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
      (lambda _$args136952_
        (apply make-instance gx#identifier-wrap::t _$args136952_)))
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
      (lambda _$args136949_
        (apply make-instance gx#syntax-wrap::t _$args136949_)))
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
      (lambda _$args136946_
        (apply make-instance gx#syntax-quote::t _$args136946_)))
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
      (lambda (_stx136944_) (symbol? (gx#stx-e _stx136944_))))
    (define gx#identifier-quote?
      (lambda (_stx136942_)
        (if (##structure-direct-instance-of? _stx136942_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136942_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136940_)
        (if (##structure-direct-instance-of? _stx136940_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136940_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136940_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136938_)
        (if (##structure-direct-instance-of? _stx136938_ 'gx#syntax-quote::t)
            _stx136938_
            (if (##structure-direct-instance-of?
                 _stx136938_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136938_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136921_)
        (if (##structure-direct-instance-of? _stx136921_ 'gx#syntax-wrap::t)
            (let _lp136923_ ((_e136925_
                              (##unchecked-structure-ref
                               _stx136921_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136926_
                              (cons (##unchecked-structure-ref
                                     _stx136921_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136925_)
                  (let ((_$e136928_ (##type-id (##structure-type _e136925_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136928_)
                        (_lp136923_
                         (##unchecked-structure-ref _e136925_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136925_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136926_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136928_)
                                (eq? 'gx#identifier-wrap::t _$e136928_))
                            (##unchecked-structure-ref
                             _e136925_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136928_)
                                (_lp136923_
                                 (##unchecked-structure-ref
                                  _e136925_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136926_)
                                _e136925_))))
                  (if (null? _marks136926_)
                      _e136925_
                      (if (pair? _e136925_)
                          (cons (gx#stx-wrap (car _e136925_) _marks136926_)
                                (gx#stx-wrap (cdr _e136925_) _marks136926_))
                          (if (vector? _e136925_)
                              (vector-map
                               (lambda (_g136933136935_)
                                 (gx#stx-wrap _g136933136935_ _marks136926_))
                               _e136925_)
                              (if (box? _e136925_)
                                  (box (gx#stx-wrap
                                        (unbox _e136925_)
                                        _marks136926_))
                                  _e136925_))))))
            (if (##structure-instance-of? _stx136921_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136921_ '1 gx#AST::t '#f)
                _stx136921_))))
    (define gx#syntax->datum
      (lambda (_stx136919_)
        (if (##structure-instance-of? _stx136919_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136919_ '1 gx#AST::t '#f))
            (if (pair? _stx136919_)
                (cons (gx#syntax->datum (car _stx136919_))
                      (gx#syntax->datum (cdr _stx136919_)))
                (if (vector? _stx136919_)
                    (vector-map gx#syntax->datum _stx136919_)
                    (if (box? _stx136919_)
                        (box (gx#syntax->datum (unbox _stx136919_)))
                        _stx136919_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136862_ _datum136863_ _src136864_ _quote?136865_)
        (letrec ((_wrap-datum136867_
                  (lambda (_e136891_ _marks136892_)
                    (_wrap-inner136869_
                     _e136891_
                     (lambda (_g136893136895_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136893136895_
                        _src136864_
                        _marks136892_)))))
                 (_wrap-quote136868_
                  (lambda (_e136883_ _ctx136884_ _marks136885_)
                    (_wrap-inner136869_
                     _e136883_
                     (lambda (_g136886136888_)
                       (##structure
                        gx#syntax-quote::t
                        _g136886136888_
                        _src136864_
                        _ctx136884_
                        _marks136885_)))))
                 (_wrap-inner136869_
                  (lambda (_e136876_ _wrap-e136877_)
                    (let _recur136879_ ((_e136881_ _e136876_))
                      (if (symbol? _e136881_)
                          (_wrap-e136877_ _e136881_)
                          (if (pair? _e136881_)
                              (cons (_recur136879_ (car _e136881_))
                                    (_recur136879_ (cdr _e136881_)))
                              (if (vector? _e136881_)
                                  (vector-map _recur136879_ _e136881_)
                                  (if (box? _e136881_)
                                      (box (_recur136879_ (unbox _e136881_)))
                                      _e136881_)))))))
                 (_wrap-outer136870_
                  (lambda (_e136874_)
                    (if (##structure-instance-of? _e136874_ 'gerbil#AST::t)
                        _e136874_
                        (##structure gx#AST::t _e136874_ _src136864_)))))
          (if (##structure-instance-of? _datum136863_ 'gerbil#AST::t)
              _datum136863_
              (if (not _stx136862_)
                  (##structure gx#AST::t _datum136863_ _src136864_)
                  (if (gx#identifier? _stx136862_)
                      (let ((_stx136872_ (gx#stx-unwrap__0 _stx136862_)))
                        (_wrap-outer136870_
                         (if (##structure-direct-instance-of?
                              _stx136872_
                              'gx#syntax-quote::t)
                             (if _quote?136865_
                                 (_wrap-quote136868_
                                  _datum136863_
                                  (##unchecked-structure-ref
                                   _stx136872_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136872_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136867_
                                  _datum136863_
                                  (##unchecked-structure-ref
                                   _stx136872_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136867_
                              _datum136863_
                              (##unchecked-structure-ref
                               _stx136872_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136862_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136901_ _datum136902_)
        (let* ((_src136904_ '#f) (_quote?136906_ '#t))
          (gx#datum->syntax__%
           _stx136901_
           _datum136902_
           _src136904_
           _quote?136906_))))
    (define gx#datum->syntax__1
      (lambda (_stx136908_ _datum136909_ _src136910_)
        (let ((_quote?136912_ '#t))
          (gx#datum->syntax__%
           _stx136908_
           _datum136909_
           _src136910_
           _quote?136912_))))
    (define gx#datum->syntax
      (lambda _g141601_
        (let ((_g141600_ (##length _g141601_)))
          (cond ((##fx= _g141600_ 2)
                 (apply (lambda (_stx136901_ _datum136902_)
                          (gx#datum->syntax__0 _stx136901_ _datum136902_))
                        _g141601_))
                ((##fx= _g141600_ 3)
                 (apply (lambda (_stx136908_ _datum136909_ _src136910_)
                          (gx#datum->syntax__1
                           _stx136908_
                           _datum136909_
                           _src136910_))
                        _g141601_))
                ((##fx= _g141600_ 4)
                 (apply (lambda (_stx136914_
                                 _datum136915_
                                 _src136916_
                                 _quote?136917_)
                          (gx#datum->syntax__%
                           _stx136914_
                           _datum136915_
                           _src136916_
                           _quote?136917_))
                        _g141601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g141601_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136838_ _marks136839_)
        (let _lp136841_ ((_e136843_ _stx136838_)
                         (_marks136844_ _marks136839_)
                         (_src136845_ (gx#stx-source _stx136838_)))
          (if (##structure-direct-instance-of? _e136843_ 'gx#syntax-wrap::t)
              (_lp136841_
               (##unchecked-structure-ref _e136843_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136843_ '3 gx#syntax-wrap::t '#f)
                _marks136844_)
               (##unchecked-structure-ref _e136843_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136843_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136844_)
                      _e136843_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136843_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136843_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136843_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136844_)))
                  (if (##structure-direct-instance-of?
                       _e136843_
                       'gx#syntax-quote::t)
                      _e136843_
                      (if (##structure-instance-of? _e136843_ 'gerbil#AST::t)
                          (_lp136841_
                           (##unchecked-structure-ref
                            _e136843_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136844_
                           (##unchecked-structure-ref
                            _e136843_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136843_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136843_
                               _src136845_
                               (reverse _marks136844_))
                              (if (null? _marks136844_)
                                  _e136843_
                                  (if (pair? _e136843_)
                                      (cons (gx#stx-wrap
                                             (car _e136843_)
                                             _marks136844_)
                                            (gx#stx-wrap
                                             (cdr _e136843_)
                                             _marks136844_))
                                      (if (vector? _e136843_)
                                          (vector-map
                                           (lambda (_g136846136848_)
                                             (gx#stx-wrap
                                              _g136846136848_
                                              _marks136844_))
                                           _e136843_)
                                          (if (box? _e136843_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136843_)
                                                    _marks136844_))
                                              _e136843_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136854_)
        (let ((_marks136856_ '()))
          (gx#stx-unwrap__% _stx136854_ _marks136856_))))
    (define gx#stx-unwrap
      (lambda _g141603_
        (let ((_g141602_ (##length _g141603_)))
          (cond ((##fx= _g141602_ 1)
                 (apply (lambda (_stx136854_) (gx#stx-unwrap__0 _stx136854_))
                        _g141603_))
                ((##fx= _g141602_ 2)
                 (apply (lambda (_stx136858_ _marks136859_)
                          (gx#stx-unwrap__% _stx136858_ _marks136859_))
                        _g141603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g141603_))))))
    (define gx#stx-wrap
      (lambda (_stx136831_ _marks136832_)
        (foldl1 (lambda (_mark136834_ _stx136835_)
                  (gx#stx-apply-mark _stx136835_ _mark136834_))
                _stx136831_
                _marks136832_)))
    (define gx#stx-rewrap
      (lambda (_stx136825_ _marks136826_)
        (foldr1 (lambda (_mark136828_ _stx136829_)
                  (gx#stx-apply-mark _stx136829_ _mark136828_))
                _stx136825_
                _marks136826_)))
    (define gx#stx-apply-mark
      (lambda (_stx136822_ _mark136823_)
        (if (##structure-direct-instance-of? _stx136822_ 'gx#syntax-quote::t)
            _stx136822_
            (if (and (##structure-direct-instance-of?
                      _stx136822_
                      'gx#syntax-wrap::t)
                     (eq? _mark136823_
                          (##unchecked-structure-ref
                           _stx136822_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136822_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136822_
                 (gx#stx-source _stx136822_)
                 _mark136823_)))))
    (define gx#apply-mark
      (lambda (_mark136786_ _marks136787_)
        (let* ((_marks136788136796_ _marks136787_)
               (_else136790136804_
                (lambda () (cons _mark136786_ _marks136787_)))
               (_K136792136810_
                (lambda (_rest136807_ _hd136808_)
                  (if (eq? _mark136786_ _hd136808_)
                      _rest136807_
                      (cons _mark136786_ _marks136787_)))))
          (if (##pair? _marks136788136796_)
              (let ((_hd136793136813_ (##car _marks136788136796_))
                    (_tl136794136815_ (##cdr _marks136788136796_)))
                (let* ((_hd136818_ _hd136793136813_)
                       (_rest136820_ _tl136794136815_))
                  (_K136792136810_ _rest136820_ _hd136818_)))
              (_else136790136804_)))))
    (define gx#stx-e
      (lambda (_stx136784_)
        (if (##structure-direct-instance-of? _stx136784_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136784_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136784_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136784_ '1 gx#AST::t '#f)
                _stx136784_))))
    (define gx#stx-source
      (lambda (_stx136782_)
        (if (##structure-instance-of? _stx136782_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136782_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136776_ _src136777_)
        (if (or (##structure-instance-of? _stx136776_ 'gerbil#AST::t)
                (not _src136777_))
            _stx136776_
            (##structure gx#AST::t _stx136776_ _src136777_))))
    (define gx#stx-datum?
      (lambda (_stx136774_) (gx#self-quoting? (gx#stx-e _stx136774_))))
    (define gx#self-quoting?
      (lambda (_x136757_)
        (let ((_$e136759_ (immediate? _x136757_)))
          (if _$e136759_
              _$e136759_
              (let ((_$e136762_ (number? _x136757_)))
                (if _$e136762_
                    _$e136762_
                    (let ((_$e136765_ (keyword? _x136757_)))
                      (if _$e136765_
                          _$e136765_
                          (let ((_$e136768_ (string? _x136757_)))
                            (if _$e136768_
                                _$e136768_
                                (let ((_$e136771_ (vector? _x136757_)))
                                  (if _$e136771_
                                      _$e136771_
                                      (u8vector? _x136757_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136755_) (boolean? (gx#stx-e _e136755_))))
    (define gx#stx-keyword?
      (lambda (_e136753_) (keyword? (gx#stx-e _e136753_))))
    (define gx#stx-char? (lambda (_e136751_) (char? (gx#stx-e _e136751_))))
    (define gx#stx-number? (lambda (_e136749_) (number? (gx#stx-e _e136749_))))
    (define gx#stx-fixnum? (lambda (_e136747_) (fixnum? (gx#stx-e _e136747_))))
    (define gx#stx-string? (lambda (_e136745_) (string? (gx#stx-e _e136745_))))
    (define gx#stx-null? (lambda (_e136743_) (null? (gx#stx-e _e136743_))))
    (define gx#stx-pair? (lambda (_e136741_) (pair? (gx#stx-e _e136741_))))
    (define gx#stx-list?
      (lambda (_e136703_)
        (let* ((_g136704136713_ (gx#stx-e _e136703_))
               (_E136707136717_
                (lambda () (error '"No clause matching" _g136704136713_))))
          (let ((_K136709136733_
                 (lambda (_rest136731_) (gx#stx-list? _rest136731_)))
                (_K136708136723_ (lambda (_tail136721_) (null? _tail136721_))))
            (if (##pair? _g136704136713_)
                (let* ((_tl136711136736_ (##cdr _g136704136713_))
                       (_rest136739_ _tl136711136736_))
                  (gx#stx-list? _rest136739_))
                (let ((_tail136726_ _g136704136713_))
                  (null? _tail136726_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136696_)
        (let* ((_e136698_ (gx#stx-e _e136696_)) (_$e136700_ (pair? _e136698_)))
          (if _$e136700_ _$e136700_ (null? _e136698_)))))
    (define gx#stx-vector? (lambda (_e136694_) (vector? (gx#stx-e _e136694_))))
    (define gx#stx-box? (lambda (_e136692_) (box? (gx#stx-e _e136692_))))
    (define gx#stx-eq?
      (lambda (_x136689_ _y136690_)
        (eq? (gx#stx-e _x136689_) (gx#stx-e _y136690_))))
    (define gx#stx-eqv?
      (lambda (_x136686_ _y136687_)
        (eqv? (gx#stx-e _x136686_) (gx#stx-e _y136687_))))
    (define gx#stx-equal?
      (lambda (_x136683_ _y136684_)
        (equal? (gx#stx-e _x136683_) (gx#stx-e _y136684_))))
    (define gx#stx-false? (lambda (_x136681_) (not (gx#stx-e _x136681_))))
    (define gx#stx-identifier
      (lambda (_template136678_ . _args136679_)
        (gx#datum->syntax__1
         _template136678_
         (apply make-symbol (gx#syntax->datum _args136679_))
         (gx#stx-source _template136678_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136676_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136676_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136674_)
        (if (##structure-direct-instance-of?
             _stx136674_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136674_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136674_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136674_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136674_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136670_)
        (let ((_stx136672_ (gx#stx-unwrap__0 _stx136670_)))
          (if (gx#identifier-quote? _stx136672_)
              (##unchecked-structure-ref _stx136672_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136625_)
        (let* ((_g136626136636_ (gx#stx-e _stx136625_))
               (_else136629136644_ (lambda () '#f)))
          (let ((_K136632136658_
                 (lambda (_rest136655_ _hd136656_)
                   (if (gx#identifier? _hd136656_)
                       (gx#identifier-list? _rest136655_)
                       '#f)))
                (_K136631136649_ (lambda () '#t)))
            (let ((_try-match136628136652_
                   (lambda ()
                     (if (##null? _g136626136636_)
                         (_K136631136649_)
                         (_else136629136644_)))))
              (if (##pair? _g136626136636_)
                  (let ((_tl136634136663_ (##cdr _g136626136636_))
                        (_hd136633136661_ (##car _g136626136636_)))
                    (let ((_hd136666_ _hd136633136661_)
                          (_rest136668_ _tl136634136663_))
                      (_K136632136658_ _rest136668_ _hd136666_)))
                  (_try-match136628136652_)))))))
    (define gx#genident__%
      (lambda (_e136602_ _src136603_)
        (gx#stx-wrap-source
         (gensym (let ((_e136605_ (gx#stx-e _e136602_)))
                   (if (interned-symbol? _e136605_) _e136605_ 'g)))
         (let ((_$e136607_ (gx#stx-source _e136602_)))
           (if _$e136607_ _$e136607_ _src136603_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136614_ 'g) (_src136616_ '#f))
          (gx#genident__% _e136614_ _src136616_))))
    (define gx#genident__1
      (lambda (_e136618_)
        (let ((_src136620_ '#f)) (gx#genident__% _e136618_ _src136620_))))
    (define gx#genident
      (lambda _g141605_
        (let ((_g141604_ (##length _g141605_)))
          (cond ((##fx= _g141604_ 0)
                 (apply (lambda () (gx#genident__0)) _g141605_))
                ((##fx= _g141604_ 1)
                 (apply (lambda (_e136618_) (gx#genident__1 _e136618_))
                        _g141605_))
                ((##fx= _g141604_ 2)
                 (apply (lambda (_e136622_ _src136623_)
                          (gx#genident__% _e136622_ _src136623_))
                        _g141605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g141605_))))))
    (define gx#gentemps
      (lambda (_stx-lst136599_) (gx#stx-map1 gx#genident _stx-lst136599_)))
    (define gx#syntax->list
      (lambda (_stx136597_) (gx#stx-map1 values _stx136597_)))
    (define gx#stx-car
      (lambda (_stx136594_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136594_)))))
    (define gx#stx-cdr
      (lambda (_stx136591_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136591_)))))
    (define gx#stx-length
      (lambda (_stx136556_)
        (let _lp136558_ ((_rest136560_ _stx136556_) (_n136561_ '0))
          (let* ((_g136562136570_ (gx#stx-e _rest136560_))
                 (_else136564136578_ (lambda () _n136561_))
                 (_K136566136583_
                  (lambda (_rest136581_)
                    (_lp136558_ _rest136581_ (fx+ _n136561_ '1)))))
            (if (##pair? _g136562136570_)
                (let* ((_tl136568136586_ (##cdr _g136562136570_))
                       (_rest136589_ _tl136568136586_))
                  (_K136566136583_ _rest136589_))
                (_else136564136578_))))))
    (define gx#stx-for-each
      (lambda _g141607_
        (let ((_g141606_ (##length _g141607_)))
          (cond ((##fx= _g141606_ 2)
                 (apply (lambda (_f136549_ _stx136550_)
                          (gx#stx-for-each1 _f136549_ _stx136550_))
                        _g141607_))
                ((##fx= _g141606_ 3)
                 (apply (lambda (_f136552_ _xstx136553_ _ystx136554_)
                          (gx#stx-for-each2
                           _f136552_
                           _xstx136553_
                           _ystx136554_))
                        _g141607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g141607_))))))
    (define gx#stx-for-each1
      (lambda (_f136499_ _stx136500_)
        (if (procedure? _f136499_)
            '#!void
            (error '"expected procedure" _f136499_))
        (let _lp136502_ ((_rest136504_ _stx136500_))
          (let* ((_g136505136515_ (gx#syntax-e _rest136504_))
                 (_else136508136523_ (lambda () (_f136499_ _rest136504_))))
            (let ((_K136511136537_
                   (lambda (_rest136534_ _hd136535_)
                     (_f136499_ _hd136535_)
                     (_lp136502_ _rest136534_)))
                  (_K136510136528_ (lambda () '#!void)))
              (let ((_try-match136507136531_
                     (lambda ()
                       (if (##null? _g136505136515_)
                           (_K136510136528_)
                           (_else136508136523_)))))
                (if (##pair? _g136505136515_)
                    (let ((_tl136513136542_ (##cdr _g136505136515_))
                          (_hd136512136540_ (##car _g136505136515_)))
                      (let ((_hd136545_ _hd136512136540_)
                            (_rest136547_ _tl136513136542_))
                        (_K136511136537_ _rest136547_ _hd136545_)))
                    (_try-match136507136531_))))))))
    (define gx#stx-for-each2
      (lambda (_f136404_ _xstx136405_ _ystx136406_)
        (if (procedure? _f136404_)
            '#!void
            (error '"expected procedure" _f136404_))
        (let _lp136408_ ((_xrest136410_ _xstx136405_)
                         (_yrest136411_ _ystx136406_))
          (let* ((_g136412136422_ (gx#syntax-e _xrest136410_))
                 (_else136415136430_ (lambda () '#!void)))
            (let ((_K136418136487_
                   (lambda (_xrest136456_ _xhd136457_)
                     (let* ((_g136458136465_ (gx#syntax-e _yrest136411_))
                            (_E136460136469_
                             (lambda ()
                               (error '"No clause matching" _g136458136465_)))
                            (_K136461136475_
                             (lambda (_yrest136472_ _yhd136473_)
                               (_f136404_ _xhd136457_ _yhd136473_)
                               (_lp136408_ _xrest136456_ _yrest136472_))))
                       (if (##pair? _g136458136465_)
                           (let ((_hd136462136478_ (##car _g136458136465_))
                                 (_tl136463136480_ (##cdr _g136458136465_)))
                             (let* ((_yhd136483_ _hd136462136478_)
                                    (_yrest136485_ _tl136463136480_))
                               (_K136461136475_ _yrest136485_ _yhd136483_)))
                           (_E136460136469_)))))
                  (_K136417136450_
                   (lambda ()
                     (let* ((_yrest136434136439_ _yrest136411_)
                            (_E136436136443_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136434136439_)))
                            (_K136437136447_
                             (lambda ()
                               (_f136404_ _xrest136410_ _yrest136411_))))
                       (if (not (gx#stx-null? _yrest136434136439_))
                           (_K136437136447_)
                           (_E136436136443_))))))
              (let ((_try-match136414136453_
                     (lambda ()
                       (if (not (null? _g136412136422_))
                           (_K136417136450_)
                           (_else136415136430_)))))
                (if (##pair? _g136412136422_)
                    (let ((_tl136420136492_ (##cdr _g136412136422_))
                          (_hd136419136490_ (##car _g136412136422_)))
                      (let ((_xhd136495_ _hd136419136490_)
                            (_xrest136497_ _tl136420136492_))
                        (_K136418136487_ _xrest136497_ _xhd136495_)))
                    (_try-match136414136453_))))))))
    (define gx#stx-map
      (lambda _g141609_
        (let ((_g141608_ (##length _g141609_)))
          (cond ((##fx= _g141608_ 2)
                 (apply (lambda (_f136397_ _stx136398_)
                          (gx#stx-map1 _f136397_ _stx136398_))
                        _g141609_))
                ((##fx= _g141608_ 3)
                 (apply (lambda (_f136400_ _xstx136401_ _ystx136402_)
                          (gx#stx-map2 _f136400_ _xstx136401_ _ystx136402_))
                        _g141609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g141609_))))))
    (define gx#stx-map1
      (lambda (_f136347_ _stx136348_)
        (if (procedure? _f136347_)
            '#!void
            (error '"expected procedure" _f136347_))
        (let _recur136350_ ((_rest136352_ _stx136348_))
          (let* ((_g136353136363_ (gx#syntax-e _rest136352_))
                 (_else136356136371_ (lambda () (_f136347_ _rest136352_))))
            (let ((_K136359136385_
                   (lambda (_rest136382_ _hd136383_)
                     (cons (_f136347_ _hd136383_)
                           (_recur136350_ _rest136382_))))
                  (_K136358136376_ (lambda () '())))
              (let ((_try-match136355136379_
                     (lambda ()
                       (if (##null? _g136353136363_)
                           (_K136358136376_)
                           (_else136356136371_)))))
                (if (##pair? _g136353136363_)
                    (let ((_tl136361136390_ (##cdr _g136353136363_))
                          (_hd136360136388_ (##car _g136353136363_)))
                      (let ((_hd136393_ _hd136360136388_)
                            (_rest136395_ _tl136361136390_))
                        (_K136359136385_ _rest136395_ _hd136393_)))
                    (_try-match136355136379_))))))))
    (define gx#stx-map2
      (lambda (_f136252_ _xstx136253_ _ystx136254_)
        (if (procedure? _f136252_)
            '#!void
            (error '"expected procedure" _f136252_))
        (let _recur136256_ ((_xrest136258_ _xstx136253_)
                            (_yrest136259_ _ystx136254_))
          (let* ((_g136260136270_ (gx#syntax-e _xrest136258_))
                 (_else136263136278_ (lambda () '())))
            (let ((_K136266136335_
                   (lambda (_xrest136304_ _xhd136305_)
                     (let* ((_g136306136313_ (gx#syntax-e _yrest136259_))
                            (_E136308136317_
                             (lambda ()
                               (error '"No clause matching" _g136306136313_)))
                            (_K136309136323_
                             (lambda (_yrest136320_ _yhd136321_)
                               (cons (_f136252_ _xhd136305_ _yhd136321_)
                                     (_recur136256_
                                      _xrest136304_
                                      _yrest136320_)))))
                       (if (##pair? _g136306136313_)
                           (let ((_hd136310136326_ (##car _g136306136313_))
                                 (_tl136311136328_ (##cdr _g136306136313_)))
                             (let* ((_yhd136331_ _hd136310136326_)
                                    (_yrest136333_ _tl136311136328_))
                               (_K136309136323_ _yrest136333_ _yhd136331_)))
                           (_E136308136317_)))))
                  (_K136265136298_
                   (lambda ()
                     (let* ((_yrest136282136287_ _yrest136259_)
                            (_E136284136291_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136282136287_)))
                            (_K136285136295_
                             (lambda ()
                               (_f136252_ _xrest136258_ _yrest136259_))))
                       (if (not (gx#stx-null? _yrest136282136287_))
                           (_K136285136295_)
                           (_E136284136291_))))))
              (let ((_try-match136262136301_
                     (lambda ()
                       (if (not (null? _g136260136270_))
                           (_K136265136298_)
                           (_else136263136278_)))))
                (if (##pair? _g136260136270_)
                    (let ((_tl136268136340_ (##cdr _g136260136270_))
                          (_hd136267136338_ (##car _g136260136270_)))
                      (let ((_xhd136343_ _hd136267136338_)
                            (_xrest136345_ _tl136268136340_))
                        (_K136266136335_ _xrest136345_ _xhd136343_)))
                    (_try-match136262136301_))))))))
    (define gx#stx-andmap
      (lambda (_f136202_ _stx136203_)
        (if (procedure? _f136202_)
            '#!void
            (error '"expected procedure" _f136202_))
        (let _lp136205_ ((_rest136207_ _stx136203_))
          (let* ((_g136208136218_ (gx#syntax-e _rest136207_))
                 (_else136211136226_ (lambda () (_f136202_ _rest136207_))))
            (let ((_K136214136240_
                   (lambda (_rest136237_ _hd136238_)
                     (if (_f136202_ _hd136238_)
                         (_lp136205_ _rest136237_)
                         '#f)))
                  (_K136213136231_ (lambda () '#t)))
              (let ((_try-match136210136234_
                     (lambda ()
                       (if (##null? _g136208136218_)
                           (_K136213136231_)
                           (_else136211136226_)))))
                (if (##pair? _g136208136218_)
                    (let ((_tl136216136245_ (##cdr _g136208136218_))
                          (_hd136215136243_ (##car _g136208136218_)))
                      (let ((_hd136248_ _hd136215136243_)
                            (_rest136250_ _tl136216136245_))
                        (_K136214136240_ _rest136250_ _hd136248_)))
                    (_try-match136210136234_))))))))
    (define gx#stx-ormap
      (lambda (_f136149_ _stx136150_)
        (if (procedure? _f136149_)
            '#!void
            (error '"expected procedure" _f136149_))
        (let _lp136152_ ((_rest136154_ _stx136150_))
          (let* ((_g136155136165_ (gx#syntax-e _rest136154_))
                 (_else136158136173_ (lambda () (_f136149_ _rest136154_))))
            (let ((_K136161136190_
                   (lambda (_rest136184_ _hd136185_)
                     (let ((_$e136187_ (_f136149_ _hd136185_)))
                       (if _$e136187_ _$e136187_ (_lp136152_ _rest136184_)))))
                  (_K136160136178_ (lambda () '#f)))
              (let ((_try-match136157136181_
                     (lambda ()
                       (if (##null? _g136155136165_)
                           (_K136160136178_)
                           (_else136158136173_)))))
                (if (##pair? _g136155136165_)
                    (let ((_tl136163136195_ (##cdr _g136155136165_))
                          (_hd136162136193_ (##car _g136155136165_)))
                      (let ((_hd136198_ _hd136162136193_)
                            (_rest136200_ _tl136163136195_))
                        (_K136161136190_ _rest136200_ _hd136198_)))
                    (_try-match136157136181_))))))))
    (define gx#stx-foldl
      (lambda (_f136097_ _iv136098_ _stx136099_)
        (if (procedure? _f136097_)
            '#!void
            (error '"expected procedure" _f136097_))
        (let _lp136101_ ((_r136103_ _iv136098_) (_rest136104_ _stx136099_))
          (let* ((_g136105136115_ (gx#syntax-e _rest136104_))
                 (_else136108136123_
                  (lambda () (_f136097_ _rest136104_ _r136103_))))
            (let ((_K136111136137_
                   (lambda (_rest136134_ _hd136135_)
                     (_lp136101_
                      (_f136097_ _hd136135_ _r136103_)
                      _rest136134_)))
                  (_K136110136128_ (lambda () _r136103_)))
              (let ((_try-match136107136131_
                     (lambda ()
                       (if (##null? _g136105136115_)
                           (_K136110136128_)
                           (_else136108136123_)))))
                (if (##pair? _g136105136115_)
                    (let ((_tl136113136142_ (##cdr _g136105136115_))
                          (_hd136112136140_ (##car _g136105136115_)))
                      (let ((_hd136145_ _hd136112136140_)
                            (_rest136147_ _tl136113136142_))
                        (_K136111136137_ _rest136147_ _hd136145_)))
                    (_try-match136107136131_))))))))
    (define gx#stx-foldr
      (lambda (_f136046_ _iv136047_ _stx136048_)
        (if (procedure? _f136046_)
            '#!void
            (error '"expected procedure" _f136046_))
        (let _recur136050_ ((_rest136052_ _stx136048_))
          (let* ((_g136053136063_ (gx#syntax-e _rest136052_))
                 (_else136056136071_
                  (lambda () (_f136046_ _rest136052_ _iv136047_))))
            (let ((_K136059136085_
                   (lambda (_rest136082_ _hd136083_)
                     (_f136046_ _hd136083_ (_recur136050_ _rest136082_))))
                  (_K136058136076_ (lambda () _iv136047_)))
              (let ((_try-match136055136079_
                     (lambda ()
                       (if (##null? _g136053136063_)
                           (_K136058136076_)
                           (_else136056136071_)))))
                (if (##pair? _g136053136063_)
                    (let ((_tl136061136090_ (##cdr _g136053136063_))
                          (_hd136060136088_ (##car _g136053136063_)))
                      (let ((_hd136093_ _hd136060136088_)
                            (_rest136095_ _tl136061136090_))
                        (_K136059136085_ _rest136095_ _hd136093_)))
                    (_try-match136055136079_))))))))
    (define gx#stx-reverse
      (lambda (_stx136044_) (gx#stx-foldl cons '() _stx136044_)))
    (define gx#stx-last
      (lambda (_stx136005_)
        (let _lp136007_ ((_rest136009_ _stx136005_))
          (let* ((_g136010136018_ (gx#syntax-e _rest136009_))
                 (_else136012136026_ (lambda () _rest136009_))
                 (_K136014136032_
                  (lambda (_rest136029_ _hd136030_)
                    (if (gx#stx-null? _rest136029_)
                        _hd136030_
                        (_lp136007_ _rest136029_)))))
            (if (##pair? _g136010136018_)
                (let ((_hd136015136035_ (##car _g136010136018_))
                      (_tl136016136037_ (##cdr _g136010136018_)))
                  (let* ((_hd136040_ _hd136015136035_)
                         (_rest136042_ _tl136016136037_))
                    (_K136014136032_ _rest136042_ _hd136040_)))
                (_else136012136026_))))))
    (define gx#stx-last-pair
      (lambda (_stx135976_)
        (let _lp135978_ ((_hd135980_ _stx135976_))
          (let* ((_g135981135988_ (gx#syntax-e _hd135980_))
                 (_E135983135992_
                  (lambda () (error '"No clause matching" _g135981135988_)))
                 (_K135984135997_
                  (lambda (_rest135995_)
                    (if (gx#stx-pair? _rest135995_)
                        (_lp135978_ _rest135995_)
                        _hd135980_))))
            (if (##pair? _g135981135988_)
                (let* ((_tl135986136000_ (##cdr _g135981135988_))
                       (_rest136003_ _tl135986136000_))
                  (_K135984135997_ _rest136003_))
                (_E135983135992_))))))
    (define gx#stx-list-tail
      (lambda (_stx135945_ _k135946_)
        (let _lp135948_ ((_rest135950_ _stx135945_) (_k135951_ _k135946_))
          (if (fxpositive? _k135951_)
              (let* ((_g135952135959_ (gx#syntax-e _rest135950_))
                     (_E135954135963_
                      (lambda ()
                        (error '"No clause matching" _g135952135959_)))
                     (_K135955135968_
                      (lambda (_rest135966_)
                        (_lp135948_ _rest135966_ (fx- _k135951_ '1)))))
                (if (##pair? _g135952135959_)
                    (let* ((_tl135957135971_ (##cdr _g135952135959_))
                           (_rest135974_ _tl135957135971_))
                      (_K135955135968_ _rest135974_))
                    (_E135954135963_)))
              _rest135950_))))
    (define gx#stx-list-ref
      (lambda (_stx135942_ _k135943_)
        (gx#stx-car (gx#stx-list-tail _stx135942_ _k135943_))))
    (define gx#stx-plist?__%
      (lambda (_stx135854_ _key?135855_)
        (if (procedure? _key?135855_)
            '#!void
            (error '"expected procedure" _key?135855_))
        (let _lp135857_ ((_rest135859_ _stx135854_))
          (let* ((_g135860135870_ (gx#stx-e _rest135859_))
                 (_else135863135878_ (lambda () '#f)))
            (let ((_K135866135920_
                   (lambda (_rest135889_ _hd135890_)
                     (if (_key?135855_ _hd135890_)
                         (let* ((_g135891135899_ (gx#stx-e _rest135889_))
                                (_else135893135907_ (lambda () '#f))
                                (_K135895135912_
                                 (lambda (_rest135910_)
                                   (_lp135857_ _rest135910_))))
                           (if (##pair? _g135891135899_)
                               (let* ((_tl135897135915_
                                       (##cdr _g135891135899_))
                                      (_rest135918_ _tl135897135915_))
                                 (_lp135857_ _rest135918_))
                               (_else135893135907_)))
                         '#f)))
                  (_K135865135883_ (lambda () '#t)))
              (let ((_try-match135862135886_
                     (lambda ()
                       (if (##null? _g135860135870_)
                           (_K135865135883_)
                           (_else135863135878_)))))
                (if (##pair? _g135860135870_)
                    (let ((_tl135868135925_ (##cdr _g135860135870_))
                          (_hd135867135923_ (##car _g135860135870_)))
                      (let ((_hd135928_ _hd135867135923_)
                            (_rest135930_ _tl135868135925_))
                        (_K135866135920_ _rest135930_ _hd135928_)))
                    (_try-match135862135886_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135935_)
        (let ((_key?135937_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135935_ _key?135937_))))
    (define gx#stx-plist?
      (lambda _g141611_
        (let ((_g141610_ (##length _g141611_)))
          (cond ((##fx= _g141610_ 1)
                 (apply (lambda (_stx135935_) (gx#stx-plist?__0 _stx135935_))
                        _g141611_))
                ((##fx= _g141610_ 2)
                 (apply (lambda (_stx135939_ _key?135940_)
                          (gx#stx-plist?__% _stx135939_ _key?135940_))
                        _g141611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g141611_))))))
    (define gx#stx-getq__%
      (lambda (_key135772_ _stx135773_ _key=?135774_)
        (if (procedure? _key=?135774_)
            '#!void
            (error '"expected procedure" _key=?135774_))
        (let _lp135776_ ((_rest135778_ _stx135773_))
          (let* ((_g135779135787_ (gx#syntax-e _rest135778_))
                 (_else135781135795_ (lambda () '#f))
                 (_K135783135829_
                  (lambda (_rest135798_ _hd135799_)
                    (let* ((_g135800135807_ (gx#syntax-e _rest135798_))
                           (_E135802135811_
                            (lambda ()
                              (error '"No clause matching" _g135800135807_)))
                           (_K135803135817_
                            (lambda (_rest135814_ _val135815_)
                              (if (_key=?135774_ _hd135799_ _key135772_)
                                  _val135815_
                                  (_lp135776_ _rest135814_)))))
                      (if (##pair? _g135800135807_)
                          (let ((_hd135804135820_ (##car _g135800135807_))
                                (_tl135805135822_ (##cdr _g135800135807_)))
                            (let* ((_val135825_ _hd135804135820_)
                                   (_rest135827_ _tl135805135822_))
                              (_K135803135817_ _rest135827_ _val135825_)))
                          (_E135802135811_))))))
            (if (##pair? _g135779135787_)
                (let ((_hd135784135832_ (##car _g135779135787_))
                      (_tl135785135834_ (##cdr _g135779135787_)))
                  (let* ((_hd135837_ _hd135784135832_)
                         (_rest135839_ _tl135785135834_))
                    (_K135783135829_ _rest135839_ _hd135837_)))
                (_else135781135795_))))))
    (define gx#stx-getq__0
      (lambda (_key135844_ _stx135845_)
        (let ((_key=?135847_ gx#stx-eq?))
          (gx#stx-getq__% _key135844_ _stx135845_ _key=?135847_))))
    (define gx#stx-getq
      (lambda _g141613_
        (let ((_g141612_ (##length _g141613_)))
          (cond ((##fx= _g141612_ 2)
                 (apply (lambda (_key135844_ _stx135845_)
                          (gx#stx-getq__0 _key135844_ _stx135845_))
                        _g141613_))
                ((##fx= _g141612_ 3)
                 (apply (lambda (_key135849_ _stx135850_ _key=?135851_)
                          (gx#stx-getq__%
                           _key135849_
                           _stx135850_
                           _key=?135851_))
                        _g141613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g141613_))))))))
