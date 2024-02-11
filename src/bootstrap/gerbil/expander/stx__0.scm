(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707610213)
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
      (lambda _$args135812_
        (apply make-struct-instance gx#identifier-wrap::t _$args135812_)))
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
      (lambda _$args135809_
        (apply make-struct-instance gx#syntax-wrap::t _$args135809_)))
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
      (lambda _$args135806_
        (apply make-struct-instance gx#syntax-quote::t _$args135806_)))
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
      (lambda (_stx135804_) (symbol? (gx#stx-e _stx135804_))))
    (define gx#identifier-quote?
      (lambda (_stx135802_)
        (if (##structure-direct-instance-of? _stx135802_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135802_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135800_)
        (if (##structure-direct-instance-of? _stx135800_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135800_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135800_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135798_)
        (if (##structure-direct-instance-of? _stx135798_ 'gx#syntax-quote::t)
            _stx135798_
            (if (##structure-direct-instance-of?
                 _stx135798_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135798_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135781_)
        (if (##structure-direct-instance-of? _stx135781_ 'gx#syntax-wrap::t)
            (let _lp135783_ ((_e135785_
                              (##unchecked-structure-ref
                               _stx135781_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135786_
                              (cons (##unchecked-structure-ref
                                     _stx135781_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135785_)
                  (let ((_$e135788_ (##type-id (##structure-type _e135785_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135788_)
                        (_lp135783_
                         (##unchecked-structure-ref _e135785_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135785_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135786_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135788_)
                                (eq? 'gx#identifier-wrap::t _$e135788_))
                            (##unchecked-structure-ref
                             _e135785_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135788_)
                                (_lp135783_
                                 (##unchecked-structure-ref
                                  _e135785_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135786_)
                                _e135785_))))
                  (if (null? _marks135786_)
                      _e135785_
                      (if (pair? _e135785_)
                          (cons (gx#stx-wrap (car _e135785_) _marks135786_)
                                (gx#stx-wrap (cdr _e135785_) _marks135786_))
                          (if (vector? _e135785_)
                              (vector-map
                               (lambda (_g135793135795_)
                                 (gx#stx-wrap _g135793135795_ _marks135786_))
                               _e135785_)
                              (if (box? _e135785_)
                                  (box (gx#stx-wrap
                                        (unbox _e135785_)
                                        _marks135786_))
                                  _e135785_))))))
            (if (##structure-instance-of? _stx135781_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135781_ '1 gx#AST::t '#f)
                _stx135781_))))
    (define gx#syntax->datum
      (lambda (_stx135779_)
        (if (##structure-instance-of? _stx135779_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135779_ '1 gx#AST::t '#f))
            (if (pair? _stx135779_)
                (cons (gx#syntax->datum (car _stx135779_))
                      (gx#syntax->datum (cdr _stx135779_)))
                (if (vector? _stx135779_)
                    (vector-map gx#syntax->datum _stx135779_)
                    (if (box? _stx135779_)
                        (box (gx#syntax->datum (unbox _stx135779_)))
                        _stx135779_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135722_ _datum135723_ _src135724_ _quote?135725_)
        (letrec ((_wrap-datum135727_
                  (lambda (_e135751_ _marks135752_)
                    (_wrap-inner135729_
                     _e135751_
                     (lambda (_g135753135755_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135753135755_
                        _src135724_
                        _marks135752_)))))
                 (_wrap-quote135728_
                  (lambda (_e135743_ _ctx135744_ _marks135745_)
                    (_wrap-inner135729_
                     _e135743_
                     (lambda (_g135746135748_)
                       (##structure
                        gx#syntax-quote::t
                        _g135746135748_
                        _src135724_
                        _ctx135744_
                        _marks135745_)))))
                 (_wrap-inner135729_
                  (lambda (_e135736_ _wrap-e135737_)
                    (let _recur135739_ ((_e135741_ _e135736_))
                      (if (symbol? _e135741_)
                          (_wrap-e135737_ _e135741_)
                          (if (pair? _e135741_)
                              (cons (_recur135739_ (car _e135741_))
                                    (_recur135739_ (cdr _e135741_)))
                              (if (vector? _e135741_)
                                  (vector-map _recur135739_ _e135741_)
                                  (if (box? _e135741_)
                                      (box (_recur135739_ (unbox _e135741_)))
                                      _e135741_)))))))
                 (_wrap-outer135730_
                  (lambda (_e135734_)
                    (if (##structure-instance-of? _e135734_ 'gerbil#AST::t)
                        _e135734_
                        (##structure gx#AST::t _e135734_ _src135724_)))))
          (if (##structure-instance-of? _datum135723_ 'gerbil#AST::t)
              _datum135723_
              (if (not _stx135722_)
                  (##structure gx#AST::t _datum135723_ _src135724_)
                  (if (gx#identifier? _stx135722_)
                      (let ((_stx135732_ (gx#stx-unwrap__0 _stx135722_)))
                        (_wrap-outer135730_
                         (if (##structure-direct-instance-of?
                              _stx135732_
                              'gx#syntax-quote::t)
                             (if _quote?135725_
                                 (_wrap-quote135728_
                                  _datum135723_
                                  (##unchecked-structure-ref
                                   _stx135732_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135732_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135727_
                                  _datum135723_
                                  (##unchecked-structure-ref
                                   _stx135732_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135727_
                              _datum135723_
                              (##unchecked-structure-ref
                               _stx135732_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135722_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135761_ _datum135762_)
        (let* ((_src135764_ '#f) (_quote?135766_ '#t))
          (gx#datum->syntax__%
           _stx135761_
           _datum135762_
           _src135764_
           _quote?135766_))))
    (define gx#datum->syntax__1
      (lambda (_stx135768_ _datum135769_ _src135770_)
        (let ((_quote?135772_ '#t))
          (gx#datum->syntax__%
           _stx135768_
           _datum135769_
           _src135770_
           _quote?135772_))))
    (define gx#datum->syntax
      (lambda _g140361_
        (let ((_g140360_ (##length _g140361_)))
          (cond ((##fx= _g140360_ 2)
                 (apply (lambda (_stx135761_ _datum135762_)
                          (gx#datum->syntax__0 _stx135761_ _datum135762_))
                        _g140361_))
                ((##fx= _g140360_ 3)
                 (apply (lambda (_stx135768_ _datum135769_ _src135770_)
                          (gx#datum->syntax__1
                           _stx135768_
                           _datum135769_
                           _src135770_))
                        _g140361_))
                ((##fx= _g140360_ 4)
                 (apply (lambda (_stx135774_
                                 _datum135775_
                                 _src135776_
                                 _quote?135777_)
                          (gx#datum->syntax__%
                           _stx135774_
                           _datum135775_
                           _src135776_
                           _quote?135777_))
                        _g140361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140361_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135698_ _marks135699_)
        (let _lp135701_ ((_e135703_ _stx135698_)
                         (_marks135704_ _marks135699_)
                         (_src135705_ (gx#stx-source _stx135698_)))
          (if (##structure-direct-instance-of? _e135703_ 'gx#syntax-wrap::t)
              (_lp135701_
               (##unchecked-structure-ref _e135703_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135703_ '3 gx#syntax-wrap::t '#f)
                _marks135704_)
               (##unchecked-structure-ref _e135703_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135703_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135704_)
                      _e135703_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135703_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135703_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135703_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135704_)))
                  (if (##structure-direct-instance-of?
                       _e135703_
                       'gx#syntax-quote::t)
                      _e135703_
                      (if (##structure-instance-of? _e135703_ 'gerbil#AST::t)
                          (_lp135701_
                           (##unchecked-structure-ref
                            _e135703_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135704_
                           (##unchecked-structure-ref
                            _e135703_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135703_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135703_
                               _src135705_
                               (reverse _marks135704_))
                              (if (null? _marks135704_)
                                  _e135703_
                                  (if (pair? _e135703_)
                                      (cons (gx#stx-wrap
                                             (car _e135703_)
                                             _marks135704_)
                                            (gx#stx-wrap
                                             (cdr _e135703_)
                                             _marks135704_))
                                      (if (vector? _e135703_)
                                          (vector-map
                                           (lambda (_g135706135708_)
                                             (gx#stx-wrap
                                              _g135706135708_
                                              _marks135704_))
                                           _e135703_)
                                          (if (box? _e135703_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135703_)
                                                    _marks135704_))
                                              _e135703_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135714_)
        (let ((_marks135716_ '()))
          (gx#stx-unwrap__% _stx135714_ _marks135716_))))
    (define gx#stx-unwrap
      (lambda _g140363_
        (let ((_g140362_ (##length _g140363_)))
          (cond ((##fx= _g140362_ 1)
                 (apply (lambda (_stx135714_) (gx#stx-unwrap__0 _stx135714_))
                        _g140363_))
                ((##fx= _g140362_ 2)
                 (apply (lambda (_stx135718_ _marks135719_)
                          (gx#stx-unwrap__% _stx135718_ _marks135719_))
                        _g140363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140363_))))))
    (define gx#stx-wrap
      (lambda (_stx135691_ _marks135692_)
        (foldl1 (lambda (_mark135694_ _stx135695_)
                  (gx#stx-apply-mark _stx135695_ _mark135694_))
                _stx135691_
                _marks135692_)))
    (define gx#stx-rewrap
      (lambda (_stx135685_ _marks135686_)
        (foldr1 (lambda (_mark135688_ _stx135689_)
                  (gx#stx-apply-mark _stx135689_ _mark135688_))
                _stx135685_
                _marks135686_)))
    (define gx#stx-apply-mark
      (lambda (_stx135682_ _mark135683_)
        (if (##structure-direct-instance-of? _stx135682_ 'gx#syntax-quote::t)
            _stx135682_
            (if (and (##structure-direct-instance-of?
                      _stx135682_
                      'gx#syntax-wrap::t)
                     (eq? _mark135683_
                          (##unchecked-structure-ref
                           _stx135682_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135682_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135682_
                 (gx#stx-source _stx135682_)
                 _mark135683_)))))
    (define gx#apply-mark
      (lambda (_mark135646_ _marks135647_)
        (let* ((_marks135648135656_ _marks135647_)
               (_else135650135664_
                (lambda () (cons _mark135646_ _marks135647_)))
               (_K135652135670_
                (lambda (_rest135667_ _hd135668_)
                  (if (eq? _mark135646_ _hd135668_)
                      _rest135667_
                      (cons _mark135646_ _marks135647_)))))
          (if (##pair? _marks135648135656_)
              (let ((_hd135653135673_ (##car _marks135648135656_))
                    (_tl135654135675_ (##cdr _marks135648135656_)))
                (let* ((_hd135678_ _hd135653135673_)
                       (_rest135680_ _tl135654135675_))
                  (_K135652135670_ _rest135680_ _hd135678_)))
              (_else135650135664_)))))
    (define gx#stx-e
      (lambda (_stx135644_)
        (if (##structure-direct-instance-of? _stx135644_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135644_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135644_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135644_ '1 gx#AST::t '#f)
                _stx135644_))))
    (define gx#stx-source
      (lambda (_stx135642_)
        (if (##structure-instance-of? _stx135642_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135642_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135636_ _src135637_)
        (if (or (##structure-instance-of? _stx135636_ 'gerbil#AST::t)
                (not _src135637_))
            _stx135636_
            (##structure gx#AST::t _stx135636_ _src135637_))))
    (define gx#stx-datum?
      (lambda (_stx135634_) (gx#self-quoting? (gx#stx-e _stx135634_))))
    (define gx#self-quoting?
      (lambda (_x135617_)
        (let ((_$e135619_ (immediate? _x135617_)))
          (if _$e135619_
              _$e135619_
              (let ((_$e135622_ (number? _x135617_)))
                (if _$e135622_
                    _$e135622_
                    (let ((_$e135625_ (keyword? _x135617_)))
                      (if _$e135625_
                          _$e135625_
                          (let ((_$e135628_ (string? _x135617_)))
                            (if _$e135628_
                                _$e135628_
                                (let ((_$e135631_ (vector? _x135617_)))
                                  (if _$e135631_
                                      _$e135631_
                                      (u8vector? _x135617_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135615_) (boolean? (gx#stx-e _e135615_))))
    (define gx#stx-keyword?
      (lambda (_e135613_) (keyword? (gx#stx-e _e135613_))))
    (define gx#stx-char? (lambda (_e135611_) (char? (gx#stx-e _e135611_))))
    (define gx#stx-number? (lambda (_e135609_) (number? (gx#stx-e _e135609_))))
    (define gx#stx-fixnum? (lambda (_e135607_) (fixnum? (gx#stx-e _e135607_))))
    (define gx#stx-string? (lambda (_e135605_) (string? (gx#stx-e _e135605_))))
    (define gx#stx-null? (lambda (_e135603_) (null? (gx#stx-e _e135603_))))
    (define gx#stx-pair? (lambda (_e135601_) (pair? (gx#stx-e _e135601_))))
    (define gx#stx-list?
      (lambda (_e135563_)
        (let* ((_g135564135573_ (gx#stx-e _e135563_))
               (_E135567135577_
                (lambda () (error '"No clause matching" _g135564135573_))))
          (let ((_K135569135593_
                 (lambda (_rest135591_) (gx#stx-list? _rest135591_)))
                (_K135568135583_ (lambda (_tail135581_) (null? _tail135581_))))
            (if (##pair? _g135564135573_)
                (let* ((_tl135571135596_ (##cdr _g135564135573_))
                       (_rest135599_ _tl135571135596_))
                  (gx#stx-list? _rest135599_))
                (let ((_tail135586_ _g135564135573_))
                  (null? _tail135586_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135556_)
        (let* ((_e135558_ (gx#stx-e _e135556_)) (_$e135560_ (pair? _e135558_)))
          (if _$e135560_ _$e135560_ (null? _e135558_)))))
    (define gx#stx-vector? (lambda (_e135554_) (vector? (gx#stx-e _e135554_))))
    (define gx#stx-box? (lambda (_e135552_) (box? (gx#stx-e _e135552_))))
    (define gx#stx-eq?
      (lambda (_x135549_ _y135550_)
        (eq? (gx#stx-e _x135549_) (gx#stx-e _y135550_))))
    (define gx#stx-eqv?
      (lambda (_x135546_ _y135547_)
        (eqv? (gx#stx-e _x135546_) (gx#stx-e _y135547_))))
    (define gx#stx-equal?
      (lambda (_x135543_ _y135544_)
        (equal? (gx#stx-e _x135543_) (gx#stx-e _y135544_))))
    (define gx#stx-false? (lambda (_x135541_) (not (gx#stx-e _x135541_))))
    (define gx#stx-identifier
      (lambda (_template135538_ . _args135539_)
        (gx#datum->syntax__1
         _template135538_
         (apply make-symbol (gx#syntax->datum _args135539_))
         (gx#stx-source _template135538_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135536_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135536_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135534_)
        (if (##structure-direct-instance-of?
             _stx135534_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135534_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135534_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135534_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135534_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135530_)
        (let ((_stx135532_ (gx#stx-unwrap__0 _stx135530_)))
          (if (gx#identifier-quote? _stx135532_)
              (##unchecked-structure-ref _stx135532_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135485_)
        (let* ((_g135486135496_ (gx#stx-e _stx135485_))
               (_else135489135504_ (lambda () '#f)))
          (let ((_K135492135518_
                 (lambda (_rest135515_ _hd135516_)
                   (if (gx#identifier? _hd135516_)
                       (gx#identifier-list? _rest135515_)
                       '#f)))
                (_K135491135509_ (lambda () '#t)))
            (let ((_try-match135488135512_
                   (lambda ()
                     (if (##null? _g135486135496_)
                         (_K135491135509_)
                         (_else135489135504_)))))
              (if (##pair? _g135486135496_)
                  (let ((_tl135494135523_ (##cdr _g135486135496_))
                        (_hd135493135521_ (##car _g135486135496_)))
                    (let ((_hd135526_ _hd135493135521_)
                          (_rest135528_ _tl135494135523_))
                      (_K135492135518_ _rest135528_ _hd135526_)))
                  (_try-match135488135512_)))))))
    (define gx#genident__%
      (lambda (_e135462_ _src135463_)
        (gx#stx-wrap-source
         (gensym (let ((_e135465_ (gx#stx-e _e135462_)))
                   (if (interned-symbol? _e135465_) _e135465_ 'g)))
         (let ((_$e135467_ (gx#stx-source _e135462_)))
           (if _$e135467_ _$e135467_ _src135463_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135474_ 'g) (_src135476_ '#f))
          (gx#genident__% _e135474_ _src135476_))))
    (define gx#genident__1
      (lambda (_e135478_)
        (let ((_src135480_ '#f)) (gx#genident__% _e135478_ _src135480_))))
    (define gx#genident
      (lambda _g140365_
        (let ((_g140364_ (##length _g140365_)))
          (cond ((##fx= _g140364_ 0)
                 (apply (lambda () (gx#genident__0)) _g140365_))
                ((##fx= _g140364_ 1)
                 (apply (lambda (_e135478_) (gx#genident__1 _e135478_))
                        _g140365_))
                ((##fx= _g140364_ 2)
                 (apply (lambda (_e135482_ _src135483_)
                          (gx#genident__% _e135482_ _src135483_))
                        _g140365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140365_))))))
    (define gx#gentemps
      (lambda (_stx-lst135459_) (gx#stx-map1 gx#genident _stx-lst135459_)))
    (define gx#syntax->list
      (lambda (_stx135457_) (gx#stx-map1 values _stx135457_)))
    (define gx#stx-car
      (lambda (_stx135454_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135454_)))))
    (define gx#stx-cdr
      (lambda (_stx135451_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135451_)))))
    (define gx#stx-length
      (lambda (_stx135416_)
        (let _lp135418_ ((_rest135420_ _stx135416_) (_n135421_ '0))
          (let* ((_g135422135430_ (gx#stx-e _rest135420_))
                 (_else135424135438_ (lambda () _n135421_))
                 (_K135426135443_
                  (lambda (_rest135441_)
                    (_lp135418_ _rest135441_ (fx+ _n135421_ '1)))))
            (if (##pair? _g135422135430_)
                (let* ((_tl135428135446_ (##cdr _g135422135430_))
                       (_rest135449_ _tl135428135446_))
                  (_K135426135443_ _rest135449_))
                (_else135424135438_))))))
    (define gx#stx-for-each
      (lambda _g140367_
        (let ((_g140366_ (##length _g140367_)))
          (cond ((##fx= _g140366_ 2)
                 (apply (lambda (_f135409_ _stx135410_)
                          (gx#stx-for-each1 _f135409_ _stx135410_))
                        _g140367_))
                ((##fx= _g140366_ 3)
                 (apply (lambda (_f135412_ _xstx135413_ _ystx135414_)
                          (gx#stx-for-each2
                           _f135412_
                           _xstx135413_
                           _ystx135414_))
                        _g140367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140367_))))))
    (define gx#stx-for-each1
      (lambda (_f135359_ _stx135360_)
        (if (procedure? _f135359_)
            '#!void
            (error '"expected procedure" _f135359_))
        (let _lp135362_ ((_rest135364_ _stx135360_))
          (let* ((_g135365135375_ (gx#syntax-e _rest135364_))
                 (_else135368135383_ (lambda () (_f135359_ _rest135364_))))
            (let ((_K135371135397_
                   (lambda (_rest135394_ _hd135395_)
                     (_f135359_ _hd135395_)
                     (_lp135362_ _rest135394_)))
                  (_K135370135388_ (lambda () '#!void)))
              (let ((_try-match135367135391_
                     (lambda ()
                       (if (##null? _g135365135375_)
                           (_K135370135388_)
                           (_else135368135383_)))))
                (if (##pair? _g135365135375_)
                    (let ((_tl135373135402_ (##cdr _g135365135375_))
                          (_hd135372135400_ (##car _g135365135375_)))
                      (let ((_hd135405_ _hd135372135400_)
                            (_rest135407_ _tl135373135402_))
                        (_K135371135397_ _rest135407_ _hd135405_)))
                    (_try-match135367135391_))))))))
    (define gx#stx-for-each2
      (lambda (_f135264_ _xstx135265_ _ystx135266_)
        (if (procedure? _f135264_)
            '#!void
            (error '"expected procedure" _f135264_))
        (let _lp135268_ ((_xrest135270_ _xstx135265_)
                         (_yrest135271_ _ystx135266_))
          (let* ((_g135272135282_ (gx#syntax-e _xrest135270_))
                 (_else135275135290_ (lambda () '#!void)))
            (let ((_K135278135347_
                   (lambda (_xrest135316_ _xhd135317_)
                     (let* ((_g135318135325_ (gx#syntax-e _yrest135271_))
                            (_E135320135329_
                             (lambda ()
                               (error '"No clause matching" _g135318135325_)))
                            (_K135321135335_
                             (lambda (_yrest135332_ _yhd135333_)
                               (_f135264_ _xhd135317_ _yhd135333_)
                               (_lp135268_ _xrest135316_ _yrest135332_))))
                       (if (##pair? _g135318135325_)
                           (let ((_hd135322135338_ (##car _g135318135325_))
                                 (_tl135323135340_ (##cdr _g135318135325_)))
                             (let* ((_yhd135343_ _hd135322135338_)
                                    (_yrest135345_ _tl135323135340_))
                               (_K135321135335_ _yrest135345_ _yhd135343_)))
                           (_E135320135329_)))))
                  (_K135277135310_
                   (lambda ()
                     (let* ((_yrest135294135299_ _yrest135271_)
                            (_E135296135303_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135294135299_)))
                            (_K135297135307_
                             (lambda ()
                               (_f135264_ _xrest135270_ _yrest135271_))))
                       (if (not (gx#stx-null? _yrest135294135299_))
                           (_K135297135307_)
                           (_E135296135303_))))))
              (let ((_try-match135274135313_
                     (lambda ()
                       (if (not (null? _g135272135282_))
                           (_K135277135310_)
                           (_else135275135290_)))))
                (if (##pair? _g135272135282_)
                    (let ((_tl135280135352_ (##cdr _g135272135282_))
                          (_hd135279135350_ (##car _g135272135282_)))
                      (let ((_xhd135355_ _hd135279135350_)
                            (_xrest135357_ _tl135280135352_))
                        (_K135278135347_ _xrest135357_ _xhd135355_)))
                    (_try-match135274135313_))))))))
    (define gx#stx-map
      (lambda _g140369_
        (let ((_g140368_ (##length _g140369_)))
          (cond ((##fx= _g140368_ 2)
                 (apply (lambda (_f135257_ _stx135258_)
                          (gx#stx-map1 _f135257_ _stx135258_))
                        _g140369_))
                ((##fx= _g140368_ 3)
                 (apply (lambda (_f135260_ _xstx135261_ _ystx135262_)
                          (gx#stx-map2 _f135260_ _xstx135261_ _ystx135262_))
                        _g140369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140369_))))))
    (define gx#stx-map1
      (lambda (_f135207_ _stx135208_)
        (if (procedure? _f135207_)
            '#!void
            (error '"expected procedure" _f135207_))
        (let _recur135210_ ((_rest135212_ _stx135208_))
          (let* ((_g135213135223_ (gx#syntax-e _rest135212_))
                 (_else135216135231_ (lambda () (_f135207_ _rest135212_))))
            (let ((_K135219135245_
                   (lambda (_rest135242_ _hd135243_)
                     (cons (_f135207_ _hd135243_)
                           (_recur135210_ _rest135242_))))
                  (_K135218135236_ (lambda () '())))
              (let ((_try-match135215135239_
                     (lambda ()
                       (if (##null? _g135213135223_)
                           (_K135218135236_)
                           (_else135216135231_)))))
                (if (##pair? _g135213135223_)
                    (let ((_tl135221135250_ (##cdr _g135213135223_))
                          (_hd135220135248_ (##car _g135213135223_)))
                      (let ((_hd135253_ _hd135220135248_)
                            (_rest135255_ _tl135221135250_))
                        (_K135219135245_ _rest135255_ _hd135253_)))
                    (_try-match135215135239_))))))))
    (define gx#stx-map2
      (lambda (_f135112_ _xstx135113_ _ystx135114_)
        (if (procedure? _f135112_)
            '#!void
            (error '"expected procedure" _f135112_))
        (let _recur135116_ ((_xrest135118_ _xstx135113_)
                            (_yrest135119_ _ystx135114_))
          (let* ((_g135120135130_ (gx#syntax-e _xrest135118_))
                 (_else135123135138_ (lambda () '())))
            (let ((_K135126135195_
                   (lambda (_xrest135164_ _xhd135165_)
                     (let* ((_g135166135173_ (gx#syntax-e _yrest135119_))
                            (_E135168135177_
                             (lambda ()
                               (error '"No clause matching" _g135166135173_)))
                            (_K135169135183_
                             (lambda (_yrest135180_ _yhd135181_)
                               (cons (_f135112_ _xhd135165_ _yhd135181_)
                                     (_recur135116_
                                      _xrest135164_
                                      _yrest135180_)))))
                       (if (##pair? _g135166135173_)
                           (let ((_hd135170135186_ (##car _g135166135173_))
                                 (_tl135171135188_ (##cdr _g135166135173_)))
                             (let* ((_yhd135191_ _hd135170135186_)
                                    (_yrest135193_ _tl135171135188_))
                               (_K135169135183_ _yrest135193_ _yhd135191_)))
                           (_E135168135177_)))))
                  (_K135125135158_
                   (lambda ()
                     (let* ((_yrest135142135147_ _yrest135119_)
                            (_E135144135151_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135142135147_)))
                            (_K135145135155_
                             (lambda ()
                               (_f135112_ _xrest135118_ _yrest135119_))))
                       (if (not (gx#stx-null? _yrest135142135147_))
                           (_K135145135155_)
                           (_E135144135151_))))))
              (let ((_try-match135122135161_
                     (lambda ()
                       (if (not (null? _g135120135130_))
                           (_K135125135158_)
                           (_else135123135138_)))))
                (if (##pair? _g135120135130_)
                    (let ((_tl135128135200_ (##cdr _g135120135130_))
                          (_hd135127135198_ (##car _g135120135130_)))
                      (let ((_xhd135203_ _hd135127135198_)
                            (_xrest135205_ _tl135128135200_))
                        (_K135126135195_ _xrest135205_ _xhd135203_)))
                    (_try-match135122135161_))))))))
    (define gx#stx-andmap
      (lambda (_f135062_ _stx135063_)
        (if (procedure? _f135062_)
            '#!void
            (error '"expected procedure" _f135062_))
        (let _lp135065_ ((_rest135067_ _stx135063_))
          (let* ((_g135068135078_ (gx#syntax-e _rest135067_))
                 (_else135071135086_ (lambda () (_f135062_ _rest135067_))))
            (let ((_K135074135100_
                   (lambda (_rest135097_ _hd135098_)
                     (if (_f135062_ _hd135098_)
                         (_lp135065_ _rest135097_)
                         '#f)))
                  (_K135073135091_ (lambda () '#t)))
              (let ((_try-match135070135094_
                     (lambda ()
                       (if (##null? _g135068135078_)
                           (_K135073135091_)
                           (_else135071135086_)))))
                (if (##pair? _g135068135078_)
                    (let ((_tl135076135105_ (##cdr _g135068135078_))
                          (_hd135075135103_ (##car _g135068135078_)))
                      (let ((_hd135108_ _hd135075135103_)
                            (_rest135110_ _tl135076135105_))
                        (_K135074135100_ _rest135110_ _hd135108_)))
                    (_try-match135070135094_))))))))
    (define gx#stx-ormap
      (lambda (_f135009_ _stx135010_)
        (if (procedure? _f135009_)
            '#!void
            (error '"expected procedure" _f135009_))
        (let _lp135012_ ((_rest135014_ _stx135010_))
          (let* ((_g135015135025_ (gx#syntax-e _rest135014_))
                 (_else135018135033_ (lambda () (_f135009_ _rest135014_))))
            (let ((_K135021135050_
                   (lambda (_rest135044_ _hd135045_)
                     (let ((_$e135047_ (_f135009_ _hd135045_)))
                       (if _$e135047_ _$e135047_ (_lp135012_ _rest135044_)))))
                  (_K135020135038_ (lambda () '#f)))
              (let ((_try-match135017135041_
                     (lambda ()
                       (if (##null? _g135015135025_)
                           (_K135020135038_)
                           (_else135018135033_)))))
                (if (##pair? _g135015135025_)
                    (let ((_tl135023135055_ (##cdr _g135015135025_))
                          (_hd135022135053_ (##car _g135015135025_)))
                      (let ((_hd135058_ _hd135022135053_)
                            (_rest135060_ _tl135023135055_))
                        (_K135021135050_ _rest135060_ _hd135058_)))
                    (_try-match135017135041_))))))))
    (define gx#stx-foldl
      (lambda (_f134957_ _iv134958_ _stx134959_)
        (if (procedure? _f134957_)
            '#!void
            (error '"expected procedure" _f134957_))
        (let _lp134961_ ((_r134963_ _iv134958_) (_rest134964_ _stx134959_))
          (let* ((_g134965134975_ (gx#syntax-e _rest134964_))
                 (_else134968134983_
                  (lambda () (_f134957_ _rest134964_ _r134963_))))
            (let ((_K134971134997_
                   (lambda (_rest134994_ _hd134995_)
                     (_lp134961_
                      (_f134957_ _hd134995_ _r134963_)
                      _rest134994_)))
                  (_K134970134988_ (lambda () _r134963_)))
              (let ((_try-match134967134991_
                     (lambda ()
                       (if (##null? _g134965134975_)
                           (_K134970134988_)
                           (_else134968134983_)))))
                (if (##pair? _g134965134975_)
                    (let ((_tl134973135002_ (##cdr _g134965134975_))
                          (_hd134972135000_ (##car _g134965134975_)))
                      (let ((_hd135005_ _hd134972135000_)
                            (_rest135007_ _tl134973135002_))
                        (_K134971134997_ _rest135007_ _hd135005_)))
                    (_try-match134967134991_))))))))
    (define gx#stx-foldr
      (lambda (_f134906_ _iv134907_ _stx134908_)
        (if (procedure? _f134906_)
            '#!void
            (error '"expected procedure" _f134906_))
        (let _recur134910_ ((_rest134912_ _stx134908_))
          (let* ((_g134913134923_ (gx#syntax-e _rest134912_))
                 (_else134916134931_
                  (lambda () (_f134906_ _rest134912_ _iv134907_))))
            (let ((_K134919134945_
                   (lambda (_rest134942_ _hd134943_)
                     (_f134906_ _hd134943_ (_recur134910_ _rest134942_))))
                  (_K134918134936_ (lambda () _iv134907_)))
              (let ((_try-match134915134939_
                     (lambda ()
                       (if (##null? _g134913134923_)
                           (_K134918134936_)
                           (_else134916134931_)))))
                (if (##pair? _g134913134923_)
                    (let ((_tl134921134950_ (##cdr _g134913134923_))
                          (_hd134920134948_ (##car _g134913134923_)))
                      (let ((_hd134953_ _hd134920134948_)
                            (_rest134955_ _tl134921134950_))
                        (_K134919134945_ _rest134955_ _hd134953_)))
                    (_try-match134915134939_))))))))
    (define gx#stx-reverse
      (lambda (_stx134904_) (gx#stx-foldl cons '() _stx134904_)))
    (define gx#stx-last
      (lambda (_stx134865_)
        (let _lp134867_ ((_rest134869_ _stx134865_))
          (let* ((_g134870134878_ (gx#syntax-e _rest134869_))
                 (_else134872134886_ (lambda () _rest134869_))
                 (_K134874134892_
                  (lambda (_rest134889_ _hd134890_)
                    (if (gx#stx-null? _rest134889_)
                        _hd134890_
                        (_lp134867_ _rest134889_)))))
            (if (##pair? _g134870134878_)
                (let ((_hd134875134895_ (##car _g134870134878_))
                      (_tl134876134897_ (##cdr _g134870134878_)))
                  (let* ((_hd134900_ _hd134875134895_)
                         (_rest134902_ _tl134876134897_))
                    (_K134874134892_ _rest134902_ _hd134900_)))
                (_else134872134886_))))))
    (define gx#stx-last-pair
      (lambda (_stx134836_)
        (let _lp134838_ ((_hd134840_ _stx134836_))
          (let* ((_g134841134848_ (gx#syntax-e _hd134840_))
                 (_E134843134852_
                  (lambda () (error '"No clause matching" _g134841134848_)))
                 (_K134844134857_
                  (lambda (_rest134855_)
                    (if (gx#stx-pair? _rest134855_)
                        (_lp134838_ _rest134855_)
                        _hd134840_))))
            (if (##pair? _g134841134848_)
                (let* ((_tl134846134860_ (##cdr _g134841134848_))
                       (_rest134863_ _tl134846134860_))
                  (_K134844134857_ _rest134863_))
                (_E134843134852_))))))
    (define gx#stx-list-tail
      (lambda (_stx134805_ _k134806_)
        (let _lp134808_ ((_rest134810_ _stx134805_) (_k134811_ _k134806_))
          (if (fxpositive? _k134811_)
              (let* ((_g134812134819_ (gx#syntax-e _rest134810_))
                     (_E134814134823_
                      (lambda ()
                        (error '"No clause matching" _g134812134819_)))
                     (_K134815134828_
                      (lambda (_rest134826_)
                        (_lp134808_ _rest134826_ (fx- _k134811_ '1)))))
                (if (##pair? _g134812134819_)
                    (let* ((_tl134817134831_ (##cdr _g134812134819_))
                           (_rest134834_ _tl134817134831_))
                      (_K134815134828_ _rest134834_))
                    (_E134814134823_)))
              _rest134810_))))
    (define gx#stx-list-ref
      (lambda (_stx134802_ _k134803_)
        (gx#stx-car (gx#stx-list-tail _stx134802_ _k134803_))))
    (define gx#stx-plist?__%
      (lambda (_stx134714_ _key?134715_)
        (if (procedure? _key?134715_)
            '#!void
            (error '"expected procedure" _key?134715_))
        (let _lp134717_ ((_rest134719_ _stx134714_))
          (let* ((_g134720134730_ (gx#stx-e _rest134719_))
                 (_else134723134738_ (lambda () '#f)))
            (let ((_K134726134780_
                   (lambda (_rest134749_ _hd134750_)
                     (if (_key?134715_ _hd134750_)
                         (let* ((_g134751134759_ (gx#stx-e _rest134749_))
                                (_else134753134767_ (lambda () '#f))
                                (_K134755134772_
                                 (lambda (_rest134770_)
                                   (_lp134717_ _rest134770_))))
                           (if (##pair? _g134751134759_)
                               (let* ((_tl134757134775_
                                       (##cdr _g134751134759_))
                                      (_rest134778_ _tl134757134775_))
                                 (_lp134717_ _rest134778_))
                               (_else134753134767_)))
                         '#f)))
                  (_K134725134743_ (lambda () '#t)))
              (let ((_try-match134722134746_
                     (lambda ()
                       (if (##null? _g134720134730_)
                           (_K134725134743_)
                           (_else134723134738_)))))
                (if (##pair? _g134720134730_)
                    (let ((_tl134728134785_ (##cdr _g134720134730_))
                          (_hd134727134783_ (##car _g134720134730_)))
                      (let ((_hd134788_ _hd134727134783_)
                            (_rest134790_ _tl134728134785_))
                        (_K134726134780_ _rest134790_ _hd134788_)))
                    (_try-match134722134746_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134795_)
        (let ((_key?134797_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134795_ _key?134797_))))
    (define gx#stx-plist?
      (lambda _g140371_
        (let ((_g140370_ (##length _g140371_)))
          (cond ((##fx= _g140370_ 1)
                 (apply (lambda (_stx134795_) (gx#stx-plist?__0 _stx134795_))
                        _g140371_))
                ((##fx= _g140370_ 2)
                 (apply (lambda (_stx134799_ _key?134800_)
                          (gx#stx-plist?__% _stx134799_ _key?134800_))
                        _g140371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140371_))))))
    (define gx#stx-getq__%
      (lambda (_key134632_ _stx134633_ _key=?134634_)
        (if (procedure? _key=?134634_)
            '#!void
            (error '"expected procedure" _key=?134634_))
        (let _lp134636_ ((_rest134638_ _stx134633_))
          (let* ((_g134639134647_ (gx#syntax-e _rest134638_))
                 (_else134641134655_ (lambda () '#f))
                 (_K134643134689_
                  (lambda (_rest134658_ _hd134659_)
                    (let* ((_g134660134667_ (gx#syntax-e _rest134658_))
                           (_E134662134671_
                            (lambda ()
                              (error '"No clause matching" _g134660134667_)))
                           (_K134663134677_
                            (lambda (_rest134674_ _val134675_)
                              (if (_key=?134634_ _hd134659_ _key134632_)
                                  _val134675_
                                  (_lp134636_ _rest134674_)))))
                      (if (##pair? _g134660134667_)
                          (let ((_hd134664134680_ (##car _g134660134667_))
                                (_tl134665134682_ (##cdr _g134660134667_)))
                            (let* ((_val134685_ _hd134664134680_)
                                   (_rest134687_ _tl134665134682_))
                              (_K134663134677_ _rest134687_ _val134685_)))
                          (_E134662134671_))))))
            (if (##pair? _g134639134647_)
                (let ((_hd134644134692_ (##car _g134639134647_))
                      (_tl134645134694_ (##cdr _g134639134647_)))
                  (let* ((_hd134697_ _hd134644134692_)
                         (_rest134699_ _tl134645134694_))
                    (_K134643134689_ _rest134699_ _hd134697_)))
                (_else134641134655_))))))
    (define gx#stx-getq__0
      (lambda (_key134704_ _stx134705_)
        (let ((_key=?134707_ gx#stx-eq?))
          (gx#stx-getq__% _key134704_ _stx134705_ _key=?134707_))))
    (define gx#stx-getq
      (lambda _g140373_
        (let ((_g140372_ (##length _g140373_)))
          (cond ((##fx= _g140372_ 2)
                 (apply (lambda (_key134704_ _stx134705_)
                          (gx#stx-getq__0 _key134704_ _stx134705_))
                        _g140373_))
                ((##fx= _g140372_ 3)
                 (apply (lambda (_key134709_ _stx134710_ _key=?134711_)
                          (gx#stx-getq__%
                           _key134709_
                           _stx134710_
                           _key=?134711_))
                        _g140373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140373_))))))))
