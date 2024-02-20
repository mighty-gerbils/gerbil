(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708418154)
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
      (lambda _$args80478_
        (apply make-instance gx#identifier-wrap::t _$args80478_)))
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
      (lambda _$args80475_
        (apply make-instance gx#syntax-wrap::t _$args80475_)))
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
      (lambda _$args80472_
        (apply make-instance gx#syntax-quote::t _$args80472_)))
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
      (lambda (_stx80470_) (symbol? (gx#stx-e _stx80470_))))
    (define gx#identifier-quote?
      (lambda (_stx80468_)
        (if (##structure-direct-instance-of? _stx80468_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx80468_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx80466_)
        (if (##structure-direct-instance-of? _stx80466_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx80466_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx80466_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx80464_)
        (if (##structure-direct-instance-of? _stx80464_ 'gx#syntax-quote::t)
            _stx80464_
            (if (##structure-direct-instance-of? _stx80464_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx80464_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx80447_)
        (if (##structure-direct-instance-of? _stx80447_ 'gx#syntax-wrap::t)
            (let _lp80449_ ((_e80451_
                             (##unchecked-structure-ref
                              _stx80447_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks80452_
                             (cons (##unchecked-structure-ref
                                    _stx80447_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e80451_)
                  (let ((_$e80454_ (##type-id (##structure-type _e80451_))))
                    (if (eq? 'gx#syntax-wrap::t _$e80454_)
                        (_lp80449_
                         (##unchecked-structure-ref _e80451_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e80451_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks80452_))
                        (if (or (eq? 'gx#syntax-quote::t _$e80454_)
                                (eq? 'gx#identifier-wrap::t _$e80454_))
                            (##unchecked-structure-ref
                             _e80451_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e80454_)
                                (_lp80449_
                                 (##unchecked-structure-ref
                                  _e80451_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks80452_)
                                _e80451_))))
                  (if (null? _marks80452_)
                      _e80451_
                      (if (pair? _e80451_)
                          (cons (gx#stx-wrap (car _e80451_) _marks80452_)
                                (gx#stx-wrap (cdr _e80451_) _marks80452_))
                          (if (vector? _e80451_)
                              (vector-map
                               (lambda (_g8045980461_)
                                 (gx#stx-wrap _g8045980461_ _marks80452_))
                               _e80451_)
                              (if (box? _e80451_)
                                  (box (gx#stx-wrap
                                        (unbox _e80451_)
                                        _marks80452_))
                                  _e80451_))))))
            (if (##structure-instance-of? _stx80447_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80447_ '1 gx#AST::t '#f)
                _stx80447_))))
    (define gx#syntax->datum
      (lambda (_stx80445_)
        (if (##structure-instance-of? _stx80445_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx80445_ '1 gx#AST::t '#f))
            (if (pair? _stx80445_)
                (cons (gx#syntax->datum (car _stx80445_))
                      (gx#syntax->datum (cdr _stx80445_)))
                (if (vector? _stx80445_)
                    (vector-map gx#syntax->datum _stx80445_)
                    (if (box? _stx80445_)
                        (box (gx#syntax->datum (unbox _stx80445_)))
                        _stx80445_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80388_ _datum80389_ _src80390_ _quote?80391_)
        (letrec ((_wrap-datum80393_
                  (lambda (_e80417_ _marks80418_)
                    (_wrap-inner80395_
                     _e80417_
                     (lambda (_g8041980421_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8041980421_
                        _src80390_
                        _marks80418_)))))
                 (_wrap-quote80394_
                  (lambda (_e80409_ _ctx80410_ _marks80411_)
                    (_wrap-inner80395_
                     _e80409_
                     (lambda (_g8041280414_)
                       (##structure
                        gx#syntax-quote::t
                        _g8041280414_
                        _src80390_
                        _ctx80410_
                        _marks80411_)))))
                 (_wrap-inner80395_
                  (lambda (_e80402_ _wrap-e80403_)
                    (let _recur80405_ ((_e80407_ _e80402_))
                      (if (symbol? _e80407_)
                          (_wrap-e80403_ _e80407_)
                          (if (pair? _e80407_)
                              (cons (_recur80405_ (car _e80407_))
                                    (_recur80405_ (cdr _e80407_)))
                              (if (vector? _e80407_)
                                  (vector-map _recur80405_ _e80407_)
                                  (if (box? _e80407_)
                                      (box (_recur80405_ (unbox _e80407_)))
                                      _e80407_)))))))
                 (_wrap-outer80396_
                  (lambda (_e80400_)
                    (if (##structure-instance-of? _e80400_ 'gerbil#AST::t)
                        _e80400_
                        (##structure gx#AST::t _e80400_ _src80390_)))))
          (if (##structure-instance-of? _datum80389_ 'gerbil#AST::t)
              _datum80389_
              (if (not _stx80388_)
                  (##structure gx#AST::t _datum80389_ _src80390_)
                  (if (gx#identifier? _stx80388_)
                      (let ((_stx80398_ (gx#stx-unwrap__0 _stx80388_)))
                        (_wrap-outer80396_
                         (if (##structure-direct-instance-of?
                              _stx80398_
                              'gx#syntax-quote::t)
                             (if _quote?80391_
                                 (_wrap-quote80394_
                                  _datum80389_
                                  (##unchecked-structure-ref
                                   _stx80398_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80398_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80393_
                                  _datum80389_
                                  (##unchecked-structure-ref
                                   _stx80398_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80393_
                              _datum80389_
                              (##unchecked-structure-ref
                               _stx80398_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80388_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80427_ _datum80428_)
        (let* ((_src80430_ '#f) (_quote?80432_ '#t))
          (gx#datum->syntax__%
           _stx80427_
           _datum80428_
           _src80430_
           _quote?80432_))))
    (define gx#datum->syntax__1
      (lambda (_stx80434_ _datum80435_ _src80436_)
        (let ((_quote?80438_ '#t))
          (gx#datum->syntax__%
           _stx80434_
           _datum80435_
           _src80436_
           _quote?80438_))))
    (define gx#datum->syntax
      (lambda _g80559_
        (let ((_g80558_ (##length _g80559_)))
          (cond ((##fx= _g80558_ 2)
                 (apply (lambda (_stx80427_ _datum80428_)
                          (gx#datum->syntax__0 _stx80427_ _datum80428_))
                        _g80559_))
                ((##fx= _g80558_ 3)
                 (apply (lambda (_stx80434_ _datum80435_ _src80436_)
                          (gx#datum->syntax__1
                           _stx80434_
                           _datum80435_
                           _src80436_))
                        _g80559_))
                ((##fx= _g80558_ 4)
                 (apply (lambda (_stx80440_
                                 _datum80441_
                                 _src80442_
                                 _quote?80443_)
                          (gx#datum->syntax__%
                           _stx80440_
                           _datum80441_
                           _src80442_
                           _quote?80443_))
                        _g80559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g80559_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80364_ _marks80365_)
        (let _lp80367_ ((_e80369_ _stx80364_)
                        (_marks80370_ _marks80365_)
                        (_src80371_ (gx#stx-source _stx80364_)))
          (if (##structure-direct-instance-of? _e80369_ 'gx#syntax-wrap::t)
              (_lp80367_
               (##unchecked-structure-ref _e80369_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80369_ '3 gx#syntax-wrap::t '#f)
                _marks80370_)
               (##unchecked-structure-ref _e80369_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80369_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80370_)
                      _e80369_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80369_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80369_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80369_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80370_)))
                  (if (##structure-direct-instance-of?
                       _e80369_
                       'gx#syntax-quote::t)
                      _e80369_
                      (if (##structure-instance-of? _e80369_ 'gerbil#AST::t)
                          (_lp80367_
                           (##unchecked-structure-ref
                            _e80369_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80370_
                           (##unchecked-structure-ref
                            _e80369_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80369_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80369_
                               _src80371_
                               (reverse _marks80370_))
                              (if (null? _marks80370_)
                                  _e80369_
                                  (if (pair? _e80369_)
                                      (cons (gx#stx-wrap
                                             (car _e80369_)
                                             _marks80370_)
                                            (gx#stx-wrap
                                             (cdr _e80369_)
                                             _marks80370_))
                                      (if (vector? _e80369_)
                                          (vector-map
                                           (lambda (_g8037280374_)
                                             (gx#stx-wrap
                                              _g8037280374_
                                              _marks80370_))
                                           _e80369_)
                                          (if (box? _e80369_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80369_)
                                                    _marks80370_))
                                              _e80369_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80380_)
        (let ((_marks80382_ '())) (gx#stx-unwrap__% _stx80380_ _marks80382_))))
    (define gx#stx-unwrap
      (lambda _g80561_
        (let ((_g80560_ (##length _g80561_)))
          (cond ((##fx= _g80560_ 1)
                 (apply (lambda (_stx80380_) (gx#stx-unwrap__0 _stx80380_))
                        _g80561_))
                ((##fx= _g80560_ 2)
                 (apply (lambda (_stx80384_ _marks80385_)
                          (gx#stx-unwrap__% _stx80384_ _marks80385_))
                        _g80561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g80561_))))))
    (define gx#stx-wrap
      (lambda (_stx80357_ _marks80358_)
        (foldl1 (lambda (_mark80360_ _stx80361_)
                  (gx#stx-apply-mark _stx80361_ _mark80360_))
                _stx80357_
                _marks80358_)))
    (define gx#stx-rewrap
      (lambda (_stx80351_ _marks80352_)
        (foldr1 (lambda (_mark80354_ _stx80355_)
                  (gx#stx-apply-mark _stx80355_ _mark80354_))
                _stx80351_
                _marks80352_)))
    (define gx#stx-apply-mark
      (lambda (_stx80348_ _mark80349_)
        (if (##structure-direct-instance-of? _stx80348_ 'gx#syntax-quote::t)
            _stx80348_
            (if (and (##structure-direct-instance-of?
                      _stx80348_
                      'gx#syntax-wrap::t)
                     (eq? _mark80349_
                          (##unchecked-structure-ref
                           _stx80348_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80348_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80348_
                 (gx#stx-source _stx80348_)
                 _mark80349_)))))
    (define gx#apply-mark
      (lambda (_mark80312_ _marks80313_)
        (let* ((_marks8031480322_ _marks80313_)
               (_else8031680330_ (lambda () (cons _mark80312_ _marks80313_)))
               (_K8031880336_
                (lambda (_rest80333_ _hd80334_)
                  (if (eq? _mark80312_ _hd80334_)
                      _rest80333_
                      (cons _mark80312_ _marks80313_)))))
          (if (##pair? _marks8031480322_)
              (let ((_hd8031980339_ (##car _marks8031480322_))
                    (_tl8032080341_ (##cdr _marks8031480322_)))
                (let* ((_hd80344_ _hd8031980339_) (_rest80346_ _tl8032080341_))
                  (_K8031880336_ _rest80346_ _hd80344_)))
              (_else8031680330_)))))
    (define gx#stx-e
      (lambda (_stx80310_)
        (if (##structure-direct-instance-of? _stx80310_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80310_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80310_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80310_ '1 gx#AST::t '#f)
                _stx80310_))))
    (define gx#stx-source
      (lambda (_stx80308_)
        (if (##structure-instance-of? _stx80308_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80308_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80302_ _src80303_)
        (if (or (##structure-instance-of? _stx80302_ 'gerbil#AST::t)
                (not _src80303_))
            _stx80302_
            (##structure gx#AST::t _stx80302_ _src80303_))))
    (define gx#stx-datum?
      (lambda (_stx80300_) (gx#self-quoting? (gx#stx-e _stx80300_))))
    (define gx#self-quoting?
      (lambda (_x80283_)
        (let ((_$e80285_ (immediate? _x80283_)))
          (if _$e80285_
              _$e80285_
              (let ((_$e80288_ (number? _x80283_)))
                (if _$e80288_
                    _$e80288_
                    (let ((_$e80291_ (keyword? _x80283_)))
                      (if _$e80291_
                          _$e80291_
                          (let ((_$e80294_ (string? _x80283_)))
                            (if _$e80294_
                                _$e80294_
                                (let ((_$e80297_ (vector? _x80283_)))
                                  (if _$e80297_
                                      _$e80297_
                                      (u8vector? _x80283_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80281_) (boolean? (gx#stx-e _e80281_))))
    (define gx#stx-keyword? (lambda (_e80279_) (keyword? (gx#stx-e _e80279_))))
    (define gx#stx-char? (lambda (_e80277_) (char? (gx#stx-e _e80277_))))
    (define gx#stx-number? (lambda (_e80275_) (number? (gx#stx-e _e80275_))))
    (define gx#stx-fixnum? (lambda (_e80273_) (fixnum? (gx#stx-e _e80273_))))
    (define gx#stx-string? (lambda (_e80271_) (string? (gx#stx-e _e80271_))))
    (define gx#stx-null? (lambda (_e80269_) (null? (gx#stx-e _e80269_))))
    (define gx#stx-pair? (lambda (_e80267_) (pair? (gx#stx-e _e80267_))))
    (define gx#stx-list?
      (lambda (_e80229_)
        (let* ((_g8023080239_ (gx#stx-e _e80229_))
               (_E8023380243_
                (lambda () (error '"No clause matching" _g8023080239_))))
          (let ((_K8023580259_
                 (lambda (_rest80257_) (gx#stx-list? _rest80257_)))
                (_K8023480249_ (lambda (_tail80247_) (null? _tail80247_))))
            (if (##pair? _g8023080239_)
                (let* ((_tl8023780262_ (##cdr _g8023080239_))
                       (_rest80265_ _tl8023780262_))
                  (gx#stx-list? _rest80265_))
                (let ((_tail80252_ _g8023080239_)) (null? _tail80252_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80222_)
        (let* ((_e80224_ (gx#stx-e _e80222_)) (_$e80226_ (pair? _e80224_)))
          (if _$e80226_ _$e80226_ (null? _e80224_)))))
    (define gx#stx-vector? (lambda (_e80220_) (vector? (gx#stx-e _e80220_))))
    (define gx#stx-box? (lambda (_e80218_) (box? (gx#stx-e _e80218_))))
    (define gx#stx-eq?
      (lambda (_x80215_ _y80216_)
        (eq? (gx#stx-e _x80215_) (gx#stx-e _y80216_))))
    (define gx#stx-eqv?
      (lambda (_x80212_ _y80213_)
        (eqv? (gx#stx-e _x80212_) (gx#stx-e _y80213_))))
    (define gx#stx-equal?
      (lambda (_x80209_ _y80210_)
        (equal? (gx#stx-e _x80209_) (gx#stx-e _y80210_))))
    (define gx#stx-false? (lambda (_x80207_) (not (gx#stx-e _x80207_))))
    (define gx#stx-identifier
      (lambda (_template80204_ . _args80205_)
        (gx#datum->syntax__1
         _template80204_
         (apply make-symbol (gx#syntax->datum _args80205_))
         (gx#stx-source _template80204_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80202_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80202_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80200_)
        (if (##structure-direct-instance-of? _stx80200_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80200_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80200_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80200_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80200_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80196_)
        (let ((_stx80198_ (gx#stx-unwrap__0 _stx80196_)))
          (if (gx#identifier-quote? _stx80198_)
              (##unchecked-structure-ref _stx80198_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80151_)
        (let* ((_g8015280162_ (gx#stx-e _stx80151_))
               (_else8015580170_ (lambda () '#f)))
          (let ((_K8015880184_
                 (lambda (_rest80181_ _hd80182_)
                   (if (gx#identifier? _hd80182_)
                       (gx#identifier-list? _rest80181_)
                       '#f)))
                (_K8015780175_ (lambda () '#t)))
            (let ((_try-match8015480178_
                   (lambda ()
                     (if (##null? _g8015280162_)
                         (_K8015780175_)
                         (_else8015580170_)))))
              (if (##pair? _g8015280162_)
                  (let ((_tl8016080189_ (##cdr _g8015280162_))
                        (_hd8015980187_ (##car _g8015280162_)))
                    (let ((_hd80192_ _hd8015980187_)
                          (_rest80194_ _tl8016080189_))
                      (_K8015880184_ _rest80194_ _hd80192_)))
                  (_try-match8015480178_)))))))
    (define gx#genident__%
      (lambda (_e80128_ _src80129_)
        (gx#stx-wrap-source
         (gensym (let ((_e80131_ (gx#stx-e _e80128_)))
                   (if (interned-symbol? _e80131_) _e80131_ 'g)))
         (let ((_$e80133_ (gx#stx-source _e80128_)))
           (if _$e80133_ _$e80133_ _src80129_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80140_ 'g) (_src80142_ '#f))
          (gx#genident__% _e80140_ _src80142_))))
    (define gx#genident__1
      (lambda (_e80144_)
        (let ((_src80146_ '#f)) (gx#genident__% _e80144_ _src80146_))))
    (define gx#genident
      (lambda _g80563_
        (let ((_g80562_ (##length _g80563_)))
          (cond ((##fx= _g80562_ 0)
                 (apply (lambda () (gx#genident__0)) _g80563_))
                ((##fx= _g80562_ 1)
                 (apply (lambda (_e80144_) (gx#genident__1 _e80144_))
                        _g80563_))
                ((##fx= _g80562_ 2)
                 (apply (lambda (_e80148_ _src80149_)
                          (gx#genident__% _e80148_ _src80149_))
                        _g80563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g80563_))))))
    (define gx#gentemps
      (lambda (_stx-lst80125_) (gx#stx-map1 gx#genident _stx-lst80125_)))
    (define gx#syntax->list
      (lambda (_stx80123_) (gx#stx-map1 values _stx80123_)))
    (define gx#stx-car
      (lambda (_stx80120_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80120_)))))
    (define gx#stx-cdr
      (lambda (_stx80117_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80117_)))))
    (define gx#stx-length
      (lambda (_stx80082_)
        (let _lp80084_ ((_rest80086_ _stx80082_) (_n80087_ '0))
          (let* ((_g8008880096_ (gx#stx-e _rest80086_))
                 (_else8009080104_ (lambda () _n80087_))
                 (_K8009280109_
                  (lambda (_rest80107_)
                    (_lp80084_ _rest80107_ (fx+ _n80087_ '1)))))
            (if (##pair? _g8008880096_)
                (let* ((_tl8009480112_ (##cdr _g8008880096_))
                       (_rest80115_ _tl8009480112_))
                  (_K8009280109_ _rest80115_))
                (_else8009080104_))))))
    (define gx#stx-for-each
      (lambda _g80565_
        (let ((_g80564_ (##length _g80565_)))
          (cond ((##fx= _g80564_ 2)
                 (apply (lambda (_f80075_ _stx80076_)
                          (gx#stx-for-each1 _f80075_ _stx80076_))
                        _g80565_))
                ((##fx= _g80564_ 3)
                 (apply (lambda (_f80078_ _xstx80079_ _ystx80080_)
                          (gx#stx-for-each2 _f80078_ _xstx80079_ _ystx80080_))
                        _g80565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g80565_))))))
    (define gx#stx-for-each1
      (lambda (_f80025_ _stx80026_)
        (if (procedure? _f80025_)
            '#!void
            (error '"expected procedure" _f80025_))
        (let _lp80028_ ((_rest80030_ _stx80026_))
          (let* ((_g8003180041_ (gx#syntax-e _rest80030_))
                 (_else8003480049_ (lambda () (_f80025_ _rest80030_))))
            (let ((_K8003780063_
                   (lambda (_rest80060_ _hd80061_)
                     (_f80025_ _hd80061_)
                     (_lp80028_ _rest80060_)))
                  (_K8003680054_ (lambda () '#!void)))
              (let ((_try-match8003380057_
                     (lambda ()
                       (if (##null? _g8003180041_)
                           (_K8003680054_)
                           (_else8003480049_)))))
                (if (##pair? _g8003180041_)
                    (let ((_tl8003980068_ (##cdr _g8003180041_))
                          (_hd8003880066_ (##car _g8003180041_)))
                      (let ((_hd80071_ _hd8003880066_)
                            (_rest80073_ _tl8003980068_))
                        (_K8003780063_ _rest80073_ _hd80071_)))
                    (_try-match8003380057_))))))))
    (define gx#stx-for-each2
      (lambda (_f79930_ _xstx79931_ _ystx79932_)
        (if (procedure? _f79930_)
            '#!void
            (error '"expected procedure" _f79930_))
        (let _lp79934_ ((_xrest79936_ _xstx79931_) (_yrest79937_ _ystx79932_))
          (let* ((_g7993879948_ (gx#syntax-e _xrest79936_))
                 (_else7994179956_ (lambda () '#!void)))
            (let ((_K7994480013_
                   (lambda (_xrest79982_ _xhd79983_)
                     (let* ((_g7998479991_ (gx#syntax-e _yrest79937_))
                            (_E7998679995_
                             (lambda ()
                               (error '"No clause matching" _g7998479991_)))
                            (_K7998780001_
                             (lambda (_yrest79998_ _yhd79999_)
                               (_f79930_ _xhd79983_ _yhd79999_)
                               (_lp79934_ _xrest79982_ _yrest79998_))))
                       (if (##pair? _g7998479991_)
                           (let ((_hd7998880004_ (##car _g7998479991_))
                                 (_tl7998980006_ (##cdr _g7998479991_)))
                             (let* ((_yhd80009_ _hd7998880004_)
                                    (_yrest80011_ _tl7998980006_))
                               (_K7998780001_ _yrest80011_ _yhd80009_)))
                           (_E7998679995_)))))
                  (_K7994379976_
                   (lambda ()
                     (let* ((_yrest7996079965_ _yrest79937_)
                            (_E7996279969_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7996079965_)))
                            (_K7996379973_
                             (lambda () (_f79930_ _xrest79936_ _yrest79937_))))
                       (if (not (gx#stx-null? _yrest7996079965_))
                           (_K7996379973_)
                           (_E7996279969_))))))
              (let ((_try-match7994079979_
                     (lambda ()
                       (if (not (null? _g7993879948_))
                           (_K7994379976_)
                           (_else7994179956_)))))
                (if (##pair? _g7993879948_)
                    (let ((_tl7994680018_ (##cdr _g7993879948_))
                          (_hd7994580016_ (##car _g7993879948_)))
                      (let ((_xhd80021_ _hd7994580016_)
                            (_xrest80023_ _tl7994680018_))
                        (_K7994480013_ _xrest80023_ _xhd80021_)))
                    (_try-match7994079979_))))))))
    (define gx#stx-map
      (lambda _g80567_
        (let ((_g80566_ (##length _g80567_)))
          (cond ((##fx= _g80566_ 2)
                 (apply (lambda (_f79923_ _stx79924_)
                          (gx#stx-map1 _f79923_ _stx79924_))
                        _g80567_))
                ((##fx= _g80566_ 3)
                 (apply (lambda (_f79926_ _xstx79927_ _ystx79928_)
                          (gx#stx-map2 _f79926_ _xstx79927_ _ystx79928_))
                        _g80567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g80567_))))))
    (define gx#stx-map1
      (lambda (_f79873_ _stx79874_)
        (if (procedure? _f79873_)
            '#!void
            (error '"expected procedure" _f79873_))
        (let _recur79876_ ((_rest79878_ _stx79874_))
          (let* ((_g7987979889_ (gx#syntax-e _rest79878_))
                 (_else7988279897_ (lambda () (_f79873_ _rest79878_))))
            (let ((_K7988579911_
                   (lambda (_rest79908_ _hd79909_)
                     (cons (_f79873_ _hd79909_) (_recur79876_ _rest79908_))))
                  (_K7988479902_ (lambda () '())))
              (let ((_try-match7988179905_
                     (lambda ()
                       (if (##null? _g7987979889_)
                           (_K7988479902_)
                           (_else7988279897_)))))
                (if (##pair? _g7987979889_)
                    (let ((_tl7988779916_ (##cdr _g7987979889_))
                          (_hd7988679914_ (##car _g7987979889_)))
                      (let ((_hd79919_ _hd7988679914_)
                            (_rest79921_ _tl7988779916_))
                        (_K7988579911_ _rest79921_ _hd79919_)))
                    (_try-match7988179905_))))))))
    (define gx#stx-map2
      (lambda (_f79778_ _xstx79779_ _ystx79780_)
        (if (procedure? _f79778_)
            '#!void
            (error '"expected procedure" _f79778_))
        (let _recur79782_ ((_xrest79784_ _xstx79779_)
                           (_yrest79785_ _ystx79780_))
          (let* ((_g7978679796_ (gx#syntax-e _xrest79784_))
                 (_else7978979804_ (lambda () '())))
            (let ((_K7979279861_
                   (lambda (_xrest79830_ _xhd79831_)
                     (let* ((_g7983279839_ (gx#syntax-e _yrest79785_))
                            (_E7983479843_
                             (lambda ()
                               (error '"No clause matching" _g7983279839_)))
                            (_K7983579849_
                             (lambda (_yrest79846_ _yhd79847_)
                               (cons (_f79778_ _xhd79831_ _yhd79847_)
                                     (_recur79782_
                                      _xrest79830_
                                      _yrest79846_)))))
                       (if (##pair? _g7983279839_)
                           (let ((_hd7983679852_ (##car _g7983279839_))
                                 (_tl7983779854_ (##cdr _g7983279839_)))
                             (let* ((_yhd79857_ _hd7983679852_)
                                    (_yrest79859_ _tl7983779854_))
                               (_K7983579849_ _yrest79859_ _yhd79857_)))
                           (_E7983479843_)))))
                  (_K7979179824_
                   (lambda ()
                     (let* ((_yrest7980879813_ _yrest79785_)
                            (_E7981079817_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7980879813_)))
                            (_K7981179821_
                             (lambda () (_f79778_ _xrest79784_ _yrest79785_))))
                       (if (not (gx#stx-null? _yrest7980879813_))
                           (_K7981179821_)
                           (_E7981079817_))))))
              (let ((_try-match7978879827_
                     (lambda ()
                       (if (not (null? _g7978679796_))
                           (_K7979179824_)
                           (_else7978979804_)))))
                (if (##pair? _g7978679796_)
                    (let ((_tl7979479866_ (##cdr _g7978679796_))
                          (_hd7979379864_ (##car _g7978679796_)))
                      (let ((_xhd79869_ _hd7979379864_)
                            (_xrest79871_ _tl7979479866_))
                        (_K7979279861_ _xrest79871_ _xhd79869_)))
                    (_try-match7978879827_))))))))
    (define gx#stx-andmap
      (lambda (_f79728_ _stx79729_)
        (if (procedure? _f79728_)
            '#!void
            (error '"expected procedure" _f79728_))
        (let _lp79731_ ((_rest79733_ _stx79729_))
          (let* ((_g7973479744_ (gx#syntax-e _rest79733_))
                 (_else7973779752_ (lambda () (_f79728_ _rest79733_))))
            (let ((_K7974079766_
                   (lambda (_rest79763_ _hd79764_)
                     (if (_f79728_ _hd79764_) (_lp79731_ _rest79763_) '#f)))
                  (_K7973979757_ (lambda () '#t)))
              (let ((_try-match7973679760_
                     (lambda ()
                       (if (##null? _g7973479744_)
                           (_K7973979757_)
                           (_else7973779752_)))))
                (if (##pair? _g7973479744_)
                    (let ((_tl7974279771_ (##cdr _g7973479744_))
                          (_hd7974179769_ (##car _g7973479744_)))
                      (let ((_hd79774_ _hd7974179769_)
                            (_rest79776_ _tl7974279771_))
                        (_K7974079766_ _rest79776_ _hd79774_)))
                    (_try-match7973679760_))))))))
    (define gx#stx-ormap
      (lambda (_f79675_ _stx79676_)
        (if (procedure? _f79675_)
            '#!void
            (error '"expected procedure" _f79675_))
        (let _lp79678_ ((_rest79680_ _stx79676_))
          (let* ((_g7968179691_ (gx#syntax-e _rest79680_))
                 (_else7968479699_ (lambda () (_f79675_ _rest79680_))))
            (let ((_K7968779716_
                   (lambda (_rest79710_ _hd79711_)
                     (let ((_$e79713_ (_f79675_ _hd79711_)))
                       (if _$e79713_ _$e79713_ (_lp79678_ _rest79710_)))))
                  (_K7968679704_ (lambda () '#f)))
              (let ((_try-match7968379707_
                     (lambda ()
                       (if (##null? _g7968179691_)
                           (_K7968679704_)
                           (_else7968479699_)))))
                (if (##pair? _g7968179691_)
                    (let ((_tl7968979721_ (##cdr _g7968179691_))
                          (_hd7968879719_ (##car _g7968179691_)))
                      (let ((_hd79724_ _hd7968879719_)
                            (_rest79726_ _tl7968979721_))
                        (_K7968779716_ _rest79726_ _hd79724_)))
                    (_try-match7968379707_))))))))
    (define gx#stx-foldl
      (lambda (_f79623_ _iv79624_ _stx79625_)
        (if (procedure? _f79623_)
            '#!void
            (error '"expected procedure" _f79623_))
        (let _lp79627_ ((_r79629_ _iv79624_) (_rest79630_ _stx79625_))
          (let* ((_g7963179641_ (gx#syntax-e _rest79630_))
                 (_else7963479649_
                  (lambda () (_f79623_ _rest79630_ _r79629_))))
            (let ((_K7963779663_
                   (lambda (_rest79660_ _hd79661_)
                     (_lp79627_ (_f79623_ _hd79661_ _r79629_) _rest79660_)))
                  (_K7963679654_ (lambda () _r79629_)))
              (let ((_try-match7963379657_
                     (lambda ()
                       (if (##null? _g7963179641_)
                           (_K7963679654_)
                           (_else7963479649_)))))
                (if (##pair? _g7963179641_)
                    (let ((_tl7963979668_ (##cdr _g7963179641_))
                          (_hd7963879666_ (##car _g7963179641_)))
                      (let ((_hd79671_ _hd7963879666_)
                            (_rest79673_ _tl7963979668_))
                        (_K7963779663_ _rest79673_ _hd79671_)))
                    (_try-match7963379657_))))))))
    (define gx#stx-foldr
      (lambda (_f79572_ _iv79573_ _stx79574_)
        (if (procedure? _f79572_)
            '#!void
            (error '"expected procedure" _f79572_))
        (let _recur79576_ ((_rest79578_ _stx79574_))
          (let* ((_g7957979589_ (gx#syntax-e _rest79578_))
                 (_else7958279597_
                  (lambda () (_f79572_ _rest79578_ _iv79573_))))
            (let ((_K7958579611_
                   (lambda (_rest79608_ _hd79609_)
                     (_f79572_ _hd79609_ (_recur79576_ _rest79608_))))
                  (_K7958479602_ (lambda () _iv79573_)))
              (let ((_try-match7958179605_
                     (lambda ()
                       (if (##null? _g7957979589_)
                           (_K7958479602_)
                           (_else7958279597_)))))
                (if (##pair? _g7957979589_)
                    (let ((_tl7958779616_ (##cdr _g7957979589_))
                          (_hd7958679614_ (##car _g7957979589_)))
                      (let ((_hd79619_ _hd7958679614_)
                            (_rest79621_ _tl7958779616_))
                        (_K7958579611_ _rest79621_ _hd79619_)))
                    (_try-match7958179605_))))))))
    (define gx#stx-reverse
      (lambda (_stx79570_) (gx#stx-foldl cons '() _stx79570_)))
    (define gx#stx-last
      (lambda (_stx79531_)
        (let _lp79533_ ((_rest79535_ _stx79531_))
          (let* ((_g7953679544_ (gx#syntax-e _rest79535_))
                 (_else7953879552_ (lambda () _rest79535_))
                 (_K7954079558_
                  (lambda (_rest79555_ _hd79556_)
                    (if (gx#stx-null? _rest79555_)
                        _hd79556_
                        (_lp79533_ _rest79555_)))))
            (if (##pair? _g7953679544_)
                (let ((_hd7954179561_ (##car _g7953679544_))
                      (_tl7954279563_ (##cdr _g7953679544_)))
                  (let* ((_hd79566_ _hd7954179561_)
                         (_rest79568_ _tl7954279563_))
                    (_K7954079558_ _rest79568_ _hd79566_)))
                (_else7953879552_))))))
    (define gx#stx-last-pair
      (lambda (_stx79502_)
        (let _lp79504_ ((_hd79506_ _stx79502_))
          (let* ((_g7950779514_ (gx#syntax-e _hd79506_))
                 (_E7950979518_
                  (lambda () (error '"No clause matching" _g7950779514_)))
                 (_K7951079523_
                  (lambda (_rest79521_)
                    (if (gx#stx-pair? _rest79521_)
                        (_lp79504_ _rest79521_)
                        _hd79506_))))
            (if (##pair? _g7950779514_)
                (let* ((_tl7951279526_ (##cdr _g7950779514_))
                       (_rest79529_ _tl7951279526_))
                  (_K7951079523_ _rest79529_))
                (_E7950979518_))))))
    (define gx#stx-list-tail
      (lambda (_stx79471_ _k79472_)
        (let _lp79474_ ((_rest79476_ _stx79471_) (_k79477_ _k79472_))
          (if (fxpositive? _k79477_)
              (let* ((_g7947879485_ (gx#syntax-e _rest79476_))
                     (_E7948079489_
                      (lambda () (error '"No clause matching" _g7947879485_)))
                     (_K7948179494_
                      (lambda (_rest79492_)
                        (_lp79474_ _rest79492_ (fx- _k79477_ '1)))))
                (if (##pair? _g7947879485_)
                    (let* ((_tl7948379497_ (##cdr _g7947879485_))
                           (_rest79500_ _tl7948379497_))
                      (_K7948179494_ _rest79500_))
                    (_E7948079489_)))
              _rest79476_))))
    (define gx#stx-list-ref
      (lambda (_stx79468_ _k79469_)
        (gx#stx-car (gx#stx-list-tail _stx79468_ _k79469_))))
    (define gx#stx-plist?__%
      (lambda (_stx79380_ _key?79381_)
        (if (procedure? _key?79381_)
            '#!void
            (error '"expected procedure" _key?79381_))
        (let _lp79383_ ((_rest79385_ _stx79380_))
          (let* ((_g7938679396_ (gx#stx-e _rest79385_))
                 (_else7938979404_ (lambda () '#f)))
            (let ((_K7939279446_
                   (lambda (_rest79415_ _hd79416_)
                     (if (_key?79381_ _hd79416_)
                         (let* ((_g7941779425_ (gx#stx-e _rest79415_))
                                (_else7941979433_ (lambda () '#f))
                                (_K7942179438_
                                 (lambda (_rest79436_)
                                   (_lp79383_ _rest79436_))))
                           (if (##pair? _g7941779425_)
                               (let* ((_tl7942379441_ (##cdr _g7941779425_))
                                      (_rest79444_ _tl7942379441_))
                                 (_lp79383_ _rest79444_))
                               (_else7941979433_)))
                         '#f)))
                  (_K7939179409_ (lambda () '#t)))
              (let ((_try-match7938879412_
                     (lambda ()
                       (if (##null? _g7938679396_)
                           (_K7939179409_)
                           (_else7938979404_)))))
                (if (##pair? _g7938679396_)
                    (let ((_tl7939479451_ (##cdr _g7938679396_))
                          (_hd7939379449_ (##car _g7938679396_)))
                      (let ((_hd79454_ _hd7939379449_)
                            (_rest79456_ _tl7939479451_))
                        (_K7939279446_ _rest79456_ _hd79454_)))
                    (_try-match7938879412_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx79461_)
        (let ((_key?79463_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx79461_ _key?79463_))))
    (define gx#stx-plist?
      (lambda _g80569_
        (let ((_g80568_ (##length _g80569_)))
          (cond ((##fx= _g80568_ 1)
                 (apply (lambda (_stx79461_) (gx#stx-plist?__0 _stx79461_))
                        _g80569_))
                ((##fx= _g80568_ 2)
                 (apply (lambda (_stx79465_ _key?79466_)
                          (gx#stx-plist?__% _stx79465_ _key?79466_))
                        _g80569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g80569_))))))
    (define gx#stx-getq__%
      (lambda (_key79298_ _stx79299_ _key=?79300_)
        (if (procedure? _key=?79300_)
            '#!void
            (error '"expected procedure" _key=?79300_))
        (let _lp79302_ ((_rest79304_ _stx79299_))
          (let* ((_g7930579313_ (gx#syntax-e _rest79304_))
                 (_else7930779321_ (lambda () '#f))
                 (_K7930979355_
                  (lambda (_rest79324_ _hd79325_)
                    (let* ((_g7932679333_ (gx#syntax-e _rest79324_))
                           (_E7932879337_
                            (lambda ()
                              (error '"No clause matching" _g7932679333_)))
                           (_K7932979343_
                            (lambda (_rest79340_ _val79341_)
                              (if (_key=?79300_ _hd79325_ _key79298_)
                                  _val79341_
                                  (_lp79302_ _rest79340_)))))
                      (if (##pair? _g7932679333_)
                          (let ((_hd7933079346_ (##car _g7932679333_))
                                (_tl7933179348_ (##cdr _g7932679333_)))
                            (let* ((_val79351_ _hd7933079346_)
                                   (_rest79353_ _tl7933179348_))
                              (_K7932979343_ _rest79353_ _val79351_)))
                          (_E7932879337_))))))
            (if (##pair? _g7930579313_)
                (let ((_hd7931079358_ (##car _g7930579313_))
                      (_tl7931179360_ (##cdr _g7930579313_)))
                  (let* ((_hd79363_ _hd7931079358_)
                         (_rest79365_ _tl7931179360_))
                    (_K7930979355_ _rest79365_ _hd79363_)))
                (_else7930779321_))))))
    (define gx#stx-getq__0
      (lambda (_key79370_ _stx79371_)
        (let ((_key=?79373_ gx#stx-eq?))
          (gx#stx-getq__% _key79370_ _stx79371_ _key=?79373_))))
    (define gx#stx-getq
      (lambda _g80571_
        (let ((_g80570_ (##length _g80571_)))
          (cond ((##fx= _g80570_ 2)
                 (apply (lambda (_key79370_ _stx79371_)
                          (gx#stx-getq__0 _key79370_ _stx79371_))
                        _g80571_))
                ((##fx= _g80570_ 3)
                 (apply (lambda (_key79375_ _stx79376_ _key=?79377_)
                          (gx#stx-getq__% _key79375_ _stx79376_ _key=?79377_))
                        _g80571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g80571_))))))))
