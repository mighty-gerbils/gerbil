(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708370113)
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
      (lambda _$args80397_
        (apply make-instance gx#identifier-wrap::t _$args80397_)))
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
      (lambda _$args80394_
        (apply make-instance gx#syntax-wrap::t _$args80394_)))
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
      (lambda _$args80391_
        (apply make-instance gx#syntax-quote::t _$args80391_)))
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
      (lambda (_stx80389_) (symbol? (gx#stx-e _stx80389_))))
    (define gx#identifier-quote?
      (lambda (_stx80387_)
        (if (##structure-direct-instance-of? _stx80387_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx80387_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx80385_)
        (if (##structure-direct-instance-of? _stx80385_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx80385_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx80385_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx80383_)
        (if (##structure-direct-instance-of? _stx80383_ 'gx#syntax-quote::t)
            _stx80383_
            (if (##structure-direct-instance-of? _stx80383_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx80383_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx80366_)
        (if (##structure-direct-instance-of? _stx80366_ 'gx#syntax-wrap::t)
            (let _lp80368_ ((_e80370_
                             (##unchecked-structure-ref
                              _stx80366_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks80371_
                             (cons (##unchecked-structure-ref
                                    _stx80366_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e80370_)
                  (let ((_$e80373_ (##type-id (##structure-type _e80370_))))
                    (if (eq? 'gx#syntax-wrap::t _$e80373_)
                        (_lp80368_
                         (##unchecked-structure-ref _e80370_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e80370_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks80371_))
                        (if (or (eq? 'gx#syntax-quote::t _$e80373_)
                                (eq? 'gx#identifier-wrap::t _$e80373_))
                            (##unchecked-structure-ref
                             _e80370_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e80373_)
                                (_lp80368_
                                 (##unchecked-structure-ref
                                  _e80370_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks80371_)
                                _e80370_))))
                  (if (null? _marks80371_)
                      _e80370_
                      (if (pair? _e80370_)
                          (cons (gx#stx-wrap (car _e80370_) _marks80371_)
                                (gx#stx-wrap (cdr _e80370_) _marks80371_))
                          (if (vector? _e80370_)
                              (vector-map
                               (lambda (_g8037880380_)
                                 (gx#stx-wrap _g8037880380_ _marks80371_))
                               _e80370_)
                              (if (box? _e80370_)
                                  (box (gx#stx-wrap
                                        (unbox _e80370_)
                                        _marks80371_))
                                  _e80370_))))))
            (if (##structure-instance-of? _stx80366_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80366_ '1 gx#AST::t '#f)
                _stx80366_))))
    (define gx#syntax->datum
      (lambda (_stx80364_)
        (if (##structure-instance-of? _stx80364_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx80364_ '1 gx#AST::t '#f))
            (if (pair? _stx80364_)
                (cons (gx#syntax->datum (car _stx80364_))
                      (gx#syntax->datum (cdr _stx80364_)))
                (if (vector? _stx80364_)
                    (vector-map gx#syntax->datum _stx80364_)
                    (if (box? _stx80364_)
                        (box (gx#syntax->datum (unbox _stx80364_)))
                        _stx80364_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80307_ _datum80308_ _src80309_ _quote?80310_)
        (letrec ((_wrap-datum80312_
                  (lambda (_e80336_ _marks80337_)
                    (_wrap-inner80314_
                     _e80336_
                     (lambda (_g8033880340_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8033880340_
                        _src80309_
                        _marks80337_)))))
                 (_wrap-quote80313_
                  (lambda (_e80328_ _ctx80329_ _marks80330_)
                    (_wrap-inner80314_
                     _e80328_
                     (lambda (_g8033180333_)
                       (##structure
                        gx#syntax-quote::t
                        _g8033180333_
                        _src80309_
                        _ctx80329_
                        _marks80330_)))))
                 (_wrap-inner80314_
                  (lambda (_e80321_ _wrap-e80322_)
                    (let _recur80324_ ((_e80326_ _e80321_))
                      (if (symbol? _e80326_)
                          (_wrap-e80322_ _e80326_)
                          (if (pair? _e80326_)
                              (cons (_recur80324_ (car _e80326_))
                                    (_recur80324_ (cdr _e80326_)))
                              (if (vector? _e80326_)
                                  (vector-map _recur80324_ _e80326_)
                                  (if (box? _e80326_)
                                      (box (_recur80324_ (unbox _e80326_)))
                                      _e80326_)))))))
                 (_wrap-outer80315_
                  (lambda (_e80319_)
                    (if (##structure-instance-of? _e80319_ 'gerbil#AST::t)
                        _e80319_
                        (##structure gx#AST::t _e80319_ _src80309_)))))
          (if (##structure-instance-of? _datum80308_ 'gerbil#AST::t)
              _datum80308_
              (if (not _stx80307_)
                  (##structure gx#AST::t _datum80308_ _src80309_)
                  (if (gx#identifier? _stx80307_)
                      (let ((_stx80317_ (gx#stx-unwrap__0 _stx80307_)))
                        (_wrap-outer80315_
                         (if (##structure-direct-instance-of?
                              _stx80317_
                              'gx#syntax-quote::t)
                             (if _quote?80310_
                                 (_wrap-quote80313_
                                  _datum80308_
                                  (##unchecked-structure-ref
                                   _stx80317_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80317_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80312_
                                  _datum80308_
                                  (##unchecked-structure-ref
                                   _stx80317_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80312_
                              _datum80308_
                              (##unchecked-structure-ref
                               _stx80317_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80307_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80346_ _datum80347_)
        (let* ((_src80349_ '#f) (_quote?80351_ '#t))
          (gx#datum->syntax__%
           _stx80346_
           _datum80347_
           _src80349_
           _quote?80351_))))
    (define gx#datum->syntax__1
      (lambda (_stx80353_ _datum80354_ _src80355_)
        (let ((_quote?80357_ '#t))
          (gx#datum->syntax__%
           _stx80353_
           _datum80354_
           _src80355_
           _quote?80357_))))
    (define gx#datum->syntax
      (lambda _g80478_
        (let ((_g80477_ (##length _g80478_)))
          (cond ((##fx= _g80477_ 2)
                 (apply (lambda (_stx80346_ _datum80347_)
                          (gx#datum->syntax__0 _stx80346_ _datum80347_))
                        _g80478_))
                ((##fx= _g80477_ 3)
                 (apply (lambda (_stx80353_ _datum80354_ _src80355_)
                          (gx#datum->syntax__1
                           _stx80353_
                           _datum80354_
                           _src80355_))
                        _g80478_))
                ((##fx= _g80477_ 4)
                 (apply (lambda (_stx80359_
                                 _datum80360_
                                 _src80361_
                                 _quote?80362_)
                          (gx#datum->syntax__%
                           _stx80359_
                           _datum80360_
                           _src80361_
                           _quote?80362_))
                        _g80478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g80478_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80283_ _marks80284_)
        (let _lp80286_ ((_e80288_ _stx80283_)
                        (_marks80289_ _marks80284_)
                        (_src80290_ (gx#stx-source _stx80283_)))
          (if (##structure-direct-instance-of? _e80288_ 'gx#syntax-wrap::t)
              (_lp80286_
               (##unchecked-structure-ref _e80288_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80288_ '3 gx#syntax-wrap::t '#f)
                _marks80289_)
               (##unchecked-structure-ref _e80288_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80288_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80289_)
                      _e80288_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80288_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80288_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80288_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80289_)))
                  (if (##structure-direct-instance-of?
                       _e80288_
                       'gx#syntax-quote::t)
                      _e80288_
                      (if (##structure-instance-of? _e80288_ 'gerbil#AST::t)
                          (_lp80286_
                           (##unchecked-structure-ref
                            _e80288_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80289_
                           (##unchecked-structure-ref
                            _e80288_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80288_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80288_
                               _src80290_
                               (reverse _marks80289_))
                              (if (null? _marks80289_)
                                  _e80288_
                                  (if (pair? _e80288_)
                                      (cons (gx#stx-wrap
                                             (car _e80288_)
                                             _marks80289_)
                                            (gx#stx-wrap
                                             (cdr _e80288_)
                                             _marks80289_))
                                      (if (vector? _e80288_)
                                          (vector-map
                                           (lambda (_g8029180293_)
                                             (gx#stx-wrap
                                              _g8029180293_
                                              _marks80289_))
                                           _e80288_)
                                          (if (box? _e80288_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80288_)
                                                    _marks80289_))
                                              _e80288_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80299_)
        (let ((_marks80301_ '())) (gx#stx-unwrap__% _stx80299_ _marks80301_))))
    (define gx#stx-unwrap
      (lambda _g80480_
        (let ((_g80479_ (##length _g80480_)))
          (cond ((##fx= _g80479_ 1)
                 (apply (lambda (_stx80299_) (gx#stx-unwrap__0 _stx80299_))
                        _g80480_))
                ((##fx= _g80479_ 2)
                 (apply (lambda (_stx80303_ _marks80304_)
                          (gx#stx-unwrap__% _stx80303_ _marks80304_))
                        _g80480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g80480_))))))
    (define gx#stx-wrap
      (lambda (_stx80276_ _marks80277_)
        (foldl1 (lambda (_mark80279_ _stx80280_)
                  (gx#stx-apply-mark _stx80280_ _mark80279_))
                _stx80276_
                _marks80277_)))
    (define gx#stx-rewrap
      (lambda (_stx80270_ _marks80271_)
        (foldr1 (lambda (_mark80273_ _stx80274_)
                  (gx#stx-apply-mark _stx80274_ _mark80273_))
                _stx80270_
                _marks80271_)))
    (define gx#stx-apply-mark
      (lambda (_stx80267_ _mark80268_)
        (if (##structure-direct-instance-of? _stx80267_ 'gx#syntax-quote::t)
            _stx80267_
            (if (and (##structure-direct-instance-of?
                      _stx80267_
                      'gx#syntax-wrap::t)
                     (eq? _mark80268_
                          (##unchecked-structure-ref
                           _stx80267_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80267_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80267_
                 (gx#stx-source _stx80267_)
                 _mark80268_)))))
    (define gx#apply-mark
      (lambda (_mark80231_ _marks80232_)
        (let* ((_marks8023380241_ _marks80232_)
               (_else8023580249_ (lambda () (cons _mark80231_ _marks80232_)))
               (_K8023780255_
                (lambda (_rest80252_ _hd80253_)
                  (if (eq? _mark80231_ _hd80253_)
                      _rest80252_
                      (cons _mark80231_ _marks80232_)))))
          (if (##pair? _marks8023380241_)
              (let ((_hd8023880258_ (##car _marks8023380241_))
                    (_tl8023980260_ (##cdr _marks8023380241_)))
                (let* ((_hd80263_ _hd8023880258_) (_rest80265_ _tl8023980260_))
                  (_K8023780255_ _rest80265_ _hd80263_)))
              (_else8023580249_)))))
    (define gx#stx-e
      (lambda (_stx80229_)
        (if (##structure-direct-instance-of? _stx80229_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80229_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80229_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80229_ '1 gx#AST::t '#f)
                _stx80229_))))
    (define gx#stx-source
      (lambda (_stx80227_)
        (if (##structure-instance-of? _stx80227_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80227_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80221_ _src80222_)
        (if (or (##structure-instance-of? _stx80221_ 'gerbil#AST::t)
                (not _src80222_))
            _stx80221_
            (##structure gx#AST::t _stx80221_ _src80222_))))
    (define gx#stx-datum?
      (lambda (_stx80219_) (gx#self-quoting? (gx#stx-e _stx80219_))))
    (define gx#self-quoting?
      (lambda (_x80202_)
        (let ((_$e80204_ (immediate? _x80202_)))
          (if _$e80204_
              _$e80204_
              (let ((_$e80207_ (number? _x80202_)))
                (if _$e80207_
                    _$e80207_
                    (let ((_$e80210_ (keyword? _x80202_)))
                      (if _$e80210_
                          _$e80210_
                          (let ((_$e80213_ (string? _x80202_)))
                            (if _$e80213_
                                _$e80213_
                                (let ((_$e80216_ (vector? _x80202_)))
                                  (if _$e80216_
                                      _$e80216_
                                      (u8vector? _x80202_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80200_) (boolean? (gx#stx-e _e80200_))))
    (define gx#stx-keyword? (lambda (_e80198_) (keyword? (gx#stx-e _e80198_))))
    (define gx#stx-char? (lambda (_e80196_) (char? (gx#stx-e _e80196_))))
    (define gx#stx-number? (lambda (_e80194_) (number? (gx#stx-e _e80194_))))
    (define gx#stx-fixnum? (lambda (_e80192_) (fixnum? (gx#stx-e _e80192_))))
    (define gx#stx-string? (lambda (_e80190_) (string? (gx#stx-e _e80190_))))
    (define gx#stx-null? (lambda (_e80188_) (null? (gx#stx-e _e80188_))))
    (define gx#stx-pair? (lambda (_e80186_) (pair? (gx#stx-e _e80186_))))
    (define gx#stx-list?
      (lambda (_e80148_)
        (let* ((_g8014980158_ (gx#stx-e _e80148_))
               (_E8015280162_
                (lambda () (error '"No clause matching" _g8014980158_))))
          (let ((_K8015480178_
                 (lambda (_rest80176_) (gx#stx-list? _rest80176_)))
                (_K8015380168_ (lambda (_tail80166_) (null? _tail80166_))))
            (if (##pair? _g8014980158_)
                (let* ((_tl8015680181_ (##cdr _g8014980158_))
                       (_rest80184_ _tl8015680181_))
                  (gx#stx-list? _rest80184_))
                (let ((_tail80171_ _g8014980158_)) (null? _tail80171_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80141_)
        (let* ((_e80143_ (gx#stx-e _e80141_)) (_$e80145_ (pair? _e80143_)))
          (if _$e80145_ _$e80145_ (null? _e80143_)))))
    (define gx#stx-vector? (lambda (_e80139_) (vector? (gx#stx-e _e80139_))))
    (define gx#stx-box? (lambda (_e80137_) (box? (gx#stx-e _e80137_))))
    (define gx#stx-eq?
      (lambda (_x80134_ _y80135_)
        (eq? (gx#stx-e _x80134_) (gx#stx-e _y80135_))))
    (define gx#stx-eqv?
      (lambda (_x80131_ _y80132_)
        (eqv? (gx#stx-e _x80131_) (gx#stx-e _y80132_))))
    (define gx#stx-equal?
      (lambda (_x80128_ _y80129_)
        (equal? (gx#stx-e _x80128_) (gx#stx-e _y80129_))))
    (define gx#stx-false? (lambda (_x80126_) (not (gx#stx-e _x80126_))))
    (define gx#stx-identifier
      (lambda (_template80123_ . _args80124_)
        (gx#datum->syntax__1
         _template80123_
         (apply make-symbol (gx#syntax->datum _args80124_))
         (gx#stx-source _template80123_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80121_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80121_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80119_)
        (if (##structure-direct-instance-of? _stx80119_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80119_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80119_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80119_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80119_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80115_)
        (let ((_stx80117_ (gx#stx-unwrap__0 _stx80115_)))
          (if (gx#identifier-quote? _stx80117_)
              (##unchecked-structure-ref _stx80117_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80070_)
        (let* ((_g8007180081_ (gx#stx-e _stx80070_))
               (_else8007480089_ (lambda () '#f)))
          (let ((_K8007780103_
                 (lambda (_rest80100_ _hd80101_)
                   (if (gx#identifier? _hd80101_)
                       (gx#identifier-list? _rest80100_)
                       '#f)))
                (_K8007680094_ (lambda () '#t)))
            (let ((_try-match8007380097_
                   (lambda ()
                     (if (##null? _g8007180081_)
                         (_K8007680094_)
                         (_else8007480089_)))))
              (if (##pair? _g8007180081_)
                  (let ((_tl8007980108_ (##cdr _g8007180081_))
                        (_hd8007880106_ (##car _g8007180081_)))
                    (let ((_hd80111_ _hd8007880106_)
                          (_rest80113_ _tl8007980108_))
                      (_K8007780103_ _rest80113_ _hd80111_)))
                  (_try-match8007380097_)))))))
    (define gx#genident__%
      (lambda (_e80047_ _src80048_)
        (gx#stx-wrap-source
         (gensym (let ((_e80050_ (gx#stx-e _e80047_)))
                   (if (interned-symbol? _e80050_) _e80050_ 'g)))
         (let ((_$e80052_ (gx#stx-source _e80047_)))
           (if _$e80052_ _$e80052_ _src80048_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80059_ 'g) (_src80061_ '#f))
          (gx#genident__% _e80059_ _src80061_))))
    (define gx#genident__1
      (lambda (_e80063_)
        (let ((_src80065_ '#f)) (gx#genident__% _e80063_ _src80065_))))
    (define gx#genident
      (lambda _g80482_
        (let ((_g80481_ (##length _g80482_)))
          (cond ((##fx= _g80481_ 0)
                 (apply (lambda () (gx#genident__0)) _g80482_))
                ((##fx= _g80481_ 1)
                 (apply (lambda (_e80063_) (gx#genident__1 _e80063_))
                        _g80482_))
                ((##fx= _g80481_ 2)
                 (apply (lambda (_e80067_ _src80068_)
                          (gx#genident__% _e80067_ _src80068_))
                        _g80482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g80482_))))))
    (define gx#gentemps
      (lambda (_stx-lst80044_) (gx#stx-map1 gx#genident _stx-lst80044_)))
    (define gx#syntax->list
      (lambda (_stx80042_) (gx#stx-map1 values _stx80042_)))
    (define gx#stx-car
      (lambda (_stx80039_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80039_)))))
    (define gx#stx-cdr
      (lambda (_stx80036_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80036_)))))
    (define gx#stx-length
      (lambda (_stx80001_)
        (let _lp80003_ ((_rest80005_ _stx80001_) (_n80006_ '0))
          (let* ((_g8000780015_ (gx#stx-e _rest80005_))
                 (_else8000980023_ (lambda () _n80006_))
                 (_K8001180028_
                  (lambda (_rest80026_)
                    (_lp80003_ _rest80026_ (fx+ _n80006_ '1)))))
            (if (##pair? _g8000780015_)
                (let* ((_tl8001380031_ (##cdr _g8000780015_))
                       (_rest80034_ _tl8001380031_))
                  (_K8001180028_ _rest80034_))
                (_else8000980023_))))))
    (define gx#stx-for-each
      (lambda _g80484_
        (let ((_g80483_ (##length _g80484_)))
          (cond ((##fx= _g80483_ 2)
                 (apply (lambda (_f79994_ _stx79995_)
                          (gx#stx-for-each1 _f79994_ _stx79995_))
                        _g80484_))
                ((##fx= _g80483_ 3)
                 (apply (lambda (_f79997_ _xstx79998_ _ystx79999_)
                          (gx#stx-for-each2 _f79997_ _xstx79998_ _ystx79999_))
                        _g80484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g80484_))))))
    (define gx#stx-for-each1
      (lambda (_f79944_ _stx79945_)
        (if (procedure? _f79944_)
            '#!void
            (error '"expected procedure" _f79944_))
        (let _lp79947_ ((_rest79949_ _stx79945_))
          (let* ((_g7995079960_ (gx#syntax-e _rest79949_))
                 (_else7995379968_ (lambda () (_f79944_ _rest79949_))))
            (let ((_K7995679982_
                   (lambda (_rest79979_ _hd79980_)
                     (_f79944_ _hd79980_)
                     (_lp79947_ _rest79979_)))
                  (_K7995579973_ (lambda () '#!void)))
              (let ((_try-match7995279976_
                     (lambda ()
                       (if (##null? _g7995079960_)
                           (_K7995579973_)
                           (_else7995379968_)))))
                (if (##pair? _g7995079960_)
                    (let ((_tl7995879987_ (##cdr _g7995079960_))
                          (_hd7995779985_ (##car _g7995079960_)))
                      (let ((_hd79990_ _hd7995779985_)
                            (_rest79992_ _tl7995879987_))
                        (_K7995679982_ _rest79992_ _hd79990_)))
                    (_try-match7995279976_))))))))
    (define gx#stx-for-each2
      (lambda (_f79849_ _xstx79850_ _ystx79851_)
        (if (procedure? _f79849_)
            '#!void
            (error '"expected procedure" _f79849_))
        (let _lp79853_ ((_xrest79855_ _xstx79850_) (_yrest79856_ _ystx79851_))
          (let* ((_g7985779867_ (gx#syntax-e _xrest79855_))
                 (_else7986079875_ (lambda () '#!void)))
            (let ((_K7986379932_
                   (lambda (_xrest79901_ _xhd79902_)
                     (let* ((_g7990379910_ (gx#syntax-e _yrest79856_))
                            (_E7990579914_
                             (lambda ()
                               (error '"No clause matching" _g7990379910_)))
                            (_K7990679920_
                             (lambda (_yrest79917_ _yhd79918_)
                               (_f79849_ _xhd79902_ _yhd79918_)
                               (_lp79853_ _xrest79901_ _yrest79917_))))
                       (if (##pair? _g7990379910_)
                           (let ((_hd7990779923_ (##car _g7990379910_))
                                 (_tl7990879925_ (##cdr _g7990379910_)))
                             (let* ((_yhd79928_ _hd7990779923_)
                                    (_yrest79930_ _tl7990879925_))
                               (_K7990679920_ _yrest79930_ _yhd79928_)))
                           (_E7990579914_)))))
                  (_K7986279895_
                   (lambda ()
                     (let* ((_yrest7987979884_ _yrest79856_)
                            (_E7988179888_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7987979884_)))
                            (_K7988279892_
                             (lambda () (_f79849_ _xrest79855_ _yrest79856_))))
                       (if (not (gx#stx-null? _yrest7987979884_))
                           (_K7988279892_)
                           (_E7988179888_))))))
              (let ((_try-match7985979898_
                     (lambda ()
                       (if (not (null? _g7985779867_))
                           (_K7986279895_)
                           (_else7986079875_)))))
                (if (##pair? _g7985779867_)
                    (let ((_tl7986579937_ (##cdr _g7985779867_))
                          (_hd7986479935_ (##car _g7985779867_)))
                      (let ((_xhd79940_ _hd7986479935_)
                            (_xrest79942_ _tl7986579937_))
                        (_K7986379932_ _xrest79942_ _xhd79940_)))
                    (_try-match7985979898_))))))))
    (define gx#stx-map
      (lambda _g80486_
        (let ((_g80485_ (##length _g80486_)))
          (cond ((##fx= _g80485_ 2)
                 (apply (lambda (_f79842_ _stx79843_)
                          (gx#stx-map1 _f79842_ _stx79843_))
                        _g80486_))
                ((##fx= _g80485_ 3)
                 (apply (lambda (_f79845_ _xstx79846_ _ystx79847_)
                          (gx#stx-map2 _f79845_ _xstx79846_ _ystx79847_))
                        _g80486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g80486_))))))
    (define gx#stx-map1
      (lambda (_f79792_ _stx79793_)
        (if (procedure? _f79792_)
            '#!void
            (error '"expected procedure" _f79792_))
        (let _recur79795_ ((_rest79797_ _stx79793_))
          (let* ((_g7979879808_ (gx#syntax-e _rest79797_))
                 (_else7980179816_ (lambda () (_f79792_ _rest79797_))))
            (let ((_K7980479830_
                   (lambda (_rest79827_ _hd79828_)
                     (cons (_f79792_ _hd79828_) (_recur79795_ _rest79827_))))
                  (_K7980379821_ (lambda () '())))
              (let ((_try-match7980079824_
                     (lambda ()
                       (if (##null? _g7979879808_)
                           (_K7980379821_)
                           (_else7980179816_)))))
                (if (##pair? _g7979879808_)
                    (let ((_tl7980679835_ (##cdr _g7979879808_))
                          (_hd7980579833_ (##car _g7979879808_)))
                      (let ((_hd79838_ _hd7980579833_)
                            (_rest79840_ _tl7980679835_))
                        (_K7980479830_ _rest79840_ _hd79838_)))
                    (_try-match7980079824_))))))))
    (define gx#stx-map2
      (lambda (_f79697_ _xstx79698_ _ystx79699_)
        (if (procedure? _f79697_)
            '#!void
            (error '"expected procedure" _f79697_))
        (let _recur79701_ ((_xrest79703_ _xstx79698_)
                           (_yrest79704_ _ystx79699_))
          (let* ((_g7970579715_ (gx#syntax-e _xrest79703_))
                 (_else7970879723_ (lambda () '())))
            (let ((_K7971179780_
                   (lambda (_xrest79749_ _xhd79750_)
                     (let* ((_g7975179758_ (gx#syntax-e _yrest79704_))
                            (_E7975379762_
                             (lambda ()
                               (error '"No clause matching" _g7975179758_)))
                            (_K7975479768_
                             (lambda (_yrest79765_ _yhd79766_)
                               (cons (_f79697_ _xhd79750_ _yhd79766_)
                                     (_recur79701_
                                      _xrest79749_
                                      _yrest79765_)))))
                       (if (##pair? _g7975179758_)
                           (let ((_hd7975579771_ (##car _g7975179758_))
                                 (_tl7975679773_ (##cdr _g7975179758_)))
                             (let* ((_yhd79776_ _hd7975579771_)
                                    (_yrest79778_ _tl7975679773_))
                               (_K7975479768_ _yrest79778_ _yhd79776_)))
                           (_E7975379762_)))))
                  (_K7971079743_
                   (lambda ()
                     (let* ((_yrest7972779732_ _yrest79704_)
                            (_E7972979736_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7972779732_)))
                            (_K7973079740_
                             (lambda () (_f79697_ _xrest79703_ _yrest79704_))))
                       (if (not (gx#stx-null? _yrest7972779732_))
                           (_K7973079740_)
                           (_E7972979736_))))))
              (let ((_try-match7970779746_
                     (lambda ()
                       (if (not (null? _g7970579715_))
                           (_K7971079743_)
                           (_else7970879723_)))))
                (if (##pair? _g7970579715_)
                    (let ((_tl7971379785_ (##cdr _g7970579715_))
                          (_hd7971279783_ (##car _g7970579715_)))
                      (let ((_xhd79788_ _hd7971279783_)
                            (_xrest79790_ _tl7971379785_))
                        (_K7971179780_ _xrest79790_ _xhd79788_)))
                    (_try-match7970779746_))))))))
    (define gx#stx-andmap
      (lambda (_f79647_ _stx79648_)
        (if (procedure? _f79647_)
            '#!void
            (error '"expected procedure" _f79647_))
        (let _lp79650_ ((_rest79652_ _stx79648_))
          (let* ((_g7965379663_ (gx#syntax-e _rest79652_))
                 (_else7965679671_ (lambda () (_f79647_ _rest79652_))))
            (let ((_K7965979685_
                   (lambda (_rest79682_ _hd79683_)
                     (if (_f79647_ _hd79683_) (_lp79650_ _rest79682_) '#f)))
                  (_K7965879676_ (lambda () '#t)))
              (let ((_try-match7965579679_
                     (lambda ()
                       (if (##null? _g7965379663_)
                           (_K7965879676_)
                           (_else7965679671_)))))
                (if (##pair? _g7965379663_)
                    (let ((_tl7966179690_ (##cdr _g7965379663_))
                          (_hd7966079688_ (##car _g7965379663_)))
                      (let ((_hd79693_ _hd7966079688_)
                            (_rest79695_ _tl7966179690_))
                        (_K7965979685_ _rest79695_ _hd79693_)))
                    (_try-match7965579679_))))))))
    (define gx#stx-ormap
      (lambda (_f79594_ _stx79595_)
        (if (procedure? _f79594_)
            '#!void
            (error '"expected procedure" _f79594_))
        (let _lp79597_ ((_rest79599_ _stx79595_))
          (let* ((_g7960079610_ (gx#syntax-e _rest79599_))
                 (_else7960379618_ (lambda () (_f79594_ _rest79599_))))
            (let ((_K7960679635_
                   (lambda (_rest79629_ _hd79630_)
                     (let ((_$e79632_ (_f79594_ _hd79630_)))
                       (if _$e79632_ _$e79632_ (_lp79597_ _rest79629_)))))
                  (_K7960579623_ (lambda () '#f)))
              (let ((_try-match7960279626_
                     (lambda ()
                       (if (##null? _g7960079610_)
                           (_K7960579623_)
                           (_else7960379618_)))))
                (if (##pair? _g7960079610_)
                    (let ((_tl7960879640_ (##cdr _g7960079610_))
                          (_hd7960779638_ (##car _g7960079610_)))
                      (let ((_hd79643_ _hd7960779638_)
                            (_rest79645_ _tl7960879640_))
                        (_K7960679635_ _rest79645_ _hd79643_)))
                    (_try-match7960279626_))))))))
    (define gx#stx-foldl
      (lambda (_f79542_ _iv79543_ _stx79544_)
        (if (procedure? _f79542_)
            '#!void
            (error '"expected procedure" _f79542_))
        (let _lp79546_ ((_r79548_ _iv79543_) (_rest79549_ _stx79544_))
          (let* ((_g7955079560_ (gx#syntax-e _rest79549_))
                 (_else7955379568_
                  (lambda () (_f79542_ _rest79549_ _r79548_))))
            (let ((_K7955679582_
                   (lambda (_rest79579_ _hd79580_)
                     (_lp79546_ (_f79542_ _hd79580_ _r79548_) _rest79579_)))
                  (_K7955579573_ (lambda () _r79548_)))
              (let ((_try-match7955279576_
                     (lambda ()
                       (if (##null? _g7955079560_)
                           (_K7955579573_)
                           (_else7955379568_)))))
                (if (##pair? _g7955079560_)
                    (let ((_tl7955879587_ (##cdr _g7955079560_))
                          (_hd7955779585_ (##car _g7955079560_)))
                      (let ((_hd79590_ _hd7955779585_)
                            (_rest79592_ _tl7955879587_))
                        (_K7955679582_ _rest79592_ _hd79590_)))
                    (_try-match7955279576_))))))))
    (define gx#stx-foldr
      (lambda (_f79491_ _iv79492_ _stx79493_)
        (if (procedure? _f79491_)
            '#!void
            (error '"expected procedure" _f79491_))
        (let _recur79495_ ((_rest79497_ _stx79493_))
          (let* ((_g7949879508_ (gx#syntax-e _rest79497_))
                 (_else7950179516_
                  (lambda () (_f79491_ _rest79497_ _iv79492_))))
            (let ((_K7950479530_
                   (lambda (_rest79527_ _hd79528_)
                     (_f79491_ _hd79528_ (_recur79495_ _rest79527_))))
                  (_K7950379521_ (lambda () _iv79492_)))
              (let ((_try-match7950079524_
                     (lambda ()
                       (if (##null? _g7949879508_)
                           (_K7950379521_)
                           (_else7950179516_)))))
                (if (##pair? _g7949879508_)
                    (let ((_tl7950679535_ (##cdr _g7949879508_))
                          (_hd7950579533_ (##car _g7949879508_)))
                      (let ((_hd79538_ _hd7950579533_)
                            (_rest79540_ _tl7950679535_))
                        (_K7950479530_ _rest79540_ _hd79538_)))
                    (_try-match7950079524_))))))))
    (define gx#stx-reverse
      (lambda (_stx79489_) (gx#stx-foldl cons '() _stx79489_)))
    (define gx#stx-last
      (lambda (_stx79450_)
        (let _lp79452_ ((_rest79454_ _stx79450_))
          (let* ((_g7945579463_ (gx#syntax-e _rest79454_))
                 (_else7945779471_ (lambda () _rest79454_))
                 (_K7945979477_
                  (lambda (_rest79474_ _hd79475_)
                    (if (gx#stx-null? _rest79474_)
                        _hd79475_
                        (_lp79452_ _rest79474_)))))
            (if (##pair? _g7945579463_)
                (let ((_hd7946079480_ (##car _g7945579463_))
                      (_tl7946179482_ (##cdr _g7945579463_)))
                  (let* ((_hd79485_ _hd7946079480_)
                         (_rest79487_ _tl7946179482_))
                    (_K7945979477_ _rest79487_ _hd79485_)))
                (_else7945779471_))))))
    (define gx#stx-last-pair
      (lambda (_stx79421_)
        (let _lp79423_ ((_hd79425_ _stx79421_))
          (let* ((_g7942679433_ (gx#syntax-e _hd79425_))
                 (_E7942879437_
                  (lambda () (error '"No clause matching" _g7942679433_)))
                 (_K7942979442_
                  (lambda (_rest79440_)
                    (if (gx#stx-pair? _rest79440_)
                        (_lp79423_ _rest79440_)
                        _hd79425_))))
            (if (##pair? _g7942679433_)
                (let* ((_tl7943179445_ (##cdr _g7942679433_))
                       (_rest79448_ _tl7943179445_))
                  (_K7942979442_ _rest79448_))
                (_E7942879437_))))))
    (define gx#stx-list-tail
      (lambda (_stx79390_ _k79391_)
        (let _lp79393_ ((_rest79395_ _stx79390_) (_k79396_ _k79391_))
          (if (fxpositive? _k79396_)
              (let* ((_g7939779404_ (gx#syntax-e _rest79395_))
                     (_E7939979408_
                      (lambda () (error '"No clause matching" _g7939779404_)))
                     (_K7940079413_
                      (lambda (_rest79411_)
                        (_lp79393_ _rest79411_ (fx- _k79396_ '1)))))
                (if (##pair? _g7939779404_)
                    (let* ((_tl7940279416_ (##cdr _g7939779404_))
                           (_rest79419_ _tl7940279416_))
                      (_K7940079413_ _rest79419_))
                    (_E7939979408_)))
              _rest79395_))))
    (define gx#stx-list-ref
      (lambda (_stx79387_ _k79388_)
        (gx#stx-car (gx#stx-list-tail _stx79387_ _k79388_))))
    (define gx#stx-plist?__%
      (lambda (_stx79299_ _key?79300_)
        (if (procedure? _key?79300_)
            '#!void
            (error '"expected procedure" _key?79300_))
        (let _lp79302_ ((_rest79304_ _stx79299_))
          (let* ((_g7930579315_ (gx#stx-e _rest79304_))
                 (_else7930879323_ (lambda () '#f)))
            (let ((_K7931179365_
                   (lambda (_rest79334_ _hd79335_)
                     (if (_key?79300_ _hd79335_)
                         (let* ((_g7933679344_ (gx#stx-e _rest79334_))
                                (_else7933879352_ (lambda () '#f))
                                (_K7934079357_
                                 (lambda (_rest79355_)
                                   (_lp79302_ _rest79355_))))
                           (if (##pair? _g7933679344_)
                               (let* ((_tl7934279360_ (##cdr _g7933679344_))
                                      (_rest79363_ _tl7934279360_))
                                 (_lp79302_ _rest79363_))
                               (_else7933879352_)))
                         '#f)))
                  (_K7931079328_ (lambda () '#t)))
              (let ((_try-match7930779331_
                     (lambda ()
                       (if (##null? _g7930579315_)
                           (_K7931079328_)
                           (_else7930879323_)))))
                (if (##pair? _g7930579315_)
                    (let ((_tl7931379370_ (##cdr _g7930579315_))
                          (_hd7931279368_ (##car _g7930579315_)))
                      (let ((_hd79373_ _hd7931279368_)
                            (_rest79375_ _tl7931379370_))
                        (_K7931179365_ _rest79375_ _hd79373_)))
                    (_try-match7930779331_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx79380_)
        (let ((_key?79382_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx79380_ _key?79382_))))
    (define gx#stx-plist?
      (lambda _g80488_
        (let ((_g80487_ (##length _g80488_)))
          (cond ((##fx= _g80487_ 1)
                 (apply (lambda (_stx79380_) (gx#stx-plist?__0 _stx79380_))
                        _g80488_))
                ((##fx= _g80487_ 2)
                 (apply (lambda (_stx79384_ _key?79385_)
                          (gx#stx-plist?__% _stx79384_ _key?79385_))
                        _g80488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g80488_))))))
    (define gx#stx-getq__%
      (lambda (_key79217_ _stx79218_ _key=?79219_)
        (if (procedure? _key=?79219_)
            '#!void
            (error '"expected procedure" _key=?79219_))
        (let _lp79221_ ((_rest79223_ _stx79218_))
          (let* ((_g7922479232_ (gx#syntax-e _rest79223_))
                 (_else7922679240_ (lambda () '#f))
                 (_K7922879274_
                  (lambda (_rest79243_ _hd79244_)
                    (let* ((_g7924579252_ (gx#syntax-e _rest79243_))
                           (_E7924779256_
                            (lambda ()
                              (error '"No clause matching" _g7924579252_)))
                           (_K7924879262_
                            (lambda (_rest79259_ _val79260_)
                              (if (_key=?79219_ _hd79244_ _key79217_)
                                  _val79260_
                                  (_lp79221_ _rest79259_)))))
                      (if (##pair? _g7924579252_)
                          (let ((_hd7924979265_ (##car _g7924579252_))
                                (_tl7925079267_ (##cdr _g7924579252_)))
                            (let* ((_val79270_ _hd7924979265_)
                                   (_rest79272_ _tl7925079267_))
                              (_K7924879262_ _rest79272_ _val79270_)))
                          (_E7924779256_))))))
            (if (##pair? _g7922479232_)
                (let ((_hd7922979277_ (##car _g7922479232_))
                      (_tl7923079279_ (##cdr _g7922479232_)))
                  (let* ((_hd79282_ _hd7922979277_)
                         (_rest79284_ _tl7923079279_))
                    (_K7922879274_ _rest79284_ _hd79282_)))
                (_else7922679240_))))))
    (define gx#stx-getq__0
      (lambda (_key79289_ _stx79290_)
        (let ((_key=?79292_ gx#stx-eq?))
          (gx#stx-getq__% _key79289_ _stx79290_ _key=?79292_))))
    (define gx#stx-getq
      (lambda _g80490_
        (let ((_g80489_ (##length _g80490_)))
          (cond ((##fx= _g80489_ 2)
                 (apply (lambda (_key79289_ _stx79290_)
                          (gx#stx-getq__0 _key79289_ _stx79290_))
                        _g80490_))
                ((##fx= _g80489_ 3)
                 (apply (lambda (_key79294_ _stx79295_ _key=?79296_)
                          (gx#stx-getq__% _key79294_ _stx79295_ _key=?79296_))
                        _g80490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g80490_))))))))
