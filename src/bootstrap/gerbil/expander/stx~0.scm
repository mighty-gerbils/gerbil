(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710833424)
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
      (lambda _$args82842_
        (apply make-instance gx#identifier-wrap::t _$args82842_)))
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
      (lambda _$args82839_
        (apply make-instance gx#syntax-wrap::t _$args82839_)))
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
      (lambda _$args82836_
        (apply make-instance gx#syntax-quote::t _$args82836_)))
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
      (lambda (_stx82834_) (symbol? (gx#stx-e _stx82834_))))
    (define gx#identifier-quote?
      (lambda (_stx82832_)
        (if (##structure-direct-instance-of? _stx82832_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82832_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82830_)
        (if (##structure-direct-instance-of? _stx82830_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82830_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82830_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82828_)
        (if (##structure-direct-instance-of? _stx82828_ 'gx#syntax-quote::t)
            _stx82828_
            (if (##structure-direct-instance-of? _stx82828_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82828_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82811_)
        (if (##structure-direct-instance-of? _stx82811_ 'gx#syntax-wrap::t)
            (let _lp82813_ ((_e82815_
                             (##unchecked-structure-ref
                              _stx82811_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82816_
                             (cons (##unchecked-structure-ref
                                    _stx82811_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82815_)
                  (let ((_$e82818_ (##type-id (##structure-type _e82815_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82818_)
                        (_lp82813_
                         (##unchecked-structure-ref _e82815_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82815_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82816_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82818_)
                                (eq? 'gx#identifier-wrap::t _$e82818_))
                            (##unchecked-structure-ref
                             _e82815_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82818_)
                                (_lp82813_
                                 (##unchecked-structure-ref
                                  _e82815_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82816_)
                                _e82815_))))
                  (if (null? _marks82816_)
                      _e82815_
                      (if (pair? _e82815_)
                          (cons (gx#stx-wrap (car _e82815_) _marks82816_)
                                (gx#stx-wrap (cdr _e82815_) _marks82816_))
                          (if (vector? _e82815_)
                              (vector-map
                               (lambda (_g8282382825_)
                                 (gx#stx-wrap _g8282382825_ _marks82816_))
                               _e82815_)
                              (if (box? _e82815_)
                                  (box (gx#stx-wrap
                                        (unbox _e82815_)
                                        _marks82816_))
                                  _e82815_))))))
            (if (##structure-instance-of? _stx82811_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82811_ '1 gx#AST::t '#f)
                _stx82811_))))
    (define gx#syntax->datum
      (lambda (_stx82809_)
        (if (##structure-instance-of? _stx82809_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82809_ '1 gx#AST::t '#f))
            (if (pair? _stx82809_)
                (cons (gx#syntax->datum (car _stx82809_))
                      (gx#syntax->datum (cdr _stx82809_)))
                (if (vector? _stx82809_)
                    (vector-map gx#syntax->datum _stx82809_)
                    (if (box? _stx82809_)
                        (box (gx#syntax->datum (unbox _stx82809_)))
                        _stx82809_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82752_ _datum82753_ _src82754_ _quote?82755_)
        (letrec ((_wrap-datum82757_
                  (lambda (_e82781_ _marks82782_)
                    (_wrap-inner82759_
                     _e82781_
                     (lambda (_g8278382785_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8278382785_
                        _src82754_
                        _marks82782_)))))
                 (_wrap-quote82758_
                  (lambda (_e82773_ _ctx82774_ _marks82775_)
                    (_wrap-inner82759_
                     _e82773_
                     (lambda (_g8277682778_)
                       (##structure
                        gx#syntax-quote::t
                        _g8277682778_
                        _src82754_
                        _ctx82774_
                        _marks82775_)))))
                 (_wrap-inner82759_
                  (lambda (_e82766_ _wrap-e82767_)
                    (let _recur82769_ ((_e82771_ _e82766_))
                      (if (symbol? _e82771_)
                          (_wrap-e82767_ _e82771_)
                          (if (pair? _e82771_)
                              (cons (_recur82769_ (car _e82771_))
                                    (_recur82769_ (cdr _e82771_)))
                              (if (vector? _e82771_)
                                  (vector-map _recur82769_ _e82771_)
                                  (if (box? _e82771_)
                                      (box (_recur82769_ (unbox _e82771_)))
                                      _e82771_)))))))
                 (_wrap-outer82760_
                  (lambda (_e82764_)
                    (if (##structure-instance-of? _e82764_ 'gerbil#AST::t)
                        _e82764_
                        (##structure gx#AST::t _e82764_ _src82754_)))))
          (if (##structure-instance-of? _datum82753_ 'gerbil#AST::t)
              _datum82753_
              (if (not _stx82752_)
                  (##structure gx#AST::t _datum82753_ _src82754_)
                  (if (gx#identifier? _stx82752_)
                      (let ((_stx82762_ (gx#stx-unwrap__0 _stx82752_)))
                        (_wrap-outer82760_
                         (if (##structure-direct-instance-of?
                              _stx82762_
                              'gx#syntax-quote::t)
                             (if _quote?82755_
                                 (_wrap-quote82758_
                                  _datum82753_
                                  (##unchecked-structure-ref
                                   _stx82762_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82762_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82757_
                                  _datum82753_
                                  (##unchecked-structure-ref
                                   _stx82762_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82757_
                              _datum82753_
                              (##unchecked-structure-ref
                               _stx82762_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82752_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82791_ _datum82792_)
        (let* ((_src82794_ '#f) (_quote?82796_ '#t))
          (gx#datum->syntax__%
           _stx82791_
           _datum82792_
           _src82794_
           _quote?82796_))))
    (define gx#datum->syntax__1
      (lambda (_stx82798_ _datum82799_ _src82800_)
        (let ((_quote?82802_ '#t))
          (gx#datum->syntax__%
           _stx82798_
           _datum82799_
           _src82800_
           _quote?82802_))))
    (define gx#datum->syntax
      (lambda _g82923_
        (let ((_g82922_ (##length _g82923_)))
          (cond ((##fx= _g82922_ 2)
                 (apply (lambda (_stx82791_ _datum82792_)
                          (gx#datum->syntax__0 _stx82791_ _datum82792_))
                        _g82923_))
                ((##fx= _g82922_ 3)
                 (apply (lambda (_stx82798_ _datum82799_ _src82800_)
                          (gx#datum->syntax__1
                           _stx82798_
                           _datum82799_
                           _src82800_))
                        _g82923_))
                ((##fx= _g82922_ 4)
                 (apply (lambda (_stx82804_
                                 _datum82805_
                                 _src82806_
                                 _quote?82807_)
                          (gx#datum->syntax__%
                           _stx82804_
                           _datum82805_
                           _src82806_
                           _quote?82807_))
                        _g82923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82923_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82728_ _marks82729_)
        (let _lp82731_ ((_e82733_ _stx82728_)
                        (_marks82734_ _marks82729_)
                        (_src82735_ (gx#stx-source _stx82728_)))
          (if (##structure-direct-instance-of? _e82733_ 'gx#syntax-wrap::t)
              (_lp82731_
               (##unchecked-structure-ref _e82733_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82733_ '3 gx#syntax-wrap::t '#f)
                _marks82734_)
               (##unchecked-structure-ref _e82733_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82733_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82734_)
                      _e82733_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82733_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82733_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82733_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82734_)))
                  (if (##structure-direct-instance-of?
                       _e82733_
                       'gx#syntax-quote::t)
                      _e82733_
                      (if (##structure-instance-of? _e82733_ 'gerbil#AST::t)
                          (_lp82731_
                           (##unchecked-structure-ref
                            _e82733_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82734_
                           (##unchecked-structure-ref
                            _e82733_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82733_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82733_
                               _src82735_
                               (reverse _marks82734_))
                              (if (null? _marks82734_)
                                  _e82733_
                                  (if (pair? _e82733_)
                                      (cons (gx#stx-wrap
                                             (car _e82733_)
                                             _marks82734_)
                                            (gx#stx-wrap
                                             (cdr _e82733_)
                                             _marks82734_))
                                      (if (vector? _e82733_)
                                          (vector-map
                                           (lambda (_g8273682738_)
                                             (gx#stx-wrap
                                              _g8273682738_
                                              _marks82734_))
                                           _e82733_)
                                          (if (box? _e82733_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82733_)
                                                    _marks82734_))
                                              _e82733_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82744_)
        (let ((_marks82746_ '())) (gx#stx-unwrap__% _stx82744_ _marks82746_))))
    (define gx#stx-unwrap
      (lambda _g82925_
        (let ((_g82924_ (##length _g82925_)))
          (cond ((##fx= _g82924_ 1)
                 (apply (lambda (_stx82744_) (gx#stx-unwrap__0 _stx82744_))
                        _g82925_))
                ((##fx= _g82924_ 2)
                 (apply (lambda (_stx82748_ _marks82749_)
                          (gx#stx-unwrap__% _stx82748_ _marks82749_))
                        _g82925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82925_))))))
    (define gx#stx-wrap
      (lambda (_stx82721_ _marks82722_)
        (foldl1 (lambda (_mark82724_ _stx82725_)
                  (gx#stx-apply-mark _stx82725_ _mark82724_))
                _stx82721_
                _marks82722_)))
    (define gx#stx-rewrap
      (lambda (_stx82715_ _marks82716_)
        (foldr1 (lambda (_mark82718_ _stx82719_)
                  (gx#stx-apply-mark _stx82719_ _mark82718_))
                _stx82715_
                _marks82716_)))
    (define gx#stx-apply-mark
      (lambda (_stx82712_ _mark82713_)
        (if (##structure-direct-instance-of? _stx82712_ 'gx#syntax-quote::t)
            _stx82712_
            (if (and (##structure-direct-instance-of?
                      _stx82712_
                      'gx#syntax-wrap::t)
                     (eq? _mark82713_
                          (##unchecked-structure-ref
                           _stx82712_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82712_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82712_
                 (gx#stx-source _stx82712_)
                 _mark82713_)))))
    (define gx#apply-mark
      (lambda (_mark82676_ _marks82677_)
        (let* ((_marks8267882686_ _marks82677_)
               (_else8268082694_ (lambda () (cons _mark82676_ _marks82677_)))
               (_K8268282700_
                (lambda (_rest82697_ _hd82698_)
                  (if (eq? _mark82676_ _hd82698_)
                      _rest82697_
                      (cons _mark82676_ _marks82677_)))))
          (if (##pair? _marks8267882686_)
              (let ((_hd8268382703_ (##car _marks8267882686_))
                    (_tl8268482705_ (##cdr _marks8267882686_)))
                (let* ((_hd82708_ _hd8268382703_) (_rest82710_ _tl8268482705_))
                  (_K8268282700_ _rest82710_ _hd82708_)))
              (_else8268082694_)))))
    (define gx#stx-e
      (lambda (_stx82674_)
        (if (##structure-direct-instance-of? _stx82674_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82674_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82674_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82674_ '1 gx#AST::t '#f)
                _stx82674_))))
    (define gx#stx-source
      (lambda (_stx82672_)
        (if (##structure-instance-of? _stx82672_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82672_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82666_ _src82667_)
        (if (or (##structure-instance-of? _stx82666_ 'gerbil#AST::t)
                (not _src82667_))
            _stx82666_
            (##structure gx#AST::t _stx82666_ _src82667_))))
    (define gx#stx-datum?
      (lambda (_stx82664_) (gx#self-quoting? (gx#stx-e _stx82664_))))
    (define gx#self-quoting?
      (lambda (_x82647_)
        (let ((_$e82649_ (immediate? _x82647_)))
          (if _$e82649_
              _$e82649_
              (let ((_$e82652_ (number? _x82647_)))
                (if _$e82652_
                    _$e82652_
                    (let ((_$e82655_ (keyword? _x82647_)))
                      (if _$e82655_
                          _$e82655_
                          (let ((_$e82658_ (string? _x82647_)))
                            (if _$e82658_
                                _$e82658_
                                (let ((_$e82661_ (vector? _x82647_)))
                                  (if _$e82661_
                                      _$e82661_
                                      (u8vector? _x82647_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82645_) (boolean? (gx#stx-e _e82645_))))
    (define gx#stx-keyword? (lambda (_e82643_) (keyword? (gx#stx-e _e82643_))))
    (define gx#stx-char? (lambda (_e82641_) (char? (gx#stx-e _e82641_))))
    (define gx#stx-number? (lambda (_e82639_) (number? (gx#stx-e _e82639_))))
    (define gx#stx-fixnum? (lambda (_e82637_) (fixnum? (gx#stx-e _e82637_))))
    (define gx#stx-string? (lambda (_e82635_) (string? (gx#stx-e _e82635_))))
    (define gx#stx-null? (lambda (_e82633_) (null? (gx#stx-e _e82633_))))
    (define gx#stx-pair? (lambda (_e82631_) (pair? (gx#stx-e _e82631_))))
    (define gx#stx-list?
      (lambda (_e82593_)
        (let* ((_g8259482603_ (gx#stx-e _e82593_))
               (_E8259782607_
                (lambda () (error '"No clause matching" _g8259482603_))))
          (let ((_K8259982623_
                 (lambda (_rest82621_) (gx#stx-list? _rest82621_)))
                (_K8259882613_ (lambda (_tail82611_) (null? _tail82611_))))
            (if (##pair? _g8259482603_)
                (let* ((_tl8260182626_ (##cdr _g8259482603_))
                       (_rest82629_ _tl8260182626_))
                  (gx#stx-list? _rest82629_))
                (let ((_tail82616_ _g8259482603_)) (null? _tail82616_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82586_)
        (let* ((_e82588_ (gx#stx-e _e82586_)) (_$e82590_ (pair? _e82588_)))
          (if _$e82590_ _$e82590_ (null? _e82588_)))))
    (define gx#stx-vector? (lambda (_e82584_) (vector? (gx#stx-e _e82584_))))
    (define gx#stx-box? (lambda (_e82582_) (box? (gx#stx-e _e82582_))))
    (define gx#stx-eq?
      (lambda (_x82579_ _y82580_)
        (eq? (gx#stx-e _x82579_) (gx#stx-e _y82580_))))
    (define gx#stx-eqv?
      (lambda (_x82576_ _y82577_)
        (eqv? (gx#stx-e _x82576_) (gx#stx-e _y82577_))))
    (define gx#stx-equal?
      (lambda (_x82573_ _y82574_)
        (equal? (gx#stx-e _x82573_) (gx#stx-e _y82574_))))
    (define gx#stx-false? (lambda (_x82571_) (not (gx#stx-e _x82571_))))
    (define gx#stx-identifier
      (lambda (_template82568_ . _args82569_)
        (gx#datum->syntax__1
         _template82568_
         (apply make-symbol (gx#syntax->datum _args82569_))
         (gx#stx-source _template82568_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82566_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82566_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82564_)
        (if (##structure-direct-instance-of? _stx82564_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82564_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82564_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82564_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82564_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82560_)
        (let ((_stx82562_ (gx#stx-unwrap__0 _stx82560_)))
          (if (gx#identifier-quote? _stx82562_)
              (##unchecked-structure-ref _stx82562_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82515_)
        (let* ((_g8251682526_ (gx#stx-e _stx82515_))
               (_else8251982534_ (lambda () '#f)))
          (let ((_K8252282548_
                 (lambda (_rest82545_ _hd82546_)
                   (if (gx#identifier? _hd82546_)
                       (gx#identifier-list? _rest82545_)
                       '#f)))
                (_K8252182539_ (lambda () '#t)))
            (let ((_try-match8251882542_
                   (lambda ()
                     (if (##null? _g8251682526_)
                         (_K8252182539_)
                         (_else8251982534_)))))
              (if (##pair? _g8251682526_)
                  (let ((_tl8252482553_ (##cdr _g8251682526_))
                        (_hd8252382551_ (##car _g8251682526_)))
                    (let ((_hd82556_ _hd8252382551_)
                          (_rest82558_ _tl8252482553_))
                      (_K8252282548_ _rest82558_ _hd82556_)))
                  (_try-match8251882542_)))))))
    (define gx#genident__%
      (lambda (_e82492_ _src82493_)
        (gx#stx-wrap-source
         (gensym (let ((_e82495_ (gx#stx-e _e82492_)))
                   (if (interned-symbol? _e82495_) _e82495_ 'g)))
         (let ((_$e82497_ (gx#stx-source _e82492_)))
           (if _$e82497_ _$e82497_ _src82493_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82504_ 'g) (_src82506_ '#f))
          (gx#genident__% _e82504_ _src82506_))))
    (define gx#genident__1
      (lambda (_e82508_)
        (let ((_src82510_ '#f)) (gx#genident__% _e82508_ _src82510_))))
    (define gx#genident
      (lambda _g82927_
        (let ((_g82926_ (##length _g82927_)))
          (cond ((##fx= _g82926_ 0)
                 (apply (lambda () (gx#genident__0)) _g82927_))
                ((##fx= _g82926_ 1)
                 (apply (lambda (_e82508_) (gx#genident__1 _e82508_))
                        _g82927_))
                ((##fx= _g82926_ 2)
                 (apply (lambda (_e82512_ _src82513_)
                          (gx#genident__% _e82512_ _src82513_))
                        _g82927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82927_))))))
    (define gx#gentemps
      (lambda (_stx-lst82489_) (gx#stx-map1 gx#genident _stx-lst82489_)))
    (define gx#syntax->list
      (lambda (_stx82487_) (gx#stx-map1 values _stx82487_)))
    (define gx#stx-car
      (lambda (_stx82484_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82484_)))))
    (define gx#stx-cdr
      (lambda (_stx82481_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82481_)))))
    (define gx#stx-length
      (lambda (_stx82446_)
        (let _lp82448_ ((_rest82450_ _stx82446_) (_n82451_ '0))
          (let* ((_g8245282460_ (gx#stx-e _rest82450_))
                 (_else8245482468_ (lambda () _n82451_))
                 (_K8245682473_
                  (lambda (_rest82471_)
                    (_lp82448_ _rest82471_ (fx+ _n82451_ '1)))))
            (if (##pair? _g8245282460_)
                (let* ((_tl8245882476_ (##cdr _g8245282460_))
                       (_rest82479_ _tl8245882476_))
                  (_K8245682473_ _rest82479_))
                (_else8245482468_))))))
    (define gx#stx-for-each
      (lambda _g82929_
        (let ((_g82928_ (##length _g82929_)))
          (cond ((##fx= _g82928_ 2)
                 (apply (lambda (_f82439_ _stx82440_)
                          (gx#stx-for-each1 _f82439_ _stx82440_))
                        _g82929_))
                ((##fx= _g82928_ 3)
                 (apply (lambda (_f82442_ _xstx82443_ _ystx82444_)
                          (gx#stx-for-each2 _f82442_ _xstx82443_ _ystx82444_))
                        _g82929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82929_))))))
    (define gx#stx-for-each1
      (lambda (_f82389_ _stx82390_)
        (if (procedure? _f82389_)
            '#!void
            (error '"expected procedure" _f82389_))
        (let _lp82392_ ((_rest82394_ _stx82390_))
          (let* ((_g8239582405_ (gx#syntax-e _rest82394_))
                 (_else8239882413_ (lambda () (_f82389_ _rest82394_))))
            (let ((_K8240182427_
                   (lambda (_rest82424_ _hd82425_)
                     (_f82389_ _hd82425_)
                     (_lp82392_ _rest82424_)))
                  (_K8240082418_ (lambda () '#!void)))
              (let ((_try-match8239782421_
                     (lambda ()
                       (if (##null? _g8239582405_)
                           (_K8240082418_)
                           (_else8239882413_)))))
                (if (##pair? _g8239582405_)
                    (let ((_tl8240382432_ (##cdr _g8239582405_))
                          (_hd8240282430_ (##car _g8239582405_)))
                      (let ((_hd82435_ _hd8240282430_)
                            (_rest82437_ _tl8240382432_))
                        (_K8240182427_ _rest82437_ _hd82435_)))
                    (_try-match8239782421_))))))))
    (define gx#stx-for-each2
      (lambda (_f82294_ _xstx82295_ _ystx82296_)
        (if (procedure? _f82294_)
            '#!void
            (error '"expected procedure" _f82294_))
        (let _lp82298_ ((_xrest82300_ _xstx82295_) (_yrest82301_ _ystx82296_))
          (let* ((_g8230282312_ (gx#syntax-e _xrest82300_))
                 (_else8230582320_ (lambda () '#!void)))
            (let ((_K8230882377_
                   (lambda (_xrest82346_ _xhd82347_)
                     (let* ((_g8234882355_ (gx#syntax-e _yrest82301_))
                            (_E8235082359_
                             (lambda ()
                               (error '"No clause matching" _g8234882355_)))
                            (_K8235182365_
                             (lambda (_yrest82362_ _yhd82363_)
                               (_f82294_ _xhd82347_ _yhd82363_)
                               (_lp82298_ _xrest82346_ _yrest82362_))))
                       (if (##pair? _g8234882355_)
                           (let ((_hd8235282368_ (##car _g8234882355_))
                                 (_tl8235382370_ (##cdr _g8234882355_)))
                             (let* ((_yhd82373_ _hd8235282368_)
                                    (_yrest82375_ _tl8235382370_))
                               (_K8235182365_ _yrest82375_ _yhd82373_)))
                           (_E8235082359_)))))
                  (_K8230782340_
                   (lambda ()
                     (let* ((_yrest8232482329_ _yrest82301_)
                            (_E8232682333_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8232482329_)))
                            (_K8232782337_
                             (lambda () (_f82294_ _xrest82300_ _yrest82301_))))
                       (if (not (gx#stx-null? _yrest8232482329_))
                           (_K8232782337_)
                           (_E8232682333_))))))
              (let ((_try-match8230482343_
                     (lambda ()
                       (if (not (null? _g8230282312_))
                           (_K8230782340_)
                           (_else8230582320_)))))
                (if (##pair? _g8230282312_)
                    (let ((_tl8231082382_ (##cdr _g8230282312_))
                          (_hd8230982380_ (##car _g8230282312_)))
                      (let ((_xhd82385_ _hd8230982380_)
                            (_xrest82387_ _tl8231082382_))
                        (_K8230882377_ _xrest82387_ _xhd82385_)))
                    (_try-match8230482343_))))))))
    (define gx#stx-map
      (lambda _g82931_
        (let ((_g82930_ (##length _g82931_)))
          (cond ((##fx= _g82930_ 2)
                 (apply (lambda (_f82287_ _stx82288_)
                          (gx#stx-map1 _f82287_ _stx82288_))
                        _g82931_))
                ((##fx= _g82930_ 3)
                 (apply (lambda (_f82290_ _xstx82291_ _ystx82292_)
                          (gx#stx-map2 _f82290_ _xstx82291_ _ystx82292_))
                        _g82931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82931_))))))
    (define gx#stx-map1
      (lambda (_f82237_ _stx82238_)
        (if (procedure? _f82237_)
            '#!void
            (error '"expected procedure" _f82237_))
        (let _recur82240_ ((_rest82242_ _stx82238_))
          (let* ((_g8224382253_ (gx#syntax-e _rest82242_))
                 (_else8224682261_ (lambda () (_f82237_ _rest82242_))))
            (let ((_K8224982275_
                   (lambda (_rest82272_ _hd82273_)
                     (cons (_f82237_ _hd82273_) (_recur82240_ _rest82272_))))
                  (_K8224882266_ (lambda () '())))
              (let ((_try-match8224582269_
                     (lambda ()
                       (if (##null? _g8224382253_)
                           (_K8224882266_)
                           (_else8224682261_)))))
                (if (##pair? _g8224382253_)
                    (let ((_tl8225182280_ (##cdr _g8224382253_))
                          (_hd8225082278_ (##car _g8224382253_)))
                      (let ((_hd82283_ _hd8225082278_)
                            (_rest82285_ _tl8225182280_))
                        (_K8224982275_ _rest82285_ _hd82283_)))
                    (_try-match8224582269_))))))))
    (define gx#stx-map2
      (lambda (_f82142_ _xstx82143_ _ystx82144_)
        (if (procedure? _f82142_)
            '#!void
            (error '"expected procedure" _f82142_))
        (let _recur82146_ ((_xrest82148_ _xstx82143_)
                           (_yrest82149_ _ystx82144_))
          (let* ((_g8215082160_ (gx#syntax-e _xrest82148_))
                 (_else8215382168_ (lambda () '())))
            (let ((_K8215682225_
                   (lambda (_xrest82194_ _xhd82195_)
                     (let* ((_g8219682203_ (gx#syntax-e _yrest82149_))
                            (_E8219882207_
                             (lambda ()
                               (error '"No clause matching" _g8219682203_)))
                            (_K8219982213_
                             (lambda (_yrest82210_ _yhd82211_)
                               (cons (_f82142_ _xhd82195_ _yhd82211_)
                                     (_recur82146_
                                      _xrest82194_
                                      _yrest82210_)))))
                       (if (##pair? _g8219682203_)
                           (let ((_hd8220082216_ (##car _g8219682203_))
                                 (_tl8220182218_ (##cdr _g8219682203_)))
                             (let* ((_yhd82221_ _hd8220082216_)
                                    (_yrest82223_ _tl8220182218_))
                               (_K8219982213_ _yrest82223_ _yhd82221_)))
                           (_E8219882207_)))))
                  (_K8215582188_
                   (lambda ()
                     (let* ((_yrest8217282177_ _yrest82149_)
                            (_E8217482181_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8217282177_)))
                            (_K8217582185_
                             (lambda () (_f82142_ _xrest82148_ _yrest82149_))))
                       (if (not (gx#stx-null? _yrest8217282177_))
                           (_K8217582185_)
                           (_E8217482181_))))))
              (let ((_try-match8215282191_
                     (lambda ()
                       (if (not (null? _g8215082160_))
                           (_K8215582188_)
                           (_else8215382168_)))))
                (if (##pair? _g8215082160_)
                    (let ((_tl8215882230_ (##cdr _g8215082160_))
                          (_hd8215782228_ (##car _g8215082160_)))
                      (let ((_xhd82233_ _hd8215782228_)
                            (_xrest82235_ _tl8215882230_))
                        (_K8215682225_ _xrest82235_ _xhd82233_)))
                    (_try-match8215282191_))))))))
    (define gx#stx-andmap
      (lambda (_f82092_ _stx82093_)
        (if (procedure? _f82092_)
            '#!void
            (error '"expected procedure" _f82092_))
        (let _lp82095_ ((_rest82097_ _stx82093_))
          (let* ((_g8209882108_ (gx#syntax-e _rest82097_))
                 (_else8210182116_ (lambda () (_f82092_ _rest82097_))))
            (let ((_K8210482130_
                   (lambda (_rest82127_ _hd82128_)
                     (if (_f82092_ _hd82128_) (_lp82095_ _rest82127_) '#f)))
                  (_K8210382121_ (lambda () '#t)))
              (let ((_try-match8210082124_
                     (lambda ()
                       (if (##null? _g8209882108_)
                           (_K8210382121_)
                           (_else8210182116_)))))
                (if (##pair? _g8209882108_)
                    (let ((_tl8210682135_ (##cdr _g8209882108_))
                          (_hd8210582133_ (##car _g8209882108_)))
                      (let ((_hd82138_ _hd8210582133_)
                            (_rest82140_ _tl8210682135_))
                        (_K8210482130_ _rest82140_ _hd82138_)))
                    (_try-match8210082124_))))))))
    (define gx#stx-ormap
      (lambda (_f82039_ _stx82040_)
        (if (procedure? _f82039_)
            '#!void
            (error '"expected procedure" _f82039_))
        (let _lp82042_ ((_rest82044_ _stx82040_))
          (let* ((_g8204582055_ (gx#syntax-e _rest82044_))
                 (_else8204882063_ (lambda () (_f82039_ _rest82044_))))
            (let ((_K8205182080_
                   (lambda (_rest82074_ _hd82075_)
                     (let ((_$e82077_ (_f82039_ _hd82075_)))
                       (if _$e82077_ _$e82077_ (_lp82042_ _rest82074_)))))
                  (_K8205082068_ (lambda () '#f)))
              (let ((_try-match8204782071_
                     (lambda ()
                       (if (##null? _g8204582055_)
                           (_K8205082068_)
                           (_else8204882063_)))))
                (if (##pair? _g8204582055_)
                    (let ((_tl8205382085_ (##cdr _g8204582055_))
                          (_hd8205282083_ (##car _g8204582055_)))
                      (let ((_hd82088_ _hd8205282083_)
                            (_rest82090_ _tl8205382085_))
                        (_K8205182080_ _rest82090_ _hd82088_)))
                    (_try-match8204782071_))))))))
    (define gx#stx-foldl
      (lambda (_f81987_ _iv81988_ _stx81989_)
        (if (procedure? _f81987_)
            '#!void
            (error '"expected procedure" _f81987_))
        (let _lp81991_ ((_r81993_ _iv81988_) (_rest81994_ _stx81989_))
          (let* ((_g8199582005_ (gx#syntax-e _rest81994_))
                 (_else8199882013_
                  (lambda () (_f81987_ _rest81994_ _r81993_))))
            (let ((_K8200182027_
                   (lambda (_rest82024_ _hd82025_)
                     (_lp81991_ (_f81987_ _hd82025_ _r81993_) _rest82024_)))
                  (_K8200082018_ (lambda () _r81993_)))
              (let ((_try-match8199782021_
                     (lambda ()
                       (if (##null? _g8199582005_)
                           (_K8200082018_)
                           (_else8199882013_)))))
                (if (##pair? _g8199582005_)
                    (let ((_tl8200382032_ (##cdr _g8199582005_))
                          (_hd8200282030_ (##car _g8199582005_)))
                      (let ((_hd82035_ _hd8200282030_)
                            (_rest82037_ _tl8200382032_))
                        (_K8200182027_ _rest82037_ _hd82035_)))
                    (_try-match8199782021_))))))))
    (define gx#stx-foldr
      (lambda (_f81936_ _iv81937_ _stx81938_)
        (if (procedure? _f81936_)
            '#!void
            (error '"expected procedure" _f81936_))
        (let _recur81940_ ((_rest81942_ _stx81938_))
          (let* ((_g8194381953_ (gx#syntax-e _rest81942_))
                 (_else8194681961_
                  (lambda () (_f81936_ _rest81942_ _iv81937_))))
            (let ((_K8194981975_
                   (lambda (_rest81972_ _hd81973_)
                     (_f81936_ _hd81973_ (_recur81940_ _rest81972_))))
                  (_K8194881966_ (lambda () _iv81937_)))
              (let ((_try-match8194581969_
                     (lambda ()
                       (if (##null? _g8194381953_)
                           (_K8194881966_)
                           (_else8194681961_)))))
                (if (##pair? _g8194381953_)
                    (let ((_tl8195181980_ (##cdr _g8194381953_))
                          (_hd8195081978_ (##car _g8194381953_)))
                      (let ((_hd81983_ _hd8195081978_)
                            (_rest81985_ _tl8195181980_))
                        (_K8194981975_ _rest81985_ _hd81983_)))
                    (_try-match8194581969_))))))))
    (define gx#stx-reverse
      (lambda (_stx81934_) (gx#stx-foldl cons '() _stx81934_)))
    (define gx#stx-last
      (lambda (_stx81895_)
        (let _lp81897_ ((_rest81899_ _stx81895_))
          (let* ((_g8190081908_ (gx#syntax-e _rest81899_))
                 (_else8190281916_ (lambda () _rest81899_))
                 (_K8190481922_
                  (lambda (_rest81919_ _hd81920_)
                    (if (gx#stx-null? _rest81919_)
                        _hd81920_
                        (_lp81897_ _rest81919_)))))
            (if (##pair? _g8190081908_)
                (let ((_hd8190581925_ (##car _g8190081908_))
                      (_tl8190681927_ (##cdr _g8190081908_)))
                  (let* ((_hd81930_ _hd8190581925_)
                         (_rest81932_ _tl8190681927_))
                    (_K8190481922_ _rest81932_ _hd81930_)))
                (_else8190281916_))))))
    (define gx#stx-last-pair
      (lambda (_stx81866_)
        (let _lp81868_ ((_hd81870_ _stx81866_))
          (let* ((_g8187181878_ (gx#syntax-e _hd81870_))
                 (_E8187381882_
                  (lambda () (error '"No clause matching" _g8187181878_)))
                 (_K8187481887_
                  (lambda (_rest81885_)
                    (if (gx#stx-pair? _rest81885_)
                        (_lp81868_ _rest81885_)
                        _hd81870_))))
            (if (##pair? _g8187181878_)
                (let* ((_tl8187681890_ (##cdr _g8187181878_))
                       (_rest81893_ _tl8187681890_))
                  (_K8187481887_ _rest81893_))
                (_E8187381882_))))))
    (define gx#stx-list-tail
      (lambda (_stx81835_ _k81836_)
        (let _lp81838_ ((_rest81840_ _stx81835_) (_k81841_ _k81836_))
          (if (fxpositive? _k81841_)
              (let* ((_g8184281849_ (gx#syntax-e _rest81840_))
                     (_E8184481853_
                      (lambda () (error '"No clause matching" _g8184281849_)))
                     (_K8184581858_
                      (lambda (_rest81856_)
                        (_lp81838_ _rest81856_ (fx- _k81841_ '1)))))
                (if (##pair? _g8184281849_)
                    (let* ((_tl8184781861_ (##cdr _g8184281849_))
                           (_rest81864_ _tl8184781861_))
                      (_K8184581858_ _rest81864_))
                    (_E8184481853_)))
              _rest81840_))))
    (define gx#stx-list-ref
      (lambda (_stx81832_ _k81833_)
        (gx#stx-car (gx#stx-list-tail _stx81832_ _k81833_))))
    (define gx#stx-plist?__%
      (lambda (_stx81744_ _key?81745_)
        (if (procedure? _key?81745_)
            '#!void
            (error '"expected procedure" _key?81745_))
        (let _lp81747_ ((_rest81749_ _stx81744_))
          (let* ((_g8175081760_ (gx#stx-e _rest81749_))
                 (_else8175381768_ (lambda () '#f)))
            (let ((_K8175681810_
                   (lambda (_rest81779_ _hd81780_)
                     (if (_key?81745_ _hd81780_)
                         (let* ((_g8178181789_ (gx#stx-e _rest81779_))
                                (_else8178381797_ (lambda () '#f))
                                (_K8178581802_
                                 (lambda (_rest81800_)
                                   (_lp81747_ _rest81800_))))
                           (if (##pair? _g8178181789_)
                               (let* ((_tl8178781805_ (##cdr _g8178181789_))
                                      (_rest81808_ _tl8178781805_))
                                 (_lp81747_ _rest81808_))
                               (_else8178381797_)))
                         '#f)))
                  (_K8175581773_ (lambda () '#t)))
              (let ((_try-match8175281776_
                     (lambda ()
                       (if (##null? _g8175081760_)
                           (_K8175581773_)
                           (_else8175381768_)))))
                (if (##pair? _g8175081760_)
                    (let ((_tl8175881815_ (##cdr _g8175081760_))
                          (_hd8175781813_ (##car _g8175081760_)))
                      (let ((_hd81818_ _hd8175781813_)
                            (_rest81820_ _tl8175881815_))
                        (_K8175681810_ _rest81820_ _hd81818_)))
                    (_try-match8175281776_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81825_)
        (let ((_key?81827_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81825_ _key?81827_))))
    (define gx#stx-plist?
      (lambda _g82933_
        (let ((_g82932_ (##length _g82933_)))
          (cond ((##fx= _g82932_ 1)
                 (apply (lambda (_stx81825_) (gx#stx-plist?__0 _stx81825_))
                        _g82933_))
                ((##fx= _g82932_ 2)
                 (apply (lambda (_stx81829_ _key?81830_)
                          (gx#stx-plist?__% _stx81829_ _key?81830_))
                        _g82933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82933_))))))
    (define gx#stx-getq__%
      (lambda (_key81662_ _stx81663_ _key=?81664_)
        (if (procedure? _key=?81664_)
            '#!void
            (error '"expected procedure" _key=?81664_))
        (let _lp81666_ ((_rest81668_ _stx81663_))
          (let* ((_g8166981677_ (gx#syntax-e _rest81668_))
                 (_else8167181685_ (lambda () '#f))
                 (_K8167381719_
                  (lambda (_rest81688_ _hd81689_)
                    (let* ((_g8169081697_ (gx#syntax-e _rest81688_))
                           (_E8169281701_
                            (lambda ()
                              (error '"No clause matching" _g8169081697_)))
                           (_K8169381707_
                            (lambda (_rest81704_ _val81705_)
                              (if (_key=?81664_ _hd81689_ _key81662_)
                                  _val81705_
                                  (_lp81666_ _rest81704_)))))
                      (if (##pair? _g8169081697_)
                          (let ((_hd8169481710_ (##car _g8169081697_))
                                (_tl8169581712_ (##cdr _g8169081697_)))
                            (let* ((_val81715_ _hd8169481710_)
                                   (_rest81717_ _tl8169581712_))
                              (_K8169381707_ _rest81717_ _val81715_)))
                          (_E8169281701_))))))
            (if (##pair? _g8166981677_)
                (let ((_hd8167481722_ (##car _g8166981677_))
                      (_tl8167581724_ (##cdr _g8166981677_)))
                  (let* ((_hd81727_ _hd8167481722_)
                         (_rest81729_ _tl8167581724_))
                    (_K8167381719_ _rest81729_ _hd81727_)))
                (_else8167181685_))))))
    (define gx#stx-getq__0
      (lambda (_key81734_ _stx81735_)
        (let ((_key=?81737_ gx#stx-eq?))
          (gx#stx-getq__% _key81734_ _stx81735_ _key=?81737_))))
    (define gx#stx-getq
      (lambda _g82935_
        (let ((_g82934_ (##length _g82935_)))
          (cond ((##fx= _g82934_ 2)
                 (apply (lambda (_key81734_ _stx81735_)
                          (gx#stx-getq__0 _key81734_ _stx81735_))
                        _g82935_))
                ((##fx= _g82934_ 3)
                 (apply (lambda (_key81739_ _stx81740_ _key=?81741_)
                          (gx#stx-getq__% _key81739_ _stx81740_ _key=?81741_))
                        _g82935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82935_))))))))
