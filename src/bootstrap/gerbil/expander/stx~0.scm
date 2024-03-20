(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710954836)
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
      (lambda _$args82824_
        (apply make-instance gx#identifier-wrap::t _$args82824_)))
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
      (lambda _$args82821_
        (apply make-instance gx#syntax-wrap::t _$args82821_)))
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
      (lambda _$args82818_
        (apply make-instance gx#syntax-quote::t _$args82818_)))
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
      (lambda (_stx82816_) (symbol? (gx#stx-e _stx82816_))))
    (define gx#identifier-quote?
      (lambda (_stx82814_)
        (if (##structure-direct-instance-of? _stx82814_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82814_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82812_)
        (if (##structure-direct-instance-of? _stx82812_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82812_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82812_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82810_)
        (if (##structure-direct-instance-of? _stx82810_ 'gx#syntax-quote::t)
            _stx82810_
            (if (##structure-direct-instance-of? _stx82810_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82810_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82793_)
        (if (##structure-direct-instance-of? _stx82793_ 'gx#syntax-wrap::t)
            (let _lp82795_ ((_e82797_
                             (##unchecked-structure-ref
                              _stx82793_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82798_
                             (cons (##unchecked-structure-ref
                                    _stx82793_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82797_)
                  (let ((_$e82800_ (##type-id (##structure-type _e82797_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82800_)
                        (_lp82795_
                         (##unchecked-structure-ref _e82797_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82797_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82798_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82800_)
                                (eq? 'gx#identifier-wrap::t _$e82800_))
                            (##unchecked-structure-ref
                             _e82797_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82800_)
                                (_lp82795_
                                 (##unchecked-structure-ref
                                  _e82797_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82798_)
                                _e82797_))))
                  (if (null? _marks82798_)
                      _e82797_
                      (if (pair? _e82797_)
                          (cons (gx#stx-wrap (car _e82797_) _marks82798_)
                                (gx#stx-wrap (cdr _e82797_) _marks82798_))
                          (if (vector? _e82797_)
                              (vector-map
                               (lambda (_g8280582807_)
                                 (gx#stx-wrap _g8280582807_ _marks82798_))
                               _e82797_)
                              (if (box? _e82797_)
                                  (box (gx#stx-wrap
                                        (unbox _e82797_)
                                        _marks82798_))
                                  _e82797_))))))
            (if (##structure-instance-of? _stx82793_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82793_ '1 gx#AST::t '#f)
                _stx82793_))))
    (define gx#syntax->datum
      (lambda (_stx82791_)
        (if (##structure-instance-of? _stx82791_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82791_ '1 gx#AST::t '#f))
            (if (pair? _stx82791_)
                (cons (gx#syntax->datum (car _stx82791_))
                      (gx#syntax->datum (cdr _stx82791_)))
                (if (vector? _stx82791_)
                    (vector-map gx#syntax->datum _stx82791_)
                    (if (box? _stx82791_)
                        (box (gx#syntax->datum (unbox _stx82791_)))
                        _stx82791_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82734_ _datum82735_ _src82736_ _quote?82737_)
        (letrec ((_wrap-datum82739_
                  (lambda (_e82763_ _marks82764_)
                    (_wrap-inner82741_
                     _e82763_
                     (lambda (_g8276582767_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8276582767_
                        _src82736_
                        _marks82764_)))))
                 (_wrap-quote82740_
                  (lambda (_e82755_ _ctx82756_ _marks82757_)
                    (_wrap-inner82741_
                     _e82755_
                     (lambda (_g8275882760_)
                       (##structure
                        gx#syntax-quote::t
                        _g8275882760_
                        _src82736_
                        _ctx82756_
                        _marks82757_)))))
                 (_wrap-inner82741_
                  (lambda (_e82748_ _wrap-e82749_)
                    (let _recur82751_ ((_e82753_ _e82748_))
                      (if (symbol? _e82753_)
                          (_wrap-e82749_ _e82753_)
                          (if (pair? _e82753_)
                              (cons (_recur82751_ (car _e82753_))
                                    (_recur82751_ (cdr _e82753_)))
                              (if (vector? _e82753_)
                                  (vector-map _recur82751_ _e82753_)
                                  (if (box? _e82753_)
                                      (box (_recur82751_ (unbox _e82753_)))
                                      _e82753_)))))))
                 (_wrap-outer82742_
                  (lambda (_e82746_)
                    (if (##structure-instance-of? _e82746_ 'gerbil#AST::t)
                        _e82746_
                        (##structure gx#AST::t _e82746_ _src82736_)))))
          (if (##structure-instance-of? _datum82735_ 'gerbil#AST::t)
              _datum82735_
              (if (not _stx82734_)
                  (##structure gx#AST::t _datum82735_ _src82736_)
                  (if (gx#identifier? _stx82734_)
                      (let ((_stx82744_ (gx#stx-unwrap__0 _stx82734_)))
                        (_wrap-outer82742_
                         (if (##structure-direct-instance-of?
                              _stx82744_
                              'gx#syntax-quote::t)
                             (if _quote?82737_
                                 (_wrap-quote82740_
                                  _datum82735_
                                  (##unchecked-structure-ref
                                   _stx82744_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82744_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82739_
                                  _datum82735_
                                  (##unchecked-structure-ref
                                   _stx82744_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82739_
                              _datum82735_
                              (##unchecked-structure-ref
                               _stx82744_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82734_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82773_ _datum82774_)
        (let* ((_src82776_ '#f) (_quote?82778_ '#t))
          (gx#datum->syntax__%
           _stx82773_
           _datum82774_
           _src82776_
           _quote?82778_))))
    (define gx#datum->syntax__1
      (lambda (_stx82780_ _datum82781_ _src82782_)
        (let ((_quote?82784_ '#t))
          (gx#datum->syntax__%
           _stx82780_
           _datum82781_
           _src82782_
           _quote?82784_))))
    (define gx#datum->syntax
      (lambda _g82905_
        (let ((_g82904_ (##length _g82905_)))
          (cond ((##fx= _g82904_ 2)
                 (apply (lambda (_stx82773_ _datum82774_)
                          (gx#datum->syntax__0 _stx82773_ _datum82774_))
                        _g82905_))
                ((##fx= _g82904_ 3)
                 (apply (lambda (_stx82780_ _datum82781_ _src82782_)
                          (gx#datum->syntax__1
                           _stx82780_
                           _datum82781_
                           _src82782_))
                        _g82905_))
                ((##fx= _g82904_ 4)
                 (apply (lambda (_stx82786_
                                 _datum82787_
                                 _src82788_
                                 _quote?82789_)
                          (gx#datum->syntax__%
                           _stx82786_
                           _datum82787_
                           _src82788_
                           _quote?82789_))
                        _g82905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82905_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82710_ _marks82711_)
        (let _lp82713_ ((_e82715_ _stx82710_)
                        (_marks82716_ _marks82711_)
                        (_src82717_ (gx#stx-source _stx82710_)))
          (if (##structure-direct-instance-of? _e82715_ 'gx#syntax-wrap::t)
              (_lp82713_
               (##unchecked-structure-ref _e82715_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82715_ '3 gx#syntax-wrap::t '#f)
                _marks82716_)
               (##unchecked-structure-ref _e82715_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82715_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82716_)
                      _e82715_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82715_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82715_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82715_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82716_)))
                  (if (##structure-direct-instance-of?
                       _e82715_
                       'gx#syntax-quote::t)
                      _e82715_
                      (if (##structure-instance-of? _e82715_ 'gerbil#AST::t)
                          (_lp82713_
                           (##unchecked-structure-ref
                            _e82715_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82716_
                           (##unchecked-structure-ref
                            _e82715_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82715_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82715_
                               _src82717_
                               (reverse _marks82716_))
                              (if (null? _marks82716_)
                                  _e82715_
                                  (if (pair? _e82715_)
                                      (cons (gx#stx-wrap
                                             (car _e82715_)
                                             _marks82716_)
                                            (gx#stx-wrap
                                             (cdr _e82715_)
                                             _marks82716_))
                                      (if (vector? _e82715_)
                                          (vector-map
                                           (lambda (_g8271882720_)
                                             (gx#stx-wrap
                                              _g8271882720_
                                              _marks82716_))
                                           _e82715_)
                                          (if (box? _e82715_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82715_)
                                                    _marks82716_))
                                              _e82715_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82726_)
        (let ((_marks82728_ '())) (gx#stx-unwrap__% _stx82726_ _marks82728_))))
    (define gx#stx-unwrap
      (lambda _g82907_
        (let ((_g82906_ (##length _g82907_)))
          (cond ((##fx= _g82906_ 1)
                 (apply (lambda (_stx82726_) (gx#stx-unwrap__0 _stx82726_))
                        _g82907_))
                ((##fx= _g82906_ 2)
                 (apply (lambda (_stx82730_ _marks82731_)
                          (gx#stx-unwrap__% _stx82730_ _marks82731_))
                        _g82907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82907_))))))
    (define gx#stx-wrap
      (lambda (_stx82703_ _marks82704_)
        (foldl1 (lambda (_mark82706_ _stx82707_)
                  (gx#stx-apply-mark _stx82707_ _mark82706_))
                _stx82703_
                _marks82704_)))
    (define gx#stx-rewrap
      (lambda (_stx82697_ _marks82698_)
        (foldr1 (lambda (_mark82700_ _stx82701_)
                  (gx#stx-apply-mark _stx82701_ _mark82700_))
                _stx82697_
                _marks82698_)))
    (define gx#stx-apply-mark
      (lambda (_stx82694_ _mark82695_)
        (if (##structure-direct-instance-of? _stx82694_ 'gx#syntax-quote::t)
            _stx82694_
            (if (and (##structure-direct-instance-of?
                      _stx82694_
                      'gx#syntax-wrap::t)
                     (eq? _mark82695_
                          (##unchecked-structure-ref
                           _stx82694_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82694_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82694_
                 (gx#stx-source _stx82694_)
                 _mark82695_)))))
    (define gx#apply-mark
      (lambda (_mark82658_ _marks82659_)
        (let* ((_marks8266082668_ _marks82659_)
               (_else8266282676_ (lambda () (cons _mark82658_ _marks82659_)))
               (_K8266482682_
                (lambda (_rest82679_ _hd82680_)
                  (if (eq? _mark82658_ _hd82680_)
                      _rest82679_
                      (cons _mark82658_ _marks82659_)))))
          (if (##pair? _marks8266082668_)
              (let ((_hd8266582685_ (##car _marks8266082668_))
                    (_tl8266682687_ (##cdr _marks8266082668_)))
                (let* ((_hd82690_ _hd8266582685_) (_rest82692_ _tl8266682687_))
                  (_K8266482682_ _rest82692_ _hd82690_)))
              (_else8266282676_)))))
    (define gx#stx-e
      (lambda (_stx82656_)
        (if (##structure-direct-instance-of? _stx82656_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82656_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82656_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82656_ '1 gx#AST::t '#f)
                _stx82656_))))
    (define gx#stx-source
      (lambda (_stx82654_)
        (if (##structure-instance-of? _stx82654_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82654_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82648_ _src82649_)
        (if (or (##structure-instance-of? _stx82648_ 'gerbil#AST::t)
                (not _src82649_))
            _stx82648_
            (##structure gx#AST::t _stx82648_ _src82649_))))
    (define gx#stx-datum?
      (lambda (_stx82646_) (gx#self-quoting? (gx#stx-e _stx82646_))))
    (define gx#self-quoting?
      (lambda (_x82629_)
        (let ((_$e82631_ (immediate? _x82629_)))
          (if _$e82631_
              _$e82631_
              (let ((_$e82634_ (number? _x82629_)))
                (if _$e82634_
                    _$e82634_
                    (let ((_$e82637_ (keyword? _x82629_)))
                      (if _$e82637_
                          _$e82637_
                          (let ((_$e82640_ (string? _x82629_)))
                            (if _$e82640_
                                _$e82640_
                                (let ((_$e82643_ (vector? _x82629_)))
                                  (if _$e82643_
                                      _$e82643_
                                      (u8vector? _x82629_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82627_) (boolean? (gx#stx-e _e82627_))))
    (define gx#stx-keyword? (lambda (_e82625_) (keyword? (gx#stx-e _e82625_))))
    (define gx#stx-char? (lambda (_e82623_) (char? (gx#stx-e _e82623_))))
    (define gx#stx-number? (lambda (_e82621_) (number? (gx#stx-e _e82621_))))
    (define gx#stx-fixnum? (lambda (_e82619_) (fixnum? (gx#stx-e _e82619_))))
    (define gx#stx-string? (lambda (_e82617_) (string? (gx#stx-e _e82617_))))
    (define gx#stx-null? (lambda (_e82615_) (null? (gx#stx-e _e82615_))))
    (define gx#stx-pair? (lambda (_e82613_) (pair? (gx#stx-e _e82613_))))
    (define gx#stx-list?
      (lambda (_e82575_)
        (let* ((_g8257682585_ (gx#stx-e _e82575_))
               (_E8257982589_
                (lambda () (error '"No clause matching" _g8257682585_))))
          (let ((_K8258182605_
                 (lambda (_rest82603_) (gx#stx-list? _rest82603_)))
                (_K8258082595_ (lambda (_tail82593_) (null? _tail82593_))))
            (if (##pair? _g8257682585_)
                (let* ((_tl8258382608_ (##cdr _g8257682585_))
                       (_rest82611_ _tl8258382608_))
                  (gx#stx-list? _rest82611_))
                (let ((_tail82598_ _g8257682585_)) (null? _tail82598_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82568_)
        (let* ((_e82570_ (gx#stx-e _e82568_)) (_$e82572_ (pair? _e82570_)))
          (if _$e82572_ _$e82572_ (null? _e82570_)))))
    (define gx#stx-vector? (lambda (_e82566_) (vector? (gx#stx-e _e82566_))))
    (define gx#stx-box? (lambda (_e82564_) (box? (gx#stx-e _e82564_))))
    (define gx#stx-eq?
      (lambda (_x82561_ _y82562_)
        (eq? (gx#stx-e _x82561_) (gx#stx-e _y82562_))))
    (define gx#stx-eqv?
      (lambda (_x82558_ _y82559_)
        (eqv? (gx#stx-e _x82558_) (gx#stx-e _y82559_))))
    (define gx#stx-equal?
      (lambda (_x82555_ _y82556_)
        (equal? (gx#stx-e _x82555_) (gx#stx-e _y82556_))))
    (define gx#stx-false? (lambda (_x82553_) (not (gx#stx-e _x82553_))))
    (define gx#stx-identifier
      (lambda (_template82550_ . _args82551_)
        (gx#datum->syntax__1
         _template82550_
         (apply make-symbol (gx#syntax->datum _args82551_))
         (gx#stx-source _template82550_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82548_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82548_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82546_)
        (if (##structure-direct-instance-of? _stx82546_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82546_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82546_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82546_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82546_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82542_)
        (let ((_stx82544_ (gx#stx-unwrap__0 _stx82542_)))
          (if (gx#identifier-quote? _stx82544_)
              (##unchecked-structure-ref _stx82544_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82497_)
        (let* ((_g8249882508_ (gx#stx-e _stx82497_))
               (_else8250182516_ (lambda () '#f)))
          (let ((_K8250482530_
                 (lambda (_rest82527_ _hd82528_)
                   (if (gx#identifier? _hd82528_)
                       (gx#identifier-list? _rest82527_)
                       '#f)))
                (_K8250382521_ (lambda () '#t)))
            (let ((_try-match8250082524_
                   (lambda ()
                     (if (##null? _g8249882508_)
                         (_K8250382521_)
                         (_else8250182516_)))))
              (if (##pair? _g8249882508_)
                  (let ((_tl8250682535_ (##cdr _g8249882508_))
                        (_hd8250582533_ (##car _g8249882508_)))
                    (let ((_hd82538_ _hd8250582533_)
                          (_rest82540_ _tl8250682535_))
                      (_K8250482530_ _rest82540_ _hd82538_)))
                  (_try-match8250082524_)))))))
    (define gx#genident__%
      (lambda (_e82474_ _src82475_)
        (gx#stx-wrap-source
         (gensym (let ((_e82477_ (gx#stx-e _e82474_)))
                   (if (interned-symbol? _e82477_) _e82477_ 'g)))
         (let ((_$e82479_ (gx#stx-source _e82474_)))
           (if _$e82479_ _$e82479_ _src82475_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82486_ 'g) (_src82488_ '#f))
          (gx#genident__% _e82486_ _src82488_))))
    (define gx#genident__1
      (lambda (_e82490_)
        (let ((_src82492_ '#f)) (gx#genident__% _e82490_ _src82492_))))
    (define gx#genident
      (lambda _g82909_
        (let ((_g82908_ (##length _g82909_)))
          (cond ((##fx= _g82908_ 0)
                 (apply (lambda () (gx#genident__0)) _g82909_))
                ((##fx= _g82908_ 1)
                 (apply (lambda (_e82490_) (gx#genident__1 _e82490_))
                        _g82909_))
                ((##fx= _g82908_ 2)
                 (apply (lambda (_e82494_ _src82495_)
                          (gx#genident__% _e82494_ _src82495_))
                        _g82909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82909_))))))
    (define gx#gentemps
      (lambda (_stx-lst82471_) (gx#stx-map1 gx#genident _stx-lst82471_)))
    (define gx#syntax->list
      (lambda (_stx82469_) (gx#stx-map1 values _stx82469_)))
    (define gx#stx-car
      (lambda (_stx82466_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82466_)))))
    (define gx#stx-cdr
      (lambda (_stx82463_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82463_)))))
    (define gx#stx-length
      (lambda (_stx82428_)
        (let _lp82430_ ((_rest82432_ _stx82428_) (_n82433_ '0))
          (let* ((_g8243482442_ (gx#stx-e _rest82432_))
                 (_else8243682450_ (lambda () _n82433_))
                 (_K8243882455_
                  (lambda (_rest82453_)
                    (_lp82430_ _rest82453_ (fx+ _n82433_ '1)))))
            (if (##pair? _g8243482442_)
                (let* ((_tl8244082458_ (##cdr _g8243482442_))
                       (_rest82461_ _tl8244082458_))
                  (_K8243882455_ _rest82461_))
                (_else8243682450_))))))
    (define gx#stx-for-each
      (lambda _g82911_
        (let ((_g82910_ (##length _g82911_)))
          (cond ((##fx= _g82910_ 2)
                 (apply (lambda (_f82421_ _stx82422_)
                          (gx#stx-for-each1 _f82421_ _stx82422_))
                        _g82911_))
                ((##fx= _g82910_ 3)
                 (apply (lambda (_f82424_ _xstx82425_ _ystx82426_)
                          (gx#stx-for-each2 _f82424_ _xstx82425_ _ystx82426_))
                        _g82911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82911_))))))
    (define gx#stx-for-each1
      (lambda (_f82371_ _stx82372_)
        (if (procedure? _f82371_)
            '#!void
            (error '"expected procedure" _f82371_))
        (let _lp82374_ ((_rest82376_ _stx82372_))
          (let* ((_g8237782387_ (gx#syntax-e _rest82376_))
                 (_else8238082395_ (lambda () (_f82371_ _rest82376_))))
            (let ((_K8238382409_
                   (lambda (_rest82406_ _hd82407_)
                     (_f82371_ _hd82407_)
                     (_lp82374_ _rest82406_)))
                  (_K8238282400_ (lambda () '#!void)))
              (let ((_try-match8237982403_
                     (lambda ()
                       (if (##null? _g8237782387_)
                           (_K8238282400_)
                           (_else8238082395_)))))
                (if (##pair? _g8237782387_)
                    (let ((_tl8238582414_ (##cdr _g8237782387_))
                          (_hd8238482412_ (##car _g8237782387_)))
                      (let ((_hd82417_ _hd8238482412_)
                            (_rest82419_ _tl8238582414_))
                        (_K8238382409_ _rest82419_ _hd82417_)))
                    (_try-match8237982403_))))))))
    (define gx#stx-for-each2
      (lambda (_f82276_ _xstx82277_ _ystx82278_)
        (if (procedure? _f82276_)
            '#!void
            (error '"expected procedure" _f82276_))
        (let _lp82280_ ((_xrest82282_ _xstx82277_) (_yrest82283_ _ystx82278_))
          (let* ((_g8228482294_ (gx#syntax-e _xrest82282_))
                 (_else8228782302_ (lambda () '#!void)))
            (let ((_K8229082359_
                   (lambda (_xrest82328_ _xhd82329_)
                     (let* ((_g8233082337_ (gx#syntax-e _yrest82283_))
                            (_E8233282341_
                             (lambda ()
                               (error '"No clause matching" _g8233082337_)))
                            (_K8233382347_
                             (lambda (_yrest82344_ _yhd82345_)
                               (_f82276_ _xhd82329_ _yhd82345_)
                               (_lp82280_ _xrest82328_ _yrest82344_))))
                       (if (##pair? _g8233082337_)
                           (let ((_hd8233482350_ (##car _g8233082337_))
                                 (_tl8233582352_ (##cdr _g8233082337_)))
                             (let* ((_yhd82355_ _hd8233482350_)
                                    (_yrest82357_ _tl8233582352_))
                               (_K8233382347_ _yrest82357_ _yhd82355_)))
                           (_E8233282341_)))))
                  (_K8228982322_
                   (lambda ()
                     (let* ((_yrest8230682311_ _yrest82283_)
                            (_E8230882315_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8230682311_)))
                            (_K8230982319_
                             (lambda () (_f82276_ _xrest82282_ _yrest82283_))))
                       (if (not (gx#stx-null? _yrest8230682311_))
                           (_K8230982319_)
                           (_E8230882315_))))))
              (let ((_try-match8228682325_
                     (lambda ()
                       (if (not (null? _g8228482294_))
                           (_K8228982322_)
                           (_else8228782302_)))))
                (if (##pair? _g8228482294_)
                    (let ((_tl8229282364_ (##cdr _g8228482294_))
                          (_hd8229182362_ (##car _g8228482294_)))
                      (let ((_xhd82367_ _hd8229182362_)
                            (_xrest82369_ _tl8229282364_))
                        (_K8229082359_ _xrest82369_ _xhd82367_)))
                    (_try-match8228682325_))))))))
    (define gx#stx-map
      (lambda _g82913_
        (let ((_g82912_ (##length _g82913_)))
          (cond ((##fx= _g82912_ 2)
                 (apply (lambda (_f82269_ _stx82270_)
                          (gx#stx-map1 _f82269_ _stx82270_))
                        _g82913_))
                ((##fx= _g82912_ 3)
                 (apply (lambda (_f82272_ _xstx82273_ _ystx82274_)
                          (gx#stx-map2 _f82272_ _xstx82273_ _ystx82274_))
                        _g82913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82913_))))))
    (define gx#stx-map1
      (lambda (_f82219_ _stx82220_)
        (if (procedure? _f82219_)
            '#!void
            (error '"expected procedure" _f82219_))
        (let _recur82222_ ((_rest82224_ _stx82220_))
          (let* ((_g8222582235_ (gx#syntax-e _rest82224_))
                 (_else8222882243_ (lambda () (_f82219_ _rest82224_))))
            (let ((_K8223182257_
                   (lambda (_rest82254_ _hd82255_)
                     (cons (_f82219_ _hd82255_) (_recur82222_ _rest82254_))))
                  (_K8223082248_ (lambda () '())))
              (let ((_try-match8222782251_
                     (lambda ()
                       (if (##null? _g8222582235_)
                           (_K8223082248_)
                           (_else8222882243_)))))
                (if (##pair? _g8222582235_)
                    (let ((_tl8223382262_ (##cdr _g8222582235_))
                          (_hd8223282260_ (##car _g8222582235_)))
                      (let ((_hd82265_ _hd8223282260_)
                            (_rest82267_ _tl8223382262_))
                        (_K8223182257_ _rest82267_ _hd82265_)))
                    (_try-match8222782251_))))))))
    (define gx#stx-map2
      (lambda (_f82124_ _xstx82125_ _ystx82126_)
        (if (procedure? _f82124_)
            '#!void
            (error '"expected procedure" _f82124_))
        (let _recur82128_ ((_xrest82130_ _xstx82125_)
                           (_yrest82131_ _ystx82126_))
          (let* ((_g8213282142_ (gx#syntax-e _xrest82130_))
                 (_else8213582150_ (lambda () '())))
            (let ((_K8213882207_
                   (lambda (_xrest82176_ _xhd82177_)
                     (let* ((_g8217882185_ (gx#syntax-e _yrest82131_))
                            (_E8218082189_
                             (lambda ()
                               (error '"No clause matching" _g8217882185_)))
                            (_K8218182195_
                             (lambda (_yrest82192_ _yhd82193_)
                               (cons (_f82124_ _xhd82177_ _yhd82193_)
                                     (_recur82128_
                                      _xrest82176_
                                      _yrest82192_)))))
                       (if (##pair? _g8217882185_)
                           (let ((_hd8218282198_ (##car _g8217882185_))
                                 (_tl8218382200_ (##cdr _g8217882185_)))
                             (let* ((_yhd82203_ _hd8218282198_)
                                    (_yrest82205_ _tl8218382200_))
                               (_K8218182195_ _yrest82205_ _yhd82203_)))
                           (_E8218082189_)))))
                  (_K8213782170_
                   (lambda ()
                     (let* ((_yrest8215482159_ _yrest82131_)
                            (_E8215682163_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8215482159_)))
                            (_K8215782167_
                             (lambda () (_f82124_ _xrest82130_ _yrest82131_))))
                       (if (not (gx#stx-null? _yrest8215482159_))
                           (_K8215782167_)
                           (_E8215682163_))))))
              (let ((_try-match8213482173_
                     (lambda ()
                       (if (not (null? _g8213282142_))
                           (_K8213782170_)
                           (_else8213582150_)))))
                (if (##pair? _g8213282142_)
                    (let ((_tl8214082212_ (##cdr _g8213282142_))
                          (_hd8213982210_ (##car _g8213282142_)))
                      (let ((_xhd82215_ _hd8213982210_)
                            (_xrest82217_ _tl8214082212_))
                        (_K8213882207_ _xrest82217_ _xhd82215_)))
                    (_try-match8213482173_))))))))
    (define gx#stx-andmap
      (lambda (_f82074_ _stx82075_)
        (if (procedure? _f82074_)
            '#!void
            (error '"expected procedure" _f82074_))
        (let _lp82077_ ((_rest82079_ _stx82075_))
          (let* ((_g8208082090_ (gx#syntax-e _rest82079_))
                 (_else8208382098_ (lambda () (_f82074_ _rest82079_))))
            (let ((_K8208682112_
                   (lambda (_rest82109_ _hd82110_)
                     (if (_f82074_ _hd82110_) (_lp82077_ _rest82109_) '#f)))
                  (_K8208582103_ (lambda () '#t)))
              (let ((_try-match8208282106_
                     (lambda ()
                       (if (##null? _g8208082090_)
                           (_K8208582103_)
                           (_else8208382098_)))))
                (if (##pair? _g8208082090_)
                    (let ((_tl8208882117_ (##cdr _g8208082090_))
                          (_hd8208782115_ (##car _g8208082090_)))
                      (let ((_hd82120_ _hd8208782115_)
                            (_rest82122_ _tl8208882117_))
                        (_K8208682112_ _rest82122_ _hd82120_)))
                    (_try-match8208282106_))))))))
    (define gx#stx-ormap
      (lambda (_f82021_ _stx82022_)
        (if (procedure? _f82021_)
            '#!void
            (error '"expected procedure" _f82021_))
        (let _lp82024_ ((_rest82026_ _stx82022_))
          (let* ((_g8202782037_ (gx#syntax-e _rest82026_))
                 (_else8203082045_ (lambda () (_f82021_ _rest82026_))))
            (let ((_K8203382062_
                   (lambda (_rest82056_ _hd82057_)
                     (let ((_$e82059_ (_f82021_ _hd82057_)))
                       (if _$e82059_ _$e82059_ (_lp82024_ _rest82056_)))))
                  (_K8203282050_ (lambda () '#f)))
              (let ((_try-match8202982053_
                     (lambda ()
                       (if (##null? _g8202782037_)
                           (_K8203282050_)
                           (_else8203082045_)))))
                (if (##pair? _g8202782037_)
                    (let ((_tl8203582067_ (##cdr _g8202782037_))
                          (_hd8203482065_ (##car _g8202782037_)))
                      (let ((_hd82070_ _hd8203482065_)
                            (_rest82072_ _tl8203582067_))
                        (_K8203382062_ _rest82072_ _hd82070_)))
                    (_try-match8202982053_))))))))
    (define gx#stx-foldl
      (lambda (_f81969_ _iv81970_ _stx81971_)
        (if (procedure? _f81969_)
            '#!void
            (error '"expected procedure" _f81969_))
        (let _lp81973_ ((_r81975_ _iv81970_) (_rest81976_ _stx81971_))
          (let* ((_g8197781987_ (gx#syntax-e _rest81976_))
                 (_else8198081995_
                  (lambda () (_f81969_ _rest81976_ _r81975_))))
            (let ((_K8198382009_
                   (lambda (_rest82006_ _hd82007_)
                     (_lp81973_ (_f81969_ _hd82007_ _r81975_) _rest82006_)))
                  (_K8198282000_ (lambda () _r81975_)))
              (let ((_try-match8197982003_
                     (lambda ()
                       (if (##null? _g8197781987_)
                           (_K8198282000_)
                           (_else8198081995_)))))
                (if (##pair? _g8197781987_)
                    (let ((_tl8198582014_ (##cdr _g8197781987_))
                          (_hd8198482012_ (##car _g8197781987_)))
                      (let ((_hd82017_ _hd8198482012_)
                            (_rest82019_ _tl8198582014_))
                        (_K8198382009_ _rest82019_ _hd82017_)))
                    (_try-match8197982003_))))))))
    (define gx#stx-foldr
      (lambda (_f81918_ _iv81919_ _stx81920_)
        (if (procedure? _f81918_)
            '#!void
            (error '"expected procedure" _f81918_))
        (let _recur81922_ ((_rest81924_ _stx81920_))
          (let* ((_g8192581935_ (gx#syntax-e _rest81924_))
                 (_else8192881943_
                  (lambda () (_f81918_ _rest81924_ _iv81919_))))
            (let ((_K8193181957_
                   (lambda (_rest81954_ _hd81955_)
                     (_f81918_ _hd81955_ (_recur81922_ _rest81954_))))
                  (_K8193081948_ (lambda () _iv81919_)))
              (let ((_try-match8192781951_
                     (lambda ()
                       (if (##null? _g8192581935_)
                           (_K8193081948_)
                           (_else8192881943_)))))
                (if (##pair? _g8192581935_)
                    (let ((_tl8193381962_ (##cdr _g8192581935_))
                          (_hd8193281960_ (##car _g8192581935_)))
                      (let ((_hd81965_ _hd8193281960_)
                            (_rest81967_ _tl8193381962_))
                        (_K8193181957_ _rest81967_ _hd81965_)))
                    (_try-match8192781951_))))))))
    (define gx#stx-reverse
      (lambda (_stx81916_) (gx#stx-foldl cons '() _stx81916_)))
    (define gx#stx-last
      (lambda (_stx81877_)
        (let _lp81879_ ((_rest81881_ _stx81877_))
          (let* ((_g8188281890_ (gx#syntax-e _rest81881_))
                 (_else8188481898_ (lambda () _rest81881_))
                 (_K8188681904_
                  (lambda (_rest81901_ _hd81902_)
                    (if (gx#stx-null? _rest81901_)
                        _hd81902_
                        (_lp81879_ _rest81901_)))))
            (if (##pair? _g8188281890_)
                (let ((_hd8188781907_ (##car _g8188281890_))
                      (_tl8188881909_ (##cdr _g8188281890_)))
                  (let* ((_hd81912_ _hd8188781907_)
                         (_rest81914_ _tl8188881909_))
                    (_K8188681904_ _rest81914_ _hd81912_)))
                (_else8188481898_))))))
    (define gx#stx-last-pair
      (lambda (_stx81848_)
        (let _lp81850_ ((_hd81852_ _stx81848_))
          (let* ((_g8185381860_ (gx#syntax-e _hd81852_))
                 (_E8185581864_
                  (lambda () (error '"No clause matching" _g8185381860_)))
                 (_K8185681869_
                  (lambda (_rest81867_)
                    (if (gx#stx-pair? _rest81867_)
                        (_lp81850_ _rest81867_)
                        _hd81852_))))
            (if (##pair? _g8185381860_)
                (let* ((_tl8185881872_ (##cdr _g8185381860_))
                       (_rest81875_ _tl8185881872_))
                  (_K8185681869_ _rest81875_))
                (_E8185581864_))))))
    (define gx#stx-list-tail
      (lambda (_stx81817_ _k81818_)
        (let _lp81820_ ((_rest81822_ _stx81817_) (_k81823_ _k81818_))
          (if (fxpositive? _k81823_)
              (let* ((_g8182481831_ (gx#syntax-e _rest81822_))
                     (_E8182681835_
                      (lambda () (error '"No clause matching" _g8182481831_)))
                     (_K8182781840_
                      (lambda (_rest81838_)
                        (_lp81820_ _rest81838_ (fx- _k81823_ '1)))))
                (if (##pair? _g8182481831_)
                    (let* ((_tl8182981843_ (##cdr _g8182481831_))
                           (_rest81846_ _tl8182981843_))
                      (_K8182781840_ _rest81846_))
                    (_E8182681835_)))
              _rest81822_))))
    (define gx#stx-list-ref
      (lambda (_stx81814_ _k81815_)
        (gx#stx-car (gx#stx-list-tail _stx81814_ _k81815_))))
    (define gx#stx-plist?__%
      (lambda (_stx81726_ _key?81727_)
        (if (procedure? _key?81727_)
            '#!void
            (error '"expected procedure" _key?81727_))
        (let _lp81729_ ((_rest81731_ _stx81726_))
          (let* ((_g8173281742_ (gx#stx-e _rest81731_))
                 (_else8173581750_ (lambda () '#f)))
            (let ((_K8173881792_
                   (lambda (_rest81761_ _hd81762_)
                     (if (_key?81727_ _hd81762_)
                         (let* ((_g8176381771_ (gx#stx-e _rest81761_))
                                (_else8176581779_ (lambda () '#f))
                                (_K8176781784_
                                 (lambda (_rest81782_)
                                   (_lp81729_ _rest81782_))))
                           (if (##pair? _g8176381771_)
                               (let* ((_tl8176981787_ (##cdr _g8176381771_))
                                      (_rest81790_ _tl8176981787_))
                                 (_lp81729_ _rest81790_))
                               (_else8176581779_)))
                         '#f)))
                  (_K8173781755_ (lambda () '#t)))
              (let ((_try-match8173481758_
                     (lambda ()
                       (if (##null? _g8173281742_)
                           (_K8173781755_)
                           (_else8173581750_)))))
                (if (##pair? _g8173281742_)
                    (let ((_tl8174081797_ (##cdr _g8173281742_))
                          (_hd8173981795_ (##car _g8173281742_)))
                      (let ((_hd81800_ _hd8173981795_)
                            (_rest81802_ _tl8174081797_))
                        (_K8173881792_ _rest81802_ _hd81800_)))
                    (_try-match8173481758_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81807_)
        (let ((_key?81809_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81807_ _key?81809_))))
    (define gx#stx-plist?
      (lambda _g82915_
        (let ((_g82914_ (##length _g82915_)))
          (cond ((##fx= _g82914_ 1)
                 (apply (lambda (_stx81807_) (gx#stx-plist?__0 _stx81807_))
                        _g82915_))
                ((##fx= _g82914_ 2)
                 (apply (lambda (_stx81811_ _key?81812_)
                          (gx#stx-plist?__% _stx81811_ _key?81812_))
                        _g82915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82915_))))))
    (define gx#stx-getq__%
      (lambda (_key81644_ _stx81645_ _key=?81646_)
        (if (procedure? _key=?81646_)
            '#!void
            (error '"expected procedure" _key=?81646_))
        (let _lp81648_ ((_rest81650_ _stx81645_))
          (let* ((_g8165181659_ (gx#syntax-e _rest81650_))
                 (_else8165381667_ (lambda () '#f))
                 (_K8165581701_
                  (lambda (_rest81670_ _hd81671_)
                    (let* ((_g8167281679_ (gx#syntax-e _rest81670_))
                           (_E8167481683_
                            (lambda ()
                              (error '"No clause matching" _g8167281679_)))
                           (_K8167581689_
                            (lambda (_rest81686_ _val81687_)
                              (if (_key=?81646_ _hd81671_ _key81644_)
                                  _val81687_
                                  (_lp81648_ _rest81686_)))))
                      (if (##pair? _g8167281679_)
                          (let ((_hd8167681692_ (##car _g8167281679_))
                                (_tl8167781694_ (##cdr _g8167281679_)))
                            (let* ((_val81697_ _hd8167681692_)
                                   (_rest81699_ _tl8167781694_))
                              (_K8167581689_ _rest81699_ _val81697_)))
                          (_E8167481683_))))))
            (if (##pair? _g8165181659_)
                (let ((_hd8165681704_ (##car _g8165181659_))
                      (_tl8165781706_ (##cdr _g8165181659_)))
                  (let* ((_hd81709_ _hd8165681704_)
                         (_rest81711_ _tl8165781706_))
                    (_K8165581701_ _rest81711_ _hd81709_)))
                (_else8165381667_))))))
    (define gx#stx-getq__0
      (lambda (_key81716_ _stx81717_)
        (let ((_key=?81719_ gx#stx-eq?))
          (gx#stx-getq__% _key81716_ _stx81717_ _key=?81719_))))
    (define gx#stx-getq
      (lambda _g82917_
        (let ((_g82916_ (##length _g82917_)))
          (cond ((##fx= _g82916_ 2)
                 (apply (lambda (_key81716_ _stx81717_)
                          (gx#stx-getq__0 _key81716_ _stx81717_))
                        _g82917_))
                ((##fx= _g82916_ 3)
                 (apply (lambda (_key81721_ _stx81722_ _key=?81723_)
                          (gx#stx-getq__% _key81721_ _stx81722_ _key=?81723_))
                        _g82917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82917_))))))))
