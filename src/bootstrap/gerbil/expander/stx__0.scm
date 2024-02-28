(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709127356)
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
      (lambda _$args81466_
        (apply make-instance gx#identifier-wrap::t _$args81466_)))
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
      (lambda _$args81463_
        (apply make-instance gx#syntax-wrap::t _$args81463_)))
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
      (lambda _$args81460_
        (apply make-instance gx#syntax-quote::t _$args81460_)))
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
      (lambda (_stx81458_) (symbol? (gx#stx-e _stx81458_))))
    (define gx#identifier-quote?
      (lambda (_stx81456_)
        (if (##structure-direct-instance-of? _stx81456_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81456_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81454_)
        (if (##structure-direct-instance-of? _stx81454_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81454_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81454_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81452_)
        (if (##structure-direct-instance-of? _stx81452_ 'gx#syntax-quote::t)
            _stx81452_
            (if (##structure-direct-instance-of? _stx81452_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81452_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81435_)
        (if (##structure-direct-instance-of? _stx81435_ 'gx#syntax-wrap::t)
            (let _lp81437_ ((_e81439_
                             (##unchecked-structure-ref
                              _stx81435_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81440_
                             (cons (##unchecked-structure-ref
                                    _stx81435_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81439_)
                  (let ((_$e81442_ (##type-id (##structure-type _e81439_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81442_)
                        (_lp81437_
                         (##unchecked-structure-ref _e81439_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81439_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81440_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81442_)
                                (eq? 'gx#identifier-wrap::t _$e81442_))
                            (##unchecked-structure-ref
                             _e81439_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81442_)
                                (_lp81437_
                                 (##unchecked-structure-ref
                                  _e81439_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81440_)
                                _e81439_))))
                  (if (null? _marks81440_)
                      _e81439_
                      (if (pair? _e81439_)
                          (cons (gx#stx-wrap (car _e81439_) _marks81440_)
                                (gx#stx-wrap (cdr _e81439_) _marks81440_))
                          (if (vector? _e81439_)
                              (vector-map
                               (lambda (_g8144781449_)
                                 (gx#stx-wrap _g8144781449_ _marks81440_))
                               _e81439_)
                              (if (box? _e81439_)
                                  (box (gx#stx-wrap
                                        (unbox _e81439_)
                                        _marks81440_))
                                  _e81439_))))))
            (if (##structure-instance-of? _stx81435_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81435_ '1 gx#AST::t '#f)
                _stx81435_))))
    (define gx#syntax->datum
      (lambda (_stx81433_)
        (if (##structure-instance-of? _stx81433_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81433_ '1 gx#AST::t '#f))
            (if (pair? _stx81433_)
                (cons (gx#syntax->datum (car _stx81433_))
                      (gx#syntax->datum (cdr _stx81433_)))
                (if (vector? _stx81433_)
                    (vector-map gx#syntax->datum _stx81433_)
                    (if (box? _stx81433_)
                        (box (gx#syntax->datum (unbox _stx81433_)))
                        _stx81433_))))))
    (define gx#datum->syntax__%
      (lambda (_stx81376_ _datum81377_ _src81378_ _quote?81379_)
        (letrec ((_wrap-datum81381_
                  (lambda (_e81405_ _marks81406_)
                    (_wrap-inner81383_
                     _e81405_
                     (lambda (_g8140781409_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8140781409_
                        _src81378_
                        _marks81406_)))))
                 (_wrap-quote81382_
                  (lambda (_e81397_ _ctx81398_ _marks81399_)
                    (_wrap-inner81383_
                     _e81397_
                     (lambda (_g8140081402_)
                       (##structure
                        gx#syntax-quote::t
                        _g8140081402_
                        _src81378_
                        _ctx81398_
                        _marks81399_)))))
                 (_wrap-inner81383_
                  (lambda (_e81390_ _wrap-e81391_)
                    (let _recur81393_ ((_e81395_ _e81390_))
                      (if (symbol? _e81395_)
                          (_wrap-e81391_ _e81395_)
                          (if (pair? _e81395_)
                              (cons (_recur81393_ (car _e81395_))
                                    (_recur81393_ (cdr _e81395_)))
                              (if (vector? _e81395_)
                                  (vector-map _recur81393_ _e81395_)
                                  (if (box? _e81395_)
                                      (box (_recur81393_ (unbox _e81395_)))
                                      _e81395_)))))))
                 (_wrap-outer81384_
                  (lambda (_e81388_)
                    (if (##structure-instance-of? _e81388_ 'gerbil#AST::t)
                        _e81388_
                        (##structure gx#AST::t _e81388_ _src81378_)))))
          (if (##structure-instance-of? _datum81377_ 'gerbil#AST::t)
              _datum81377_
              (if (not _stx81376_)
                  (##structure gx#AST::t _datum81377_ _src81378_)
                  (if (gx#identifier? _stx81376_)
                      (let ((_stx81386_ (gx#stx-unwrap__0 _stx81376_)))
                        (_wrap-outer81384_
                         (if (##structure-direct-instance-of?
                              _stx81386_
                              'gx#syntax-quote::t)
                             (if _quote?81379_
                                 (_wrap-quote81382_
                                  _datum81377_
                                  (##unchecked-structure-ref
                                   _stx81386_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx81386_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum81381_
                                  _datum81377_
                                  (##unchecked-structure-ref
                                   _stx81386_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum81381_
                              _datum81377_
                              (##unchecked-structure-ref
                               _stx81386_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx81376_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81415_ _datum81416_)
        (let* ((_src81418_ '#f) (_quote?81420_ '#t))
          (gx#datum->syntax__%
           _stx81415_
           _datum81416_
           _src81418_
           _quote?81420_))))
    (define gx#datum->syntax__1
      (lambda (_stx81422_ _datum81423_ _src81424_)
        (let ((_quote?81426_ '#t))
          (gx#datum->syntax__%
           _stx81422_
           _datum81423_
           _src81424_
           _quote?81426_))))
    (define gx#datum->syntax
      (lambda _g81547_
        (let ((_g81546_ (##length _g81547_)))
          (cond ((##fx= _g81546_ 2)
                 (apply (lambda (_stx81415_ _datum81416_)
                          (gx#datum->syntax__0 _stx81415_ _datum81416_))
                        _g81547_))
                ((##fx= _g81546_ 3)
                 (apply (lambda (_stx81422_ _datum81423_ _src81424_)
                          (gx#datum->syntax__1
                           _stx81422_
                           _datum81423_
                           _src81424_))
                        _g81547_))
                ((##fx= _g81546_ 4)
                 (apply (lambda (_stx81428_
                                 _datum81429_
                                 _src81430_
                                 _quote?81431_)
                          (gx#datum->syntax__%
                           _stx81428_
                           _datum81429_
                           _src81430_
                           _quote?81431_))
                        _g81547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81547_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx81352_ _marks81353_)
        (let _lp81355_ ((_e81357_ _stx81352_)
                        (_marks81358_ _marks81353_)
                        (_src81359_ (gx#stx-source _stx81352_)))
          (if (##structure-direct-instance-of? _e81357_ 'gx#syntax-wrap::t)
              (_lp81355_
               (##unchecked-structure-ref _e81357_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e81357_ '3 gx#syntax-wrap::t '#f)
                _marks81358_)
               (##unchecked-structure-ref _e81357_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e81357_
                   'gx#identifier-wrap::t)
                  (if (null? _marks81358_)
                      _e81357_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e81357_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e81357_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81357_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81358_)))
                  (if (##structure-direct-instance-of?
                       _e81357_
                       'gx#syntax-quote::t)
                      _e81357_
                      (if (##structure-instance-of? _e81357_ 'gerbil#AST::t)
                          (_lp81355_
                           (##unchecked-structure-ref
                            _e81357_
                            '1
                            gx#AST::t
                            '#f)
                           _marks81358_
                           (##unchecked-structure-ref
                            _e81357_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e81357_)
                              (##structure
                               gx#identifier-wrap::t
                               _e81357_
                               _src81359_
                               (reverse _marks81358_))
                              (if (null? _marks81358_)
                                  _e81357_
                                  (if (pair? _e81357_)
                                      (cons (gx#stx-wrap
                                             (car _e81357_)
                                             _marks81358_)
                                            (gx#stx-wrap
                                             (cdr _e81357_)
                                             _marks81358_))
                                      (if (vector? _e81357_)
                                          (vector-map
                                           (lambda (_g8136081362_)
                                             (gx#stx-wrap
                                              _g8136081362_
                                              _marks81358_))
                                           _e81357_)
                                          (if (box? _e81357_)
                                              (box (gx#stx-wrap
                                                    (unbox _e81357_)
                                                    _marks81358_))
                                              _e81357_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx81368_)
        (let ((_marks81370_ '())) (gx#stx-unwrap__% _stx81368_ _marks81370_))))
    (define gx#stx-unwrap
      (lambda _g81549_
        (let ((_g81548_ (##length _g81549_)))
          (cond ((##fx= _g81548_ 1)
                 (apply (lambda (_stx81368_) (gx#stx-unwrap__0 _stx81368_))
                        _g81549_))
                ((##fx= _g81548_ 2)
                 (apply (lambda (_stx81372_ _marks81373_)
                          (gx#stx-unwrap__% _stx81372_ _marks81373_))
                        _g81549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81549_))))))
    (define gx#stx-wrap
      (lambda (_stx81345_ _marks81346_)
        (foldl1 (lambda (_mark81348_ _stx81349_)
                  (gx#stx-apply-mark _stx81349_ _mark81348_))
                _stx81345_
                _marks81346_)))
    (define gx#stx-rewrap
      (lambda (_stx81339_ _marks81340_)
        (foldr1 (lambda (_mark81342_ _stx81343_)
                  (gx#stx-apply-mark _stx81343_ _mark81342_))
                _stx81339_
                _marks81340_)))
    (define gx#stx-apply-mark
      (lambda (_stx81336_ _mark81337_)
        (if (##structure-direct-instance-of? _stx81336_ 'gx#syntax-quote::t)
            _stx81336_
            (if (and (##structure-direct-instance-of?
                      _stx81336_
                      'gx#syntax-wrap::t)
                     (eq? _mark81337_
                          (##unchecked-structure-ref
                           _stx81336_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx81336_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx81336_
                 (gx#stx-source _stx81336_)
                 _mark81337_)))))
    (define gx#apply-mark
      (lambda (_mark81300_ _marks81301_)
        (let* ((_marks8130281310_ _marks81301_)
               (_else8130481318_ (lambda () (cons _mark81300_ _marks81301_)))
               (_K8130681324_
                (lambda (_rest81321_ _hd81322_)
                  (if (eq? _mark81300_ _hd81322_)
                      _rest81321_
                      (cons _mark81300_ _marks81301_)))))
          (if (##pair? _marks8130281310_)
              (let ((_hd8130781327_ (##car _marks8130281310_))
                    (_tl8130881329_ (##cdr _marks8130281310_)))
                (let* ((_hd81332_ _hd8130781327_) (_rest81334_ _tl8130881329_))
                  (_K8130681324_ _rest81334_ _hd81332_)))
              (_else8130481318_)))))
    (define gx#stx-e
      (lambda (_stx81298_)
        (if (##structure-direct-instance-of? _stx81298_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx81298_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx81298_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81298_ '1 gx#AST::t '#f)
                _stx81298_))))
    (define gx#stx-source
      (lambda (_stx81296_)
        (if (##structure-instance-of? _stx81296_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx81296_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx81290_ _src81291_)
        (if (or (##structure-instance-of? _stx81290_ 'gerbil#AST::t)
                (not _src81291_))
            _stx81290_
            (##structure gx#AST::t _stx81290_ _src81291_))))
    (define gx#stx-datum?
      (lambda (_stx81288_) (gx#self-quoting? (gx#stx-e _stx81288_))))
    (define gx#self-quoting?
      (lambda (_x81271_)
        (let ((_$e81273_ (immediate? _x81271_)))
          (if _$e81273_
              _$e81273_
              (let ((_$e81276_ (number? _x81271_)))
                (if _$e81276_
                    _$e81276_
                    (let ((_$e81279_ (keyword? _x81271_)))
                      (if _$e81279_
                          _$e81279_
                          (let ((_$e81282_ (string? _x81271_)))
                            (if _$e81282_
                                _$e81282_
                                (let ((_$e81285_ (vector? _x81271_)))
                                  (if _$e81285_
                                      _$e81285_
                                      (u8vector? _x81271_)))))))))))))
    (define gx#stx-boolean? (lambda (_e81269_) (boolean? (gx#stx-e _e81269_))))
    (define gx#stx-keyword? (lambda (_e81267_) (keyword? (gx#stx-e _e81267_))))
    (define gx#stx-char? (lambda (_e81265_) (char? (gx#stx-e _e81265_))))
    (define gx#stx-number? (lambda (_e81263_) (number? (gx#stx-e _e81263_))))
    (define gx#stx-fixnum? (lambda (_e81261_) (fixnum? (gx#stx-e _e81261_))))
    (define gx#stx-string? (lambda (_e81259_) (string? (gx#stx-e _e81259_))))
    (define gx#stx-null? (lambda (_e81257_) (null? (gx#stx-e _e81257_))))
    (define gx#stx-pair? (lambda (_e81255_) (pair? (gx#stx-e _e81255_))))
    (define gx#stx-list?
      (lambda (_e81217_)
        (let* ((_g8121881227_ (gx#stx-e _e81217_))
               (_E8122181231_
                (lambda () (error '"No clause matching" _g8121881227_))))
          (let ((_K8122381247_
                 (lambda (_rest81245_) (gx#stx-list? _rest81245_)))
                (_K8122281237_ (lambda (_tail81235_) (null? _tail81235_))))
            (if (##pair? _g8121881227_)
                (let* ((_tl8122581250_ (##cdr _g8121881227_))
                       (_rest81253_ _tl8122581250_))
                  (gx#stx-list? _rest81253_))
                (let ((_tail81240_ _g8121881227_)) (null? _tail81240_)))))))
    (define gx#stx-pair/null?
      (lambda (_e81210_)
        (let* ((_e81212_ (gx#stx-e _e81210_)) (_$e81214_ (pair? _e81212_)))
          (if _$e81214_ _$e81214_ (null? _e81212_)))))
    (define gx#stx-vector? (lambda (_e81208_) (vector? (gx#stx-e _e81208_))))
    (define gx#stx-box? (lambda (_e81206_) (box? (gx#stx-e _e81206_))))
    (define gx#stx-eq?
      (lambda (_x81203_ _y81204_)
        (eq? (gx#stx-e _x81203_) (gx#stx-e _y81204_))))
    (define gx#stx-eqv?
      (lambda (_x81200_ _y81201_)
        (eqv? (gx#stx-e _x81200_) (gx#stx-e _y81201_))))
    (define gx#stx-equal?
      (lambda (_x81197_ _y81198_)
        (equal? (gx#stx-e _x81197_) (gx#stx-e _y81198_))))
    (define gx#stx-false? (lambda (_x81195_) (not (gx#stx-e _x81195_))))
    (define gx#stx-identifier
      (lambda (_template81192_ . _args81193_)
        (gx#datum->syntax__1
         _template81192_
         (apply make-symbol (gx#syntax->datum _args81193_))
         (gx#stx-source _template81192_))))
    (define gx#stx-identifier-marks
      (lambda (_stx81190_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx81190_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx81188_)
        (if (##structure-direct-instance-of? _stx81188_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx81188_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx81188_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx81188_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx81188_)))))
    (define gx#stx-identifier-context
      (lambda (_stx81184_)
        (let ((_stx81186_ (gx#stx-unwrap__0 _stx81184_)))
          (if (gx#identifier-quote? _stx81186_)
              (##unchecked-structure-ref _stx81186_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx81139_)
        (let* ((_g8114081150_ (gx#stx-e _stx81139_))
               (_else8114381158_ (lambda () '#f)))
          (let ((_K8114681172_
                 (lambda (_rest81169_ _hd81170_)
                   (if (gx#identifier? _hd81170_)
                       (gx#identifier-list? _rest81169_)
                       '#f)))
                (_K8114581163_ (lambda () '#t)))
            (let ((_try-match8114281166_
                   (lambda ()
                     (if (##null? _g8114081150_)
                         (_K8114581163_)
                         (_else8114381158_)))))
              (if (##pair? _g8114081150_)
                  (let ((_tl8114881177_ (##cdr _g8114081150_))
                        (_hd8114781175_ (##car _g8114081150_)))
                    (let ((_hd81180_ _hd8114781175_)
                          (_rest81182_ _tl8114881177_))
                      (_K8114681172_ _rest81182_ _hd81180_)))
                  (_try-match8114281166_)))))))
    (define gx#genident__%
      (lambda (_e81116_ _src81117_)
        (gx#stx-wrap-source
         (gensym (let ((_e81119_ (gx#stx-e _e81116_)))
                   (if (interned-symbol? _e81119_) _e81119_ 'g)))
         (let ((_$e81121_ (gx#stx-source _e81116_)))
           (if _$e81121_ _$e81121_ _src81117_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e81128_ 'g) (_src81130_ '#f))
          (gx#genident__% _e81128_ _src81130_))))
    (define gx#genident__1
      (lambda (_e81132_)
        (let ((_src81134_ '#f)) (gx#genident__% _e81132_ _src81134_))))
    (define gx#genident
      (lambda _g81551_
        (let ((_g81550_ (##length _g81551_)))
          (cond ((##fx= _g81550_ 0)
                 (apply (lambda () (gx#genident__0)) _g81551_))
                ((##fx= _g81550_ 1)
                 (apply (lambda (_e81132_) (gx#genident__1 _e81132_))
                        _g81551_))
                ((##fx= _g81550_ 2)
                 (apply (lambda (_e81136_ _src81137_)
                          (gx#genident__% _e81136_ _src81137_))
                        _g81551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81551_))))))
    (define gx#gentemps
      (lambda (_stx-lst81113_) (gx#stx-map1 gx#genident _stx-lst81113_)))
    (define gx#syntax->list
      (lambda (_stx81111_) (gx#stx-map1 values _stx81111_)))
    (define gx#stx-car
      (lambda (_stx81108_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx81108_)))))
    (define gx#stx-cdr
      (lambda (_stx81105_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx81105_)))))
    (define gx#stx-length
      (lambda (_stx81070_)
        (let _lp81072_ ((_rest81074_ _stx81070_) (_n81075_ '0))
          (let* ((_g8107681084_ (gx#stx-e _rest81074_))
                 (_else8107881092_ (lambda () _n81075_))
                 (_K8108081097_
                  (lambda (_rest81095_)
                    (_lp81072_ _rest81095_ (fx+ _n81075_ '1)))))
            (if (##pair? _g8107681084_)
                (let* ((_tl8108281100_ (##cdr _g8107681084_))
                       (_rest81103_ _tl8108281100_))
                  (_K8108081097_ _rest81103_))
                (_else8107881092_))))))
    (define gx#stx-for-each
      (lambda _g81553_
        (let ((_g81552_ (##length _g81553_)))
          (cond ((##fx= _g81552_ 2)
                 (apply (lambda (_f81063_ _stx81064_)
                          (gx#stx-for-each1 _f81063_ _stx81064_))
                        _g81553_))
                ((##fx= _g81552_ 3)
                 (apply (lambda (_f81066_ _xstx81067_ _ystx81068_)
                          (gx#stx-for-each2 _f81066_ _xstx81067_ _ystx81068_))
                        _g81553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81553_))))))
    (define gx#stx-for-each1
      (lambda (_f81013_ _stx81014_)
        (if (procedure? _f81013_)
            '#!void
            (error '"expected procedure" _f81013_))
        (let _lp81016_ ((_rest81018_ _stx81014_))
          (let* ((_g8101981029_ (gx#syntax-e _rest81018_))
                 (_else8102281037_ (lambda () (_f81013_ _rest81018_))))
            (let ((_K8102581051_
                   (lambda (_rest81048_ _hd81049_)
                     (_f81013_ _hd81049_)
                     (_lp81016_ _rest81048_)))
                  (_K8102481042_ (lambda () '#!void)))
              (let ((_try-match8102181045_
                     (lambda ()
                       (if (##null? _g8101981029_)
                           (_K8102481042_)
                           (_else8102281037_)))))
                (if (##pair? _g8101981029_)
                    (let ((_tl8102781056_ (##cdr _g8101981029_))
                          (_hd8102681054_ (##car _g8101981029_)))
                      (let ((_hd81059_ _hd8102681054_)
                            (_rest81061_ _tl8102781056_))
                        (_K8102581051_ _rest81061_ _hd81059_)))
                    (_try-match8102181045_))))))))
    (define gx#stx-for-each2
      (lambda (_f80918_ _xstx80919_ _ystx80920_)
        (if (procedure? _f80918_)
            '#!void
            (error '"expected procedure" _f80918_))
        (let _lp80922_ ((_xrest80924_ _xstx80919_) (_yrest80925_ _ystx80920_))
          (let* ((_g8092680936_ (gx#syntax-e _xrest80924_))
                 (_else8092980944_ (lambda () '#!void)))
            (let ((_K8093281001_
                   (lambda (_xrest80970_ _xhd80971_)
                     (let* ((_g8097280979_ (gx#syntax-e _yrest80925_))
                            (_E8097480983_
                             (lambda ()
                               (error '"No clause matching" _g8097280979_)))
                            (_K8097580989_
                             (lambda (_yrest80986_ _yhd80987_)
                               (_f80918_ _xhd80971_ _yhd80987_)
                               (_lp80922_ _xrest80970_ _yrest80986_))))
                       (if (##pair? _g8097280979_)
                           (let ((_hd8097680992_ (##car _g8097280979_))
                                 (_tl8097780994_ (##cdr _g8097280979_)))
                             (let* ((_yhd80997_ _hd8097680992_)
                                    (_yrest80999_ _tl8097780994_))
                               (_K8097580989_ _yrest80999_ _yhd80997_)))
                           (_E8097480983_)))))
                  (_K8093180964_
                   (lambda ()
                     (let* ((_yrest8094880953_ _yrest80925_)
                            (_E8095080957_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8094880953_)))
                            (_K8095180961_
                             (lambda () (_f80918_ _xrest80924_ _yrest80925_))))
                       (if (not (gx#stx-null? _yrest8094880953_))
                           (_K8095180961_)
                           (_E8095080957_))))))
              (let ((_try-match8092880967_
                     (lambda ()
                       (if (not (null? _g8092680936_))
                           (_K8093180964_)
                           (_else8092980944_)))))
                (if (##pair? _g8092680936_)
                    (let ((_tl8093481006_ (##cdr _g8092680936_))
                          (_hd8093381004_ (##car _g8092680936_)))
                      (let ((_xhd81009_ _hd8093381004_)
                            (_xrest81011_ _tl8093481006_))
                        (_K8093281001_ _xrest81011_ _xhd81009_)))
                    (_try-match8092880967_))))))))
    (define gx#stx-map
      (lambda _g81555_
        (let ((_g81554_ (##length _g81555_)))
          (cond ((##fx= _g81554_ 2)
                 (apply (lambda (_f80911_ _stx80912_)
                          (gx#stx-map1 _f80911_ _stx80912_))
                        _g81555_))
                ((##fx= _g81554_ 3)
                 (apply (lambda (_f80914_ _xstx80915_ _ystx80916_)
                          (gx#stx-map2 _f80914_ _xstx80915_ _ystx80916_))
                        _g81555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81555_))))))
    (define gx#stx-map1
      (lambda (_f80861_ _stx80862_)
        (if (procedure? _f80861_)
            '#!void
            (error '"expected procedure" _f80861_))
        (let _recur80864_ ((_rest80866_ _stx80862_))
          (let* ((_g8086780877_ (gx#syntax-e _rest80866_))
                 (_else8087080885_ (lambda () (_f80861_ _rest80866_))))
            (let ((_K8087380899_
                   (lambda (_rest80896_ _hd80897_)
                     (cons (_f80861_ _hd80897_) (_recur80864_ _rest80896_))))
                  (_K8087280890_ (lambda () '())))
              (let ((_try-match8086980893_
                     (lambda ()
                       (if (##null? _g8086780877_)
                           (_K8087280890_)
                           (_else8087080885_)))))
                (if (##pair? _g8086780877_)
                    (let ((_tl8087580904_ (##cdr _g8086780877_))
                          (_hd8087480902_ (##car _g8086780877_)))
                      (let ((_hd80907_ _hd8087480902_)
                            (_rest80909_ _tl8087580904_))
                        (_K8087380899_ _rest80909_ _hd80907_)))
                    (_try-match8086980893_))))))))
    (define gx#stx-map2
      (lambda (_f80766_ _xstx80767_ _ystx80768_)
        (if (procedure? _f80766_)
            '#!void
            (error '"expected procedure" _f80766_))
        (let _recur80770_ ((_xrest80772_ _xstx80767_)
                           (_yrest80773_ _ystx80768_))
          (let* ((_g8077480784_ (gx#syntax-e _xrest80772_))
                 (_else8077780792_ (lambda () '())))
            (let ((_K8078080849_
                   (lambda (_xrest80818_ _xhd80819_)
                     (let* ((_g8082080827_ (gx#syntax-e _yrest80773_))
                            (_E8082280831_
                             (lambda ()
                               (error '"No clause matching" _g8082080827_)))
                            (_K8082380837_
                             (lambda (_yrest80834_ _yhd80835_)
                               (cons (_f80766_ _xhd80819_ _yhd80835_)
                                     (_recur80770_
                                      _xrest80818_
                                      _yrest80834_)))))
                       (if (##pair? _g8082080827_)
                           (let ((_hd8082480840_ (##car _g8082080827_))
                                 (_tl8082580842_ (##cdr _g8082080827_)))
                             (let* ((_yhd80845_ _hd8082480840_)
                                    (_yrest80847_ _tl8082580842_))
                               (_K8082380837_ _yrest80847_ _yhd80845_)))
                           (_E8082280831_)))))
                  (_K8077980812_
                   (lambda ()
                     (let* ((_yrest8079680801_ _yrest80773_)
                            (_E8079880805_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8079680801_)))
                            (_K8079980809_
                             (lambda () (_f80766_ _xrest80772_ _yrest80773_))))
                       (if (not (gx#stx-null? _yrest8079680801_))
                           (_K8079980809_)
                           (_E8079880805_))))))
              (let ((_try-match8077680815_
                     (lambda ()
                       (if (not (null? _g8077480784_))
                           (_K8077980812_)
                           (_else8077780792_)))))
                (if (##pair? _g8077480784_)
                    (let ((_tl8078280854_ (##cdr _g8077480784_))
                          (_hd8078180852_ (##car _g8077480784_)))
                      (let ((_xhd80857_ _hd8078180852_)
                            (_xrest80859_ _tl8078280854_))
                        (_K8078080849_ _xrest80859_ _xhd80857_)))
                    (_try-match8077680815_))))))))
    (define gx#stx-andmap
      (lambda (_f80716_ _stx80717_)
        (if (procedure? _f80716_)
            '#!void
            (error '"expected procedure" _f80716_))
        (let _lp80719_ ((_rest80721_ _stx80717_))
          (let* ((_g8072280732_ (gx#syntax-e _rest80721_))
                 (_else8072580740_ (lambda () (_f80716_ _rest80721_))))
            (let ((_K8072880754_
                   (lambda (_rest80751_ _hd80752_)
                     (if (_f80716_ _hd80752_) (_lp80719_ _rest80751_) '#f)))
                  (_K8072780745_ (lambda () '#t)))
              (let ((_try-match8072480748_
                     (lambda ()
                       (if (##null? _g8072280732_)
                           (_K8072780745_)
                           (_else8072580740_)))))
                (if (##pair? _g8072280732_)
                    (let ((_tl8073080759_ (##cdr _g8072280732_))
                          (_hd8072980757_ (##car _g8072280732_)))
                      (let ((_hd80762_ _hd8072980757_)
                            (_rest80764_ _tl8073080759_))
                        (_K8072880754_ _rest80764_ _hd80762_)))
                    (_try-match8072480748_))))))))
    (define gx#stx-ormap
      (lambda (_f80663_ _stx80664_)
        (if (procedure? _f80663_)
            '#!void
            (error '"expected procedure" _f80663_))
        (let _lp80666_ ((_rest80668_ _stx80664_))
          (let* ((_g8066980679_ (gx#syntax-e _rest80668_))
                 (_else8067280687_ (lambda () (_f80663_ _rest80668_))))
            (let ((_K8067580704_
                   (lambda (_rest80698_ _hd80699_)
                     (let ((_$e80701_ (_f80663_ _hd80699_)))
                       (if _$e80701_ _$e80701_ (_lp80666_ _rest80698_)))))
                  (_K8067480692_ (lambda () '#f)))
              (let ((_try-match8067180695_
                     (lambda ()
                       (if (##null? _g8066980679_)
                           (_K8067480692_)
                           (_else8067280687_)))))
                (if (##pair? _g8066980679_)
                    (let ((_tl8067780709_ (##cdr _g8066980679_))
                          (_hd8067680707_ (##car _g8066980679_)))
                      (let ((_hd80712_ _hd8067680707_)
                            (_rest80714_ _tl8067780709_))
                        (_K8067580704_ _rest80714_ _hd80712_)))
                    (_try-match8067180695_))))))))
    (define gx#stx-foldl
      (lambda (_f80611_ _iv80612_ _stx80613_)
        (if (procedure? _f80611_)
            '#!void
            (error '"expected procedure" _f80611_))
        (let _lp80615_ ((_r80617_ _iv80612_) (_rest80618_ _stx80613_))
          (let* ((_g8061980629_ (gx#syntax-e _rest80618_))
                 (_else8062280637_
                  (lambda () (_f80611_ _rest80618_ _r80617_))))
            (let ((_K8062580651_
                   (lambda (_rest80648_ _hd80649_)
                     (_lp80615_ (_f80611_ _hd80649_ _r80617_) _rest80648_)))
                  (_K8062480642_ (lambda () _r80617_)))
              (let ((_try-match8062180645_
                     (lambda ()
                       (if (##null? _g8061980629_)
                           (_K8062480642_)
                           (_else8062280637_)))))
                (if (##pair? _g8061980629_)
                    (let ((_tl8062780656_ (##cdr _g8061980629_))
                          (_hd8062680654_ (##car _g8061980629_)))
                      (let ((_hd80659_ _hd8062680654_)
                            (_rest80661_ _tl8062780656_))
                        (_K8062580651_ _rest80661_ _hd80659_)))
                    (_try-match8062180645_))))))))
    (define gx#stx-foldr
      (lambda (_f80560_ _iv80561_ _stx80562_)
        (if (procedure? _f80560_)
            '#!void
            (error '"expected procedure" _f80560_))
        (let _recur80564_ ((_rest80566_ _stx80562_))
          (let* ((_g8056780577_ (gx#syntax-e _rest80566_))
                 (_else8057080585_
                  (lambda () (_f80560_ _rest80566_ _iv80561_))))
            (let ((_K8057380599_
                   (lambda (_rest80596_ _hd80597_)
                     (_f80560_ _hd80597_ (_recur80564_ _rest80596_))))
                  (_K8057280590_ (lambda () _iv80561_)))
              (let ((_try-match8056980593_
                     (lambda ()
                       (if (##null? _g8056780577_)
                           (_K8057280590_)
                           (_else8057080585_)))))
                (if (##pair? _g8056780577_)
                    (let ((_tl8057580604_ (##cdr _g8056780577_))
                          (_hd8057480602_ (##car _g8056780577_)))
                      (let ((_hd80607_ _hd8057480602_)
                            (_rest80609_ _tl8057580604_))
                        (_K8057380599_ _rest80609_ _hd80607_)))
                    (_try-match8056980593_))))))))
    (define gx#stx-reverse
      (lambda (_stx80558_) (gx#stx-foldl cons '() _stx80558_)))
    (define gx#stx-last
      (lambda (_stx80519_)
        (let _lp80521_ ((_rest80523_ _stx80519_))
          (let* ((_g8052480532_ (gx#syntax-e _rest80523_))
                 (_else8052680540_ (lambda () _rest80523_))
                 (_K8052880546_
                  (lambda (_rest80543_ _hd80544_)
                    (if (gx#stx-null? _rest80543_)
                        _hd80544_
                        (_lp80521_ _rest80543_)))))
            (if (##pair? _g8052480532_)
                (let ((_hd8052980549_ (##car _g8052480532_))
                      (_tl8053080551_ (##cdr _g8052480532_)))
                  (let* ((_hd80554_ _hd8052980549_)
                         (_rest80556_ _tl8053080551_))
                    (_K8052880546_ _rest80556_ _hd80554_)))
                (_else8052680540_))))))
    (define gx#stx-last-pair
      (lambda (_stx80490_)
        (let _lp80492_ ((_hd80494_ _stx80490_))
          (let* ((_g8049580502_ (gx#syntax-e _hd80494_))
                 (_E8049780506_
                  (lambda () (error '"No clause matching" _g8049580502_)))
                 (_K8049880511_
                  (lambda (_rest80509_)
                    (if (gx#stx-pair? _rest80509_)
                        (_lp80492_ _rest80509_)
                        _hd80494_))))
            (if (##pair? _g8049580502_)
                (let* ((_tl8050080514_ (##cdr _g8049580502_))
                       (_rest80517_ _tl8050080514_))
                  (_K8049880511_ _rest80517_))
                (_E8049780506_))))))
    (define gx#stx-list-tail
      (lambda (_stx80459_ _k80460_)
        (let _lp80462_ ((_rest80464_ _stx80459_) (_k80465_ _k80460_))
          (if (fxpositive? _k80465_)
              (let* ((_g8046680473_ (gx#syntax-e _rest80464_))
                     (_E8046880477_
                      (lambda () (error '"No clause matching" _g8046680473_)))
                     (_K8046980482_
                      (lambda (_rest80480_)
                        (_lp80462_ _rest80480_ (fx- _k80465_ '1)))))
                (if (##pair? _g8046680473_)
                    (let* ((_tl8047180485_ (##cdr _g8046680473_))
                           (_rest80488_ _tl8047180485_))
                      (_K8046980482_ _rest80488_))
                    (_E8046880477_)))
              _rest80464_))))
    (define gx#stx-list-ref
      (lambda (_stx80456_ _k80457_)
        (gx#stx-car (gx#stx-list-tail _stx80456_ _k80457_))))
    (define gx#stx-plist?__%
      (lambda (_stx80368_ _key?80369_)
        (if (procedure? _key?80369_)
            '#!void
            (error '"expected procedure" _key?80369_))
        (let _lp80371_ ((_rest80373_ _stx80368_))
          (let* ((_g8037480384_ (gx#stx-e _rest80373_))
                 (_else8037780392_ (lambda () '#f)))
            (let ((_K8038080434_
                   (lambda (_rest80403_ _hd80404_)
                     (if (_key?80369_ _hd80404_)
                         (let* ((_g8040580413_ (gx#stx-e _rest80403_))
                                (_else8040780421_ (lambda () '#f))
                                (_K8040980426_
                                 (lambda (_rest80424_)
                                   (_lp80371_ _rest80424_))))
                           (if (##pair? _g8040580413_)
                               (let* ((_tl8041180429_ (##cdr _g8040580413_))
                                      (_rest80432_ _tl8041180429_))
                                 (_lp80371_ _rest80432_))
                               (_else8040780421_)))
                         '#f)))
                  (_K8037980397_ (lambda () '#t)))
              (let ((_try-match8037680400_
                     (lambda ()
                       (if (##null? _g8037480384_)
                           (_K8037980397_)
                           (_else8037780392_)))))
                (if (##pair? _g8037480384_)
                    (let ((_tl8038280439_ (##cdr _g8037480384_))
                          (_hd8038180437_ (##car _g8037480384_)))
                      (let ((_hd80442_ _hd8038180437_)
                            (_rest80444_ _tl8038280439_))
                        (_K8038080434_ _rest80444_ _hd80442_)))
                    (_try-match8037680400_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80449_)
        (let ((_key?80451_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80449_ _key?80451_))))
    (define gx#stx-plist?
      (lambda _g81557_
        (let ((_g81556_ (##length _g81557_)))
          (cond ((##fx= _g81556_ 1)
                 (apply (lambda (_stx80449_) (gx#stx-plist?__0 _stx80449_))
                        _g81557_))
                ((##fx= _g81556_ 2)
                 (apply (lambda (_stx80453_ _key?80454_)
                          (gx#stx-plist?__% _stx80453_ _key?80454_))
                        _g81557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81557_))))))
    (define gx#stx-getq__%
      (lambda (_key80286_ _stx80287_ _key=?80288_)
        (if (procedure? _key=?80288_)
            '#!void
            (error '"expected procedure" _key=?80288_))
        (let _lp80290_ ((_rest80292_ _stx80287_))
          (let* ((_g8029380301_ (gx#syntax-e _rest80292_))
                 (_else8029580309_ (lambda () '#f))
                 (_K8029780343_
                  (lambda (_rest80312_ _hd80313_)
                    (let* ((_g8031480321_ (gx#syntax-e _rest80312_))
                           (_E8031680325_
                            (lambda ()
                              (error '"No clause matching" _g8031480321_)))
                           (_K8031780331_
                            (lambda (_rest80328_ _val80329_)
                              (if (_key=?80288_ _hd80313_ _key80286_)
                                  _val80329_
                                  (_lp80290_ _rest80328_)))))
                      (if (##pair? _g8031480321_)
                          (let ((_hd8031880334_ (##car _g8031480321_))
                                (_tl8031980336_ (##cdr _g8031480321_)))
                            (let* ((_val80339_ _hd8031880334_)
                                   (_rest80341_ _tl8031980336_))
                              (_K8031780331_ _rest80341_ _val80339_)))
                          (_E8031680325_))))))
            (if (##pair? _g8029380301_)
                (let ((_hd8029880346_ (##car _g8029380301_))
                      (_tl8029980348_ (##cdr _g8029380301_)))
                  (let* ((_hd80351_ _hd8029880346_)
                         (_rest80353_ _tl8029980348_))
                    (_K8029780343_ _rest80353_ _hd80351_)))
                (_else8029580309_))))))
    (define gx#stx-getq__0
      (lambda (_key80358_ _stx80359_)
        (let ((_key=?80361_ gx#stx-eq?))
          (gx#stx-getq__% _key80358_ _stx80359_ _key=?80361_))))
    (define gx#stx-getq
      (lambda _g81559_
        (let ((_g81558_ (##length _g81559_)))
          (cond ((##fx= _g81558_ 2)
                 (apply (lambda (_key80358_ _stx80359_)
                          (gx#stx-getq__0 _key80358_ _stx80359_))
                        _g81559_))
                ((##fx= _g81558_ 3)
                 (apply (lambda (_key80363_ _stx80364_ _key=?80365_)
                          (gx#stx-getq__% _key80363_ _stx80364_ _key=?80365_))
                        _g81559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81559_))))))))
