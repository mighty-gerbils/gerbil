(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710694203)
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
      (lambda _$args79831_
        (apply make-instance gx#identifier-wrap::t _$args79831_)))
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
      (lambda _$args79828_
        (apply make-instance gx#syntax-wrap::t _$args79828_)))
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
      (lambda _$args79825_
        (apply make-instance gx#syntax-quote::t _$args79825_)))
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
      (lambda (_stx79823_) (symbol? (gx#stx-e _stx79823_))))
    (define gx#identifier-quote?
      (lambda (_stx79821_)
        (if (##structure-direct-instance-of? _stx79821_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx79821_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx79819_)
        (if (##structure-direct-instance-of? _stx79819_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx79819_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx79819_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx79817_)
        (if (##structure-direct-instance-of? _stx79817_ 'gx#syntax-quote::t)
            _stx79817_
            (if (##structure-direct-instance-of? _stx79817_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx79817_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx79800_)
        (if (##structure-direct-instance-of? _stx79800_ 'gx#syntax-wrap::t)
            (let _lp79802_ ((_e79804_
                             (##unchecked-structure-ref
                              _stx79800_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks79805_
                             (cons (##unchecked-structure-ref
                                    _stx79800_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e79804_)
                  (let ((_$e79807_ (##type-id (##structure-type _e79804_))))
                    (if (eq? 'gx#syntax-wrap::t _$e79807_)
                        (_lp79802_
                         (##unchecked-structure-ref _e79804_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e79804_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks79805_))
                        (if (or (eq? 'gx#syntax-quote::t _$e79807_)
                                (eq? 'gx#identifier-wrap::t _$e79807_))
                            (##unchecked-structure-ref
                             _e79804_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e79807_)
                                (_lp79802_
                                 (##unchecked-structure-ref
                                  _e79804_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks79805_)
                                _e79804_))))
                  (if (null? _marks79805_)
                      _e79804_
                      (if (pair? _e79804_)
                          (cons (gx#stx-wrap (car _e79804_) _marks79805_)
                                (gx#stx-wrap (cdr _e79804_) _marks79805_))
                          (if (vector? _e79804_)
                              (vector-map
                               (lambda (_g7981279814_)
                                 (gx#stx-wrap _g7981279814_ _marks79805_))
                               _e79804_)
                              (if (box? _e79804_)
                                  (box (gx#stx-wrap
                                        (unbox _e79804_)
                                        _marks79805_))
                                  _e79804_))))))
            (if (##structure-instance-of? _stx79800_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx79800_ '1 gx#AST::t '#f)
                _stx79800_))))
    (define gx#syntax->datum
      (lambda (_stx79798_)
        (if (##structure-instance-of? _stx79798_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx79798_ '1 gx#AST::t '#f))
            (if (pair? _stx79798_)
                (cons (gx#syntax->datum (car _stx79798_))
                      (gx#syntax->datum (cdr _stx79798_)))
                (if (vector? _stx79798_)
                    (vector-map gx#syntax->datum _stx79798_)
                    (if (box? _stx79798_)
                        (box (gx#syntax->datum (unbox _stx79798_)))
                        _stx79798_))))))
    (define gx#datum->syntax__%
      (lambda (_stx79741_ _datum79742_ _src79743_ _quote?79744_)
        (letrec ((_wrap-datum79746_
                  (lambda (_e79770_ _marks79771_)
                    (_wrap-inner79748_
                     _e79770_
                     (lambda (_g7977279774_)
                       (##structure
                        gx#identifier-wrap::t
                        _g7977279774_
                        _src79743_
                        _marks79771_)))))
                 (_wrap-quote79747_
                  (lambda (_e79762_ _ctx79763_ _marks79764_)
                    (_wrap-inner79748_
                     _e79762_
                     (lambda (_g7976579767_)
                       (##structure
                        gx#syntax-quote::t
                        _g7976579767_
                        _src79743_
                        _ctx79763_
                        _marks79764_)))))
                 (_wrap-inner79748_
                  (lambda (_e79755_ _wrap-e79756_)
                    (let _recur79758_ ((_e79760_ _e79755_))
                      (if (symbol? _e79760_)
                          (_wrap-e79756_ _e79760_)
                          (if (pair? _e79760_)
                              (cons (_recur79758_ (car _e79760_))
                                    (_recur79758_ (cdr _e79760_)))
                              (if (vector? _e79760_)
                                  (vector-map _recur79758_ _e79760_)
                                  (if (box? _e79760_)
                                      (box (_recur79758_ (unbox _e79760_)))
                                      _e79760_)))))))
                 (_wrap-outer79749_
                  (lambda (_e79753_)
                    (if (##structure-instance-of? _e79753_ 'gerbil#AST::t)
                        _e79753_
                        (##structure gx#AST::t _e79753_ _src79743_)))))
          (if (##structure-instance-of? _datum79742_ 'gerbil#AST::t)
              _datum79742_
              (if (not _stx79741_)
                  (##structure gx#AST::t _datum79742_ _src79743_)
                  (if (gx#identifier? _stx79741_)
                      (let ((_stx79751_ (gx#stx-unwrap__0 _stx79741_)))
                        (_wrap-outer79749_
                         (if (##structure-direct-instance-of?
                              _stx79751_
                              'gx#syntax-quote::t)
                             (if _quote?79744_
                                 (_wrap-quote79747_
                                  _datum79742_
                                  (##unchecked-structure-ref
                                   _stx79751_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx79751_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum79746_
                                  _datum79742_
                                  (##unchecked-structure-ref
                                   _stx79751_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum79746_
                              _datum79742_
                              (##unchecked-structure-ref
                               _stx79751_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx79741_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx79780_ _datum79781_)
        (let* ((_src79783_ '#f) (_quote?79785_ '#t))
          (gx#datum->syntax__%
           _stx79780_
           _datum79781_
           _src79783_
           _quote?79785_))))
    (define gx#datum->syntax__1
      (lambda (_stx79787_ _datum79788_ _src79789_)
        (let ((_quote?79791_ '#t))
          (gx#datum->syntax__%
           _stx79787_
           _datum79788_
           _src79789_
           _quote?79791_))))
    (define gx#datum->syntax
      (lambda _g79912_
        (let ((_g79911_ (##length _g79912_)))
          (cond ((##fx= _g79911_ 2)
                 (apply (lambda (_stx79780_ _datum79781_)
                          (gx#datum->syntax__0 _stx79780_ _datum79781_))
                        _g79912_))
                ((##fx= _g79911_ 3)
                 (apply (lambda (_stx79787_ _datum79788_ _src79789_)
                          (gx#datum->syntax__1
                           _stx79787_
                           _datum79788_
                           _src79789_))
                        _g79912_))
                ((##fx= _g79911_ 4)
                 (apply (lambda (_stx79793_
                                 _datum79794_
                                 _src79795_
                                 _quote?79796_)
                          (gx#datum->syntax__%
                           _stx79793_
                           _datum79794_
                           _src79795_
                           _quote?79796_))
                        _g79912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g79912_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx79717_ _marks79718_)
        (let _lp79720_ ((_e79722_ _stx79717_)
                        (_marks79723_ _marks79718_)
                        (_src79724_ (gx#stx-source _stx79717_)))
          (if (##structure-direct-instance-of? _e79722_ 'gx#syntax-wrap::t)
              (_lp79720_
               (##unchecked-structure-ref _e79722_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e79722_ '3 gx#syntax-wrap::t '#f)
                _marks79723_)
               (##unchecked-structure-ref _e79722_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e79722_
                   'gx#identifier-wrap::t)
                  (if (null? _marks79723_)
                      _e79722_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e79722_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e79722_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e79722_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks79723_)))
                  (if (##structure-direct-instance-of?
                       _e79722_
                       'gx#syntax-quote::t)
                      _e79722_
                      (if (##structure-instance-of? _e79722_ 'gerbil#AST::t)
                          (_lp79720_
                           (##unchecked-structure-ref
                            _e79722_
                            '1
                            gx#AST::t
                            '#f)
                           _marks79723_
                           (##unchecked-structure-ref
                            _e79722_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e79722_)
                              (##structure
                               gx#identifier-wrap::t
                               _e79722_
                               _src79724_
                               (reverse _marks79723_))
                              (if (null? _marks79723_)
                                  _e79722_
                                  (if (pair? _e79722_)
                                      (cons (gx#stx-wrap
                                             (car _e79722_)
                                             _marks79723_)
                                            (gx#stx-wrap
                                             (cdr _e79722_)
                                             _marks79723_))
                                      (if (vector? _e79722_)
                                          (vector-map
                                           (lambda (_g7972579727_)
                                             (gx#stx-wrap
                                              _g7972579727_
                                              _marks79723_))
                                           _e79722_)
                                          (if (box? _e79722_)
                                              (box (gx#stx-wrap
                                                    (unbox _e79722_)
                                                    _marks79723_))
                                              _e79722_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx79733_)
        (let ((_marks79735_ '())) (gx#stx-unwrap__% _stx79733_ _marks79735_))))
    (define gx#stx-unwrap
      (lambda _g79914_
        (let ((_g79913_ (##length _g79914_)))
          (cond ((##fx= _g79913_ 1)
                 (apply (lambda (_stx79733_) (gx#stx-unwrap__0 _stx79733_))
                        _g79914_))
                ((##fx= _g79913_ 2)
                 (apply (lambda (_stx79737_ _marks79738_)
                          (gx#stx-unwrap__% _stx79737_ _marks79738_))
                        _g79914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g79914_))))))
    (define gx#stx-wrap
      (lambda (_stx79710_ _marks79711_)
        (foldl1 (lambda (_mark79713_ _stx79714_)
                  (gx#stx-apply-mark _stx79714_ _mark79713_))
                _stx79710_
                _marks79711_)))
    (define gx#stx-rewrap
      (lambda (_stx79704_ _marks79705_)
        (foldr1 (lambda (_mark79707_ _stx79708_)
                  (gx#stx-apply-mark _stx79708_ _mark79707_))
                _stx79704_
                _marks79705_)))
    (define gx#stx-apply-mark
      (lambda (_stx79701_ _mark79702_)
        (if (##structure-direct-instance-of? _stx79701_ 'gx#syntax-quote::t)
            _stx79701_
            (if (and (##structure-direct-instance-of?
                      _stx79701_
                      'gx#syntax-wrap::t)
                     (eq? _mark79702_
                          (##unchecked-structure-ref
                           _stx79701_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx79701_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx79701_
                 (gx#stx-source _stx79701_)
                 _mark79702_)))))
    (define gx#apply-mark
      (lambda (_mark79665_ _marks79666_)
        (let* ((_marks7966779675_ _marks79666_)
               (_else7966979683_ (lambda () (cons _mark79665_ _marks79666_)))
               (_K7967179689_
                (lambda (_rest79686_ _hd79687_)
                  (if (eq? _mark79665_ _hd79687_)
                      _rest79686_
                      (cons _mark79665_ _marks79666_)))))
          (if (##pair? _marks7966779675_)
              (let ((_hd7967279692_ (##car _marks7966779675_))
                    (_tl7967379694_ (##cdr _marks7966779675_)))
                (let* ((_hd79697_ _hd7967279692_) (_rest79699_ _tl7967379694_))
                  (_K7967179689_ _rest79699_ _hd79697_)))
              (_else7966979683_)))))
    (define gx#stx-e
      (lambda (_stx79663_)
        (if (##structure-direct-instance-of? _stx79663_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx79663_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx79663_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx79663_ '1 gx#AST::t '#f)
                _stx79663_))))
    (define gx#stx-source
      (lambda (_stx79661_)
        (if (##structure-instance-of? _stx79661_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx79661_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx79655_ _src79656_)
        (if (or (##structure-instance-of? _stx79655_ 'gerbil#AST::t)
                (not _src79656_))
            _stx79655_
            (##structure gx#AST::t _stx79655_ _src79656_))))
    (define gx#stx-datum?
      (lambda (_stx79653_) (gx#self-quoting? (gx#stx-e _stx79653_))))
    (define gx#self-quoting?
      (lambda (_x79636_)
        (let ((_$e79638_ (immediate? _x79636_)))
          (if _$e79638_
              _$e79638_
              (let ((_$e79641_ (number? _x79636_)))
                (if _$e79641_
                    _$e79641_
                    (let ((_$e79644_ (keyword? _x79636_)))
                      (if _$e79644_
                          _$e79644_
                          (let ((_$e79647_ (string? _x79636_)))
                            (if _$e79647_
                                _$e79647_
                                (let ((_$e79650_ (vector? _x79636_)))
                                  (if _$e79650_
                                      _$e79650_
                                      (u8vector? _x79636_)))))))))))))
    (define gx#stx-boolean? (lambda (_e79634_) (boolean? (gx#stx-e _e79634_))))
    (define gx#stx-keyword? (lambda (_e79632_) (keyword? (gx#stx-e _e79632_))))
    (define gx#stx-char? (lambda (_e79630_) (char? (gx#stx-e _e79630_))))
    (define gx#stx-number? (lambda (_e79628_) (number? (gx#stx-e _e79628_))))
    (define gx#stx-fixnum? (lambda (_e79626_) (fixnum? (gx#stx-e _e79626_))))
    (define gx#stx-string? (lambda (_e79624_) (string? (gx#stx-e _e79624_))))
    (define gx#stx-null? (lambda (_e79622_) (null? (gx#stx-e _e79622_))))
    (define gx#stx-pair? (lambda (_e79620_) (pair? (gx#stx-e _e79620_))))
    (define gx#stx-list?
      (lambda (_e79582_)
        (let* ((_g7958379592_ (gx#stx-e _e79582_))
               (_E7958679596_
                (lambda () (error '"No clause matching" _g7958379592_))))
          (let ((_K7958879612_
                 (lambda (_rest79610_) (gx#stx-list? _rest79610_)))
                (_K7958779602_ (lambda (_tail79600_) (null? _tail79600_))))
            (if (##pair? _g7958379592_)
                (let* ((_tl7959079615_ (##cdr _g7958379592_))
                       (_rest79618_ _tl7959079615_))
                  (gx#stx-list? _rest79618_))
                (let ((_tail79605_ _g7958379592_)) (null? _tail79605_)))))))
    (define gx#stx-pair/null?
      (lambda (_e79575_)
        (let* ((_e79577_ (gx#stx-e _e79575_)) (_$e79579_ (pair? _e79577_)))
          (if _$e79579_ _$e79579_ (null? _e79577_)))))
    (define gx#stx-vector? (lambda (_e79573_) (vector? (gx#stx-e _e79573_))))
    (define gx#stx-box? (lambda (_e79571_) (box? (gx#stx-e _e79571_))))
    (define gx#stx-eq?
      (lambda (_x79568_ _y79569_)
        (eq? (gx#stx-e _x79568_) (gx#stx-e _y79569_))))
    (define gx#stx-eqv?
      (lambda (_x79565_ _y79566_)
        (eqv? (gx#stx-e _x79565_) (gx#stx-e _y79566_))))
    (define gx#stx-equal?
      (lambda (_x79562_ _y79563_)
        (equal? (gx#stx-e _x79562_) (gx#stx-e _y79563_))))
    (define gx#stx-false? (lambda (_x79560_) (not (gx#stx-e _x79560_))))
    (define gx#stx-identifier
      (lambda (_template79557_ . _args79558_)
        (gx#datum->syntax__1
         _template79557_
         (apply make-symbol (gx#syntax->datum _args79558_))
         (gx#stx-source _template79557_))))
    (define gx#stx-identifier-marks
      (lambda (_stx79555_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx79555_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx79553_)
        (if (##structure-direct-instance-of? _stx79553_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx79553_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx79553_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx79553_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx79553_)))))
    (define gx#stx-identifier-context
      (lambda (_stx79549_)
        (let ((_stx79551_ (gx#stx-unwrap__0 _stx79549_)))
          (if (gx#identifier-quote? _stx79551_)
              (##unchecked-structure-ref _stx79551_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx79504_)
        (let* ((_g7950579515_ (gx#stx-e _stx79504_))
               (_else7950879523_ (lambda () '#f)))
          (let ((_K7951179537_
                 (lambda (_rest79534_ _hd79535_)
                   (if (gx#identifier? _hd79535_)
                       (gx#identifier-list? _rest79534_)
                       '#f)))
                (_K7951079528_ (lambda () '#t)))
            (let ((_try-match7950779531_
                   (lambda ()
                     (if (##null? _g7950579515_)
                         (_K7951079528_)
                         (_else7950879523_)))))
              (if (##pair? _g7950579515_)
                  (let ((_tl7951379542_ (##cdr _g7950579515_))
                        (_hd7951279540_ (##car _g7950579515_)))
                    (let ((_hd79545_ _hd7951279540_)
                          (_rest79547_ _tl7951379542_))
                      (_K7951179537_ _rest79547_ _hd79545_)))
                  (_try-match7950779531_)))))))
    (define gx#genident__%
      (lambda (_e79481_ _src79482_)
        (gx#stx-wrap-source
         (gensym (let ((_e79484_ (gx#stx-e _e79481_)))
                   (if (interned-symbol? _e79484_) _e79484_ 'g)))
         (let ((_$e79486_ (gx#stx-source _e79481_)))
           (if _$e79486_ _$e79486_ _src79482_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e79493_ 'g) (_src79495_ '#f))
          (gx#genident__% _e79493_ _src79495_))))
    (define gx#genident__1
      (lambda (_e79497_)
        (let ((_src79499_ '#f)) (gx#genident__% _e79497_ _src79499_))))
    (define gx#genident
      (lambda _g79916_
        (let ((_g79915_ (##length _g79916_)))
          (cond ((##fx= _g79915_ 0)
                 (apply (lambda () (gx#genident__0)) _g79916_))
                ((##fx= _g79915_ 1)
                 (apply (lambda (_e79497_) (gx#genident__1 _e79497_))
                        _g79916_))
                ((##fx= _g79915_ 2)
                 (apply (lambda (_e79501_ _src79502_)
                          (gx#genident__% _e79501_ _src79502_))
                        _g79916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g79916_))))))
    (define gx#gentemps
      (lambda (_stx-lst79478_) (gx#stx-map1 gx#genident _stx-lst79478_)))
    (define gx#syntax->list
      (lambda (_stx79476_) (gx#stx-map1 values _stx79476_)))
    (define gx#stx-car
      (lambda (_stx79473_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx79473_)))))
    (define gx#stx-cdr
      (lambda (_stx79470_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx79470_)))))
    (define gx#stx-length
      (lambda (_stx79435_)
        (let _lp79437_ ((_rest79439_ _stx79435_) (_n79440_ '0))
          (let* ((_g7944179449_ (gx#stx-e _rest79439_))
                 (_else7944379457_ (lambda () _n79440_))
                 (_K7944579462_
                  (lambda (_rest79460_)
                    (_lp79437_ _rest79460_ (fx+ _n79440_ '1)))))
            (if (##pair? _g7944179449_)
                (let* ((_tl7944779465_ (##cdr _g7944179449_))
                       (_rest79468_ _tl7944779465_))
                  (_K7944579462_ _rest79468_))
                (_else7944379457_))))))
    (define gx#stx-for-each
      (lambda _g79918_
        (let ((_g79917_ (##length _g79918_)))
          (cond ((##fx= _g79917_ 2)
                 (apply (lambda (_f79428_ _stx79429_)
                          (gx#stx-for-each1 _f79428_ _stx79429_))
                        _g79918_))
                ((##fx= _g79917_ 3)
                 (apply (lambda (_f79431_ _xstx79432_ _ystx79433_)
                          (gx#stx-for-each2 _f79431_ _xstx79432_ _ystx79433_))
                        _g79918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g79918_))))))
    (define gx#stx-for-each1
      (lambda (_f79378_ _stx79379_)
        (if (procedure? _f79378_)
            '#!void
            (error '"expected procedure" _f79378_))
        (let _lp79381_ ((_rest79383_ _stx79379_))
          (let* ((_g7938479394_ (gx#syntax-e _rest79383_))
                 (_else7938779402_ (lambda () (_f79378_ _rest79383_))))
            (let ((_K7939079416_
                   (lambda (_rest79413_ _hd79414_)
                     (_f79378_ _hd79414_)
                     (_lp79381_ _rest79413_)))
                  (_K7938979407_ (lambda () '#!void)))
              (let ((_try-match7938679410_
                     (lambda ()
                       (if (##null? _g7938479394_)
                           (_K7938979407_)
                           (_else7938779402_)))))
                (if (##pair? _g7938479394_)
                    (let ((_tl7939279421_ (##cdr _g7938479394_))
                          (_hd7939179419_ (##car _g7938479394_)))
                      (let ((_hd79424_ _hd7939179419_)
                            (_rest79426_ _tl7939279421_))
                        (_K7939079416_ _rest79426_ _hd79424_)))
                    (_try-match7938679410_))))))))
    (define gx#stx-for-each2
      (lambda (_f79283_ _xstx79284_ _ystx79285_)
        (if (procedure? _f79283_)
            '#!void
            (error '"expected procedure" _f79283_))
        (let _lp79287_ ((_xrest79289_ _xstx79284_) (_yrest79290_ _ystx79285_))
          (let* ((_g7929179301_ (gx#syntax-e _xrest79289_))
                 (_else7929479309_ (lambda () '#!void)))
            (let ((_K7929779366_
                   (lambda (_xrest79335_ _xhd79336_)
                     (let* ((_g7933779344_ (gx#syntax-e _yrest79290_))
                            (_E7933979348_
                             (lambda ()
                               (error '"No clause matching" _g7933779344_)))
                            (_K7934079354_
                             (lambda (_yrest79351_ _yhd79352_)
                               (_f79283_ _xhd79336_ _yhd79352_)
                               (_lp79287_ _xrest79335_ _yrest79351_))))
                       (if (##pair? _g7933779344_)
                           (let ((_hd7934179357_ (##car _g7933779344_))
                                 (_tl7934279359_ (##cdr _g7933779344_)))
                             (let* ((_yhd79362_ _hd7934179357_)
                                    (_yrest79364_ _tl7934279359_))
                               (_K7934079354_ _yrest79364_ _yhd79362_)))
                           (_E7933979348_)))))
                  (_K7929679329_
                   (lambda ()
                     (let* ((_yrest7931379318_ _yrest79290_)
                            (_E7931579322_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7931379318_)))
                            (_K7931679326_
                             (lambda () (_f79283_ _xrest79289_ _yrest79290_))))
                       (if (not (gx#stx-null? _yrest7931379318_))
                           (_K7931679326_)
                           (_E7931579322_))))))
              (let ((_try-match7929379332_
                     (lambda ()
                       (if (not (null? _g7929179301_))
                           (_K7929679329_)
                           (_else7929479309_)))))
                (if (##pair? _g7929179301_)
                    (let ((_tl7929979371_ (##cdr _g7929179301_))
                          (_hd7929879369_ (##car _g7929179301_)))
                      (let ((_xhd79374_ _hd7929879369_)
                            (_xrest79376_ _tl7929979371_))
                        (_K7929779366_ _xrest79376_ _xhd79374_)))
                    (_try-match7929379332_))))))))
    (define gx#stx-map
      (lambda _g79920_
        (let ((_g79919_ (##length _g79920_)))
          (cond ((##fx= _g79919_ 2)
                 (apply (lambda (_f79276_ _stx79277_)
                          (gx#stx-map1 _f79276_ _stx79277_))
                        _g79920_))
                ((##fx= _g79919_ 3)
                 (apply (lambda (_f79279_ _xstx79280_ _ystx79281_)
                          (gx#stx-map2 _f79279_ _xstx79280_ _ystx79281_))
                        _g79920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g79920_))))))
    (define gx#stx-map1
      (lambda (_f79226_ _stx79227_)
        (if (procedure? _f79226_)
            '#!void
            (error '"expected procedure" _f79226_))
        (let _recur79229_ ((_rest79231_ _stx79227_))
          (let* ((_g7923279242_ (gx#syntax-e _rest79231_))
                 (_else7923579250_ (lambda () (_f79226_ _rest79231_))))
            (let ((_K7923879264_
                   (lambda (_rest79261_ _hd79262_)
                     (cons (_f79226_ _hd79262_) (_recur79229_ _rest79261_))))
                  (_K7923779255_ (lambda () '())))
              (let ((_try-match7923479258_
                     (lambda ()
                       (if (##null? _g7923279242_)
                           (_K7923779255_)
                           (_else7923579250_)))))
                (if (##pair? _g7923279242_)
                    (let ((_tl7924079269_ (##cdr _g7923279242_))
                          (_hd7923979267_ (##car _g7923279242_)))
                      (let ((_hd79272_ _hd7923979267_)
                            (_rest79274_ _tl7924079269_))
                        (_K7923879264_ _rest79274_ _hd79272_)))
                    (_try-match7923479258_))))))))
    (define gx#stx-map2
      (lambda (_f79131_ _xstx79132_ _ystx79133_)
        (if (procedure? _f79131_)
            '#!void
            (error '"expected procedure" _f79131_))
        (let _recur79135_ ((_xrest79137_ _xstx79132_)
                           (_yrest79138_ _ystx79133_))
          (let* ((_g7913979149_ (gx#syntax-e _xrest79137_))
                 (_else7914279157_ (lambda () '())))
            (let ((_K7914579214_
                   (lambda (_xrest79183_ _xhd79184_)
                     (let* ((_g7918579192_ (gx#syntax-e _yrest79138_))
                            (_E7918779196_
                             (lambda ()
                               (error '"No clause matching" _g7918579192_)))
                            (_K7918879202_
                             (lambda (_yrest79199_ _yhd79200_)
                               (cons (_f79131_ _xhd79184_ _yhd79200_)
                                     (_recur79135_
                                      _xrest79183_
                                      _yrest79199_)))))
                       (if (##pair? _g7918579192_)
                           (let ((_hd7918979205_ (##car _g7918579192_))
                                 (_tl7919079207_ (##cdr _g7918579192_)))
                             (let* ((_yhd79210_ _hd7918979205_)
                                    (_yrest79212_ _tl7919079207_))
                               (_K7918879202_ _yrest79212_ _yhd79210_)))
                           (_E7918779196_)))))
                  (_K7914479177_
                   (lambda ()
                     (let* ((_yrest7916179166_ _yrest79138_)
                            (_E7916379170_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7916179166_)))
                            (_K7916479174_
                             (lambda () (_f79131_ _xrest79137_ _yrest79138_))))
                       (if (not (gx#stx-null? _yrest7916179166_))
                           (_K7916479174_)
                           (_E7916379170_))))))
              (let ((_try-match7914179180_
                     (lambda ()
                       (if (not (null? _g7913979149_))
                           (_K7914479177_)
                           (_else7914279157_)))))
                (if (##pair? _g7913979149_)
                    (let ((_tl7914779219_ (##cdr _g7913979149_))
                          (_hd7914679217_ (##car _g7913979149_)))
                      (let ((_xhd79222_ _hd7914679217_)
                            (_xrest79224_ _tl7914779219_))
                        (_K7914579214_ _xrest79224_ _xhd79222_)))
                    (_try-match7914179180_))))))))
    (define gx#stx-andmap
      (lambda (_f79081_ _stx79082_)
        (if (procedure? _f79081_)
            '#!void
            (error '"expected procedure" _f79081_))
        (let _lp79084_ ((_rest79086_ _stx79082_))
          (let* ((_g7908779097_ (gx#syntax-e _rest79086_))
                 (_else7909079105_ (lambda () (_f79081_ _rest79086_))))
            (let ((_K7909379119_
                   (lambda (_rest79116_ _hd79117_)
                     (if (_f79081_ _hd79117_) (_lp79084_ _rest79116_) '#f)))
                  (_K7909279110_ (lambda () '#t)))
              (let ((_try-match7908979113_
                     (lambda ()
                       (if (##null? _g7908779097_)
                           (_K7909279110_)
                           (_else7909079105_)))))
                (if (##pair? _g7908779097_)
                    (let ((_tl7909579124_ (##cdr _g7908779097_))
                          (_hd7909479122_ (##car _g7908779097_)))
                      (let ((_hd79127_ _hd7909479122_)
                            (_rest79129_ _tl7909579124_))
                        (_K7909379119_ _rest79129_ _hd79127_)))
                    (_try-match7908979113_))))))))
    (define gx#stx-ormap
      (lambda (_f79028_ _stx79029_)
        (if (procedure? _f79028_)
            '#!void
            (error '"expected procedure" _f79028_))
        (let _lp79031_ ((_rest79033_ _stx79029_))
          (let* ((_g7903479044_ (gx#syntax-e _rest79033_))
                 (_else7903779052_ (lambda () (_f79028_ _rest79033_))))
            (let ((_K7904079069_
                   (lambda (_rest79063_ _hd79064_)
                     (let ((_$e79066_ (_f79028_ _hd79064_)))
                       (if _$e79066_ _$e79066_ (_lp79031_ _rest79063_)))))
                  (_K7903979057_ (lambda () '#f)))
              (let ((_try-match7903679060_
                     (lambda ()
                       (if (##null? _g7903479044_)
                           (_K7903979057_)
                           (_else7903779052_)))))
                (if (##pair? _g7903479044_)
                    (let ((_tl7904279074_ (##cdr _g7903479044_))
                          (_hd7904179072_ (##car _g7903479044_)))
                      (let ((_hd79077_ _hd7904179072_)
                            (_rest79079_ _tl7904279074_))
                        (_K7904079069_ _rest79079_ _hd79077_)))
                    (_try-match7903679060_))))))))
    (define gx#stx-foldl
      (lambda (_f78976_ _iv78977_ _stx78978_)
        (if (procedure? _f78976_)
            '#!void
            (error '"expected procedure" _f78976_))
        (let _lp78980_ ((_r78982_ _iv78977_) (_rest78983_ _stx78978_))
          (let* ((_g7898478994_ (gx#syntax-e _rest78983_))
                 (_else7898779002_
                  (lambda () (_f78976_ _rest78983_ _r78982_))))
            (let ((_K7899079016_
                   (lambda (_rest79013_ _hd79014_)
                     (_lp78980_ (_f78976_ _hd79014_ _r78982_) _rest79013_)))
                  (_K7898979007_ (lambda () _r78982_)))
              (let ((_try-match7898679010_
                     (lambda ()
                       (if (##null? _g7898478994_)
                           (_K7898979007_)
                           (_else7898779002_)))))
                (if (##pair? _g7898478994_)
                    (let ((_tl7899279021_ (##cdr _g7898478994_))
                          (_hd7899179019_ (##car _g7898478994_)))
                      (let ((_hd79024_ _hd7899179019_)
                            (_rest79026_ _tl7899279021_))
                        (_K7899079016_ _rest79026_ _hd79024_)))
                    (_try-match7898679010_))))))))
    (define gx#stx-foldr
      (lambda (_f78925_ _iv78926_ _stx78927_)
        (if (procedure? _f78925_)
            '#!void
            (error '"expected procedure" _f78925_))
        (let _recur78929_ ((_rest78931_ _stx78927_))
          (let* ((_g7893278942_ (gx#syntax-e _rest78931_))
                 (_else7893578950_
                  (lambda () (_f78925_ _rest78931_ _iv78926_))))
            (let ((_K7893878964_
                   (lambda (_rest78961_ _hd78962_)
                     (_f78925_ _hd78962_ (_recur78929_ _rest78961_))))
                  (_K7893778955_ (lambda () _iv78926_)))
              (let ((_try-match7893478958_
                     (lambda ()
                       (if (##null? _g7893278942_)
                           (_K7893778955_)
                           (_else7893578950_)))))
                (if (##pair? _g7893278942_)
                    (let ((_tl7894078969_ (##cdr _g7893278942_))
                          (_hd7893978967_ (##car _g7893278942_)))
                      (let ((_hd78972_ _hd7893978967_)
                            (_rest78974_ _tl7894078969_))
                        (_K7893878964_ _rest78974_ _hd78972_)))
                    (_try-match7893478958_))))))))
    (define gx#stx-reverse
      (lambda (_stx78923_) (gx#stx-foldl cons '() _stx78923_)))
    (define gx#stx-last
      (lambda (_stx78884_)
        (let _lp78886_ ((_rest78888_ _stx78884_))
          (let* ((_g7888978897_ (gx#syntax-e _rest78888_))
                 (_else7889178905_ (lambda () _rest78888_))
                 (_K7889378911_
                  (lambda (_rest78908_ _hd78909_)
                    (if (gx#stx-null? _rest78908_)
                        _hd78909_
                        (_lp78886_ _rest78908_)))))
            (if (##pair? _g7888978897_)
                (let ((_hd7889478914_ (##car _g7888978897_))
                      (_tl7889578916_ (##cdr _g7888978897_)))
                  (let* ((_hd78919_ _hd7889478914_)
                         (_rest78921_ _tl7889578916_))
                    (_K7889378911_ _rest78921_ _hd78919_)))
                (_else7889178905_))))))
    (define gx#stx-last-pair
      (lambda (_stx78855_)
        (let _lp78857_ ((_hd78859_ _stx78855_))
          (let* ((_g7886078867_ (gx#syntax-e _hd78859_))
                 (_E7886278871_
                  (lambda () (error '"No clause matching" _g7886078867_)))
                 (_K7886378876_
                  (lambda (_rest78874_)
                    (if (gx#stx-pair? _rest78874_)
                        (_lp78857_ _rest78874_)
                        _hd78859_))))
            (if (##pair? _g7886078867_)
                (let* ((_tl7886578879_ (##cdr _g7886078867_))
                       (_rest78882_ _tl7886578879_))
                  (_K7886378876_ _rest78882_))
                (_E7886278871_))))))
    (define gx#stx-list-tail
      (lambda (_stx78824_ _k78825_)
        (let _lp78827_ ((_rest78829_ _stx78824_) (_k78830_ _k78825_))
          (if (fxpositive? _k78830_)
              (let* ((_g7883178838_ (gx#syntax-e _rest78829_))
                     (_E7883378842_
                      (lambda () (error '"No clause matching" _g7883178838_)))
                     (_K7883478847_
                      (lambda (_rest78845_)
                        (_lp78827_ _rest78845_ (fx- _k78830_ '1)))))
                (if (##pair? _g7883178838_)
                    (let* ((_tl7883678850_ (##cdr _g7883178838_))
                           (_rest78853_ _tl7883678850_))
                      (_K7883478847_ _rest78853_))
                    (_E7883378842_)))
              _rest78829_))))
    (define gx#stx-list-ref
      (lambda (_stx78821_ _k78822_)
        (gx#stx-car (gx#stx-list-tail _stx78821_ _k78822_))))
    (define gx#stx-plist?__%
      (lambda (_stx78733_ _key?78734_)
        (if (procedure? _key?78734_)
            '#!void
            (error '"expected procedure" _key?78734_))
        (let _lp78736_ ((_rest78738_ _stx78733_))
          (let* ((_g7873978749_ (gx#stx-e _rest78738_))
                 (_else7874278757_ (lambda () '#f)))
            (let ((_K7874578799_
                   (lambda (_rest78768_ _hd78769_)
                     (if (_key?78734_ _hd78769_)
                         (let* ((_g7877078778_ (gx#stx-e _rest78768_))
                                (_else7877278786_ (lambda () '#f))
                                (_K7877478791_
                                 (lambda (_rest78789_)
                                   (_lp78736_ _rest78789_))))
                           (if (##pair? _g7877078778_)
                               (let* ((_tl7877678794_ (##cdr _g7877078778_))
                                      (_rest78797_ _tl7877678794_))
                                 (_lp78736_ _rest78797_))
                               (_else7877278786_)))
                         '#f)))
                  (_K7874478762_ (lambda () '#t)))
              (let ((_try-match7874178765_
                     (lambda ()
                       (if (##null? _g7873978749_)
                           (_K7874478762_)
                           (_else7874278757_)))))
                (if (##pair? _g7873978749_)
                    (let ((_tl7874778804_ (##cdr _g7873978749_))
                          (_hd7874678802_ (##car _g7873978749_)))
                      (let ((_hd78807_ _hd7874678802_)
                            (_rest78809_ _tl7874778804_))
                        (_K7874578799_ _rest78809_ _hd78807_)))
                    (_try-match7874178765_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx78814_)
        (let ((_key?78816_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx78814_ _key?78816_))))
    (define gx#stx-plist?
      (lambda _g79922_
        (let ((_g79921_ (##length _g79922_)))
          (cond ((##fx= _g79921_ 1)
                 (apply (lambda (_stx78814_) (gx#stx-plist?__0 _stx78814_))
                        _g79922_))
                ((##fx= _g79921_ 2)
                 (apply (lambda (_stx78818_ _key?78819_)
                          (gx#stx-plist?__% _stx78818_ _key?78819_))
                        _g79922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g79922_))))))
    (define gx#stx-getq__%
      (lambda (_key78651_ _stx78652_ _key=?78653_)
        (if (procedure? _key=?78653_)
            '#!void
            (error '"expected procedure" _key=?78653_))
        (let _lp78655_ ((_rest78657_ _stx78652_))
          (let* ((_g7865878666_ (gx#syntax-e _rest78657_))
                 (_else7866078674_ (lambda () '#f))
                 (_K7866278708_
                  (lambda (_rest78677_ _hd78678_)
                    (let* ((_g7867978686_ (gx#syntax-e _rest78677_))
                           (_E7868178690_
                            (lambda ()
                              (error '"No clause matching" _g7867978686_)))
                           (_K7868278696_
                            (lambda (_rest78693_ _val78694_)
                              (if (_key=?78653_ _hd78678_ _key78651_)
                                  _val78694_
                                  (_lp78655_ _rest78693_)))))
                      (if (##pair? _g7867978686_)
                          (let ((_hd7868378699_ (##car _g7867978686_))
                                (_tl7868478701_ (##cdr _g7867978686_)))
                            (let* ((_val78704_ _hd7868378699_)
                                   (_rest78706_ _tl7868478701_))
                              (_K7868278696_ _rest78706_ _val78704_)))
                          (_E7868178690_))))))
            (if (##pair? _g7865878666_)
                (let ((_hd7866378711_ (##car _g7865878666_))
                      (_tl7866478713_ (##cdr _g7865878666_)))
                  (let* ((_hd78716_ _hd7866378711_)
                         (_rest78718_ _tl7866478713_))
                    (_K7866278708_ _rest78718_ _hd78716_)))
                (_else7866078674_))))))
    (define gx#stx-getq__0
      (lambda (_key78723_ _stx78724_)
        (let ((_key=?78726_ gx#stx-eq?))
          (gx#stx-getq__% _key78723_ _stx78724_ _key=?78726_))))
    (define gx#stx-getq
      (lambda _g79924_
        (let ((_g79923_ (##length _g79924_)))
          (cond ((##fx= _g79923_ 2)
                 (apply (lambda (_key78723_ _stx78724_)
                          (gx#stx-getq__0 _key78723_ _stx78724_))
                        _g79924_))
                ((##fx= _g79923_ 3)
                 (apply (lambda (_key78728_ _stx78729_ _key=?78730_)
                          (gx#stx-getq__% _key78728_ _stx78729_ _key=?78730_))
                        _g79924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g79924_))))))))
