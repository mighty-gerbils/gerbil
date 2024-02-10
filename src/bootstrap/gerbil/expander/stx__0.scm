(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707601716)
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
      (lambda _$args135780_
        (apply make-struct-instance gx#identifier-wrap::t _$args135780_)))
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
      (lambda _$args135777_
        (apply make-struct-instance gx#syntax-wrap::t _$args135777_)))
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
      (lambda _$args135774_
        (apply make-struct-instance gx#syntax-quote::t _$args135774_)))
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
      (lambda (_stx135772_) (symbol? (gx#stx-e _stx135772_))))
    (define gx#identifier-quote?
      (lambda (_stx135770_)
        (if (##structure-direct-instance-of? _stx135770_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135770_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135768_)
        (if (##structure-direct-instance-of? _stx135768_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135768_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135768_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135766_)
        (if (##structure-direct-instance-of? _stx135766_ 'gx#syntax-quote::t)
            _stx135766_
            (if (##structure-direct-instance-of?
                 _stx135766_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135766_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135749_)
        (if (##structure-direct-instance-of? _stx135749_ 'gx#syntax-wrap::t)
            (let _lp135751_ ((_e135753_
                              (##unchecked-structure-ref
                               _stx135749_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135754_
                              (cons (##unchecked-structure-ref
                                     _stx135749_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135753_)
                  (let ((_$e135756_ (##type-id (##structure-type _e135753_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135756_)
                        (_lp135751_
                         (##unchecked-structure-ref _e135753_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135753_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135754_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135756_)
                                (eq? 'gx#identifier-wrap::t _$e135756_))
                            (##unchecked-structure-ref
                             _e135753_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135756_)
                                (_lp135751_
                                 (##unchecked-structure-ref
                                  _e135753_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135754_)
                                _e135753_))))
                  (if (null? _marks135754_)
                      _e135753_
                      (if (pair? _e135753_)
                          (cons (gx#stx-wrap (car _e135753_) _marks135754_)
                                (gx#stx-wrap (cdr _e135753_) _marks135754_))
                          (if (vector? _e135753_)
                              (vector-map
                               (lambda (_g135761135763_)
                                 (gx#stx-wrap _g135761135763_ _marks135754_))
                               _e135753_)
                              (if (box? _e135753_)
                                  (box (gx#stx-wrap
                                        (unbox _e135753_)
                                        _marks135754_))
                                  _e135753_))))))
            (if (##structure-instance-of? _stx135749_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135749_ '1 gx#AST::t '#f)
                _stx135749_))))
    (define gx#syntax->datum
      (lambda (_stx135747_)
        (if (##structure-instance-of? _stx135747_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135747_ '1 gx#AST::t '#f))
            (if (pair? _stx135747_)
                (cons (gx#syntax->datum (car _stx135747_))
                      (gx#syntax->datum (cdr _stx135747_)))
                (if (vector? _stx135747_)
                    (vector-map gx#syntax->datum _stx135747_)
                    (if (box? _stx135747_)
                        (box (gx#syntax->datum (unbox _stx135747_)))
                        _stx135747_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135690_ _datum135691_ _src135692_ _quote?135693_)
        (letrec ((_wrap-datum135695_
                  (lambda (_e135719_ _marks135720_)
                    (_wrap-inner135697_
                     _e135719_
                     (lambda (_g135721135723_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135721135723_
                        _src135692_
                        _marks135720_)))))
                 (_wrap-quote135696_
                  (lambda (_e135711_ _ctx135712_ _marks135713_)
                    (_wrap-inner135697_
                     _e135711_
                     (lambda (_g135714135716_)
                       (##structure
                        gx#syntax-quote::t
                        _g135714135716_
                        _src135692_
                        _ctx135712_
                        _marks135713_)))))
                 (_wrap-inner135697_
                  (lambda (_e135704_ _wrap-e135705_)
                    (let _recur135707_ ((_e135709_ _e135704_))
                      (if (symbol? _e135709_)
                          (_wrap-e135705_ _e135709_)
                          (if (pair? _e135709_)
                              (cons (_recur135707_ (car _e135709_))
                                    (_recur135707_ (cdr _e135709_)))
                              (if (vector? _e135709_)
                                  (vector-map _recur135707_ _e135709_)
                                  (if (box? _e135709_)
                                      (box (_recur135707_ (unbox _e135709_)))
                                      _e135709_)))))))
                 (_wrap-outer135698_
                  (lambda (_e135702_)
                    (if (##structure-instance-of? _e135702_ 'gerbil#AST::t)
                        _e135702_
                        (##structure gx#AST::t _e135702_ _src135692_)))))
          (if (##structure-instance-of? _datum135691_ 'gerbil#AST::t)
              _datum135691_
              (if (not _stx135690_)
                  (##structure gx#AST::t _datum135691_ _src135692_)
                  (if (gx#identifier? _stx135690_)
                      (let ((_stx135700_ (gx#stx-unwrap__0 _stx135690_)))
                        (_wrap-outer135698_
                         (if (##structure-direct-instance-of?
                              _stx135700_
                              'gx#syntax-quote::t)
                             (if _quote?135693_
                                 (_wrap-quote135696_
                                  _datum135691_
                                  (##unchecked-structure-ref
                                   _stx135700_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135700_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135695_
                                  _datum135691_
                                  (##unchecked-structure-ref
                                   _stx135700_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135695_
                              _datum135691_
                              (##unchecked-structure-ref
                               _stx135700_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135690_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135729_ _datum135730_)
        (let* ((_src135732_ '#f) (_quote?135734_ '#t))
          (gx#datum->syntax__%
           _stx135729_
           _datum135730_
           _src135732_
           _quote?135734_))))
    (define gx#datum->syntax__1
      (lambda (_stx135736_ _datum135737_ _src135738_)
        (let ((_quote?135740_ '#t))
          (gx#datum->syntax__%
           _stx135736_
           _datum135737_
           _src135738_
           _quote?135740_))))
    (define gx#datum->syntax
      (lambda _g140329_
        (let ((_g140328_ (##length _g140329_)))
          (cond ((##fx= _g140328_ 2)
                 (apply (lambda (_stx135729_ _datum135730_)
                          (gx#datum->syntax__0 _stx135729_ _datum135730_))
                        _g140329_))
                ((##fx= _g140328_ 3)
                 (apply (lambda (_stx135736_ _datum135737_ _src135738_)
                          (gx#datum->syntax__1
                           _stx135736_
                           _datum135737_
                           _src135738_))
                        _g140329_))
                ((##fx= _g140328_ 4)
                 (apply (lambda (_stx135742_
                                 _datum135743_
                                 _src135744_
                                 _quote?135745_)
                          (gx#datum->syntax__%
                           _stx135742_
                           _datum135743_
                           _src135744_
                           _quote?135745_))
                        _g140329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140329_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135666_ _marks135667_)
        (let _lp135669_ ((_e135671_ _stx135666_)
                         (_marks135672_ _marks135667_)
                         (_src135673_ (gx#stx-source _stx135666_)))
          (if (##structure-direct-instance-of? _e135671_ 'gx#syntax-wrap::t)
              (_lp135669_
               (##unchecked-structure-ref _e135671_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135671_ '3 gx#syntax-wrap::t '#f)
                _marks135672_)
               (##unchecked-structure-ref _e135671_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135671_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135672_)
                      _e135671_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135671_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135671_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135671_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135672_)))
                  (if (##structure-direct-instance-of?
                       _e135671_
                       'gx#syntax-quote::t)
                      _e135671_
                      (if (##structure-instance-of? _e135671_ 'gerbil#AST::t)
                          (_lp135669_
                           (##unchecked-structure-ref
                            _e135671_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135672_
                           (##unchecked-structure-ref
                            _e135671_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135671_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135671_
                               _src135673_
                               (reverse _marks135672_))
                              (if (null? _marks135672_)
                                  _e135671_
                                  (if (pair? _e135671_)
                                      (cons (gx#stx-wrap
                                             (car _e135671_)
                                             _marks135672_)
                                            (gx#stx-wrap
                                             (cdr _e135671_)
                                             _marks135672_))
                                      (if (vector? _e135671_)
                                          (vector-map
                                           (lambda (_g135674135676_)
                                             (gx#stx-wrap
                                              _g135674135676_
                                              _marks135672_))
                                           _e135671_)
                                          (if (box? _e135671_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135671_)
                                                    _marks135672_))
                                              _e135671_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135682_)
        (let ((_marks135684_ '()))
          (gx#stx-unwrap__% _stx135682_ _marks135684_))))
    (define gx#stx-unwrap
      (lambda _g140331_
        (let ((_g140330_ (##length _g140331_)))
          (cond ((##fx= _g140330_ 1)
                 (apply (lambda (_stx135682_) (gx#stx-unwrap__0 _stx135682_))
                        _g140331_))
                ((##fx= _g140330_ 2)
                 (apply (lambda (_stx135686_ _marks135687_)
                          (gx#stx-unwrap__% _stx135686_ _marks135687_))
                        _g140331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140331_))))))
    (define gx#stx-wrap
      (lambda (_stx135659_ _marks135660_)
        (foldl1 (lambda (_mark135662_ _stx135663_)
                  (gx#stx-apply-mark _stx135663_ _mark135662_))
                _stx135659_
                _marks135660_)))
    (define gx#stx-rewrap
      (lambda (_stx135653_ _marks135654_)
        (foldr1 (lambda (_mark135656_ _stx135657_)
                  (gx#stx-apply-mark _stx135657_ _mark135656_))
                _stx135653_
                _marks135654_)))
    (define gx#stx-apply-mark
      (lambda (_stx135650_ _mark135651_)
        (if (##structure-direct-instance-of? _stx135650_ 'gx#syntax-quote::t)
            _stx135650_
            (if (and (##structure-direct-instance-of?
                      _stx135650_
                      'gx#syntax-wrap::t)
                     (eq? _mark135651_
                          (##unchecked-structure-ref
                           _stx135650_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135650_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135650_
                 (gx#stx-source _stx135650_)
                 _mark135651_)))))
    (define gx#apply-mark
      (lambda (_mark135614_ _marks135615_)
        (let* ((_marks135616135624_ _marks135615_)
               (_else135618135632_
                (lambda () (cons _mark135614_ _marks135615_)))
               (_K135620135638_
                (lambda (_rest135635_ _hd135636_)
                  (if (eq? _mark135614_ _hd135636_)
                      _rest135635_
                      (cons _mark135614_ _marks135615_)))))
          (if (##pair? _marks135616135624_)
              (let ((_hd135621135641_ (##car _marks135616135624_))
                    (_tl135622135643_ (##cdr _marks135616135624_)))
                (let* ((_hd135646_ _hd135621135641_)
                       (_rest135648_ _tl135622135643_))
                  (_K135620135638_ _rest135648_ _hd135646_)))
              (_else135618135632_)))))
    (define gx#stx-e
      (lambda (_stx135612_)
        (if (##structure-direct-instance-of? _stx135612_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135612_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135612_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135612_ '1 gx#AST::t '#f)
                _stx135612_))))
    (define gx#stx-source
      (lambda (_stx135610_)
        (if (##structure-instance-of? _stx135610_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135610_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135604_ _src135605_)
        (if (or (##structure-instance-of? _stx135604_ 'gerbil#AST::t)
                (not _src135605_))
            _stx135604_
            (##structure gx#AST::t _stx135604_ _src135605_))))
    (define gx#stx-datum?
      (lambda (_stx135602_) (gx#self-quoting? (gx#stx-e _stx135602_))))
    (define gx#self-quoting?
      (lambda (_x135585_)
        (let ((_$e135587_ (immediate? _x135585_)))
          (if _$e135587_
              _$e135587_
              (let ((_$e135590_ (number? _x135585_)))
                (if _$e135590_
                    _$e135590_
                    (let ((_$e135593_ (keyword? _x135585_)))
                      (if _$e135593_
                          _$e135593_
                          (let ((_$e135596_ (string? _x135585_)))
                            (if _$e135596_
                                _$e135596_
                                (let ((_$e135599_ (vector? _x135585_)))
                                  (if _$e135599_
                                      _$e135599_
                                      (u8vector? _x135585_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135583_) (boolean? (gx#stx-e _e135583_))))
    (define gx#stx-keyword?
      (lambda (_e135581_) (keyword? (gx#stx-e _e135581_))))
    (define gx#stx-char? (lambda (_e135579_) (char? (gx#stx-e _e135579_))))
    (define gx#stx-number? (lambda (_e135577_) (number? (gx#stx-e _e135577_))))
    (define gx#stx-fixnum? (lambda (_e135575_) (fixnum? (gx#stx-e _e135575_))))
    (define gx#stx-string? (lambda (_e135573_) (string? (gx#stx-e _e135573_))))
    (define gx#stx-null? (lambda (_e135571_) (null? (gx#stx-e _e135571_))))
    (define gx#stx-pair? (lambda (_e135569_) (pair? (gx#stx-e _e135569_))))
    (define gx#stx-list?
      (lambda (_e135531_)
        (let* ((_g135532135541_ (gx#stx-e _e135531_))
               (_E135535135545_
                (lambda () (error '"No clause matching" _g135532135541_))))
          (let ((_K135537135561_
                 (lambda (_rest135559_) (gx#stx-list? _rest135559_)))
                (_K135536135551_ (lambda (_tail135549_) (null? _tail135549_))))
            (if (##pair? _g135532135541_)
                (let* ((_tl135539135564_ (##cdr _g135532135541_))
                       (_rest135567_ _tl135539135564_))
                  (gx#stx-list? _rest135567_))
                (let ((_tail135554_ _g135532135541_))
                  (null? _tail135554_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135524_)
        (let* ((_e135526_ (gx#stx-e _e135524_)) (_$e135528_ (pair? _e135526_)))
          (if _$e135528_ _$e135528_ (null? _e135526_)))))
    (define gx#stx-vector? (lambda (_e135522_) (vector? (gx#stx-e _e135522_))))
    (define gx#stx-box? (lambda (_e135520_) (box? (gx#stx-e _e135520_))))
    (define gx#stx-eq?
      (lambda (_x135517_ _y135518_)
        (eq? (gx#stx-e _x135517_) (gx#stx-e _y135518_))))
    (define gx#stx-eqv?
      (lambda (_x135514_ _y135515_)
        (eqv? (gx#stx-e _x135514_) (gx#stx-e _y135515_))))
    (define gx#stx-equal?
      (lambda (_x135511_ _y135512_)
        (equal? (gx#stx-e _x135511_) (gx#stx-e _y135512_))))
    (define gx#stx-false? (lambda (_x135509_) (not (gx#stx-e _x135509_))))
    (define gx#stx-identifier
      (lambda (_template135506_ . _args135507_)
        (gx#datum->syntax__1
         _template135506_
         (apply make-symbol (gx#syntax->datum _args135507_))
         (gx#stx-source _template135506_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135504_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135504_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135502_)
        (if (##structure-direct-instance-of?
             _stx135502_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135502_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135502_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135502_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135502_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135498_)
        (let ((_stx135500_ (gx#stx-unwrap__0 _stx135498_)))
          (if (gx#identifier-quote? _stx135500_)
              (##unchecked-structure-ref _stx135500_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135453_)
        (let* ((_g135454135464_ (gx#stx-e _stx135453_))
               (_else135457135472_ (lambda () '#f)))
          (let ((_K135460135486_
                 (lambda (_rest135483_ _hd135484_)
                   (if (gx#identifier? _hd135484_)
                       (gx#identifier-list? _rest135483_)
                       '#f)))
                (_K135459135477_ (lambda () '#t)))
            (let ((_try-match135456135480_
                   (lambda ()
                     (if (##null? _g135454135464_)
                         (_K135459135477_)
                         (_else135457135472_)))))
              (if (##pair? _g135454135464_)
                  (let ((_tl135462135491_ (##cdr _g135454135464_))
                        (_hd135461135489_ (##car _g135454135464_)))
                    (let ((_hd135494_ _hd135461135489_)
                          (_rest135496_ _tl135462135491_))
                      (_K135460135486_ _rest135496_ _hd135494_)))
                  (_try-match135456135480_)))))))
    (define gx#genident__%
      (lambda (_e135430_ _src135431_)
        (gx#stx-wrap-source
         (gensym (let ((_e135433_ (gx#stx-e _e135430_)))
                   (if (interned-symbol? _e135433_) _e135433_ 'g)))
         (let ((_$e135435_ (gx#stx-source _e135430_)))
           (if _$e135435_ _$e135435_ _src135431_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135442_ 'g) (_src135444_ '#f))
          (gx#genident__% _e135442_ _src135444_))))
    (define gx#genident__1
      (lambda (_e135446_)
        (let ((_src135448_ '#f)) (gx#genident__% _e135446_ _src135448_))))
    (define gx#genident
      (lambda _g140333_
        (let ((_g140332_ (##length _g140333_)))
          (cond ((##fx= _g140332_ 0)
                 (apply (lambda () (gx#genident__0)) _g140333_))
                ((##fx= _g140332_ 1)
                 (apply (lambda (_e135446_) (gx#genident__1 _e135446_))
                        _g140333_))
                ((##fx= _g140332_ 2)
                 (apply (lambda (_e135450_ _src135451_)
                          (gx#genident__% _e135450_ _src135451_))
                        _g140333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140333_))))))
    (define gx#gentemps
      (lambda (_stx-lst135427_) (gx#stx-map1 gx#genident _stx-lst135427_)))
    (define gx#syntax->list
      (lambda (_stx135425_) (gx#stx-map1 values _stx135425_)))
    (define gx#stx-car
      (lambda (_stx135422_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135422_)))))
    (define gx#stx-cdr
      (lambda (_stx135419_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135419_)))))
    (define gx#stx-length
      (lambda (_stx135384_)
        (let _lp135386_ ((_rest135388_ _stx135384_) (_n135389_ '0))
          (let* ((_g135390135398_ (gx#stx-e _rest135388_))
                 (_else135392135406_ (lambda () _n135389_))
                 (_K135394135411_
                  (lambda (_rest135409_)
                    (_lp135386_ _rest135409_ (fx+ _n135389_ '1)))))
            (if (##pair? _g135390135398_)
                (let* ((_tl135396135414_ (##cdr _g135390135398_))
                       (_rest135417_ _tl135396135414_))
                  (_K135394135411_ _rest135417_))
                (_else135392135406_))))))
    (define gx#stx-for-each
      (lambda _g140335_
        (let ((_g140334_ (##length _g140335_)))
          (cond ((##fx= _g140334_ 2)
                 (apply (lambda (_f135377_ _stx135378_)
                          (gx#stx-for-each1 _f135377_ _stx135378_))
                        _g140335_))
                ((##fx= _g140334_ 3)
                 (apply (lambda (_f135380_ _xstx135381_ _ystx135382_)
                          (gx#stx-for-each2
                           _f135380_
                           _xstx135381_
                           _ystx135382_))
                        _g140335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140335_))))))
    (define gx#stx-for-each1
      (lambda (_f135327_ _stx135328_)
        (if (procedure? _f135327_)
            '#!void
            (error '"expected procedure" _f135327_))
        (let _lp135330_ ((_rest135332_ _stx135328_))
          (let* ((_g135333135343_ (gx#syntax-e _rest135332_))
                 (_else135336135351_ (lambda () (_f135327_ _rest135332_))))
            (let ((_K135339135365_
                   (lambda (_rest135362_ _hd135363_)
                     (_f135327_ _hd135363_)
                     (_lp135330_ _rest135362_)))
                  (_K135338135356_ (lambda () '#!void)))
              (let ((_try-match135335135359_
                     (lambda ()
                       (if (##null? _g135333135343_)
                           (_K135338135356_)
                           (_else135336135351_)))))
                (if (##pair? _g135333135343_)
                    (let ((_tl135341135370_ (##cdr _g135333135343_))
                          (_hd135340135368_ (##car _g135333135343_)))
                      (let ((_hd135373_ _hd135340135368_)
                            (_rest135375_ _tl135341135370_))
                        (_K135339135365_ _rest135375_ _hd135373_)))
                    (_try-match135335135359_))))))))
    (define gx#stx-for-each2
      (lambda (_f135232_ _xstx135233_ _ystx135234_)
        (if (procedure? _f135232_)
            '#!void
            (error '"expected procedure" _f135232_))
        (let _lp135236_ ((_xrest135238_ _xstx135233_)
                         (_yrest135239_ _ystx135234_))
          (let* ((_g135240135250_ (gx#syntax-e _xrest135238_))
                 (_else135243135258_ (lambda () '#!void)))
            (let ((_K135246135315_
                   (lambda (_xrest135284_ _xhd135285_)
                     (let* ((_g135286135293_ (gx#syntax-e _yrest135239_))
                            (_E135288135297_
                             (lambda ()
                               (error '"No clause matching" _g135286135293_)))
                            (_K135289135303_
                             (lambda (_yrest135300_ _yhd135301_)
                               (_f135232_ _xhd135285_ _yhd135301_)
                               (_lp135236_ _xrest135284_ _yrest135300_))))
                       (if (##pair? _g135286135293_)
                           (let ((_hd135290135306_ (##car _g135286135293_))
                                 (_tl135291135308_ (##cdr _g135286135293_)))
                             (let* ((_yhd135311_ _hd135290135306_)
                                    (_yrest135313_ _tl135291135308_))
                               (_K135289135303_ _yrest135313_ _yhd135311_)))
                           (_E135288135297_)))))
                  (_K135245135278_
                   (lambda ()
                     (let* ((_yrest135262135267_ _yrest135239_)
                            (_E135264135271_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135262135267_)))
                            (_K135265135275_
                             (lambda ()
                               (_f135232_ _xrest135238_ _yrest135239_))))
                       (if (not (gx#stx-null? _yrest135262135267_))
                           (_K135265135275_)
                           (_E135264135271_))))))
              (let ((_try-match135242135281_
                     (lambda ()
                       (if (not (null? _g135240135250_))
                           (_K135245135278_)
                           (_else135243135258_)))))
                (if (##pair? _g135240135250_)
                    (let ((_tl135248135320_ (##cdr _g135240135250_))
                          (_hd135247135318_ (##car _g135240135250_)))
                      (let ((_xhd135323_ _hd135247135318_)
                            (_xrest135325_ _tl135248135320_))
                        (_K135246135315_ _xrest135325_ _xhd135323_)))
                    (_try-match135242135281_))))))))
    (define gx#stx-map
      (lambda _g140337_
        (let ((_g140336_ (##length _g140337_)))
          (cond ((##fx= _g140336_ 2)
                 (apply (lambda (_f135225_ _stx135226_)
                          (gx#stx-map1 _f135225_ _stx135226_))
                        _g140337_))
                ((##fx= _g140336_ 3)
                 (apply (lambda (_f135228_ _xstx135229_ _ystx135230_)
                          (gx#stx-map2 _f135228_ _xstx135229_ _ystx135230_))
                        _g140337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140337_))))))
    (define gx#stx-map1
      (lambda (_f135175_ _stx135176_)
        (if (procedure? _f135175_)
            '#!void
            (error '"expected procedure" _f135175_))
        (let _recur135178_ ((_rest135180_ _stx135176_))
          (let* ((_g135181135191_ (gx#syntax-e _rest135180_))
                 (_else135184135199_ (lambda () (_f135175_ _rest135180_))))
            (let ((_K135187135213_
                   (lambda (_rest135210_ _hd135211_)
                     (cons (_f135175_ _hd135211_)
                           (_recur135178_ _rest135210_))))
                  (_K135186135204_ (lambda () '())))
              (let ((_try-match135183135207_
                     (lambda ()
                       (if (##null? _g135181135191_)
                           (_K135186135204_)
                           (_else135184135199_)))))
                (if (##pair? _g135181135191_)
                    (let ((_tl135189135218_ (##cdr _g135181135191_))
                          (_hd135188135216_ (##car _g135181135191_)))
                      (let ((_hd135221_ _hd135188135216_)
                            (_rest135223_ _tl135189135218_))
                        (_K135187135213_ _rest135223_ _hd135221_)))
                    (_try-match135183135207_))))))))
    (define gx#stx-map2
      (lambda (_f135080_ _xstx135081_ _ystx135082_)
        (if (procedure? _f135080_)
            '#!void
            (error '"expected procedure" _f135080_))
        (let _recur135084_ ((_xrest135086_ _xstx135081_)
                            (_yrest135087_ _ystx135082_))
          (let* ((_g135088135098_ (gx#syntax-e _xrest135086_))
                 (_else135091135106_ (lambda () '())))
            (let ((_K135094135163_
                   (lambda (_xrest135132_ _xhd135133_)
                     (let* ((_g135134135141_ (gx#syntax-e _yrest135087_))
                            (_E135136135145_
                             (lambda ()
                               (error '"No clause matching" _g135134135141_)))
                            (_K135137135151_
                             (lambda (_yrest135148_ _yhd135149_)
                               (cons (_f135080_ _xhd135133_ _yhd135149_)
                                     (_recur135084_
                                      _xrest135132_
                                      _yrest135148_)))))
                       (if (##pair? _g135134135141_)
                           (let ((_hd135138135154_ (##car _g135134135141_))
                                 (_tl135139135156_ (##cdr _g135134135141_)))
                             (let* ((_yhd135159_ _hd135138135154_)
                                    (_yrest135161_ _tl135139135156_))
                               (_K135137135151_ _yrest135161_ _yhd135159_)))
                           (_E135136135145_)))))
                  (_K135093135126_
                   (lambda ()
                     (let* ((_yrest135110135115_ _yrest135087_)
                            (_E135112135119_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135110135115_)))
                            (_K135113135123_
                             (lambda ()
                               (_f135080_ _xrest135086_ _yrest135087_))))
                       (if (not (gx#stx-null? _yrest135110135115_))
                           (_K135113135123_)
                           (_E135112135119_))))))
              (let ((_try-match135090135129_
                     (lambda ()
                       (if (not (null? _g135088135098_))
                           (_K135093135126_)
                           (_else135091135106_)))))
                (if (##pair? _g135088135098_)
                    (let ((_tl135096135168_ (##cdr _g135088135098_))
                          (_hd135095135166_ (##car _g135088135098_)))
                      (let ((_xhd135171_ _hd135095135166_)
                            (_xrest135173_ _tl135096135168_))
                        (_K135094135163_ _xrest135173_ _xhd135171_)))
                    (_try-match135090135129_))))))))
    (define gx#stx-andmap
      (lambda (_f135030_ _stx135031_)
        (if (procedure? _f135030_)
            '#!void
            (error '"expected procedure" _f135030_))
        (let _lp135033_ ((_rest135035_ _stx135031_))
          (let* ((_g135036135046_ (gx#syntax-e _rest135035_))
                 (_else135039135054_ (lambda () (_f135030_ _rest135035_))))
            (let ((_K135042135068_
                   (lambda (_rest135065_ _hd135066_)
                     (if (_f135030_ _hd135066_)
                         (_lp135033_ _rest135065_)
                         '#f)))
                  (_K135041135059_ (lambda () '#t)))
              (let ((_try-match135038135062_
                     (lambda ()
                       (if (##null? _g135036135046_)
                           (_K135041135059_)
                           (_else135039135054_)))))
                (if (##pair? _g135036135046_)
                    (let ((_tl135044135073_ (##cdr _g135036135046_))
                          (_hd135043135071_ (##car _g135036135046_)))
                      (let ((_hd135076_ _hd135043135071_)
                            (_rest135078_ _tl135044135073_))
                        (_K135042135068_ _rest135078_ _hd135076_)))
                    (_try-match135038135062_))))))))
    (define gx#stx-ormap
      (lambda (_f134977_ _stx134978_)
        (if (procedure? _f134977_)
            '#!void
            (error '"expected procedure" _f134977_))
        (let _lp134980_ ((_rest134982_ _stx134978_))
          (let* ((_g134983134993_ (gx#syntax-e _rest134982_))
                 (_else134986135001_ (lambda () (_f134977_ _rest134982_))))
            (let ((_K134989135018_
                   (lambda (_rest135012_ _hd135013_)
                     (let ((_$e135015_ (_f134977_ _hd135013_)))
                       (if _$e135015_ _$e135015_ (_lp134980_ _rest135012_)))))
                  (_K134988135006_ (lambda () '#f)))
              (let ((_try-match134985135009_
                     (lambda ()
                       (if (##null? _g134983134993_)
                           (_K134988135006_)
                           (_else134986135001_)))))
                (if (##pair? _g134983134993_)
                    (let ((_tl134991135023_ (##cdr _g134983134993_))
                          (_hd134990135021_ (##car _g134983134993_)))
                      (let ((_hd135026_ _hd134990135021_)
                            (_rest135028_ _tl134991135023_))
                        (_K134989135018_ _rest135028_ _hd135026_)))
                    (_try-match134985135009_))))))))
    (define gx#stx-foldl
      (lambda (_f134925_ _iv134926_ _stx134927_)
        (if (procedure? _f134925_)
            '#!void
            (error '"expected procedure" _f134925_))
        (let _lp134929_ ((_r134931_ _iv134926_) (_rest134932_ _stx134927_))
          (let* ((_g134933134943_ (gx#syntax-e _rest134932_))
                 (_else134936134951_
                  (lambda () (_f134925_ _rest134932_ _r134931_))))
            (let ((_K134939134965_
                   (lambda (_rest134962_ _hd134963_)
                     (_lp134929_
                      (_f134925_ _hd134963_ _r134931_)
                      _rest134962_)))
                  (_K134938134956_ (lambda () _r134931_)))
              (let ((_try-match134935134959_
                     (lambda ()
                       (if (##null? _g134933134943_)
                           (_K134938134956_)
                           (_else134936134951_)))))
                (if (##pair? _g134933134943_)
                    (let ((_tl134941134970_ (##cdr _g134933134943_))
                          (_hd134940134968_ (##car _g134933134943_)))
                      (let ((_hd134973_ _hd134940134968_)
                            (_rest134975_ _tl134941134970_))
                        (_K134939134965_ _rest134975_ _hd134973_)))
                    (_try-match134935134959_))))))))
    (define gx#stx-foldr
      (lambda (_f134874_ _iv134875_ _stx134876_)
        (if (procedure? _f134874_)
            '#!void
            (error '"expected procedure" _f134874_))
        (let _recur134878_ ((_rest134880_ _stx134876_))
          (let* ((_g134881134891_ (gx#syntax-e _rest134880_))
                 (_else134884134899_
                  (lambda () (_f134874_ _rest134880_ _iv134875_))))
            (let ((_K134887134913_
                   (lambda (_rest134910_ _hd134911_)
                     (_f134874_ _hd134911_ (_recur134878_ _rest134910_))))
                  (_K134886134904_ (lambda () _iv134875_)))
              (let ((_try-match134883134907_
                     (lambda ()
                       (if (##null? _g134881134891_)
                           (_K134886134904_)
                           (_else134884134899_)))))
                (if (##pair? _g134881134891_)
                    (let ((_tl134889134918_ (##cdr _g134881134891_))
                          (_hd134888134916_ (##car _g134881134891_)))
                      (let ((_hd134921_ _hd134888134916_)
                            (_rest134923_ _tl134889134918_))
                        (_K134887134913_ _rest134923_ _hd134921_)))
                    (_try-match134883134907_))))))))
    (define gx#stx-reverse
      (lambda (_stx134872_) (gx#stx-foldl cons '() _stx134872_)))
    (define gx#stx-last
      (lambda (_stx134833_)
        (let _lp134835_ ((_rest134837_ _stx134833_))
          (let* ((_g134838134846_ (gx#syntax-e _rest134837_))
                 (_else134840134854_ (lambda () _rest134837_))
                 (_K134842134860_
                  (lambda (_rest134857_ _hd134858_)
                    (if (gx#stx-null? _rest134857_)
                        _hd134858_
                        (_lp134835_ _rest134857_)))))
            (if (##pair? _g134838134846_)
                (let ((_hd134843134863_ (##car _g134838134846_))
                      (_tl134844134865_ (##cdr _g134838134846_)))
                  (let* ((_hd134868_ _hd134843134863_)
                         (_rest134870_ _tl134844134865_))
                    (_K134842134860_ _rest134870_ _hd134868_)))
                (_else134840134854_))))))
    (define gx#stx-last-pair
      (lambda (_stx134804_)
        (let _lp134806_ ((_hd134808_ _stx134804_))
          (let* ((_g134809134816_ (gx#syntax-e _hd134808_))
                 (_E134811134820_
                  (lambda () (error '"No clause matching" _g134809134816_)))
                 (_K134812134825_
                  (lambda (_rest134823_)
                    (if (gx#stx-pair? _rest134823_)
                        (_lp134806_ _rest134823_)
                        _hd134808_))))
            (if (##pair? _g134809134816_)
                (let* ((_tl134814134828_ (##cdr _g134809134816_))
                       (_rest134831_ _tl134814134828_))
                  (_K134812134825_ _rest134831_))
                (_E134811134820_))))))
    (define gx#stx-list-tail
      (lambda (_stx134773_ _k134774_)
        (let _lp134776_ ((_rest134778_ _stx134773_) (_k134779_ _k134774_))
          (if (fxpositive? _k134779_)
              (let* ((_g134780134787_ (gx#syntax-e _rest134778_))
                     (_E134782134791_
                      (lambda ()
                        (error '"No clause matching" _g134780134787_)))
                     (_K134783134796_
                      (lambda (_rest134794_)
                        (_lp134776_ _rest134794_ (fx- _k134779_ '1)))))
                (if (##pair? _g134780134787_)
                    (let* ((_tl134785134799_ (##cdr _g134780134787_))
                           (_rest134802_ _tl134785134799_))
                      (_K134783134796_ _rest134802_))
                    (_E134782134791_)))
              _rest134778_))))
    (define gx#stx-list-ref
      (lambda (_stx134770_ _k134771_)
        (gx#stx-car (gx#stx-list-tail _stx134770_ _k134771_))))
    (define gx#stx-plist?__%
      (lambda (_stx134682_ _key?134683_)
        (if (procedure? _key?134683_)
            '#!void
            (error '"expected procedure" _key?134683_))
        (let _lp134685_ ((_rest134687_ _stx134682_))
          (let* ((_g134688134698_ (gx#stx-e _rest134687_))
                 (_else134691134706_ (lambda () '#f)))
            (let ((_K134694134748_
                   (lambda (_rest134717_ _hd134718_)
                     (if (_key?134683_ _hd134718_)
                         (let* ((_g134719134727_ (gx#stx-e _rest134717_))
                                (_else134721134735_ (lambda () '#f))
                                (_K134723134740_
                                 (lambda (_rest134738_)
                                   (_lp134685_ _rest134738_))))
                           (if (##pair? _g134719134727_)
                               (let* ((_tl134725134743_
                                       (##cdr _g134719134727_))
                                      (_rest134746_ _tl134725134743_))
                                 (_lp134685_ _rest134746_))
                               (_else134721134735_)))
                         '#f)))
                  (_K134693134711_ (lambda () '#t)))
              (let ((_try-match134690134714_
                     (lambda ()
                       (if (##null? _g134688134698_)
                           (_K134693134711_)
                           (_else134691134706_)))))
                (if (##pair? _g134688134698_)
                    (let ((_tl134696134753_ (##cdr _g134688134698_))
                          (_hd134695134751_ (##car _g134688134698_)))
                      (let ((_hd134756_ _hd134695134751_)
                            (_rest134758_ _tl134696134753_))
                        (_K134694134748_ _rest134758_ _hd134756_)))
                    (_try-match134690134714_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134763_)
        (let ((_key?134765_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134763_ _key?134765_))))
    (define gx#stx-plist?
      (lambda _g140339_
        (let ((_g140338_ (##length _g140339_)))
          (cond ((##fx= _g140338_ 1)
                 (apply (lambda (_stx134763_) (gx#stx-plist?__0 _stx134763_))
                        _g140339_))
                ((##fx= _g140338_ 2)
                 (apply (lambda (_stx134767_ _key?134768_)
                          (gx#stx-plist?__% _stx134767_ _key?134768_))
                        _g140339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140339_))))))
    (define gx#stx-getq__%
      (lambda (_key134600_ _stx134601_ _key=?134602_)
        (if (procedure? _key=?134602_)
            '#!void
            (error '"expected procedure" _key=?134602_))
        (let _lp134604_ ((_rest134606_ _stx134601_))
          (let* ((_g134607134615_ (gx#syntax-e _rest134606_))
                 (_else134609134623_ (lambda () '#f))
                 (_K134611134657_
                  (lambda (_rest134626_ _hd134627_)
                    (let* ((_g134628134635_ (gx#syntax-e _rest134626_))
                           (_E134630134639_
                            (lambda ()
                              (error '"No clause matching" _g134628134635_)))
                           (_K134631134645_
                            (lambda (_rest134642_ _val134643_)
                              (if (_key=?134602_ _hd134627_ _key134600_)
                                  _val134643_
                                  (_lp134604_ _rest134642_)))))
                      (if (##pair? _g134628134635_)
                          (let ((_hd134632134648_ (##car _g134628134635_))
                                (_tl134633134650_ (##cdr _g134628134635_)))
                            (let* ((_val134653_ _hd134632134648_)
                                   (_rest134655_ _tl134633134650_))
                              (_K134631134645_ _rest134655_ _val134653_)))
                          (_E134630134639_))))))
            (if (##pair? _g134607134615_)
                (let ((_hd134612134660_ (##car _g134607134615_))
                      (_tl134613134662_ (##cdr _g134607134615_)))
                  (let* ((_hd134665_ _hd134612134660_)
                         (_rest134667_ _tl134613134662_))
                    (_K134611134657_ _rest134667_ _hd134665_)))
                (_else134609134623_))))))
    (define gx#stx-getq__0
      (lambda (_key134672_ _stx134673_)
        (let ((_key=?134675_ gx#stx-eq?))
          (gx#stx-getq__% _key134672_ _stx134673_ _key=?134675_))))
    (define gx#stx-getq
      (lambda _g140341_
        (let ((_g140340_ (##length _g140341_)))
          (cond ((##fx= _g140340_ 2)
                 (apply (lambda (_key134672_ _stx134673_)
                          (gx#stx-getq__0 _key134672_ _stx134673_))
                        _g140341_))
                ((##fx= _g140340_ 3)
                 (apply (lambda (_key134677_ _stx134678_ _key=?134679_)
                          (gx#stx-getq__%
                           _key134677_
                           _stx134678_
                           _key=?134679_))
                        _g140341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140341_))))))))
