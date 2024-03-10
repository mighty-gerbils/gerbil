(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710064747)
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
      (lambda _$args78422_
        (apply make-instance gx#identifier-wrap::t _$args78422_)))
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
      (lambda _$args78419_
        (apply make-instance gx#syntax-wrap::t _$args78419_)))
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
      (lambda _$args78416_
        (apply make-instance gx#syntax-quote::t _$args78416_)))
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
      (lambda (_stx78414_) (symbol? (gx#stx-e _stx78414_))))
    (define gx#identifier-quote?
      (lambda (_stx78412_)
        (if (##structure-direct-instance-of? _stx78412_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx78412_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx78410_)
        (if (##structure-direct-instance-of? _stx78410_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx78410_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx78410_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx78408_)
        (if (##structure-direct-instance-of? _stx78408_ 'gx#syntax-quote::t)
            _stx78408_
            (if (##structure-direct-instance-of? _stx78408_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx78408_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx78391_)
        (if (##structure-direct-instance-of? _stx78391_ 'gx#syntax-wrap::t)
            (let _lp78393_ ((_e78395_
                             (##unchecked-structure-ref
                              _stx78391_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks78396_
                             (cons (##unchecked-structure-ref
                                    _stx78391_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e78395_)
                  (let ((_$e78398_ (##type-id (##structure-type _e78395_))))
                    (if (eq? 'gx#syntax-wrap::t _$e78398_)
                        (_lp78393_
                         (##unchecked-structure-ref _e78395_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e78395_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks78396_))
                        (if (or (eq? 'gx#syntax-quote::t _$e78398_)
                                (eq? 'gx#identifier-wrap::t _$e78398_))
                            (##unchecked-structure-ref
                             _e78395_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e78398_)
                                (_lp78393_
                                 (##unchecked-structure-ref
                                  _e78395_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks78396_)
                                _e78395_))))
                  (if (null? _marks78396_)
                      _e78395_
                      (if (pair? _e78395_)
                          (cons (gx#stx-wrap (car _e78395_) _marks78396_)
                                (gx#stx-wrap (cdr _e78395_) _marks78396_))
                          (if (vector? _e78395_)
                              (vector-map
                               (lambda (_g7840378405_)
                                 (gx#stx-wrap _g7840378405_ _marks78396_))
                               _e78395_)
                              (if (box? _e78395_)
                                  (box (gx#stx-wrap
                                        (unbox _e78395_)
                                        _marks78396_))
                                  _e78395_))))))
            (if (##structure-instance-of? _stx78391_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx78391_ '1 gx#AST::t '#f)
                _stx78391_))))
    (define gx#syntax->datum
      (lambda (_stx78389_)
        (if (##structure-instance-of? _stx78389_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx78389_ '1 gx#AST::t '#f))
            (if (pair? _stx78389_)
                (cons (gx#syntax->datum (car _stx78389_))
                      (gx#syntax->datum (cdr _stx78389_)))
                (if (vector? _stx78389_)
                    (vector-map gx#syntax->datum _stx78389_)
                    (if (box? _stx78389_)
                        (box (gx#syntax->datum (unbox _stx78389_)))
                        _stx78389_))))))
    (define gx#datum->syntax__%
      (lambda (_stx78332_ _datum78333_ _src78334_ _quote?78335_)
        (letrec ((_wrap-datum78337_
                  (lambda (_e78361_ _marks78362_)
                    (_wrap-inner78339_
                     _e78361_
                     (lambda (_g7836378365_)
                       (##structure
                        gx#identifier-wrap::t
                        _g7836378365_
                        _src78334_
                        _marks78362_)))))
                 (_wrap-quote78338_
                  (lambda (_e78353_ _ctx78354_ _marks78355_)
                    (_wrap-inner78339_
                     _e78353_
                     (lambda (_g7835678358_)
                       (##structure
                        gx#syntax-quote::t
                        _g7835678358_
                        _src78334_
                        _ctx78354_
                        _marks78355_)))))
                 (_wrap-inner78339_
                  (lambda (_e78346_ _wrap-e78347_)
                    (let _recur78349_ ((_e78351_ _e78346_))
                      (if (symbol? _e78351_)
                          (_wrap-e78347_ _e78351_)
                          (if (pair? _e78351_)
                              (cons (_recur78349_ (car _e78351_))
                                    (_recur78349_ (cdr _e78351_)))
                              (if (vector? _e78351_)
                                  (vector-map _recur78349_ _e78351_)
                                  (if (box? _e78351_)
                                      (box (_recur78349_ (unbox _e78351_)))
                                      _e78351_)))))))
                 (_wrap-outer78340_
                  (lambda (_e78344_)
                    (if (##structure-instance-of? _e78344_ 'gerbil#AST::t)
                        _e78344_
                        (##structure gx#AST::t _e78344_ _src78334_)))))
          (if (##structure-instance-of? _datum78333_ 'gerbil#AST::t)
              _datum78333_
              (if (not _stx78332_)
                  (##structure gx#AST::t _datum78333_ _src78334_)
                  (if (gx#identifier? _stx78332_)
                      (let ((_stx78342_ (gx#stx-unwrap__0 _stx78332_)))
                        (_wrap-outer78340_
                         (if (##structure-direct-instance-of?
                              _stx78342_
                              'gx#syntax-quote::t)
                             (if _quote?78335_
                                 (_wrap-quote78338_
                                  _datum78333_
                                  (##unchecked-structure-ref
                                   _stx78342_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx78342_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum78337_
                                  _datum78333_
                                  (##unchecked-structure-ref
                                   _stx78342_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum78337_
                              _datum78333_
                              (##unchecked-structure-ref
                               _stx78342_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx78332_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx78371_ _datum78372_)
        (let* ((_src78374_ '#f) (_quote?78376_ '#t))
          (gx#datum->syntax__%
           _stx78371_
           _datum78372_
           _src78374_
           _quote?78376_))))
    (define gx#datum->syntax__1
      (lambda (_stx78378_ _datum78379_ _src78380_)
        (let ((_quote?78382_ '#t))
          (gx#datum->syntax__%
           _stx78378_
           _datum78379_
           _src78380_
           _quote?78382_))))
    (define gx#datum->syntax
      (lambda _g78503_
        (let ((_g78502_ (##length _g78503_)))
          (cond ((##fx= _g78502_ 2)
                 (apply (lambda (_stx78371_ _datum78372_)
                          (gx#datum->syntax__0 _stx78371_ _datum78372_))
                        _g78503_))
                ((##fx= _g78502_ 3)
                 (apply (lambda (_stx78378_ _datum78379_ _src78380_)
                          (gx#datum->syntax__1
                           _stx78378_
                           _datum78379_
                           _src78380_))
                        _g78503_))
                ((##fx= _g78502_ 4)
                 (apply (lambda (_stx78384_
                                 _datum78385_
                                 _src78386_
                                 _quote?78387_)
                          (gx#datum->syntax__%
                           _stx78384_
                           _datum78385_
                           _src78386_
                           _quote?78387_))
                        _g78503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g78503_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx78308_ _marks78309_)
        (let _lp78311_ ((_e78313_ _stx78308_)
                        (_marks78314_ _marks78309_)
                        (_src78315_ (gx#stx-source _stx78308_)))
          (if (##structure-direct-instance-of? _e78313_ 'gx#syntax-wrap::t)
              (_lp78311_
               (##unchecked-structure-ref _e78313_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e78313_ '3 gx#syntax-wrap::t '#f)
                _marks78314_)
               (##unchecked-structure-ref _e78313_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e78313_
                   'gx#identifier-wrap::t)
                  (if (null? _marks78314_)
                      _e78313_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e78313_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e78313_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e78313_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks78314_)))
                  (if (##structure-direct-instance-of?
                       _e78313_
                       'gx#syntax-quote::t)
                      _e78313_
                      (if (##structure-instance-of? _e78313_ 'gerbil#AST::t)
                          (_lp78311_
                           (##unchecked-structure-ref
                            _e78313_
                            '1
                            gx#AST::t
                            '#f)
                           _marks78314_
                           (##unchecked-structure-ref
                            _e78313_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e78313_)
                              (##structure
                               gx#identifier-wrap::t
                               _e78313_
                               _src78315_
                               (reverse _marks78314_))
                              (if (null? _marks78314_)
                                  _e78313_
                                  (if (pair? _e78313_)
                                      (cons (gx#stx-wrap
                                             (car _e78313_)
                                             _marks78314_)
                                            (gx#stx-wrap
                                             (cdr _e78313_)
                                             _marks78314_))
                                      (if (vector? _e78313_)
                                          (vector-map
                                           (lambda (_g7831678318_)
                                             (gx#stx-wrap
                                              _g7831678318_
                                              _marks78314_))
                                           _e78313_)
                                          (if (box? _e78313_)
                                              (box (gx#stx-wrap
                                                    (unbox _e78313_)
                                                    _marks78314_))
                                              _e78313_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx78324_)
        (let ((_marks78326_ '())) (gx#stx-unwrap__% _stx78324_ _marks78326_))))
    (define gx#stx-unwrap
      (lambda _g78505_
        (let ((_g78504_ (##length _g78505_)))
          (cond ((##fx= _g78504_ 1)
                 (apply (lambda (_stx78324_) (gx#stx-unwrap__0 _stx78324_))
                        _g78505_))
                ((##fx= _g78504_ 2)
                 (apply (lambda (_stx78328_ _marks78329_)
                          (gx#stx-unwrap__% _stx78328_ _marks78329_))
                        _g78505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g78505_))))))
    (define gx#stx-wrap
      (lambda (_stx78301_ _marks78302_)
        (foldl1 (lambda (_mark78304_ _stx78305_)
                  (gx#stx-apply-mark _stx78305_ _mark78304_))
                _stx78301_
                _marks78302_)))
    (define gx#stx-rewrap
      (lambda (_stx78295_ _marks78296_)
        (foldr1 (lambda (_mark78298_ _stx78299_)
                  (gx#stx-apply-mark _stx78299_ _mark78298_))
                _stx78295_
                _marks78296_)))
    (define gx#stx-apply-mark
      (lambda (_stx78292_ _mark78293_)
        (if (##structure-direct-instance-of? _stx78292_ 'gx#syntax-quote::t)
            _stx78292_
            (if (and (##structure-direct-instance-of?
                      _stx78292_
                      'gx#syntax-wrap::t)
                     (eq? _mark78293_
                          (##unchecked-structure-ref
                           _stx78292_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx78292_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx78292_
                 (gx#stx-source _stx78292_)
                 _mark78293_)))))
    (define gx#apply-mark
      (lambda (_mark78256_ _marks78257_)
        (let* ((_marks7825878266_ _marks78257_)
               (_else7826078274_ (lambda () (cons _mark78256_ _marks78257_)))
               (_K7826278280_
                (lambda (_rest78277_ _hd78278_)
                  (if (eq? _mark78256_ _hd78278_)
                      _rest78277_
                      (cons _mark78256_ _marks78257_)))))
          (if (##pair? _marks7825878266_)
              (let ((_hd7826378283_ (##car _marks7825878266_))
                    (_tl7826478285_ (##cdr _marks7825878266_)))
                (let* ((_hd78288_ _hd7826378283_) (_rest78290_ _tl7826478285_))
                  (_K7826278280_ _rest78290_ _hd78288_)))
              (_else7826078274_)))))
    (define gx#stx-e
      (lambda (_stx78254_)
        (if (##structure-direct-instance-of? _stx78254_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx78254_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx78254_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx78254_ '1 gx#AST::t '#f)
                _stx78254_))))
    (define gx#stx-source
      (lambda (_stx78252_)
        (if (##structure-instance-of? _stx78252_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx78252_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx78246_ _src78247_)
        (if (or (##structure-instance-of? _stx78246_ 'gerbil#AST::t)
                (not _src78247_))
            _stx78246_
            (##structure gx#AST::t _stx78246_ _src78247_))))
    (define gx#stx-datum?
      (lambda (_stx78244_) (gx#self-quoting? (gx#stx-e _stx78244_))))
    (define gx#self-quoting?
      (lambda (_x78227_)
        (let ((_$e78229_ (immediate? _x78227_)))
          (if _$e78229_
              _$e78229_
              (let ((_$e78232_ (number? _x78227_)))
                (if _$e78232_
                    _$e78232_
                    (let ((_$e78235_ (keyword? _x78227_)))
                      (if _$e78235_
                          _$e78235_
                          (let ((_$e78238_ (string? _x78227_)))
                            (if _$e78238_
                                _$e78238_
                                (let ((_$e78241_ (vector? _x78227_)))
                                  (if _$e78241_
                                      _$e78241_
                                      (u8vector? _x78227_)))))))))))))
    (define gx#stx-boolean? (lambda (_e78225_) (boolean? (gx#stx-e _e78225_))))
    (define gx#stx-keyword? (lambda (_e78223_) (keyword? (gx#stx-e _e78223_))))
    (define gx#stx-char? (lambda (_e78221_) (char? (gx#stx-e _e78221_))))
    (define gx#stx-number? (lambda (_e78219_) (number? (gx#stx-e _e78219_))))
    (define gx#stx-fixnum? (lambda (_e78217_) (fixnum? (gx#stx-e _e78217_))))
    (define gx#stx-string? (lambda (_e78215_) (string? (gx#stx-e _e78215_))))
    (define gx#stx-null? (lambda (_e78213_) (null? (gx#stx-e _e78213_))))
    (define gx#stx-pair? (lambda (_e78211_) (pair? (gx#stx-e _e78211_))))
    (define gx#stx-list?
      (lambda (_e78173_)
        (let* ((_g7817478183_ (gx#stx-e _e78173_))
               (_E7817778187_
                (lambda () (error '"No clause matching" _g7817478183_))))
          (let ((_K7817978203_
                 (lambda (_rest78201_) (gx#stx-list? _rest78201_)))
                (_K7817878193_ (lambda (_tail78191_) (null? _tail78191_))))
            (if (##pair? _g7817478183_)
                (let* ((_tl7818178206_ (##cdr _g7817478183_))
                       (_rest78209_ _tl7818178206_))
                  (gx#stx-list? _rest78209_))
                (let ((_tail78196_ _g7817478183_)) (null? _tail78196_)))))))
    (define gx#stx-pair/null?
      (lambda (_e78166_)
        (let* ((_e78168_ (gx#stx-e _e78166_)) (_$e78170_ (pair? _e78168_)))
          (if _$e78170_ _$e78170_ (null? _e78168_)))))
    (define gx#stx-vector? (lambda (_e78164_) (vector? (gx#stx-e _e78164_))))
    (define gx#stx-box? (lambda (_e78162_) (box? (gx#stx-e _e78162_))))
    (define gx#stx-eq?
      (lambda (_x78159_ _y78160_)
        (eq? (gx#stx-e _x78159_) (gx#stx-e _y78160_))))
    (define gx#stx-eqv?
      (lambda (_x78156_ _y78157_)
        (eqv? (gx#stx-e _x78156_) (gx#stx-e _y78157_))))
    (define gx#stx-equal?
      (lambda (_x78153_ _y78154_)
        (equal? (gx#stx-e _x78153_) (gx#stx-e _y78154_))))
    (define gx#stx-false? (lambda (_x78151_) (not (gx#stx-e _x78151_))))
    (define gx#stx-identifier
      (lambda (_template78148_ . _args78149_)
        (gx#datum->syntax__1
         _template78148_
         (apply make-symbol (gx#syntax->datum _args78149_))
         (gx#stx-source _template78148_))))
    (define gx#stx-identifier-marks
      (lambda (_stx78146_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx78146_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx78144_)
        (if (##structure-direct-instance-of? _stx78144_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx78144_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx78144_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx78144_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx78144_)))))
    (define gx#stx-identifier-context
      (lambda (_stx78140_)
        (let ((_stx78142_ (gx#stx-unwrap__0 _stx78140_)))
          (if (gx#identifier-quote? _stx78142_)
              (##unchecked-structure-ref _stx78142_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx78095_)
        (let* ((_g7809678106_ (gx#stx-e _stx78095_))
               (_else7809978114_ (lambda () '#f)))
          (let ((_K7810278128_
                 (lambda (_rest78125_ _hd78126_)
                   (if (gx#identifier? _hd78126_)
                       (gx#identifier-list? _rest78125_)
                       '#f)))
                (_K7810178119_ (lambda () '#t)))
            (let ((_try-match7809878122_
                   (lambda ()
                     (if (##null? _g7809678106_)
                         (_K7810178119_)
                         (_else7809978114_)))))
              (if (##pair? _g7809678106_)
                  (let ((_tl7810478133_ (##cdr _g7809678106_))
                        (_hd7810378131_ (##car _g7809678106_)))
                    (let ((_hd78136_ _hd7810378131_)
                          (_rest78138_ _tl7810478133_))
                      (_K7810278128_ _rest78138_ _hd78136_)))
                  (_try-match7809878122_)))))))
    (define gx#genident__%
      (lambda (_e78072_ _src78073_)
        (gx#stx-wrap-source
         (gensym (let ((_e78075_ (gx#stx-e _e78072_)))
                   (if (interned-symbol? _e78075_) _e78075_ 'g)))
         (let ((_$e78077_ (gx#stx-source _e78072_)))
           (if _$e78077_ _$e78077_ _src78073_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e78084_ 'g) (_src78086_ '#f))
          (gx#genident__% _e78084_ _src78086_))))
    (define gx#genident__1
      (lambda (_e78088_)
        (let ((_src78090_ '#f)) (gx#genident__% _e78088_ _src78090_))))
    (define gx#genident
      (lambda _g78507_
        (let ((_g78506_ (##length _g78507_)))
          (cond ((##fx= _g78506_ 0)
                 (apply (lambda () (gx#genident__0)) _g78507_))
                ((##fx= _g78506_ 1)
                 (apply (lambda (_e78088_) (gx#genident__1 _e78088_))
                        _g78507_))
                ((##fx= _g78506_ 2)
                 (apply (lambda (_e78092_ _src78093_)
                          (gx#genident__% _e78092_ _src78093_))
                        _g78507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g78507_))))))
    (define gx#gentemps
      (lambda (_stx-lst78069_) (gx#stx-map1 gx#genident _stx-lst78069_)))
    (define gx#syntax->list
      (lambda (_stx78067_) (gx#stx-map1 values _stx78067_)))
    (define gx#stx-car
      (lambda (_stx78064_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx78064_)))))
    (define gx#stx-cdr
      (lambda (_stx78061_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx78061_)))))
    (define gx#stx-length
      (lambda (_stx78026_)
        (let _lp78028_ ((_rest78030_ _stx78026_) (_n78031_ '0))
          (let* ((_g7803278040_ (gx#stx-e _rest78030_))
                 (_else7803478048_ (lambda () _n78031_))
                 (_K7803678053_
                  (lambda (_rest78051_)
                    (_lp78028_ _rest78051_ (fx+ _n78031_ '1)))))
            (if (##pair? _g7803278040_)
                (let* ((_tl7803878056_ (##cdr _g7803278040_))
                       (_rest78059_ _tl7803878056_))
                  (_K7803678053_ _rest78059_))
                (_else7803478048_))))))
    (define gx#stx-for-each
      (lambda _g78509_
        (let ((_g78508_ (##length _g78509_)))
          (cond ((##fx= _g78508_ 2)
                 (apply (lambda (_f78019_ _stx78020_)
                          (gx#stx-for-each1 _f78019_ _stx78020_))
                        _g78509_))
                ((##fx= _g78508_ 3)
                 (apply (lambda (_f78022_ _xstx78023_ _ystx78024_)
                          (gx#stx-for-each2 _f78022_ _xstx78023_ _ystx78024_))
                        _g78509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g78509_))))))
    (define gx#stx-for-each1
      (lambda (_f77969_ _stx77970_)
        (if (procedure? _f77969_)
            '#!void
            (error '"expected procedure" _f77969_))
        (let _lp77972_ ((_rest77974_ _stx77970_))
          (let* ((_g7797577985_ (gx#syntax-e _rest77974_))
                 (_else7797877993_ (lambda () (_f77969_ _rest77974_))))
            (let ((_K7798178007_
                   (lambda (_rest78004_ _hd78005_)
                     (_f77969_ _hd78005_)
                     (_lp77972_ _rest78004_)))
                  (_K7798077998_ (lambda () '#!void)))
              (let ((_try-match7797778001_
                     (lambda ()
                       (if (##null? _g7797577985_)
                           (_K7798077998_)
                           (_else7797877993_)))))
                (if (##pair? _g7797577985_)
                    (let ((_tl7798378012_ (##cdr _g7797577985_))
                          (_hd7798278010_ (##car _g7797577985_)))
                      (let ((_hd78015_ _hd7798278010_)
                            (_rest78017_ _tl7798378012_))
                        (_K7798178007_ _rest78017_ _hd78015_)))
                    (_try-match7797778001_))))))))
    (define gx#stx-for-each2
      (lambda (_f77874_ _xstx77875_ _ystx77876_)
        (if (procedure? _f77874_)
            '#!void
            (error '"expected procedure" _f77874_))
        (let _lp77878_ ((_xrest77880_ _xstx77875_) (_yrest77881_ _ystx77876_))
          (let* ((_g7788277892_ (gx#syntax-e _xrest77880_))
                 (_else7788577900_ (lambda () '#!void)))
            (let ((_K7788877957_
                   (lambda (_xrest77926_ _xhd77927_)
                     (let* ((_g7792877935_ (gx#syntax-e _yrest77881_))
                            (_E7793077939_
                             (lambda ()
                               (error '"No clause matching" _g7792877935_)))
                            (_K7793177945_
                             (lambda (_yrest77942_ _yhd77943_)
                               (_f77874_ _xhd77927_ _yhd77943_)
                               (_lp77878_ _xrest77926_ _yrest77942_))))
                       (if (##pair? _g7792877935_)
                           (let ((_hd7793277948_ (##car _g7792877935_))
                                 (_tl7793377950_ (##cdr _g7792877935_)))
                             (let* ((_yhd77953_ _hd7793277948_)
                                    (_yrest77955_ _tl7793377950_))
                               (_K7793177945_ _yrest77955_ _yhd77953_)))
                           (_E7793077939_)))))
                  (_K7788777920_
                   (lambda ()
                     (let* ((_yrest7790477909_ _yrest77881_)
                            (_E7790677913_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7790477909_)))
                            (_K7790777917_
                             (lambda () (_f77874_ _xrest77880_ _yrest77881_))))
                       (if (not (gx#stx-null? _yrest7790477909_))
                           (_K7790777917_)
                           (_E7790677913_))))))
              (let ((_try-match7788477923_
                     (lambda ()
                       (if (not (null? _g7788277892_))
                           (_K7788777920_)
                           (_else7788577900_)))))
                (if (##pair? _g7788277892_)
                    (let ((_tl7789077962_ (##cdr _g7788277892_))
                          (_hd7788977960_ (##car _g7788277892_)))
                      (let ((_xhd77965_ _hd7788977960_)
                            (_xrest77967_ _tl7789077962_))
                        (_K7788877957_ _xrest77967_ _xhd77965_)))
                    (_try-match7788477923_))))))))
    (define gx#stx-map
      (lambda _g78511_
        (let ((_g78510_ (##length _g78511_)))
          (cond ((##fx= _g78510_ 2)
                 (apply (lambda (_f77867_ _stx77868_)
                          (gx#stx-map1 _f77867_ _stx77868_))
                        _g78511_))
                ((##fx= _g78510_ 3)
                 (apply (lambda (_f77870_ _xstx77871_ _ystx77872_)
                          (gx#stx-map2 _f77870_ _xstx77871_ _ystx77872_))
                        _g78511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g78511_))))))
    (define gx#stx-map1
      (lambda (_f77817_ _stx77818_)
        (if (procedure? _f77817_)
            '#!void
            (error '"expected procedure" _f77817_))
        (let _recur77820_ ((_rest77822_ _stx77818_))
          (let* ((_g7782377833_ (gx#syntax-e _rest77822_))
                 (_else7782677841_ (lambda () (_f77817_ _rest77822_))))
            (let ((_K7782977855_
                   (lambda (_rest77852_ _hd77853_)
                     (cons (_f77817_ _hd77853_) (_recur77820_ _rest77852_))))
                  (_K7782877846_ (lambda () '())))
              (let ((_try-match7782577849_
                     (lambda ()
                       (if (##null? _g7782377833_)
                           (_K7782877846_)
                           (_else7782677841_)))))
                (if (##pair? _g7782377833_)
                    (let ((_tl7783177860_ (##cdr _g7782377833_))
                          (_hd7783077858_ (##car _g7782377833_)))
                      (let ((_hd77863_ _hd7783077858_)
                            (_rest77865_ _tl7783177860_))
                        (_K7782977855_ _rest77865_ _hd77863_)))
                    (_try-match7782577849_))))))))
    (define gx#stx-map2
      (lambda (_f77722_ _xstx77723_ _ystx77724_)
        (if (procedure? _f77722_)
            '#!void
            (error '"expected procedure" _f77722_))
        (let _recur77726_ ((_xrest77728_ _xstx77723_)
                           (_yrest77729_ _ystx77724_))
          (let* ((_g7773077740_ (gx#syntax-e _xrest77728_))
                 (_else7773377748_ (lambda () '())))
            (let ((_K7773677805_
                   (lambda (_xrest77774_ _xhd77775_)
                     (let* ((_g7777677783_ (gx#syntax-e _yrest77729_))
                            (_E7777877787_
                             (lambda ()
                               (error '"No clause matching" _g7777677783_)))
                            (_K7777977793_
                             (lambda (_yrest77790_ _yhd77791_)
                               (cons (_f77722_ _xhd77775_ _yhd77791_)
                                     (_recur77726_
                                      _xrest77774_
                                      _yrest77790_)))))
                       (if (##pair? _g7777677783_)
                           (let ((_hd7778077796_ (##car _g7777677783_))
                                 (_tl7778177798_ (##cdr _g7777677783_)))
                             (let* ((_yhd77801_ _hd7778077796_)
                                    (_yrest77803_ _tl7778177798_))
                               (_K7777977793_ _yrest77803_ _yhd77801_)))
                           (_E7777877787_)))))
                  (_K7773577768_
                   (lambda ()
                     (let* ((_yrest7775277757_ _yrest77729_)
                            (_E7775477761_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7775277757_)))
                            (_K7775577765_
                             (lambda () (_f77722_ _xrest77728_ _yrest77729_))))
                       (if (not (gx#stx-null? _yrest7775277757_))
                           (_K7775577765_)
                           (_E7775477761_))))))
              (let ((_try-match7773277771_
                     (lambda ()
                       (if (not (null? _g7773077740_))
                           (_K7773577768_)
                           (_else7773377748_)))))
                (if (##pair? _g7773077740_)
                    (let ((_tl7773877810_ (##cdr _g7773077740_))
                          (_hd7773777808_ (##car _g7773077740_)))
                      (let ((_xhd77813_ _hd7773777808_)
                            (_xrest77815_ _tl7773877810_))
                        (_K7773677805_ _xrest77815_ _xhd77813_)))
                    (_try-match7773277771_))))))))
    (define gx#stx-andmap
      (lambda (_f77672_ _stx77673_)
        (if (procedure? _f77672_)
            '#!void
            (error '"expected procedure" _f77672_))
        (let _lp77675_ ((_rest77677_ _stx77673_))
          (let* ((_g7767877688_ (gx#syntax-e _rest77677_))
                 (_else7768177696_ (lambda () (_f77672_ _rest77677_))))
            (let ((_K7768477710_
                   (lambda (_rest77707_ _hd77708_)
                     (if (_f77672_ _hd77708_) (_lp77675_ _rest77707_) '#f)))
                  (_K7768377701_ (lambda () '#t)))
              (let ((_try-match7768077704_
                     (lambda ()
                       (if (##null? _g7767877688_)
                           (_K7768377701_)
                           (_else7768177696_)))))
                (if (##pair? _g7767877688_)
                    (let ((_tl7768677715_ (##cdr _g7767877688_))
                          (_hd7768577713_ (##car _g7767877688_)))
                      (let ((_hd77718_ _hd7768577713_)
                            (_rest77720_ _tl7768677715_))
                        (_K7768477710_ _rest77720_ _hd77718_)))
                    (_try-match7768077704_))))))))
    (define gx#stx-ormap
      (lambda (_f77619_ _stx77620_)
        (if (procedure? _f77619_)
            '#!void
            (error '"expected procedure" _f77619_))
        (let _lp77622_ ((_rest77624_ _stx77620_))
          (let* ((_g7762577635_ (gx#syntax-e _rest77624_))
                 (_else7762877643_ (lambda () (_f77619_ _rest77624_))))
            (let ((_K7763177660_
                   (lambda (_rest77654_ _hd77655_)
                     (let ((_$e77657_ (_f77619_ _hd77655_)))
                       (if _$e77657_ _$e77657_ (_lp77622_ _rest77654_)))))
                  (_K7763077648_ (lambda () '#f)))
              (let ((_try-match7762777651_
                     (lambda ()
                       (if (##null? _g7762577635_)
                           (_K7763077648_)
                           (_else7762877643_)))))
                (if (##pair? _g7762577635_)
                    (let ((_tl7763377665_ (##cdr _g7762577635_))
                          (_hd7763277663_ (##car _g7762577635_)))
                      (let ((_hd77668_ _hd7763277663_)
                            (_rest77670_ _tl7763377665_))
                        (_K7763177660_ _rest77670_ _hd77668_)))
                    (_try-match7762777651_))))))))
    (define gx#stx-foldl
      (lambda (_f77567_ _iv77568_ _stx77569_)
        (if (procedure? _f77567_)
            '#!void
            (error '"expected procedure" _f77567_))
        (let _lp77571_ ((_r77573_ _iv77568_) (_rest77574_ _stx77569_))
          (let* ((_g7757577585_ (gx#syntax-e _rest77574_))
                 (_else7757877593_
                  (lambda () (_f77567_ _rest77574_ _r77573_))))
            (let ((_K7758177607_
                   (lambda (_rest77604_ _hd77605_)
                     (_lp77571_ (_f77567_ _hd77605_ _r77573_) _rest77604_)))
                  (_K7758077598_ (lambda () _r77573_)))
              (let ((_try-match7757777601_
                     (lambda ()
                       (if (##null? _g7757577585_)
                           (_K7758077598_)
                           (_else7757877593_)))))
                (if (##pair? _g7757577585_)
                    (let ((_tl7758377612_ (##cdr _g7757577585_))
                          (_hd7758277610_ (##car _g7757577585_)))
                      (let ((_hd77615_ _hd7758277610_)
                            (_rest77617_ _tl7758377612_))
                        (_K7758177607_ _rest77617_ _hd77615_)))
                    (_try-match7757777601_))))))))
    (define gx#stx-foldr
      (lambda (_f77516_ _iv77517_ _stx77518_)
        (if (procedure? _f77516_)
            '#!void
            (error '"expected procedure" _f77516_))
        (let _recur77520_ ((_rest77522_ _stx77518_))
          (let* ((_g7752377533_ (gx#syntax-e _rest77522_))
                 (_else7752677541_
                  (lambda () (_f77516_ _rest77522_ _iv77517_))))
            (let ((_K7752977555_
                   (lambda (_rest77552_ _hd77553_)
                     (_f77516_ _hd77553_ (_recur77520_ _rest77552_))))
                  (_K7752877546_ (lambda () _iv77517_)))
              (let ((_try-match7752577549_
                     (lambda ()
                       (if (##null? _g7752377533_)
                           (_K7752877546_)
                           (_else7752677541_)))))
                (if (##pair? _g7752377533_)
                    (let ((_tl7753177560_ (##cdr _g7752377533_))
                          (_hd7753077558_ (##car _g7752377533_)))
                      (let ((_hd77563_ _hd7753077558_)
                            (_rest77565_ _tl7753177560_))
                        (_K7752977555_ _rest77565_ _hd77563_)))
                    (_try-match7752577549_))))))))
    (define gx#stx-reverse
      (lambda (_stx77514_) (gx#stx-foldl cons '() _stx77514_)))
    (define gx#stx-last
      (lambda (_stx77475_)
        (let _lp77477_ ((_rest77479_ _stx77475_))
          (let* ((_g7748077488_ (gx#syntax-e _rest77479_))
                 (_else7748277496_ (lambda () _rest77479_))
                 (_K7748477502_
                  (lambda (_rest77499_ _hd77500_)
                    (if (gx#stx-null? _rest77499_)
                        _hd77500_
                        (_lp77477_ _rest77499_)))))
            (if (##pair? _g7748077488_)
                (let ((_hd7748577505_ (##car _g7748077488_))
                      (_tl7748677507_ (##cdr _g7748077488_)))
                  (let* ((_hd77510_ _hd7748577505_)
                         (_rest77512_ _tl7748677507_))
                    (_K7748477502_ _rest77512_ _hd77510_)))
                (_else7748277496_))))))
    (define gx#stx-last-pair
      (lambda (_stx77446_)
        (let _lp77448_ ((_hd77450_ _stx77446_))
          (let* ((_g7745177458_ (gx#syntax-e _hd77450_))
                 (_E7745377462_
                  (lambda () (error '"No clause matching" _g7745177458_)))
                 (_K7745477467_
                  (lambda (_rest77465_)
                    (if (gx#stx-pair? _rest77465_)
                        (_lp77448_ _rest77465_)
                        _hd77450_))))
            (if (##pair? _g7745177458_)
                (let* ((_tl7745677470_ (##cdr _g7745177458_))
                       (_rest77473_ _tl7745677470_))
                  (_K7745477467_ _rest77473_))
                (_E7745377462_))))))
    (define gx#stx-list-tail
      (lambda (_stx77415_ _k77416_)
        (let _lp77418_ ((_rest77420_ _stx77415_) (_k77421_ _k77416_))
          (if (fxpositive? _k77421_)
              (let* ((_g7742277429_ (gx#syntax-e _rest77420_))
                     (_E7742477433_
                      (lambda () (error '"No clause matching" _g7742277429_)))
                     (_K7742577438_
                      (lambda (_rest77436_)
                        (_lp77418_ _rest77436_ (fx- _k77421_ '1)))))
                (if (##pair? _g7742277429_)
                    (let* ((_tl7742777441_ (##cdr _g7742277429_))
                           (_rest77444_ _tl7742777441_))
                      (_K7742577438_ _rest77444_))
                    (_E7742477433_)))
              _rest77420_))))
    (define gx#stx-list-ref
      (lambda (_stx77412_ _k77413_)
        (gx#stx-car (gx#stx-list-tail _stx77412_ _k77413_))))
    (define gx#stx-plist?__%
      (lambda (_stx77324_ _key?77325_)
        (if (procedure? _key?77325_)
            '#!void
            (error '"expected procedure" _key?77325_))
        (let _lp77327_ ((_rest77329_ _stx77324_))
          (let* ((_g7733077340_ (gx#stx-e _rest77329_))
                 (_else7733377348_ (lambda () '#f)))
            (let ((_K7733677390_
                   (lambda (_rest77359_ _hd77360_)
                     (if (_key?77325_ _hd77360_)
                         (let* ((_g7736177369_ (gx#stx-e _rest77359_))
                                (_else7736377377_ (lambda () '#f))
                                (_K7736577382_
                                 (lambda (_rest77380_)
                                   (_lp77327_ _rest77380_))))
                           (if (##pair? _g7736177369_)
                               (let* ((_tl7736777385_ (##cdr _g7736177369_))
                                      (_rest77388_ _tl7736777385_))
                                 (_lp77327_ _rest77388_))
                               (_else7736377377_)))
                         '#f)))
                  (_K7733577353_ (lambda () '#t)))
              (let ((_try-match7733277356_
                     (lambda ()
                       (if (##null? _g7733077340_)
                           (_K7733577353_)
                           (_else7733377348_)))))
                (if (##pair? _g7733077340_)
                    (let ((_tl7733877395_ (##cdr _g7733077340_))
                          (_hd7733777393_ (##car _g7733077340_)))
                      (let ((_hd77398_ _hd7733777393_)
                            (_rest77400_ _tl7733877395_))
                        (_K7733677390_ _rest77400_ _hd77398_)))
                    (_try-match7733277356_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx77405_)
        (let ((_key?77407_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx77405_ _key?77407_))))
    (define gx#stx-plist?
      (lambda _g78513_
        (let ((_g78512_ (##length _g78513_)))
          (cond ((##fx= _g78512_ 1)
                 (apply (lambda (_stx77405_) (gx#stx-plist?__0 _stx77405_))
                        _g78513_))
                ((##fx= _g78512_ 2)
                 (apply (lambda (_stx77409_ _key?77410_)
                          (gx#stx-plist?__% _stx77409_ _key?77410_))
                        _g78513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g78513_))))))
    (define gx#stx-getq__%
      (lambda (_key77242_ _stx77243_ _key=?77244_)
        (if (procedure? _key=?77244_)
            '#!void
            (error '"expected procedure" _key=?77244_))
        (let _lp77246_ ((_rest77248_ _stx77243_))
          (let* ((_g7724977257_ (gx#syntax-e _rest77248_))
                 (_else7725177265_ (lambda () '#f))
                 (_K7725377299_
                  (lambda (_rest77268_ _hd77269_)
                    (let* ((_g7727077277_ (gx#syntax-e _rest77268_))
                           (_E7727277281_
                            (lambda ()
                              (error '"No clause matching" _g7727077277_)))
                           (_K7727377287_
                            (lambda (_rest77284_ _val77285_)
                              (if (_key=?77244_ _hd77269_ _key77242_)
                                  _val77285_
                                  (_lp77246_ _rest77284_)))))
                      (if (##pair? _g7727077277_)
                          (let ((_hd7727477290_ (##car _g7727077277_))
                                (_tl7727577292_ (##cdr _g7727077277_)))
                            (let* ((_val77295_ _hd7727477290_)
                                   (_rest77297_ _tl7727577292_))
                              (_K7727377287_ _rest77297_ _val77295_)))
                          (_E7727277281_))))))
            (if (##pair? _g7724977257_)
                (let ((_hd7725477302_ (##car _g7724977257_))
                      (_tl7725577304_ (##cdr _g7724977257_)))
                  (let* ((_hd77307_ _hd7725477302_)
                         (_rest77309_ _tl7725577304_))
                    (_K7725377299_ _rest77309_ _hd77307_)))
                (_else7725177265_))))))
    (define gx#stx-getq__0
      (lambda (_key77314_ _stx77315_)
        (let ((_key=?77317_ gx#stx-eq?))
          (gx#stx-getq__% _key77314_ _stx77315_ _key=?77317_))))
    (define gx#stx-getq
      (lambda _g78515_
        (let ((_g78514_ (##length _g78515_)))
          (cond ((##fx= _g78514_ 2)
                 (apply (lambda (_key77314_ _stx77315_)
                          (gx#stx-getq__0 _key77314_ _stx77315_))
                        _g78515_))
                ((##fx= _g78514_ 3)
                 (apply (lambda (_key77319_ _stx77320_ _key=?77321_)
                          (gx#stx-getq__% _key77319_ _stx77320_ _key=?77321_))
                        _g78515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g78515_))))))))
