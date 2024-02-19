(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708352924)
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
      (lambda _$args80398_
        (apply make-instance gx#identifier-wrap::t _$args80398_)))
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
      (lambda _$args80395_
        (apply make-instance gx#syntax-wrap::t _$args80395_)))
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
      (lambda _$args80392_
        (apply make-instance gx#syntax-quote::t _$args80392_)))
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
      (lambda (_stx80390_) (symbol? (gx#stx-e _stx80390_))))
    (define gx#identifier-quote?
      (lambda (_stx80388_)
        (if (##structure-direct-instance-of? _stx80388_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx80388_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx80386_)
        (if (##structure-direct-instance-of? _stx80386_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx80386_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx80386_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx80384_)
        (if (##structure-direct-instance-of? _stx80384_ 'gx#syntax-quote::t)
            _stx80384_
            (if (##structure-direct-instance-of? _stx80384_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx80384_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx80367_)
        (if (##structure-direct-instance-of? _stx80367_ 'gx#syntax-wrap::t)
            (let _lp80369_ ((_e80371_
                             (##unchecked-structure-ref
                              _stx80367_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks80372_
                             (cons (##unchecked-structure-ref
                                    _stx80367_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e80371_)
                  (let ((_$e80374_ (##type-id (##structure-type _e80371_))))
                    (if (eq? 'gx#syntax-wrap::t _$e80374_)
                        (_lp80369_
                         (##unchecked-structure-ref _e80371_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e80371_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks80372_))
                        (if (or (eq? 'gx#syntax-quote::t _$e80374_)
                                (eq? 'gx#identifier-wrap::t _$e80374_))
                            (##unchecked-structure-ref
                             _e80371_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e80374_)
                                (_lp80369_
                                 (##unchecked-structure-ref
                                  _e80371_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks80372_)
                                _e80371_))))
                  (if (null? _marks80372_)
                      _e80371_
                      (if (pair? _e80371_)
                          (cons (gx#stx-wrap (car _e80371_) _marks80372_)
                                (gx#stx-wrap (cdr _e80371_) _marks80372_))
                          (if (vector? _e80371_)
                              (vector-map
                               (lambda (_g8037980381_)
                                 (gx#stx-wrap _g8037980381_ _marks80372_))
                               _e80371_)
                              (if (box? _e80371_)
                                  (box (gx#stx-wrap
                                        (unbox _e80371_)
                                        _marks80372_))
                                  _e80371_))))))
            (if (##structure-instance-of? _stx80367_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80367_ '1 gx#AST::t '#f)
                _stx80367_))))
    (define gx#syntax->datum
      (lambda (_stx80365_)
        (if (##structure-instance-of? _stx80365_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx80365_ '1 gx#AST::t '#f))
            (if (pair? _stx80365_)
                (cons (gx#syntax->datum (car _stx80365_))
                      (gx#syntax->datum (cdr _stx80365_)))
                (if (vector? _stx80365_)
                    (vector-map gx#syntax->datum _stx80365_)
                    (if (box? _stx80365_)
                        (box (gx#syntax->datum (unbox _stx80365_)))
                        _stx80365_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80308_ _datum80309_ _src80310_ _quote?80311_)
        (letrec ((_wrap-datum80313_
                  (lambda (_e80337_ _marks80338_)
                    (_wrap-inner80315_
                     _e80337_
                     (lambda (_g8033980341_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8033980341_
                        _src80310_
                        _marks80338_)))))
                 (_wrap-quote80314_
                  (lambda (_e80329_ _ctx80330_ _marks80331_)
                    (_wrap-inner80315_
                     _e80329_
                     (lambda (_g8033280334_)
                       (##structure
                        gx#syntax-quote::t
                        _g8033280334_
                        _src80310_
                        _ctx80330_
                        _marks80331_)))))
                 (_wrap-inner80315_
                  (lambda (_e80322_ _wrap-e80323_)
                    (let _recur80325_ ((_e80327_ _e80322_))
                      (if (symbol? _e80327_)
                          (_wrap-e80323_ _e80327_)
                          (if (pair? _e80327_)
                              (cons (_recur80325_ (car _e80327_))
                                    (_recur80325_ (cdr _e80327_)))
                              (if (vector? _e80327_)
                                  (vector-map _recur80325_ _e80327_)
                                  (if (box? _e80327_)
                                      (box (_recur80325_ (unbox _e80327_)))
                                      _e80327_)))))))
                 (_wrap-outer80316_
                  (lambda (_e80320_)
                    (if (##structure-instance-of? _e80320_ 'gerbil#AST::t)
                        _e80320_
                        (##structure gx#AST::t _e80320_ _src80310_)))))
          (if (##structure-instance-of? _datum80309_ 'gerbil#AST::t)
              _datum80309_
              (if (not _stx80308_)
                  (##structure gx#AST::t _datum80309_ _src80310_)
                  (if (gx#identifier? _stx80308_)
                      (let ((_stx80318_ (gx#stx-unwrap__0 _stx80308_)))
                        (_wrap-outer80316_
                         (if (##structure-direct-instance-of?
                              _stx80318_
                              'gx#syntax-quote::t)
                             (if _quote?80311_
                                 (_wrap-quote80314_
                                  _datum80309_
                                  (##unchecked-structure-ref
                                   _stx80318_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80318_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80313_
                                  _datum80309_
                                  (##unchecked-structure-ref
                                   _stx80318_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80313_
                              _datum80309_
                              (##unchecked-structure-ref
                               _stx80318_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80308_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80347_ _datum80348_)
        (let* ((_src80350_ '#f) (_quote?80352_ '#t))
          (gx#datum->syntax__%
           _stx80347_
           _datum80348_
           _src80350_
           _quote?80352_))))
    (define gx#datum->syntax__1
      (lambda (_stx80354_ _datum80355_ _src80356_)
        (let ((_quote?80358_ '#t))
          (gx#datum->syntax__%
           _stx80354_
           _datum80355_
           _src80356_
           _quote?80358_))))
    (define gx#datum->syntax
      (lambda _g80479_
        (let ((_g80478_ (##length _g80479_)))
          (cond ((##fx= _g80478_ 2)
                 (apply (lambda (_stx80347_ _datum80348_)
                          (gx#datum->syntax__0 _stx80347_ _datum80348_))
                        _g80479_))
                ((##fx= _g80478_ 3)
                 (apply (lambda (_stx80354_ _datum80355_ _src80356_)
                          (gx#datum->syntax__1
                           _stx80354_
                           _datum80355_
                           _src80356_))
                        _g80479_))
                ((##fx= _g80478_ 4)
                 (apply (lambda (_stx80360_
                                 _datum80361_
                                 _src80362_
                                 _quote?80363_)
                          (gx#datum->syntax__%
                           _stx80360_
                           _datum80361_
                           _src80362_
                           _quote?80363_))
                        _g80479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g80479_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80284_ _marks80285_)
        (let _lp80287_ ((_e80289_ _stx80284_)
                        (_marks80290_ _marks80285_)
                        (_src80291_ (gx#stx-source _stx80284_)))
          (if (##structure-direct-instance-of? _e80289_ 'gx#syntax-wrap::t)
              (_lp80287_
               (##unchecked-structure-ref _e80289_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80289_ '3 gx#syntax-wrap::t '#f)
                _marks80290_)
               (##unchecked-structure-ref _e80289_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80289_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80290_)
                      _e80289_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80289_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80289_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80289_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80290_)))
                  (if (##structure-direct-instance-of?
                       _e80289_
                       'gx#syntax-quote::t)
                      _e80289_
                      (if (##structure-instance-of? _e80289_ 'gerbil#AST::t)
                          (_lp80287_
                           (##unchecked-structure-ref
                            _e80289_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80290_
                           (##unchecked-structure-ref
                            _e80289_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80289_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80289_
                               _src80291_
                               (reverse _marks80290_))
                              (if (null? _marks80290_)
                                  _e80289_
                                  (if (pair? _e80289_)
                                      (cons (gx#stx-wrap
                                             (car _e80289_)
                                             _marks80290_)
                                            (gx#stx-wrap
                                             (cdr _e80289_)
                                             _marks80290_))
                                      (if (vector? _e80289_)
                                          (vector-map
                                           (lambda (_g8029280294_)
                                             (gx#stx-wrap
                                              _g8029280294_
                                              _marks80290_))
                                           _e80289_)
                                          (if (box? _e80289_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80289_)
                                                    _marks80290_))
                                              _e80289_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80300_)
        (let ((_marks80302_ '())) (gx#stx-unwrap__% _stx80300_ _marks80302_))))
    (define gx#stx-unwrap
      (lambda _g80481_
        (let ((_g80480_ (##length _g80481_)))
          (cond ((##fx= _g80480_ 1)
                 (apply (lambda (_stx80300_) (gx#stx-unwrap__0 _stx80300_))
                        _g80481_))
                ((##fx= _g80480_ 2)
                 (apply (lambda (_stx80304_ _marks80305_)
                          (gx#stx-unwrap__% _stx80304_ _marks80305_))
                        _g80481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g80481_))))))
    (define gx#stx-wrap
      (lambda (_stx80277_ _marks80278_)
        (foldl1 (lambda (_mark80280_ _stx80281_)
                  (gx#stx-apply-mark _stx80281_ _mark80280_))
                _stx80277_
                _marks80278_)))
    (define gx#stx-rewrap
      (lambda (_stx80271_ _marks80272_)
        (foldr1 (lambda (_mark80274_ _stx80275_)
                  (gx#stx-apply-mark _stx80275_ _mark80274_))
                _stx80271_
                _marks80272_)))
    (define gx#stx-apply-mark
      (lambda (_stx80268_ _mark80269_)
        (if (##structure-direct-instance-of? _stx80268_ 'gx#syntax-quote::t)
            _stx80268_
            (if (and (##structure-direct-instance-of?
                      _stx80268_
                      'gx#syntax-wrap::t)
                     (eq? _mark80269_
                          (##unchecked-structure-ref
                           _stx80268_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80268_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80268_
                 (gx#stx-source _stx80268_)
                 _mark80269_)))))
    (define gx#apply-mark
      (lambda (_mark80232_ _marks80233_)
        (let* ((_marks8023480242_ _marks80233_)
               (_else8023680250_ (lambda () (cons _mark80232_ _marks80233_)))
               (_K8023880256_
                (lambda (_rest80253_ _hd80254_)
                  (if (eq? _mark80232_ _hd80254_)
                      _rest80253_
                      (cons _mark80232_ _marks80233_)))))
          (if (##pair? _marks8023480242_)
              (let ((_hd8023980259_ (##car _marks8023480242_))
                    (_tl8024080261_ (##cdr _marks8023480242_)))
                (let* ((_hd80264_ _hd8023980259_) (_rest80266_ _tl8024080261_))
                  (_K8023880256_ _rest80266_ _hd80264_)))
              (_else8023680250_)))))
    (define gx#stx-e
      (lambda (_stx80230_)
        (if (##structure-direct-instance-of? _stx80230_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80230_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80230_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80230_ '1 gx#AST::t '#f)
                _stx80230_))))
    (define gx#stx-source
      (lambda (_stx80228_)
        (if (##structure-instance-of? _stx80228_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80228_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80222_ _src80223_)
        (if (or (##structure-instance-of? _stx80222_ 'gerbil#AST::t)
                (not _src80223_))
            _stx80222_
            (##structure gx#AST::t _stx80222_ _src80223_))))
    (define gx#stx-datum?
      (lambda (_stx80220_) (gx#self-quoting? (gx#stx-e _stx80220_))))
    (define gx#self-quoting?
      (lambda (_x80203_)
        (let ((_$e80205_ (immediate? _x80203_)))
          (if _$e80205_
              _$e80205_
              (let ((_$e80208_ (number? _x80203_)))
                (if _$e80208_
                    _$e80208_
                    (let ((_$e80211_ (keyword? _x80203_)))
                      (if _$e80211_
                          _$e80211_
                          (let ((_$e80214_ (string? _x80203_)))
                            (if _$e80214_
                                _$e80214_
                                (let ((_$e80217_ (vector? _x80203_)))
                                  (if _$e80217_
                                      _$e80217_
                                      (u8vector? _x80203_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80201_) (boolean? (gx#stx-e _e80201_))))
    (define gx#stx-keyword? (lambda (_e80199_) (keyword? (gx#stx-e _e80199_))))
    (define gx#stx-char? (lambda (_e80197_) (char? (gx#stx-e _e80197_))))
    (define gx#stx-number? (lambda (_e80195_) (number? (gx#stx-e _e80195_))))
    (define gx#stx-fixnum? (lambda (_e80193_) (fixnum? (gx#stx-e _e80193_))))
    (define gx#stx-string? (lambda (_e80191_) (string? (gx#stx-e _e80191_))))
    (define gx#stx-null? (lambda (_e80189_) (null? (gx#stx-e _e80189_))))
    (define gx#stx-pair? (lambda (_e80187_) (pair? (gx#stx-e _e80187_))))
    (define gx#stx-list?
      (lambda (_e80149_)
        (let* ((_g8015080159_ (gx#stx-e _e80149_))
               (_E8015380163_
                (lambda () (error '"No clause matching" _g8015080159_))))
          (let ((_K8015580179_
                 (lambda (_rest80177_) (gx#stx-list? _rest80177_)))
                (_K8015480169_ (lambda (_tail80167_) (null? _tail80167_))))
            (if (##pair? _g8015080159_)
                (let* ((_tl8015780182_ (##cdr _g8015080159_))
                       (_rest80185_ _tl8015780182_))
                  (gx#stx-list? _rest80185_))
                (let ((_tail80172_ _g8015080159_)) (null? _tail80172_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80142_)
        (let* ((_e80144_ (gx#stx-e _e80142_)) (_$e80146_ (pair? _e80144_)))
          (if _$e80146_ _$e80146_ (null? _e80144_)))))
    (define gx#stx-vector? (lambda (_e80140_) (vector? (gx#stx-e _e80140_))))
    (define gx#stx-box? (lambda (_e80138_) (box? (gx#stx-e _e80138_))))
    (define gx#stx-eq?
      (lambda (_x80135_ _y80136_)
        (eq? (gx#stx-e _x80135_) (gx#stx-e _y80136_))))
    (define gx#stx-eqv?
      (lambda (_x80132_ _y80133_)
        (eqv? (gx#stx-e _x80132_) (gx#stx-e _y80133_))))
    (define gx#stx-equal?
      (lambda (_x80129_ _y80130_)
        (equal? (gx#stx-e _x80129_) (gx#stx-e _y80130_))))
    (define gx#stx-false? (lambda (_x80127_) (not (gx#stx-e _x80127_))))
    (define gx#stx-identifier
      (lambda (_template80124_ . _args80125_)
        (gx#datum->syntax__1
         _template80124_
         (apply make-symbol (gx#syntax->datum _args80125_))
         (gx#stx-source _template80124_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80122_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80122_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80120_)
        (if (##structure-direct-instance-of? _stx80120_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80120_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80120_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80120_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80120_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80116_)
        (let ((_stx80118_ (gx#stx-unwrap__0 _stx80116_)))
          (if (gx#identifier-quote? _stx80118_)
              (##unchecked-structure-ref _stx80118_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80071_)
        (let* ((_g8007280082_ (gx#stx-e _stx80071_))
               (_else8007580090_ (lambda () '#f)))
          (let ((_K8007880104_
                 (lambda (_rest80101_ _hd80102_)
                   (if (gx#identifier? _hd80102_)
                       (gx#identifier-list? _rest80101_)
                       '#f)))
                (_K8007780095_ (lambda () '#t)))
            (let ((_try-match8007480098_
                   (lambda ()
                     (if (##null? _g8007280082_)
                         (_K8007780095_)
                         (_else8007580090_)))))
              (if (##pair? _g8007280082_)
                  (let ((_tl8008080109_ (##cdr _g8007280082_))
                        (_hd8007980107_ (##car _g8007280082_)))
                    (let ((_hd80112_ _hd8007980107_)
                          (_rest80114_ _tl8008080109_))
                      (_K8007880104_ _rest80114_ _hd80112_)))
                  (_try-match8007480098_)))))))
    (define gx#genident__%
      (lambda (_e80048_ _src80049_)
        (gx#stx-wrap-source
         (gensym (let ((_e80051_ (gx#stx-e _e80048_)))
                   (if (interned-symbol? _e80051_) _e80051_ 'g)))
         (let ((_$e80053_ (gx#stx-source _e80048_)))
           (if _$e80053_ _$e80053_ _src80049_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80060_ 'g) (_src80062_ '#f))
          (gx#genident__% _e80060_ _src80062_))))
    (define gx#genident__1
      (lambda (_e80064_)
        (let ((_src80066_ '#f)) (gx#genident__% _e80064_ _src80066_))))
    (define gx#genident
      (lambda _g80483_
        (let ((_g80482_ (##length _g80483_)))
          (cond ((##fx= _g80482_ 0)
                 (apply (lambda () (gx#genident__0)) _g80483_))
                ((##fx= _g80482_ 1)
                 (apply (lambda (_e80064_) (gx#genident__1 _e80064_))
                        _g80483_))
                ((##fx= _g80482_ 2)
                 (apply (lambda (_e80068_ _src80069_)
                          (gx#genident__% _e80068_ _src80069_))
                        _g80483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g80483_))))))
    (define gx#gentemps
      (lambda (_stx-lst80045_) (gx#stx-map1 gx#genident _stx-lst80045_)))
    (define gx#syntax->list
      (lambda (_stx80043_) (gx#stx-map1 values _stx80043_)))
    (define gx#stx-car
      (lambda (_stx80040_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80040_)))))
    (define gx#stx-cdr
      (lambda (_stx80037_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80037_)))))
    (define gx#stx-length
      (lambda (_stx80002_)
        (let _lp80004_ ((_rest80006_ _stx80002_) (_n80007_ '0))
          (let* ((_g8000880016_ (gx#stx-e _rest80006_))
                 (_else8001080024_ (lambda () _n80007_))
                 (_K8001280029_
                  (lambda (_rest80027_)
                    (_lp80004_ _rest80027_ (fx+ _n80007_ '1)))))
            (if (##pair? _g8000880016_)
                (let* ((_tl8001480032_ (##cdr _g8000880016_))
                       (_rest80035_ _tl8001480032_))
                  (_K8001280029_ _rest80035_))
                (_else8001080024_))))))
    (define gx#stx-for-each
      (lambda _g80485_
        (let ((_g80484_ (##length _g80485_)))
          (cond ((##fx= _g80484_ 2)
                 (apply (lambda (_f79995_ _stx79996_)
                          (gx#stx-for-each1 _f79995_ _stx79996_))
                        _g80485_))
                ((##fx= _g80484_ 3)
                 (apply (lambda (_f79998_ _xstx79999_ _ystx80000_)
                          (gx#stx-for-each2 _f79998_ _xstx79999_ _ystx80000_))
                        _g80485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g80485_))))))
    (define gx#stx-for-each1
      (lambda (_f79945_ _stx79946_)
        (if (procedure? _f79945_)
            '#!void
            (error '"expected procedure" _f79945_))
        (let _lp79948_ ((_rest79950_ _stx79946_))
          (let* ((_g7995179961_ (gx#syntax-e _rest79950_))
                 (_else7995479969_ (lambda () (_f79945_ _rest79950_))))
            (let ((_K7995779983_
                   (lambda (_rest79980_ _hd79981_)
                     (_f79945_ _hd79981_)
                     (_lp79948_ _rest79980_)))
                  (_K7995679974_ (lambda () '#!void)))
              (let ((_try-match7995379977_
                     (lambda ()
                       (if (##null? _g7995179961_)
                           (_K7995679974_)
                           (_else7995479969_)))))
                (if (##pair? _g7995179961_)
                    (let ((_tl7995979988_ (##cdr _g7995179961_))
                          (_hd7995879986_ (##car _g7995179961_)))
                      (let ((_hd79991_ _hd7995879986_)
                            (_rest79993_ _tl7995979988_))
                        (_K7995779983_ _rest79993_ _hd79991_)))
                    (_try-match7995379977_))))))))
    (define gx#stx-for-each2
      (lambda (_f79850_ _xstx79851_ _ystx79852_)
        (if (procedure? _f79850_)
            '#!void
            (error '"expected procedure" _f79850_))
        (let _lp79854_ ((_xrest79856_ _xstx79851_) (_yrest79857_ _ystx79852_))
          (let* ((_g7985879868_ (gx#syntax-e _xrest79856_))
                 (_else7986179876_ (lambda () '#!void)))
            (let ((_K7986479933_
                   (lambda (_xrest79902_ _xhd79903_)
                     (let* ((_g7990479911_ (gx#syntax-e _yrest79857_))
                            (_E7990679915_
                             (lambda ()
                               (error '"No clause matching" _g7990479911_)))
                            (_K7990779921_
                             (lambda (_yrest79918_ _yhd79919_)
                               (_f79850_ _xhd79903_ _yhd79919_)
                               (_lp79854_ _xrest79902_ _yrest79918_))))
                       (if (##pair? _g7990479911_)
                           (let ((_hd7990879924_ (##car _g7990479911_))
                                 (_tl7990979926_ (##cdr _g7990479911_)))
                             (let* ((_yhd79929_ _hd7990879924_)
                                    (_yrest79931_ _tl7990979926_))
                               (_K7990779921_ _yrest79931_ _yhd79929_)))
                           (_E7990679915_)))))
                  (_K7986379896_
                   (lambda ()
                     (let* ((_yrest7988079885_ _yrest79857_)
                            (_E7988279889_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7988079885_)))
                            (_K7988379893_
                             (lambda () (_f79850_ _xrest79856_ _yrest79857_))))
                       (if (not (gx#stx-null? _yrest7988079885_))
                           (_K7988379893_)
                           (_E7988279889_))))))
              (let ((_try-match7986079899_
                     (lambda ()
                       (if (not (null? _g7985879868_))
                           (_K7986379896_)
                           (_else7986179876_)))))
                (if (##pair? _g7985879868_)
                    (let ((_tl7986679938_ (##cdr _g7985879868_))
                          (_hd7986579936_ (##car _g7985879868_)))
                      (let ((_xhd79941_ _hd7986579936_)
                            (_xrest79943_ _tl7986679938_))
                        (_K7986479933_ _xrest79943_ _xhd79941_)))
                    (_try-match7986079899_))))))))
    (define gx#stx-map
      (lambda _g80487_
        (let ((_g80486_ (##length _g80487_)))
          (cond ((##fx= _g80486_ 2)
                 (apply (lambda (_f79843_ _stx79844_)
                          (gx#stx-map1 _f79843_ _stx79844_))
                        _g80487_))
                ((##fx= _g80486_ 3)
                 (apply (lambda (_f79846_ _xstx79847_ _ystx79848_)
                          (gx#stx-map2 _f79846_ _xstx79847_ _ystx79848_))
                        _g80487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g80487_))))))
    (define gx#stx-map1
      (lambda (_f79793_ _stx79794_)
        (if (procedure? _f79793_)
            '#!void
            (error '"expected procedure" _f79793_))
        (let _recur79796_ ((_rest79798_ _stx79794_))
          (let* ((_g7979979809_ (gx#syntax-e _rest79798_))
                 (_else7980279817_ (lambda () (_f79793_ _rest79798_))))
            (let ((_K7980579831_
                   (lambda (_rest79828_ _hd79829_)
                     (cons (_f79793_ _hd79829_) (_recur79796_ _rest79828_))))
                  (_K7980479822_ (lambda () '())))
              (let ((_try-match7980179825_
                     (lambda ()
                       (if (##null? _g7979979809_)
                           (_K7980479822_)
                           (_else7980279817_)))))
                (if (##pair? _g7979979809_)
                    (let ((_tl7980779836_ (##cdr _g7979979809_))
                          (_hd7980679834_ (##car _g7979979809_)))
                      (let ((_hd79839_ _hd7980679834_)
                            (_rest79841_ _tl7980779836_))
                        (_K7980579831_ _rest79841_ _hd79839_)))
                    (_try-match7980179825_))))))))
    (define gx#stx-map2
      (lambda (_f79698_ _xstx79699_ _ystx79700_)
        (if (procedure? _f79698_)
            '#!void
            (error '"expected procedure" _f79698_))
        (let _recur79702_ ((_xrest79704_ _xstx79699_)
                           (_yrest79705_ _ystx79700_))
          (let* ((_g7970679716_ (gx#syntax-e _xrest79704_))
                 (_else7970979724_ (lambda () '())))
            (let ((_K7971279781_
                   (lambda (_xrest79750_ _xhd79751_)
                     (let* ((_g7975279759_ (gx#syntax-e _yrest79705_))
                            (_E7975479763_
                             (lambda ()
                               (error '"No clause matching" _g7975279759_)))
                            (_K7975579769_
                             (lambda (_yrest79766_ _yhd79767_)
                               (cons (_f79698_ _xhd79751_ _yhd79767_)
                                     (_recur79702_
                                      _xrest79750_
                                      _yrest79766_)))))
                       (if (##pair? _g7975279759_)
                           (let ((_hd7975679772_ (##car _g7975279759_))
                                 (_tl7975779774_ (##cdr _g7975279759_)))
                             (let* ((_yhd79777_ _hd7975679772_)
                                    (_yrest79779_ _tl7975779774_))
                               (_K7975579769_ _yrest79779_ _yhd79777_)))
                           (_E7975479763_)))))
                  (_K7971179744_
                   (lambda ()
                     (let* ((_yrest7972879733_ _yrest79705_)
                            (_E7973079737_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7972879733_)))
                            (_K7973179741_
                             (lambda () (_f79698_ _xrest79704_ _yrest79705_))))
                       (if (not (gx#stx-null? _yrest7972879733_))
                           (_K7973179741_)
                           (_E7973079737_))))))
              (let ((_try-match7970879747_
                     (lambda ()
                       (if (not (null? _g7970679716_))
                           (_K7971179744_)
                           (_else7970979724_)))))
                (if (##pair? _g7970679716_)
                    (let ((_tl7971479786_ (##cdr _g7970679716_))
                          (_hd7971379784_ (##car _g7970679716_)))
                      (let ((_xhd79789_ _hd7971379784_)
                            (_xrest79791_ _tl7971479786_))
                        (_K7971279781_ _xrest79791_ _xhd79789_)))
                    (_try-match7970879747_))))))))
    (define gx#stx-andmap
      (lambda (_f79648_ _stx79649_)
        (if (procedure? _f79648_)
            '#!void
            (error '"expected procedure" _f79648_))
        (let _lp79651_ ((_rest79653_ _stx79649_))
          (let* ((_g7965479664_ (gx#syntax-e _rest79653_))
                 (_else7965779672_ (lambda () (_f79648_ _rest79653_))))
            (let ((_K7966079686_
                   (lambda (_rest79683_ _hd79684_)
                     (if (_f79648_ _hd79684_) (_lp79651_ _rest79683_) '#f)))
                  (_K7965979677_ (lambda () '#t)))
              (let ((_try-match7965679680_
                     (lambda ()
                       (if (##null? _g7965479664_)
                           (_K7965979677_)
                           (_else7965779672_)))))
                (if (##pair? _g7965479664_)
                    (let ((_tl7966279691_ (##cdr _g7965479664_))
                          (_hd7966179689_ (##car _g7965479664_)))
                      (let ((_hd79694_ _hd7966179689_)
                            (_rest79696_ _tl7966279691_))
                        (_K7966079686_ _rest79696_ _hd79694_)))
                    (_try-match7965679680_))))))))
    (define gx#stx-ormap
      (lambda (_f79595_ _stx79596_)
        (if (procedure? _f79595_)
            '#!void
            (error '"expected procedure" _f79595_))
        (let _lp79598_ ((_rest79600_ _stx79596_))
          (let* ((_g7960179611_ (gx#syntax-e _rest79600_))
                 (_else7960479619_ (lambda () (_f79595_ _rest79600_))))
            (let ((_K7960779636_
                   (lambda (_rest79630_ _hd79631_)
                     (let ((_$e79633_ (_f79595_ _hd79631_)))
                       (if _$e79633_ _$e79633_ (_lp79598_ _rest79630_)))))
                  (_K7960679624_ (lambda () '#f)))
              (let ((_try-match7960379627_
                     (lambda ()
                       (if (##null? _g7960179611_)
                           (_K7960679624_)
                           (_else7960479619_)))))
                (if (##pair? _g7960179611_)
                    (let ((_tl7960979641_ (##cdr _g7960179611_))
                          (_hd7960879639_ (##car _g7960179611_)))
                      (let ((_hd79644_ _hd7960879639_)
                            (_rest79646_ _tl7960979641_))
                        (_K7960779636_ _rest79646_ _hd79644_)))
                    (_try-match7960379627_))))))))
    (define gx#stx-foldl
      (lambda (_f79543_ _iv79544_ _stx79545_)
        (if (procedure? _f79543_)
            '#!void
            (error '"expected procedure" _f79543_))
        (let _lp79547_ ((_r79549_ _iv79544_) (_rest79550_ _stx79545_))
          (let* ((_g7955179561_ (gx#syntax-e _rest79550_))
                 (_else7955479569_
                  (lambda () (_f79543_ _rest79550_ _r79549_))))
            (let ((_K7955779583_
                   (lambda (_rest79580_ _hd79581_)
                     (_lp79547_ (_f79543_ _hd79581_ _r79549_) _rest79580_)))
                  (_K7955679574_ (lambda () _r79549_)))
              (let ((_try-match7955379577_
                     (lambda ()
                       (if (##null? _g7955179561_)
                           (_K7955679574_)
                           (_else7955479569_)))))
                (if (##pair? _g7955179561_)
                    (let ((_tl7955979588_ (##cdr _g7955179561_))
                          (_hd7955879586_ (##car _g7955179561_)))
                      (let ((_hd79591_ _hd7955879586_)
                            (_rest79593_ _tl7955979588_))
                        (_K7955779583_ _rest79593_ _hd79591_)))
                    (_try-match7955379577_))))))))
    (define gx#stx-foldr
      (lambda (_f79492_ _iv79493_ _stx79494_)
        (if (procedure? _f79492_)
            '#!void
            (error '"expected procedure" _f79492_))
        (let _recur79496_ ((_rest79498_ _stx79494_))
          (let* ((_g7949979509_ (gx#syntax-e _rest79498_))
                 (_else7950279517_
                  (lambda () (_f79492_ _rest79498_ _iv79493_))))
            (let ((_K7950579531_
                   (lambda (_rest79528_ _hd79529_)
                     (_f79492_ _hd79529_ (_recur79496_ _rest79528_))))
                  (_K7950479522_ (lambda () _iv79493_)))
              (let ((_try-match7950179525_
                     (lambda ()
                       (if (##null? _g7949979509_)
                           (_K7950479522_)
                           (_else7950279517_)))))
                (if (##pair? _g7949979509_)
                    (let ((_tl7950779536_ (##cdr _g7949979509_))
                          (_hd7950679534_ (##car _g7949979509_)))
                      (let ((_hd79539_ _hd7950679534_)
                            (_rest79541_ _tl7950779536_))
                        (_K7950579531_ _rest79541_ _hd79539_)))
                    (_try-match7950179525_))))))))
    (define gx#stx-reverse
      (lambda (_stx79490_) (gx#stx-foldl cons '() _stx79490_)))
    (define gx#stx-last
      (lambda (_stx79451_)
        (let _lp79453_ ((_rest79455_ _stx79451_))
          (let* ((_g7945679464_ (gx#syntax-e _rest79455_))
                 (_else7945879472_ (lambda () _rest79455_))
                 (_K7946079478_
                  (lambda (_rest79475_ _hd79476_)
                    (if (gx#stx-null? _rest79475_)
                        _hd79476_
                        (_lp79453_ _rest79475_)))))
            (if (##pair? _g7945679464_)
                (let ((_hd7946179481_ (##car _g7945679464_))
                      (_tl7946279483_ (##cdr _g7945679464_)))
                  (let* ((_hd79486_ _hd7946179481_)
                         (_rest79488_ _tl7946279483_))
                    (_K7946079478_ _rest79488_ _hd79486_)))
                (_else7945879472_))))))
    (define gx#stx-last-pair
      (lambda (_stx79422_)
        (let _lp79424_ ((_hd79426_ _stx79422_))
          (let* ((_g7942779434_ (gx#syntax-e _hd79426_))
                 (_E7942979438_
                  (lambda () (error '"No clause matching" _g7942779434_)))
                 (_K7943079443_
                  (lambda (_rest79441_)
                    (if (gx#stx-pair? _rest79441_)
                        (_lp79424_ _rest79441_)
                        _hd79426_))))
            (if (##pair? _g7942779434_)
                (let* ((_tl7943279446_ (##cdr _g7942779434_))
                       (_rest79449_ _tl7943279446_))
                  (_K7943079443_ _rest79449_))
                (_E7942979438_))))))
    (define gx#stx-list-tail
      (lambda (_stx79391_ _k79392_)
        (let _lp79394_ ((_rest79396_ _stx79391_) (_k79397_ _k79392_))
          (if (fxpositive? _k79397_)
              (let* ((_g7939879405_ (gx#syntax-e _rest79396_))
                     (_E7940079409_
                      (lambda () (error '"No clause matching" _g7939879405_)))
                     (_K7940179414_
                      (lambda (_rest79412_)
                        (_lp79394_ _rest79412_ (fx- _k79397_ '1)))))
                (if (##pair? _g7939879405_)
                    (let* ((_tl7940379417_ (##cdr _g7939879405_))
                           (_rest79420_ _tl7940379417_))
                      (_K7940179414_ _rest79420_))
                    (_E7940079409_)))
              _rest79396_))))
    (define gx#stx-list-ref
      (lambda (_stx79388_ _k79389_)
        (gx#stx-car (gx#stx-list-tail _stx79388_ _k79389_))))
    (define gx#stx-plist?__%
      (lambda (_stx79300_ _key?79301_)
        (if (procedure? _key?79301_)
            '#!void
            (error '"expected procedure" _key?79301_))
        (let _lp79303_ ((_rest79305_ _stx79300_))
          (let* ((_g7930679316_ (gx#stx-e _rest79305_))
                 (_else7930979324_ (lambda () '#f)))
            (let ((_K7931279366_
                   (lambda (_rest79335_ _hd79336_)
                     (if (_key?79301_ _hd79336_)
                         (let* ((_g7933779345_ (gx#stx-e _rest79335_))
                                (_else7933979353_ (lambda () '#f))
                                (_K7934179358_
                                 (lambda (_rest79356_)
                                   (_lp79303_ _rest79356_))))
                           (if (##pair? _g7933779345_)
                               (let* ((_tl7934379361_ (##cdr _g7933779345_))
                                      (_rest79364_ _tl7934379361_))
                                 (_lp79303_ _rest79364_))
                               (_else7933979353_)))
                         '#f)))
                  (_K7931179329_ (lambda () '#t)))
              (let ((_try-match7930879332_
                     (lambda ()
                       (if (##null? _g7930679316_)
                           (_K7931179329_)
                           (_else7930979324_)))))
                (if (##pair? _g7930679316_)
                    (let ((_tl7931479371_ (##cdr _g7930679316_))
                          (_hd7931379369_ (##car _g7930679316_)))
                      (let ((_hd79374_ _hd7931379369_)
                            (_rest79376_ _tl7931479371_))
                        (_K7931279366_ _rest79376_ _hd79374_)))
                    (_try-match7930879332_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx79381_)
        (let ((_key?79383_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx79381_ _key?79383_))))
    (define gx#stx-plist?
      (lambda _g80489_
        (let ((_g80488_ (##length _g80489_)))
          (cond ((##fx= _g80488_ 1)
                 (apply (lambda (_stx79381_) (gx#stx-plist?__0 _stx79381_))
                        _g80489_))
                ((##fx= _g80488_ 2)
                 (apply (lambda (_stx79385_ _key?79386_)
                          (gx#stx-plist?__% _stx79385_ _key?79386_))
                        _g80489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g80489_))))))
    (define gx#stx-getq__%
      (lambda (_key79218_ _stx79219_ _key=?79220_)
        (if (procedure? _key=?79220_)
            '#!void
            (error '"expected procedure" _key=?79220_))
        (let _lp79222_ ((_rest79224_ _stx79219_))
          (let* ((_g7922579233_ (gx#syntax-e _rest79224_))
                 (_else7922779241_ (lambda () '#f))
                 (_K7922979275_
                  (lambda (_rest79244_ _hd79245_)
                    (let* ((_g7924679253_ (gx#syntax-e _rest79244_))
                           (_E7924879257_
                            (lambda ()
                              (error '"No clause matching" _g7924679253_)))
                           (_K7924979263_
                            (lambda (_rest79260_ _val79261_)
                              (if (_key=?79220_ _hd79245_ _key79218_)
                                  _val79261_
                                  (_lp79222_ _rest79260_)))))
                      (if (##pair? _g7924679253_)
                          (let ((_hd7925079266_ (##car _g7924679253_))
                                (_tl7925179268_ (##cdr _g7924679253_)))
                            (let* ((_val79271_ _hd7925079266_)
                                   (_rest79273_ _tl7925179268_))
                              (_K7924979263_ _rest79273_ _val79271_)))
                          (_E7924879257_))))))
            (if (##pair? _g7922579233_)
                (let ((_hd7923079278_ (##car _g7922579233_))
                      (_tl7923179280_ (##cdr _g7922579233_)))
                  (let* ((_hd79283_ _hd7923079278_)
                         (_rest79285_ _tl7923179280_))
                    (_K7922979275_ _rest79285_ _hd79283_)))
                (_else7922779241_))))))
    (define gx#stx-getq__0
      (lambda (_key79290_ _stx79291_)
        (let ((_key=?79293_ gx#stx-eq?))
          (gx#stx-getq__% _key79290_ _stx79291_ _key=?79293_))))
    (define gx#stx-getq
      (lambda _g80491_
        (let ((_g80490_ (##length _g80491_)))
          (cond ((##fx= _g80490_ 2)
                 (apply (lambda (_key79290_ _stx79291_)
                          (gx#stx-getq__0 _key79290_ _stx79291_))
                        _g80491_))
                ((##fx= _g80490_ 3)
                 (apply (lambda (_key79295_ _stx79296_ _key=?79297_)
                          (gx#stx-getq__% _key79295_ _stx79296_ _key=?79297_))
                        _g80491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g80491_))))))))
