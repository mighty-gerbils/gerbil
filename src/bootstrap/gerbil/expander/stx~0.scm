(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710943025)
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
      (lambda _$args82843_
        (apply make-instance gx#identifier-wrap::t _$args82843_)))
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
      (lambda _$args82840_
        (apply make-instance gx#syntax-wrap::t _$args82840_)))
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
      (lambda _$args82837_
        (apply make-instance gx#syntax-quote::t _$args82837_)))
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
      (lambda (_stx82835_) (symbol? (gx#stx-e _stx82835_))))
    (define gx#identifier-quote?
      (lambda (_stx82833_)
        (if (##structure-direct-instance-of? _stx82833_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82833_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82831_)
        (if (##structure-direct-instance-of? _stx82831_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82831_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82831_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82829_)
        (if (##structure-direct-instance-of? _stx82829_ 'gx#syntax-quote::t)
            _stx82829_
            (if (##structure-direct-instance-of? _stx82829_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82829_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82812_)
        (if (##structure-direct-instance-of? _stx82812_ 'gx#syntax-wrap::t)
            (let _lp82814_ ((_e82816_
                             (##unchecked-structure-ref
                              _stx82812_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82817_
                             (cons (##unchecked-structure-ref
                                    _stx82812_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82816_)
                  (let ((_$e82819_ (##type-id (##structure-type _e82816_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82819_)
                        (_lp82814_
                         (##unchecked-structure-ref _e82816_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82816_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82817_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82819_)
                                (eq? 'gx#identifier-wrap::t _$e82819_))
                            (##unchecked-structure-ref
                             _e82816_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82819_)
                                (_lp82814_
                                 (##unchecked-structure-ref
                                  _e82816_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82817_)
                                _e82816_))))
                  (if (null? _marks82817_)
                      _e82816_
                      (if (pair? _e82816_)
                          (cons (gx#stx-wrap (car _e82816_) _marks82817_)
                                (gx#stx-wrap (cdr _e82816_) _marks82817_))
                          (if (vector? _e82816_)
                              (vector-map
                               (lambda (_g8282482826_)
                                 (gx#stx-wrap _g8282482826_ _marks82817_))
                               _e82816_)
                              (if (box? _e82816_)
                                  (box (gx#stx-wrap
                                        (unbox _e82816_)
                                        _marks82817_))
                                  _e82816_))))))
            (if (##structure-instance-of? _stx82812_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82812_ '1 gx#AST::t '#f)
                _stx82812_))))
    (define gx#syntax->datum
      (lambda (_stx82810_)
        (if (##structure-instance-of? _stx82810_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82810_ '1 gx#AST::t '#f))
            (if (pair? _stx82810_)
                (cons (gx#syntax->datum (car _stx82810_))
                      (gx#syntax->datum (cdr _stx82810_)))
                (if (vector? _stx82810_)
                    (vector-map gx#syntax->datum _stx82810_)
                    (if (box? _stx82810_)
                        (box (gx#syntax->datum (unbox _stx82810_)))
                        _stx82810_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82753_ _datum82754_ _src82755_ _quote?82756_)
        (letrec ((_wrap-datum82758_
                  (lambda (_e82782_ _marks82783_)
                    (_wrap-inner82760_
                     _e82782_
                     (lambda (_g8278482786_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8278482786_
                        _src82755_
                        _marks82783_)))))
                 (_wrap-quote82759_
                  (lambda (_e82774_ _ctx82775_ _marks82776_)
                    (_wrap-inner82760_
                     _e82774_
                     (lambda (_g8277782779_)
                       (##structure
                        gx#syntax-quote::t
                        _g8277782779_
                        _src82755_
                        _ctx82775_
                        _marks82776_)))))
                 (_wrap-inner82760_
                  (lambda (_e82767_ _wrap-e82768_)
                    (let _recur82770_ ((_e82772_ _e82767_))
                      (if (symbol? _e82772_)
                          (_wrap-e82768_ _e82772_)
                          (if (pair? _e82772_)
                              (cons (_recur82770_ (car _e82772_))
                                    (_recur82770_ (cdr _e82772_)))
                              (if (vector? _e82772_)
                                  (vector-map _recur82770_ _e82772_)
                                  (if (box? _e82772_)
                                      (box (_recur82770_ (unbox _e82772_)))
                                      _e82772_)))))))
                 (_wrap-outer82761_
                  (lambda (_e82765_)
                    (if (##structure-instance-of? _e82765_ 'gerbil#AST::t)
                        _e82765_
                        (##structure gx#AST::t _e82765_ _src82755_)))))
          (if (##structure-instance-of? _datum82754_ 'gerbil#AST::t)
              _datum82754_
              (if (not _stx82753_)
                  (##structure gx#AST::t _datum82754_ _src82755_)
                  (if (gx#identifier? _stx82753_)
                      (let ((_stx82763_ (gx#stx-unwrap__0 _stx82753_)))
                        (_wrap-outer82761_
                         (if (##structure-direct-instance-of?
                              _stx82763_
                              'gx#syntax-quote::t)
                             (if _quote?82756_
                                 (_wrap-quote82759_
                                  _datum82754_
                                  (##unchecked-structure-ref
                                   _stx82763_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82763_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82758_
                                  _datum82754_
                                  (##unchecked-structure-ref
                                   _stx82763_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82758_
                              _datum82754_
                              (##unchecked-structure-ref
                               _stx82763_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82753_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82792_ _datum82793_)
        (let* ((_src82795_ '#f) (_quote?82797_ '#t))
          (gx#datum->syntax__%
           _stx82792_
           _datum82793_
           _src82795_
           _quote?82797_))))
    (define gx#datum->syntax__1
      (lambda (_stx82799_ _datum82800_ _src82801_)
        (let ((_quote?82803_ '#t))
          (gx#datum->syntax__%
           _stx82799_
           _datum82800_
           _src82801_
           _quote?82803_))))
    (define gx#datum->syntax
      (lambda _g82924_
        (let ((_g82923_ (##length _g82924_)))
          (cond ((##fx= _g82923_ 2)
                 (apply (lambda (_stx82792_ _datum82793_)
                          (gx#datum->syntax__0 _stx82792_ _datum82793_))
                        _g82924_))
                ((##fx= _g82923_ 3)
                 (apply (lambda (_stx82799_ _datum82800_ _src82801_)
                          (gx#datum->syntax__1
                           _stx82799_
                           _datum82800_
                           _src82801_))
                        _g82924_))
                ((##fx= _g82923_ 4)
                 (apply (lambda (_stx82805_
                                 _datum82806_
                                 _src82807_
                                 _quote?82808_)
                          (gx#datum->syntax__%
                           _stx82805_
                           _datum82806_
                           _src82807_
                           _quote?82808_))
                        _g82924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82924_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82729_ _marks82730_)
        (let _lp82732_ ((_e82734_ _stx82729_)
                        (_marks82735_ _marks82730_)
                        (_src82736_ (gx#stx-source _stx82729_)))
          (if (##structure-direct-instance-of? _e82734_ 'gx#syntax-wrap::t)
              (_lp82732_
               (##unchecked-structure-ref _e82734_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82734_ '3 gx#syntax-wrap::t '#f)
                _marks82735_)
               (##unchecked-structure-ref _e82734_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82734_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82735_)
                      _e82734_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82734_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82734_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82734_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82735_)))
                  (if (##structure-direct-instance-of?
                       _e82734_
                       'gx#syntax-quote::t)
                      _e82734_
                      (if (##structure-instance-of? _e82734_ 'gerbil#AST::t)
                          (_lp82732_
                           (##unchecked-structure-ref
                            _e82734_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82735_
                           (##unchecked-structure-ref
                            _e82734_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82734_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82734_
                               _src82736_
                               (reverse _marks82735_))
                              (if (null? _marks82735_)
                                  _e82734_
                                  (if (pair? _e82734_)
                                      (cons (gx#stx-wrap
                                             (car _e82734_)
                                             _marks82735_)
                                            (gx#stx-wrap
                                             (cdr _e82734_)
                                             _marks82735_))
                                      (if (vector? _e82734_)
                                          (vector-map
                                           (lambda (_g8273782739_)
                                             (gx#stx-wrap
                                              _g8273782739_
                                              _marks82735_))
                                           _e82734_)
                                          (if (box? _e82734_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82734_)
                                                    _marks82735_))
                                              _e82734_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82745_)
        (let ((_marks82747_ '())) (gx#stx-unwrap__% _stx82745_ _marks82747_))))
    (define gx#stx-unwrap
      (lambda _g82926_
        (let ((_g82925_ (##length _g82926_)))
          (cond ((##fx= _g82925_ 1)
                 (apply (lambda (_stx82745_) (gx#stx-unwrap__0 _stx82745_))
                        _g82926_))
                ((##fx= _g82925_ 2)
                 (apply (lambda (_stx82749_ _marks82750_)
                          (gx#stx-unwrap__% _stx82749_ _marks82750_))
                        _g82926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82926_))))))
    (define gx#stx-wrap
      (lambda (_stx82722_ _marks82723_)
        (foldl1 (lambda (_mark82725_ _stx82726_)
                  (gx#stx-apply-mark _stx82726_ _mark82725_))
                _stx82722_
                _marks82723_)))
    (define gx#stx-rewrap
      (lambda (_stx82716_ _marks82717_)
        (foldr1 (lambda (_mark82719_ _stx82720_)
                  (gx#stx-apply-mark _stx82720_ _mark82719_))
                _stx82716_
                _marks82717_)))
    (define gx#stx-apply-mark
      (lambda (_stx82713_ _mark82714_)
        (if (##structure-direct-instance-of? _stx82713_ 'gx#syntax-quote::t)
            _stx82713_
            (if (and (##structure-direct-instance-of?
                      _stx82713_
                      'gx#syntax-wrap::t)
                     (eq? _mark82714_
                          (##unchecked-structure-ref
                           _stx82713_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82713_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82713_
                 (gx#stx-source _stx82713_)
                 _mark82714_)))))
    (define gx#apply-mark
      (lambda (_mark82677_ _marks82678_)
        (let* ((_marks8267982687_ _marks82678_)
               (_else8268182695_ (lambda () (cons _mark82677_ _marks82678_)))
               (_K8268382701_
                (lambda (_rest82698_ _hd82699_)
                  (if (eq? _mark82677_ _hd82699_)
                      _rest82698_
                      (cons _mark82677_ _marks82678_)))))
          (if (##pair? _marks8267982687_)
              (let ((_hd8268482704_ (##car _marks8267982687_))
                    (_tl8268582706_ (##cdr _marks8267982687_)))
                (let* ((_hd82709_ _hd8268482704_) (_rest82711_ _tl8268582706_))
                  (_K8268382701_ _rest82711_ _hd82709_)))
              (_else8268182695_)))))
    (define gx#stx-e
      (lambda (_stx82675_)
        (if (##structure-direct-instance-of? _stx82675_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82675_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82675_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82675_ '1 gx#AST::t '#f)
                _stx82675_))))
    (define gx#stx-source
      (lambda (_stx82673_)
        (if (##structure-instance-of? _stx82673_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82673_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82667_ _src82668_)
        (if (or (##structure-instance-of? _stx82667_ 'gerbil#AST::t)
                (not _src82668_))
            _stx82667_
            (##structure gx#AST::t _stx82667_ _src82668_))))
    (define gx#stx-datum?
      (lambda (_stx82665_) (gx#self-quoting? (gx#stx-e _stx82665_))))
    (define gx#self-quoting?
      (lambda (_x82648_)
        (let ((_$e82650_ (immediate? _x82648_)))
          (if _$e82650_
              _$e82650_
              (let ((_$e82653_ (number? _x82648_)))
                (if _$e82653_
                    _$e82653_
                    (let ((_$e82656_ (keyword? _x82648_)))
                      (if _$e82656_
                          _$e82656_
                          (let ((_$e82659_ (string? _x82648_)))
                            (if _$e82659_
                                _$e82659_
                                (let ((_$e82662_ (vector? _x82648_)))
                                  (if _$e82662_
                                      _$e82662_
                                      (u8vector? _x82648_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82646_) (boolean? (gx#stx-e _e82646_))))
    (define gx#stx-keyword? (lambda (_e82644_) (keyword? (gx#stx-e _e82644_))))
    (define gx#stx-char? (lambda (_e82642_) (char? (gx#stx-e _e82642_))))
    (define gx#stx-number? (lambda (_e82640_) (number? (gx#stx-e _e82640_))))
    (define gx#stx-fixnum? (lambda (_e82638_) (fixnum? (gx#stx-e _e82638_))))
    (define gx#stx-string? (lambda (_e82636_) (string? (gx#stx-e _e82636_))))
    (define gx#stx-null? (lambda (_e82634_) (null? (gx#stx-e _e82634_))))
    (define gx#stx-pair? (lambda (_e82632_) (pair? (gx#stx-e _e82632_))))
    (define gx#stx-list?
      (lambda (_e82594_)
        (let* ((_g8259582604_ (gx#stx-e _e82594_))
               (_E8259882608_
                (lambda () (error '"No clause matching" _g8259582604_))))
          (let ((_K8260082624_
                 (lambda (_rest82622_) (gx#stx-list? _rest82622_)))
                (_K8259982614_ (lambda (_tail82612_) (null? _tail82612_))))
            (if (##pair? _g8259582604_)
                (let* ((_tl8260282627_ (##cdr _g8259582604_))
                       (_rest82630_ _tl8260282627_))
                  (gx#stx-list? _rest82630_))
                (let ((_tail82617_ _g8259582604_)) (null? _tail82617_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82587_)
        (let* ((_e82589_ (gx#stx-e _e82587_)) (_$e82591_ (pair? _e82589_)))
          (if _$e82591_ _$e82591_ (null? _e82589_)))))
    (define gx#stx-vector? (lambda (_e82585_) (vector? (gx#stx-e _e82585_))))
    (define gx#stx-box? (lambda (_e82583_) (box? (gx#stx-e _e82583_))))
    (define gx#stx-eq?
      (lambda (_x82580_ _y82581_)
        (eq? (gx#stx-e _x82580_) (gx#stx-e _y82581_))))
    (define gx#stx-eqv?
      (lambda (_x82577_ _y82578_)
        (eqv? (gx#stx-e _x82577_) (gx#stx-e _y82578_))))
    (define gx#stx-equal?
      (lambda (_x82574_ _y82575_)
        (equal? (gx#stx-e _x82574_) (gx#stx-e _y82575_))))
    (define gx#stx-false? (lambda (_x82572_) (not (gx#stx-e _x82572_))))
    (define gx#stx-identifier
      (lambda (_template82569_ . _args82570_)
        (gx#datum->syntax__1
         _template82569_
         (apply make-symbol (gx#syntax->datum _args82570_))
         (gx#stx-source _template82569_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82567_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82567_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82565_)
        (if (##structure-direct-instance-of? _stx82565_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82565_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82565_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82565_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82565_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82561_)
        (let ((_stx82563_ (gx#stx-unwrap__0 _stx82561_)))
          (if (gx#identifier-quote? _stx82563_)
              (##unchecked-structure-ref _stx82563_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82516_)
        (let* ((_g8251782527_ (gx#stx-e _stx82516_))
               (_else8252082535_ (lambda () '#f)))
          (let ((_K8252382549_
                 (lambda (_rest82546_ _hd82547_)
                   (if (gx#identifier? _hd82547_)
                       (gx#identifier-list? _rest82546_)
                       '#f)))
                (_K8252282540_ (lambda () '#t)))
            (let ((_try-match8251982543_
                   (lambda ()
                     (if (##null? _g8251782527_)
                         (_K8252282540_)
                         (_else8252082535_)))))
              (if (##pair? _g8251782527_)
                  (let ((_tl8252582554_ (##cdr _g8251782527_))
                        (_hd8252482552_ (##car _g8251782527_)))
                    (let ((_hd82557_ _hd8252482552_)
                          (_rest82559_ _tl8252582554_))
                      (_K8252382549_ _rest82559_ _hd82557_)))
                  (_try-match8251982543_)))))))
    (define gx#genident__%
      (lambda (_e82493_ _src82494_)
        (gx#stx-wrap-source
         (gensym (let ((_e82496_ (gx#stx-e _e82493_)))
                   (if (interned-symbol? _e82496_) _e82496_ 'g)))
         (let ((_$e82498_ (gx#stx-source _e82493_)))
           (if _$e82498_ _$e82498_ _src82494_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82505_ 'g) (_src82507_ '#f))
          (gx#genident__% _e82505_ _src82507_))))
    (define gx#genident__1
      (lambda (_e82509_)
        (let ((_src82511_ '#f)) (gx#genident__% _e82509_ _src82511_))))
    (define gx#genident
      (lambda _g82928_
        (let ((_g82927_ (##length _g82928_)))
          (cond ((##fx= _g82927_ 0)
                 (apply (lambda () (gx#genident__0)) _g82928_))
                ((##fx= _g82927_ 1)
                 (apply (lambda (_e82509_) (gx#genident__1 _e82509_))
                        _g82928_))
                ((##fx= _g82927_ 2)
                 (apply (lambda (_e82513_ _src82514_)
                          (gx#genident__% _e82513_ _src82514_))
                        _g82928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82928_))))))
    (define gx#gentemps
      (lambda (_stx-lst82490_) (gx#stx-map1 gx#genident _stx-lst82490_)))
    (define gx#syntax->list
      (lambda (_stx82488_) (gx#stx-map1 values _stx82488_)))
    (define gx#stx-car
      (lambda (_stx82485_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82485_)))))
    (define gx#stx-cdr
      (lambda (_stx82482_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82482_)))))
    (define gx#stx-length
      (lambda (_stx82447_)
        (let _lp82449_ ((_rest82451_ _stx82447_) (_n82452_ '0))
          (let* ((_g8245382461_ (gx#stx-e _rest82451_))
                 (_else8245582469_ (lambda () _n82452_))
                 (_K8245782474_
                  (lambda (_rest82472_)
                    (_lp82449_ _rest82472_ (fx+ _n82452_ '1)))))
            (if (##pair? _g8245382461_)
                (let* ((_tl8245982477_ (##cdr _g8245382461_))
                       (_rest82480_ _tl8245982477_))
                  (_K8245782474_ _rest82480_))
                (_else8245582469_))))))
    (define gx#stx-for-each
      (lambda _g82930_
        (let ((_g82929_ (##length _g82930_)))
          (cond ((##fx= _g82929_ 2)
                 (apply (lambda (_f82440_ _stx82441_)
                          (gx#stx-for-each1 _f82440_ _stx82441_))
                        _g82930_))
                ((##fx= _g82929_ 3)
                 (apply (lambda (_f82443_ _xstx82444_ _ystx82445_)
                          (gx#stx-for-each2 _f82443_ _xstx82444_ _ystx82445_))
                        _g82930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82930_))))))
    (define gx#stx-for-each1
      (lambda (_f82390_ _stx82391_)
        (if (procedure? _f82390_)
            '#!void
            (error '"expected procedure" _f82390_))
        (let _lp82393_ ((_rest82395_ _stx82391_))
          (let* ((_g8239682406_ (gx#syntax-e _rest82395_))
                 (_else8239982414_ (lambda () (_f82390_ _rest82395_))))
            (let ((_K8240282428_
                   (lambda (_rest82425_ _hd82426_)
                     (_f82390_ _hd82426_)
                     (_lp82393_ _rest82425_)))
                  (_K8240182419_ (lambda () '#!void)))
              (let ((_try-match8239882422_
                     (lambda ()
                       (if (##null? _g8239682406_)
                           (_K8240182419_)
                           (_else8239982414_)))))
                (if (##pair? _g8239682406_)
                    (let ((_tl8240482433_ (##cdr _g8239682406_))
                          (_hd8240382431_ (##car _g8239682406_)))
                      (let ((_hd82436_ _hd8240382431_)
                            (_rest82438_ _tl8240482433_))
                        (_K8240282428_ _rest82438_ _hd82436_)))
                    (_try-match8239882422_))))))))
    (define gx#stx-for-each2
      (lambda (_f82295_ _xstx82296_ _ystx82297_)
        (if (procedure? _f82295_)
            '#!void
            (error '"expected procedure" _f82295_))
        (let _lp82299_ ((_xrest82301_ _xstx82296_) (_yrest82302_ _ystx82297_))
          (let* ((_g8230382313_ (gx#syntax-e _xrest82301_))
                 (_else8230682321_ (lambda () '#!void)))
            (let ((_K8230982378_
                   (lambda (_xrest82347_ _xhd82348_)
                     (let* ((_g8234982356_ (gx#syntax-e _yrest82302_))
                            (_E8235182360_
                             (lambda ()
                               (error '"No clause matching" _g8234982356_)))
                            (_K8235282366_
                             (lambda (_yrest82363_ _yhd82364_)
                               (_f82295_ _xhd82348_ _yhd82364_)
                               (_lp82299_ _xrest82347_ _yrest82363_))))
                       (if (##pair? _g8234982356_)
                           (let ((_hd8235382369_ (##car _g8234982356_))
                                 (_tl8235482371_ (##cdr _g8234982356_)))
                             (let* ((_yhd82374_ _hd8235382369_)
                                    (_yrest82376_ _tl8235482371_))
                               (_K8235282366_ _yrest82376_ _yhd82374_)))
                           (_E8235182360_)))))
                  (_K8230882341_
                   (lambda ()
                     (let* ((_yrest8232582330_ _yrest82302_)
                            (_E8232782334_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8232582330_)))
                            (_K8232882338_
                             (lambda () (_f82295_ _xrest82301_ _yrest82302_))))
                       (if (not (gx#stx-null? _yrest8232582330_))
                           (_K8232882338_)
                           (_E8232782334_))))))
              (let ((_try-match8230582344_
                     (lambda ()
                       (if (not (null? _g8230382313_))
                           (_K8230882341_)
                           (_else8230682321_)))))
                (if (##pair? _g8230382313_)
                    (let ((_tl8231182383_ (##cdr _g8230382313_))
                          (_hd8231082381_ (##car _g8230382313_)))
                      (let ((_xhd82386_ _hd8231082381_)
                            (_xrest82388_ _tl8231182383_))
                        (_K8230982378_ _xrest82388_ _xhd82386_)))
                    (_try-match8230582344_))))))))
    (define gx#stx-map
      (lambda _g82932_
        (let ((_g82931_ (##length _g82932_)))
          (cond ((##fx= _g82931_ 2)
                 (apply (lambda (_f82288_ _stx82289_)
                          (gx#stx-map1 _f82288_ _stx82289_))
                        _g82932_))
                ((##fx= _g82931_ 3)
                 (apply (lambda (_f82291_ _xstx82292_ _ystx82293_)
                          (gx#stx-map2 _f82291_ _xstx82292_ _ystx82293_))
                        _g82932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82932_))))))
    (define gx#stx-map1
      (lambda (_f82238_ _stx82239_)
        (if (procedure? _f82238_)
            '#!void
            (error '"expected procedure" _f82238_))
        (let _recur82241_ ((_rest82243_ _stx82239_))
          (let* ((_g8224482254_ (gx#syntax-e _rest82243_))
                 (_else8224782262_ (lambda () (_f82238_ _rest82243_))))
            (let ((_K8225082276_
                   (lambda (_rest82273_ _hd82274_)
                     (cons (_f82238_ _hd82274_) (_recur82241_ _rest82273_))))
                  (_K8224982267_ (lambda () '())))
              (let ((_try-match8224682270_
                     (lambda ()
                       (if (##null? _g8224482254_)
                           (_K8224982267_)
                           (_else8224782262_)))))
                (if (##pair? _g8224482254_)
                    (let ((_tl8225282281_ (##cdr _g8224482254_))
                          (_hd8225182279_ (##car _g8224482254_)))
                      (let ((_hd82284_ _hd8225182279_)
                            (_rest82286_ _tl8225282281_))
                        (_K8225082276_ _rest82286_ _hd82284_)))
                    (_try-match8224682270_))))))))
    (define gx#stx-map2
      (lambda (_f82143_ _xstx82144_ _ystx82145_)
        (if (procedure? _f82143_)
            '#!void
            (error '"expected procedure" _f82143_))
        (let _recur82147_ ((_xrest82149_ _xstx82144_)
                           (_yrest82150_ _ystx82145_))
          (let* ((_g8215182161_ (gx#syntax-e _xrest82149_))
                 (_else8215482169_ (lambda () '())))
            (let ((_K8215782226_
                   (lambda (_xrest82195_ _xhd82196_)
                     (let* ((_g8219782204_ (gx#syntax-e _yrest82150_))
                            (_E8219982208_
                             (lambda ()
                               (error '"No clause matching" _g8219782204_)))
                            (_K8220082214_
                             (lambda (_yrest82211_ _yhd82212_)
                               (cons (_f82143_ _xhd82196_ _yhd82212_)
                                     (_recur82147_
                                      _xrest82195_
                                      _yrest82211_)))))
                       (if (##pair? _g8219782204_)
                           (let ((_hd8220182217_ (##car _g8219782204_))
                                 (_tl8220282219_ (##cdr _g8219782204_)))
                             (let* ((_yhd82222_ _hd8220182217_)
                                    (_yrest82224_ _tl8220282219_))
                               (_K8220082214_ _yrest82224_ _yhd82222_)))
                           (_E8219982208_)))))
                  (_K8215682189_
                   (lambda ()
                     (let* ((_yrest8217382178_ _yrest82150_)
                            (_E8217582182_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8217382178_)))
                            (_K8217682186_
                             (lambda () (_f82143_ _xrest82149_ _yrest82150_))))
                       (if (not (gx#stx-null? _yrest8217382178_))
                           (_K8217682186_)
                           (_E8217582182_))))))
              (let ((_try-match8215382192_
                     (lambda ()
                       (if (not (null? _g8215182161_))
                           (_K8215682189_)
                           (_else8215482169_)))))
                (if (##pair? _g8215182161_)
                    (let ((_tl8215982231_ (##cdr _g8215182161_))
                          (_hd8215882229_ (##car _g8215182161_)))
                      (let ((_xhd82234_ _hd8215882229_)
                            (_xrest82236_ _tl8215982231_))
                        (_K8215782226_ _xrest82236_ _xhd82234_)))
                    (_try-match8215382192_))))))))
    (define gx#stx-andmap
      (lambda (_f82093_ _stx82094_)
        (if (procedure? _f82093_)
            '#!void
            (error '"expected procedure" _f82093_))
        (let _lp82096_ ((_rest82098_ _stx82094_))
          (let* ((_g8209982109_ (gx#syntax-e _rest82098_))
                 (_else8210282117_ (lambda () (_f82093_ _rest82098_))))
            (let ((_K8210582131_
                   (lambda (_rest82128_ _hd82129_)
                     (if (_f82093_ _hd82129_) (_lp82096_ _rest82128_) '#f)))
                  (_K8210482122_ (lambda () '#t)))
              (let ((_try-match8210182125_
                     (lambda ()
                       (if (##null? _g8209982109_)
                           (_K8210482122_)
                           (_else8210282117_)))))
                (if (##pair? _g8209982109_)
                    (let ((_tl8210782136_ (##cdr _g8209982109_))
                          (_hd8210682134_ (##car _g8209982109_)))
                      (let ((_hd82139_ _hd8210682134_)
                            (_rest82141_ _tl8210782136_))
                        (_K8210582131_ _rest82141_ _hd82139_)))
                    (_try-match8210182125_))))))))
    (define gx#stx-ormap
      (lambda (_f82040_ _stx82041_)
        (if (procedure? _f82040_)
            '#!void
            (error '"expected procedure" _f82040_))
        (let _lp82043_ ((_rest82045_ _stx82041_))
          (let* ((_g8204682056_ (gx#syntax-e _rest82045_))
                 (_else8204982064_ (lambda () (_f82040_ _rest82045_))))
            (let ((_K8205282081_
                   (lambda (_rest82075_ _hd82076_)
                     (let ((_$e82078_ (_f82040_ _hd82076_)))
                       (if _$e82078_ _$e82078_ (_lp82043_ _rest82075_)))))
                  (_K8205182069_ (lambda () '#f)))
              (let ((_try-match8204882072_
                     (lambda ()
                       (if (##null? _g8204682056_)
                           (_K8205182069_)
                           (_else8204982064_)))))
                (if (##pair? _g8204682056_)
                    (let ((_tl8205482086_ (##cdr _g8204682056_))
                          (_hd8205382084_ (##car _g8204682056_)))
                      (let ((_hd82089_ _hd8205382084_)
                            (_rest82091_ _tl8205482086_))
                        (_K8205282081_ _rest82091_ _hd82089_)))
                    (_try-match8204882072_))))))))
    (define gx#stx-foldl
      (lambda (_f81988_ _iv81989_ _stx81990_)
        (if (procedure? _f81988_)
            '#!void
            (error '"expected procedure" _f81988_))
        (let _lp81992_ ((_r81994_ _iv81989_) (_rest81995_ _stx81990_))
          (let* ((_g8199682006_ (gx#syntax-e _rest81995_))
                 (_else8199982014_
                  (lambda () (_f81988_ _rest81995_ _r81994_))))
            (let ((_K8200282028_
                   (lambda (_rest82025_ _hd82026_)
                     (_lp81992_ (_f81988_ _hd82026_ _r81994_) _rest82025_)))
                  (_K8200182019_ (lambda () _r81994_)))
              (let ((_try-match8199882022_
                     (lambda ()
                       (if (##null? _g8199682006_)
                           (_K8200182019_)
                           (_else8199982014_)))))
                (if (##pair? _g8199682006_)
                    (let ((_tl8200482033_ (##cdr _g8199682006_))
                          (_hd8200382031_ (##car _g8199682006_)))
                      (let ((_hd82036_ _hd8200382031_)
                            (_rest82038_ _tl8200482033_))
                        (_K8200282028_ _rest82038_ _hd82036_)))
                    (_try-match8199882022_))))))))
    (define gx#stx-foldr
      (lambda (_f81937_ _iv81938_ _stx81939_)
        (if (procedure? _f81937_)
            '#!void
            (error '"expected procedure" _f81937_))
        (let _recur81941_ ((_rest81943_ _stx81939_))
          (let* ((_g8194481954_ (gx#syntax-e _rest81943_))
                 (_else8194781962_
                  (lambda () (_f81937_ _rest81943_ _iv81938_))))
            (let ((_K8195081976_
                   (lambda (_rest81973_ _hd81974_)
                     (_f81937_ _hd81974_ (_recur81941_ _rest81973_))))
                  (_K8194981967_ (lambda () _iv81938_)))
              (let ((_try-match8194681970_
                     (lambda ()
                       (if (##null? _g8194481954_)
                           (_K8194981967_)
                           (_else8194781962_)))))
                (if (##pair? _g8194481954_)
                    (let ((_tl8195281981_ (##cdr _g8194481954_))
                          (_hd8195181979_ (##car _g8194481954_)))
                      (let ((_hd81984_ _hd8195181979_)
                            (_rest81986_ _tl8195281981_))
                        (_K8195081976_ _rest81986_ _hd81984_)))
                    (_try-match8194681970_))))))))
    (define gx#stx-reverse
      (lambda (_stx81935_) (gx#stx-foldl cons '() _stx81935_)))
    (define gx#stx-last
      (lambda (_stx81896_)
        (let _lp81898_ ((_rest81900_ _stx81896_))
          (let* ((_g8190181909_ (gx#syntax-e _rest81900_))
                 (_else8190381917_ (lambda () _rest81900_))
                 (_K8190581923_
                  (lambda (_rest81920_ _hd81921_)
                    (if (gx#stx-null? _rest81920_)
                        _hd81921_
                        (_lp81898_ _rest81920_)))))
            (if (##pair? _g8190181909_)
                (let ((_hd8190681926_ (##car _g8190181909_))
                      (_tl8190781928_ (##cdr _g8190181909_)))
                  (let* ((_hd81931_ _hd8190681926_)
                         (_rest81933_ _tl8190781928_))
                    (_K8190581923_ _rest81933_ _hd81931_)))
                (_else8190381917_))))))
    (define gx#stx-last-pair
      (lambda (_stx81867_)
        (let _lp81869_ ((_hd81871_ _stx81867_))
          (let* ((_g8187281879_ (gx#syntax-e _hd81871_))
                 (_E8187481883_
                  (lambda () (error '"No clause matching" _g8187281879_)))
                 (_K8187581888_
                  (lambda (_rest81886_)
                    (if (gx#stx-pair? _rest81886_)
                        (_lp81869_ _rest81886_)
                        _hd81871_))))
            (if (##pair? _g8187281879_)
                (let* ((_tl8187781891_ (##cdr _g8187281879_))
                       (_rest81894_ _tl8187781891_))
                  (_K8187581888_ _rest81894_))
                (_E8187481883_))))))
    (define gx#stx-list-tail
      (lambda (_stx81836_ _k81837_)
        (let _lp81839_ ((_rest81841_ _stx81836_) (_k81842_ _k81837_))
          (if (fxpositive? _k81842_)
              (let* ((_g8184381850_ (gx#syntax-e _rest81841_))
                     (_E8184581854_
                      (lambda () (error '"No clause matching" _g8184381850_)))
                     (_K8184681859_
                      (lambda (_rest81857_)
                        (_lp81839_ _rest81857_ (fx- _k81842_ '1)))))
                (if (##pair? _g8184381850_)
                    (let* ((_tl8184881862_ (##cdr _g8184381850_))
                           (_rest81865_ _tl8184881862_))
                      (_K8184681859_ _rest81865_))
                    (_E8184581854_)))
              _rest81841_))))
    (define gx#stx-list-ref
      (lambda (_stx81833_ _k81834_)
        (gx#stx-car (gx#stx-list-tail _stx81833_ _k81834_))))
    (define gx#stx-plist?__%
      (lambda (_stx81745_ _key?81746_)
        (if (procedure? _key?81746_)
            '#!void
            (error '"expected procedure" _key?81746_))
        (let _lp81748_ ((_rest81750_ _stx81745_))
          (let* ((_g8175181761_ (gx#stx-e _rest81750_))
                 (_else8175481769_ (lambda () '#f)))
            (let ((_K8175781811_
                   (lambda (_rest81780_ _hd81781_)
                     (if (_key?81746_ _hd81781_)
                         (let* ((_g8178281790_ (gx#stx-e _rest81780_))
                                (_else8178481798_ (lambda () '#f))
                                (_K8178681803_
                                 (lambda (_rest81801_)
                                   (_lp81748_ _rest81801_))))
                           (if (##pair? _g8178281790_)
                               (let* ((_tl8178881806_ (##cdr _g8178281790_))
                                      (_rest81809_ _tl8178881806_))
                                 (_lp81748_ _rest81809_))
                               (_else8178481798_)))
                         '#f)))
                  (_K8175681774_ (lambda () '#t)))
              (let ((_try-match8175381777_
                     (lambda ()
                       (if (##null? _g8175181761_)
                           (_K8175681774_)
                           (_else8175481769_)))))
                (if (##pair? _g8175181761_)
                    (let ((_tl8175981816_ (##cdr _g8175181761_))
                          (_hd8175881814_ (##car _g8175181761_)))
                      (let ((_hd81819_ _hd8175881814_)
                            (_rest81821_ _tl8175981816_))
                        (_K8175781811_ _rest81821_ _hd81819_)))
                    (_try-match8175381777_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81826_)
        (let ((_key?81828_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81826_ _key?81828_))))
    (define gx#stx-plist?
      (lambda _g82934_
        (let ((_g82933_ (##length _g82934_)))
          (cond ((##fx= _g82933_ 1)
                 (apply (lambda (_stx81826_) (gx#stx-plist?__0 _stx81826_))
                        _g82934_))
                ((##fx= _g82933_ 2)
                 (apply (lambda (_stx81830_ _key?81831_)
                          (gx#stx-plist?__% _stx81830_ _key?81831_))
                        _g82934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82934_))))))
    (define gx#stx-getq__%
      (lambda (_key81663_ _stx81664_ _key=?81665_)
        (if (procedure? _key=?81665_)
            '#!void
            (error '"expected procedure" _key=?81665_))
        (let _lp81667_ ((_rest81669_ _stx81664_))
          (let* ((_g8167081678_ (gx#syntax-e _rest81669_))
                 (_else8167281686_ (lambda () '#f))
                 (_K8167481720_
                  (lambda (_rest81689_ _hd81690_)
                    (let* ((_g8169181698_ (gx#syntax-e _rest81689_))
                           (_E8169381702_
                            (lambda ()
                              (error '"No clause matching" _g8169181698_)))
                           (_K8169481708_
                            (lambda (_rest81705_ _val81706_)
                              (if (_key=?81665_ _hd81690_ _key81663_)
                                  _val81706_
                                  (_lp81667_ _rest81705_)))))
                      (if (##pair? _g8169181698_)
                          (let ((_hd8169581711_ (##car _g8169181698_))
                                (_tl8169681713_ (##cdr _g8169181698_)))
                            (let* ((_val81716_ _hd8169581711_)
                                   (_rest81718_ _tl8169681713_))
                              (_K8169481708_ _rest81718_ _val81716_)))
                          (_E8169381702_))))))
            (if (##pair? _g8167081678_)
                (let ((_hd8167581723_ (##car _g8167081678_))
                      (_tl8167681725_ (##cdr _g8167081678_)))
                  (let* ((_hd81728_ _hd8167581723_)
                         (_rest81730_ _tl8167681725_))
                    (_K8167481720_ _rest81730_ _hd81728_)))
                (_else8167281686_))))))
    (define gx#stx-getq__0
      (lambda (_key81735_ _stx81736_)
        (let ((_key=?81738_ gx#stx-eq?))
          (gx#stx-getq__% _key81735_ _stx81736_ _key=?81738_))))
    (define gx#stx-getq
      (lambda _g82936_
        (let ((_g82935_ (##length _g82936_)))
          (cond ((##fx= _g82935_ 2)
                 (apply (lambda (_key81735_ _stx81736_)
                          (gx#stx-getq__0 _key81735_ _stx81736_))
                        _g82936_))
                ((##fx= _g82935_ 3)
                 (apply (lambda (_key81740_ _stx81741_ _key=?81742_)
                          (gx#stx-getq__% _key81740_ _stx81741_ _key=?81742_))
                        _g82936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82936_))))))))
