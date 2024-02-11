(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707660401)
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
      (lambda _$args135347_
        (apply make-instance gx#identifier-wrap::t _$args135347_)))
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
      (lambda _$args135344_
        (apply make-instance gx#syntax-wrap::t _$args135344_)))
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
      (lambda _$args135341_
        (apply make-instance gx#syntax-quote::t _$args135341_)))
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
      (lambda (_stx135339_) (symbol? (gx#stx-e _stx135339_))))
    (define gx#identifier-quote?
      (lambda (_stx135337_)
        (if (##structure-direct-instance-of? _stx135337_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135337_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135335_)
        (if (##structure-direct-instance-of? _stx135335_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135335_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135335_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135333_)
        (if (##structure-direct-instance-of? _stx135333_ 'gx#syntax-quote::t)
            _stx135333_
            (if (##structure-direct-instance-of?
                 _stx135333_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135333_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135316_)
        (if (##structure-direct-instance-of? _stx135316_ 'gx#syntax-wrap::t)
            (let _lp135318_ ((_e135320_
                              (##unchecked-structure-ref
                               _stx135316_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135321_
                              (cons (##unchecked-structure-ref
                                     _stx135316_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135320_)
                  (let ((_$e135323_ (##type-id (##structure-type _e135320_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135323_)
                        (_lp135318_
                         (##unchecked-structure-ref _e135320_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135320_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135321_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135323_)
                                (eq? 'gx#identifier-wrap::t _$e135323_))
                            (##unchecked-structure-ref
                             _e135320_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135323_)
                                (_lp135318_
                                 (##unchecked-structure-ref
                                  _e135320_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135321_)
                                _e135320_))))
                  (if (null? _marks135321_)
                      _e135320_
                      (if (pair? _e135320_)
                          (cons (gx#stx-wrap (car _e135320_) _marks135321_)
                                (gx#stx-wrap (cdr _e135320_) _marks135321_))
                          (if (vector? _e135320_)
                              (vector-map
                               (lambda (_g135328135330_)
                                 (gx#stx-wrap _g135328135330_ _marks135321_))
                               _e135320_)
                              (if (box? _e135320_)
                                  (box (gx#stx-wrap
                                        (unbox _e135320_)
                                        _marks135321_))
                                  _e135320_))))))
            (if (##structure-instance-of? _stx135316_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135316_ '1 gx#AST::t '#f)
                _stx135316_))))
    (define gx#syntax->datum
      (lambda (_stx135314_)
        (if (##structure-instance-of? _stx135314_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135314_ '1 gx#AST::t '#f))
            (if (pair? _stx135314_)
                (cons (gx#syntax->datum (car _stx135314_))
                      (gx#syntax->datum (cdr _stx135314_)))
                (if (vector? _stx135314_)
                    (vector-map gx#syntax->datum _stx135314_)
                    (if (box? _stx135314_)
                        (box (gx#syntax->datum (unbox _stx135314_)))
                        _stx135314_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135257_ _datum135258_ _src135259_ _quote?135260_)
        (letrec ((_wrap-datum135262_
                  (lambda (_e135286_ _marks135287_)
                    (_wrap-inner135264_
                     _e135286_
                     (lambda (_g135288135290_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135288135290_
                        _src135259_
                        _marks135287_)))))
                 (_wrap-quote135263_
                  (lambda (_e135278_ _ctx135279_ _marks135280_)
                    (_wrap-inner135264_
                     _e135278_
                     (lambda (_g135281135283_)
                       (##structure
                        gx#syntax-quote::t
                        _g135281135283_
                        _src135259_
                        _ctx135279_
                        _marks135280_)))))
                 (_wrap-inner135264_
                  (lambda (_e135271_ _wrap-e135272_)
                    (let _recur135274_ ((_e135276_ _e135271_))
                      (if (symbol? _e135276_)
                          (_wrap-e135272_ _e135276_)
                          (if (pair? _e135276_)
                              (cons (_recur135274_ (car _e135276_))
                                    (_recur135274_ (cdr _e135276_)))
                              (if (vector? _e135276_)
                                  (vector-map _recur135274_ _e135276_)
                                  (if (box? _e135276_)
                                      (box (_recur135274_ (unbox _e135276_)))
                                      _e135276_)))))))
                 (_wrap-outer135265_
                  (lambda (_e135269_)
                    (if (##structure-instance-of? _e135269_ 'gerbil#AST::t)
                        _e135269_
                        (##structure gx#AST::t _e135269_ _src135259_)))))
          (if (##structure-instance-of? _datum135258_ 'gerbil#AST::t)
              _datum135258_
              (if (not _stx135257_)
                  (##structure gx#AST::t _datum135258_ _src135259_)
                  (if (gx#identifier? _stx135257_)
                      (let ((_stx135267_ (gx#stx-unwrap__0 _stx135257_)))
                        (_wrap-outer135265_
                         (if (##structure-direct-instance-of?
                              _stx135267_
                              'gx#syntax-quote::t)
                             (if _quote?135260_
                                 (_wrap-quote135263_
                                  _datum135258_
                                  (##unchecked-structure-ref
                                   _stx135267_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135267_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135262_
                                  _datum135258_
                                  (##unchecked-structure-ref
                                   _stx135267_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135262_
                              _datum135258_
                              (##unchecked-structure-ref
                               _stx135267_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135257_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135296_ _datum135297_)
        (let* ((_src135299_ '#f) (_quote?135301_ '#t))
          (gx#datum->syntax__%
           _stx135296_
           _datum135297_
           _src135299_
           _quote?135301_))))
    (define gx#datum->syntax__1
      (lambda (_stx135303_ _datum135304_ _src135305_)
        (let ((_quote?135307_ '#t))
          (gx#datum->syntax__%
           _stx135303_
           _datum135304_
           _src135305_
           _quote?135307_))))
    (define gx#datum->syntax
      (lambda _g139896_
        (let ((_g139895_ (##length _g139896_)))
          (cond ((##fx= _g139895_ 2)
                 (apply (lambda (_stx135296_ _datum135297_)
                          (gx#datum->syntax__0 _stx135296_ _datum135297_))
                        _g139896_))
                ((##fx= _g139895_ 3)
                 (apply (lambda (_stx135303_ _datum135304_ _src135305_)
                          (gx#datum->syntax__1
                           _stx135303_
                           _datum135304_
                           _src135305_))
                        _g139896_))
                ((##fx= _g139895_ 4)
                 (apply (lambda (_stx135309_
                                 _datum135310_
                                 _src135311_
                                 _quote?135312_)
                          (gx#datum->syntax__%
                           _stx135309_
                           _datum135310_
                           _src135311_
                           _quote?135312_))
                        _g139896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g139896_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135233_ _marks135234_)
        (let _lp135236_ ((_e135238_ _stx135233_)
                         (_marks135239_ _marks135234_)
                         (_src135240_ (gx#stx-source _stx135233_)))
          (if (##structure-direct-instance-of? _e135238_ 'gx#syntax-wrap::t)
              (_lp135236_
               (##unchecked-structure-ref _e135238_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135238_ '3 gx#syntax-wrap::t '#f)
                _marks135239_)
               (##unchecked-structure-ref _e135238_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135238_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135239_)
                      _e135238_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135238_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135238_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135238_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135239_)))
                  (if (##structure-direct-instance-of?
                       _e135238_
                       'gx#syntax-quote::t)
                      _e135238_
                      (if (##structure-instance-of? _e135238_ 'gerbil#AST::t)
                          (_lp135236_
                           (##unchecked-structure-ref
                            _e135238_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135239_
                           (##unchecked-structure-ref
                            _e135238_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135238_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135238_
                               _src135240_
                               (reverse _marks135239_))
                              (if (null? _marks135239_)
                                  _e135238_
                                  (if (pair? _e135238_)
                                      (cons (gx#stx-wrap
                                             (car _e135238_)
                                             _marks135239_)
                                            (gx#stx-wrap
                                             (cdr _e135238_)
                                             _marks135239_))
                                      (if (vector? _e135238_)
                                          (vector-map
                                           (lambda (_g135241135243_)
                                             (gx#stx-wrap
                                              _g135241135243_
                                              _marks135239_))
                                           _e135238_)
                                          (if (box? _e135238_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135238_)
                                                    _marks135239_))
                                              _e135238_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135249_)
        (let ((_marks135251_ '()))
          (gx#stx-unwrap__% _stx135249_ _marks135251_))))
    (define gx#stx-unwrap
      (lambda _g139898_
        (let ((_g139897_ (##length _g139898_)))
          (cond ((##fx= _g139897_ 1)
                 (apply (lambda (_stx135249_) (gx#stx-unwrap__0 _stx135249_))
                        _g139898_))
                ((##fx= _g139897_ 2)
                 (apply (lambda (_stx135253_ _marks135254_)
                          (gx#stx-unwrap__% _stx135253_ _marks135254_))
                        _g139898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g139898_))))))
    (define gx#stx-wrap
      (lambda (_stx135226_ _marks135227_)
        (foldl1 (lambda (_mark135229_ _stx135230_)
                  (gx#stx-apply-mark _stx135230_ _mark135229_))
                _stx135226_
                _marks135227_)))
    (define gx#stx-rewrap
      (lambda (_stx135220_ _marks135221_)
        (foldr1 (lambda (_mark135223_ _stx135224_)
                  (gx#stx-apply-mark _stx135224_ _mark135223_))
                _stx135220_
                _marks135221_)))
    (define gx#stx-apply-mark
      (lambda (_stx135217_ _mark135218_)
        (if (##structure-direct-instance-of? _stx135217_ 'gx#syntax-quote::t)
            _stx135217_
            (if (and (##structure-direct-instance-of?
                      _stx135217_
                      'gx#syntax-wrap::t)
                     (eq? _mark135218_
                          (##unchecked-structure-ref
                           _stx135217_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135217_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135217_
                 (gx#stx-source _stx135217_)
                 _mark135218_)))))
    (define gx#apply-mark
      (lambda (_mark135181_ _marks135182_)
        (let* ((_marks135183135191_ _marks135182_)
               (_else135185135199_
                (lambda () (cons _mark135181_ _marks135182_)))
               (_K135187135205_
                (lambda (_rest135202_ _hd135203_)
                  (if (eq? _mark135181_ _hd135203_)
                      _rest135202_
                      (cons _mark135181_ _marks135182_)))))
          (if (##pair? _marks135183135191_)
              (let ((_hd135188135208_ (##car _marks135183135191_))
                    (_tl135189135210_ (##cdr _marks135183135191_)))
                (let* ((_hd135213_ _hd135188135208_)
                       (_rest135215_ _tl135189135210_))
                  (_K135187135205_ _rest135215_ _hd135213_)))
              (_else135185135199_)))))
    (define gx#stx-e
      (lambda (_stx135179_)
        (if (##structure-direct-instance-of? _stx135179_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135179_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135179_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135179_ '1 gx#AST::t '#f)
                _stx135179_))))
    (define gx#stx-source
      (lambda (_stx135177_)
        (if (##structure-instance-of? _stx135177_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135177_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135171_ _src135172_)
        (if (or (##structure-instance-of? _stx135171_ 'gerbil#AST::t)
                (not _src135172_))
            _stx135171_
            (##structure gx#AST::t _stx135171_ _src135172_))))
    (define gx#stx-datum?
      (lambda (_stx135169_) (gx#self-quoting? (gx#stx-e _stx135169_))))
    (define gx#self-quoting?
      (lambda (_x135152_)
        (let ((_$e135154_ (immediate? _x135152_)))
          (if _$e135154_
              _$e135154_
              (let ((_$e135157_ (number? _x135152_)))
                (if _$e135157_
                    _$e135157_
                    (let ((_$e135160_ (keyword? _x135152_)))
                      (if _$e135160_
                          _$e135160_
                          (let ((_$e135163_ (string? _x135152_)))
                            (if _$e135163_
                                _$e135163_
                                (let ((_$e135166_ (vector? _x135152_)))
                                  (if _$e135166_
                                      _$e135166_
                                      (u8vector? _x135152_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135150_) (boolean? (gx#stx-e _e135150_))))
    (define gx#stx-keyword?
      (lambda (_e135148_) (keyword? (gx#stx-e _e135148_))))
    (define gx#stx-char? (lambda (_e135146_) (char? (gx#stx-e _e135146_))))
    (define gx#stx-number? (lambda (_e135144_) (number? (gx#stx-e _e135144_))))
    (define gx#stx-fixnum? (lambda (_e135142_) (fixnum? (gx#stx-e _e135142_))))
    (define gx#stx-string? (lambda (_e135140_) (string? (gx#stx-e _e135140_))))
    (define gx#stx-null? (lambda (_e135138_) (null? (gx#stx-e _e135138_))))
    (define gx#stx-pair? (lambda (_e135136_) (pair? (gx#stx-e _e135136_))))
    (define gx#stx-list?
      (lambda (_e135098_)
        (let* ((_g135099135108_ (gx#stx-e _e135098_))
               (_E135102135112_
                (lambda () (error '"No clause matching" _g135099135108_))))
          (let ((_K135104135128_
                 (lambda (_rest135126_) (gx#stx-list? _rest135126_)))
                (_K135103135118_ (lambda (_tail135116_) (null? _tail135116_))))
            (if (##pair? _g135099135108_)
                (let* ((_tl135106135131_ (##cdr _g135099135108_))
                       (_rest135134_ _tl135106135131_))
                  (gx#stx-list? _rest135134_))
                (let ((_tail135121_ _g135099135108_))
                  (null? _tail135121_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135091_)
        (let* ((_e135093_ (gx#stx-e _e135091_)) (_$e135095_ (pair? _e135093_)))
          (if _$e135095_ _$e135095_ (null? _e135093_)))))
    (define gx#stx-vector? (lambda (_e135089_) (vector? (gx#stx-e _e135089_))))
    (define gx#stx-box? (lambda (_e135087_) (box? (gx#stx-e _e135087_))))
    (define gx#stx-eq?
      (lambda (_x135084_ _y135085_)
        (eq? (gx#stx-e _x135084_) (gx#stx-e _y135085_))))
    (define gx#stx-eqv?
      (lambda (_x135081_ _y135082_)
        (eqv? (gx#stx-e _x135081_) (gx#stx-e _y135082_))))
    (define gx#stx-equal?
      (lambda (_x135078_ _y135079_)
        (equal? (gx#stx-e _x135078_) (gx#stx-e _y135079_))))
    (define gx#stx-false? (lambda (_x135076_) (not (gx#stx-e _x135076_))))
    (define gx#stx-identifier
      (lambda (_template135073_ . _args135074_)
        (gx#datum->syntax__1
         _template135073_
         (apply make-symbol (gx#syntax->datum _args135074_))
         (gx#stx-source _template135073_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135071_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135071_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135069_)
        (if (##structure-direct-instance-of?
             _stx135069_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135069_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135069_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135069_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135069_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135065_)
        (let ((_stx135067_ (gx#stx-unwrap__0 _stx135065_)))
          (if (gx#identifier-quote? _stx135067_)
              (##unchecked-structure-ref _stx135067_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135020_)
        (let* ((_g135021135031_ (gx#stx-e _stx135020_))
               (_else135024135039_ (lambda () '#f)))
          (let ((_K135027135053_
                 (lambda (_rest135050_ _hd135051_)
                   (if (gx#identifier? _hd135051_)
                       (gx#identifier-list? _rest135050_)
                       '#f)))
                (_K135026135044_ (lambda () '#t)))
            (let ((_try-match135023135047_
                   (lambda ()
                     (if (##null? _g135021135031_)
                         (_K135026135044_)
                         (_else135024135039_)))))
              (if (##pair? _g135021135031_)
                  (let ((_tl135029135058_ (##cdr _g135021135031_))
                        (_hd135028135056_ (##car _g135021135031_)))
                    (let ((_hd135061_ _hd135028135056_)
                          (_rest135063_ _tl135029135058_))
                      (_K135027135053_ _rest135063_ _hd135061_)))
                  (_try-match135023135047_)))))))
    (define gx#genident__%
      (lambda (_e134997_ _src134998_)
        (gx#stx-wrap-source
         (gensym (let ((_e135000_ (gx#stx-e _e134997_)))
                   (if (interned-symbol? _e135000_) _e135000_ 'g)))
         (let ((_$e135002_ (gx#stx-source _e134997_)))
           (if _$e135002_ _$e135002_ _src134998_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135009_ 'g) (_src135011_ '#f))
          (gx#genident__% _e135009_ _src135011_))))
    (define gx#genident__1
      (lambda (_e135013_)
        (let ((_src135015_ '#f)) (gx#genident__% _e135013_ _src135015_))))
    (define gx#genident
      (lambda _g139900_
        (let ((_g139899_ (##length _g139900_)))
          (cond ((##fx= _g139899_ 0)
                 (apply (lambda () (gx#genident__0)) _g139900_))
                ((##fx= _g139899_ 1)
                 (apply (lambda (_e135013_) (gx#genident__1 _e135013_))
                        _g139900_))
                ((##fx= _g139899_ 2)
                 (apply (lambda (_e135017_ _src135018_)
                          (gx#genident__% _e135017_ _src135018_))
                        _g139900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g139900_))))))
    (define gx#gentemps
      (lambda (_stx-lst134994_) (gx#stx-map1 gx#genident _stx-lst134994_)))
    (define gx#syntax->list
      (lambda (_stx134992_) (gx#stx-map1 values _stx134992_)))
    (define gx#stx-car
      (lambda (_stx134989_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx134989_)))))
    (define gx#stx-cdr
      (lambda (_stx134986_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx134986_)))))
    (define gx#stx-length
      (lambda (_stx134951_)
        (let _lp134953_ ((_rest134955_ _stx134951_) (_n134956_ '0))
          (let* ((_g134957134965_ (gx#stx-e _rest134955_))
                 (_else134959134973_ (lambda () _n134956_))
                 (_K134961134978_
                  (lambda (_rest134976_)
                    (_lp134953_ _rest134976_ (fx+ _n134956_ '1)))))
            (if (##pair? _g134957134965_)
                (let* ((_tl134963134981_ (##cdr _g134957134965_))
                       (_rest134984_ _tl134963134981_))
                  (_K134961134978_ _rest134984_))
                (_else134959134973_))))))
    (define gx#stx-for-each
      (lambda _g139902_
        (let ((_g139901_ (##length _g139902_)))
          (cond ((##fx= _g139901_ 2)
                 (apply (lambda (_f134944_ _stx134945_)
                          (gx#stx-for-each1 _f134944_ _stx134945_))
                        _g139902_))
                ((##fx= _g139901_ 3)
                 (apply (lambda (_f134947_ _xstx134948_ _ystx134949_)
                          (gx#stx-for-each2
                           _f134947_
                           _xstx134948_
                           _ystx134949_))
                        _g139902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g139902_))))))
    (define gx#stx-for-each1
      (lambda (_f134894_ _stx134895_)
        (if (procedure? _f134894_)
            '#!void
            (error '"expected procedure" _f134894_))
        (let _lp134897_ ((_rest134899_ _stx134895_))
          (let* ((_g134900134910_ (gx#syntax-e _rest134899_))
                 (_else134903134918_ (lambda () (_f134894_ _rest134899_))))
            (let ((_K134906134932_
                   (lambda (_rest134929_ _hd134930_)
                     (_f134894_ _hd134930_)
                     (_lp134897_ _rest134929_)))
                  (_K134905134923_ (lambda () '#!void)))
              (let ((_try-match134902134926_
                     (lambda ()
                       (if (##null? _g134900134910_)
                           (_K134905134923_)
                           (_else134903134918_)))))
                (if (##pair? _g134900134910_)
                    (let ((_tl134908134937_ (##cdr _g134900134910_))
                          (_hd134907134935_ (##car _g134900134910_)))
                      (let ((_hd134940_ _hd134907134935_)
                            (_rest134942_ _tl134908134937_))
                        (_K134906134932_ _rest134942_ _hd134940_)))
                    (_try-match134902134926_))))))))
    (define gx#stx-for-each2
      (lambda (_f134799_ _xstx134800_ _ystx134801_)
        (if (procedure? _f134799_)
            '#!void
            (error '"expected procedure" _f134799_))
        (let _lp134803_ ((_xrest134805_ _xstx134800_)
                         (_yrest134806_ _ystx134801_))
          (let* ((_g134807134817_ (gx#syntax-e _xrest134805_))
                 (_else134810134825_ (lambda () '#!void)))
            (let ((_K134813134882_
                   (lambda (_xrest134851_ _xhd134852_)
                     (let* ((_g134853134860_ (gx#syntax-e _yrest134806_))
                            (_E134855134864_
                             (lambda ()
                               (error '"No clause matching" _g134853134860_)))
                            (_K134856134870_
                             (lambda (_yrest134867_ _yhd134868_)
                               (_f134799_ _xhd134852_ _yhd134868_)
                               (_lp134803_ _xrest134851_ _yrest134867_))))
                       (if (##pair? _g134853134860_)
                           (let ((_hd134857134873_ (##car _g134853134860_))
                                 (_tl134858134875_ (##cdr _g134853134860_)))
                             (let* ((_yhd134878_ _hd134857134873_)
                                    (_yrest134880_ _tl134858134875_))
                               (_K134856134870_ _yrest134880_ _yhd134878_)))
                           (_E134855134864_)))))
                  (_K134812134845_
                   (lambda ()
                     (let* ((_yrest134829134834_ _yrest134806_)
                            (_E134831134838_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134829134834_)))
                            (_K134832134842_
                             (lambda ()
                               (_f134799_ _xrest134805_ _yrest134806_))))
                       (if (not (gx#stx-null? _yrest134829134834_))
                           (_K134832134842_)
                           (_E134831134838_))))))
              (let ((_try-match134809134848_
                     (lambda ()
                       (if (not (null? _g134807134817_))
                           (_K134812134845_)
                           (_else134810134825_)))))
                (if (##pair? _g134807134817_)
                    (let ((_tl134815134887_ (##cdr _g134807134817_))
                          (_hd134814134885_ (##car _g134807134817_)))
                      (let ((_xhd134890_ _hd134814134885_)
                            (_xrest134892_ _tl134815134887_))
                        (_K134813134882_ _xrest134892_ _xhd134890_)))
                    (_try-match134809134848_))))))))
    (define gx#stx-map
      (lambda _g139904_
        (let ((_g139903_ (##length _g139904_)))
          (cond ((##fx= _g139903_ 2)
                 (apply (lambda (_f134792_ _stx134793_)
                          (gx#stx-map1 _f134792_ _stx134793_))
                        _g139904_))
                ((##fx= _g139903_ 3)
                 (apply (lambda (_f134795_ _xstx134796_ _ystx134797_)
                          (gx#stx-map2 _f134795_ _xstx134796_ _ystx134797_))
                        _g139904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g139904_))))))
    (define gx#stx-map1
      (lambda (_f134742_ _stx134743_)
        (if (procedure? _f134742_)
            '#!void
            (error '"expected procedure" _f134742_))
        (let _recur134745_ ((_rest134747_ _stx134743_))
          (let* ((_g134748134758_ (gx#syntax-e _rest134747_))
                 (_else134751134766_ (lambda () (_f134742_ _rest134747_))))
            (let ((_K134754134780_
                   (lambda (_rest134777_ _hd134778_)
                     (cons (_f134742_ _hd134778_)
                           (_recur134745_ _rest134777_))))
                  (_K134753134771_ (lambda () '())))
              (let ((_try-match134750134774_
                     (lambda ()
                       (if (##null? _g134748134758_)
                           (_K134753134771_)
                           (_else134751134766_)))))
                (if (##pair? _g134748134758_)
                    (let ((_tl134756134785_ (##cdr _g134748134758_))
                          (_hd134755134783_ (##car _g134748134758_)))
                      (let ((_hd134788_ _hd134755134783_)
                            (_rest134790_ _tl134756134785_))
                        (_K134754134780_ _rest134790_ _hd134788_)))
                    (_try-match134750134774_))))))))
    (define gx#stx-map2
      (lambda (_f134647_ _xstx134648_ _ystx134649_)
        (if (procedure? _f134647_)
            '#!void
            (error '"expected procedure" _f134647_))
        (let _recur134651_ ((_xrest134653_ _xstx134648_)
                            (_yrest134654_ _ystx134649_))
          (let* ((_g134655134665_ (gx#syntax-e _xrest134653_))
                 (_else134658134673_ (lambda () '())))
            (let ((_K134661134730_
                   (lambda (_xrest134699_ _xhd134700_)
                     (let* ((_g134701134708_ (gx#syntax-e _yrest134654_))
                            (_E134703134712_
                             (lambda ()
                               (error '"No clause matching" _g134701134708_)))
                            (_K134704134718_
                             (lambda (_yrest134715_ _yhd134716_)
                               (cons (_f134647_ _xhd134700_ _yhd134716_)
                                     (_recur134651_
                                      _xrest134699_
                                      _yrest134715_)))))
                       (if (##pair? _g134701134708_)
                           (let ((_hd134705134721_ (##car _g134701134708_))
                                 (_tl134706134723_ (##cdr _g134701134708_)))
                             (let* ((_yhd134726_ _hd134705134721_)
                                    (_yrest134728_ _tl134706134723_))
                               (_K134704134718_ _yrest134728_ _yhd134726_)))
                           (_E134703134712_)))))
                  (_K134660134693_
                   (lambda ()
                     (let* ((_yrest134677134682_ _yrest134654_)
                            (_E134679134686_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134677134682_)))
                            (_K134680134690_
                             (lambda ()
                               (_f134647_ _xrest134653_ _yrest134654_))))
                       (if (not (gx#stx-null? _yrest134677134682_))
                           (_K134680134690_)
                           (_E134679134686_))))))
              (let ((_try-match134657134696_
                     (lambda ()
                       (if (not (null? _g134655134665_))
                           (_K134660134693_)
                           (_else134658134673_)))))
                (if (##pair? _g134655134665_)
                    (let ((_tl134663134735_ (##cdr _g134655134665_))
                          (_hd134662134733_ (##car _g134655134665_)))
                      (let ((_xhd134738_ _hd134662134733_)
                            (_xrest134740_ _tl134663134735_))
                        (_K134661134730_ _xrest134740_ _xhd134738_)))
                    (_try-match134657134696_))))))))
    (define gx#stx-andmap
      (lambda (_f134597_ _stx134598_)
        (if (procedure? _f134597_)
            '#!void
            (error '"expected procedure" _f134597_))
        (let _lp134600_ ((_rest134602_ _stx134598_))
          (let* ((_g134603134613_ (gx#syntax-e _rest134602_))
                 (_else134606134621_ (lambda () (_f134597_ _rest134602_))))
            (let ((_K134609134635_
                   (lambda (_rest134632_ _hd134633_)
                     (if (_f134597_ _hd134633_)
                         (_lp134600_ _rest134632_)
                         '#f)))
                  (_K134608134626_ (lambda () '#t)))
              (let ((_try-match134605134629_
                     (lambda ()
                       (if (##null? _g134603134613_)
                           (_K134608134626_)
                           (_else134606134621_)))))
                (if (##pair? _g134603134613_)
                    (let ((_tl134611134640_ (##cdr _g134603134613_))
                          (_hd134610134638_ (##car _g134603134613_)))
                      (let ((_hd134643_ _hd134610134638_)
                            (_rest134645_ _tl134611134640_))
                        (_K134609134635_ _rest134645_ _hd134643_)))
                    (_try-match134605134629_))))))))
    (define gx#stx-ormap
      (lambda (_f134544_ _stx134545_)
        (if (procedure? _f134544_)
            '#!void
            (error '"expected procedure" _f134544_))
        (let _lp134547_ ((_rest134549_ _stx134545_))
          (let* ((_g134550134560_ (gx#syntax-e _rest134549_))
                 (_else134553134568_ (lambda () (_f134544_ _rest134549_))))
            (let ((_K134556134585_
                   (lambda (_rest134579_ _hd134580_)
                     (let ((_$e134582_ (_f134544_ _hd134580_)))
                       (if _$e134582_ _$e134582_ (_lp134547_ _rest134579_)))))
                  (_K134555134573_ (lambda () '#f)))
              (let ((_try-match134552134576_
                     (lambda ()
                       (if (##null? _g134550134560_)
                           (_K134555134573_)
                           (_else134553134568_)))))
                (if (##pair? _g134550134560_)
                    (let ((_tl134558134590_ (##cdr _g134550134560_))
                          (_hd134557134588_ (##car _g134550134560_)))
                      (let ((_hd134593_ _hd134557134588_)
                            (_rest134595_ _tl134558134590_))
                        (_K134556134585_ _rest134595_ _hd134593_)))
                    (_try-match134552134576_))))))))
    (define gx#stx-foldl
      (lambda (_f134492_ _iv134493_ _stx134494_)
        (if (procedure? _f134492_)
            '#!void
            (error '"expected procedure" _f134492_))
        (let _lp134496_ ((_r134498_ _iv134493_) (_rest134499_ _stx134494_))
          (let* ((_g134500134510_ (gx#syntax-e _rest134499_))
                 (_else134503134518_
                  (lambda () (_f134492_ _rest134499_ _r134498_))))
            (let ((_K134506134532_
                   (lambda (_rest134529_ _hd134530_)
                     (_lp134496_
                      (_f134492_ _hd134530_ _r134498_)
                      _rest134529_)))
                  (_K134505134523_ (lambda () _r134498_)))
              (let ((_try-match134502134526_
                     (lambda ()
                       (if (##null? _g134500134510_)
                           (_K134505134523_)
                           (_else134503134518_)))))
                (if (##pair? _g134500134510_)
                    (let ((_tl134508134537_ (##cdr _g134500134510_))
                          (_hd134507134535_ (##car _g134500134510_)))
                      (let ((_hd134540_ _hd134507134535_)
                            (_rest134542_ _tl134508134537_))
                        (_K134506134532_ _rest134542_ _hd134540_)))
                    (_try-match134502134526_))))))))
    (define gx#stx-foldr
      (lambda (_f134441_ _iv134442_ _stx134443_)
        (if (procedure? _f134441_)
            '#!void
            (error '"expected procedure" _f134441_))
        (let _recur134445_ ((_rest134447_ _stx134443_))
          (let* ((_g134448134458_ (gx#syntax-e _rest134447_))
                 (_else134451134466_
                  (lambda () (_f134441_ _rest134447_ _iv134442_))))
            (let ((_K134454134480_
                   (lambda (_rest134477_ _hd134478_)
                     (_f134441_ _hd134478_ (_recur134445_ _rest134477_))))
                  (_K134453134471_ (lambda () _iv134442_)))
              (let ((_try-match134450134474_
                     (lambda ()
                       (if (##null? _g134448134458_)
                           (_K134453134471_)
                           (_else134451134466_)))))
                (if (##pair? _g134448134458_)
                    (let ((_tl134456134485_ (##cdr _g134448134458_))
                          (_hd134455134483_ (##car _g134448134458_)))
                      (let ((_hd134488_ _hd134455134483_)
                            (_rest134490_ _tl134456134485_))
                        (_K134454134480_ _rest134490_ _hd134488_)))
                    (_try-match134450134474_))))))))
    (define gx#stx-reverse
      (lambda (_stx134439_) (gx#stx-foldl cons '() _stx134439_)))
    (define gx#stx-last
      (lambda (_stx134400_)
        (let _lp134402_ ((_rest134404_ _stx134400_))
          (let* ((_g134405134413_ (gx#syntax-e _rest134404_))
                 (_else134407134421_ (lambda () _rest134404_))
                 (_K134409134427_
                  (lambda (_rest134424_ _hd134425_)
                    (if (gx#stx-null? _rest134424_)
                        _hd134425_
                        (_lp134402_ _rest134424_)))))
            (if (##pair? _g134405134413_)
                (let ((_hd134410134430_ (##car _g134405134413_))
                      (_tl134411134432_ (##cdr _g134405134413_)))
                  (let* ((_hd134435_ _hd134410134430_)
                         (_rest134437_ _tl134411134432_))
                    (_K134409134427_ _rest134437_ _hd134435_)))
                (_else134407134421_))))))
    (define gx#stx-last-pair
      (lambda (_stx134371_)
        (let _lp134373_ ((_hd134375_ _stx134371_))
          (let* ((_g134376134383_ (gx#syntax-e _hd134375_))
                 (_E134378134387_
                  (lambda () (error '"No clause matching" _g134376134383_)))
                 (_K134379134392_
                  (lambda (_rest134390_)
                    (if (gx#stx-pair? _rest134390_)
                        (_lp134373_ _rest134390_)
                        _hd134375_))))
            (if (##pair? _g134376134383_)
                (let* ((_tl134381134395_ (##cdr _g134376134383_))
                       (_rest134398_ _tl134381134395_))
                  (_K134379134392_ _rest134398_))
                (_E134378134387_))))))
    (define gx#stx-list-tail
      (lambda (_stx134340_ _k134341_)
        (let _lp134343_ ((_rest134345_ _stx134340_) (_k134346_ _k134341_))
          (if (fxpositive? _k134346_)
              (let* ((_g134347134354_ (gx#syntax-e _rest134345_))
                     (_E134349134358_
                      (lambda ()
                        (error '"No clause matching" _g134347134354_)))
                     (_K134350134363_
                      (lambda (_rest134361_)
                        (_lp134343_ _rest134361_ (fx- _k134346_ '1)))))
                (if (##pair? _g134347134354_)
                    (let* ((_tl134352134366_ (##cdr _g134347134354_))
                           (_rest134369_ _tl134352134366_))
                      (_K134350134363_ _rest134369_))
                    (_E134349134358_)))
              _rest134345_))))
    (define gx#stx-list-ref
      (lambda (_stx134337_ _k134338_)
        (gx#stx-car (gx#stx-list-tail _stx134337_ _k134338_))))
    (define gx#stx-plist?__%
      (lambda (_stx134249_ _key?134250_)
        (if (procedure? _key?134250_)
            '#!void
            (error '"expected procedure" _key?134250_))
        (let _lp134252_ ((_rest134254_ _stx134249_))
          (let* ((_g134255134265_ (gx#stx-e _rest134254_))
                 (_else134258134273_ (lambda () '#f)))
            (let ((_K134261134315_
                   (lambda (_rest134284_ _hd134285_)
                     (if (_key?134250_ _hd134285_)
                         (let* ((_g134286134294_ (gx#stx-e _rest134284_))
                                (_else134288134302_ (lambda () '#f))
                                (_K134290134307_
                                 (lambda (_rest134305_)
                                   (_lp134252_ _rest134305_))))
                           (if (##pair? _g134286134294_)
                               (let* ((_tl134292134310_
                                       (##cdr _g134286134294_))
                                      (_rest134313_ _tl134292134310_))
                                 (_lp134252_ _rest134313_))
                               (_else134288134302_)))
                         '#f)))
                  (_K134260134278_ (lambda () '#t)))
              (let ((_try-match134257134281_
                     (lambda ()
                       (if (##null? _g134255134265_)
                           (_K134260134278_)
                           (_else134258134273_)))))
                (if (##pair? _g134255134265_)
                    (let ((_tl134263134320_ (##cdr _g134255134265_))
                          (_hd134262134318_ (##car _g134255134265_)))
                      (let ((_hd134323_ _hd134262134318_)
                            (_rest134325_ _tl134263134320_))
                        (_K134261134315_ _rest134325_ _hd134323_)))
                    (_try-match134257134281_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134330_)
        (let ((_key?134332_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134330_ _key?134332_))))
    (define gx#stx-plist?
      (lambda _g139906_
        (let ((_g139905_ (##length _g139906_)))
          (cond ((##fx= _g139905_ 1)
                 (apply (lambda (_stx134330_) (gx#stx-plist?__0 _stx134330_))
                        _g139906_))
                ((##fx= _g139905_ 2)
                 (apply (lambda (_stx134334_ _key?134335_)
                          (gx#stx-plist?__% _stx134334_ _key?134335_))
                        _g139906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g139906_))))))
    (define gx#stx-getq__%
      (lambda (_key134167_ _stx134168_ _key=?134169_)
        (if (procedure? _key=?134169_)
            '#!void
            (error '"expected procedure" _key=?134169_))
        (let _lp134171_ ((_rest134173_ _stx134168_))
          (let* ((_g134174134182_ (gx#syntax-e _rest134173_))
                 (_else134176134190_ (lambda () '#f))
                 (_K134178134224_
                  (lambda (_rest134193_ _hd134194_)
                    (let* ((_g134195134202_ (gx#syntax-e _rest134193_))
                           (_E134197134206_
                            (lambda ()
                              (error '"No clause matching" _g134195134202_)))
                           (_K134198134212_
                            (lambda (_rest134209_ _val134210_)
                              (if (_key=?134169_ _hd134194_ _key134167_)
                                  _val134210_
                                  (_lp134171_ _rest134209_)))))
                      (if (##pair? _g134195134202_)
                          (let ((_hd134199134215_ (##car _g134195134202_))
                                (_tl134200134217_ (##cdr _g134195134202_)))
                            (let* ((_val134220_ _hd134199134215_)
                                   (_rest134222_ _tl134200134217_))
                              (_K134198134212_ _rest134222_ _val134220_)))
                          (_E134197134206_))))))
            (if (##pair? _g134174134182_)
                (let ((_hd134179134227_ (##car _g134174134182_))
                      (_tl134180134229_ (##cdr _g134174134182_)))
                  (let* ((_hd134232_ _hd134179134227_)
                         (_rest134234_ _tl134180134229_))
                    (_K134178134224_ _rest134234_ _hd134232_)))
                (_else134176134190_))))))
    (define gx#stx-getq__0
      (lambda (_key134239_ _stx134240_)
        (let ((_key=?134242_ gx#stx-eq?))
          (gx#stx-getq__% _key134239_ _stx134240_ _key=?134242_))))
    (define gx#stx-getq
      (lambda _g139908_
        (let ((_g139907_ (##length _g139908_)))
          (cond ((##fx= _g139907_ 2)
                 (apply (lambda (_key134239_ _stx134240_)
                          (gx#stx-getq__0 _key134239_ _stx134240_))
                        _g139908_))
                ((##fx= _g139907_ 3)
                 (apply (lambda (_key134244_ _stx134245_ _key=?134246_)
                          (gx#stx-getq__%
                           _key134244_
                           _stx134245_
                           _key=?134246_))
                        _g139908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g139908_))))))))
