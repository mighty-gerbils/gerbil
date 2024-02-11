(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707618264)
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
      (lambda _$args135819_
        (apply make-struct-instance gx#identifier-wrap::t _$args135819_)))
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
      (lambda _$args135816_
        (apply make-struct-instance gx#syntax-wrap::t _$args135816_)))
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
      (lambda _$args135813_
        (apply make-struct-instance gx#syntax-quote::t _$args135813_)))
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
      (lambda (_stx135811_) (symbol? (gx#stx-e _stx135811_))))
    (define gx#identifier-quote?
      (lambda (_stx135809_)
        (if (##structure-direct-instance-of? _stx135809_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135809_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135807_)
        (if (##structure-direct-instance-of? _stx135807_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135807_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135807_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135805_)
        (if (##structure-direct-instance-of? _stx135805_ 'gx#syntax-quote::t)
            _stx135805_
            (if (##structure-direct-instance-of?
                 _stx135805_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135805_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135788_)
        (if (##structure-direct-instance-of? _stx135788_ 'gx#syntax-wrap::t)
            (let _lp135790_ ((_e135792_
                              (##unchecked-structure-ref
                               _stx135788_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135793_
                              (cons (##unchecked-structure-ref
                                     _stx135788_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135792_)
                  (let ((_$e135795_ (##type-id (##structure-type _e135792_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135795_)
                        (_lp135790_
                         (##unchecked-structure-ref _e135792_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135792_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135793_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135795_)
                                (eq? 'gx#identifier-wrap::t _$e135795_))
                            (##unchecked-structure-ref
                             _e135792_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135795_)
                                (_lp135790_
                                 (##unchecked-structure-ref
                                  _e135792_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135793_)
                                _e135792_))))
                  (if (null? _marks135793_)
                      _e135792_
                      (if (pair? _e135792_)
                          (cons (gx#stx-wrap (car _e135792_) _marks135793_)
                                (gx#stx-wrap (cdr _e135792_) _marks135793_))
                          (if (vector? _e135792_)
                              (vector-map
                               (lambda (_g135800135802_)
                                 (gx#stx-wrap _g135800135802_ _marks135793_))
                               _e135792_)
                              (if (box? _e135792_)
                                  (box (gx#stx-wrap
                                        (unbox _e135792_)
                                        _marks135793_))
                                  _e135792_))))))
            (if (##structure-instance-of? _stx135788_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135788_ '1 gx#AST::t '#f)
                _stx135788_))))
    (define gx#syntax->datum
      (lambda (_stx135786_)
        (if (##structure-instance-of? _stx135786_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135786_ '1 gx#AST::t '#f))
            (if (pair? _stx135786_)
                (cons (gx#syntax->datum (car _stx135786_))
                      (gx#syntax->datum (cdr _stx135786_)))
                (if (vector? _stx135786_)
                    (vector-map gx#syntax->datum _stx135786_)
                    (if (box? _stx135786_)
                        (box (gx#syntax->datum (unbox _stx135786_)))
                        _stx135786_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135729_ _datum135730_ _src135731_ _quote?135732_)
        (letrec ((_wrap-datum135734_
                  (lambda (_e135758_ _marks135759_)
                    (_wrap-inner135736_
                     _e135758_
                     (lambda (_g135760135762_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135760135762_
                        _src135731_
                        _marks135759_)))))
                 (_wrap-quote135735_
                  (lambda (_e135750_ _ctx135751_ _marks135752_)
                    (_wrap-inner135736_
                     _e135750_
                     (lambda (_g135753135755_)
                       (##structure
                        gx#syntax-quote::t
                        _g135753135755_
                        _src135731_
                        _ctx135751_
                        _marks135752_)))))
                 (_wrap-inner135736_
                  (lambda (_e135743_ _wrap-e135744_)
                    (let _recur135746_ ((_e135748_ _e135743_))
                      (if (symbol? _e135748_)
                          (_wrap-e135744_ _e135748_)
                          (if (pair? _e135748_)
                              (cons (_recur135746_ (car _e135748_))
                                    (_recur135746_ (cdr _e135748_)))
                              (if (vector? _e135748_)
                                  (vector-map _recur135746_ _e135748_)
                                  (if (box? _e135748_)
                                      (box (_recur135746_ (unbox _e135748_)))
                                      _e135748_)))))))
                 (_wrap-outer135737_
                  (lambda (_e135741_)
                    (if (##structure-instance-of? _e135741_ 'gerbil#AST::t)
                        _e135741_
                        (##structure gx#AST::t _e135741_ _src135731_)))))
          (if (##structure-instance-of? _datum135730_ 'gerbil#AST::t)
              _datum135730_
              (if (not _stx135729_)
                  (##structure gx#AST::t _datum135730_ _src135731_)
                  (if (gx#identifier? _stx135729_)
                      (let ((_stx135739_ (gx#stx-unwrap__0 _stx135729_)))
                        (_wrap-outer135737_
                         (if (##structure-direct-instance-of?
                              _stx135739_
                              'gx#syntax-quote::t)
                             (if _quote?135732_
                                 (_wrap-quote135735_
                                  _datum135730_
                                  (##unchecked-structure-ref
                                   _stx135739_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135739_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135734_
                                  _datum135730_
                                  (##unchecked-structure-ref
                                   _stx135739_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135734_
                              _datum135730_
                              (##unchecked-structure-ref
                               _stx135739_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135729_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135768_ _datum135769_)
        (let* ((_src135771_ '#f) (_quote?135773_ '#t))
          (gx#datum->syntax__%
           _stx135768_
           _datum135769_
           _src135771_
           _quote?135773_))))
    (define gx#datum->syntax__1
      (lambda (_stx135775_ _datum135776_ _src135777_)
        (let ((_quote?135779_ '#t))
          (gx#datum->syntax__%
           _stx135775_
           _datum135776_
           _src135777_
           _quote?135779_))))
    (define gx#datum->syntax
      (lambda _g140368_
        (let ((_g140367_ (##length _g140368_)))
          (cond ((##fx= _g140367_ 2)
                 (apply (lambda (_stx135768_ _datum135769_)
                          (gx#datum->syntax__0 _stx135768_ _datum135769_))
                        _g140368_))
                ((##fx= _g140367_ 3)
                 (apply (lambda (_stx135775_ _datum135776_ _src135777_)
                          (gx#datum->syntax__1
                           _stx135775_
                           _datum135776_
                           _src135777_))
                        _g140368_))
                ((##fx= _g140367_ 4)
                 (apply (lambda (_stx135781_
                                 _datum135782_
                                 _src135783_
                                 _quote?135784_)
                          (gx#datum->syntax__%
                           _stx135781_
                           _datum135782_
                           _src135783_
                           _quote?135784_))
                        _g140368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140368_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135705_ _marks135706_)
        (let _lp135708_ ((_e135710_ _stx135705_)
                         (_marks135711_ _marks135706_)
                         (_src135712_ (gx#stx-source _stx135705_)))
          (if (##structure-direct-instance-of? _e135710_ 'gx#syntax-wrap::t)
              (_lp135708_
               (##unchecked-structure-ref _e135710_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135710_ '3 gx#syntax-wrap::t '#f)
                _marks135711_)
               (##unchecked-structure-ref _e135710_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135710_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135711_)
                      _e135710_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135710_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135710_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135710_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135711_)))
                  (if (##structure-direct-instance-of?
                       _e135710_
                       'gx#syntax-quote::t)
                      _e135710_
                      (if (##structure-instance-of? _e135710_ 'gerbil#AST::t)
                          (_lp135708_
                           (##unchecked-structure-ref
                            _e135710_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135711_
                           (##unchecked-structure-ref
                            _e135710_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135710_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135710_
                               _src135712_
                               (reverse _marks135711_))
                              (if (null? _marks135711_)
                                  _e135710_
                                  (if (pair? _e135710_)
                                      (cons (gx#stx-wrap
                                             (car _e135710_)
                                             _marks135711_)
                                            (gx#stx-wrap
                                             (cdr _e135710_)
                                             _marks135711_))
                                      (if (vector? _e135710_)
                                          (vector-map
                                           (lambda (_g135713135715_)
                                             (gx#stx-wrap
                                              _g135713135715_
                                              _marks135711_))
                                           _e135710_)
                                          (if (box? _e135710_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135710_)
                                                    _marks135711_))
                                              _e135710_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135721_)
        (let ((_marks135723_ '()))
          (gx#stx-unwrap__% _stx135721_ _marks135723_))))
    (define gx#stx-unwrap
      (lambda _g140370_
        (let ((_g140369_ (##length _g140370_)))
          (cond ((##fx= _g140369_ 1)
                 (apply (lambda (_stx135721_) (gx#stx-unwrap__0 _stx135721_))
                        _g140370_))
                ((##fx= _g140369_ 2)
                 (apply (lambda (_stx135725_ _marks135726_)
                          (gx#stx-unwrap__% _stx135725_ _marks135726_))
                        _g140370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140370_))))))
    (define gx#stx-wrap
      (lambda (_stx135698_ _marks135699_)
        (foldl1 (lambda (_mark135701_ _stx135702_)
                  (gx#stx-apply-mark _stx135702_ _mark135701_))
                _stx135698_
                _marks135699_)))
    (define gx#stx-rewrap
      (lambda (_stx135692_ _marks135693_)
        (foldr1 (lambda (_mark135695_ _stx135696_)
                  (gx#stx-apply-mark _stx135696_ _mark135695_))
                _stx135692_
                _marks135693_)))
    (define gx#stx-apply-mark
      (lambda (_stx135689_ _mark135690_)
        (if (##structure-direct-instance-of? _stx135689_ 'gx#syntax-quote::t)
            _stx135689_
            (if (and (##structure-direct-instance-of?
                      _stx135689_
                      'gx#syntax-wrap::t)
                     (eq? _mark135690_
                          (##unchecked-structure-ref
                           _stx135689_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135689_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135689_
                 (gx#stx-source _stx135689_)
                 _mark135690_)))))
    (define gx#apply-mark
      (lambda (_mark135653_ _marks135654_)
        (let* ((_marks135655135663_ _marks135654_)
               (_else135657135671_
                (lambda () (cons _mark135653_ _marks135654_)))
               (_K135659135677_
                (lambda (_rest135674_ _hd135675_)
                  (if (eq? _mark135653_ _hd135675_)
                      _rest135674_
                      (cons _mark135653_ _marks135654_)))))
          (if (##pair? _marks135655135663_)
              (let ((_hd135660135680_ (##car _marks135655135663_))
                    (_tl135661135682_ (##cdr _marks135655135663_)))
                (let* ((_hd135685_ _hd135660135680_)
                       (_rest135687_ _tl135661135682_))
                  (_K135659135677_ _rest135687_ _hd135685_)))
              (_else135657135671_)))))
    (define gx#stx-e
      (lambda (_stx135651_)
        (if (##structure-direct-instance-of? _stx135651_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135651_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135651_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135651_ '1 gx#AST::t '#f)
                _stx135651_))))
    (define gx#stx-source
      (lambda (_stx135649_)
        (if (##structure-instance-of? _stx135649_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135649_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135643_ _src135644_)
        (if (or (##structure-instance-of? _stx135643_ 'gerbil#AST::t)
                (not _src135644_))
            _stx135643_
            (##structure gx#AST::t _stx135643_ _src135644_))))
    (define gx#stx-datum?
      (lambda (_stx135641_) (gx#self-quoting? (gx#stx-e _stx135641_))))
    (define gx#self-quoting?
      (lambda (_x135624_)
        (let ((_$e135626_ (immediate? _x135624_)))
          (if _$e135626_
              _$e135626_
              (let ((_$e135629_ (number? _x135624_)))
                (if _$e135629_
                    _$e135629_
                    (let ((_$e135632_ (keyword? _x135624_)))
                      (if _$e135632_
                          _$e135632_
                          (let ((_$e135635_ (string? _x135624_)))
                            (if _$e135635_
                                _$e135635_
                                (let ((_$e135638_ (vector? _x135624_)))
                                  (if _$e135638_
                                      _$e135638_
                                      (u8vector? _x135624_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135622_) (boolean? (gx#stx-e _e135622_))))
    (define gx#stx-keyword?
      (lambda (_e135620_) (keyword? (gx#stx-e _e135620_))))
    (define gx#stx-char? (lambda (_e135618_) (char? (gx#stx-e _e135618_))))
    (define gx#stx-number? (lambda (_e135616_) (number? (gx#stx-e _e135616_))))
    (define gx#stx-fixnum? (lambda (_e135614_) (fixnum? (gx#stx-e _e135614_))))
    (define gx#stx-string? (lambda (_e135612_) (string? (gx#stx-e _e135612_))))
    (define gx#stx-null? (lambda (_e135610_) (null? (gx#stx-e _e135610_))))
    (define gx#stx-pair? (lambda (_e135608_) (pair? (gx#stx-e _e135608_))))
    (define gx#stx-list?
      (lambda (_e135570_)
        (let* ((_g135571135580_ (gx#stx-e _e135570_))
               (_E135574135584_
                (lambda () (error '"No clause matching" _g135571135580_))))
          (let ((_K135576135600_
                 (lambda (_rest135598_) (gx#stx-list? _rest135598_)))
                (_K135575135590_ (lambda (_tail135588_) (null? _tail135588_))))
            (if (##pair? _g135571135580_)
                (let* ((_tl135578135603_ (##cdr _g135571135580_))
                       (_rest135606_ _tl135578135603_))
                  (gx#stx-list? _rest135606_))
                (let ((_tail135593_ _g135571135580_))
                  (null? _tail135593_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135563_)
        (let* ((_e135565_ (gx#stx-e _e135563_)) (_$e135567_ (pair? _e135565_)))
          (if _$e135567_ _$e135567_ (null? _e135565_)))))
    (define gx#stx-vector? (lambda (_e135561_) (vector? (gx#stx-e _e135561_))))
    (define gx#stx-box? (lambda (_e135559_) (box? (gx#stx-e _e135559_))))
    (define gx#stx-eq?
      (lambda (_x135556_ _y135557_)
        (eq? (gx#stx-e _x135556_) (gx#stx-e _y135557_))))
    (define gx#stx-eqv?
      (lambda (_x135553_ _y135554_)
        (eqv? (gx#stx-e _x135553_) (gx#stx-e _y135554_))))
    (define gx#stx-equal?
      (lambda (_x135550_ _y135551_)
        (equal? (gx#stx-e _x135550_) (gx#stx-e _y135551_))))
    (define gx#stx-false? (lambda (_x135548_) (not (gx#stx-e _x135548_))))
    (define gx#stx-identifier
      (lambda (_template135545_ . _args135546_)
        (gx#datum->syntax__1
         _template135545_
         (apply make-symbol (gx#syntax->datum _args135546_))
         (gx#stx-source _template135545_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135543_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135543_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135541_)
        (if (##structure-direct-instance-of?
             _stx135541_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135541_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135541_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135541_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135541_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135537_)
        (let ((_stx135539_ (gx#stx-unwrap__0 _stx135537_)))
          (if (gx#identifier-quote? _stx135539_)
              (##unchecked-structure-ref _stx135539_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135492_)
        (let* ((_g135493135503_ (gx#stx-e _stx135492_))
               (_else135496135511_ (lambda () '#f)))
          (let ((_K135499135525_
                 (lambda (_rest135522_ _hd135523_)
                   (if (gx#identifier? _hd135523_)
                       (gx#identifier-list? _rest135522_)
                       '#f)))
                (_K135498135516_ (lambda () '#t)))
            (let ((_try-match135495135519_
                   (lambda ()
                     (if (##null? _g135493135503_)
                         (_K135498135516_)
                         (_else135496135511_)))))
              (if (##pair? _g135493135503_)
                  (let ((_tl135501135530_ (##cdr _g135493135503_))
                        (_hd135500135528_ (##car _g135493135503_)))
                    (let ((_hd135533_ _hd135500135528_)
                          (_rest135535_ _tl135501135530_))
                      (_K135499135525_ _rest135535_ _hd135533_)))
                  (_try-match135495135519_)))))))
    (define gx#genident__%
      (lambda (_e135469_ _src135470_)
        (gx#stx-wrap-source
         (gensym (let ((_e135472_ (gx#stx-e _e135469_)))
                   (if (interned-symbol? _e135472_) _e135472_ 'g)))
         (let ((_$e135474_ (gx#stx-source _e135469_)))
           (if _$e135474_ _$e135474_ _src135470_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135481_ 'g) (_src135483_ '#f))
          (gx#genident__% _e135481_ _src135483_))))
    (define gx#genident__1
      (lambda (_e135485_)
        (let ((_src135487_ '#f)) (gx#genident__% _e135485_ _src135487_))))
    (define gx#genident
      (lambda _g140372_
        (let ((_g140371_ (##length _g140372_)))
          (cond ((##fx= _g140371_ 0)
                 (apply (lambda () (gx#genident__0)) _g140372_))
                ((##fx= _g140371_ 1)
                 (apply (lambda (_e135485_) (gx#genident__1 _e135485_))
                        _g140372_))
                ((##fx= _g140371_ 2)
                 (apply (lambda (_e135489_ _src135490_)
                          (gx#genident__% _e135489_ _src135490_))
                        _g140372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140372_))))))
    (define gx#gentemps
      (lambda (_stx-lst135466_) (gx#stx-map1 gx#genident _stx-lst135466_)))
    (define gx#syntax->list
      (lambda (_stx135464_) (gx#stx-map1 values _stx135464_)))
    (define gx#stx-car
      (lambda (_stx135461_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135461_)))))
    (define gx#stx-cdr
      (lambda (_stx135458_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135458_)))))
    (define gx#stx-length
      (lambda (_stx135423_)
        (let _lp135425_ ((_rest135427_ _stx135423_) (_n135428_ '0))
          (let* ((_g135429135437_ (gx#stx-e _rest135427_))
                 (_else135431135445_ (lambda () _n135428_))
                 (_K135433135450_
                  (lambda (_rest135448_)
                    (_lp135425_ _rest135448_ (fx+ _n135428_ '1)))))
            (if (##pair? _g135429135437_)
                (let* ((_tl135435135453_ (##cdr _g135429135437_))
                       (_rest135456_ _tl135435135453_))
                  (_K135433135450_ _rest135456_))
                (_else135431135445_))))))
    (define gx#stx-for-each
      (lambda _g140374_
        (let ((_g140373_ (##length _g140374_)))
          (cond ((##fx= _g140373_ 2)
                 (apply (lambda (_f135416_ _stx135417_)
                          (gx#stx-for-each1 _f135416_ _stx135417_))
                        _g140374_))
                ((##fx= _g140373_ 3)
                 (apply (lambda (_f135419_ _xstx135420_ _ystx135421_)
                          (gx#stx-for-each2
                           _f135419_
                           _xstx135420_
                           _ystx135421_))
                        _g140374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140374_))))))
    (define gx#stx-for-each1
      (lambda (_f135366_ _stx135367_)
        (if (procedure? _f135366_)
            '#!void
            (error '"expected procedure" _f135366_))
        (let _lp135369_ ((_rest135371_ _stx135367_))
          (let* ((_g135372135382_ (gx#syntax-e _rest135371_))
                 (_else135375135390_ (lambda () (_f135366_ _rest135371_))))
            (let ((_K135378135404_
                   (lambda (_rest135401_ _hd135402_)
                     (_f135366_ _hd135402_)
                     (_lp135369_ _rest135401_)))
                  (_K135377135395_ (lambda () '#!void)))
              (let ((_try-match135374135398_
                     (lambda ()
                       (if (##null? _g135372135382_)
                           (_K135377135395_)
                           (_else135375135390_)))))
                (if (##pair? _g135372135382_)
                    (let ((_tl135380135409_ (##cdr _g135372135382_))
                          (_hd135379135407_ (##car _g135372135382_)))
                      (let ((_hd135412_ _hd135379135407_)
                            (_rest135414_ _tl135380135409_))
                        (_K135378135404_ _rest135414_ _hd135412_)))
                    (_try-match135374135398_))))))))
    (define gx#stx-for-each2
      (lambda (_f135271_ _xstx135272_ _ystx135273_)
        (if (procedure? _f135271_)
            '#!void
            (error '"expected procedure" _f135271_))
        (let _lp135275_ ((_xrest135277_ _xstx135272_)
                         (_yrest135278_ _ystx135273_))
          (let* ((_g135279135289_ (gx#syntax-e _xrest135277_))
                 (_else135282135297_ (lambda () '#!void)))
            (let ((_K135285135354_
                   (lambda (_xrest135323_ _xhd135324_)
                     (let* ((_g135325135332_ (gx#syntax-e _yrest135278_))
                            (_E135327135336_
                             (lambda ()
                               (error '"No clause matching" _g135325135332_)))
                            (_K135328135342_
                             (lambda (_yrest135339_ _yhd135340_)
                               (_f135271_ _xhd135324_ _yhd135340_)
                               (_lp135275_ _xrest135323_ _yrest135339_))))
                       (if (##pair? _g135325135332_)
                           (let ((_hd135329135345_ (##car _g135325135332_))
                                 (_tl135330135347_ (##cdr _g135325135332_)))
                             (let* ((_yhd135350_ _hd135329135345_)
                                    (_yrest135352_ _tl135330135347_))
                               (_K135328135342_ _yrest135352_ _yhd135350_)))
                           (_E135327135336_)))))
                  (_K135284135317_
                   (lambda ()
                     (let* ((_yrest135301135306_ _yrest135278_)
                            (_E135303135310_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135301135306_)))
                            (_K135304135314_
                             (lambda ()
                               (_f135271_ _xrest135277_ _yrest135278_))))
                       (if (not (gx#stx-null? _yrest135301135306_))
                           (_K135304135314_)
                           (_E135303135310_))))))
              (let ((_try-match135281135320_
                     (lambda ()
                       (if (not (null? _g135279135289_))
                           (_K135284135317_)
                           (_else135282135297_)))))
                (if (##pair? _g135279135289_)
                    (let ((_tl135287135359_ (##cdr _g135279135289_))
                          (_hd135286135357_ (##car _g135279135289_)))
                      (let ((_xhd135362_ _hd135286135357_)
                            (_xrest135364_ _tl135287135359_))
                        (_K135285135354_ _xrest135364_ _xhd135362_)))
                    (_try-match135281135320_))))))))
    (define gx#stx-map
      (lambda _g140376_
        (let ((_g140375_ (##length _g140376_)))
          (cond ((##fx= _g140375_ 2)
                 (apply (lambda (_f135264_ _stx135265_)
                          (gx#stx-map1 _f135264_ _stx135265_))
                        _g140376_))
                ((##fx= _g140375_ 3)
                 (apply (lambda (_f135267_ _xstx135268_ _ystx135269_)
                          (gx#stx-map2 _f135267_ _xstx135268_ _ystx135269_))
                        _g140376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140376_))))))
    (define gx#stx-map1
      (lambda (_f135214_ _stx135215_)
        (if (procedure? _f135214_)
            '#!void
            (error '"expected procedure" _f135214_))
        (let _recur135217_ ((_rest135219_ _stx135215_))
          (let* ((_g135220135230_ (gx#syntax-e _rest135219_))
                 (_else135223135238_ (lambda () (_f135214_ _rest135219_))))
            (let ((_K135226135252_
                   (lambda (_rest135249_ _hd135250_)
                     (cons (_f135214_ _hd135250_)
                           (_recur135217_ _rest135249_))))
                  (_K135225135243_ (lambda () '())))
              (let ((_try-match135222135246_
                     (lambda ()
                       (if (##null? _g135220135230_)
                           (_K135225135243_)
                           (_else135223135238_)))))
                (if (##pair? _g135220135230_)
                    (let ((_tl135228135257_ (##cdr _g135220135230_))
                          (_hd135227135255_ (##car _g135220135230_)))
                      (let ((_hd135260_ _hd135227135255_)
                            (_rest135262_ _tl135228135257_))
                        (_K135226135252_ _rest135262_ _hd135260_)))
                    (_try-match135222135246_))))))))
    (define gx#stx-map2
      (lambda (_f135119_ _xstx135120_ _ystx135121_)
        (if (procedure? _f135119_)
            '#!void
            (error '"expected procedure" _f135119_))
        (let _recur135123_ ((_xrest135125_ _xstx135120_)
                            (_yrest135126_ _ystx135121_))
          (let* ((_g135127135137_ (gx#syntax-e _xrest135125_))
                 (_else135130135145_ (lambda () '())))
            (let ((_K135133135202_
                   (lambda (_xrest135171_ _xhd135172_)
                     (let* ((_g135173135180_ (gx#syntax-e _yrest135126_))
                            (_E135175135184_
                             (lambda ()
                               (error '"No clause matching" _g135173135180_)))
                            (_K135176135190_
                             (lambda (_yrest135187_ _yhd135188_)
                               (cons (_f135119_ _xhd135172_ _yhd135188_)
                                     (_recur135123_
                                      _xrest135171_
                                      _yrest135187_)))))
                       (if (##pair? _g135173135180_)
                           (let ((_hd135177135193_ (##car _g135173135180_))
                                 (_tl135178135195_ (##cdr _g135173135180_)))
                             (let* ((_yhd135198_ _hd135177135193_)
                                    (_yrest135200_ _tl135178135195_))
                               (_K135176135190_ _yrest135200_ _yhd135198_)))
                           (_E135175135184_)))))
                  (_K135132135165_
                   (lambda ()
                     (let* ((_yrest135149135154_ _yrest135126_)
                            (_E135151135158_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135149135154_)))
                            (_K135152135162_
                             (lambda ()
                               (_f135119_ _xrest135125_ _yrest135126_))))
                       (if (not (gx#stx-null? _yrest135149135154_))
                           (_K135152135162_)
                           (_E135151135158_))))))
              (let ((_try-match135129135168_
                     (lambda ()
                       (if (not (null? _g135127135137_))
                           (_K135132135165_)
                           (_else135130135145_)))))
                (if (##pair? _g135127135137_)
                    (let ((_tl135135135207_ (##cdr _g135127135137_))
                          (_hd135134135205_ (##car _g135127135137_)))
                      (let ((_xhd135210_ _hd135134135205_)
                            (_xrest135212_ _tl135135135207_))
                        (_K135133135202_ _xrest135212_ _xhd135210_)))
                    (_try-match135129135168_))))))))
    (define gx#stx-andmap
      (lambda (_f135069_ _stx135070_)
        (if (procedure? _f135069_)
            '#!void
            (error '"expected procedure" _f135069_))
        (let _lp135072_ ((_rest135074_ _stx135070_))
          (let* ((_g135075135085_ (gx#syntax-e _rest135074_))
                 (_else135078135093_ (lambda () (_f135069_ _rest135074_))))
            (let ((_K135081135107_
                   (lambda (_rest135104_ _hd135105_)
                     (if (_f135069_ _hd135105_)
                         (_lp135072_ _rest135104_)
                         '#f)))
                  (_K135080135098_ (lambda () '#t)))
              (let ((_try-match135077135101_
                     (lambda ()
                       (if (##null? _g135075135085_)
                           (_K135080135098_)
                           (_else135078135093_)))))
                (if (##pair? _g135075135085_)
                    (let ((_tl135083135112_ (##cdr _g135075135085_))
                          (_hd135082135110_ (##car _g135075135085_)))
                      (let ((_hd135115_ _hd135082135110_)
                            (_rest135117_ _tl135083135112_))
                        (_K135081135107_ _rest135117_ _hd135115_)))
                    (_try-match135077135101_))))))))
    (define gx#stx-ormap
      (lambda (_f135016_ _stx135017_)
        (if (procedure? _f135016_)
            '#!void
            (error '"expected procedure" _f135016_))
        (let _lp135019_ ((_rest135021_ _stx135017_))
          (let* ((_g135022135032_ (gx#syntax-e _rest135021_))
                 (_else135025135040_ (lambda () (_f135016_ _rest135021_))))
            (let ((_K135028135057_
                   (lambda (_rest135051_ _hd135052_)
                     (let ((_$e135054_ (_f135016_ _hd135052_)))
                       (if _$e135054_ _$e135054_ (_lp135019_ _rest135051_)))))
                  (_K135027135045_ (lambda () '#f)))
              (let ((_try-match135024135048_
                     (lambda ()
                       (if (##null? _g135022135032_)
                           (_K135027135045_)
                           (_else135025135040_)))))
                (if (##pair? _g135022135032_)
                    (let ((_tl135030135062_ (##cdr _g135022135032_))
                          (_hd135029135060_ (##car _g135022135032_)))
                      (let ((_hd135065_ _hd135029135060_)
                            (_rest135067_ _tl135030135062_))
                        (_K135028135057_ _rest135067_ _hd135065_)))
                    (_try-match135024135048_))))))))
    (define gx#stx-foldl
      (lambda (_f134964_ _iv134965_ _stx134966_)
        (if (procedure? _f134964_)
            '#!void
            (error '"expected procedure" _f134964_))
        (let _lp134968_ ((_r134970_ _iv134965_) (_rest134971_ _stx134966_))
          (let* ((_g134972134982_ (gx#syntax-e _rest134971_))
                 (_else134975134990_
                  (lambda () (_f134964_ _rest134971_ _r134970_))))
            (let ((_K134978135004_
                   (lambda (_rest135001_ _hd135002_)
                     (_lp134968_
                      (_f134964_ _hd135002_ _r134970_)
                      _rest135001_)))
                  (_K134977134995_ (lambda () _r134970_)))
              (let ((_try-match134974134998_
                     (lambda ()
                       (if (##null? _g134972134982_)
                           (_K134977134995_)
                           (_else134975134990_)))))
                (if (##pair? _g134972134982_)
                    (let ((_tl134980135009_ (##cdr _g134972134982_))
                          (_hd134979135007_ (##car _g134972134982_)))
                      (let ((_hd135012_ _hd134979135007_)
                            (_rest135014_ _tl134980135009_))
                        (_K134978135004_ _rest135014_ _hd135012_)))
                    (_try-match134974134998_))))))))
    (define gx#stx-foldr
      (lambda (_f134913_ _iv134914_ _stx134915_)
        (if (procedure? _f134913_)
            '#!void
            (error '"expected procedure" _f134913_))
        (let _recur134917_ ((_rest134919_ _stx134915_))
          (let* ((_g134920134930_ (gx#syntax-e _rest134919_))
                 (_else134923134938_
                  (lambda () (_f134913_ _rest134919_ _iv134914_))))
            (let ((_K134926134952_
                   (lambda (_rest134949_ _hd134950_)
                     (_f134913_ _hd134950_ (_recur134917_ _rest134949_))))
                  (_K134925134943_ (lambda () _iv134914_)))
              (let ((_try-match134922134946_
                     (lambda ()
                       (if (##null? _g134920134930_)
                           (_K134925134943_)
                           (_else134923134938_)))))
                (if (##pair? _g134920134930_)
                    (let ((_tl134928134957_ (##cdr _g134920134930_))
                          (_hd134927134955_ (##car _g134920134930_)))
                      (let ((_hd134960_ _hd134927134955_)
                            (_rest134962_ _tl134928134957_))
                        (_K134926134952_ _rest134962_ _hd134960_)))
                    (_try-match134922134946_))))))))
    (define gx#stx-reverse
      (lambda (_stx134911_) (gx#stx-foldl cons '() _stx134911_)))
    (define gx#stx-last
      (lambda (_stx134872_)
        (let _lp134874_ ((_rest134876_ _stx134872_))
          (let* ((_g134877134885_ (gx#syntax-e _rest134876_))
                 (_else134879134893_ (lambda () _rest134876_))
                 (_K134881134899_
                  (lambda (_rest134896_ _hd134897_)
                    (if (gx#stx-null? _rest134896_)
                        _hd134897_
                        (_lp134874_ _rest134896_)))))
            (if (##pair? _g134877134885_)
                (let ((_hd134882134902_ (##car _g134877134885_))
                      (_tl134883134904_ (##cdr _g134877134885_)))
                  (let* ((_hd134907_ _hd134882134902_)
                         (_rest134909_ _tl134883134904_))
                    (_K134881134899_ _rest134909_ _hd134907_)))
                (_else134879134893_))))))
    (define gx#stx-last-pair
      (lambda (_stx134843_)
        (let _lp134845_ ((_hd134847_ _stx134843_))
          (let* ((_g134848134855_ (gx#syntax-e _hd134847_))
                 (_E134850134859_
                  (lambda () (error '"No clause matching" _g134848134855_)))
                 (_K134851134864_
                  (lambda (_rest134862_)
                    (if (gx#stx-pair? _rest134862_)
                        (_lp134845_ _rest134862_)
                        _hd134847_))))
            (if (##pair? _g134848134855_)
                (let* ((_tl134853134867_ (##cdr _g134848134855_))
                       (_rest134870_ _tl134853134867_))
                  (_K134851134864_ _rest134870_))
                (_E134850134859_))))))
    (define gx#stx-list-tail
      (lambda (_stx134812_ _k134813_)
        (let _lp134815_ ((_rest134817_ _stx134812_) (_k134818_ _k134813_))
          (if (fxpositive? _k134818_)
              (let* ((_g134819134826_ (gx#syntax-e _rest134817_))
                     (_E134821134830_
                      (lambda ()
                        (error '"No clause matching" _g134819134826_)))
                     (_K134822134835_
                      (lambda (_rest134833_)
                        (_lp134815_ _rest134833_ (fx- _k134818_ '1)))))
                (if (##pair? _g134819134826_)
                    (let* ((_tl134824134838_ (##cdr _g134819134826_))
                           (_rest134841_ _tl134824134838_))
                      (_K134822134835_ _rest134841_))
                    (_E134821134830_)))
              _rest134817_))))
    (define gx#stx-list-ref
      (lambda (_stx134809_ _k134810_)
        (gx#stx-car (gx#stx-list-tail _stx134809_ _k134810_))))
    (define gx#stx-plist?__%
      (lambda (_stx134721_ _key?134722_)
        (if (procedure? _key?134722_)
            '#!void
            (error '"expected procedure" _key?134722_))
        (let _lp134724_ ((_rest134726_ _stx134721_))
          (let* ((_g134727134737_ (gx#stx-e _rest134726_))
                 (_else134730134745_ (lambda () '#f)))
            (let ((_K134733134787_
                   (lambda (_rest134756_ _hd134757_)
                     (if (_key?134722_ _hd134757_)
                         (let* ((_g134758134766_ (gx#stx-e _rest134756_))
                                (_else134760134774_ (lambda () '#f))
                                (_K134762134779_
                                 (lambda (_rest134777_)
                                   (_lp134724_ _rest134777_))))
                           (if (##pair? _g134758134766_)
                               (let* ((_tl134764134782_
                                       (##cdr _g134758134766_))
                                      (_rest134785_ _tl134764134782_))
                                 (_lp134724_ _rest134785_))
                               (_else134760134774_)))
                         '#f)))
                  (_K134732134750_ (lambda () '#t)))
              (let ((_try-match134729134753_
                     (lambda ()
                       (if (##null? _g134727134737_)
                           (_K134732134750_)
                           (_else134730134745_)))))
                (if (##pair? _g134727134737_)
                    (let ((_tl134735134792_ (##cdr _g134727134737_))
                          (_hd134734134790_ (##car _g134727134737_)))
                      (let ((_hd134795_ _hd134734134790_)
                            (_rest134797_ _tl134735134792_))
                        (_K134733134787_ _rest134797_ _hd134795_)))
                    (_try-match134729134753_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134802_)
        (let ((_key?134804_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134802_ _key?134804_))))
    (define gx#stx-plist?
      (lambda _g140378_
        (let ((_g140377_ (##length _g140378_)))
          (cond ((##fx= _g140377_ 1)
                 (apply (lambda (_stx134802_) (gx#stx-plist?__0 _stx134802_))
                        _g140378_))
                ((##fx= _g140377_ 2)
                 (apply (lambda (_stx134806_ _key?134807_)
                          (gx#stx-plist?__% _stx134806_ _key?134807_))
                        _g140378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140378_))))))
    (define gx#stx-getq__%
      (lambda (_key134639_ _stx134640_ _key=?134641_)
        (if (procedure? _key=?134641_)
            '#!void
            (error '"expected procedure" _key=?134641_))
        (let _lp134643_ ((_rest134645_ _stx134640_))
          (let* ((_g134646134654_ (gx#syntax-e _rest134645_))
                 (_else134648134662_ (lambda () '#f))
                 (_K134650134696_
                  (lambda (_rest134665_ _hd134666_)
                    (let* ((_g134667134674_ (gx#syntax-e _rest134665_))
                           (_E134669134678_
                            (lambda ()
                              (error '"No clause matching" _g134667134674_)))
                           (_K134670134684_
                            (lambda (_rest134681_ _val134682_)
                              (if (_key=?134641_ _hd134666_ _key134639_)
                                  _val134682_
                                  (_lp134643_ _rest134681_)))))
                      (if (##pair? _g134667134674_)
                          (let ((_hd134671134687_ (##car _g134667134674_))
                                (_tl134672134689_ (##cdr _g134667134674_)))
                            (let* ((_val134692_ _hd134671134687_)
                                   (_rest134694_ _tl134672134689_))
                              (_K134670134684_ _rest134694_ _val134692_)))
                          (_E134669134678_))))))
            (if (##pair? _g134646134654_)
                (let ((_hd134651134699_ (##car _g134646134654_))
                      (_tl134652134701_ (##cdr _g134646134654_)))
                  (let* ((_hd134704_ _hd134651134699_)
                         (_rest134706_ _tl134652134701_))
                    (_K134650134696_ _rest134706_ _hd134704_)))
                (_else134648134662_))))))
    (define gx#stx-getq__0
      (lambda (_key134711_ _stx134712_)
        (let ((_key=?134714_ gx#stx-eq?))
          (gx#stx-getq__% _key134711_ _stx134712_ _key=?134714_))))
    (define gx#stx-getq
      (lambda _g140380_
        (let ((_g140379_ (##length _g140380_)))
          (cond ((##fx= _g140379_ 2)
                 (apply (lambda (_key134711_ _stx134712_)
                          (gx#stx-getq__0 _key134711_ _stx134712_))
                        _g140380_))
                ((##fx= _g140379_ 3)
                 (apply (lambda (_key134716_ _stx134717_ _key=?134718_)
                          (gx#stx-getq__%
                           _key134716_
                           _stx134717_
                           _key=?134718_))
                        _g140380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140380_))))))))
