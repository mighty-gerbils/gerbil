(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709159707)
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
      (lambda _$args81468_
        (apply make-instance gx#identifier-wrap::t _$args81468_)))
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
      (lambda _$args81465_
        (apply make-instance gx#syntax-wrap::t _$args81465_)))
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
      (lambda _$args81462_
        (apply make-instance gx#syntax-quote::t _$args81462_)))
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
      (lambda (_stx81460_) (symbol? (gx#stx-e _stx81460_))))
    (define gx#identifier-quote?
      (lambda (_stx81458_)
        (if (##structure-direct-instance-of? _stx81458_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81458_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81456_)
        (if (##structure-direct-instance-of? _stx81456_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81456_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81456_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81454_)
        (if (##structure-direct-instance-of? _stx81454_ 'gx#syntax-quote::t)
            _stx81454_
            (if (##structure-direct-instance-of? _stx81454_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81454_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81437_)
        (if (##structure-direct-instance-of? _stx81437_ 'gx#syntax-wrap::t)
            (let _lp81439_ ((_e81441_
                             (##unchecked-structure-ref
                              _stx81437_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81442_
                             (cons (##unchecked-structure-ref
                                    _stx81437_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81441_)
                  (let ((_$e81444_ (##type-id (##structure-type _e81441_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81444_)
                        (_lp81439_
                         (##unchecked-structure-ref _e81441_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81441_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81442_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81444_)
                                (eq? 'gx#identifier-wrap::t _$e81444_))
                            (##unchecked-structure-ref
                             _e81441_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81444_)
                                (_lp81439_
                                 (##unchecked-structure-ref
                                  _e81441_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81442_)
                                _e81441_))))
                  (if (null? _marks81442_)
                      _e81441_
                      (if (pair? _e81441_)
                          (cons (gx#stx-wrap (car _e81441_) _marks81442_)
                                (gx#stx-wrap (cdr _e81441_) _marks81442_))
                          (if (vector? _e81441_)
                              (vector-map
                               (lambda (_g8144981451_)
                                 (gx#stx-wrap _g8144981451_ _marks81442_))
                               _e81441_)
                              (if (box? _e81441_)
                                  (box (gx#stx-wrap
                                        (unbox _e81441_)
                                        _marks81442_))
                                  _e81441_))))))
            (if (##structure-instance-of? _stx81437_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81437_ '1 gx#AST::t '#f)
                _stx81437_))))
    (define gx#syntax->datum
      (lambda (_stx81435_)
        (if (##structure-instance-of? _stx81435_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81435_ '1 gx#AST::t '#f))
            (if (pair? _stx81435_)
                (cons (gx#syntax->datum (car _stx81435_))
                      (gx#syntax->datum (cdr _stx81435_)))
                (if (vector? _stx81435_)
                    (vector-map gx#syntax->datum _stx81435_)
                    (if (box? _stx81435_)
                        (box (gx#syntax->datum (unbox _stx81435_)))
                        _stx81435_))))))
    (define gx#datum->syntax__%
      (lambda (_stx81378_ _datum81379_ _src81380_ _quote?81381_)
        (letrec ((_wrap-datum81383_
                  (lambda (_e81407_ _marks81408_)
                    (_wrap-inner81385_
                     _e81407_
                     (lambda (_g8140981411_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8140981411_
                        _src81380_
                        _marks81408_)))))
                 (_wrap-quote81384_
                  (lambda (_e81399_ _ctx81400_ _marks81401_)
                    (_wrap-inner81385_
                     _e81399_
                     (lambda (_g8140281404_)
                       (##structure
                        gx#syntax-quote::t
                        _g8140281404_
                        _src81380_
                        _ctx81400_
                        _marks81401_)))))
                 (_wrap-inner81385_
                  (lambda (_e81392_ _wrap-e81393_)
                    (let _recur81395_ ((_e81397_ _e81392_))
                      (if (symbol? _e81397_)
                          (_wrap-e81393_ _e81397_)
                          (if (pair? _e81397_)
                              (cons (_recur81395_ (car _e81397_))
                                    (_recur81395_ (cdr _e81397_)))
                              (if (vector? _e81397_)
                                  (vector-map _recur81395_ _e81397_)
                                  (if (box? _e81397_)
                                      (box (_recur81395_ (unbox _e81397_)))
                                      _e81397_)))))))
                 (_wrap-outer81386_
                  (lambda (_e81390_)
                    (if (##structure-instance-of? _e81390_ 'gerbil#AST::t)
                        _e81390_
                        (##structure gx#AST::t _e81390_ _src81380_)))))
          (if (##structure-instance-of? _datum81379_ 'gerbil#AST::t)
              _datum81379_
              (if (not _stx81378_)
                  (##structure gx#AST::t _datum81379_ _src81380_)
                  (if (gx#identifier? _stx81378_)
                      (let ((_stx81388_ (gx#stx-unwrap__0 _stx81378_)))
                        (_wrap-outer81386_
                         (if (##structure-direct-instance-of?
                              _stx81388_
                              'gx#syntax-quote::t)
                             (if _quote?81381_
                                 (_wrap-quote81384_
                                  _datum81379_
                                  (##unchecked-structure-ref
                                   _stx81388_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx81388_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum81383_
                                  _datum81379_
                                  (##unchecked-structure-ref
                                   _stx81388_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum81383_
                              _datum81379_
                              (##unchecked-structure-ref
                               _stx81388_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx81378_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81417_ _datum81418_)
        (let* ((_src81420_ '#f) (_quote?81422_ '#t))
          (gx#datum->syntax__%
           _stx81417_
           _datum81418_
           _src81420_
           _quote?81422_))))
    (define gx#datum->syntax__1
      (lambda (_stx81424_ _datum81425_ _src81426_)
        (let ((_quote?81428_ '#t))
          (gx#datum->syntax__%
           _stx81424_
           _datum81425_
           _src81426_
           _quote?81428_))))
    (define gx#datum->syntax
      (lambda _g81549_
        (let ((_g81548_ (##length _g81549_)))
          (cond ((##fx= _g81548_ 2)
                 (apply (lambda (_stx81417_ _datum81418_)
                          (gx#datum->syntax__0 _stx81417_ _datum81418_))
                        _g81549_))
                ((##fx= _g81548_ 3)
                 (apply (lambda (_stx81424_ _datum81425_ _src81426_)
                          (gx#datum->syntax__1
                           _stx81424_
                           _datum81425_
                           _src81426_))
                        _g81549_))
                ((##fx= _g81548_ 4)
                 (apply (lambda (_stx81430_
                                 _datum81431_
                                 _src81432_
                                 _quote?81433_)
                          (gx#datum->syntax__%
                           _stx81430_
                           _datum81431_
                           _src81432_
                           _quote?81433_))
                        _g81549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81549_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx81354_ _marks81355_)
        (let _lp81357_ ((_e81359_ _stx81354_)
                        (_marks81360_ _marks81355_)
                        (_src81361_ (gx#stx-source _stx81354_)))
          (if (##structure-direct-instance-of? _e81359_ 'gx#syntax-wrap::t)
              (_lp81357_
               (##unchecked-structure-ref _e81359_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e81359_ '3 gx#syntax-wrap::t '#f)
                _marks81360_)
               (##unchecked-structure-ref _e81359_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e81359_
                   'gx#identifier-wrap::t)
                  (if (null? _marks81360_)
                      _e81359_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e81359_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e81359_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81359_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81360_)))
                  (if (##structure-direct-instance-of?
                       _e81359_
                       'gx#syntax-quote::t)
                      _e81359_
                      (if (##structure-instance-of? _e81359_ 'gerbil#AST::t)
                          (_lp81357_
                           (##unchecked-structure-ref
                            _e81359_
                            '1
                            gx#AST::t
                            '#f)
                           _marks81360_
                           (##unchecked-structure-ref
                            _e81359_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e81359_)
                              (##structure
                               gx#identifier-wrap::t
                               _e81359_
                               _src81361_
                               (reverse _marks81360_))
                              (if (null? _marks81360_)
                                  _e81359_
                                  (if (pair? _e81359_)
                                      (cons (gx#stx-wrap
                                             (car _e81359_)
                                             _marks81360_)
                                            (gx#stx-wrap
                                             (cdr _e81359_)
                                             _marks81360_))
                                      (if (vector? _e81359_)
                                          (vector-map
                                           (lambda (_g8136281364_)
                                             (gx#stx-wrap
                                              _g8136281364_
                                              _marks81360_))
                                           _e81359_)
                                          (if (box? _e81359_)
                                              (box (gx#stx-wrap
                                                    (unbox _e81359_)
                                                    _marks81360_))
                                              _e81359_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx81370_)
        (let ((_marks81372_ '())) (gx#stx-unwrap__% _stx81370_ _marks81372_))))
    (define gx#stx-unwrap
      (lambda _g81551_
        (let ((_g81550_ (##length _g81551_)))
          (cond ((##fx= _g81550_ 1)
                 (apply (lambda (_stx81370_) (gx#stx-unwrap__0 _stx81370_))
                        _g81551_))
                ((##fx= _g81550_ 2)
                 (apply (lambda (_stx81374_ _marks81375_)
                          (gx#stx-unwrap__% _stx81374_ _marks81375_))
                        _g81551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81551_))))))
    (define gx#stx-wrap
      (lambda (_stx81347_ _marks81348_)
        (foldl1 (lambda (_mark81350_ _stx81351_)
                  (gx#stx-apply-mark _stx81351_ _mark81350_))
                _stx81347_
                _marks81348_)))
    (define gx#stx-rewrap
      (lambda (_stx81341_ _marks81342_)
        (foldr1 (lambda (_mark81344_ _stx81345_)
                  (gx#stx-apply-mark _stx81345_ _mark81344_))
                _stx81341_
                _marks81342_)))
    (define gx#stx-apply-mark
      (lambda (_stx81338_ _mark81339_)
        (if (##structure-direct-instance-of? _stx81338_ 'gx#syntax-quote::t)
            _stx81338_
            (if (and (##structure-direct-instance-of?
                      _stx81338_
                      'gx#syntax-wrap::t)
                     (eq? _mark81339_
                          (##unchecked-structure-ref
                           _stx81338_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx81338_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx81338_
                 (gx#stx-source _stx81338_)
                 _mark81339_)))))
    (define gx#apply-mark
      (lambda (_mark81302_ _marks81303_)
        (let* ((_marks8130481312_ _marks81303_)
               (_else8130681320_ (lambda () (cons _mark81302_ _marks81303_)))
               (_K8130881326_
                (lambda (_rest81323_ _hd81324_)
                  (if (eq? _mark81302_ _hd81324_)
                      _rest81323_
                      (cons _mark81302_ _marks81303_)))))
          (if (##pair? _marks8130481312_)
              (let ((_hd8130981329_ (##car _marks8130481312_))
                    (_tl8131081331_ (##cdr _marks8130481312_)))
                (let* ((_hd81334_ _hd8130981329_) (_rest81336_ _tl8131081331_))
                  (_K8130881326_ _rest81336_ _hd81334_)))
              (_else8130681320_)))))
    (define gx#stx-e
      (lambda (_stx81300_)
        (if (##structure-direct-instance-of? _stx81300_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx81300_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx81300_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81300_ '1 gx#AST::t '#f)
                _stx81300_))))
    (define gx#stx-source
      (lambda (_stx81298_)
        (if (##structure-instance-of? _stx81298_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx81298_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx81292_ _src81293_)
        (if (or (##structure-instance-of? _stx81292_ 'gerbil#AST::t)
                (not _src81293_))
            _stx81292_
            (##structure gx#AST::t _stx81292_ _src81293_))))
    (define gx#stx-datum?
      (lambda (_stx81290_) (gx#self-quoting? (gx#stx-e _stx81290_))))
    (define gx#self-quoting?
      (lambda (_x81273_)
        (let ((_$e81275_ (immediate? _x81273_)))
          (if _$e81275_
              _$e81275_
              (let ((_$e81278_ (number? _x81273_)))
                (if _$e81278_
                    _$e81278_
                    (let ((_$e81281_ (keyword? _x81273_)))
                      (if _$e81281_
                          _$e81281_
                          (let ((_$e81284_ (string? _x81273_)))
                            (if _$e81284_
                                _$e81284_
                                (let ((_$e81287_ (vector? _x81273_)))
                                  (if _$e81287_
                                      _$e81287_
                                      (u8vector? _x81273_)))))))))))))
    (define gx#stx-boolean? (lambda (_e81271_) (boolean? (gx#stx-e _e81271_))))
    (define gx#stx-keyword? (lambda (_e81269_) (keyword? (gx#stx-e _e81269_))))
    (define gx#stx-char? (lambda (_e81267_) (char? (gx#stx-e _e81267_))))
    (define gx#stx-number? (lambda (_e81265_) (number? (gx#stx-e _e81265_))))
    (define gx#stx-fixnum? (lambda (_e81263_) (fixnum? (gx#stx-e _e81263_))))
    (define gx#stx-string? (lambda (_e81261_) (string? (gx#stx-e _e81261_))))
    (define gx#stx-null? (lambda (_e81259_) (null? (gx#stx-e _e81259_))))
    (define gx#stx-pair? (lambda (_e81257_) (pair? (gx#stx-e _e81257_))))
    (define gx#stx-list?
      (lambda (_e81219_)
        (let* ((_g8122081229_ (gx#stx-e _e81219_))
               (_E8122381233_
                (lambda () (error '"No clause matching" _g8122081229_))))
          (let ((_K8122581249_
                 (lambda (_rest81247_) (gx#stx-list? _rest81247_)))
                (_K8122481239_ (lambda (_tail81237_) (null? _tail81237_))))
            (if (##pair? _g8122081229_)
                (let* ((_tl8122781252_ (##cdr _g8122081229_))
                       (_rest81255_ _tl8122781252_))
                  (gx#stx-list? _rest81255_))
                (let ((_tail81242_ _g8122081229_)) (null? _tail81242_)))))))
    (define gx#stx-pair/null?
      (lambda (_e81212_)
        (let* ((_e81214_ (gx#stx-e _e81212_)) (_$e81216_ (pair? _e81214_)))
          (if _$e81216_ _$e81216_ (null? _e81214_)))))
    (define gx#stx-vector? (lambda (_e81210_) (vector? (gx#stx-e _e81210_))))
    (define gx#stx-box? (lambda (_e81208_) (box? (gx#stx-e _e81208_))))
    (define gx#stx-eq?
      (lambda (_x81205_ _y81206_)
        (eq? (gx#stx-e _x81205_) (gx#stx-e _y81206_))))
    (define gx#stx-eqv?
      (lambda (_x81202_ _y81203_)
        (eqv? (gx#stx-e _x81202_) (gx#stx-e _y81203_))))
    (define gx#stx-equal?
      (lambda (_x81199_ _y81200_)
        (equal? (gx#stx-e _x81199_) (gx#stx-e _y81200_))))
    (define gx#stx-false? (lambda (_x81197_) (not (gx#stx-e _x81197_))))
    (define gx#stx-identifier
      (lambda (_template81194_ . _args81195_)
        (gx#datum->syntax__1
         _template81194_
         (apply make-symbol (gx#syntax->datum _args81195_))
         (gx#stx-source _template81194_))))
    (define gx#stx-identifier-marks
      (lambda (_stx81192_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx81192_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx81190_)
        (if (##structure-direct-instance-of? _stx81190_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx81190_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx81190_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx81190_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx81190_)))))
    (define gx#stx-identifier-context
      (lambda (_stx81186_)
        (let ((_stx81188_ (gx#stx-unwrap__0 _stx81186_)))
          (if (gx#identifier-quote? _stx81188_)
              (##unchecked-structure-ref _stx81188_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx81141_)
        (let* ((_g8114281152_ (gx#stx-e _stx81141_))
               (_else8114581160_ (lambda () '#f)))
          (let ((_K8114881174_
                 (lambda (_rest81171_ _hd81172_)
                   (if (gx#identifier? _hd81172_)
                       (gx#identifier-list? _rest81171_)
                       '#f)))
                (_K8114781165_ (lambda () '#t)))
            (let ((_try-match8114481168_
                   (lambda ()
                     (if (##null? _g8114281152_)
                         (_K8114781165_)
                         (_else8114581160_)))))
              (if (##pair? _g8114281152_)
                  (let ((_tl8115081179_ (##cdr _g8114281152_))
                        (_hd8114981177_ (##car _g8114281152_)))
                    (let ((_hd81182_ _hd8114981177_)
                          (_rest81184_ _tl8115081179_))
                      (_K8114881174_ _rest81184_ _hd81182_)))
                  (_try-match8114481168_)))))))
    (define gx#genident__%
      (lambda (_e81118_ _src81119_)
        (gx#stx-wrap-source
         (gensym (let ((_e81121_ (gx#stx-e _e81118_)))
                   (if (interned-symbol? _e81121_) _e81121_ 'g)))
         (let ((_$e81123_ (gx#stx-source _e81118_)))
           (if _$e81123_ _$e81123_ _src81119_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e81130_ 'g) (_src81132_ '#f))
          (gx#genident__% _e81130_ _src81132_))))
    (define gx#genident__1
      (lambda (_e81134_)
        (let ((_src81136_ '#f)) (gx#genident__% _e81134_ _src81136_))))
    (define gx#genident
      (lambda _g81553_
        (let ((_g81552_ (##length _g81553_)))
          (cond ((##fx= _g81552_ 0)
                 (apply (lambda () (gx#genident__0)) _g81553_))
                ((##fx= _g81552_ 1)
                 (apply (lambda (_e81134_) (gx#genident__1 _e81134_))
                        _g81553_))
                ((##fx= _g81552_ 2)
                 (apply (lambda (_e81138_ _src81139_)
                          (gx#genident__% _e81138_ _src81139_))
                        _g81553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81553_))))))
    (define gx#gentemps
      (lambda (_stx-lst81115_) (gx#stx-map1 gx#genident _stx-lst81115_)))
    (define gx#syntax->list
      (lambda (_stx81113_) (gx#stx-map1 values _stx81113_)))
    (define gx#stx-car
      (lambda (_stx81110_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx81110_)))))
    (define gx#stx-cdr
      (lambda (_stx81107_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx81107_)))))
    (define gx#stx-length
      (lambda (_stx81072_)
        (let _lp81074_ ((_rest81076_ _stx81072_) (_n81077_ '0))
          (let* ((_g8107881086_ (gx#stx-e _rest81076_))
                 (_else8108081094_ (lambda () _n81077_))
                 (_K8108281099_
                  (lambda (_rest81097_)
                    (_lp81074_ _rest81097_ (fx+ _n81077_ '1)))))
            (if (##pair? _g8107881086_)
                (let* ((_tl8108481102_ (##cdr _g8107881086_))
                       (_rest81105_ _tl8108481102_))
                  (_K8108281099_ _rest81105_))
                (_else8108081094_))))))
    (define gx#stx-for-each
      (lambda _g81555_
        (let ((_g81554_ (##length _g81555_)))
          (cond ((##fx= _g81554_ 2)
                 (apply (lambda (_f81065_ _stx81066_)
                          (gx#stx-for-each1 _f81065_ _stx81066_))
                        _g81555_))
                ((##fx= _g81554_ 3)
                 (apply (lambda (_f81068_ _xstx81069_ _ystx81070_)
                          (gx#stx-for-each2 _f81068_ _xstx81069_ _ystx81070_))
                        _g81555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81555_))))))
    (define gx#stx-for-each1
      (lambda (_f81015_ _stx81016_)
        (if (procedure? _f81015_)
            '#!void
            (error '"expected procedure" _f81015_))
        (let _lp81018_ ((_rest81020_ _stx81016_))
          (let* ((_g8102181031_ (gx#syntax-e _rest81020_))
                 (_else8102481039_ (lambda () (_f81015_ _rest81020_))))
            (let ((_K8102781053_
                   (lambda (_rest81050_ _hd81051_)
                     (_f81015_ _hd81051_)
                     (_lp81018_ _rest81050_)))
                  (_K8102681044_ (lambda () '#!void)))
              (let ((_try-match8102381047_
                     (lambda ()
                       (if (##null? _g8102181031_)
                           (_K8102681044_)
                           (_else8102481039_)))))
                (if (##pair? _g8102181031_)
                    (let ((_tl8102981058_ (##cdr _g8102181031_))
                          (_hd8102881056_ (##car _g8102181031_)))
                      (let ((_hd81061_ _hd8102881056_)
                            (_rest81063_ _tl8102981058_))
                        (_K8102781053_ _rest81063_ _hd81061_)))
                    (_try-match8102381047_))))))))
    (define gx#stx-for-each2
      (lambda (_f80920_ _xstx80921_ _ystx80922_)
        (if (procedure? _f80920_)
            '#!void
            (error '"expected procedure" _f80920_))
        (let _lp80924_ ((_xrest80926_ _xstx80921_) (_yrest80927_ _ystx80922_))
          (let* ((_g8092880938_ (gx#syntax-e _xrest80926_))
                 (_else8093180946_ (lambda () '#!void)))
            (let ((_K8093481003_
                   (lambda (_xrest80972_ _xhd80973_)
                     (let* ((_g8097480981_ (gx#syntax-e _yrest80927_))
                            (_E8097680985_
                             (lambda ()
                               (error '"No clause matching" _g8097480981_)))
                            (_K8097780991_
                             (lambda (_yrest80988_ _yhd80989_)
                               (_f80920_ _xhd80973_ _yhd80989_)
                               (_lp80924_ _xrest80972_ _yrest80988_))))
                       (if (##pair? _g8097480981_)
                           (let ((_hd8097880994_ (##car _g8097480981_))
                                 (_tl8097980996_ (##cdr _g8097480981_)))
                             (let* ((_yhd80999_ _hd8097880994_)
                                    (_yrest81001_ _tl8097980996_))
                               (_K8097780991_ _yrest81001_ _yhd80999_)))
                           (_E8097680985_)))))
                  (_K8093380966_
                   (lambda ()
                     (let* ((_yrest8095080955_ _yrest80927_)
                            (_E8095280959_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8095080955_)))
                            (_K8095380963_
                             (lambda () (_f80920_ _xrest80926_ _yrest80927_))))
                       (if (not (gx#stx-null? _yrest8095080955_))
                           (_K8095380963_)
                           (_E8095280959_))))))
              (let ((_try-match8093080969_
                     (lambda ()
                       (if (not (null? _g8092880938_))
                           (_K8093380966_)
                           (_else8093180946_)))))
                (if (##pair? _g8092880938_)
                    (let ((_tl8093681008_ (##cdr _g8092880938_))
                          (_hd8093581006_ (##car _g8092880938_)))
                      (let ((_xhd81011_ _hd8093581006_)
                            (_xrest81013_ _tl8093681008_))
                        (_K8093481003_ _xrest81013_ _xhd81011_)))
                    (_try-match8093080969_))))))))
    (define gx#stx-map
      (lambda _g81557_
        (let ((_g81556_ (##length _g81557_)))
          (cond ((##fx= _g81556_ 2)
                 (apply (lambda (_f80913_ _stx80914_)
                          (gx#stx-map1 _f80913_ _stx80914_))
                        _g81557_))
                ((##fx= _g81556_ 3)
                 (apply (lambda (_f80916_ _xstx80917_ _ystx80918_)
                          (gx#stx-map2 _f80916_ _xstx80917_ _ystx80918_))
                        _g81557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81557_))))))
    (define gx#stx-map1
      (lambda (_f80863_ _stx80864_)
        (if (procedure? _f80863_)
            '#!void
            (error '"expected procedure" _f80863_))
        (let _recur80866_ ((_rest80868_ _stx80864_))
          (let* ((_g8086980879_ (gx#syntax-e _rest80868_))
                 (_else8087280887_ (lambda () (_f80863_ _rest80868_))))
            (let ((_K8087580901_
                   (lambda (_rest80898_ _hd80899_)
                     (cons (_f80863_ _hd80899_) (_recur80866_ _rest80898_))))
                  (_K8087480892_ (lambda () '())))
              (let ((_try-match8087180895_
                     (lambda ()
                       (if (##null? _g8086980879_)
                           (_K8087480892_)
                           (_else8087280887_)))))
                (if (##pair? _g8086980879_)
                    (let ((_tl8087780906_ (##cdr _g8086980879_))
                          (_hd8087680904_ (##car _g8086980879_)))
                      (let ((_hd80909_ _hd8087680904_)
                            (_rest80911_ _tl8087780906_))
                        (_K8087580901_ _rest80911_ _hd80909_)))
                    (_try-match8087180895_))))))))
    (define gx#stx-map2
      (lambda (_f80768_ _xstx80769_ _ystx80770_)
        (if (procedure? _f80768_)
            '#!void
            (error '"expected procedure" _f80768_))
        (let _recur80772_ ((_xrest80774_ _xstx80769_)
                           (_yrest80775_ _ystx80770_))
          (let* ((_g8077680786_ (gx#syntax-e _xrest80774_))
                 (_else8077980794_ (lambda () '())))
            (let ((_K8078280851_
                   (lambda (_xrest80820_ _xhd80821_)
                     (let* ((_g8082280829_ (gx#syntax-e _yrest80775_))
                            (_E8082480833_
                             (lambda ()
                               (error '"No clause matching" _g8082280829_)))
                            (_K8082580839_
                             (lambda (_yrest80836_ _yhd80837_)
                               (cons (_f80768_ _xhd80821_ _yhd80837_)
                                     (_recur80772_
                                      _xrest80820_
                                      _yrest80836_)))))
                       (if (##pair? _g8082280829_)
                           (let ((_hd8082680842_ (##car _g8082280829_))
                                 (_tl8082780844_ (##cdr _g8082280829_)))
                             (let* ((_yhd80847_ _hd8082680842_)
                                    (_yrest80849_ _tl8082780844_))
                               (_K8082580839_ _yrest80849_ _yhd80847_)))
                           (_E8082480833_)))))
                  (_K8078180814_
                   (lambda ()
                     (let* ((_yrest8079880803_ _yrest80775_)
                            (_E8080080807_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8079880803_)))
                            (_K8080180811_
                             (lambda () (_f80768_ _xrest80774_ _yrest80775_))))
                       (if (not (gx#stx-null? _yrest8079880803_))
                           (_K8080180811_)
                           (_E8080080807_))))))
              (let ((_try-match8077880817_
                     (lambda ()
                       (if (not (null? _g8077680786_))
                           (_K8078180814_)
                           (_else8077980794_)))))
                (if (##pair? _g8077680786_)
                    (let ((_tl8078480856_ (##cdr _g8077680786_))
                          (_hd8078380854_ (##car _g8077680786_)))
                      (let ((_xhd80859_ _hd8078380854_)
                            (_xrest80861_ _tl8078480856_))
                        (_K8078280851_ _xrest80861_ _xhd80859_)))
                    (_try-match8077880817_))))))))
    (define gx#stx-andmap
      (lambda (_f80718_ _stx80719_)
        (if (procedure? _f80718_)
            '#!void
            (error '"expected procedure" _f80718_))
        (let _lp80721_ ((_rest80723_ _stx80719_))
          (let* ((_g8072480734_ (gx#syntax-e _rest80723_))
                 (_else8072780742_ (lambda () (_f80718_ _rest80723_))))
            (let ((_K8073080756_
                   (lambda (_rest80753_ _hd80754_)
                     (if (_f80718_ _hd80754_) (_lp80721_ _rest80753_) '#f)))
                  (_K8072980747_ (lambda () '#t)))
              (let ((_try-match8072680750_
                     (lambda ()
                       (if (##null? _g8072480734_)
                           (_K8072980747_)
                           (_else8072780742_)))))
                (if (##pair? _g8072480734_)
                    (let ((_tl8073280761_ (##cdr _g8072480734_))
                          (_hd8073180759_ (##car _g8072480734_)))
                      (let ((_hd80764_ _hd8073180759_)
                            (_rest80766_ _tl8073280761_))
                        (_K8073080756_ _rest80766_ _hd80764_)))
                    (_try-match8072680750_))))))))
    (define gx#stx-ormap
      (lambda (_f80665_ _stx80666_)
        (if (procedure? _f80665_)
            '#!void
            (error '"expected procedure" _f80665_))
        (let _lp80668_ ((_rest80670_ _stx80666_))
          (let* ((_g8067180681_ (gx#syntax-e _rest80670_))
                 (_else8067480689_ (lambda () (_f80665_ _rest80670_))))
            (let ((_K8067780706_
                   (lambda (_rest80700_ _hd80701_)
                     (let ((_$e80703_ (_f80665_ _hd80701_)))
                       (if _$e80703_ _$e80703_ (_lp80668_ _rest80700_)))))
                  (_K8067680694_ (lambda () '#f)))
              (let ((_try-match8067380697_
                     (lambda ()
                       (if (##null? _g8067180681_)
                           (_K8067680694_)
                           (_else8067480689_)))))
                (if (##pair? _g8067180681_)
                    (let ((_tl8067980711_ (##cdr _g8067180681_))
                          (_hd8067880709_ (##car _g8067180681_)))
                      (let ((_hd80714_ _hd8067880709_)
                            (_rest80716_ _tl8067980711_))
                        (_K8067780706_ _rest80716_ _hd80714_)))
                    (_try-match8067380697_))))))))
    (define gx#stx-foldl
      (lambda (_f80613_ _iv80614_ _stx80615_)
        (if (procedure? _f80613_)
            '#!void
            (error '"expected procedure" _f80613_))
        (let _lp80617_ ((_r80619_ _iv80614_) (_rest80620_ _stx80615_))
          (let* ((_g8062180631_ (gx#syntax-e _rest80620_))
                 (_else8062480639_
                  (lambda () (_f80613_ _rest80620_ _r80619_))))
            (let ((_K8062780653_
                   (lambda (_rest80650_ _hd80651_)
                     (_lp80617_ (_f80613_ _hd80651_ _r80619_) _rest80650_)))
                  (_K8062680644_ (lambda () _r80619_)))
              (let ((_try-match8062380647_
                     (lambda ()
                       (if (##null? _g8062180631_)
                           (_K8062680644_)
                           (_else8062480639_)))))
                (if (##pair? _g8062180631_)
                    (let ((_tl8062980658_ (##cdr _g8062180631_))
                          (_hd8062880656_ (##car _g8062180631_)))
                      (let ((_hd80661_ _hd8062880656_)
                            (_rest80663_ _tl8062980658_))
                        (_K8062780653_ _rest80663_ _hd80661_)))
                    (_try-match8062380647_))))))))
    (define gx#stx-foldr
      (lambda (_f80562_ _iv80563_ _stx80564_)
        (if (procedure? _f80562_)
            '#!void
            (error '"expected procedure" _f80562_))
        (let _recur80566_ ((_rest80568_ _stx80564_))
          (let* ((_g8056980579_ (gx#syntax-e _rest80568_))
                 (_else8057280587_
                  (lambda () (_f80562_ _rest80568_ _iv80563_))))
            (let ((_K8057580601_
                   (lambda (_rest80598_ _hd80599_)
                     (_f80562_ _hd80599_ (_recur80566_ _rest80598_))))
                  (_K8057480592_ (lambda () _iv80563_)))
              (let ((_try-match8057180595_
                     (lambda ()
                       (if (##null? _g8056980579_)
                           (_K8057480592_)
                           (_else8057280587_)))))
                (if (##pair? _g8056980579_)
                    (let ((_tl8057780606_ (##cdr _g8056980579_))
                          (_hd8057680604_ (##car _g8056980579_)))
                      (let ((_hd80609_ _hd8057680604_)
                            (_rest80611_ _tl8057780606_))
                        (_K8057580601_ _rest80611_ _hd80609_)))
                    (_try-match8057180595_))))))))
    (define gx#stx-reverse
      (lambda (_stx80560_) (gx#stx-foldl cons '() _stx80560_)))
    (define gx#stx-last
      (lambda (_stx80521_)
        (let _lp80523_ ((_rest80525_ _stx80521_))
          (let* ((_g8052680534_ (gx#syntax-e _rest80525_))
                 (_else8052880542_ (lambda () _rest80525_))
                 (_K8053080548_
                  (lambda (_rest80545_ _hd80546_)
                    (if (gx#stx-null? _rest80545_)
                        _hd80546_
                        (_lp80523_ _rest80545_)))))
            (if (##pair? _g8052680534_)
                (let ((_hd8053180551_ (##car _g8052680534_))
                      (_tl8053280553_ (##cdr _g8052680534_)))
                  (let* ((_hd80556_ _hd8053180551_)
                         (_rest80558_ _tl8053280553_))
                    (_K8053080548_ _rest80558_ _hd80556_)))
                (_else8052880542_))))))
    (define gx#stx-last-pair
      (lambda (_stx80492_)
        (let _lp80494_ ((_hd80496_ _stx80492_))
          (let* ((_g8049780504_ (gx#syntax-e _hd80496_))
                 (_E8049980508_
                  (lambda () (error '"No clause matching" _g8049780504_)))
                 (_K8050080513_
                  (lambda (_rest80511_)
                    (if (gx#stx-pair? _rest80511_)
                        (_lp80494_ _rest80511_)
                        _hd80496_))))
            (if (##pair? _g8049780504_)
                (let* ((_tl8050280516_ (##cdr _g8049780504_))
                       (_rest80519_ _tl8050280516_))
                  (_K8050080513_ _rest80519_))
                (_E8049980508_))))))
    (define gx#stx-list-tail
      (lambda (_stx80461_ _k80462_)
        (let _lp80464_ ((_rest80466_ _stx80461_) (_k80467_ _k80462_))
          (if (fxpositive? _k80467_)
              (let* ((_g8046880475_ (gx#syntax-e _rest80466_))
                     (_E8047080479_
                      (lambda () (error '"No clause matching" _g8046880475_)))
                     (_K8047180484_
                      (lambda (_rest80482_)
                        (_lp80464_ _rest80482_ (fx- _k80467_ '1)))))
                (if (##pair? _g8046880475_)
                    (let* ((_tl8047380487_ (##cdr _g8046880475_))
                           (_rest80490_ _tl8047380487_))
                      (_K8047180484_ _rest80490_))
                    (_E8047080479_)))
              _rest80466_))))
    (define gx#stx-list-ref
      (lambda (_stx80458_ _k80459_)
        (gx#stx-car (gx#stx-list-tail _stx80458_ _k80459_))))
    (define gx#stx-plist?__%
      (lambda (_stx80370_ _key?80371_)
        (if (procedure? _key?80371_)
            '#!void
            (error '"expected procedure" _key?80371_))
        (let _lp80373_ ((_rest80375_ _stx80370_))
          (let* ((_g8037680386_ (gx#stx-e _rest80375_))
                 (_else8037980394_ (lambda () '#f)))
            (let ((_K8038280436_
                   (lambda (_rest80405_ _hd80406_)
                     (if (_key?80371_ _hd80406_)
                         (let* ((_g8040780415_ (gx#stx-e _rest80405_))
                                (_else8040980423_ (lambda () '#f))
                                (_K8041180428_
                                 (lambda (_rest80426_)
                                   (_lp80373_ _rest80426_))))
                           (if (##pair? _g8040780415_)
                               (let* ((_tl8041380431_ (##cdr _g8040780415_))
                                      (_rest80434_ _tl8041380431_))
                                 (_lp80373_ _rest80434_))
                               (_else8040980423_)))
                         '#f)))
                  (_K8038180399_ (lambda () '#t)))
              (let ((_try-match8037880402_
                     (lambda ()
                       (if (##null? _g8037680386_)
                           (_K8038180399_)
                           (_else8037980394_)))))
                (if (##pair? _g8037680386_)
                    (let ((_tl8038480441_ (##cdr _g8037680386_))
                          (_hd8038380439_ (##car _g8037680386_)))
                      (let ((_hd80444_ _hd8038380439_)
                            (_rest80446_ _tl8038480441_))
                        (_K8038280436_ _rest80446_ _hd80444_)))
                    (_try-match8037880402_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80451_)
        (let ((_key?80453_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80451_ _key?80453_))))
    (define gx#stx-plist?
      (lambda _g81559_
        (let ((_g81558_ (##length _g81559_)))
          (cond ((##fx= _g81558_ 1)
                 (apply (lambda (_stx80451_) (gx#stx-plist?__0 _stx80451_))
                        _g81559_))
                ((##fx= _g81558_ 2)
                 (apply (lambda (_stx80455_ _key?80456_)
                          (gx#stx-plist?__% _stx80455_ _key?80456_))
                        _g81559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81559_))))))
    (define gx#stx-getq__%
      (lambda (_key80288_ _stx80289_ _key=?80290_)
        (if (procedure? _key=?80290_)
            '#!void
            (error '"expected procedure" _key=?80290_))
        (let _lp80292_ ((_rest80294_ _stx80289_))
          (let* ((_g8029580303_ (gx#syntax-e _rest80294_))
                 (_else8029780311_ (lambda () '#f))
                 (_K8029980345_
                  (lambda (_rest80314_ _hd80315_)
                    (let* ((_g8031680323_ (gx#syntax-e _rest80314_))
                           (_E8031880327_
                            (lambda ()
                              (error '"No clause matching" _g8031680323_)))
                           (_K8031980333_
                            (lambda (_rest80330_ _val80331_)
                              (if (_key=?80290_ _hd80315_ _key80288_)
                                  _val80331_
                                  (_lp80292_ _rest80330_)))))
                      (if (##pair? _g8031680323_)
                          (let ((_hd8032080336_ (##car _g8031680323_))
                                (_tl8032180338_ (##cdr _g8031680323_)))
                            (let* ((_val80341_ _hd8032080336_)
                                   (_rest80343_ _tl8032180338_))
                              (_K8031980333_ _rest80343_ _val80341_)))
                          (_E8031880327_))))))
            (if (##pair? _g8029580303_)
                (let ((_hd8030080348_ (##car _g8029580303_))
                      (_tl8030180350_ (##cdr _g8029580303_)))
                  (let* ((_hd80353_ _hd8030080348_)
                         (_rest80355_ _tl8030180350_))
                    (_K8029980345_ _rest80355_ _hd80353_)))
                (_else8029780311_))))))
    (define gx#stx-getq__0
      (lambda (_key80360_ _stx80361_)
        (let ((_key=?80363_ gx#stx-eq?))
          (gx#stx-getq__% _key80360_ _stx80361_ _key=?80363_))))
    (define gx#stx-getq
      (lambda _g81561_
        (let ((_g81560_ (##length _g81561_)))
          (cond ((##fx= _g81560_ 2)
                 (apply (lambda (_key80360_ _stx80361_)
                          (gx#stx-getq__0 _key80360_ _stx80361_))
                        _g81561_))
                ((##fx= _g81560_ 3)
                 (apply (lambda (_key80365_ _stx80366_ _key=?80367_)
                          (gx#stx-getq__% _key80365_ _stx80366_ _key=?80367_))
                        _g81561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81561_))))))))
