(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707616237)
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
      (lambda _$args135816_
        (apply make-struct-instance gx#identifier-wrap::t _$args135816_)))
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
      (lambda _$args135813_
        (apply make-struct-instance gx#syntax-wrap::t _$args135813_)))
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
      (lambda _$args135810_
        (apply make-struct-instance gx#syntax-quote::t _$args135810_)))
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
      (lambda (_stx135808_) (symbol? (gx#stx-e _stx135808_))))
    (define gx#identifier-quote?
      (lambda (_stx135806_)
        (if (##structure-direct-instance-of? _stx135806_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135806_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135804_)
        (if (##structure-direct-instance-of? _stx135804_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135804_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135804_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135802_)
        (if (##structure-direct-instance-of? _stx135802_ 'gx#syntax-quote::t)
            _stx135802_
            (if (##structure-direct-instance-of?
                 _stx135802_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135802_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135785_)
        (if (##structure-direct-instance-of? _stx135785_ 'gx#syntax-wrap::t)
            (let _lp135787_ ((_e135789_
                              (##unchecked-structure-ref
                               _stx135785_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135790_
                              (cons (##unchecked-structure-ref
                                     _stx135785_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135789_)
                  (let ((_$e135792_ (##type-id (##structure-type _e135789_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135792_)
                        (_lp135787_
                         (##unchecked-structure-ref _e135789_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135789_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135790_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135792_)
                                (eq? 'gx#identifier-wrap::t _$e135792_))
                            (##unchecked-structure-ref
                             _e135789_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135792_)
                                (_lp135787_
                                 (##unchecked-structure-ref
                                  _e135789_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135790_)
                                _e135789_))))
                  (if (null? _marks135790_)
                      _e135789_
                      (if (pair? _e135789_)
                          (cons (gx#stx-wrap (car _e135789_) _marks135790_)
                                (gx#stx-wrap (cdr _e135789_) _marks135790_))
                          (if (vector? _e135789_)
                              (vector-map
                               (lambda (_g135797135799_)
                                 (gx#stx-wrap _g135797135799_ _marks135790_))
                               _e135789_)
                              (if (box? _e135789_)
                                  (box (gx#stx-wrap
                                        (unbox _e135789_)
                                        _marks135790_))
                                  _e135789_))))))
            (if (##structure-instance-of? _stx135785_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135785_ '1 gx#AST::t '#f)
                _stx135785_))))
    (define gx#syntax->datum
      (lambda (_stx135783_)
        (if (##structure-instance-of? _stx135783_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135783_ '1 gx#AST::t '#f))
            (if (pair? _stx135783_)
                (cons (gx#syntax->datum (car _stx135783_))
                      (gx#syntax->datum (cdr _stx135783_)))
                (if (vector? _stx135783_)
                    (vector-map gx#syntax->datum _stx135783_)
                    (if (box? _stx135783_)
                        (box (gx#syntax->datum (unbox _stx135783_)))
                        _stx135783_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135726_ _datum135727_ _src135728_ _quote?135729_)
        (letrec ((_wrap-datum135731_
                  (lambda (_e135755_ _marks135756_)
                    (_wrap-inner135733_
                     _e135755_
                     (lambda (_g135757135759_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135757135759_
                        _src135728_
                        _marks135756_)))))
                 (_wrap-quote135732_
                  (lambda (_e135747_ _ctx135748_ _marks135749_)
                    (_wrap-inner135733_
                     _e135747_
                     (lambda (_g135750135752_)
                       (##structure
                        gx#syntax-quote::t
                        _g135750135752_
                        _src135728_
                        _ctx135748_
                        _marks135749_)))))
                 (_wrap-inner135733_
                  (lambda (_e135740_ _wrap-e135741_)
                    (let _recur135743_ ((_e135745_ _e135740_))
                      (if (symbol? _e135745_)
                          (_wrap-e135741_ _e135745_)
                          (if (pair? _e135745_)
                              (cons (_recur135743_ (car _e135745_))
                                    (_recur135743_ (cdr _e135745_)))
                              (if (vector? _e135745_)
                                  (vector-map _recur135743_ _e135745_)
                                  (if (box? _e135745_)
                                      (box (_recur135743_ (unbox _e135745_)))
                                      _e135745_)))))))
                 (_wrap-outer135734_
                  (lambda (_e135738_)
                    (if (##structure-instance-of? _e135738_ 'gerbil#AST::t)
                        _e135738_
                        (##structure gx#AST::t _e135738_ _src135728_)))))
          (if (##structure-instance-of? _datum135727_ 'gerbil#AST::t)
              _datum135727_
              (if (not _stx135726_)
                  (##structure gx#AST::t _datum135727_ _src135728_)
                  (if (gx#identifier? _stx135726_)
                      (let ((_stx135736_ (gx#stx-unwrap__0 _stx135726_)))
                        (_wrap-outer135734_
                         (if (##structure-direct-instance-of?
                              _stx135736_
                              'gx#syntax-quote::t)
                             (if _quote?135729_
                                 (_wrap-quote135732_
                                  _datum135727_
                                  (##unchecked-structure-ref
                                   _stx135736_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135736_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135731_
                                  _datum135727_
                                  (##unchecked-structure-ref
                                   _stx135736_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135731_
                              _datum135727_
                              (##unchecked-structure-ref
                               _stx135736_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135726_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135765_ _datum135766_)
        (let* ((_src135768_ '#f) (_quote?135770_ '#t))
          (gx#datum->syntax__%
           _stx135765_
           _datum135766_
           _src135768_
           _quote?135770_))))
    (define gx#datum->syntax__1
      (lambda (_stx135772_ _datum135773_ _src135774_)
        (let ((_quote?135776_ '#t))
          (gx#datum->syntax__%
           _stx135772_
           _datum135773_
           _src135774_
           _quote?135776_))))
    (define gx#datum->syntax
      (lambda _g140365_
        (let ((_g140364_ (##length _g140365_)))
          (cond ((##fx= _g140364_ 2)
                 (apply (lambda (_stx135765_ _datum135766_)
                          (gx#datum->syntax__0 _stx135765_ _datum135766_))
                        _g140365_))
                ((##fx= _g140364_ 3)
                 (apply (lambda (_stx135772_ _datum135773_ _src135774_)
                          (gx#datum->syntax__1
                           _stx135772_
                           _datum135773_
                           _src135774_))
                        _g140365_))
                ((##fx= _g140364_ 4)
                 (apply (lambda (_stx135778_
                                 _datum135779_
                                 _src135780_
                                 _quote?135781_)
                          (gx#datum->syntax__%
                           _stx135778_
                           _datum135779_
                           _src135780_
                           _quote?135781_))
                        _g140365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140365_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135702_ _marks135703_)
        (let _lp135705_ ((_e135707_ _stx135702_)
                         (_marks135708_ _marks135703_)
                         (_src135709_ (gx#stx-source _stx135702_)))
          (if (##structure-direct-instance-of? _e135707_ 'gx#syntax-wrap::t)
              (_lp135705_
               (##unchecked-structure-ref _e135707_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135707_ '3 gx#syntax-wrap::t '#f)
                _marks135708_)
               (##unchecked-structure-ref _e135707_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135707_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135708_)
                      _e135707_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135707_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135707_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135707_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135708_)))
                  (if (##structure-direct-instance-of?
                       _e135707_
                       'gx#syntax-quote::t)
                      _e135707_
                      (if (##structure-instance-of? _e135707_ 'gerbil#AST::t)
                          (_lp135705_
                           (##unchecked-structure-ref
                            _e135707_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135708_
                           (##unchecked-structure-ref
                            _e135707_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135707_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135707_
                               _src135709_
                               (reverse _marks135708_))
                              (if (null? _marks135708_)
                                  _e135707_
                                  (if (pair? _e135707_)
                                      (cons (gx#stx-wrap
                                             (car _e135707_)
                                             _marks135708_)
                                            (gx#stx-wrap
                                             (cdr _e135707_)
                                             _marks135708_))
                                      (if (vector? _e135707_)
                                          (vector-map
                                           (lambda (_g135710135712_)
                                             (gx#stx-wrap
                                              _g135710135712_
                                              _marks135708_))
                                           _e135707_)
                                          (if (box? _e135707_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135707_)
                                                    _marks135708_))
                                              _e135707_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135718_)
        (let ((_marks135720_ '()))
          (gx#stx-unwrap__% _stx135718_ _marks135720_))))
    (define gx#stx-unwrap
      (lambda _g140367_
        (let ((_g140366_ (##length _g140367_)))
          (cond ((##fx= _g140366_ 1)
                 (apply (lambda (_stx135718_) (gx#stx-unwrap__0 _stx135718_))
                        _g140367_))
                ((##fx= _g140366_ 2)
                 (apply (lambda (_stx135722_ _marks135723_)
                          (gx#stx-unwrap__% _stx135722_ _marks135723_))
                        _g140367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140367_))))))
    (define gx#stx-wrap
      (lambda (_stx135695_ _marks135696_)
        (foldl1 (lambda (_mark135698_ _stx135699_)
                  (gx#stx-apply-mark _stx135699_ _mark135698_))
                _stx135695_
                _marks135696_)))
    (define gx#stx-rewrap
      (lambda (_stx135689_ _marks135690_)
        (foldr1 (lambda (_mark135692_ _stx135693_)
                  (gx#stx-apply-mark _stx135693_ _mark135692_))
                _stx135689_
                _marks135690_)))
    (define gx#stx-apply-mark
      (lambda (_stx135686_ _mark135687_)
        (if (##structure-direct-instance-of? _stx135686_ 'gx#syntax-quote::t)
            _stx135686_
            (if (and (##structure-direct-instance-of?
                      _stx135686_
                      'gx#syntax-wrap::t)
                     (eq? _mark135687_
                          (##unchecked-structure-ref
                           _stx135686_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135686_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135686_
                 (gx#stx-source _stx135686_)
                 _mark135687_)))))
    (define gx#apply-mark
      (lambda (_mark135650_ _marks135651_)
        (let* ((_marks135652135660_ _marks135651_)
               (_else135654135668_
                (lambda () (cons _mark135650_ _marks135651_)))
               (_K135656135674_
                (lambda (_rest135671_ _hd135672_)
                  (if (eq? _mark135650_ _hd135672_)
                      _rest135671_
                      (cons _mark135650_ _marks135651_)))))
          (if (##pair? _marks135652135660_)
              (let ((_hd135657135677_ (##car _marks135652135660_))
                    (_tl135658135679_ (##cdr _marks135652135660_)))
                (let* ((_hd135682_ _hd135657135677_)
                       (_rest135684_ _tl135658135679_))
                  (_K135656135674_ _rest135684_ _hd135682_)))
              (_else135654135668_)))))
    (define gx#stx-e
      (lambda (_stx135648_)
        (if (##structure-direct-instance-of? _stx135648_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135648_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135648_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135648_ '1 gx#AST::t '#f)
                _stx135648_))))
    (define gx#stx-source
      (lambda (_stx135646_)
        (if (##structure-instance-of? _stx135646_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135646_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135640_ _src135641_)
        (if (or (##structure-instance-of? _stx135640_ 'gerbil#AST::t)
                (not _src135641_))
            _stx135640_
            (##structure gx#AST::t _stx135640_ _src135641_))))
    (define gx#stx-datum?
      (lambda (_stx135638_) (gx#self-quoting? (gx#stx-e _stx135638_))))
    (define gx#self-quoting?
      (lambda (_x135621_)
        (let ((_$e135623_ (immediate? _x135621_)))
          (if _$e135623_
              _$e135623_
              (let ((_$e135626_ (number? _x135621_)))
                (if _$e135626_
                    _$e135626_
                    (let ((_$e135629_ (keyword? _x135621_)))
                      (if _$e135629_
                          _$e135629_
                          (let ((_$e135632_ (string? _x135621_)))
                            (if _$e135632_
                                _$e135632_
                                (let ((_$e135635_ (vector? _x135621_)))
                                  (if _$e135635_
                                      _$e135635_
                                      (u8vector? _x135621_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135619_) (boolean? (gx#stx-e _e135619_))))
    (define gx#stx-keyword?
      (lambda (_e135617_) (keyword? (gx#stx-e _e135617_))))
    (define gx#stx-char? (lambda (_e135615_) (char? (gx#stx-e _e135615_))))
    (define gx#stx-number? (lambda (_e135613_) (number? (gx#stx-e _e135613_))))
    (define gx#stx-fixnum? (lambda (_e135611_) (fixnum? (gx#stx-e _e135611_))))
    (define gx#stx-string? (lambda (_e135609_) (string? (gx#stx-e _e135609_))))
    (define gx#stx-null? (lambda (_e135607_) (null? (gx#stx-e _e135607_))))
    (define gx#stx-pair? (lambda (_e135605_) (pair? (gx#stx-e _e135605_))))
    (define gx#stx-list?
      (lambda (_e135567_)
        (let* ((_g135568135577_ (gx#stx-e _e135567_))
               (_E135571135581_
                (lambda () (error '"No clause matching" _g135568135577_))))
          (let ((_K135573135597_
                 (lambda (_rest135595_) (gx#stx-list? _rest135595_)))
                (_K135572135587_ (lambda (_tail135585_) (null? _tail135585_))))
            (if (##pair? _g135568135577_)
                (let* ((_tl135575135600_ (##cdr _g135568135577_))
                       (_rest135603_ _tl135575135600_))
                  (gx#stx-list? _rest135603_))
                (let ((_tail135590_ _g135568135577_))
                  (null? _tail135590_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135560_)
        (let* ((_e135562_ (gx#stx-e _e135560_)) (_$e135564_ (pair? _e135562_)))
          (if _$e135564_ _$e135564_ (null? _e135562_)))))
    (define gx#stx-vector? (lambda (_e135558_) (vector? (gx#stx-e _e135558_))))
    (define gx#stx-box? (lambda (_e135556_) (box? (gx#stx-e _e135556_))))
    (define gx#stx-eq?
      (lambda (_x135553_ _y135554_)
        (eq? (gx#stx-e _x135553_) (gx#stx-e _y135554_))))
    (define gx#stx-eqv?
      (lambda (_x135550_ _y135551_)
        (eqv? (gx#stx-e _x135550_) (gx#stx-e _y135551_))))
    (define gx#stx-equal?
      (lambda (_x135547_ _y135548_)
        (equal? (gx#stx-e _x135547_) (gx#stx-e _y135548_))))
    (define gx#stx-false? (lambda (_x135545_) (not (gx#stx-e _x135545_))))
    (define gx#stx-identifier
      (lambda (_template135542_ . _args135543_)
        (gx#datum->syntax__1
         _template135542_
         (apply make-symbol (gx#syntax->datum _args135543_))
         (gx#stx-source _template135542_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135540_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135540_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135538_)
        (if (##structure-direct-instance-of?
             _stx135538_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135538_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135538_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135538_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135538_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135534_)
        (let ((_stx135536_ (gx#stx-unwrap__0 _stx135534_)))
          (if (gx#identifier-quote? _stx135536_)
              (##unchecked-structure-ref _stx135536_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135489_)
        (let* ((_g135490135500_ (gx#stx-e _stx135489_))
               (_else135493135508_ (lambda () '#f)))
          (let ((_K135496135522_
                 (lambda (_rest135519_ _hd135520_)
                   (if (gx#identifier? _hd135520_)
                       (gx#identifier-list? _rest135519_)
                       '#f)))
                (_K135495135513_ (lambda () '#t)))
            (let ((_try-match135492135516_
                   (lambda ()
                     (if (##null? _g135490135500_)
                         (_K135495135513_)
                         (_else135493135508_)))))
              (if (##pair? _g135490135500_)
                  (let ((_tl135498135527_ (##cdr _g135490135500_))
                        (_hd135497135525_ (##car _g135490135500_)))
                    (let ((_hd135530_ _hd135497135525_)
                          (_rest135532_ _tl135498135527_))
                      (_K135496135522_ _rest135532_ _hd135530_)))
                  (_try-match135492135516_)))))))
    (define gx#genident__%
      (lambda (_e135466_ _src135467_)
        (gx#stx-wrap-source
         (gensym (let ((_e135469_ (gx#stx-e _e135466_)))
                   (if (interned-symbol? _e135469_) _e135469_ 'g)))
         (let ((_$e135471_ (gx#stx-source _e135466_)))
           (if _$e135471_ _$e135471_ _src135467_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135478_ 'g) (_src135480_ '#f))
          (gx#genident__% _e135478_ _src135480_))))
    (define gx#genident__1
      (lambda (_e135482_)
        (let ((_src135484_ '#f)) (gx#genident__% _e135482_ _src135484_))))
    (define gx#genident
      (lambda _g140369_
        (let ((_g140368_ (##length _g140369_)))
          (cond ((##fx= _g140368_ 0)
                 (apply (lambda () (gx#genident__0)) _g140369_))
                ((##fx= _g140368_ 1)
                 (apply (lambda (_e135482_) (gx#genident__1 _e135482_))
                        _g140369_))
                ((##fx= _g140368_ 2)
                 (apply (lambda (_e135486_ _src135487_)
                          (gx#genident__% _e135486_ _src135487_))
                        _g140369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140369_))))))
    (define gx#gentemps
      (lambda (_stx-lst135463_) (gx#stx-map1 gx#genident _stx-lst135463_)))
    (define gx#syntax->list
      (lambda (_stx135461_) (gx#stx-map1 values _stx135461_)))
    (define gx#stx-car
      (lambda (_stx135458_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135458_)))))
    (define gx#stx-cdr
      (lambda (_stx135455_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135455_)))))
    (define gx#stx-length
      (lambda (_stx135420_)
        (let _lp135422_ ((_rest135424_ _stx135420_) (_n135425_ '0))
          (let* ((_g135426135434_ (gx#stx-e _rest135424_))
                 (_else135428135442_ (lambda () _n135425_))
                 (_K135430135447_
                  (lambda (_rest135445_)
                    (_lp135422_ _rest135445_ (fx+ _n135425_ '1)))))
            (if (##pair? _g135426135434_)
                (let* ((_tl135432135450_ (##cdr _g135426135434_))
                       (_rest135453_ _tl135432135450_))
                  (_K135430135447_ _rest135453_))
                (_else135428135442_))))))
    (define gx#stx-for-each
      (lambda _g140371_
        (let ((_g140370_ (##length _g140371_)))
          (cond ((##fx= _g140370_ 2)
                 (apply (lambda (_f135413_ _stx135414_)
                          (gx#stx-for-each1 _f135413_ _stx135414_))
                        _g140371_))
                ((##fx= _g140370_ 3)
                 (apply (lambda (_f135416_ _xstx135417_ _ystx135418_)
                          (gx#stx-for-each2
                           _f135416_
                           _xstx135417_
                           _ystx135418_))
                        _g140371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140371_))))))
    (define gx#stx-for-each1
      (lambda (_f135363_ _stx135364_)
        (if (procedure? _f135363_)
            '#!void
            (error '"expected procedure" _f135363_))
        (let _lp135366_ ((_rest135368_ _stx135364_))
          (let* ((_g135369135379_ (gx#syntax-e _rest135368_))
                 (_else135372135387_ (lambda () (_f135363_ _rest135368_))))
            (let ((_K135375135401_
                   (lambda (_rest135398_ _hd135399_)
                     (_f135363_ _hd135399_)
                     (_lp135366_ _rest135398_)))
                  (_K135374135392_ (lambda () '#!void)))
              (let ((_try-match135371135395_
                     (lambda ()
                       (if (##null? _g135369135379_)
                           (_K135374135392_)
                           (_else135372135387_)))))
                (if (##pair? _g135369135379_)
                    (let ((_tl135377135406_ (##cdr _g135369135379_))
                          (_hd135376135404_ (##car _g135369135379_)))
                      (let ((_hd135409_ _hd135376135404_)
                            (_rest135411_ _tl135377135406_))
                        (_K135375135401_ _rest135411_ _hd135409_)))
                    (_try-match135371135395_))))))))
    (define gx#stx-for-each2
      (lambda (_f135268_ _xstx135269_ _ystx135270_)
        (if (procedure? _f135268_)
            '#!void
            (error '"expected procedure" _f135268_))
        (let _lp135272_ ((_xrest135274_ _xstx135269_)
                         (_yrest135275_ _ystx135270_))
          (let* ((_g135276135286_ (gx#syntax-e _xrest135274_))
                 (_else135279135294_ (lambda () '#!void)))
            (let ((_K135282135351_
                   (lambda (_xrest135320_ _xhd135321_)
                     (let* ((_g135322135329_ (gx#syntax-e _yrest135275_))
                            (_E135324135333_
                             (lambda ()
                               (error '"No clause matching" _g135322135329_)))
                            (_K135325135339_
                             (lambda (_yrest135336_ _yhd135337_)
                               (_f135268_ _xhd135321_ _yhd135337_)
                               (_lp135272_ _xrest135320_ _yrest135336_))))
                       (if (##pair? _g135322135329_)
                           (let ((_hd135326135342_ (##car _g135322135329_))
                                 (_tl135327135344_ (##cdr _g135322135329_)))
                             (let* ((_yhd135347_ _hd135326135342_)
                                    (_yrest135349_ _tl135327135344_))
                               (_K135325135339_ _yrest135349_ _yhd135347_)))
                           (_E135324135333_)))))
                  (_K135281135314_
                   (lambda ()
                     (let* ((_yrest135298135303_ _yrest135275_)
                            (_E135300135307_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135298135303_)))
                            (_K135301135311_
                             (lambda ()
                               (_f135268_ _xrest135274_ _yrest135275_))))
                       (if (not (gx#stx-null? _yrest135298135303_))
                           (_K135301135311_)
                           (_E135300135307_))))))
              (let ((_try-match135278135317_
                     (lambda ()
                       (if (not (null? _g135276135286_))
                           (_K135281135314_)
                           (_else135279135294_)))))
                (if (##pair? _g135276135286_)
                    (let ((_tl135284135356_ (##cdr _g135276135286_))
                          (_hd135283135354_ (##car _g135276135286_)))
                      (let ((_xhd135359_ _hd135283135354_)
                            (_xrest135361_ _tl135284135356_))
                        (_K135282135351_ _xrest135361_ _xhd135359_)))
                    (_try-match135278135317_))))))))
    (define gx#stx-map
      (lambda _g140373_
        (let ((_g140372_ (##length _g140373_)))
          (cond ((##fx= _g140372_ 2)
                 (apply (lambda (_f135261_ _stx135262_)
                          (gx#stx-map1 _f135261_ _stx135262_))
                        _g140373_))
                ((##fx= _g140372_ 3)
                 (apply (lambda (_f135264_ _xstx135265_ _ystx135266_)
                          (gx#stx-map2 _f135264_ _xstx135265_ _ystx135266_))
                        _g140373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140373_))))))
    (define gx#stx-map1
      (lambda (_f135211_ _stx135212_)
        (if (procedure? _f135211_)
            '#!void
            (error '"expected procedure" _f135211_))
        (let _recur135214_ ((_rest135216_ _stx135212_))
          (let* ((_g135217135227_ (gx#syntax-e _rest135216_))
                 (_else135220135235_ (lambda () (_f135211_ _rest135216_))))
            (let ((_K135223135249_
                   (lambda (_rest135246_ _hd135247_)
                     (cons (_f135211_ _hd135247_)
                           (_recur135214_ _rest135246_))))
                  (_K135222135240_ (lambda () '())))
              (let ((_try-match135219135243_
                     (lambda ()
                       (if (##null? _g135217135227_)
                           (_K135222135240_)
                           (_else135220135235_)))))
                (if (##pair? _g135217135227_)
                    (let ((_tl135225135254_ (##cdr _g135217135227_))
                          (_hd135224135252_ (##car _g135217135227_)))
                      (let ((_hd135257_ _hd135224135252_)
                            (_rest135259_ _tl135225135254_))
                        (_K135223135249_ _rest135259_ _hd135257_)))
                    (_try-match135219135243_))))))))
    (define gx#stx-map2
      (lambda (_f135116_ _xstx135117_ _ystx135118_)
        (if (procedure? _f135116_)
            '#!void
            (error '"expected procedure" _f135116_))
        (let _recur135120_ ((_xrest135122_ _xstx135117_)
                            (_yrest135123_ _ystx135118_))
          (let* ((_g135124135134_ (gx#syntax-e _xrest135122_))
                 (_else135127135142_ (lambda () '())))
            (let ((_K135130135199_
                   (lambda (_xrest135168_ _xhd135169_)
                     (let* ((_g135170135177_ (gx#syntax-e _yrest135123_))
                            (_E135172135181_
                             (lambda ()
                               (error '"No clause matching" _g135170135177_)))
                            (_K135173135187_
                             (lambda (_yrest135184_ _yhd135185_)
                               (cons (_f135116_ _xhd135169_ _yhd135185_)
                                     (_recur135120_
                                      _xrest135168_
                                      _yrest135184_)))))
                       (if (##pair? _g135170135177_)
                           (let ((_hd135174135190_ (##car _g135170135177_))
                                 (_tl135175135192_ (##cdr _g135170135177_)))
                             (let* ((_yhd135195_ _hd135174135190_)
                                    (_yrest135197_ _tl135175135192_))
                               (_K135173135187_ _yrest135197_ _yhd135195_)))
                           (_E135172135181_)))))
                  (_K135129135162_
                   (lambda ()
                     (let* ((_yrest135146135151_ _yrest135123_)
                            (_E135148135155_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135146135151_)))
                            (_K135149135159_
                             (lambda ()
                               (_f135116_ _xrest135122_ _yrest135123_))))
                       (if (not (gx#stx-null? _yrest135146135151_))
                           (_K135149135159_)
                           (_E135148135155_))))))
              (let ((_try-match135126135165_
                     (lambda ()
                       (if (not (null? _g135124135134_))
                           (_K135129135162_)
                           (_else135127135142_)))))
                (if (##pair? _g135124135134_)
                    (let ((_tl135132135204_ (##cdr _g135124135134_))
                          (_hd135131135202_ (##car _g135124135134_)))
                      (let ((_xhd135207_ _hd135131135202_)
                            (_xrest135209_ _tl135132135204_))
                        (_K135130135199_ _xrest135209_ _xhd135207_)))
                    (_try-match135126135165_))))))))
    (define gx#stx-andmap
      (lambda (_f135066_ _stx135067_)
        (if (procedure? _f135066_)
            '#!void
            (error '"expected procedure" _f135066_))
        (let _lp135069_ ((_rest135071_ _stx135067_))
          (let* ((_g135072135082_ (gx#syntax-e _rest135071_))
                 (_else135075135090_ (lambda () (_f135066_ _rest135071_))))
            (let ((_K135078135104_
                   (lambda (_rest135101_ _hd135102_)
                     (if (_f135066_ _hd135102_)
                         (_lp135069_ _rest135101_)
                         '#f)))
                  (_K135077135095_ (lambda () '#t)))
              (let ((_try-match135074135098_
                     (lambda ()
                       (if (##null? _g135072135082_)
                           (_K135077135095_)
                           (_else135075135090_)))))
                (if (##pair? _g135072135082_)
                    (let ((_tl135080135109_ (##cdr _g135072135082_))
                          (_hd135079135107_ (##car _g135072135082_)))
                      (let ((_hd135112_ _hd135079135107_)
                            (_rest135114_ _tl135080135109_))
                        (_K135078135104_ _rest135114_ _hd135112_)))
                    (_try-match135074135098_))))))))
    (define gx#stx-ormap
      (lambda (_f135013_ _stx135014_)
        (if (procedure? _f135013_)
            '#!void
            (error '"expected procedure" _f135013_))
        (let _lp135016_ ((_rest135018_ _stx135014_))
          (let* ((_g135019135029_ (gx#syntax-e _rest135018_))
                 (_else135022135037_ (lambda () (_f135013_ _rest135018_))))
            (let ((_K135025135054_
                   (lambda (_rest135048_ _hd135049_)
                     (let ((_$e135051_ (_f135013_ _hd135049_)))
                       (if _$e135051_ _$e135051_ (_lp135016_ _rest135048_)))))
                  (_K135024135042_ (lambda () '#f)))
              (let ((_try-match135021135045_
                     (lambda ()
                       (if (##null? _g135019135029_)
                           (_K135024135042_)
                           (_else135022135037_)))))
                (if (##pair? _g135019135029_)
                    (let ((_tl135027135059_ (##cdr _g135019135029_))
                          (_hd135026135057_ (##car _g135019135029_)))
                      (let ((_hd135062_ _hd135026135057_)
                            (_rest135064_ _tl135027135059_))
                        (_K135025135054_ _rest135064_ _hd135062_)))
                    (_try-match135021135045_))))))))
    (define gx#stx-foldl
      (lambda (_f134961_ _iv134962_ _stx134963_)
        (if (procedure? _f134961_)
            '#!void
            (error '"expected procedure" _f134961_))
        (let _lp134965_ ((_r134967_ _iv134962_) (_rest134968_ _stx134963_))
          (let* ((_g134969134979_ (gx#syntax-e _rest134968_))
                 (_else134972134987_
                  (lambda () (_f134961_ _rest134968_ _r134967_))))
            (let ((_K134975135001_
                   (lambda (_rest134998_ _hd134999_)
                     (_lp134965_
                      (_f134961_ _hd134999_ _r134967_)
                      _rest134998_)))
                  (_K134974134992_ (lambda () _r134967_)))
              (let ((_try-match134971134995_
                     (lambda ()
                       (if (##null? _g134969134979_)
                           (_K134974134992_)
                           (_else134972134987_)))))
                (if (##pair? _g134969134979_)
                    (let ((_tl134977135006_ (##cdr _g134969134979_))
                          (_hd134976135004_ (##car _g134969134979_)))
                      (let ((_hd135009_ _hd134976135004_)
                            (_rest135011_ _tl134977135006_))
                        (_K134975135001_ _rest135011_ _hd135009_)))
                    (_try-match134971134995_))))))))
    (define gx#stx-foldr
      (lambda (_f134910_ _iv134911_ _stx134912_)
        (if (procedure? _f134910_)
            '#!void
            (error '"expected procedure" _f134910_))
        (let _recur134914_ ((_rest134916_ _stx134912_))
          (let* ((_g134917134927_ (gx#syntax-e _rest134916_))
                 (_else134920134935_
                  (lambda () (_f134910_ _rest134916_ _iv134911_))))
            (let ((_K134923134949_
                   (lambda (_rest134946_ _hd134947_)
                     (_f134910_ _hd134947_ (_recur134914_ _rest134946_))))
                  (_K134922134940_ (lambda () _iv134911_)))
              (let ((_try-match134919134943_
                     (lambda ()
                       (if (##null? _g134917134927_)
                           (_K134922134940_)
                           (_else134920134935_)))))
                (if (##pair? _g134917134927_)
                    (let ((_tl134925134954_ (##cdr _g134917134927_))
                          (_hd134924134952_ (##car _g134917134927_)))
                      (let ((_hd134957_ _hd134924134952_)
                            (_rest134959_ _tl134925134954_))
                        (_K134923134949_ _rest134959_ _hd134957_)))
                    (_try-match134919134943_))))))))
    (define gx#stx-reverse
      (lambda (_stx134908_) (gx#stx-foldl cons '() _stx134908_)))
    (define gx#stx-last
      (lambda (_stx134869_)
        (let _lp134871_ ((_rest134873_ _stx134869_))
          (let* ((_g134874134882_ (gx#syntax-e _rest134873_))
                 (_else134876134890_ (lambda () _rest134873_))
                 (_K134878134896_
                  (lambda (_rest134893_ _hd134894_)
                    (if (gx#stx-null? _rest134893_)
                        _hd134894_
                        (_lp134871_ _rest134893_)))))
            (if (##pair? _g134874134882_)
                (let ((_hd134879134899_ (##car _g134874134882_))
                      (_tl134880134901_ (##cdr _g134874134882_)))
                  (let* ((_hd134904_ _hd134879134899_)
                         (_rest134906_ _tl134880134901_))
                    (_K134878134896_ _rest134906_ _hd134904_)))
                (_else134876134890_))))))
    (define gx#stx-last-pair
      (lambda (_stx134840_)
        (let _lp134842_ ((_hd134844_ _stx134840_))
          (let* ((_g134845134852_ (gx#syntax-e _hd134844_))
                 (_E134847134856_
                  (lambda () (error '"No clause matching" _g134845134852_)))
                 (_K134848134861_
                  (lambda (_rest134859_)
                    (if (gx#stx-pair? _rest134859_)
                        (_lp134842_ _rest134859_)
                        _hd134844_))))
            (if (##pair? _g134845134852_)
                (let* ((_tl134850134864_ (##cdr _g134845134852_))
                       (_rest134867_ _tl134850134864_))
                  (_K134848134861_ _rest134867_))
                (_E134847134856_))))))
    (define gx#stx-list-tail
      (lambda (_stx134809_ _k134810_)
        (let _lp134812_ ((_rest134814_ _stx134809_) (_k134815_ _k134810_))
          (if (fxpositive? _k134815_)
              (let* ((_g134816134823_ (gx#syntax-e _rest134814_))
                     (_E134818134827_
                      (lambda ()
                        (error '"No clause matching" _g134816134823_)))
                     (_K134819134832_
                      (lambda (_rest134830_)
                        (_lp134812_ _rest134830_ (fx- _k134815_ '1)))))
                (if (##pair? _g134816134823_)
                    (let* ((_tl134821134835_ (##cdr _g134816134823_))
                           (_rest134838_ _tl134821134835_))
                      (_K134819134832_ _rest134838_))
                    (_E134818134827_)))
              _rest134814_))))
    (define gx#stx-list-ref
      (lambda (_stx134806_ _k134807_)
        (gx#stx-car (gx#stx-list-tail _stx134806_ _k134807_))))
    (define gx#stx-plist?__%
      (lambda (_stx134718_ _key?134719_)
        (if (procedure? _key?134719_)
            '#!void
            (error '"expected procedure" _key?134719_))
        (let _lp134721_ ((_rest134723_ _stx134718_))
          (let* ((_g134724134734_ (gx#stx-e _rest134723_))
                 (_else134727134742_ (lambda () '#f)))
            (let ((_K134730134784_
                   (lambda (_rest134753_ _hd134754_)
                     (if (_key?134719_ _hd134754_)
                         (let* ((_g134755134763_ (gx#stx-e _rest134753_))
                                (_else134757134771_ (lambda () '#f))
                                (_K134759134776_
                                 (lambda (_rest134774_)
                                   (_lp134721_ _rest134774_))))
                           (if (##pair? _g134755134763_)
                               (let* ((_tl134761134779_
                                       (##cdr _g134755134763_))
                                      (_rest134782_ _tl134761134779_))
                                 (_lp134721_ _rest134782_))
                               (_else134757134771_)))
                         '#f)))
                  (_K134729134747_ (lambda () '#t)))
              (let ((_try-match134726134750_
                     (lambda ()
                       (if (##null? _g134724134734_)
                           (_K134729134747_)
                           (_else134727134742_)))))
                (if (##pair? _g134724134734_)
                    (let ((_tl134732134789_ (##cdr _g134724134734_))
                          (_hd134731134787_ (##car _g134724134734_)))
                      (let ((_hd134792_ _hd134731134787_)
                            (_rest134794_ _tl134732134789_))
                        (_K134730134784_ _rest134794_ _hd134792_)))
                    (_try-match134726134750_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134799_)
        (let ((_key?134801_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134799_ _key?134801_))))
    (define gx#stx-plist?
      (lambda _g140375_
        (let ((_g140374_ (##length _g140375_)))
          (cond ((##fx= _g140374_ 1)
                 (apply (lambda (_stx134799_) (gx#stx-plist?__0 _stx134799_))
                        _g140375_))
                ((##fx= _g140374_ 2)
                 (apply (lambda (_stx134803_ _key?134804_)
                          (gx#stx-plist?__% _stx134803_ _key?134804_))
                        _g140375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140375_))))))
    (define gx#stx-getq__%
      (lambda (_key134636_ _stx134637_ _key=?134638_)
        (if (procedure? _key=?134638_)
            '#!void
            (error '"expected procedure" _key=?134638_))
        (let _lp134640_ ((_rest134642_ _stx134637_))
          (let* ((_g134643134651_ (gx#syntax-e _rest134642_))
                 (_else134645134659_ (lambda () '#f))
                 (_K134647134693_
                  (lambda (_rest134662_ _hd134663_)
                    (let* ((_g134664134671_ (gx#syntax-e _rest134662_))
                           (_E134666134675_
                            (lambda ()
                              (error '"No clause matching" _g134664134671_)))
                           (_K134667134681_
                            (lambda (_rest134678_ _val134679_)
                              (if (_key=?134638_ _hd134663_ _key134636_)
                                  _val134679_
                                  (_lp134640_ _rest134678_)))))
                      (if (##pair? _g134664134671_)
                          (let ((_hd134668134684_ (##car _g134664134671_))
                                (_tl134669134686_ (##cdr _g134664134671_)))
                            (let* ((_val134689_ _hd134668134684_)
                                   (_rest134691_ _tl134669134686_))
                              (_K134667134681_ _rest134691_ _val134689_)))
                          (_E134666134675_))))))
            (if (##pair? _g134643134651_)
                (let ((_hd134648134696_ (##car _g134643134651_))
                      (_tl134649134698_ (##cdr _g134643134651_)))
                  (let* ((_hd134701_ _hd134648134696_)
                         (_rest134703_ _tl134649134698_))
                    (_K134647134693_ _rest134703_ _hd134701_)))
                (_else134645134659_))))))
    (define gx#stx-getq__0
      (lambda (_key134708_ _stx134709_)
        (let ((_key=?134711_ gx#stx-eq?))
          (gx#stx-getq__% _key134708_ _stx134709_ _key=?134711_))))
    (define gx#stx-getq
      (lambda _g140377_
        (let ((_g140376_ (##length _g140377_)))
          (cond ((##fx= _g140376_ 2)
                 (apply (lambda (_key134708_ _stx134709_)
                          (gx#stx-getq__0 _key134708_ _stx134709_))
                        _g140377_))
                ((##fx= _g140376_ 3)
                 (apply (lambda (_key134713_ _stx134714_ _key=?134715_)
                          (gx#stx-getq__%
                           _key134713_
                           _stx134714_
                           _key=?134715_))
                        _g140377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140377_))))))))
