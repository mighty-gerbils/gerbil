(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709213449)
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
      (lambda _$args81476_
        (apply make-instance gx#identifier-wrap::t _$args81476_)))
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
      (lambda _$args81473_
        (apply make-instance gx#syntax-wrap::t _$args81473_)))
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
      (lambda _$args81470_
        (apply make-instance gx#syntax-quote::t _$args81470_)))
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
      (lambda (_stx81468_) (symbol? (gx#stx-e _stx81468_))))
    (define gx#identifier-quote?
      (lambda (_stx81466_)
        (if (##structure-direct-instance-of? _stx81466_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81466_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81464_)
        (if (##structure-direct-instance-of? _stx81464_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81464_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81464_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81462_)
        (if (##structure-direct-instance-of? _stx81462_ 'gx#syntax-quote::t)
            _stx81462_
            (if (##structure-direct-instance-of? _stx81462_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81462_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81445_)
        (if (##structure-direct-instance-of? _stx81445_ 'gx#syntax-wrap::t)
            (let _lp81447_ ((_e81449_
                             (##unchecked-structure-ref
                              _stx81445_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81450_
                             (cons (##unchecked-structure-ref
                                    _stx81445_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81449_)
                  (let ((_$e81452_ (##type-id (##structure-type _e81449_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81452_)
                        (_lp81447_
                         (##unchecked-structure-ref _e81449_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81449_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81450_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81452_)
                                (eq? 'gx#identifier-wrap::t _$e81452_))
                            (##unchecked-structure-ref
                             _e81449_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81452_)
                                (_lp81447_
                                 (##unchecked-structure-ref
                                  _e81449_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81450_)
                                _e81449_))))
                  (if (null? _marks81450_)
                      _e81449_
                      (if (pair? _e81449_)
                          (cons (gx#stx-wrap (car _e81449_) _marks81450_)
                                (gx#stx-wrap (cdr _e81449_) _marks81450_))
                          (if (vector? _e81449_)
                              (vector-map
                               (lambda (_g8145781459_)
                                 (gx#stx-wrap _g8145781459_ _marks81450_))
                               _e81449_)
                              (if (box? _e81449_)
                                  (box (gx#stx-wrap
                                        (unbox _e81449_)
                                        _marks81450_))
                                  _e81449_))))))
            (if (##structure-instance-of? _stx81445_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81445_ '1 gx#AST::t '#f)
                _stx81445_))))
    (define gx#syntax->datum
      (lambda (_stx81443_)
        (if (##structure-instance-of? _stx81443_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81443_ '1 gx#AST::t '#f))
            (if (pair? _stx81443_)
                (cons (gx#syntax->datum (car _stx81443_))
                      (gx#syntax->datum (cdr _stx81443_)))
                (if (vector? _stx81443_)
                    (vector-map gx#syntax->datum _stx81443_)
                    (if (box? _stx81443_)
                        (box (gx#syntax->datum (unbox _stx81443_)))
                        _stx81443_))))))
    (define gx#datum->syntax__%
      (lambda (_stx81386_ _datum81387_ _src81388_ _quote?81389_)
        (letrec ((_wrap-datum81391_
                  (lambda (_e81415_ _marks81416_)
                    (_wrap-inner81393_
                     _e81415_
                     (lambda (_g8141781419_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8141781419_
                        _src81388_
                        _marks81416_)))))
                 (_wrap-quote81392_
                  (lambda (_e81407_ _ctx81408_ _marks81409_)
                    (_wrap-inner81393_
                     _e81407_
                     (lambda (_g8141081412_)
                       (##structure
                        gx#syntax-quote::t
                        _g8141081412_
                        _src81388_
                        _ctx81408_
                        _marks81409_)))))
                 (_wrap-inner81393_
                  (lambda (_e81400_ _wrap-e81401_)
                    (let _recur81403_ ((_e81405_ _e81400_))
                      (if (symbol? _e81405_)
                          (_wrap-e81401_ _e81405_)
                          (if (pair? _e81405_)
                              (cons (_recur81403_ (car _e81405_))
                                    (_recur81403_ (cdr _e81405_)))
                              (if (vector? _e81405_)
                                  (vector-map _recur81403_ _e81405_)
                                  (if (box? _e81405_)
                                      (box (_recur81403_ (unbox _e81405_)))
                                      _e81405_)))))))
                 (_wrap-outer81394_
                  (lambda (_e81398_)
                    (if (##structure-instance-of? _e81398_ 'gerbil#AST::t)
                        _e81398_
                        (##structure gx#AST::t _e81398_ _src81388_)))))
          (if (##structure-instance-of? _datum81387_ 'gerbil#AST::t)
              _datum81387_
              (if (not _stx81386_)
                  (##structure gx#AST::t _datum81387_ _src81388_)
                  (if (gx#identifier? _stx81386_)
                      (let ((_stx81396_ (gx#stx-unwrap__0 _stx81386_)))
                        (_wrap-outer81394_
                         (if (##structure-direct-instance-of?
                              _stx81396_
                              'gx#syntax-quote::t)
                             (if _quote?81389_
                                 (_wrap-quote81392_
                                  _datum81387_
                                  (##unchecked-structure-ref
                                   _stx81396_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx81396_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum81391_
                                  _datum81387_
                                  (##unchecked-structure-ref
                                   _stx81396_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum81391_
                              _datum81387_
                              (##unchecked-structure-ref
                               _stx81396_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx81386_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81425_ _datum81426_)
        (let* ((_src81428_ '#f) (_quote?81430_ '#t))
          (gx#datum->syntax__%
           _stx81425_
           _datum81426_
           _src81428_
           _quote?81430_))))
    (define gx#datum->syntax__1
      (lambda (_stx81432_ _datum81433_ _src81434_)
        (let ((_quote?81436_ '#t))
          (gx#datum->syntax__%
           _stx81432_
           _datum81433_
           _src81434_
           _quote?81436_))))
    (define gx#datum->syntax
      (lambda _g81557_
        (let ((_g81556_ (##length _g81557_)))
          (cond ((##fx= _g81556_ 2)
                 (apply (lambda (_stx81425_ _datum81426_)
                          (gx#datum->syntax__0 _stx81425_ _datum81426_))
                        _g81557_))
                ((##fx= _g81556_ 3)
                 (apply (lambda (_stx81432_ _datum81433_ _src81434_)
                          (gx#datum->syntax__1
                           _stx81432_
                           _datum81433_
                           _src81434_))
                        _g81557_))
                ((##fx= _g81556_ 4)
                 (apply (lambda (_stx81438_
                                 _datum81439_
                                 _src81440_
                                 _quote?81441_)
                          (gx#datum->syntax__%
                           _stx81438_
                           _datum81439_
                           _src81440_
                           _quote?81441_))
                        _g81557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81557_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx81362_ _marks81363_)
        (let _lp81365_ ((_e81367_ _stx81362_)
                        (_marks81368_ _marks81363_)
                        (_src81369_ (gx#stx-source _stx81362_)))
          (if (##structure-direct-instance-of? _e81367_ 'gx#syntax-wrap::t)
              (_lp81365_
               (##unchecked-structure-ref _e81367_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e81367_ '3 gx#syntax-wrap::t '#f)
                _marks81368_)
               (##unchecked-structure-ref _e81367_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e81367_
                   'gx#identifier-wrap::t)
                  (if (null? _marks81368_)
                      _e81367_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e81367_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e81367_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81367_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81368_)))
                  (if (##structure-direct-instance-of?
                       _e81367_
                       'gx#syntax-quote::t)
                      _e81367_
                      (if (##structure-instance-of? _e81367_ 'gerbil#AST::t)
                          (_lp81365_
                           (##unchecked-structure-ref
                            _e81367_
                            '1
                            gx#AST::t
                            '#f)
                           _marks81368_
                           (##unchecked-structure-ref
                            _e81367_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e81367_)
                              (##structure
                               gx#identifier-wrap::t
                               _e81367_
                               _src81369_
                               (reverse _marks81368_))
                              (if (null? _marks81368_)
                                  _e81367_
                                  (if (pair? _e81367_)
                                      (cons (gx#stx-wrap
                                             (car _e81367_)
                                             _marks81368_)
                                            (gx#stx-wrap
                                             (cdr _e81367_)
                                             _marks81368_))
                                      (if (vector? _e81367_)
                                          (vector-map
                                           (lambda (_g8137081372_)
                                             (gx#stx-wrap
                                              _g8137081372_
                                              _marks81368_))
                                           _e81367_)
                                          (if (box? _e81367_)
                                              (box (gx#stx-wrap
                                                    (unbox _e81367_)
                                                    _marks81368_))
                                              _e81367_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx81378_)
        (let ((_marks81380_ '())) (gx#stx-unwrap__% _stx81378_ _marks81380_))))
    (define gx#stx-unwrap
      (lambda _g81559_
        (let ((_g81558_ (##length _g81559_)))
          (cond ((##fx= _g81558_ 1)
                 (apply (lambda (_stx81378_) (gx#stx-unwrap__0 _stx81378_))
                        _g81559_))
                ((##fx= _g81558_ 2)
                 (apply (lambda (_stx81382_ _marks81383_)
                          (gx#stx-unwrap__% _stx81382_ _marks81383_))
                        _g81559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81559_))))))
    (define gx#stx-wrap
      (lambda (_stx81355_ _marks81356_)
        (foldl1 (lambda (_mark81358_ _stx81359_)
                  (gx#stx-apply-mark _stx81359_ _mark81358_))
                _stx81355_
                _marks81356_)))
    (define gx#stx-rewrap
      (lambda (_stx81349_ _marks81350_)
        (foldr1 (lambda (_mark81352_ _stx81353_)
                  (gx#stx-apply-mark _stx81353_ _mark81352_))
                _stx81349_
                _marks81350_)))
    (define gx#stx-apply-mark
      (lambda (_stx81346_ _mark81347_)
        (if (##structure-direct-instance-of? _stx81346_ 'gx#syntax-quote::t)
            _stx81346_
            (if (and (##structure-direct-instance-of?
                      _stx81346_
                      'gx#syntax-wrap::t)
                     (eq? _mark81347_
                          (##unchecked-structure-ref
                           _stx81346_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx81346_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx81346_
                 (gx#stx-source _stx81346_)
                 _mark81347_)))))
    (define gx#apply-mark
      (lambda (_mark81310_ _marks81311_)
        (let* ((_marks8131281320_ _marks81311_)
               (_else8131481328_ (lambda () (cons _mark81310_ _marks81311_)))
               (_K8131681334_
                (lambda (_rest81331_ _hd81332_)
                  (if (eq? _mark81310_ _hd81332_)
                      _rest81331_
                      (cons _mark81310_ _marks81311_)))))
          (if (##pair? _marks8131281320_)
              (let ((_hd8131781337_ (##car _marks8131281320_))
                    (_tl8131881339_ (##cdr _marks8131281320_)))
                (let* ((_hd81342_ _hd8131781337_) (_rest81344_ _tl8131881339_))
                  (_K8131681334_ _rest81344_ _hd81342_)))
              (_else8131481328_)))))
    (define gx#stx-e
      (lambda (_stx81308_)
        (if (##structure-direct-instance-of? _stx81308_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx81308_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx81308_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81308_ '1 gx#AST::t '#f)
                _stx81308_))))
    (define gx#stx-source
      (lambda (_stx81306_)
        (if (##structure-instance-of? _stx81306_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx81306_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx81300_ _src81301_)
        (if (or (##structure-instance-of? _stx81300_ 'gerbil#AST::t)
                (not _src81301_))
            _stx81300_
            (##structure gx#AST::t _stx81300_ _src81301_))))
    (define gx#stx-datum?
      (lambda (_stx81298_) (gx#self-quoting? (gx#stx-e _stx81298_))))
    (define gx#self-quoting?
      (lambda (_x81281_)
        (let ((_$e81283_ (immediate? _x81281_)))
          (if _$e81283_
              _$e81283_
              (let ((_$e81286_ (number? _x81281_)))
                (if _$e81286_
                    _$e81286_
                    (let ((_$e81289_ (keyword? _x81281_)))
                      (if _$e81289_
                          _$e81289_
                          (let ((_$e81292_ (string? _x81281_)))
                            (if _$e81292_
                                _$e81292_
                                (let ((_$e81295_ (vector? _x81281_)))
                                  (if _$e81295_
                                      _$e81295_
                                      (u8vector? _x81281_)))))))))))))
    (define gx#stx-boolean? (lambda (_e81279_) (boolean? (gx#stx-e _e81279_))))
    (define gx#stx-keyword? (lambda (_e81277_) (keyword? (gx#stx-e _e81277_))))
    (define gx#stx-char? (lambda (_e81275_) (char? (gx#stx-e _e81275_))))
    (define gx#stx-number? (lambda (_e81273_) (number? (gx#stx-e _e81273_))))
    (define gx#stx-fixnum? (lambda (_e81271_) (fixnum? (gx#stx-e _e81271_))))
    (define gx#stx-string? (lambda (_e81269_) (string? (gx#stx-e _e81269_))))
    (define gx#stx-null? (lambda (_e81267_) (null? (gx#stx-e _e81267_))))
    (define gx#stx-pair? (lambda (_e81265_) (pair? (gx#stx-e _e81265_))))
    (define gx#stx-list?
      (lambda (_e81227_)
        (let* ((_g8122881237_ (gx#stx-e _e81227_))
               (_E8123181241_
                (lambda () (error '"No clause matching" _g8122881237_))))
          (let ((_K8123381257_
                 (lambda (_rest81255_) (gx#stx-list? _rest81255_)))
                (_K8123281247_ (lambda (_tail81245_) (null? _tail81245_))))
            (if (##pair? _g8122881237_)
                (let* ((_tl8123581260_ (##cdr _g8122881237_))
                       (_rest81263_ _tl8123581260_))
                  (gx#stx-list? _rest81263_))
                (let ((_tail81250_ _g8122881237_)) (null? _tail81250_)))))))
    (define gx#stx-pair/null?
      (lambda (_e81220_)
        (let* ((_e81222_ (gx#stx-e _e81220_)) (_$e81224_ (pair? _e81222_)))
          (if _$e81224_ _$e81224_ (null? _e81222_)))))
    (define gx#stx-vector? (lambda (_e81218_) (vector? (gx#stx-e _e81218_))))
    (define gx#stx-box? (lambda (_e81216_) (box? (gx#stx-e _e81216_))))
    (define gx#stx-eq?
      (lambda (_x81213_ _y81214_)
        (eq? (gx#stx-e _x81213_) (gx#stx-e _y81214_))))
    (define gx#stx-eqv?
      (lambda (_x81210_ _y81211_)
        (eqv? (gx#stx-e _x81210_) (gx#stx-e _y81211_))))
    (define gx#stx-equal?
      (lambda (_x81207_ _y81208_)
        (equal? (gx#stx-e _x81207_) (gx#stx-e _y81208_))))
    (define gx#stx-false? (lambda (_x81205_) (not (gx#stx-e _x81205_))))
    (define gx#stx-identifier
      (lambda (_template81202_ . _args81203_)
        (gx#datum->syntax__1
         _template81202_
         (apply make-symbol (gx#syntax->datum _args81203_))
         (gx#stx-source _template81202_))))
    (define gx#stx-identifier-marks
      (lambda (_stx81200_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx81200_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx81198_)
        (if (##structure-direct-instance-of? _stx81198_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx81198_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx81198_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx81198_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx81198_)))))
    (define gx#stx-identifier-context
      (lambda (_stx81194_)
        (let ((_stx81196_ (gx#stx-unwrap__0 _stx81194_)))
          (if (gx#identifier-quote? _stx81196_)
              (##unchecked-structure-ref _stx81196_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx81149_)
        (let* ((_g8115081160_ (gx#stx-e _stx81149_))
               (_else8115381168_ (lambda () '#f)))
          (let ((_K8115681182_
                 (lambda (_rest81179_ _hd81180_)
                   (if (gx#identifier? _hd81180_)
                       (gx#identifier-list? _rest81179_)
                       '#f)))
                (_K8115581173_ (lambda () '#t)))
            (let ((_try-match8115281176_
                   (lambda ()
                     (if (##null? _g8115081160_)
                         (_K8115581173_)
                         (_else8115381168_)))))
              (if (##pair? _g8115081160_)
                  (let ((_tl8115881187_ (##cdr _g8115081160_))
                        (_hd8115781185_ (##car _g8115081160_)))
                    (let ((_hd81190_ _hd8115781185_)
                          (_rest81192_ _tl8115881187_))
                      (_K8115681182_ _rest81192_ _hd81190_)))
                  (_try-match8115281176_)))))))
    (define gx#genident__%
      (lambda (_e81126_ _src81127_)
        (gx#stx-wrap-source
         (gensym (let ((_e81129_ (gx#stx-e _e81126_)))
                   (if (interned-symbol? _e81129_) _e81129_ 'g)))
         (let ((_$e81131_ (gx#stx-source _e81126_)))
           (if _$e81131_ _$e81131_ _src81127_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e81138_ 'g) (_src81140_ '#f))
          (gx#genident__% _e81138_ _src81140_))))
    (define gx#genident__1
      (lambda (_e81142_)
        (let ((_src81144_ '#f)) (gx#genident__% _e81142_ _src81144_))))
    (define gx#genident
      (lambda _g81561_
        (let ((_g81560_ (##length _g81561_)))
          (cond ((##fx= _g81560_ 0)
                 (apply (lambda () (gx#genident__0)) _g81561_))
                ((##fx= _g81560_ 1)
                 (apply (lambda (_e81142_) (gx#genident__1 _e81142_))
                        _g81561_))
                ((##fx= _g81560_ 2)
                 (apply (lambda (_e81146_ _src81147_)
                          (gx#genident__% _e81146_ _src81147_))
                        _g81561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81561_))))))
    (define gx#gentemps
      (lambda (_stx-lst81123_) (gx#stx-map1 gx#genident _stx-lst81123_)))
    (define gx#syntax->list
      (lambda (_stx81121_) (gx#stx-map1 values _stx81121_)))
    (define gx#stx-car
      (lambda (_stx81118_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx81118_)))))
    (define gx#stx-cdr
      (lambda (_stx81115_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx81115_)))))
    (define gx#stx-length
      (lambda (_stx81080_)
        (let _lp81082_ ((_rest81084_ _stx81080_) (_n81085_ '0))
          (let* ((_g8108681094_ (gx#stx-e _rest81084_))
                 (_else8108881102_ (lambda () _n81085_))
                 (_K8109081107_
                  (lambda (_rest81105_)
                    (_lp81082_ _rest81105_ (fx+ _n81085_ '1)))))
            (if (##pair? _g8108681094_)
                (let* ((_tl8109281110_ (##cdr _g8108681094_))
                       (_rest81113_ _tl8109281110_))
                  (_K8109081107_ _rest81113_))
                (_else8108881102_))))))
    (define gx#stx-for-each
      (lambda _g81563_
        (let ((_g81562_ (##length _g81563_)))
          (cond ((##fx= _g81562_ 2)
                 (apply (lambda (_f81073_ _stx81074_)
                          (gx#stx-for-each1 _f81073_ _stx81074_))
                        _g81563_))
                ((##fx= _g81562_ 3)
                 (apply (lambda (_f81076_ _xstx81077_ _ystx81078_)
                          (gx#stx-for-each2 _f81076_ _xstx81077_ _ystx81078_))
                        _g81563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81563_))))))
    (define gx#stx-for-each1
      (lambda (_f81023_ _stx81024_)
        (if (procedure? _f81023_)
            '#!void
            (error '"expected procedure" _f81023_))
        (let _lp81026_ ((_rest81028_ _stx81024_))
          (let* ((_g8102981039_ (gx#syntax-e _rest81028_))
                 (_else8103281047_ (lambda () (_f81023_ _rest81028_))))
            (let ((_K8103581061_
                   (lambda (_rest81058_ _hd81059_)
                     (_f81023_ _hd81059_)
                     (_lp81026_ _rest81058_)))
                  (_K8103481052_ (lambda () '#!void)))
              (let ((_try-match8103181055_
                     (lambda ()
                       (if (##null? _g8102981039_)
                           (_K8103481052_)
                           (_else8103281047_)))))
                (if (##pair? _g8102981039_)
                    (let ((_tl8103781066_ (##cdr _g8102981039_))
                          (_hd8103681064_ (##car _g8102981039_)))
                      (let ((_hd81069_ _hd8103681064_)
                            (_rest81071_ _tl8103781066_))
                        (_K8103581061_ _rest81071_ _hd81069_)))
                    (_try-match8103181055_))))))))
    (define gx#stx-for-each2
      (lambda (_f80928_ _xstx80929_ _ystx80930_)
        (if (procedure? _f80928_)
            '#!void
            (error '"expected procedure" _f80928_))
        (let _lp80932_ ((_xrest80934_ _xstx80929_) (_yrest80935_ _ystx80930_))
          (let* ((_g8093680946_ (gx#syntax-e _xrest80934_))
                 (_else8093980954_ (lambda () '#!void)))
            (let ((_K8094281011_
                   (lambda (_xrest80980_ _xhd80981_)
                     (let* ((_g8098280989_ (gx#syntax-e _yrest80935_))
                            (_E8098480993_
                             (lambda ()
                               (error '"No clause matching" _g8098280989_)))
                            (_K8098580999_
                             (lambda (_yrest80996_ _yhd80997_)
                               (_f80928_ _xhd80981_ _yhd80997_)
                               (_lp80932_ _xrest80980_ _yrest80996_))))
                       (if (##pair? _g8098280989_)
                           (let ((_hd8098681002_ (##car _g8098280989_))
                                 (_tl8098781004_ (##cdr _g8098280989_)))
                             (let* ((_yhd81007_ _hd8098681002_)
                                    (_yrest81009_ _tl8098781004_))
                               (_K8098580999_ _yrest81009_ _yhd81007_)))
                           (_E8098480993_)))))
                  (_K8094180974_
                   (lambda ()
                     (let* ((_yrest8095880963_ _yrest80935_)
                            (_E8096080967_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8095880963_)))
                            (_K8096180971_
                             (lambda () (_f80928_ _xrest80934_ _yrest80935_))))
                       (if (not (gx#stx-null? _yrest8095880963_))
                           (_K8096180971_)
                           (_E8096080967_))))))
              (let ((_try-match8093880977_
                     (lambda ()
                       (if (not (null? _g8093680946_))
                           (_K8094180974_)
                           (_else8093980954_)))))
                (if (##pair? _g8093680946_)
                    (let ((_tl8094481016_ (##cdr _g8093680946_))
                          (_hd8094381014_ (##car _g8093680946_)))
                      (let ((_xhd81019_ _hd8094381014_)
                            (_xrest81021_ _tl8094481016_))
                        (_K8094281011_ _xrest81021_ _xhd81019_)))
                    (_try-match8093880977_))))))))
    (define gx#stx-map
      (lambda _g81565_
        (let ((_g81564_ (##length _g81565_)))
          (cond ((##fx= _g81564_ 2)
                 (apply (lambda (_f80921_ _stx80922_)
                          (gx#stx-map1 _f80921_ _stx80922_))
                        _g81565_))
                ((##fx= _g81564_ 3)
                 (apply (lambda (_f80924_ _xstx80925_ _ystx80926_)
                          (gx#stx-map2 _f80924_ _xstx80925_ _ystx80926_))
                        _g81565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81565_))))))
    (define gx#stx-map1
      (lambda (_f80871_ _stx80872_)
        (if (procedure? _f80871_)
            '#!void
            (error '"expected procedure" _f80871_))
        (let _recur80874_ ((_rest80876_ _stx80872_))
          (let* ((_g8087780887_ (gx#syntax-e _rest80876_))
                 (_else8088080895_ (lambda () (_f80871_ _rest80876_))))
            (let ((_K8088380909_
                   (lambda (_rest80906_ _hd80907_)
                     (cons (_f80871_ _hd80907_) (_recur80874_ _rest80906_))))
                  (_K8088280900_ (lambda () '())))
              (let ((_try-match8087980903_
                     (lambda ()
                       (if (##null? _g8087780887_)
                           (_K8088280900_)
                           (_else8088080895_)))))
                (if (##pair? _g8087780887_)
                    (let ((_tl8088580914_ (##cdr _g8087780887_))
                          (_hd8088480912_ (##car _g8087780887_)))
                      (let ((_hd80917_ _hd8088480912_)
                            (_rest80919_ _tl8088580914_))
                        (_K8088380909_ _rest80919_ _hd80917_)))
                    (_try-match8087980903_))))))))
    (define gx#stx-map2
      (lambda (_f80776_ _xstx80777_ _ystx80778_)
        (if (procedure? _f80776_)
            '#!void
            (error '"expected procedure" _f80776_))
        (let _recur80780_ ((_xrest80782_ _xstx80777_)
                           (_yrest80783_ _ystx80778_))
          (let* ((_g8078480794_ (gx#syntax-e _xrest80782_))
                 (_else8078780802_ (lambda () '())))
            (let ((_K8079080859_
                   (lambda (_xrest80828_ _xhd80829_)
                     (let* ((_g8083080837_ (gx#syntax-e _yrest80783_))
                            (_E8083280841_
                             (lambda ()
                               (error '"No clause matching" _g8083080837_)))
                            (_K8083380847_
                             (lambda (_yrest80844_ _yhd80845_)
                               (cons (_f80776_ _xhd80829_ _yhd80845_)
                                     (_recur80780_
                                      _xrest80828_
                                      _yrest80844_)))))
                       (if (##pair? _g8083080837_)
                           (let ((_hd8083480850_ (##car _g8083080837_))
                                 (_tl8083580852_ (##cdr _g8083080837_)))
                             (let* ((_yhd80855_ _hd8083480850_)
                                    (_yrest80857_ _tl8083580852_))
                               (_K8083380847_ _yrest80857_ _yhd80855_)))
                           (_E8083280841_)))))
                  (_K8078980822_
                   (lambda ()
                     (let* ((_yrest8080680811_ _yrest80783_)
                            (_E8080880815_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8080680811_)))
                            (_K8080980819_
                             (lambda () (_f80776_ _xrest80782_ _yrest80783_))))
                       (if (not (gx#stx-null? _yrest8080680811_))
                           (_K8080980819_)
                           (_E8080880815_))))))
              (let ((_try-match8078680825_
                     (lambda ()
                       (if (not (null? _g8078480794_))
                           (_K8078980822_)
                           (_else8078780802_)))))
                (if (##pair? _g8078480794_)
                    (let ((_tl8079280864_ (##cdr _g8078480794_))
                          (_hd8079180862_ (##car _g8078480794_)))
                      (let ((_xhd80867_ _hd8079180862_)
                            (_xrest80869_ _tl8079280864_))
                        (_K8079080859_ _xrest80869_ _xhd80867_)))
                    (_try-match8078680825_))))))))
    (define gx#stx-andmap
      (lambda (_f80726_ _stx80727_)
        (if (procedure? _f80726_)
            '#!void
            (error '"expected procedure" _f80726_))
        (let _lp80729_ ((_rest80731_ _stx80727_))
          (let* ((_g8073280742_ (gx#syntax-e _rest80731_))
                 (_else8073580750_ (lambda () (_f80726_ _rest80731_))))
            (let ((_K8073880764_
                   (lambda (_rest80761_ _hd80762_)
                     (if (_f80726_ _hd80762_) (_lp80729_ _rest80761_) '#f)))
                  (_K8073780755_ (lambda () '#t)))
              (let ((_try-match8073480758_
                     (lambda ()
                       (if (##null? _g8073280742_)
                           (_K8073780755_)
                           (_else8073580750_)))))
                (if (##pair? _g8073280742_)
                    (let ((_tl8074080769_ (##cdr _g8073280742_))
                          (_hd8073980767_ (##car _g8073280742_)))
                      (let ((_hd80772_ _hd8073980767_)
                            (_rest80774_ _tl8074080769_))
                        (_K8073880764_ _rest80774_ _hd80772_)))
                    (_try-match8073480758_))))))))
    (define gx#stx-ormap
      (lambda (_f80673_ _stx80674_)
        (if (procedure? _f80673_)
            '#!void
            (error '"expected procedure" _f80673_))
        (let _lp80676_ ((_rest80678_ _stx80674_))
          (let* ((_g8067980689_ (gx#syntax-e _rest80678_))
                 (_else8068280697_ (lambda () (_f80673_ _rest80678_))))
            (let ((_K8068580714_
                   (lambda (_rest80708_ _hd80709_)
                     (let ((_$e80711_ (_f80673_ _hd80709_)))
                       (if _$e80711_ _$e80711_ (_lp80676_ _rest80708_)))))
                  (_K8068480702_ (lambda () '#f)))
              (let ((_try-match8068180705_
                     (lambda ()
                       (if (##null? _g8067980689_)
                           (_K8068480702_)
                           (_else8068280697_)))))
                (if (##pair? _g8067980689_)
                    (let ((_tl8068780719_ (##cdr _g8067980689_))
                          (_hd8068680717_ (##car _g8067980689_)))
                      (let ((_hd80722_ _hd8068680717_)
                            (_rest80724_ _tl8068780719_))
                        (_K8068580714_ _rest80724_ _hd80722_)))
                    (_try-match8068180705_))))))))
    (define gx#stx-foldl
      (lambda (_f80621_ _iv80622_ _stx80623_)
        (if (procedure? _f80621_)
            '#!void
            (error '"expected procedure" _f80621_))
        (let _lp80625_ ((_r80627_ _iv80622_) (_rest80628_ _stx80623_))
          (let* ((_g8062980639_ (gx#syntax-e _rest80628_))
                 (_else8063280647_
                  (lambda () (_f80621_ _rest80628_ _r80627_))))
            (let ((_K8063580661_
                   (lambda (_rest80658_ _hd80659_)
                     (_lp80625_ (_f80621_ _hd80659_ _r80627_) _rest80658_)))
                  (_K8063480652_ (lambda () _r80627_)))
              (let ((_try-match8063180655_
                     (lambda ()
                       (if (##null? _g8062980639_)
                           (_K8063480652_)
                           (_else8063280647_)))))
                (if (##pair? _g8062980639_)
                    (let ((_tl8063780666_ (##cdr _g8062980639_))
                          (_hd8063680664_ (##car _g8062980639_)))
                      (let ((_hd80669_ _hd8063680664_)
                            (_rest80671_ _tl8063780666_))
                        (_K8063580661_ _rest80671_ _hd80669_)))
                    (_try-match8063180655_))))))))
    (define gx#stx-foldr
      (lambda (_f80570_ _iv80571_ _stx80572_)
        (if (procedure? _f80570_)
            '#!void
            (error '"expected procedure" _f80570_))
        (let _recur80574_ ((_rest80576_ _stx80572_))
          (let* ((_g8057780587_ (gx#syntax-e _rest80576_))
                 (_else8058080595_
                  (lambda () (_f80570_ _rest80576_ _iv80571_))))
            (let ((_K8058380609_
                   (lambda (_rest80606_ _hd80607_)
                     (_f80570_ _hd80607_ (_recur80574_ _rest80606_))))
                  (_K8058280600_ (lambda () _iv80571_)))
              (let ((_try-match8057980603_
                     (lambda ()
                       (if (##null? _g8057780587_)
                           (_K8058280600_)
                           (_else8058080595_)))))
                (if (##pair? _g8057780587_)
                    (let ((_tl8058580614_ (##cdr _g8057780587_))
                          (_hd8058480612_ (##car _g8057780587_)))
                      (let ((_hd80617_ _hd8058480612_)
                            (_rest80619_ _tl8058580614_))
                        (_K8058380609_ _rest80619_ _hd80617_)))
                    (_try-match8057980603_))))))))
    (define gx#stx-reverse
      (lambda (_stx80568_) (gx#stx-foldl cons '() _stx80568_)))
    (define gx#stx-last
      (lambda (_stx80529_)
        (let _lp80531_ ((_rest80533_ _stx80529_))
          (let* ((_g8053480542_ (gx#syntax-e _rest80533_))
                 (_else8053680550_ (lambda () _rest80533_))
                 (_K8053880556_
                  (lambda (_rest80553_ _hd80554_)
                    (if (gx#stx-null? _rest80553_)
                        _hd80554_
                        (_lp80531_ _rest80553_)))))
            (if (##pair? _g8053480542_)
                (let ((_hd8053980559_ (##car _g8053480542_))
                      (_tl8054080561_ (##cdr _g8053480542_)))
                  (let* ((_hd80564_ _hd8053980559_)
                         (_rest80566_ _tl8054080561_))
                    (_K8053880556_ _rest80566_ _hd80564_)))
                (_else8053680550_))))))
    (define gx#stx-last-pair
      (lambda (_stx80500_)
        (let _lp80502_ ((_hd80504_ _stx80500_))
          (let* ((_g8050580512_ (gx#syntax-e _hd80504_))
                 (_E8050780516_
                  (lambda () (error '"No clause matching" _g8050580512_)))
                 (_K8050880521_
                  (lambda (_rest80519_)
                    (if (gx#stx-pair? _rest80519_)
                        (_lp80502_ _rest80519_)
                        _hd80504_))))
            (if (##pair? _g8050580512_)
                (let* ((_tl8051080524_ (##cdr _g8050580512_))
                       (_rest80527_ _tl8051080524_))
                  (_K8050880521_ _rest80527_))
                (_E8050780516_))))))
    (define gx#stx-list-tail
      (lambda (_stx80469_ _k80470_)
        (let _lp80472_ ((_rest80474_ _stx80469_) (_k80475_ _k80470_))
          (if (fxpositive? _k80475_)
              (let* ((_g8047680483_ (gx#syntax-e _rest80474_))
                     (_E8047880487_
                      (lambda () (error '"No clause matching" _g8047680483_)))
                     (_K8047980492_
                      (lambda (_rest80490_)
                        (_lp80472_ _rest80490_ (fx- _k80475_ '1)))))
                (if (##pair? _g8047680483_)
                    (let* ((_tl8048180495_ (##cdr _g8047680483_))
                           (_rest80498_ _tl8048180495_))
                      (_K8047980492_ _rest80498_))
                    (_E8047880487_)))
              _rest80474_))))
    (define gx#stx-list-ref
      (lambda (_stx80466_ _k80467_)
        (gx#stx-car (gx#stx-list-tail _stx80466_ _k80467_))))
    (define gx#stx-plist?__%
      (lambda (_stx80378_ _key?80379_)
        (if (procedure? _key?80379_)
            '#!void
            (error '"expected procedure" _key?80379_))
        (let _lp80381_ ((_rest80383_ _stx80378_))
          (let* ((_g8038480394_ (gx#stx-e _rest80383_))
                 (_else8038780402_ (lambda () '#f)))
            (let ((_K8039080444_
                   (lambda (_rest80413_ _hd80414_)
                     (if (_key?80379_ _hd80414_)
                         (let* ((_g8041580423_ (gx#stx-e _rest80413_))
                                (_else8041780431_ (lambda () '#f))
                                (_K8041980436_
                                 (lambda (_rest80434_)
                                   (_lp80381_ _rest80434_))))
                           (if (##pair? _g8041580423_)
                               (let* ((_tl8042180439_ (##cdr _g8041580423_))
                                      (_rest80442_ _tl8042180439_))
                                 (_lp80381_ _rest80442_))
                               (_else8041780431_)))
                         '#f)))
                  (_K8038980407_ (lambda () '#t)))
              (let ((_try-match8038680410_
                     (lambda ()
                       (if (##null? _g8038480394_)
                           (_K8038980407_)
                           (_else8038780402_)))))
                (if (##pair? _g8038480394_)
                    (let ((_tl8039280449_ (##cdr _g8038480394_))
                          (_hd8039180447_ (##car _g8038480394_)))
                      (let ((_hd80452_ _hd8039180447_)
                            (_rest80454_ _tl8039280449_))
                        (_K8039080444_ _rest80454_ _hd80452_)))
                    (_try-match8038680410_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80459_)
        (let ((_key?80461_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80459_ _key?80461_))))
    (define gx#stx-plist?
      (lambda _g81567_
        (let ((_g81566_ (##length _g81567_)))
          (cond ((##fx= _g81566_ 1)
                 (apply (lambda (_stx80459_) (gx#stx-plist?__0 _stx80459_))
                        _g81567_))
                ((##fx= _g81566_ 2)
                 (apply (lambda (_stx80463_ _key?80464_)
                          (gx#stx-plist?__% _stx80463_ _key?80464_))
                        _g81567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81567_))))))
    (define gx#stx-getq__%
      (lambda (_key80296_ _stx80297_ _key=?80298_)
        (if (procedure? _key=?80298_)
            '#!void
            (error '"expected procedure" _key=?80298_))
        (let _lp80300_ ((_rest80302_ _stx80297_))
          (let* ((_g8030380311_ (gx#syntax-e _rest80302_))
                 (_else8030580319_ (lambda () '#f))
                 (_K8030780353_
                  (lambda (_rest80322_ _hd80323_)
                    (let* ((_g8032480331_ (gx#syntax-e _rest80322_))
                           (_E8032680335_
                            (lambda ()
                              (error '"No clause matching" _g8032480331_)))
                           (_K8032780341_
                            (lambda (_rest80338_ _val80339_)
                              (if (_key=?80298_ _hd80323_ _key80296_)
                                  _val80339_
                                  (_lp80300_ _rest80338_)))))
                      (if (##pair? _g8032480331_)
                          (let ((_hd8032880344_ (##car _g8032480331_))
                                (_tl8032980346_ (##cdr _g8032480331_)))
                            (let* ((_val80349_ _hd8032880344_)
                                   (_rest80351_ _tl8032980346_))
                              (_K8032780341_ _rest80351_ _val80349_)))
                          (_E8032680335_))))))
            (if (##pair? _g8030380311_)
                (let ((_hd8030880356_ (##car _g8030380311_))
                      (_tl8030980358_ (##cdr _g8030380311_)))
                  (let* ((_hd80361_ _hd8030880356_)
                         (_rest80363_ _tl8030980358_))
                    (_K8030780353_ _rest80363_ _hd80361_)))
                (_else8030580319_))))))
    (define gx#stx-getq__0
      (lambda (_key80368_ _stx80369_)
        (let ((_key=?80371_ gx#stx-eq?))
          (gx#stx-getq__% _key80368_ _stx80369_ _key=?80371_))))
    (define gx#stx-getq
      (lambda _g81569_
        (let ((_g81568_ (##length _g81569_)))
          (cond ((##fx= _g81568_ 2)
                 (apply (lambda (_key80368_ _stx80369_)
                          (gx#stx-getq__0 _key80368_ _stx80369_))
                        _g81569_))
                ((##fx= _g81568_ 3)
                 (apply (lambda (_key80373_ _stx80374_ _key=?80375_)
                          (gx#stx-getq__% _key80373_ _stx80374_ _key=?80375_))
                        _g81569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81569_))))))))
