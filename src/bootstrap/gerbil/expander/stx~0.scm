(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1711709197)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args80889_
        (apply make-instance gx#identifier-wrap::t _$args80889_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args80886_
        (apply make-instance gx#syntax-wrap::t _$args80886_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args80883_
        (apply make-instance gx#syntax-quote::t _$args80883_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_stx80881_) (symbol? (gx#stx-e _stx80881_))))
    (define gx#identifier-quote?
      (lambda (_stx80879_)
        (if (##structure-direct-instance-of? _stx80879_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx80879_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx80877_)
        (if (##structure-direct-instance-of? _stx80877_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx80877_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx80877_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx80875_)
        (if (##structure-direct-instance-of? _stx80875_ 'gx#syntax-quote::t)
            _stx80875_
            (if (##structure-direct-instance-of? _stx80875_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx80875_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx80858_)
        (if (##structure-direct-instance-of? _stx80858_ 'gx#syntax-wrap::t)
            (let _lp80860_ ((_e80862_
                             (##unchecked-structure-ref _stx80858_ '1 '#f '#f))
                            (_marks80863_
                             (cons (##unchecked-structure-ref
                                    _stx80858_
                                    '3
                                    '#f
                                    '#f)
                                   '())))
              (if (##structure? _e80862_)
                  (let ((_$e80865_ (##type-id (##structure-type _e80862_))))
                    (if (eq? 'gx#syntax-wrap::t _$e80865_)
                        (_lp80860_
                         (##unchecked-structure-ref _e80862_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _e80862_ '3 '#f '#f)
                          _marks80863_))
                        (if (or (eq? 'gx#syntax-quote::t _$e80865_)
                                (eq? 'gx#identifier-wrap::t _$e80865_))
                            (##unchecked-structure-ref _e80862_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _$e80865_)
                                (_lp80860_
                                 (##unchecked-structure-ref
                                  _e80862_
                                  '1
                                  '#f
                                  '#f)
                                 _marks80863_)
                                _e80862_))))
                  (if (null? _marks80863_)
                      _e80862_
                      (if (pair? _e80862_)
                          (cons (gx#stx-wrap (car _e80862_) _marks80863_)
                                (gx#stx-wrap (cdr _e80862_) _marks80863_))
                          (if (vector? _e80862_)
                              (vector-map
                               (lambda (_g8087080872_)
                                 (gx#stx-wrap _g8087080872_ _marks80863_))
                               _e80862_)
                              (if (box? _e80862_)
                                  (box (gx#stx-wrap
                                        (unbox _e80862_)
                                        _marks80863_))
                                  _e80862_))))))
            (if (##structure-instance-of? _stx80858_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80858_ '1 '#f '#f)
                _stx80858_))))
    (define gx#syntax->datum
      (lambda (_stx80856_)
        (if (##structure-instance-of? _stx80856_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx80856_ '1 '#f '#f))
            (if (pair? _stx80856_)
                (cons (gx#syntax->datum (car _stx80856_))
                      (gx#syntax->datum (cdr _stx80856_)))
                (if (vector? _stx80856_)
                    (vector-map gx#syntax->datum _stx80856_)
                    (if (box? _stx80856_)
                        (box (gx#syntax->datum (unbox _stx80856_)))
                        _stx80856_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80799_ _datum80800_ _src80801_ _quote?80802_)
        (letrec ((_wrap-datum80804_
                  (lambda (_e80828_ _marks80829_)
                    (_wrap-inner80806_
                     _e80828_
                     (lambda (_g8083080832_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8083080832_
                        _src80801_
                        _marks80829_)))))
                 (_wrap-quote80805_
                  (lambda (_e80820_ _ctx80821_ _marks80822_)
                    (_wrap-inner80806_
                     _e80820_
                     (lambda (_g8082380825_)
                       (##structure
                        gx#syntax-quote::t
                        _g8082380825_
                        _src80801_
                        _ctx80821_
                        _marks80822_)))))
                 (_wrap-inner80806_
                  (lambda (_e80813_ _wrap-e80814_)
                    (let _recur80816_ ((_e80818_ _e80813_))
                      (if (symbol? _e80818_)
                          (_wrap-e80814_ _e80818_)
                          (if (pair? _e80818_)
                              (cons (_recur80816_ (car _e80818_))
                                    (_recur80816_ (cdr _e80818_)))
                              (if (vector? _e80818_)
                                  (vector-map _recur80816_ _e80818_)
                                  (if (box? _e80818_)
                                      (box (_recur80816_ (unbox _e80818_)))
                                      _e80818_)))))))
                 (_wrap-outer80807_
                  (lambda (_e80811_)
                    (if (##structure-instance-of? _e80811_ 'gerbil#AST::t)
                        _e80811_
                        (##structure gx#AST::t _e80811_ _src80801_)))))
          (if (##structure-instance-of? _datum80800_ 'gerbil#AST::t)
              _datum80800_
              (if (not _stx80799_)
                  (##structure gx#AST::t _datum80800_ _src80801_)
                  (if (gx#identifier? _stx80799_)
                      (let ((_stx80809_ (gx#stx-unwrap__0 _stx80799_)))
                        (_wrap-outer80807_
                         (if (##structure-direct-instance-of?
                              _stx80809_
                              'gx#syntax-quote::t)
                             (if _quote?80802_
                                 (_wrap-quote80805_
                                  _datum80800_
                                  (##unchecked-structure-ref
                                   _stx80809_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80809_
                                   '4
                                   '#f
                                   '#f))
                                 (_wrap-datum80804_
                                  _datum80800_
                                  (##unchecked-structure-ref
                                   _stx80809_
                                   '4
                                   '#f
                                   '#f)))
                             (_wrap-datum80804_
                              _datum80800_
                              (##unchecked-structure-ref
                               _stx80809_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80799_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80838_ _datum80839_)
        (let* ((_src80841_ '#f) (_quote?80843_ '#t))
          (gx#datum->syntax__%
           _stx80838_
           _datum80839_
           _src80841_
           _quote?80843_))))
    (define gx#datum->syntax__1
      (lambda (_stx80845_ _datum80846_ _src80847_)
        (let ((_quote?80849_ '#t))
          (gx#datum->syntax__%
           _stx80845_
           _datum80846_
           _src80847_
           _quote?80849_))))
    (define gx#datum->syntax
      (lambda _g80970_
        (let ((_g80969_ (##length _g80970_)))
          (cond ((##fx= _g80969_ 2)
                 (apply (lambda (_stx80838_ _datum80839_)
                          (gx#datum->syntax__0 _stx80838_ _datum80839_))
                        _g80970_))
                ((##fx= _g80969_ 3)
                 (apply (lambda (_stx80845_ _datum80846_ _src80847_)
                          (gx#datum->syntax__1
                           _stx80845_
                           _datum80846_
                           _src80847_))
                        _g80970_))
                ((##fx= _g80969_ 4)
                 (apply (lambda (_stx80851_
                                 _datum80852_
                                 _src80853_
                                 _quote?80854_)
                          (gx#datum->syntax__%
                           _stx80851_
                           _datum80852_
                           _src80853_
                           _quote?80854_))
                        _g80970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g80970_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80775_ _marks80776_)
        (let _lp80778_ ((_e80780_ _stx80775_)
                        (_marks80781_ _marks80776_)
                        (_src80782_ (gx#stx-source _stx80775_)))
          (if (##structure-direct-instance-of? _e80780_ 'gx#syntax-wrap::t)
              (_lp80778_
               (##unchecked-structure-ref _e80780_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80780_ '3 '#f '#f)
                _marks80781_)
               (##unchecked-structure-ref _e80780_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _e80780_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80781_)
                      _e80780_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80780_ '1 '#f '#f)
                       (##unchecked-structure-ref _e80780_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _e80780_ '3 '#f '#f)
                        _marks80781_)))
                  (if (##structure-direct-instance-of?
                       _e80780_
                       'gx#syntax-quote::t)
                      _e80780_
                      (if (##structure-instance-of? _e80780_ 'gerbil#AST::t)
                          (_lp80778_
                           (##unchecked-structure-ref _e80780_ '1 '#f '#f)
                           _marks80781_
                           (##unchecked-structure-ref _e80780_ '2 '#f '#f))
                          (if (symbol? _e80780_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80780_
                               _src80782_
                               (reverse _marks80781_))
                              (if (null? _marks80781_)
                                  _e80780_
                                  (if (pair? _e80780_)
                                      (cons (gx#stx-wrap
                                             (car _e80780_)
                                             _marks80781_)
                                            (gx#stx-wrap
                                             (cdr _e80780_)
                                             _marks80781_))
                                      (if (vector? _e80780_)
                                          (vector-map
                                           (lambda (_g8078380785_)
                                             (gx#stx-wrap
                                              _g8078380785_
                                              _marks80781_))
                                           _e80780_)
                                          (if (box? _e80780_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80780_)
                                                    _marks80781_))
                                              _e80780_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80791_)
        (let ((_marks80793_ '())) (gx#stx-unwrap__% _stx80791_ _marks80793_))))
    (define gx#stx-unwrap
      (lambda _g80972_
        (let ((_g80971_ (##length _g80972_)))
          (cond ((##fx= _g80971_ 1)
                 (apply (lambda (_stx80791_) (gx#stx-unwrap__0 _stx80791_))
                        _g80972_))
                ((##fx= _g80971_ 2)
                 (apply (lambda (_stx80795_ _marks80796_)
                          (gx#stx-unwrap__% _stx80795_ _marks80796_))
                        _g80972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g80972_))))))
    (define gx#stx-wrap
      (lambda (_stx80768_ _marks80769_)
        (__foldl1
         (lambda (_mark80771_ _stx80772_)
           (gx#stx-apply-mark _stx80772_ _mark80771_))
         _stx80768_
         _marks80769_)))
    (define gx#stx-rewrap
      (lambda (_stx80762_ _marks80763_)
        (__foldr1
         (lambda (_mark80765_ _stx80766_)
           (gx#stx-apply-mark _stx80766_ _mark80765_))
         _stx80762_
         _marks80763_)))
    (define gx#stx-apply-mark
      (lambda (_stx80759_ _mark80760_)
        (if (##structure-direct-instance-of? _stx80759_ 'gx#syntax-quote::t)
            _stx80759_
            (if (and (##structure-direct-instance-of?
                      _stx80759_
                      'gx#syntax-wrap::t)
                     (eq? _mark80760_
                          (##unchecked-structure-ref _stx80759_ '3 '#f '#f)))
                (##unchecked-structure-ref _stx80759_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80759_
                 (gx#stx-source _stx80759_)
                 _mark80760_)))))
    (define gx#apply-mark
      (lambda (_mark80723_ _marks80724_)
        (let* ((_marks8072580733_ _marks80724_)
               (_else8072780741_ (lambda () (cons _mark80723_ _marks80724_)))
               (_K8072980747_
                (lambda (_rest80744_ _hd80745_)
                  (if (eq? _mark80723_ _hd80745_)
                      _rest80744_
                      (cons _mark80723_ _marks80724_)))))
          (if (##pair? _marks8072580733_)
              (let ((_hd8073080750_ (##car _marks8072580733_))
                    (_tl8073180752_ (##cdr _marks8072580733_)))
                (let* ((_hd80755_ _hd8073080750_) (_rest80757_ _tl8073180752_))
                  (_K8072980747_ _rest80757_ _hd80755_)))
              (_else8072780741_)))))
    (define gx#stx-e
      (lambda (_stx80721_)
        (if (##structure-direct-instance-of? _stx80721_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80721_ '1 '#f '#f))
            (if (##structure-instance-of? _stx80721_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80721_ '1 '#f '#f)
                _stx80721_))))
    (define gx#stx-source
      (lambda (_stx80719_)
        (if (##structure-instance-of? _stx80719_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80719_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80713_ _src80714_)
        (if (or (##structure-instance-of? _stx80713_ 'gerbil#AST::t)
                (not _src80714_))
            _stx80713_
            (##structure gx#AST::t _stx80713_ _src80714_))))
    (define gx#stx-datum?
      (lambda (_stx80711_) (gx#self-quoting? (gx#stx-e _stx80711_))))
    (define gx#self-quoting?
      (lambda (_x80694_)
        (let ((_$e80696_ (__immediate? _x80694_)))
          (if _$e80696_
              _$e80696_
              (let ((_$e80699_ (number? _x80694_)))
                (if _$e80699_
                    _$e80699_
                    (let ((_$e80702_ (keyword? _x80694_)))
                      (if _$e80702_
                          _$e80702_
                          (let ((_$e80705_ (string? _x80694_)))
                            (if _$e80705_
                                _$e80705_
                                (let ((_$e80708_ (vector? _x80694_)))
                                  (if _$e80708_
                                      _$e80708_
                                      (u8vector? _x80694_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80692_) (boolean? (gx#stx-e _e80692_))))
    (define gx#stx-keyword? (lambda (_e80690_) (keyword? (gx#stx-e _e80690_))))
    (define gx#stx-char? (lambda (_e80688_) (char? (gx#stx-e _e80688_))))
    (define gx#stx-number? (lambda (_e80686_) (number? (gx#stx-e _e80686_))))
    (define gx#stx-fixnum? (lambda (_e80684_) (fixnum? (gx#stx-e _e80684_))))
    (define gx#stx-string? (lambda (_e80682_) (string? (gx#stx-e _e80682_))))
    (define gx#stx-null? (lambda (_e80680_) (null? (gx#stx-e _e80680_))))
    (define gx#stx-pair? (lambda (_e80678_) (pair? (gx#stx-e _e80678_))))
    (define gx#stx-list?
      (lambda (_e80640_)
        (let* ((_g8064180650_ (gx#stx-e _e80640_))
               (_E8064480654_
                (lambda () (error '"No clause matching" _g8064180650_))))
          (let ((_K8064680670_
                 (lambda (_rest80668_) (gx#stx-list? _rest80668_)))
                (_K8064580660_ (lambda (_tail80658_) (null? _tail80658_))))
            (if (##pair? _g8064180650_)
                (let* ((_tl8064880673_ (##cdr _g8064180650_))
                       (_rest80676_ _tl8064880673_))
                  (gx#stx-list? _rest80676_))
                (let ((_tail80663_ _g8064180650_)) (null? _tail80663_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80633_)
        (let* ((_e80635_ (gx#stx-e _e80633_)) (_$e80637_ (pair? _e80635_)))
          (if _$e80637_ _$e80637_ (null? _e80635_)))))
    (define gx#stx-vector? (lambda (_e80631_) (vector? (gx#stx-e _e80631_))))
    (define gx#stx-box? (lambda (_e80629_) (box? (gx#stx-e _e80629_))))
    (define gx#stx-eq?
      (lambda (_x80626_ _y80627_)
        (eq? (gx#stx-e _x80626_) (gx#stx-e _y80627_))))
    (define gx#stx-eqv?
      (lambda (_x80623_ _y80624_)
        (eqv? (gx#stx-e _x80623_) (gx#stx-e _y80624_))))
    (define gx#stx-equal?
      (lambda (_x80620_ _y80621_)
        (equal? (gx#stx-e _x80620_) (gx#stx-e _y80621_))))
    (define gx#stx-false? (lambda (_x80618_) (not (gx#stx-e _x80618_))))
    (define gx#stx-identifier
      (lambda (_template80615_ . _args80616_)
        (gx#datum->syntax__1
         _template80615_
         (apply make-symbol (gx#syntax->datum _args80616_))
         (gx#stx-source _template80615_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80613_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80613_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80611_)
        (if (##structure-direct-instance-of? _stx80611_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80611_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _stx80611_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _stx80611_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80611_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80607_)
        (let ((_stx80609_ (gx#stx-unwrap__0 _stx80607_)))
          (if (gx#identifier-quote? _stx80609_)
              (##unchecked-structure-ref _stx80609_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80562_)
        (let* ((_g8056380573_ (gx#stx-e _stx80562_))
               (_else8056680581_ (lambda () '#f)))
          (let ((_K8056980595_
                 (lambda (_rest80592_ _hd80593_)
                   (if (gx#identifier? _hd80593_)
                       (gx#identifier-list? _rest80592_)
                       '#f)))
                (_K8056880586_ (lambda () '#t)))
            (let ((_try-match8056580589_
                   (lambda ()
                     (if (##null? _g8056380573_)
                         (_K8056880586_)
                         (_else8056680581_)))))
              (if (##pair? _g8056380573_)
                  (let ((_tl8057180600_ (##cdr _g8056380573_))
                        (_hd8057080598_ (##car _g8056380573_)))
                    (let ((_hd80603_ _hd8057080598_)
                          (_rest80605_ _tl8057180600_))
                      (_K8056980595_ _rest80605_ _hd80603_)))
                  (_try-match8056580589_)))))))
    (define gx#genident__%
      (lambda (_e80539_ _src80540_)
        (gx#stx-wrap-source
         (gensym (let ((_e80542_ (gx#stx-e _e80539_)))
                   (if (__interned-symbol? _e80542_) _e80542_ 'g)))
         (let ((_$e80544_ (gx#stx-source _e80539_)))
           (if _$e80544_ _$e80544_ _src80540_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80551_ 'g) (_src80553_ '#f))
          (gx#genident__% _e80551_ _src80553_))))
    (define gx#genident__1
      (lambda (_e80555_)
        (let ((_src80557_ '#f)) (gx#genident__% _e80555_ _src80557_))))
    (define gx#genident
      (lambda _g80974_
        (let ((_g80973_ (##length _g80974_)))
          (cond ((##fx= _g80973_ 0)
                 (apply (lambda () (gx#genident__0)) _g80974_))
                ((##fx= _g80973_ 1)
                 (apply (lambda (_e80555_) (gx#genident__1 _e80555_))
                        _g80974_))
                ((##fx= _g80973_ 2)
                 (apply (lambda (_e80559_ _src80560_)
                          (gx#genident__% _e80559_ _src80560_))
                        _g80974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g80974_))))))
    (define gx#gentemps
      (lambda (_stx-lst80536_) (gx#stx-map1 gx#genident _stx-lst80536_)))
    (define gx#syntax->list
      (lambda (_stx80534_) (gx#stx-map1 values _stx80534_)))
    (define gx#stx-car
      (lambda (_stx80531_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80531_)))))
    (define gx#stx-cdr
      (lambda (_stx80528_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80528_)))))
    (define gx#stx-length
      (lambda (_stx80493_)
        (let _lp80495_ ((_rest80497_ _stx80493_) (_n80498_ '0))
          (let* ((_g8049980507_ (gx#stx-e _rest80497_))
                 (_else8050180515_ (lambda () _n80498_))
                 (_K8050380520_
                  (lambda (_rest80518_)
                    (_lp80495_ _rest80518_ (##fx+ _n80498_ '1)))))
            (if (##pair? _g8049980507_)
                (let* ((_tl8050580523_ (##cdr _g8049980507_))
                       (_rest80526_ _tl8050580523_))
                  (_K8050380520_ _rest80526_))
                (_else8050180515_))))))
    (define gx#stx-for-each
      (lambda _g80976_
        (let ((_g80975_ (##length _g80976_)))
          (cond ((##fx= _g80975_ 2)
                 (apply (lambda (_f80486_ _stx80487_)
                          (gx#stx-for-each1 _f80486_ _stx80487_))
                        _g80976_))
                ((##fx= _g80975_ 3)
                 (apply (lambda (_f80489_ _xstx80490_ _ystx80491_)
                          (gx#stx-for-each2 _f80489_ _xstx80490_ _ystx80491_))
                        _g80976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g80976_))))))
    (define gx#stx-for-each1
      (lambda (_f80436_ _stx80437_)
        (if (procedure? _f80436_)
            '#!void
            (error '"expected procedure" _f80436_))
        (let _lp80439_ ((_rest80441_ _stx80437_))
          (let* ((_g8044280452_ (gx#syntax-e _rest80441_))
                 (_else8044580460_ (lambda () (_f80436_ _rest80441_))))
            (let ((_K8044880474_
                   (lambda (_rest80471_ _hd80472_)
                     (_f80436_ _hd80472_)
                     (_lp80439_ _rest80471_)))
                  (_K8044780465_ (lambda () '#!void)))
              (let ((_try-match8044480468_
                     (lambda ()
                       (if (##null? _g8044280452_)
                           (_K8044780465_)
                           (_else8044580460_)))))
                (if (##pair? _g8044280452_)
                    (let ((_tl8045080479_ (##cdr _g8044280452_))
                          (_hd8044980477_ (##car _g8044280452_)))
                      (let ((_hd80482_ _hd8044980477_)
                            (_rest80484_ _tl8045080479_))
                        (_K8044880474_ _rest80484_ _hd80482_)))
                    (_try-match8044480468_))))))))
    (define gx#stx-for-each2
      (lambda (_f80341_ _xstx80342_ _ystx80343_)
        (if (procedure? _f80341_)
            '#!void
            (error '"expected procedure" _f80341_))
        (let _lp80345_ ((_xrest80347_ _xstx80342_) (_yrest80348_ _ystx80343_))
          (let* ((_g8034980359_ (gx#syntax-e _xrest80347_))
                 (_else8035280367_ (lambda () '#!void)))
            (let ((_K8035580424_
                   (lambda (_xrest80393_ _xhd80394_)
                     (let* ((_g8039580402_ (gx#syntax-e _yrest80348_))
                            (_E8039780406_
                             (lambda ()
                               (error '"No clause matching" _g8039580402_)))
                            (_K8039880412_
                             (lambda (_yrest80409_ _yhd80410_)
                               (_f80341_ _xhd80394_ _yhd80410_)
                               (_lp80345_ _xrest80393_ _yrest80409_))))
                       (if (##pair? _g8039580402_)
                           (let ((_hd8039980415_ (##car _g8039580402_))
                                 (_tl8040080417_ (##cdr _g8039580402_)))
                             (let* ((_yhd80420_ _hd8039980415_)
                                    (_yrest80422_ _tl8040080417_))
                               (_K8039880412_ _yrest80422_ _yhd80420_)))
                           (_E8039780406_)))))
                  (_K8035480387_
                   (lambda ()
                     (let* ((_yrest8037180376_ _yrest80348_)
                            (_E8037380380_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8037180376_)))
                            (_K8037480384_
                             (lambda () (_f80341_ _xrest80347_ _yrest80348_))))
                       (if (not (gx#stx-null? _yrest8037180376_))
                           (_K8037480384_)
                           (_E8037380380_))))))
              (let ((_try-match8035180390_
                     (lambda ()
                       (if (not (null? _g8034980359_))
                           (_K8035480387_)
                           (_else8035280367_)))))
                (if (##pair? _g8034980359_)
                    (let ((_tl8035780429_ (##cdr _g8034980359_))
                          (_hd8035680427_ (##car _g8034980359_)))
                      (let ((_xhd80432_ _hd8035680427_)
                            (_xrest80434_ _tl8035780429_))
                        (_K8035580424_ _xrest80434_ _xhd80432_)))
                    (_try-match8035180390_))))))))
    (define gx#stx-map
      (lambda _g80978_
        (let ((_g80977_ (##length _g80978_)))
          (cond ((##fx= _g80977_ 2)
                 (apply (lambda (_f80334_ _stx80335_)
                          (gx#stx-map1 _f80334_ _stx80335_))
                        _g80978_))
                ((##fx= _g80977_ 3)
                 (apply (lambda (_f80337_ _xstx80338_ _ystx80339_)
                          (gx#stx-map2 _f80337_ _xstx80338_ _ystx80339_))
                        _g80978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g80978_))))))
    (define gx#stx-map1
      (lambda (_f80284_ _stx80285_)
        (if (procedure? _f80284_)
            '#!void
            (error '"expected procedure" _f80284_))
        (let _recur80287_ ((_rest80289_ _stx80285_))
          (let* ((_g8029080300_ (gx#syntax-e _rest80289_))
                 (_else8029380308_ (lambda () (_f80284_ _rest80289_))))
            (let ((_K8029680322_
                   (lambda (_rest80319_ _hd80320_)
                     (cons (_f80284_ _hd80320_) (_recur80287_ _rest80319_))))
                  (_K8029580313_ (lambda () '())))
              (let ((_try-match8029280316_
                     (lambda ()
                       (if (##null? _g8029080300_)
                           (_K8029580313_)
                           (_else8029380308_)))))
                (if (##pair? _g8029080300_)
                    (let ((_tl8029880327_ (##cdr _g8029080300_))
                          (_hd8029780325_ (##car _g8029080300_)))
                      (let ((_hd80330_ _hd8029780325_)
                            (_rest80332_ _tl8029880327_))
                        (_K8029680322_ _rest80332_ _hd80330_)))
                    (_try-match8029280316_))))))))
    (define gx#stx-map2
      (lambda (_f80189_ _xstx80190_ _ystx80191_)
        (if (procedure? _f80189_)
            '#!void
            (error '"expected procedure" _f80189_))
        (let _recur80193_ ((_xrest80195_ _xstx80190_)
                           (_yrest80196_ _ystx80191_))
          (let* ((_g8019780207_ (gx#syntax-e _xrest80195_))
                 (_else8020080215_ (lambda () '())))
            (let ((_K8020380272_
                   (lambda (_xrest80241_ _xhd80242_)
                     (let* ((_g8024380250_ (gx#syntax-e _yrest80196_))
                            (_E8024580254_
                             (lambda ()
                               (error '"No clause matching" _g8024380250_)))
                            (_K8024680260_
                             (lambda (_yrest80257_ _yhd80258_)
                               (cons (_f80189_ _xhd80242_ _yhd80258_)
                                     (_recur80193_
                                      _xrest80241_
                                      _yrest80257_)))))
                       (if (##pair? _g8024380250_)
                           (let ((_hd8024780263_ (##car _g8024380250_))
                                 (_tl8024880265_ (##cdr _g8024380250_)))
                             (let* ((_yhd80268_ _hd8024780263_)
                                    (_yrest80270_ _tl8024880265_))
                               (_K8024680260_ _yrest80270_ _yhd80268_)))
                           (_E8024580254_)))))
                  (_K8020280235_
                   (lambda ()
                     (let* ((_yrest8021980224_ _yrest80196_)
                            (_E8022180228_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8021980224_)))
                            (_K8022280232_
                             (lambda () (_f80189_ _xrest80195_ _yrest80196_))))
                       (if (not (gx#stx-null? _yrest8021980224_))
                           (_K8022280232_)
                           (_E8022180228_))))))
              (let ((_try-match8019980238_
                     (lambda ()
                       (if (not (null? _g8019780207_))
                           (_K8020280235_)
                           (_else8020080215_)))))
                (if (##pair? _g8019780207_)
                    (let ((_tl8020580277_ (##cdr _g8019780207_))
                          (_hd8020480275_ (##car _g8019780207_)))
                      (let ((_xhd80280_ _hd8020480275_)
                            (_xrest80282_ _tl8020580277_))
                        (_K8020380272_ _xrest80282_ _xhd80280_)))
                    (_try-match8019980238_))))))))
    (define gx#stx-andmap
      (lambda (_f80139_ _stx80140_)
        (if (procedure? _f80139_)
            '#!void
            (error '"expected procedure" _f80139_))
        (let _lp80142_ ((_rest80144_ _stx80140_))
          (let* ((_g8014580155_ (gx#syntax-e _rest80144_))
                 (_else8014880163_ (lambda () (_f80139_ _rest80144_))))
            (let ((_K8015180177_
                   (lambda (_rest80174_ _hd80175_)
                     (if (_f80139_ _hd80175_) (_lp80142_ _rest80174_) '#f)))
                  (_K8015080168_ (lambda () '#t)))
              (let ((_try-match8014780171_
                     (lambda ()
                       (if (##null? _g8014580155_)
                           (_K8015080168_)
                           (_else8014880163_)))))
                (if (##pair? _g8014580155_)
                    (let ((_tl8015380182_ (##cdr _g8014580155_))
                          (_hd8015280180_ (##car _g8014580155_)))
                      (let ((_hd80185_ _hd8015280180_)
                            (_rest80187_ _tl8015380182_))
                        (_K8015180177_ _rest80187_ _hd80185_)))
                    (_try-match8014780171_))))))))
    (define gx#stx-ormap
      (lambda (_f80086_ _stx80087_)
        (if (procedure? _f80086_)
            '#!void
            (error '"expected procedure" _f80086_))
        (let _lp80089_ ((_rest80091_ _stx80087_))
          (let* ((_g8009280102_ (gx#syntax-e _rest80091_))
                 (_else8009580110_ (lambda () (_f80086_ _rest80091_))))
            (let ((_K8009880127_
                   (lambda (_rest80121_ _hd80122_)
                     (let ((_$e80124_ (_f80086_ _hd80122_)))
                       (if _$e80124_ _$e80124_ (_lp80089_ _rest80121_)))))
                  (_K8009780115_ (lambda () '#f)))
              (let ((_try-match8009480118_
                     (lambda ()
                       (if (##null? _g8009280102_)
                           (_K8009780115_)
                           (_else8009580110_)))))
                (if (##pair? _g8009280102_)
                    (let ((_tl8010080132_ (##cdr _g8009280102_))
                          (_hd8009980130_ (##car _g8009280102_)))
                      (let ((_hd80135_ _hd8009980130_)
                            (_rest80137_ _tl8010080132_))
                        (_K8009880127_ _rest80137_ _hd80135_)))
                    (_try-match8009480118_))))))))
    (define gx#stx-foldl
      (lambda (_f80034_ _iv80035_ _stx80036_)
        (if (procedure? _f80034_)
            '#!void
            (error '"expected procedure" _f80034_))
        (let _lp80038_ ((_r80040_ _iv80035_) (_rest80041_ _stx80036_))
          (let* ((_g8004280052_ (gx#syntax-e _rest80041_))
                 (_else8004580060_
                  (lambda () (_f80034_ _rest80041_ _r80040_))))
            (let ((_K8004880074_
                   (lambda (_rest80071_ _hd80072_)
                     (_lp80038_ (_f80034_ _hd80072_ _r80040_) _rest80071_)))
                  (_K8004780065_ (lambda () _r80040_)))
              (let ((_try-match8004480068_
                     (lambda ()
                       (if (##null? _g8004280052_)
                           (_K8004780065_)
                           (_else8004580060_)))))
                (if (##pair? _g8004280052_)
                    (let ((_tl8005080079_ (##cdr _g8004280052_))
                          (_hd8004980077_ (##car _g8004280052_)))
                      (let ((_hd80082_ _hd8004980077_)
                            (_rest80084_ _tl8005080079_))
                        (_K8004880074_ _rest80084_ _hd80082_)))
                    (_try-match8004480068_))))))))
    (define gx#stx-foldr
      (lambda (_f79983_ _iv79984_ _stx79985_)
        (if (procedure? _f79983_)
            '#!void
            (error '"expected procedure" _f79983_))
        (let _recur79987_ ((_rest79989_ _stx79985_))
          (let* ((_g7999080000_ (gx#syntax-e _rest79989_))
                 (_else7999380008_
                  (lambda () (_f79983_ _rest79989_ _iv79984_))))
            (let ((_K7999680022_
                   (lambda (_rest80019_ _hd80020_)
                     (_f79983_ _hd80020_ (_recur79987_ _rest80019_))))
                  (_K7999580013_ (lambda () _iv79984_)))
              (let ((_try-match7999280016_
                     (lambda ()
                       (if (##null? _g7999080000_)
                           (_K7999580013_)
                           (_else7999380008_)))))
                (if (##pair? _g7999080000_)
                    (let ((_tl7999880027_ (##cdr _g7999080000_))
                          (_hd7999780025_ (##car _g7999080000_)))
                      (let ((_hd80030_ _hd7999780025_)
                            (_rest80032_ _tl7999880027_))
                        (_K7999680022_ _rest80032_ _hd80030_)))
                    (_try-match7999280016_))))))))
    (define gx#stx-reverse
      (lambda (_stx79981_) (gx#stx-foldl cons '() _stx79981_)))
    (define gx#stx-last
      (lambda (_stx79942_)
        (let _lp79944_ ((_rest79946_ _stx79942_))
          (let* ((_g7994779955_ (gx#syntax-e _rest79946_))
                 (_else7994979963_ (lambda () _rest79946_))
                 (_K7995179969_
                  (lambda (_rest79966_ _hd79967_)
                    (if (gx#stx-null? _rest79966_)
                        _hd79967_
                        (_lp79944_ _rest79966_)))))
            (if (##pair? _g7994779955_)
                (let ((_hd7995279972_ (##car _g7994779955_))
                      (_tl7995379974_ (##cdr _g7994779955_)))
                  (let* ((_hd79977_ _hd7995279972_)
                         (_rest79979_ _tl7995379974_))
                    (_K7995179969_ _rest79979_ _hd79977_)))
                (_else7994979963_))))))
    (define gx#stx-last-pair
      (lambda (_stx79913_)
        (let _lp79915_ ((_hd79917_ _stx79913_))
          (let* ((_g7991879925_ (gx#syntax-e _hd79917_))
                 (_E7992079929_
                  (lambda () (error '"No clause matching" _g7991879925_)))
                 (_K7992179934_
                  (lambda (_rest79932_)
                    (if (gx#stx-pair? _rest79932_)
                        (_lp79915_ _rest79932_)
                        _hd79917_))))
            (if (##pair? _g7991879925_)
                (let* ((_tl7992379937_ (##cdr _g7991879925_))
                       (_rest79940_ _tl7992379937_))
                  (_K7992179934_ _rest79940_))
                (_E7992079929_))))))
    (define gx#stx-list-tail
      (lambda (_stx79882_ _k79883_)
        (let _lp79885_ ((_rest79887_ _stx79882_) (_k79888_ _k79883_))
          (if (fxpositive? _k79888_)
              (let* ((_g7988979896_ (gx#syntax-e _rest79887_))
                     (_E7989179900_
                      (lambda () (error '"No clause matching" _g7988979896_)))
                     (_K7989279905_
                      (lambda (_rest79903_)
                        (_lp79885_ _rest79903_ (##fx- _k79888_ '1)))))
                (if (##pair? _g7988979896_)
                    (let* ((_tl7989479908_ (##cdr _g7988979896_))
                           (_rest79911_ _tl7989479908_))
                      (_K7989279905_ _rest79911_))
                    (_E7989179900_)))
              _rest79887_))))
    (define gx#stx-list-ref
      (lambda (_stx79879_ _k79880_)
        (gx#stx-car (gx#stx-list-tail _stx79879_ _k79880_))))
    (define gx#stx-plist?__%
      (lambda (_stx79791_ _key?79792_)
        (if (procedure? _key?79792_)
            '#!void
            (error '"expected procedure" _key?79792_))
        (let _lp79794_ ((_rest79796_ _stx79791_))
          (let* ((_g7979779807_ (gx#stx-e _rest79796_))
                 (_else7980079815_ (lambda () '#f)))
            (let ((_K7980379857_
                   (lambda (_rest79826_ _hd79827_)
                     (if (_key?79792_ _hd79827_)
                         (let* ((_g7982879836_ (gx#stx-e _rest79826_))
                                (_else7983079844_ (lambda () '#f))
                                (_K7983279849_
                                 (lambda (_rest79847_)
                                   (_lp79794_ _rest79847_))))
                           (if (##pair? _g7982879836_)
                               (let* ((_tl7983479852_ (##cdr _g7982879836_))
                                      (_rest79855_ _tl7983479852_))
                                 (_lp79794_ _rest79855_))
                               (_else7983079844_)))
                         '#f)))
                  (_K7980279820_ (lambda () '#t)))
              (let ((_try-match7979979823_
                     (lambda ()
                       (if (##null? _g7979779807_)
                           (_K7980279820_)
                           (_else7980079815_)))))
                (if (##pair? _g7979779807_)
                    (let ((_tl7980579862_ (##cdr _g7979779807_))
                          (_hd7980479860_ (##car _g7979779807_)))
                      (let ((_hd79865_ _hd7980479860_)
                            (_rest79867_ _tl7980579862_))
                        (_K7980379857_ _rest79867_ _hd79865_)))
                    (_try-match7979979823_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx79872_)
        (let ((_key?79874_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx79872_ _key?79874_))))
    (define gx#stx-plist?
      (lambda _g80980_
        (let ((_g80979_ (##length _g80980_)))
          (cond ((##fx= _g80979_ 1)
                 (apply (lambda (_stx79872_) (gx#stx-plist?__0 _stx79872_))
                        _g80980_))
                ((##fx= _g80979_ 2)
                 (apply (lambda (_stx79876_ _key?79877_)
                          (gx#stx-plist?__% _stx79876_ _key?79877_))
                        _g80980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g80980_))))))
    (define gx#stx-getq__%
      (lambda (_key79709_ _stx79710_ _key=?79711_)
        (if (procedure? _key=?79711_)
            '#!void
            (error '"expected procedure" _key=?79711_))
        (let _lp79713_ ((_rest79715_ _stx79710_))
          (let* ((_g7971679724_ (gx#syntax-e _rest79715_))
                 (_else7971879732_ (lambda () '#f))
                 (_K7972079766_
                  (lambda (_rest79735_ _hd79736_)
                    (let* ((_g7973779744_ (gx#syntax-e _rest79735_))
                           (_E7973979748_
                            (lambda ()
                              (error '"No clause matching" _g7973779744_)))
                           (_K7974079754_
                            (lambda (_rest79751_ _val79752_)
                              (if (_key=?79711_ _hd79736_ _key79709_)
                                  _val79752_
                                  (_lp79713_ _rest79751_)))))
                      (if (##pair? _g7973779744_)
                          (let ((_hd7974179757_ (##car _g7973779744_))
                                (_tl7974279759_ (##cdr _g7973779744_)))
                            (let* ((_val79762_ _hd7974179757_)
                                   (_rest79764_ _tl7974279759_))
                              (_K7974079754_ _rest79764_ _val79762_)))
                          (_E7973979748_))))))
            (if (##pair? _g7971679724_)
                (let ((_hd7972179769_ (##car _g7971679724_))
                      (_tl7972279771_ (##cdr _g7971679724_)))
                  (let* ((_hd79774_ _hd7972179769_)
                         (_rest79776_ _tl7972279771_))
                    (_K7972079766_ _rest79776_ _hd79774_)))
                (_else7971879732_))))))
    (define gx#stx-getq__0
      (lambda (_key79781_ _stx79782_)
        (let ((_key=?79784_ gx#stx-eq?))
          (gx#stx-getq__% _key79781_ _stx79782_ _key=?79784_))))
    (define gx#stx-getq
      (lambda _g80982_
        (let ((_g80981_ (##length _g80982_)))
          (cond ((##fx= _g80981_ 2)
                 (apply (lambda (_key79781_ _stx79782_)
                          (gx#stx-getq__0 _key79781_ _stx79782_))
                        _g80982_))
                ((##fx= _g80981_ 3)
                 (apply (lambda (_key79786_ _stx79787_ _key=?79788_)
                          (gx#stx-getq__% _key79786_ _stx79787_ _key=?79788_))
                        _g80982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g80982_))))))))
