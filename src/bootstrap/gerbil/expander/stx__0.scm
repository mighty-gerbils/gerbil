(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707573211)
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
      (lambda _$args135605_
        (apply make-struct-instance gx#identifier-wrap::t _$args135605_)))
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
      (lambda _$args135602_
        (apply make-struct-instance gx#syntax-wrap::t _$args135602_)))
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
      (lambda _$args135599_
        (apply make-struct-instance gx#syntax-quote::t _$args135599_)))
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
      (lambda (_stx135597_) (symbol? (gx#stx-e _stx135597_))))
    (define gx#identifier-quote?
      (lambda (_stx135595_)
        (if (##structure-direct-instance-of? _stx135595_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135595_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135593_)
        (if (##structure-direct-instance-of? _stx135593_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135593_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135593_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135591_)
        (if (##structure-direct-instance-of? _stx135591_ 'gx#syntax-quote::t)
            _stx135591_
            (if (##structure-direct-instance-of?
                 _stx135591_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135591_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135574_)
        (if (##structure-direct-instance-of? _stx135574_ 'gx#syntax-wrap::t)
            (let _lp135576_ ((_e135578_
                              (##unchecked-structure-ref
                               _stx135574_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135579_
                              (cons (##unchecked-structure-ref
                                     _stx135574_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135578_)
                  (let ((_$e135581_ (##type-id (##structure-type _e135578_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135581_)
                        (_lp135576_
                         (##unchecked-structure-ref _e135578_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135578_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135579_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135581_)
                                (eq? 'gx#identifier-wrap::t _$e135581_))
                            (##unchecked-structure-ref
                             _e135578_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135581_)
                                (_lp135576_
                                 (##unchecked-structure-ref
                                  _e135578_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135579_)
                                _e135578_))))
                  (if (null? _marks135579_)
                      _e135578_
                      (if (pair? _e135578_)
                          (cons (gx#stx-wrap (car _e135578_) _marks135579_)
                                (gx#stx-wrap (cdr _e135578_) _marks135579_))
                          (if (vector? _e135578_)
                              (vector-map
                               (lambda (_g135586135588_)
                                 (gx#stx-wrap _g135586135588_ _marks135579_))
                               _e135578_)
                              (if (box? _e135578_)
                                  (box (gx#stx-wrap
                                        (unbox _e135578_)
                                        _marks135579_))
                                  _e135578_))))))
            (if (##structure-instance-of? _stx135574_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135574_ '1 gx#AST::t '#f)
                _stx135574_))))
    (define gx#syntax->datum
      (lambda (_stx135572_)
        (if (##structure-instance-of? _stx135572_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135572_ '1 gx#AST::t '#f))
            (if (pair? _stx135572_)
                (cons (gx#syntax->datum (car _stx135572_))
                      (gx#syntax->datum (cdr _stx135572_)))
                (if (vector? _stx135572_)
                    (vector-map gx#syntax->datum _stx135572_)
                    (if (box? _stx135572_)
                        (box (gx#syntax->datum (unbox _stx135572_)))
                        _stx135572_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135515_ _datum135516_ _src135517_ _quote?135518_)
        (letrec ((_wrap-datum135520_
                  (lambda (_e135544_ _marks135545_)
                    (_wrap-inner135522_
                     _e135544_
                     (lambda (_g135546135548_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135546135548_
                        _src135517_
                        _marks135545_)))))
                 (_wrap-quote135521_
                  (lambda (_e135536_ _ctx135537_ _marks135538_)
                    (_wrap-inner135522_
                     _e135536_
                     (lambda (_g135539135541_)
                       (##structure
                        gx#syntax-quote::t
                        _g135539135541_
                        _src135517_
                        _ctx135537_
                        _marks135538_)))))
                 (_wrap-inner135522_
                  (lambda (_e135529_ _wrap-e135530_)
                    (let _recur135532_ ((_e135534_ _e135529_))
                      (if (symbol? _e135534_)
                          (_wrap-e135530_ _e135534_)
                          (if (pair? _e135534_)
                              (cons (_recur135532_ (car _e135534_))
                                    (_recur135532_ (cdr _e135534_)))
                              (if (vector? _e135534_)
                                  (vector-map _recur135532_ _e135534_)
                                  (if (box? _e135534_)
                                      (box (_recur135532_ (unbox _e135534_)))
                                      _e135534_)))))))
                 (_wrap-outer135523_
                  (lambda (_e135527_)
                    (if (##structure-instance-of? _e135527_ 'gerbil#AST::t)
                        _e135527_
                        (##structure gx#AST::t _e135527_ _src135517_)))))
          (if (##structure-instance-of? _datum135516_ 'gerbil#AST::t)
              _datum135516_
              (if (not _stx135515_)
                  (##structure gx#AST::t _datum135516_ _src135517_)
                  (if (gx#identifier? _stx135515_)
                      (let ((_stx135525_ (gx#stx-unwrap__0 _stx135515_)))
                        (_wrap-outer135523_
                         (if (##structure-direct-instance-of?
                              _stx135525_
                              'gx#syntax-quote::t)
                             (if _quote?135518_
                                 (_wrap-quote135521_
                                  _datum135516_
                                  (##unchecked-structure-ref
                                   _stx135525_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135525_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135520_
                                  _datum135516_
                                  (##unchecked-structure-ref
                                   _stx135525_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135520_
                              _datum135516_
                              (##unchecked-structure-ref
                               _stx135525_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135515_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135554_ _datum135555_)
        (let* ((_src135557_ '#f) (_quote?135559_ '#t))
          (gx#datum->syntax__%
           _stx135554_
           _datum135555_
           _src135557_
           _quote?135559_))))
    (define gx#datum->syntax__1
      (lambda (_stx135561_ _datum135562_ _src135563_)
        (let ((_quote?135565_ '#t))
          (gx#datum->syntax__%
           _stx135561_
           _datum135562_
           _src135563_
           _quote?135565_))))
    (define gx#datum->syntax
      (lambda _g140154_
        (let ((_g140153_ (##length _g140154_)))
          (cond ((##fx= _g140153_ 2)
                 (apply (lambda (_stx135554_ _datum135555_)
                          (gx#datum->syntax__0 _stx135554_ _datum135555_))
                        _g140154_))
                ((##fx= _g140153_ 3)
                 (apply (lambda (_stx135561_ _datum135562_ _src135563_)
                          (gx#datum->syntax__1
                           _stx135561_
                           _datum135562_
                           _src135563_))
                        _g140154_))
                ((##fx= _g140153_ 4)
                 (apply (lambda (_stx135567_
                                 _datum135568_
                                 _src135569_
                                 _quote?135570_)
                          (gx#datum->syntax__%
                           _stx135567_
                           _datum135568_
                           _src135569_
                           _quote?135570_))
                        _g140154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140154_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135491_ _marks135492_)
        (let _lp135494_ ((_e135496_ _stx135491_)
                         (_marks135497_ _marks135492_)
                         (_src135498_ (gx#stx-source _stx135491_)))
          (if (##structure-direct-instance-of? _e135496_ 'gx#syntax-wrap::t)
              (_lp135494_
               (##unchecked-structure-ref _e135496_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135496_ '3 gx#syntax-wrap::t '#f)
                _marks135497_)
               (##unchecked-structure-ref _e135496_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135496_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135497_)
                      _e135496_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135496_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135496_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135496_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135497_)))
                  (if (##structure-direct-instance-of?
                       _e135496_
                       'gx#syntax-quote::t)
                      _e135496_
                      (if (##structure-instance-of? _e135496_ 'gerbil#AST::t)
                          (_lp135494_
                           (##unchecked-structure-ref
                            _e135496_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135497_
                           (##unchecked-structure-ref
                            _e135496_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135496_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135496_
                               _src135498_
                               (reverse _marks135497_))
                              (if (null? _marks135497_)
                                  _e135496_
                                  (if (pair? _e135496_)
                                      (cons (gx#stx-wrap
                                             (car _e135496_)
                                             _marks135497_)
                                            (gx#stx-wrap
                                             (cdr _e135496_)
                                             _marks135497_))
                                      (if (vector? _e135496_)
                                          (vector-map
                                           (lambda (_g135499135501_)
                                             (gx#stx-wrap
                                              _g135499135501_
                                              _marks135497_))
                                           _e135496_)
                                          (if (box? _e135496_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135496_)
                                                    _marks135497_))
                                              _e135496_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135507_)
        (let ((_marks135509_ '()))
          (gx#stx-unwrap__% _stx135507_ _marks135509_))))
    (define gx#stx-unwrap
      (lambda _g140156_
        (let ((_g140155_ (##length _g140156_)))
          (cond ((##fx= _g140155_ 1)
                 (apply (lambda (_stx135507_) (gx#stx-unwrap__0 _stx135507_))
                        _g140156_))
                ((##fx= _g140155_ 2)
                 (apply (lambda (_stx135511_ _marks135512_)
                          (gx#stx-unwrap__% _stx135511_ _marks135512_))
                        _g140156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140156_))))))
    (define gx#stx-wrap
      (lambda (_stx135484_ _marks135485_)
        (foldl1 (lambda (_mark135487_ _stx135488_)
                  (gx#stx-apply-mark _stx135488_ _mark135487_))
                _stx135484_
                _marks135485_)))
    (define gx#stx-rewrap
      (lambda (_stx135478_ _marks135479_)
        (foldr1 (lambda (_mark135481_ _stx135482_)
                  (gx#stx-apply-mark _stx135482_ _mark135481_))
                _stx135478_
                _marks135479_)))
    (define gx#stx-apply-mark
      (lambda (_stx135475_ _mark135476_)
        (if (##structure-direct-instance-of? _stx135475_ 'gx#syntax-quote::t)
            _stx135475_
            (if (and (##structure-direct-instance-of?
                      _stx135475_
                      'gx#syntax-wrap::t)
                     (eq? _mark135476_
                          (##unchecked-structure-ref
                           _stx135475_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135475_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135475_
                 (gx#stx-source _stx135475_)
                 _mark135476_)))))
    (define gx#apply-mark
      (lambda (_mark135439_ _marks135440_)
        (let* ((_marks135441135449_ _marks135440_)
               (_else135443135457_
                (lambda () (cons _mark135439_ _marks135440_)))
               (_K135445135463_
                (lambda (_rest135460_ _hd135461_)
                  (if (eq? _mark135439_ _hd135461_)
                      _rest135460_
                      (cons _mark135439_ _marks135440_)))))
          (if (##pair? _marks135441135449_)
              (let ((_hd135446135466_ (##car _marks135441135449_))
                    (_tl135447135468_ (##cdr _marks135441135449_)))
                (let* ((_hd135471_ _hd135446135466_)
                       (_rest135473_ _tl135447135468_))
                  (_K135445135463_ _rest135473_ _hd135471_)))
              (_else135443135457_)))))
    (define gx#stx-e
      (lambda (_stx135437_)
        (if (##structure-direct-instance-of? _stx135437_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135437_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135437_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135437_ '1 gx#AST::t '#f)
                _stx135437_))))
    (define gx#stx-source
      (lambda (_stx135435_)
        (if (##structure-instance-of? _stx135435_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135435_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135429_ _src135430_)
        (if (or (##structure-instance-of? _stx135429_ 'gerbil#AST::t)
                (not _src135430_))
            _stx135429_
            (##structure gx#AST::t _stx135429_ _src135430_))))
    (define gx#stx-datum?
      (lambda (_stx135427_) (gx#self-quoting? (gx#stx-e _stx135427_))))
    (define gx#self-quoting?
      (lambda (_x135410_)
        (let ((_$e135412_ (immediate? _x135410_)))
          (if _$e135412_
              _$e135412_
              (let ((_$e135415_ (number? _x135410_)))
                (if _$e135415_
                    _$e135415_
                    (let ((_$e135418_ (keyword? _x135410_)))
                      (if _$e135418_
                          _$e135418_
                          (let ((_$e135421_ (string? _x135410_)))
                            (if _$e135421_
                                _$e135421_
                                (let ((_$e135424_ (vector? _x135410_)))
                                  (if _$e135424_
                                      _$e135424_
                                      (u8vector? _x135410_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135408_) (boolean? (gx#stx-e _e135408_))))
    (define gx#stx-keyword?
      (lambda (_e135406_) (keyword? (gx#stx-e _e135406_))))
    (define gx#stx-char? (lambda (_e135404_) (char? (gx#stx-e _e135404_))))
    (define gx#stx-number? (lambda (_e135402_) (number? (gx#stx-e _e135402_))))
    (define gx#stx-fixnum? (lambda (_e135400_) (fixnum? (gx#stx-e _e135400_))))
    (define gx#stx-string? (lambda (_e135398_) (string? (gx#stx-e _e135398_))))
    (define gx#stx-null? (lambda (_e135396_) (null? (gx#stx-e _e135396_))))
    (define gx#stx-pair? (lambda (_e135394_) (pair? (gx#stx-e _e135394_))))
    (define gx#stx-list?
      (lambda (_e135356_)
        (let* ((_g135357135366_ (gx#stx-e _e135356_))
               (_E135360135370_
                (lambda () (error '"No clause matching" _g135357135366_))))
          (let ((_K135362135386_
                 (lambda (_rest135384_) (gx#stx-list? _rest135384_)))
                (_K135361135376_ (lambda (_tail135374_) (null? _tail135374_))))
            (if (##pair? _g135357135366_)
                (let* ((_tl135364135389_ (##cdr _g135357135366_))
                       (_rest135392_ _tl135364135389_))
                  (gx#stx-list? _rest135392_))
                (let ((_tail135379_ _g135357135366_))
                  (null? _tail135379_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135349_)
        (let* ((_e135351_ (gx#stx-e _e135349_)) (_$e135353_ (pair? _e135351_)))
          (if _$e135353_ _$e135353_ (null? _e135351_)))))
    (define gx#stx-vector? (lambda (_e135347_) (vector? (gx#stx-e _e135347_))))
    (define gx#stx-box? (lambda (_e135345_) (box? (gx#stx-e _e135345_))))
    (define gx#stx-eq?
      (lambda (_x135342_ _y135343_)
        (eq? (gx#stx-e _x135342_) (gx#stx-e _y135343_))))
    (define gx#stx-eqv?
      (lambda (_x135339_ _y135340_)
        (eqv? (gx#stx-e _x135339_) (gx#stx-e _y135340_))))
    (define gx#stx-equal?
      (lambda (_x135336_ _y135337_)
        (equal? (gx#stx-e _x135336_) (gx#stx-e _y135337_))))
    (define gx#stx-false? (lambda (_x135334_) (not (gx#stx-e _x135334_))))
    (define gx#stx-identifier
      (lambda (_template135331_ . _args135332_)
        (gx#datum->syntax__1
         _template135331_
         (apply make-symbol (gx#syntax->datum _args135332_))
         (gx#stx-source _template135331_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135329_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135329_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135327_)
        (if (##structure-direct-instance-of?
             _stx135327_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135327_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135327_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135327_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135327_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135323_)
        (let ((_stx135325_ (gx#stx-unwrap__0 _stx135323_)))
          (if (gx#identifier-quote? _stx135325_)
              (##unchecked-structure-ref _stx135325_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135278_)
        (let* ((_g135279135289_ (gx#stx-e _stx135278_))
               (_else135282135297_ (lambda () '#f)))
          (let ((_K135285135311_
                 (lambda (_rest135308_ _hd135309_)
                   (if (gx#identifier? _hd135309_)
                       (gx#identifier-list? _rest135308_)
                       '#f)))
                (_K135284135302_ (lambda () '#t)))
            (let ((_try-match135281135305_
                   (lambda ()
                     (if (##null? _g135279135289_)
                         (_K135284135302_)
                         (_else135282135297_)))))
              (if (##pair? _g135279135289_)
                  (let ((_tl135287135316_ (##cdr _g135279135289_))
                        (_hd135286135314_ (##car _g135279135289_)))
                    (let ((_hd135319_ _hd135286135314_)
                          (_rest135321_ _tl135287135316_))
                      (_K135285135311_ _rest135321_ _hd135319_)))
                  (_try-match135281135305_)))))))
    (define gx#genident__%
      (lambda (_e135255_ _src135256_)
        (gx#stx-wrap-source
         (gensym (let ((_e135258_ (gx#stx-e _e135255_)))
                   (if (interned-symbol? _e135258_) _e135258_ 'g)))
         (let ((_$e135260_ (gx#stx-source _e135255_)))
           (if _$e135260_ _$e135260_ _src135256_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135267_ 'g) (_src135269_ '#f))
          (gx#genident__% _e135267_ _src135269_))))
    (define gx#genident__1
      (lambda (_e135271_)
        (let ((_src135273_ '#f)) (gx#genident__% _e135271_ _src135273_))))
    (define gx#genident
      (lambda _g140158_
        (let ((_g140157_ (##length _g140158_)))
          (cond ((##fx= _g140157_ 0)
                 (apply (lambda () (gx#genident__0)) _g140158_))
                ((##fx= _g140157_ 1)
                 (apply (lambda (_e135271_) (gx#genident__1 _e135271_))
                        _g140158_))
                ((##fx= _g140157_ 2)
                 (apply (lambda (_e135275_ _src135276_)
                          (gx#genident__% _e135275_ _src135276_))
                        _g140158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140158_))))))
    (define gx#gentemps
      (lambda (_stx-lst135252_) (gx#stx-map1 gx#genident _stx-lst135252_)))
    (define gx#syntax->list
      (lambda (_stx135250_) (gx#stx-map1 values _stx135250_)))
    (define gx#stx-car
      (lambda (_stx135247_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135247_)))))
    (define gx#stx-cdr
      (lambda (_stx135244_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135244_)))))
    (define gx#stx-length
      (lambda (_stx135209_)
        (let _lp135211_ ((_rest135213_ _stx135209_) (_n135214_ '0))
          (let* ((_g135215135223_ (gx#stx-e _rest135213_))
                 (_else135217135231_ (lambda () _n135214_))
                 (_K135219135236_
                  (lambda (_rest135234_)
                    (_lp135211_ _rest135234_ (fx+ _n135214_ '1)))))
            (if (##pair? _g135215135223_)
                (let* ((_tl135221135239_ (##cdr _g135215135223_))
                       (_rest135242_ _tl135221135239_))
                  (_K135219135236_ _rest135242_))
                (_else135217135231_))))))
    (define gx#stx-for-each
      (lambda _g140160_
        (let ((_g140159_ (##length _g140160_)))
          (cond ((##fx= _g140159_ 2)
                 (apply (lambda (_f135202_ _stx135203_)
                          (gx#stx-for-each1 _f135202_ _stx135203_))
                        _g140160_))
                ((##fx= _g140159_ 3)
                 (apply (lambda (_f135205_ _xstx135206_ _ystx135207_)
                          (gx#stx-for-each2
                           _f135205_
                           _xstx135206_
                           _ystx135207_))
                        _g140160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140160_))))))
    (define gx#stx-for-each1
      (lambda (_f135152_ _stx135153_)
        (if (procedure? _f135152_)
            '#!void
            (error '"expected procedure" _f135152_))
        (let _lp135155_ ((_rest135157_ _stx135153_))
          (let* ((_g135158135168_ (gx#syntax-e _rest135157_))
                 (_else135161135176_ (lambda () (_f135152_ _rest135157_))))
            (let ((_K135164135190_
                   (lambda (_rest135187_ _hd135188_)
                     (_f135152_ _hd135188_)
                     (_lp135155_ _rest135187_)))
                  (_K135163135181_ (lambda () '#!void)))
              (let ((_try-match135160135184_
                     (lambda ()
                       (if (##null? _g135158135168_)
                           (_K135163135181_)
                           (_else135161135176_)))))
                (if (##pair? _g135158135168_)
                    (let ((_tl135166135195_ (##cdr _g135158135168_))
                          (_hd135165135193_ (##car _g135158135168_)))
                      (let ((_hd135198_ _hd135165135193_)
                            (_rest135200_ _tl135166135195_))
                        (_K135164135190_ _rest135200_ _hd135198_)))
                    (_try-match135160135184_))))))))
    (define gx#stx-for-each2
      (lambda (_f135057_ _xstx135058_ _ystx135059_)
        (if (procedure? _f135057_)
            '#!void
            (error '"expected procedure" _f135057_))
        (let _lp135061_ ((_xrest135063_ _xstx135058_)
                         (_yrest135064_ _ystx135059_))
          (let* ((_g135065135075_ (gx#syntax-e _xrest135063_))
                 (_else135068135083_ (lambda () '#!void)))
            (let ((_K135071135140_
                   (lambda (_xrest135109_ _xhd135110_)
                     (let* ((_g135111135118_ (gx#syntax-e _yrest135064_))
                            (_E135113135122_
                             (lambda ()
                               (error '"No clause matching" _g135111135118_)))
                            (_K135114135128_
                             (lambda (_yrest135125_ _yhd135126_)
                               (_f135057_ _xhd135110_ _yhd135126_)
                               (_lp135061_ _xrest135109_ _yrest135125_))))
                       (if (##pair? _g135111135118_)
                           (let ((_hd135115135131_ (##car _g135111135118_))
                                 (_tl135116135133_ (##cdr _g135111135118_)))
                             (let* ((_yhd135136_ _hd135115135131_)
                                    (_yrest135138_ _tl135116135133_))
                               (_K135114135128_ _yrest135138_ _yhd135136_)))
                           (_E135113135122_)))))
                  (_K135070135103_
                   (lambda ()
                     (let* ((_yrest135087135092_ _yrest135064_)
                            (_E135089135096_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135087135092_)))
                            (_K135090135100_
                             (lambda ()
                               (_f135057_ _xrest135063_ _yrest135064_))))
                       (if (not (gx#stx-null? _yrest135087135092_))
                           (_K135090135100_)
                           (_E135089135096_))))))
              (let ((_try-match135067135106_
                     (lambda ()
                       (if (not (null? _g135065135075_))
                           (_K135070135103_)
                           (_else135068135083_)))))
                (if (##pair? _g135065135075_)
                    (let ((_tl135073135145_ (##cdr _g135065135075_))
                          (_hd135072135143_ (##car _g135065135075_)))
                      (let ((_xhd135148_ _hd135072135143_)
                            (_xrest135150_ _tl135073135145_))
                        (_K135071135140_ _xrest135150_ _xhd135148_)))
                    (_try-match135067135106_))))))))
    (define gx#stx-map
      (lambda _g140162_
        (let ((_g140161_ (##length _g140162_)))
          (cond ((##fx= _g140161_ 2)
                 (apply (lambda (_f135050_ _stx135051_)
                          (gx#stx-map1 _f135050_ _stx135051_))
                        _g140162_))
                ((##fx= _g140161_ 3)
                 (apply (lambda (_f135053_ _xstx135054_ _ystx135055_)
                          (gx#stx-map2 _f135053_ _xstx135054_ _ystx135055_))
                        _g140162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140162_))))))
    (define gx#stx-map1
      (lambda (_f135000_ _stx135001_)
        (if (procedure? _f135000_)
            '#!void
            (error '"expected procedure" _f135000_))
        (let _recur135003_ ((_rest135005_ _stx135001_))
          (let* ((_g135006135016_ (gx#syntax-e _rest135005_))
                 (_else135009135024_ (lambda () (_f135000_ _rest135005_))))
            (let ((_K135012135038_
                   (lambda (_rest135035_ _hd135036_)
                     (cons (_f135000_ _hd135036_)
                           (_recur135003_ _rest135035_))))
                  (_K135011135029_ (lambda () '())))
              (let ((_try-match135008135032_
                     (lambda ()
                       (if (##null? _g135006135016_)
                           (_K135011135029_)
                           (_else135009135024_)))))
                (if (##pair? _g135006135016_)
                    (let ((_tl135014135043_ (##cdr _g135006135016_))
                          (_hd135013135041_ (##car _g135006135016_)))
                      (let ((_hd135046_ _hd135013135041_)
                            (_rest135048_ _tl135014135043_))
                        (_K135012135038_ _rest135048_ _hd135046_)))
                    (_try-match135008135032_))))))))
    (define gx#stx-map2
      (lambda (_f134905_ _xstx134906_ _ystx134907_)
        (if (procedure? _f134905_)
            '#!void
            (error '"expected procedure" _f134905_))
        (let _recur134909_ ((_xrest134911_ _xstx134906_)
                            (_yrest134912_ _ystx134907_))
          (let* ((_g134913134923_ (gx#syntax-e _xrest134911_))
                 (_else134916134931_ (lambda () '())))
            (let ((_K134919134988_
                   (lambda (_xrest134957_ _xhd134958_)
                     (let* ((_g134959134966_ (gx#syntax-e _yrest134912_))
                            (_E134961134970_
                             (lambda ()
                               (error '"No clause matching" _g134959134966_)))
                            (_K134962134976_
                             (lambda (_yrest134973_ _yhd134974_)
                               (cons (_f134905_ _xhd134958_ _yhd134974_)
                                     (_recur134909_
                                      _xrest134957_
                                      _yrest134973_)))))
                       (if (##pair? _g134959134966_)
                           (let ((_hd134963134979_ (##car _g134959134966_))
                                 (_tl134964134981_ (##cdr _g134959134966_)))
                             (let* ((_yhd134984_ _hd134963134979_)
                                    (_yrest134986_ _tl134964134981_))
                               (_K134962134976_ _yrest134986_ _yhd134984_)))
                           (_E134961134970_)))))
                  (_K134918134951_
                   (lambda ()
                     (let* ((_yrest134935134940_ _yrest134912_)
                            (_E134937134944_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134935134940_)))
                            (_K134938134948_
                             (lambda ()
                               (_f134905_ _xrest134911_ _yrest134912_))))
                       (if (not (gx#stx-null? _yrest134935134940_))
                           (_K134938134948_)
                           (_E134937134944_))))))
              (let ((_try-match134915134954_
                     (lambda ()
                       (if (not (null? _g134913134923_))
                           (_K134918134951_)
                           (_else134916134931_)))))
                (if (##pair? _g134913134923_)
                    (let ((_tl134921134993_ (##cdr _g134913134923_))
                          (_hd134920134991_ (##car _g134913134923_)))
                      (let ((_xhd134996_ _hd134920134991_)
                            (_xrest134998_ _tl134921134993_))
                        (_K134919134988_ _xrest134998_ _xhd134996_)))
                    (_try-match134915134954_))))))))
    (define gx#stx-andmap
      (lambda (_f134855_ _stx134856_)
        (if (procedure? _f134855_)
            '#!void
            (error '"expected procedure" _f134855_))
        (let _lp134858_ ((_rest134860_ _stx134856_))
          (let* ((_g134861134871_ (gx#syntax-e _rest134860_))
                 (_else134864134879_ (lambda () (_f134855_ _rest134860_))))
            (let ((_K134867134893_
                   (lambda (_rest134890_ _hd134891_)
                     (if (_f134855_ _hd134891_)
                         (_lp134858_ _rest134890_)
                         '#f)))
                  (_K134866134884_ (lambda () '#t)))
              (let ((_try-match134863134887_
                     (lambda ()
                       (if (##null? _g134861134871_)
                           (_K134866134884_)
                           (_else134864134879_)))))
                (if (##pair? _g134861134871_)
                    (let ((_tl134869134898_ (##cdr _g134861134871_))
                          (_hd134868134896_ (##car _g134861134871_)))
                      (let ((_hd134901_ _hd134868134896_)
                            (_rest134903_ _tl134869134898_))
                        (_K134867134893_ _rest134903_ _hd134901_)))
                    (_try-match134863134887_))))))))
    (define gx#stx-ormap
      (lambda (_f134802_ _stx134803_)
        (if (procedure? _f134802_)
            '#!void
            (error '"expected procedure" _f134802_))
        (let _lp134805_ ((_rest134807_ _stx134803_))
          (let* ((_g134808134818_ (gx#syntax-e _rest134807_))
                 (_else134811134826_ (lambda () (_f134802_ _rest134807_))))
            (let ((_K134814134843_
                   (lambda (_rest134837_ _hd134838_)
                     (let ((_$e134840_ (_f134802_ _hd134838_)))
                       (if _$e134840_ _$e134840_ (_lp134805_ _rest134837_)))))
                  (_K134813134831_ (lambda () '#f)))
              (let ((_try-match134810134834_
                     (lambda ()
                       (if (##null? _g134808134818_)
                           (_K134813134831_)
                           (_else134811134826_)))))
                (if (##pair? _g134808134818_)
                    (let ((_tl134816134848_ (##cdr _g134808134818_))
                          (_hd134815134846_ (##car _g134808134818_)))
                      (let ((_hd134851_ _hd134815134846_)
                            (_rest134853_ _tl134816134848_))
                        (_K134814134843_ _rest134853_ _hd134851_)))
                    (_try-match134810134834_))))))))
    (define gx#stx-foldl
      (lambda (_f134750_ _iv134751_ _stx134752_)
        (if (procedure? _f134750_)
            '#!void
            (error '"expected procedure" _f134750_))
        (let _lp134754_ ((_r134756_ _iv134751_) (_rest134757_ _stx134752_))
          (let* ((_g134758134768_ (gx#syntax-e _rest134757_))
                 (_else134761134776_
                  (lambda () (_f134750_ _rest134757_ _r134756_))))
            (let ((_K134764134790_
                   (lambda (_rest134787_ _hd134788_)
                     (_lp134754_
                      (_f134750_ _hd134788_ _r134756_)
                      _rest134787_)))
                  (_K134763134781_ (lambda () _r134756_)))
              (let ((_try-match134760134784_
                     (lambda ()
                       (if (##null? _g134758134768_)
                           (_K134763134781_)
                           (_else134761134776_)))))
                (if (##pair? _g134758134768_)
                    (let ((_tl134766134795_ (##cdr _g134758134768_))
                          (_hd134765134793_ (##car _g134758134768_)))
                      (let ((_hd134798_ _hd134765134793_)
                            (_rest134800_ _tl134766134795_))
                        (_K134764134790_ _rest134800_ _hd134798_)))
                    (_try-match134760134784_))))))))
    (define gx#stx-foldr
      (lambda (_f134699_ _iv134700_ _stx134701_)
        (if (procedure? _f134699_)
            '#!void
            (error '"expected procedure" _f134699_))
        (let _recur134703_ ((_rest134705_ _stx134701_))
          (let* ((_g134706134716_ (gx#syntax-e _rest134705_))
                 (_else134709134724_
                  (lambda () (_f134699_ _rest134705_ _iv134700_))))
            (let ((_K134712134738_
                   (lambda (_rest134735_ _hd134736_)
                     (_f134699_ _hd134736_ (_recur134703_ _rest134735_))))
                  (_K134711134729_ (lambda () _iv134700_)))
              (let ((_try-match134708134732_
                     (lambda ()
                       (if (##null? _g134706134716_)
                           (_K134711134729_)
                           (_else134709134724_)))))
                (if (##pair? _g134706134716_)
                    (let ((_tl134714134743_ (##cdr _g134706134716_))
                          (_hd134713134741_ (##car _g134706134716_)))
                      (let ((_hd134746_ _hd134713134741_)
                            (_rest134748_ _tl134714134743_))
                        (_K134712134738_ _rest134748_ _hd134746_)))
                    (_try-match134708134732_))))))))
    (define gx#stx-reverse
      (lambda (_stx134697_) (gx#stx-foldl cons '() _stx134697_)))
    (define gx#stx-last
      (lambda (_stx134658_)
        (let _lp134660_ ((_rest134662_ _stx134658_))
          (let* ((_g134663134671_ (gx#syntax-e _rest134662_))
                 (_else134665134679_ (lambda () _rest134662_))
                 (_K134667134685_
                  (lambda (_rest134682_ _hd134683_)
                    (if (gx#stx-null? _rest134682_)
                        _hd134683_
                        (_lp134660_ _rest134682_)))))
            (if (##pair? _g134663134671_)
                (let ((_hd134668134688_ (##car _g134663134671_))
                      (_tl134669134690_ (##cdr _g134663134671_)))
                  (let* ((_hd134693_ _hd134668134688_)
                         (_rest134695_ _tl134669134690_))
                    (_K134667134685_ _rest134695_ _hd134693_)))
                (_else134665134679_))))))
    (define gx#stx-last-pair
      (lambda (_stx134629_)
        (let _lp134631_ ((_hd134633_ _stx134629_))
          (let* ((_g134634134641_ (gx#syntax-e _hd134633_))
                 (_E134636134645_
                  (lambda () (error '"No clause matching" _g134634134641_)))
                 (_K134637134650_
                  (lambda (_rest134648_)
                    (if (gx#stx-pair? _rest134648_)
                        (_lp134631_ _rest134648_)
                        _hd134633_))))
            (if (##pair? _g134634134641_)
                (let* ((_tl134639134653_ (##cdr _g134634134641_))
                       (_rest134656_ _tl134639134653_))
                  (_K134637134650_ _rest134656_))
                (_E134636134645_))))))
    (define gx#stx-list-tail
      (lambda (_stx134598_ _k134599_)
        (let _lp134601_ ((_rest134603_ _stx134598_) (_k134604_ _k134599_))
          (if (fxpositive? _k134604_)
              (let* ((_g134605134612_ (gx#syntax-e _rest134603_))
                     (_E134607134616_
                      (lambda ()
                        (error '"No clause matching" _g134605134612_)))
                     (_K134608134621_
                      (lambda (_rest134619_)
                        (_lp134601_ _rest134619_ (fx- _k134604_ '1)))))
                (if (##pair? _g134605134612_)
                    (let* ((_tl134610134624_ (##cdr _g134605134612_))
                           (_rest134627_ _tl134610134624_))
                      (_K134608134621_ _rest134627_))
                    (_E134607134616_)))
              _rest134603_))))
    (define gx#stx-list-ref
      (lambda (_stx134595_ _k134596_)
        (gx#stx-car (gx#stx-list-tail _stx134595_ _k134596_))))
    (define gx#stx-plist?__%
      (lambda (_stx134507_ _key?134508_)
        (if (procedure? _key?134508_)
            '#!void
            (error '"expected procedure" _key?134508_))
        (let _lp134510_ ((_rest134512_ _stx134507_))
          (let* ((_g134513134523_ (gx#stx-e _rest134512_))
                 (_else134516134531_ (lambda () '#f)))
            (let ((_K134519134573_
                   (lambda (_rest134542_ _hd134543_)
                     (if (_key?134508_ _hd134543_)
                         (let* ((_g134544134552_ (gx#stx-e _rest134542_))
                                (_else134546134560_ (lambda () '#f))
                                (_K134548134565_
                                 (lambda (_rest134563_)
                                   (_lp134510_ _rest134563_))))
                           (if (##pair? _g134544134552_)
                               (let* ((_tl134550134568_
                                       (##cdr _g134544134552_))
                                      (_rest134571_ _tl134550134568_))
                                 (_lp134510_ _rest134571_))
                               (_else134546134560_)))
                         '#f)))
                  (_K134518134536_ (lambda () '#t)))
              (let ((_try-match134515134539_
                     (lambda ()
                       (if (##null? _g134513134523_)
                           (_K134518134536_)
                           (_else134516134531_)))))
                (if (##pair? _g134513134523_)
                    (let ((_tl134521134578_ (##cdr _g134513134523_))
                          (_hd134520134576_ (##car _g134513134523_)))
                      (let ((_hd134581_ _hd134520134576_)
                            (_rest134583_ _tl134521134578_))
                        (_K134519134573_ _rest134583_ _hd134581_)))
                    (_try-match134515134539_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134588_)
        (let ((_key?134590_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134588_ _key?134590_))))
    (define gx#stx-plist?
      (lambda _g140164_
        (let ((_g140163_ (##length _g140164_)))
          (cond ((##fx= _g140163_ 1)
                 (apply (lambda (_stx134588_) (gx#stx-plist?__0 _stx134588_))
                        _g140164_))
                ((##fx= _g140163_ 2)
                 (apply (lambda (_stx134592_ _key?134593_)
                          (gx#stx-plist?__% _stx134592_ _key?134593_))
                        _g140164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140164_))))))
    (define gx#stx-getq__%
      (lambda (_key134425_ _stx134426_ _key=?134427_)
        (if (procedure? _key=?134427_)
            '#!void
            (error '"expected procedure" _key=?134427_))
        (let _lp134429_ ((_rest134431_ _stx134426_))
          (let* ((_g134432134440_ (gx#syntax-e _rest134431_))
                 (_else134434134448_ (lambda () '#f))
                 (_K134436134482_
                  (lambda (_rest134451_ _hd134452_)
                    (let* ((_g134453134460_ (gx#syntax-e _rest134451_))
                           (_E134455134464_
                            (lambda ()
                              (error '"No clause matching" _g134453134460_)))
                           (_K134456134470_
                            (lambda (_rest134467_ _val134468_)
                              (if (_key=?134427_ _hd134452_ _key134425_)
                                  _val134468_
                                  (_lp134429_ _rest134467_)))))
                      (if (##pair? _g134453134460_)
                          (let ((_hd134457134473_ (##car _g134453134460_))
                                (_tl134458134475_ (##cdr _g134453134460_)))
                            (let* ((_val134478_ _hd134457134473_)
                                   (_rest134480_ _tl134458134475_))
                              (_K134456134470_ _rest134480_ _val134478_)))
                          (_E134455134464_))))))
            (if (##pair? _g134432134440_)
                (let ((_hd134437134485_ (##car _g134432134440_))
                      (_tl134438134487_ (##cdr _g134432134440_)))
                  (let* ((_hd134490_ _hd134437134485_)
                         (_rest134492_ _tl134438134487_))
                    (_K134436134482_ _rest134492_ _hd134490_)))
                (_else134434134448_))))))
    (define gx#stx-getq__0
      (lambda (_key134497_ _stx134498_)
        (let ((_key=?134500_ gx#stx-eq?))
          (gx#stx-getq__% _key134497_ _stx134498_ _key=?134500_))))
    (define gx#stx-getq
      (lambda _g140166_
        (let ((_g140165_ (##length _g140166_)))
          (cond ((##fx= _g140165_ 2)
                 (apply (lambda (_key134497_ _stx134498_)
                          (gx#stx-getq__0 _key134497_ _stx134498_))
                        _g140166_))
                ((##fx= _g140165_ 3)
                 (apply (lambda (_key134502_ _stx134503_ _key=?134504_)
                          (gx#stx-getq__%
                           _key134502_
                           _stx134503_
                           _key=?134504_))
                        _g140166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140166_))))))))
