(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707620170)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-struct-type
       'gx#identifier-wrap::t
       'syntax
       gx#AST::t
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args135826_
        (apply make-struct-instance gx#identifier-wrap::t _$args135826_)))
    (define gx#identifier-wrap-marks
      (make-struct-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (make-struct-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (make-struct-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (make-struct-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (make-struct-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (make-struct-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (make-struct-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (make-struct-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (make-struct-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (make-struct-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (make-struct-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (make-struct-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (make-struct-type
       'gx#syntax-wrap::t
       'syntax
       gx#AST::t
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args135823_
        (apply make-struct-instance gx#syntax-wrap::t _$args135823_)))
    (define gx#syntax-wrap-mark
      (make-struct-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (make-struct-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (make-struct-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (make-struct-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (make-struct-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (make-struct-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (make-struct-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (make-struct-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (make-struct-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (make-struct-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (make-struct-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (make-struct-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (make-struct-type
       'gx#syntax-quote::t
       'syntax
       gx#AST::t
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args135820_
        (apply make-struct-instance gx#syntax-quote::t _$args135820_)))
    (define gx#syntax-quote-context
      (make-struct-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (make-struct-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (make-struct-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (make-struct-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_stx135818_) (symbol? (gx#stx-e _stx135818_))))
    (define gx#identifier-quote?
      (lambda (_stx135816_)
        (if (##structure-direct-instance-of? _stx135816_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135816_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135814_)
        (if (##structure-direct-instance-of? _stx135814_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135814_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135814_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135812_)
        (if (##structure-direct-instance-of? _stx135812_ 'gx#syntax-quote::t)
            _stx135812_
            (if (##structure-direct-instance-of?
                 _stx135812_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135812_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135795_)
        (if (##structure-direct-instance-of? _stx135795_ 'gx#syntax-wrap::t)
            (let _lp135797_ ((_e135799_
                              (##unchecked-structure-ref
                               _stx135795_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135800_
                              (cons (##unchecked-structure-ref
                                     _stx135795_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135799_)
                  (let ((_$e135802_ (##type-id (##structure-type _e135799_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135802_)
                        (_lp135797_
                         (##unchecked-structure-ref _e135799_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135799_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135800_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135802_)
                                (eq? 'gx#identifier-wrap::t _$e135802_))
                            (##unchecked-structure-ref
                             _e135799_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135802_)
                                (_lp135797_
                                 (##unchecked-structure-ref
                                  _e135799_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135800_)
                                _e135799_))))
                  (if (null? _marks135800_)
                      _e135799_
                      (if (pair? _e135799_)
                          (cons (gx#stx-wrap (car _e135799_) _marks135800_)
                                (gx#stx-wrap (cdr _e135799_) _marks135800_))
                          (if (vector? _e135799_)
                              (vector-map
                               (lambda (_g135807135809_)
                                 (gx#stx-wrap _g135807135809_ _marks135800_))
                               _e135799_)
                              (if (box? _e135799_)
                                  (box (gx#stx-wrap
                                        (unbox _e135799_)
                                        _marks135800_))
                                  _e135799_))))))
            (if (##structure-instance-of? _stx135795_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135795_ '1 gx#AST::t '#f)
                _stx135795_))))
    (define gx#syntax->datum
      (lambda (_stx135793_)
        (if (##structure-instance-of? _stx135793_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135793_ '1 gx#AST::t '#f))
            (if (pair? _stx135793_)
                (cons (gx#syntax->datum (car _stx135793_))
                      (gx#syntax->datum (cdr _stx135793_)))
                (if (vector? _stx135793_)
                    (vector-map gx#syntax->datum _stx135793_)
                    (if (box? _stx135793_)
                        (box (gx#syntax->datum (unbox _stx135793_)))
                        _stx135793_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135736_ _datum135737_ _src135738_ _quote?135739_)
        (letrec ((_wrap-datum135741_
                  (lambda (_e135765_ _marks135766_)
                    (_wrap-inner135743_
                     _e135765_
                     (lambda (_g135767135769_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135767135769_
                        _src135738_
                        _marks135766_)))))
                 (_wrap-quote135742_
                  (lambda (_e135757_ _ctx135758_ _marks135759_)
                    (_wrap-inner135743_
                     _e135757_
                     (lambda (_g135760135762_)
                       (##structure
                        gx#syntax-quote::t
                        _g135760135762_
                        _src135738_
                        _ctx135758_
                        _marks135759_)))))
                 (_wrap-inner135743_
                  (lambda (_e135750_ _wrap-e135751_)
                    (let _recur135753_ ((_e135755_ _e135750_))
                      (if (symbol? _e135755_)
                          (_wrap-e135751_ _e135755_)
                          (if (pair? _e135755_)
                              (cons (_recur135753_ (car _e135755_))
                                    (_recur135753_ (cdr _e135755_)))
                              (if (vector? _e135755_)
                                  (vector-map _recur135753_ _e135755_)
                                  (if (box? _e135755_)
                                      (box (_recur135753_ (unbox _e135755_)))
                                      _e135755_)))))))
                 (_wrap-outer135744_
                  (lambda (_e135748_)
                    (if (##structure-instance-of? _e135748_ 'gerbil#AST::t)
                        _e135748_
                        (##structure gx#AST::t _e135748_ _src135738_)))))
          (if (##structure-instance-of? _datum135737_ 'gerbil#AST::t)
              _datum135737_
              (if (not _stx135736_)
                  (##structure gx#AST::t _datum135737_ _src135738_)
                  (if (gx#identifier? _stx135736_)
                      (let ((_stx135746_ (gx#stx-unwrap__0 _stx135736_)))
                        (_wrap-outer135744_
                         (if (##structure-direct-instance-of?
                              _stx135746_
                              'gx#syntax-quote::t)
                             (if _quote?135739_
                                 (_wrap-quote135742_
                                  _datum135737_
                                  (##unchecked-structure-ref
                                   _stx135746_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135746_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135741_
                                  _datum135737_
                                  (##unchecked-structure-ref
                                   _stx135746_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135741_
                              _datum135737_
                              (##unchecked-structure-ref
                               _stx135746_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135736_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135775_ _datum135776_)
        (let* ((_src135778_ '#f) (_quote?135780_ '#t))
          (gx#datum->syntax__%
           _stx135775_
           _datum135776_
           _src135778_
           _quote?135780_))))
    (define gx#datum->syntax__1
      (lambda (_stx135782_ _datum135783_ _src135784_)
        (let ((_quote?135786_ '#t))
          (gx#datum->syntax__%
           _stx135782_
           _datum135783_
           _src135784_
           _quote?135786_))))
    (define gx#datum->syntax
      (lambda _g140375_
        (let ((_g140374_ (##length _g140375_)))
          (cond ((##fx= _g140374_ 2)
                 (apply (lambda (_stx135775_ _datum135776_)
                          (gx#datum->syntax__0 _stx135775_ _datum135776_))
                        _g140375_))
                ((##fx= _g140374_ 3)
                 (apply (lambda (_stx135782_ _datum135783_ _src135784_)
                          (gx#datum->syntax__1
                           _stx135782_
                           _datum135783_
                           _src135784_))
                        _g140375_))
                ((##fx= _g140374_ 4)
                 (apply (lambda (_stx135788_
                                 _datum135789_
                                 _src135790_
                                 _quote?135791_)
                          (gx#datum->syntax__%
                           _stx135788_
                           _datum135789_
                           _src135790_
                           _quote?135791_))
                        _g140375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140375_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135712_ _marks135713_)
        (let _lp135715_ ((_e135717_ _stx135712_)
                         (_marks135718_ _marks135713_)
                         (_src135719_ (gx#stx-source _stx135712_)))
          (if (##structure-direct-instance-of? _e135717_ 'gx#syntax-wrap::t)
              (_lp135715_
               (##unchecked-structure-ref _e135717_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135717_ '3 gx#syntax-wrap::t '#f)
                _marks135718_)
               (##unchecked-structure-ref _e135717_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135717_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135718_)
                      _e135717_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135717_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135717_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135717_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135718_)))
                  (if (##structure-direct-instance-of?
                       _e135717_
                       'gx#syntax-quote::t)
                      _e135717_
                      (if (##structure-instance-of? _e135717_ 'gerbil#AST::t)
                          (_lp135715_
                           (##unchecked-structure-ref
                            _e135717_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135718_
                           (##unchecked-structure-ref
                            _e135717_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135717_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135717_
                               _src135719_
                               (reverse _marks135718_))
                              (if (null? _marks135718_)
                                  _e135717_
                                  (if (pair? _e135717_)
                                      (cons (gx#stx-wrap
                                             (car _e135717_)
                                             _marks135718_)
                                            (gx#stx-wrap
                                             (cdr _e135717_)
                                             _marks135718_))
                                      (if (vector? _e135717_)
                                          (vector-map
                                           (lambda (_g135720135722_)
                                             (gx#stx-wrap
                                              _g135720135722_
                                              _marks135718_))
                                           _e135717_)
                                          (if (box? _e135717_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135717_)
                                                    _marks135718_))
                                              _e135717_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135728_)
        (let ((_marks135730_ '()))
          (gx#stx-unwrap__% _stx135728_ _marks135730_))))
    (define gx#stx-unwrap
      (lambda _g140377_
        (let ((_g140376_ (##length _g140377_)))
          (cond ((##fx= _g140376_ 1)
                 (apply (lambda (_stx135728_) (gx#stx-unwrap__0 _stx135728_))
                        _g140377_))
                ((##fx= _g140376_ 2)
                 (apply (lambda (_stx135732_ _marks135733_)
                          (gx#stx-unwrap__% _stx135732_ _marks135733_))
                        _g140377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140377_))))))
    (define gx#stx-wrap
      (lambda (_stx135705_ _marks135706_)
        (foldl1 (lambda (_mark135708_ _stx135709_)
                  (gx#stx-apply-mark _stx135709_ _mark135708_))
                _stx135705_
                _marks135706_)))
    (define gx#stx-rewrap
      (lambda (_stx135699_ _marks135700_)
        (foldr1 (lambda (_mark135702_ _stx135703_)
                  (gx#stx-apply-mark _stx135703_ _mark135702_))
                _stx135699_
                _marks135700_)))
    (define gx#stx-apply-mark
      (lambda (_stx135696_ _mark135697_)
        (if (##structure-direct-instance-of? _stx135696_ 'gx#syntax-quote::t)
            _stx135696_
            (if (and (##structure-direct-instance-of?
                      _stx135696_
                      'gx#syntax-wrap::t)
                     (eq? _mark135697_
                          (##unchecked-structure-ref
                           _stx135696_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135696_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135696_
                 (gx#stx-source _stx135696_)
                 _mark135697_)))))
    (define gx#apply-mark
      (lambda (_mark135660_ _marks135661_)
        (let* ((_marks135662135670_ _marks135661_)
               (_else135664135678_
                (lambda () (cons _mark135660_ _marks135661_)))
               (_K135666135684_
                (lambda (_rest135681_ _hd135682_)
                  (if (eq? _mark135660_ _hd135682_)
                      _rest135681_
                      (cons _mark135660_ _marks135661_)))))
          (if (##pair? _marks135662135670_)
              (let ((_hd135667135687_ (##car _marks135662135670_))
                    (_tl135668135689_ (##cdr _marks135662135670_)))
                (let* ((_hd135692_ _hd135667135687_)
                       (_rest135694_ _tl135668135689_))
                  (_K135666135684_ _rest135694_ _hd135692_)))
              (_else135664135678_)))))
    (define gx#stx-e
      (lambda (_stx135658_)
        (if (##structure-direct-instance-of? _stx135658_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135658_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135658_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135658_ '1 gx#AST::t '#f)
                _stx135658_))))
    (define gx#stx-source
      (lambda (_stx135656_)
        (if (##structure-instance-of? _stx135656_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135656_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135650_ _src135651_)
        (if (or (##structure-instance-of? _stx135650_ 'gerbil#AST::t)
                (not _src135651_))
            _stx135650_
            (##structure gx#AST::t _stx135650_ _src135651_))))
    (define gx#stx-datum?
      (lambda (_stx135648_) (gx#self-quoting? (gx#stx-e _stx135648_))))
    (define gx#self-quoting?
      (lambda (_x135631_)
        (let ((_$e135633_ (immediate? _x135631_)))
          (if _$e135633_
              _$e135633_
              (let ((_$e135636_ (number? _x135631_)))
                (if _$e135636_
                    _$e135636_
                    (let ((_$e135639_ (keyword? _x135631_)))
                      (if _$e135639_
                          _$e135639_
                          (let ((_$e135642_ (string? _x135631_)))
                            (if _$e135642_
                                _$e135642_
                                (let ((_$e135645_ (vector? _x135631_)))
                                  (if _$e135645_
                                      _$e135645_
                                      (u8vector? _x135631_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135629_) (boolean? (gx#stx-e _e135629_))))
    (define gx#stx-keyword?
      (lambda (_e135627_) (keyword? (gx#stx-e _e135627_))))
    (define gx#stx-char? (lambda (_e135625_) (char? (gx#stx-e _e135625_))))
    (define gx#stx-number? (lambda (_e135623_) (number? (gx#stx-e _e135623_))))
    (define gx#stx-fixnum? (lambda (_e135621_) (fixnum? (gx#stx-e _e135621_))))
    (define gx#stx-string? (lambda (_e135619_) (string? (gx#stx-e _e135619_))))
    (define gx#stx-null? (lambda (_e135617_) (null? (gx#stx-e _e135617_))))
    (define gx#stx-pair? (lambda (_e135615_) (pair? (gx#stx-e _e135615_))))
    (define gx#stx-list?
      (lambda (_e135577_)
        (let* ((_g135578135587_ (gx#stx-e _e135577_))
               (_E135581135591_
                (lambda () (error '"No clause matching" _g135578135587_))))
          (let ((_K135583135607_
                 (lambda (_rest135605_) (gx#stx-list? _rest135605_)))
                (_K135582135597_ (lambda (_tail135595_) (null? _tail135595_))))
            (if (##pair? _g135578135587_)
                (let* ((_tl135585135610_ (##cdr _g135578135587_))
                       (_rest135613_ _tl135585135610_))
                  (gx#stx-list? _rest135613_))
                (let ((_tail135600_ _g135578135587_))
                  (null? _tail135600_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135570_)
        (let* ((_e135572_ (gx#stx-e _e135570_)) (_$e135574_ (pair? _e135572_)))
          (if _$e135574_ _$e135574_ (null? _e135572_)))))
    (define gx#stx-vector? (lambda (_e135568_) (vector? (gx#stx-e _e135568_))))
    (define gx#stx-box? (lambda (_e135566_) (box? (gx#stx-e _e135566_))))
    (define gx#stx-eq?
      (lambda (_x135563_ _y135564_)
        (eq? (gx#stx-e _x135563_) (gx#stx-e _y135564_))))
    (define gx#stx-eqv?
      (lambda (_x135560_ _y135561_)
        (eqv? (gx#stx-e _x135560_) (gx#stx-e _y135561_))))
    (define gx#stx-equal?
      (lambda (_x135557_ _y135558_)
        (equal? (gx#stx-e _x135557_) (gx#stx-e _y135558_))))
    (define gx#stx-false? (lambda (_x135555_) (not (gx#stx-e _x135555_))))
    (define gx#stx-identifier
      (lambda (_template135552_ . _args135553_)
        (gx#datum->syntax__1
         _template135552_
         (apply make-symbol (gx#syntax->datum _args135553_))
         (gx#stx-source _template135552_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135550_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135550_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135548_)
        (if (##structure-direct-instance-of?
             _stx135548_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135548_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135548_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135548_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135548_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135544_)
        (let ((_stx135546_ (gx#stx-unwrap__0 _stx135544_)))
          (if (gx#identifier-quote? _stx135546_)
              (##unchecked-structure-ref _stx135546_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135499_)
        (let* ((_g135500135510_ (gx#stx-e _stx135499_))
               (_else135503135518_ (lambda () '#f)))
          (let ((_K135506135532_
                 (lambda (_rest135529_ _hd135530_)
                   (if (gx#identifier? _hd135530_)
                       (gx#identifier-list? _rest135529_)
                       '#f)))
                (_K135505135523_ (lambda () '#t)))
            (let ((_try-match135502135526_
                   (lambda ()
                     (if (##null? _g135500135510_)
                         (_K135505135523_)
                         (_else135503135518_)))))
              (if (##pair? _g135500135510_)
                  (let ((_tl135508135537_ (##cdr _g135500135510_))
                        (_hd135507135535_ (##car _g135500135510_)))
                    (let ((_hd135540_ _hd135507135535_)
                          (_rest135542_ _tl135508135537_))
                      (_K135506135532_ _rest135542_ _hd135540_)))
                  (_try-match135502135526_)))))))
    (define gx#genident__%
      (lambda (_e135476_ _src135477_)
        (gx#stx-wrap-source
         (gensym (let ((_e135479_ (gx#stx-e _e135476_)))
                   (if (interned-symbol? _e135479_) _e135479_ 'g)))
         (let ((_$e135481_ (gx#stx-source _e135476_)))
           (if _$e135481_ _$e135481_ _src135477_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135488_ 'g) (_src135490_ '#f))
          (gx#genident__% _e135488_ _src135490_))))
    (define gx#genident__1
      (lambda (_e135492_)
        (let ((_src135494_ '#f)) (gx#genident__% _e135492_ _src135494_))))
    (define gx#genident
      (lambda _g140379_
        (let ((_g140378_ (##length _g140379_)))
          (cond ((##fx= _g140378_ 0)
                 (apply (lambda () (gx#genident__0)) _g140379_))
                ((##fx= _g140378_ 1)
                 (apply (lambda (_e135492_) (gx#genident__1 _e135492_))
                        _g140379_))
                ((##fx= _g140378_ 2)
                 (apply (lambda (_e135496_ _src135497_)
                          (gx#genident__% _e135496_ _src135497_))
                        _g140379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140379_))))))
    (define gx#gentemps
      (lambda (_stx-lst135473_) (gx#stx-map1 gx#genident _stx-lst135473_)))
    (define gx#syntax->list
      (lambda (_stx135471_) (gx#stx-map1 values _stx135471_)))
    (define gx#stx-car
      (lambda (_stx135468_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135468_)))))
    (define gx#stx-cdr
      (lambda (_stx135465_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135465_)))))
    (define gx#stx-length
      (lambda (_stx135430_)
        (let _lp135432_ ((_rest135434_ _stx135430_) (_n135435_ '0))
          (let* ((_g135436135444_ (gx#stx-e _rest135434_))
                 (_else135438135452_ (lambda () _n135435_))
                 (_K135440135457_
                  (lambda (_rest135455_)
                    (_lp135432_ _rest135455_ (fx+ _n135435_ '1)))))
            (if (##pair? _g135436135444_)
                (let* ((_tl135442135460_ (##cdr _g135436135444_))
                       (_rest135463_ _tl135442135460_))
                  (_K135440135457_ _rest135463_))
                (_else135438135452_))))))
    (define gx#stx-for-each
      (lambda _g140381_
        (let ((_g140380_ (##length _g140381_)))
          (cond ((##fx= _g140380_ 2)
                 (apply (lambda (_f135423_ _stx135424_)
                          (gx#stx-for-each1 _f135423_ _stx135424_))
                        _g140381_))
                ((##fx= _g140380_ 3)
                 (apply (lambda (_f135426_ _xstx135427_ _ystx135428_)
                          (gx#stx-for-each2
                           _f135426_
                           _xstx135427_
                           _ystx135428_))
                        _g140381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140381_))))))
    (define gx#stx-for-each1
      (lambda (_f135373_ _stx135374_)
        (if (procedure? _f135373_)
            '#!void
            (error '"expected procedure" _f135373_))
        (let _lp135376_ ((_rest135378_ _stx135374_))
          (let* ((_g135379135389_ (gx#syntax-e _rest135378_))
                 (_else135382135397_ (lambda () (_f135373_ _rest135378_))))
            (let ((_K135385135411_
                   (lambda (_rest135408_ _hd135409_)
                     (_f135373_ _hd135409_)
                     (_lp135376_ _rest135408_)))
                  (_K135384135402_ (lambda () '#!void)))
              (let ((_try-match135381135405_
                     (lambda ()
                       (if (##null? _g135379135389_)
                           (_K135384135402_)
                           (_else135382135397_)))))
                (if (##pair? _g135379135389_)
                    (let ((_tl135387135416_ (##cdr _g135379135389_))
                          (_hd135386135414_ (##car _g135379135389_)))
                      (let ((_hd135419_ _hd135386135414_)
                            (_rest135421_ _tl135387135416_))
                        (_K135385135411_ _rest135421_ _hd135419_)))
                    (_try-match135381135405_))))))))
    (define gx#stx-for-each2
      (lambda (_f135278_ _xstx135279_ _ystx135280_)
        (if (procedure? _f135278_)
            '#!void
            (error '"expected procedure" _f135278_))
        (let _lp135282_ ((_xrest135284_ _xstx135279_)
                         (_yrest135285_ _ystx135280_))
          (let* ((_g135286135296_ (gx#syntax-e _xrest135284_))
                 (_else135289135304_ (lambda () '#!void)))
            (let ((_K135292135361_
                   (lambda (_xrest135330_ _xhd135331_)
                     (let* ((_g135332135339_ (gx#syntax-e _yrest135285_))
                            (_E135334135343_
                             (lambda ()
                               (error '"No clause matching" _g135332135339_)))
                            (_K135335135349_
                             (lambda (_yrest135346_ _yhd135347_)
                               (_f135278_ _xhd135331_ _yhd135347_)
                               (_lp135282_ _xrest135330_ _yrest135346_))))
                       (if (##pair? _g135332135339_)
                           (let ((_hd135336135352_ (##car _g135332135339_))
                                 (_tl135337135354_ (##cdr _g135332135339_)))
                             (let* ((_yhd135357_ _hd135336135352_)
                                    (_yrest135359_ _tl135337135354_))
                               (_K135335135349_ _yrest135359_ _yhd135357_)))
                           (_E135334135343_)))))
                  (_K135291135324_
                   (lambda ()
                     (let* ((_yrest135308135313_ _yrest135285_)
                            (_E135310135317_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135308135313_)))
                            (_K135311135321_
                             (lambda ()
                               (_f135278_ _xrest135284_ _yrest135285_))))
                       (if (not (gx#stx-null? _yrest135308135313_))
                           (_K135311135321_)
                           (_E135310135317_))))))
              (let ((_try-match135288135327_
                     (lambda ()
                       (if (not (null? _g135286135296_))
                           (_K135291135324_)
                           (_else135289135304_)))))
                (if (##pair? _g135286135296_)
                    (let ((_tl135294135366_ (##cdr _g135286135296_))
                          (_hd135293135364_ (##car _g135286135296_)))
                      (let ((_xhd135369_ _hd135293135364_)
                            (_xrest135371_ _tl135294135366_))
                        (_K135292135361_ _xrest135371_ _xhd135369_)))
                    (_try-match135288135327_))))))))
    (define gx#stx-map
      (lambda _g140383_
        (let ((_g140382_ (##length _g140383_)))
          (cond ((##fx= _g140382_ 2)
                 (apply (lambda (_f135271_ _stx135272_)
                          (gx#stx-map1 _f135271_ _stx135272_))
                        _g140383_))
                ((##fx= _g140382_ 3)
                 (apply (lambda (_f135274_ _xstx135275_ _ystx135276_)
                          (gx#stx-map2 _f135274_ _xstx135275_ _ystx135276_))
                        _g140383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140383_))))))
    (define gx#stx-map1
      (lambda (_f135221_ _stx135222_)
        (if (procedure? _f135221_)
            '#!void
            (error '"expected procedure" _f135221_))
        (let _recur135224_ ((_rest135226_ _stx135222_))
          (let* ((_g135227135237_ (gx#syntax-e _rest135226_))
                 (_else135230135245_ (lambda () (_f135221_ _rest135226_))))
            (let ((_K135233135259_
                   (lambda (_rest135256_ _hd135257_)
                     (cons (_f135221_ _hd135257_)
                           (_recur135224_ _rest135256_))))
                  (_K135232135250_ (lambda () '())))
              (let ((_try-match135229135253_
                     (lambda ()
                       (if (##null? _g135227135237_)
                           (_K135232135250_)
                           (_else135230135245_)))))
                (if (##pair? _g135227135237_)
                    (let ((_tl135235135264_ (##cdr _g135227135237_))
                          (_hd135234135262_ (##car _g135227135237_)))
                      (let ((_hd135267_ _hd135234135262_)
                            (_rest135269_ _tl135235135264_))
                        (_K135233135259_ _rest135269_ _hd135267_)))
                    (_try-match135229135253_))))))))
    (define gx#stx-map2
      (lambda (_f135126_ _xstx135127_ _ystx135128_)
        (if (procedure? _f135126_)
            '#!void
            (error '"expected procedure" _f135126_))
        (let _recur135130_ ((_xrest135132_ _xstx135127_)
                            (_yrest135133_ _ystx135128_))
          (let* ((_g135134135144_ (gx#syntax-e _xrest135132_))
                 (_else135137135152_ (lambda () '())))
            (let ((_K135140135209_
                   (lambda (_xrest135178_ _xhd135179_)
                     (let* ((_g135180135187_ (gx#syntax-e _yrest135133_))
                            (_E135182135191_
                             (lambda ()
                               (error '"No clause matching" _g135180135187_)))
                            (_K135183135197_
                             (lambda (_yrest135194_ _yhd135195_)
                               (cons (_f135126_ _xhd135179_ _yhd135195_)
                                     (_recur135130_
                                      _xrest135178_
                                      _yrest135194_)))))
                       (if (##pair? _g135180135187_)
                           (let ((_hd135184135200_ (##car _g135180135187_))
                                 (_tl135185135202_ (##cdr _g135180135187_)))
                             (let* ((_yhd135205_ _hd135184135200_)
                                    (_yrest135207_ _tl135185135202_))
                               (_K135183135197_ _yrest135207_ _yhd135205_)))
                           (_E135182135191_)))))
                  (_K135139135172_
                   (lambda ()
                     (let* ((_yrest135156135161_ _yrest135133_)
                            (_E135158135165_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135156135161_)))
                            (_K135159135169_
                             (lambda ()
                               (_f135126_ _xrest135132_ _yrest135133_))))
                       (if (not (gx#stx-null? _yrest135156135161_))
                           (_K135159135169_)
                           (_E135158135165_))))))
              (let ((_try-match135136135175_
                     (lambda ()
                       (if (not (null? _g135134135144_))
                           (_K135139135172_)
                           (_else135137135152_)))))
                (if (##pair? _g135134135144_)
                    (let ((_tl135142135214_ (##cdr _g135134135144_))
                          (_hd135141135212_ (##car _g135134135144_)))
                      (let ((_xhd135217_ _hd135141135212_)
                            (_xrest135219_ _tl135142135214_))
                        (_K135140135209_ _xrest135219_ _xhd135217_)))
                    (_try-match135136135175_))))))))
    (define gx#stx-andmap
      (lambda (_f135076_ _stx135077_)
        (if (procedure? _f135076_)
            '#!void
            (error '"expected procedure" _f135076_))
        (let _lp135079_ ((_rest135081_ _stx135077_))
          (let* ((_g135082135092_ (gx#syntax-e _rest135081_))
                 (_else135085135100_ (lambda () (_f135076_ _rest135081_))))
            (let ((_K135088135114_
                   (lambda (_rest135111_ _hd135112_)
                     (if (_f135076_ _hd135112_)
                         (_lp135079_ _rest135111_)
                         '#f)))
                  (_K135087135105_ (lambda () '#t)))
              (let ((_try-match135084135108_
                     (lambda ()
                       (if (##null? _g135082135092_)
                           (_K135087135105_)
                           (_else135085135100_)))))
                (if (##pair? _g135082135092_)
                    (let ((_tl135090135119_ (##cdr _g135082135092_))
                          (_hd135089135117_ (##car _g135082135092_)))
                      (let ((_hd135122_ _hd135089135117_)
                            (_rest135124_ _tl135090135119_))
                        (_K135088135114_ _rest135124_ _hd135122_)))
                    (_try-match135084135108_))))))))
    (define gx#stx-ormap
      (lambda (_f135023_ _stx135024_)
        (if (procedure? _f135023_)
            '#!void
            (error '"expected procedure" _f135023_))
        (let _lp135026_ ((_rest135028_ _stx135024_))
          (let* ((_g135029135039_ (gx#syntax-e _rest135028_))
                 (_else135032135047_ (lambda () (_f135023_ _rest135028_))))
            (let ((_K135035135064_
                   (lambda (_rest135058_ _hd135059_)
                     (let ((_$e135061_ (_f135023_ _hd135059_)))
                       (if _$e135061_ _$e135061_ (_lp135026_ _rest135058_)))))
                  (_K135034135052_ (lambda () '#f)))
              (let ((_try-match135031135055_
                     (lambda ()
                       (if (##null? _g135029135039_)
                           (_K135034135052_)
                           (_else135032135047_)))))
                (if (##pair? _g135029135039_)
                    (let ((_tl135037135069_ (##cdr _g135029135039_))
                          (_hd135036135067_ (##car _g135029135039_)))
                      (let ((_hd135072_ _hd135036135067_)
                            (_rest135074_ _tl135037135069_))
                        (_K135035135064_ _rest135074_ _hd135072_)))
                    (_try-match135031135055_))))))))
    (define gx#stx-foldl
      (lambda (_f134971_ _iv134972_ _stx134973_)
        (if (procedure? _f134971_)
            '#!void
            (error '"expected procedure" _f134971_))
        (let _lp134975_ ((_r134977_ _iv134972_) (_rest134978_ _stx134973_))
          (let* ((_g134979134989_ (gx#syntax-e _rest134978_))
                 (_else134982134997_
                  (lambda () (_f134971_ _rest134978_ _r134977_))))
            (let ((_K134985135011_
                   (lambda (_rest135008_ _hd135009_)
                     (_lp134975_
                      (_f134971_ _hd135009_ _r134977_)
                      _rest135008_)))
                  (_K134984135002_ (lambda () _r134977_)))
              (let ((_try-match134981135005_
                     (lambda ()
                       (if (##null? _g134979134989_)
                           (_K134984135002_)
                           (_else134982134997_)))))
                (if (##pair? _g134979134989_)
                    (let ((_tl134987135016_ (##cdr _g134979134989_))
                          (_hd134986135014_ (##car _g134979134989_)))
                      (let ((_hd135019_ _hd134986135014_)
                            (_rest135021_ _tl134987135016_))
                        (_K134985135011_ _rest135021_ _hd135019_)))
                    (_try-match134981135005_))))))))
    (define gx#stx-foldr
      (lambda (_f134920_ _iv134921_ _stx134922_)
        (if (procedure? _f134920_)
            '#!void
            (error '"expected procedure" _f134920_))
        (let _recur134924_ ((_rest134926_ _stx134922_))
          (let* ((_g134927134937_ (gx#syntax-e _rest134926_))
                 (_else134930134945_
                  (lambda () (_f134920_ _rest134926_ _iv134921_))))
            (let ((_K134933134959_
                   (lambda (_rest134956_ _hd134957_)
                     (_f134920_ _hd134957_ (_recur134924_ _rest134956_))))
                  (_K134932134950_ (lambda () _iv134921_)))
              (let ((_try-match134929134953_
                     (lambda ()
                       (if (##null? _g134927134937_)
                           (_K134932134950_)
                           (_else134930134945_)))))
                (if (##pair? _g134927134937_)
                    (let ((_tl134935134964_ (##cdr _g134927134937_))
                          (_hd134934134962_ (##car _g134927134937_)))
                      (let ((_hd134967_ _hd134934134962_)
                            (_rest134969_ _tl134935134964_))
                        (_K134933134959_ _rest134969_ _hd134967_)))
                    (_try-match134929134953_))))))))
    (define gx#stx-reverse
      (lambda (_stx134918_) (gx#stx-foldl cons '() _stx134918_)))
    (define gx#stx-last
      (lambda (_stx134879_)
        (let _lp134881_ ((_rest134883_ _stx134879_))
          (let* ((_g134884134892_ (gx#syntax-e _rest134883_))
                 (_else134886134900_ (lambda () _rest134883_))
                 (_K134888134906_
                  (lambda (_rest134903_ _hd134904_)
                    (if (gx#stx-null? _rest134903_)
                        _hd134904_
                        (_lp134881_ _rest134903_)))))
            (if (##pair? _g134884134892_)
                (let ((_hd134889134909_ (##car _g134884134892_))
                      (_tl134890134911_ (##cdr _g134884134892_)))
                  (let* ((_hd134914_ _hd134889134909_)
                         (_rest134916_ _tl134890134911_))
                    (_K134888134906_ _rest134916_ _hd134914_)))
                (_else134886134900_))))))
    (define gx#stx-last-pair
      (lambda (_stx134850_)
        (let _lp134852_ ((_hd134854_ _stx134850_))
          (let* ((_g134855134862_ (gx#syntax-e _hd134854_))
                 (_E134857134866_
                  (lambda () (error '"No clause matching" _g134855134862_)))
                 (_K134858134871_
                  (lambda (_rest134869_)
                    (if (gx#stx-pair? _rest134869_)
                        (_lp134852_ _rest134869_)
                        _hd134854_))))
            (if (##pair? _g134855134862_)
                (let* ((_tl134860134874_ (##cdr _g134855134862_))
                       (_rest134877_ _tl134860134874_))
                  (_K134858134871_ _rest134877_))
                (_E134857134866_))))))
    (define gx#stx-list-tail
      (lambda (_stx134819_ _k134820_)
        (let _lp134822_ ((_rest134824_ _stx134819_) (_k134825_ _k134820_))
          (if (fxpositive? _k134825_)
              (let* ((_g134826134833_ (gx#syntax-e _rest134824_))
                     (_E134828134837_
                      (lambda ()
                        (error '"No clause matching" _g134826134833_)))
                     (_K134829134842_
                      (lambda (_rest134840_)
                        (_lp134822_ _rest134840_ (fx- _k134825_ '1)))))
                (if (##pair? _g134826134833_)
                    (let* ((_tl134831134845_ (##cdr _g134826134833_))
                           (_rest134848_ _tl134831134845_))
                      (_K134829134842_ _rest134848_))
                    (_E134828134837_)))
              _rest134824_))))
    (define gx#stx-list-ref
      (lambda (_stx134816_ _k134817_)
        (gx#stx-car (gx#stx-list-tail _stx134816_ _k134817_))))
    (define gx#stx-plist?__%
      (lambda (_stx134728_ _key?134729_)
        (if (procedure? _key?134729_)
            '#!void
            (error '"expected procedure" _key?134729_))
        (let _lp134731_ ((_rest134733_ _stx134728_))
          (let* ((_g134734134744_ (gx#stx-e _rest134733_))
                 (_else134737134752_ (lambda () '#f)))
            (let ((_K134740134794_
                   (lambda (_rest134763_ _hd134764_)
                     (if (_key?134729_ _hd134764_)
                         (let* ((_g134765134773_ (gx#stx-e _rest134763_))
                                (_else134767134781_ (lambda () '#f))
                                (_K134769134786_
                                 (lambda (_rest134784_)
                                   (_lp134731_ _rest134784_))))
                           (if (##pair? _g134765134773_)
                               (let* ((_tl134771134789_
                                       (##cdr _g134765134773_))
                                      (_rest134792_ _tl134771134789_))
                                 (_lp134731_ _rest134792_))
                               (_else134767134781_)))
                         '#f)))
                  (_K134739134757_ (lambda () '#t)))
              (let ((_try-match134736134760_
                     (lambda ()
                       (if (##null? _g134734134744_)
                           (_K134739134757_)
                           (_else134737134752_)))))
                (if (##pair? _g134734134744_)
                    (let ((_tl134742134799_ (##cdr _g134734134744_))
                          (_hd134741134797_ (##car _g134734134744_)))
                      (let ((_hd134802_ _hd134741134797_)
                            (_rest134804_ _tl134742134799_))
                        (_K134740134794_ _rest134804_ _hd134802_)))
                    (_try-match134736134760_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134809_)
        (let ((_key?134811_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134809_ _key?134811_))))
    (define gx#stx-plist?
      (lambda _g140385_
        (let ((_g140384_ (##length _g140385_)))
          (cond ((##fx= _g140384_ 1)
                 (apply (lambda (_stx134809_) (gx#stx-plist?__0 _stx134809_))
                        _g140385_))
                ((##fx= _g140384_ 2)
                 (apply (lambda (_stx134813_ _key?134814_)
                          (gx#stx-plist?__% _stx134813_ _key?134814_))
                        _g140385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140385_))))))
    (define gx#stx-getq__%
      (lambda (_key134646_ _stx134647_ _key=?134648_)
        (if (procedure? _key=?134648_)
            '#!void
            (error '"expected procedure" _key=?134648_))
        (let _lp134650_ ((_rest134652_ _stx134647_))
          (let* ((_g134653134661_ (gx#syntax-e _rest134652_))
                 (_else134655134669_ (lambda () '#f))
                 (_K134657134703_
                  (lambda (_rest134672_ _hd134673_)
                    (let* ((_g134674134681_ (gx#syntax-e _rest134672_))
                           (_E134676134685_
                            (lambda ()
                              (error '"No clause matching" _g134674134681_)))
                           (_K134677134691_
                            (lambda (_rest134688_ _val134689_)
                              (if (_key=?134648_ _hd134673_ _key134646_)
                                  _val134689_
                                  (_lp134650_ _rest134688_)))))
                      (if (##pair? _g134674134681_)
                          (let ((_hd134678134694_ (##car _g134674134681_))
                                (_tl134679134696_ (##cdr _g134674134681_)))
                            (let* ((_val134699_ _hd134678134694_)
                                   (_rest134701_ _tl134679134696_))
                              (_K134677134691_ _rest134701_ _val134699_)))
                          (_E134676134685_))))))
            (if (##pair? _g134653134661_)
                (let ((_hd134658134706_ (##car _g134653134661_))
                      (_tl134659134708_ (##cdr _g134653134661_)))
                  (let* ((_hd134711_ _hd134658134706_)
                         (_rest134713_ _tl134659134708_))
                    (_K134657134703_ _rest134713_ _hd134711_)))
                (_else134655134669_))))))
    (define gx#stx-getq__0
      (lambda (_key134718_ _stx134719_)
        (let ((_key=?134721_ gx#stx-eq?))
          (gx#stx-getq__% _key134718_ _stx134719_ _key=?134721_))))
    (define gx#stx-getq
      (lambda _g140387_
        (let ((_g140386_ (##length _g140387_)))
          (cond ((##fx= _g140386_ 2)
                 (apply (lambda (_key134718_ _stx134719_)
                          (gx#stx-getq__0 _key134718_ _stx134719_))
                        _g140387_))
                ((##fx= _g140386_ 3)
                 (apply (lambda (_key134723_ _stx134724_ _key=?134725_)
                          (gx#stx-getq__%
                           _key134723_
                           _stx134724_
                           _key=?134725_))
                        _g140387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140387_))))))))
