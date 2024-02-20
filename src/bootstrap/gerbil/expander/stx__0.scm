(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708387688)
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
      (lambda _$args80409_
        (apply make-instance gx#identifier-wrap::t _$args80409_)))
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
      (lambda _$args80406_
        (apply make-instance gx#syntax-wrap::t _$args80406_)))
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
      (lambda _$args80403_
        (apply make-instance gx#syntax-quote::t _$args80403_)))
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
      (lambda (_stx80401_) (symbol? (gx#stx-e _stx80401_))))
    (define gx#identifier-quote?
      (lambda (_stx80399_)
        (if (##structure-direct-instance-of? _stx80399_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx80399_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx80397_)
        (if (##structure-direct-instance-of? _stx80397_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx80397_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx80397_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx80395_)
        (if (##structure-direct-instance-of? _stx80395_ 'gx#syntax-quote::t)
            _stx80395_
            (if (##structure-direct-instance-of? _stx80395_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx80395_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx80378_)
        (if (##structure-direct-instance-of? _stx80378_ 'gx#syntax-wrap::t)
            (let _lp80380_ ((_e80382_
                             (##unchecked-structure-ref
                              _stx80378_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks80383_
                             (cons (##unchecked-structure-ref
                                    _stx80378_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e80382_)
                  (let ((_$e80385_ (##type-id (##structure-type _e80382_))))
                    (if (eq? 'gx#syntax-wrap::t _$e80385_)
                        (_lp80380_
                         (##unchecked-structure-ref _e80382_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e80382_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks80383_))
                        (if (or (eq? 'gx#syntax-quote::t _$e80385_)
                                (eq? 'gx#identifier-wrap::t _$e80385_))
                            (##unchecked-structure-ref
                             _e80382_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e80385_)
                                (_lp80380_
                                 (##unchecked-structure-ref
                                  _e80382_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks80383_)
                                _e80382_))))
                  (if (null? _marks80383_)
                      _e80382_
                      (if (pair? _e80382_)
                          (cons (gx#stx-wrap (car _e80382_) _marks80383_)
                                (gx#stx-wrap (cdr _e80382_) _marks80383_))
                          (if (vector? _e80382_)
                              (vector-map
                               (lambda (_g8039080392_)
                                 (gx#stx-wrap _g8039080392_ _marks80383_))
                               _e80382_)
                              (if (box? _e80382_)
                                  (box (gx#stx-wrap
                                        (unbox _e80382_)
                                        _marks80383_))
                                  _e80382_))))))
            (if (##structure-instance-of? _stx80378_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80378_ '1 gx#AST::t '#f)
                _stx80378_))))
    (define gx#syntax->datum
      (lambda (_stx80376_)
        (if (##structure-instance-of? _stx80376_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx80376_ '1 gx#AST::t '#f))
            (if (pair? _stx80376_)
                (cons (gx#syntax->datum (car _stx80376_))
                      (gx#syntax->datum (cdr _stx80376_)))
                (if (vector? _stx80376_)
                    (vector-map gx#syntax->datum _stx80376_)
                    (if (box? _stx80376_)
                        (box (gx#syntax->datum (unbox _stx80376_)))
                        _stx80376_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80319_ _datum80320_ _src80321_ _quote?80322_)
        (letrec ((_wrap-datum80324_
                  (lambda (_e80348_ _marks80349_)
                    (_wrap-inner80326_
                     _e80348_
                     (lambda (_g8035080352_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8035080352_
                        _src80321_
                        _marks80349_)))))
                 (_wrap-quote80325_
                  (lambda (_e80340_ _ctx80341_ _marks80342_)
                    (_wrap-inner80326_
                     _e80340_
                     (lambda (_g8034380345_)
                       (##structure
                        gx#syntax-quote::t
                        _g8034380345_
                        _src80321_
                        _ctx80341_
                        _marks80342_)))))
                 (_wrap-inner80326_
                  (lambda (_e80333_ _wrap-e80334_)
                    (let _recur80336_ ((_e80338_ _e80333_))
                      (if (symbol? _e80338_)
                          (_wrap-e80334_ _e80338_)
                          (if (pair? _e80338_)
                              (cons (_recur80336_ (car _e80338_))
                                    (_recur80336_ (cdr _e80338_)))
                              (if (vector? _e80338_)
                                  (vector-map _recur80336_ _e80338_)
                                  (if (box? _e80338_)
                                      (box (_recur80336_ (unbox _e80338_)))
                                      _e80338_)))))))
                 (_wrap-outer80327_
                  (lambda (_e80331_)
                    (if (##structure-instance-of? _e80331_ 'gerbil#AST::t)
                        _e80331_
                        (##structure gx#AST::t _e80331_ _src80321_)))))
          (if (##structure-instance-of? _datum80320_ 'gerbil#AST::t)
              _datum80320_
              (if (not _stx80319_)
                  (##structure gx#AST::t _datum80320_ _src80321_)
                  (if (gx#identifier? _stx80319_)
                      (let ((_stx80329_ (gx#stx-unwrap__0 _stx80319_)))
                        (_wrap-outer80327_
                         (if (##structure-direct-instance-of?
                              _stx80329_
                              'gx#syntax-quote::t)
                             (if _quote?80322_
                                 (_wrap-quote80325_
                                  _datum80320_
                                  (##unchecked-structure-ref
                                   _stx80329_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80329_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80324_
                                  _datum80320_
                                  (##unchecked-structure-ref
                                   _stx80329_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80324_
                              _datum80320_
                              (##unchecked-structure-ref
                               _stx80329_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80319_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80358_ _datum80359_)
        (let* ((_src80361_ '#f) (_quote?80363_ '#t))
          (gx#datum->syntax__%
           _stx80358_
           _datum80359_
           _src80361_
           _quote?80363_))))
    (define gx#datum->syntax__1
      (lambda (_stx80365_ _datum80366_ _src80367_)
        (let ((_quote?80369_ '#t))
          (gx#datum->syntax__%
           _stx80365_
           _datum80366_
           _src80367_
           _quote?80369_))))
    (define gx#datum->syntax
      (lambda _g80490_
        (let ((_g80489_ (##length _g80490_)))
          (cond ((##fx= _g80489_ 2)
                 (apply (lambda (_stx80358_ _datum80359_)
                          (gx#datum->syntax__0 _stx80358_ _datum80359_))
                        _g80490_))
                ((##fx= _g80489_ 3)
                 (apply (lambda (_stx80365_ _datum80366_ _src80367_)
                          (gx#datum->syntax__1
                           _stx80365_
                           _datum80366_
                           _src80367_))
                        _g80490_))
                ((##fx= _g80489_ 4)
                 (apply (lambda (_stx80371_
                                 _datum80372_
                                 _src80373_
                                 _quote?80374_)
                          (gx#datum->syntax__%
                           _stx80371_
                           _datum80372_
                           _src80373_
                           _quote?80374_))
                        _g80490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g80490_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80295_ _marks80296_)
        (let _lp80298_ ((_e80300_ _stx80295_)
                        (_marks80301_ _marks80296_)
                        (_src80302_ (gx#stx-source _stx80295_)))
          (if (##structure-direct-instance-of? _e80300_ 'gx#syntax-wrap::t)
              (_lp80298_
               (##unchecked-structure-ref _e80300_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80300_ '3 gx#syntax-wrap::t '#f)
                _marks80301_)
               (##unchecked-structure-ref _e80300_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80300_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80301_)
                      _e80300_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80300_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80300_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80300_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80301_)))
                  (if (##structure-direct-instance-of?
                       _e80300_
                       'gx#syntax-quote::t)
                      _e80300_
                      (if (##structure-instance-of? _e80300_ 'gerbil#AST::t)
                          (_lp80298_
                           (##unchecked-structure-ref
                            _e80300_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80301_
                           (##unchecked-structure-ref
                            _e80300_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80300_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80300_
                               _src80302_
                               (reverse _marks80301_))
                              (if (null? _marks80301_)
                                  _e80300_
                                  (if (pair? _e80300_)
                                      (cons (gx#stx-wrap
                                             (car _e80300_)
                                             _marks80301_)
                                            (gx#stx-wrap
                                             (cdr _e80300_)
                                             _marks80301_))
                                      (if (vector? _e80300_)
                                          (vector-map
                                           (lambda (_g8030380305_)
                                             (gx#stx-wrap
                                              _g8030380305_
                                              _marks80301_))
                                           _e80300_)
                                          (if (box? _e80300_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80300_)
                                                    _marks80301_))
                                              _e80300_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80311_)
        (let ((_marks80313_ '())) (gx#stx-unwrap__% _stx80311_ _marks80313_))))
    (define gx#stx-unwrap
      (lambda _g80492_
        (let ((_g80491_ (##length _g80492_)))
          (cond ((##fx= _g80491_ 1)
                 (apply (lambda (_stx80311_) (gx#stx-unwrap__0 _stx80311_))
                        _g80492_))
                ((##fx= _g80491_ 2)
                 (apply (lambda (_stx80315_ _marks80316_)
                          (gx#stx-unwrap__% _stx80315_ _marks80316_))
                        _g80492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g80492_))))))
    (define gx#stx-wrap
      (lambda (_stx80288_ _marks80289_)
        (foldl1 (lambda (_mark80291_ _stx80292_)
                  (gx#stx-apply-mark _stx80292_ _mark80291_))
                _stx80288_
                _marks80289_)))
    (define gx#stx-rewrap
      (lambda (_stx80282_ _marks80283_)
        (foldr1 (lambda (_mark80285_ _stx80286_)
                  (gx#stx-apply-mark _stx80286_ _mark80285_))
                _stx80282_
                _marks80283_)))
    (define gx#stx-apply-mark
      (lambda (_stx80279_ _mark80280_)
        (if (##structure-direct-instance-of? _stx80279_ 'gx#syntax-quote::t)
            _stx80279_
            (if (and (##structure-direct-instance-of?
                      _stx80279_
                      'gx#syntax-wrap::t)
                     (eq? _mark80280_
                          (##unchecked-structure-ref
                           _stx80279_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80279_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80279_
                 (gx#stx-source _stx80279_)
                 _mark80280_)))))
    (define gx#apply-mark
      (lambda (_mark80243_ _marks80244_)
        (let* ((_marks8024580253_ _marks80244_)
               (_else8024780261_ (lambda () (cons _mark80243_ _marks80244_)))
               (_K8024980267_
                (lambda (_rest80264_ _hd80265_)
                  (if (eq? _mark80243_ _hd80265_)
                      _rest80264_
                      (cons _mark80243_ _marks80244_)))))
          (if (##pair? _marks8024580253_)
              (let ((_hd8025080270_ (##car _marks8024580253_))
                    (_tl8025180272_ (##cdr _marks8024580253_)))
                (let* ((_hd80275_ _hd8025080270_) (_rest80277_ _tl8025180272_))
                  (_K8024980267_ _rest80277_ _hd80275_)))
              (_else8024780261_)))))
    (define gx#stx-e
      (lambda (_stx80241_)
        (if (##structure-direct-instance-of? _stx80241_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80241_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80241_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80241_ '1 gx#AST::t '#f)
                _stx80241_))))
    (define gx#stx-source
      (lambda (_stx80239_)
        (if (##structure-instance-of? _stx80239_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80239_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80233_ _src80234_)
        (if (or (##structure-instance-of? _stx80233_ 'gerbil#AST::t)
                (not _src80234_))
            _stx80233_
            (##structure gx#AST::t _stx80233_ _src80234_))))
    (define gx#stx-datum?
      (lambda (_stx80231_) (gx#self-quoting? (gx#stx-e _stx80231_))))
    (define gx#self-quoting?
      (lambda (_x80214_)
        (let ((_$e80216_ (immediate? _x80214_)))
          (if _$e80216_
              _$e80216_
              (let ((_$e80219_ (number? _x80214_)))
                (if _$e80219_
                    _$e80219_
                    (let ((_$e80222_ (keyword? _x80214_)))
                      (if _$e80222_
                          _$e80222_
                          (let ((_$e80225_ (string? _x80214_)))
                            (if _$e80225_
                                _$e80225_
                                (let ((_$e80228_ (vector? _x80214_)))
                                  (if _$e80228_
                                      _$e80228_
                                      (u8vector? _x80214_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80212_) (boolean? (gx#stx-e _e80212_))))
    (define gx#stx-keyword? (lambda (_e80210_) (keyword? (gx#stx-e _e80210_))))
    (define gx#stx-char? (lambda (_e80208_) (char? (gx#stx-e _e80208_))))
    (define gx#stx-number? (lambda (_e80206_) (number? (gx#stx-e _e80206_))))
    (define gx#stx-fixnum? (lambda (_e80204_) (fixnum? (gx#stx-e _e80204_))))
    (define gx#stx-string? (lambda (_e80202_) (string? (gx#stx-e _e80202_))))
    (define gx#stx-null? (lambda (_e80200_) (null? (gx#stx-e _e80200_))))
    (define gx#stx-pair? (lambda (_e80198_) (pair? (gx#stx-e _e80198_))))
    (define gx#stx-list?
      (lambda (_e80160_)
        (let* ((_g8016180170_ (gx#stx-e _e80160_))
               (_E8016480174_
                (lambda () (error '"No clause matching" _g8016180170_))))
          (let ((_K8016680190_
                 (lambda (_rest80188_) (gx#stx-list? _rest80188_)))
                (_K8016580180_ (lambda (_tail80178_) (null? _tail80178_))))
            (if (##pair? _g8016180170_)
                (let* ((_tl8016880193_ (##cdr _g8016180170_))
                       (_rest80196_ _tl8016880193_))
                  (gx#stx-list? _rest80196_))
                (let ((_tail80183_ _g8016180170_)) (null? _tail80183_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80153_)
        (let* ((_e80155_ (gx#stx-e _e80153_)) (_$e80157_ (pair? _e80155_)))
          (if _$e80157_ _$e80157_ (null? _e80155_)))))
    (define gx#stx-vector? (lambda (_e80151_) (vector? (gx#stx-e _e80151_))))
    (define gx#stx-box? (lambda (_e80149_) (box? (gx#stx-e _e80149_))))
    (define gx#stx-eq?
      (lambda (_x80146_ _y80147_)
        (eq? (gx#stx-e _x80146_) (gx#stx-e _y80147_))))
    (define gx#stx-eqv?
      (lambda (_x80143_ _y80144_)
        (eqv? (gx#stx-e _x80143_) (gx#stx-e _y80144_))))
    (define gx#stx-equal?
      (lambda (_x80140_ _y80141_)
        (equal? (gx#stx-e _x80140_) (gx#stx-e _y80141_))))
    (define gx#stx-false? (lambda (_x80138_) (not (gx#stx-e _x80138_))))
    (define gx#stx-identifier
      (lambda (_template80135_ . _args80136_)
        (gx#datum->syntax__1
         _template80135_
         (apply make-symbol (gx#syntax->datum _args80136_))
         (gx#stx-source _template80135_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80133_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80133_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80131_)
        (if (##structure-direct-instance-of? _stx80131_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80131_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80131_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80131_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80131_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80127_)
        (let ((_stx80129_ (gx#stx-unwrap__0 _stx80127_)))
          (if (gx#identifier-quote? _stx80129_)
              (##unchecked-structure-ref _stx80129_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80082_)
        (let* ((_g8008380093_ (gx#stx-e _stx80082_))
               (_else8008680101_ (lambda () '#f)))
          (let ((_K8008980115_
                 (lambda (_rest80112_ _hd80113_)
                   (if (gx#identifier? _hd80113_)
                       (gx#identifier-list? _rest80112_)
                       '#f)))
                (_K8008880106_ (lambda () '#t)))
            (let ((_try-match8008580109_
                   (lambda ()
                     (if (##null? _g8008380093_)
                         (_K8008880106_)
                         (_else8008680101_)))))
              (if (##pair? _g8008380093_)
                  (let ((_tl8009180120_ (##cdr _g8008380093_))
                        (_hd8009080118_ (##car _g8008380093_)))
                    (let ((_hd80123_ _hd8009080118_)
                          (_rest80125_ _tl8009180120_))
                      (_K8008980115_ _rest80125_ _hd80123_)))
                  (_try-match8008580109_)))))))
    (define gx#genident__%
      (lambda (_e80059_ _src80060_)
        (gx#stx-wrap-source
         (gensym (let ((_e80062_ (gx#stx-e _e80059_)))
                   (if (interned-symbol? _e80062_) _e80062_ 'g)))
         (let ((_$e80064_ (gx#stx-source _e80059_)))
           (if _$e80064_ _$e80064_ _src80060_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80071_ 'g) (_src80073_ '#f))
          (gx#genident__% _e80071_ _src80073_))))
    (define gx#genident__1
      (lambda (_e80075_)
        (let ((_src80077_ '#f)) (gx#genident__% _e80075_ _src80077_))))
    (define gx#genident
      (lambda _g80494_
        (let ((_g80493_ (##length _g80494_)))
          (cond ((##fx= _g80493_ 0)
                 (apply (lambda () (gx#genident__0)) _g80494_))
                ((##fx= _g80493_ 1)
                 (apply (lambda (_e80075_) (gx#genident__1 _e80075_))
                        _g80494_))
                ((##fx= _g80493_ 2)
                 (apply (lambda (_e80079_ _src80080_)
                          (gx#genident__% _e80079_ _src80080_))
                        _g80494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g80494_))))))
    (define gx#gentemps
      (lambda (_stx-lst80056_) (gx#stx-map1 gx#genident _stx-lst80056_)))
    (define gx#syntax->list
      (lambda (_stx80054_) (gx#stx-map1 values _stx80054_)))
    (define gx#stx-car
      (lambda (_stx80051_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80051_)))))
    (define gx#stx-cdr
      (lambda (_stx80048_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80048_)))))
    (define gx#stx-length
      (lambda (_stx80013_)
        (let _lp80015_ ((_rest80017_ _stx80013_) (_n80018_ '0))
          (let* ((_g8001980027_ (gx#stx-e _rest80017_))
                 (_else8002180035_ (lambda () _n80018_))
                 (_K8002380040_
                  (lambda (_rest80038_)
                    (_lp80015_ _rest80038_ (fx+ _n80018_ '1)))))
            (if (##pair? _g8001980027_)
                (let* ((_tl8002580043_ (##cdr _g8001980027_))
                       (_rest80046_ _tl8002580043_))
                  (_K8002380040_ _rest80046_))
                (_else8002180035_))))))
    (define gx#stx-for-each
      (lambda _g80496_
        (let ((_g80495_ (##length _g80496_)))
          (cond ((##fx= _g80495_ 2)
                 (apply (lambda (_f80006_ _stx80007_)
                          (gx#stx-for-each1 _f80006_ _stx80007_))
                        _g80496_))
                ((##fx= _g80495_ 3)
                 (apply (lambda (_f80009_ _xstx80010_ _ystx80011_)
                          (gx#stx-for-each2 _f80009_ _xstx80010_ _ystx80011_))
                        _g80496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g80496_))))))
    (define gx#stx-for-each1
      (lambda (_f79956_ _stx79957_)
        (if (procedure? _f79956_)
            '#!void
            (error '"expected procedure" _f79956_))
        (let _lp79959_ ((_rest79961_ _stx79957_))
          (let* ((_g7996279972_ (gx#syntax-e _rest79961_))
                 (_else7996579980_ (lambda () (_f79956_ _rest79961_))))
            (let ((_K7996879994_
                   (lambda (_rest79991_ _hd79992_)
                     (_f79956_ _hd79992_)
                     (_lp79959_ _rest79991_)))
                  (_K7996779985_ (lambda () '#!void)))
              (let ((_try-match7996479988_
                     (lambda ()
                       (if (##null? _g7996279972_)
                           (_K7996779985_)
                           (_else7996579980_)))))
                (if (##pair? _g7996279972_)
                    (let ((_tl7997079999_ (##cdr _g7996279972_))
                          (_hd7996979997_ (##car _g7996279972_)))
                      (let ((_hd80002_ _hd7996979997_)
                            (_rest80004_ _tl7997079999_))
                        (_K7996879994_ _rest80004_ _hd80002_)))
                    (_try-match7996479988_))))))))
    (define gx#stx-for-each2
      (lambda (_f79861_ _xstx79862_ _ystx79863_)
        (if (procedure? _f79861_)
            '#!void
            (error '"expected procedure" _f79861_))
        (let _lp79865_ ((_xrest79867_ _xstx79862_) (_yrest79868_ _ystx79863_))
          (let* ((_g7986979879_ (gx#syntax-e _xrest79867_))
                 (_else7987279887_ (lambda () '#!void)))
            (let ((_K7987579944_
                   (lambda (_xrest79913_ _xhd79914_)
                     (let* ((_g7991579922_ (gx#syntax-e _yrest79868_))
                            (_E7991779926_
                             (lambda ()
                               (error '"No clause matching" _g7991579922_)))
                            (_K7991879932_
                             (lambda (_yrest79929_ _yhd79930_)
                               (_f79861_ _xhd79914_ _yhd79930_)
                               (_lp79865_ _xrest79913_ _yrest79929_))))
                       (if (##pair? _g7991579922_)
                           (let ((_hd7991979935_ (##car _g7991579922_))
                                 (_tl7992079937_ (##cdr _g7991579922_)))
                             (let* ((_yhd79940_ _hd7991979935_)
                                    (_yrest79942_ _tl7992079937_))
                               (_K7991879932_ _yrest79942_ _yhd79940_)))
                           (_E7991779926_)))))
                  (_K7987479907_
                   (lambda ()
                     (let* ((_yrest7989179896_ _yrest79868_)
                            (_E7989379900_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7989179896_)))
                            (_K7989479904_
                             (lambda () (_f79861_ _xrest79867_ _yrest79868_))))
                       (if (not (gx#stx-null? _yrest7989179896_))
                           (_K7989479904_)
                           (_E7989379900_))))))
              (let ((_try-match7987179910_
                     (lambda ()
                       (if (not (null? _g7986979879_))
                           (_K7987479907_)
                           (_else7987279887_)))))
                (if (##pair? _g7986979879_)
                    (let ((_tl7987779949_ (##cdr _g7986979879_))
                          (_hd7987679947_ (##car _g7986979879_)))
                      (let ((_xhd79952_ _hd7987679947_)
                            (_xrest79954_ _tl7987779949_))
                        (_K7987579944_ _xrest79954_ _xhd79952_)))
                    (_try-match7987179910_))))))))
    (define gx#stx-map
      (lambda _g80498_
        (let ((_g80497_ (##length _g80498_)))
          (cond ((##fx= _g80497_ 2)
                 (apply (lambda (_f79854_ _stx79855_)
                          (gx#stx-map1 _f79854_ _stx79855_))
                        _g80498_))
                ((##fx= _g80497_ 3)
                 (apply (lambda (_f79857_ _xstx79858_ _ystx79859_)
                          (gx#stx-map2 _f79857_ _xstx79858_ _ystx79859_))
                        _g80498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g80498_))))))
    (define gx#stx-map1
      (lambda (_f79804_ _stx79805_)
        (if (procedure? _f79804_)
            '#!void
            (error '"expected procedure" _f79804_))
        (let _recur79807_ ((_rest79809_ _stx79805_))
          (let* ((_g7981079820_ (gx#syntax-e _rest79809_))
                 (_else7981379828_ (lambda () (_f79804_ _rest79809_))))
            (let ((_K7981679842_
                   (lambda (_rest79839_ _hd79840_)
                     (cons (_f79804_ _hd79840_) (_recur79807_ _rest79839_))))
                  (_K7981579833_ (lambda () '())))
              (let ((_try-match7981279836_
                     (lambda ()
                       (if (##null? _g7981079820_)
                           (_K7981579833_)
                           (_else7981379828_)))))
                (if (##pair? _g7981079820_)
                    (let ((_tl7981879847_ (##cdr _g7981079820_))
                          (_hd7981779845_ (##car _g7981079820_)))
                      (let ((_hd79850_ _hd7981779845_)
                            (_rest79852_ _tl7981879847_))
                        (_K7981679842_ _rest79852_ _hd79850_)))
                    (_try-match7981279836_))))))))
    (define gx#stx-map2
      (lambda (_f79709_ _xstx79710_ _ystx79711_)
        (if (procedure? _f79709_)
            '#!void
            (error '"expected procedure" _f79709_))
        (let _recur79713_ ((_xrest79715_ _xstx79710_)
                           (_yrest79716_ _ystx79711_))
          (let* ((_g7971779727_ (gx#syntax-e _xrest79715_))
                 (_else7972079735_ (lambda () '())))
            (let ((_K7972379792_
                   (lambda (_xrest79761_ _xhd79762_)
                     (let* ((_g7976379770_ (gx#syntax-e _yrest79716_))
                            (_E7976579774_
                             (lambda ()
                               (error '"No clause matching" _g7976379770_)))
                            (_K7976679780_
                             (lambda (_yrest79777_ _yhd79778_)
                               (cons (_f79709_ _xhd79762_ _yhd79778_)
                                     (_recur79713_
                                      _xrest79761_
                                      _yrest79777_)))))
                       (if (##pair? _g7976379770_)
                           (let ((_hd7976779783_ (##car _g7976379770_))
                                 (_tl7976879785_ (##cdr _g7976379770_)))
                             (let* ((_yhd79788_ _hd7976779783_)
                                    (_yrest79790_ _tl7976879785_))
                               (_K7976679780_ _yrest79790_ _yhd79788_)))
                           (_E7976579774_)))))
                  (_K7972279755_
                   (lambda ()
                     (let* ((_yrest7973979744_ _yrest79716_)
                            (_E7974179748_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7973979744_)))
                            (_K7974279752_
                             (lambda () (_f79709_ _xrest79715_ _yrest79716_))))
                       (if (not (gx#stx-null? _yrest7973979744_))
                           (_K7974279752_)
                           (_E7974179748_))))))
              (let ((_try-match7971979758_
                     (lambda ()
                       (if (not (null? _g7971779727_))
                           (_K7972279755_)
                           (_else7972079735_)))))
                (if (##pair? _g7971779727_)
                    (let ((_tl7972579797_ (##cdr _g7971779727_))
                          (_hd7972479795_ (##car _g7971779727_)))
                      (let ((_xhd79800_ _hd7972479795_)
                            (_xrest79802_ _tl7972579797_))
                        (_K7972379792_ _xrest79802_ _xhd79800_)))
                    (_try-match7971979758_))))))))
    (define gx#stx-andmap
      (lambda (_f79659_ _stx79660_)
        (if (procedure? _f79659_)
            '#!void
            (error '"expected procedure" _f79659_))
        (let _lp79662_ ((_rest79664_ _stx79660_))
          (let* ((_g7966579675_ (gx#syntax-e _rest79664_))
                 (_else7966879683_ (lambda () (_f79659_ _rest79664_))))
            (let ((_K7967179697_
                   (lambda (_rest79694_ _hd79695_)
                     (if (_f79659_ _hd79695_) (_lp79662_ _rest79694_) '#f)))
                  (_K7967079688_ (lambda () '#t)))
              (let ((_try-match7966779691_
                     (lambda ()
                       (if (##null? _g7966579675_)
                           (_K7967079688_)
                           (_else7966879683_)))))
                (if (##pair? _g7966579675_)
                    (let ((_tl7967379702_ (##cdr _g7966579675_))
                          (_hd7967279700_ (##car _g7966579675_)))
                      (let ((_hd79705_ _hd7967279700_)
                            (_rest79707_ _tl7967379702_))
                        (_K7967179697_ _rest79707_ _hd79705_)))
                    (_try-match7966779691_))))))))
    (define gx#stx-ormap
      (lambda (_f79606_ _stx79607_)
        (if (procedure? _f79606_)
            '#!void
            (error '"expected procedure" _f79606_))
        (let _lp79609_ ((_rest79611_ _stx79607_))
          (let* ((_g7961279622_ (gx#syntax-e _rest79611_))
                 (_else7961579630_ (lambda () (_f79606_ _rest79611_))))
            (let ((_K7961879647_
                   (lambda (_rest79641_ _hd79642_)
                     (let ((_$e79644_ (_f79606_ _hd79642_)))
                       (if _$e79644_ _$e79644_ (_lp79609_ _rest79641_)))))
                  (_K7961779635_ (lambda () '#f)))
              (let ((_try-match7961479638_
                     (lambda ()
                       (if (##null? _g7961279622_)
                           (_K7961779635_)
                           (_else7961579630_)))))
                (if (##pair? _g7961279622_)
                    (let ((_tl7962079652_ (##cdr _g7961279622_))
                          (_hd7961979650_ (##car _g7961279622_)))
                      (let ((_hd79655_ _hd7961979650_)
                            (_rest79657_ _tl7962079652_))
                        (_K7961879647_ _rest79657_ _hd79655_)))
                    (_try-match7961479638_))))))))
    (define gx#stx-foldl
      (lambda (_f79554_ _iv79555_ _stx79556_)
        (if (procedure? _f79554_)
            '#!void
            (error '"expected procedure" _f79554_))
        (let _lp79558_ ((_r79560_ _iv79555_) (_rest79561_ _stx79556_))
          (let* ((_g7956279572_ (gx#syntax-e _rest79561_))
                 (_else7956579580_
                  (lambda () (_f79554_ _rest79561_ _r79560_))))
            (let ((_K7956879594_
                   (lambda (_rest79591_ _hd79592_)
                     (_lp79558_ (_f79554_ _hd79592_ _r79560_) _rest79591_)))
                  (_K7956779585_ (lambda () _r79560_)))
              (let ((_try-match7956479588_
                     (lambda ()
                       (if (##null? _g7956279572_)
                           (_K7956779585_)
                           (_else7956579580_)))))
                (if (##pair? _g7956279572_)
                    (let ((_tl7957079599_ (##cdr _g7956279572_))
                          (_hd7956979597_ (##car _g7956279572_)))
                      (let ((_hd79602_ _hd7956979597_)
                            (_rest79604_ _tl7957079599_))
                        (_K7956879594_ _rest79604_ _hd79602_)))
                    (_try-match7956479588_))))))))
    (define gx#stx-foldr
      (lambda (_f79503_ _iv79504_ _stx79505_)
        (if (procedure? _f79503_)
            '#!void
            (error '"expected procedure" _f79503_))
        (let _recur79507_ ((_rest79509_ _stx79505_))
          (let* ((_g7951079520_ (gx#syntax-e _rest79509_))
                 (_else7951379528_
                  (lambda () (_f79503_ _rest79509_ _iv79504_))))
            (let ((_K7951679542_
                   (lambda (_rest79539_ _hd79540_)
                     (_f79503_ _hd79540_ (_recur79507_ _rest79539_))))
                  (_K7951579533_ (lambda () _iv79504_)))
              (let ((_try-match7951279536_
                     (lambda ()
                       (if (##null? _g7951079520_)
                           (_K7951579533_)
                           (_else7951379528_)))))
                (if (##pair? _g7951079520_)
                    (let ((_tl7951879547_ (##cdr _g7951079520_))
                          (_hd7951779545_ (##car _g7951079520_)))
                      (let ((_hd79550_ _hd7951779545_)
                            (_rest79552_ _tl7951879547_))
                        (_K7951679542_ _rest79552_ _hd79550_)))
                    (_try-match7951279536_))))))))
    (define gx#stx-reverse
      (lambda (_stx79501_) (gx#stx-foldl cons '() _stx79501_)))
    (define gx#stx-last
      (lambda (_stx79462_)
        (let _lp79464_ ((_rest79466_ _stx79462_))
          (let* ((_g7946779475_ (gx#syntax-e _rest79466_))
                 (_else7946979483_ (lambda () _rest79466_))
                 (_K7947179489_
                  (lambda (_rest79486_ _hd79487_)
                    (if (gx#stx-null? _rest79486_)
                        _hd79487_
                        (_lp79464_ _rest79486_)))))
            (if (##pair? _g7946779475_)
                (let ((_hd7947279492_ (##car _g7946779475_))
                      (_tl7947379494_ (##cdr _g7946779475_)))
                  (let* ((_hd79497_ _hd7947279492_)
                         (_rest79499_ _tl7947379494_))
                    (_K7947179489_ _rest79499_ _hd79497_)))
                (_else7946979483_))))))
    (define gx#stx-last-pair
      (lambda (_stx79433_)
        (let _lp79435_ ((_hd79437_ _stx79433_))
          (let* ((_g7943879445_ (gx#syntax-e _hd79437_))
                 (_E7944079449_
                  (lambda () (error '"No clause matching" _g7943879445_)))
                 (_K7944179454_
                  (lambda (_rest79452_)
                    (if (gx#stx-pair? _rest79452_)
                        (_lp79435_ _rest79452_)
                        _hd79437_))))
            (if (##pair? _g7943879445_)
                (let* ((_tl7944379457_ (##cdr _g7943879445_))
                       (_rest79460_ _tl7944379457_))
                  (_K7944179454_ _rest79460_))
                (_E7944079449_))))))
    (define gx#stx-list-tail
      (lambda (_stx79402_ _k79403_)
        (let _lp79405_ ((_rest79407_ _stx79402_) (_k79408_ _k79403_))
          (if (fxpositive? _k79408_)
              (let* ((_g7940979416_ (gx#syntax-e _rest79407_))
                     (_E7941179420_
                      (lambda () (error '"No clause matching" _g7940979416_)))
                     (_K7941279425_
                      (lambda (_rest79423_)
                        (_lp79405_ _rest79423_ (fx- _k79408_ '1)))))
                (if (##pair? _g7940979416_)
                    (let* ((_tl7941479428_ (##cdr _g7940979416_))
                           (_rest79431_ _tl7941479428_))
                      (_K7941279425_ _rest79431_))
                    (_E7941179420_)))
              _rest79407_))))
    (define gx#stx-list-ref
      (lambda (_stx79399_ _k79400_)
        (gx#stx-car (gx#stx-list-tail _stx79399_ _k79400_))))
    (define gx#stx-plist?__%
      (lambda (_stx79311_ _key?79312_)
        (if (procedure? _key?79312_)
            '#!void
            (error '"expected procedure" _key?79312_))
        (let _lp79314_ ((_rest79316_ _stx79311_))
          (let* ((_g7931779327_ (gx#stx-e _rest79316_))
                 (_else7932079335_ (lambda () '#f)))
            (let ((_K7932379377_
                   (lambda (_rest79346_ _hd79347_)
                     (if (_key?79312_ _hd79347_)
                         (let* ((_g7934879356_ (gx#stx-e _rest79346_))
                                (_else7935079364_ (lambda () '#f))
                                (_K7935279369_
                                 (lambda (_rest79367_)
                                   (_lp79314_ _rest79367_))))
                           (if (##pair? _g7934879356_)
                               (let* ((_tl7935479372_ (##cdr _g7934879356_))
                                      (_rest79375_ _tl7935479372_))
                                 (_lp79314_ _rest79375_))
                               (_else7935079364_)))
                         '#f)))
                  (_K7932279340_ (lambda () '#t)))
              (let ((_try-match7931979343_
                     (lambda ()
                       (if (##null? _g7931779327_)
                           (_K7932279340_)
                           (_else7932079335_)))))
                (if (##pair? _g7931779327_)
                    (let ((_tl7932579382_ (##cdr _g7931779327_))
                          (_hd7932479380_ (##car _g7931779327_)))
                      (let ((_hd79385_ _hd7932479380_)
                            (_rest79387_ _tl7932579382_))
                        (_K7932379377_ _rest79387_ _hd79385_)))
                    (_try-match7931979343_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx79392_)
        (let ((_key?79394_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx79392_ _key?79394_))))
    (define gx#stx-plist?
      (lambda _g80500_
        (let ((_g80499_ (##length _g80500_)))
          (cond ((##fx= _g80499_ 1)
                 (apply (lambda (_stx79392_) (gx#stx-plist?__0 _stx79392_))
                        _g80500_))
                ((##fx= _g80499_ 2)
                 (apply (lambda (_stx79396_ _key?79397_)
                          (gx#stx-plist?__% _stx79396_ _key?79397_))
                        _g80500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g80500_))))))
    (define gx#stx-getq__%
      (lambda (_key79229_ _stx79230_ _key=?79231_)
        (if (procedure? _key=?79231_)
            '#!void
            (error '"expected procedure" _key=?79231_))
        (let _lp79233_ ((_rest79235_ _stx79230_))
          (let* ((_g7923679244_ (gx#syntax-e _rest79235_))
                 (_else7923879252_ (lambda () '#f))
                 (_K7924079286_
                  (lambda (_rest79255_ _hd79256_)
                    (let* ((_g7925779264_ (gx#syntax-e _rest79255_))
                           (_E7925979268_
                            (lambda ()
                              (error '"No clause matching" _g7925779264_)))
                           (_K7926079274_
                            (lambda (_rest79271_ _val79272_)
                              (if (_key=?79231_ _hd79256_ _key79229_)
                                  _val79272_
                                  (_lp79233_ _rest79271_)))))
                      (if (##pair? _g7925779264_)
                          (let ((_hd7926179277_ (##car _g7925779264_))
                                (_tl7926279279_ (##cdr _g7925779264_)))
                            (let* ((_val79282_ _hd7926179277_)
                                   (_rest79284_ _tl7926279279_))
                              (_K7926079274_ _rest79284_ _val79282_)))
                          (_E7925979268_))))))
            (if (##pair? _g7923679244_)
                (let ((_hd7924179289_ (##car _g7923679244_))
                      (_tl7924279291_ (##cdr _g7923679244_)))
                  (let* ((_hd79294_ _hd7924179289_)
                         (_rest79296_ _tl7924279291_))
                    (_K7924079286_ _rest79296_ _hd79294_)))
                (_else7923879252_))))))
    (define gx#stx-getq__0
      (lambda (_key79301_ _stx79302_)
        (let ((_key=?79304_ gx#stx-eq?))
          (gx#stx-getq__% _key79301_ _stx79302_ _key=?79304_))))
    (define gx#stx-getq
      (lambda _g80502_
        (let ((_g80501_ (##length _g80502_)))
          (cond ((##fx= _g80501_ 2)
                 (apply (lambda (_key79301_ _stx79302_)
                          (gx#stx-getq__0 _key79301_ _stx79302_))
                        _g80502_))
                ((##fx= _g80501_ 3)
                 (apply (lambda (_key79306_ _stx79307_ _key=?79308_)
                          (gx#stx-getq__% _key79306_ _stx79307_ _key=?79308_))
                        _g80502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g80502_))))))))
