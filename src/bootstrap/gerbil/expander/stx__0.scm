(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707841979)
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
      (lambda _$args138341_
        (apply make-instance gx#identifier-wrap::t _$args138341_)))
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
      (lambda _$args138338_
        (apply make-instance gx#syntax-wrap::t _$args138338_)))
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
      (lambda _$args138335_
        (apply make-instance gx#syntax-quote::t _$args138335_)))
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
      (lambda (_stx138333_) (symbol? (gx#stx-e _stx138333_))))
    (define gx#identifier-quote?
      (lambda (_stx138331_)
        (if (##structure-direct-instance-of? _stx138331_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx138331_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx138329_)
        (if (##structure-direct-instance-of? _stx138329_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx138329_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx138329_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx138327_)
        (if (##structure-direct-instance-of? _stx138327_ 'gx#syntax-quote::t)
            _stx138327_
            (if (##structure-direct-instance-of?
                 _stx138327_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx138327_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx138310_)
        (if (##structure-direct-instance-of? _stx138310_ 'gx#syntax-wrap::t)
            (let _lp138312_ ((_e138314_
                              (##unchecked-structure-ref
                               _stx138310_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks138315_
                              (cons (##unchecked-structure-ref
                                     _stx138310_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e138314_)
                  (let ((_$e138317_ (##type-id (##structure-type _e138314_))))
                    (if (eq? 'gx#syntax-wrap::t _$e138317_)
                        (_lp138312_
                         (##unchecked-structure-ref _e138314_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e138314_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks138315_))
                        (if (or (eq? 'gx#syntax-quote::t _$e138317_)
                                (eq? 'gx#identifier-wrap::t _$e138317_))
                            (##unchecked-structure-ref
                             _e138314_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e138317_)
                                (_lp138312_
                                 (##unchecked-structure-ref
                                  _e138314_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks138315_)
                                _e138314_))))
                  (if (null? _marks138315_)
                      _e138314_
                      (if (pair? _e138314_)
                          (cons (gx#stx-wrap (car _e138314_) _marks138315_)
                                (gx#stx-wrap (cdr _e138314_) _marks138315_))
                          (if (vector? _e138314_)
                              (vector-map
                               (lambda (_g138322138324_)
                                 (gx#stx-wrap _g138322138324_ _marks138315_))
                               _e138314_)
                              (if (box? _e138314_)
                                  (box (gx#stx-wrap
                                        (unbox _e138314_)
                                        _marks138315_))
                                  _e138314_))))))
            (if (##structure-instance-of? _stx138310_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138310_ '1 gx#AST::t '#f)
                _stx138310_))))
    (define gx#syntax->datum
      (lambda (_stx138308_)
        (if (##structure-instance-of? _stx138308_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx138308_ '1 gx#AST::t '#f))
            (if (pair? _stx138308_)
                (cons (gx#syntax->datum (car _stx138308_))
                      (gx#syntax->datum (cdr _stx138308_)))
                (if (vector? _stx138308_)
                    (vector-map gx#syntax->datum _stx138308_)
                    (if (box? _stx138308_)
                        (box (gx#syntax->datum (unbox _stx138308_)))
                        _stx138308_))))))
    (define gx#datum->syntax__%
      (lambda (_stx138251_ _datum138252_ _src138253_ _quote?138254_)
        (letrec ((_wrap-datum138256_
                  (lambda (_e138280_ _marks138281_)
                    (_wrap-inner138258_
                     _e138280_
                     (lambda (_g138282138284_)
                       (##structure
                        gx#identifier-wrap::t
                        _g138282138284_
                        _src138253_
                        _marks138281_)))))
                 (_wrap-quote138257_
                  (lambda (_e138272_ _ctx138273_ _marks138274_)
                    (_wrap-inner138258_
                     _e138272_
                     (lambda (_g138275138277_)
                       (##structure
                        gx#syntax-quote::t
                        _g138275138277_
                        _src138253_
                        _ctx138273_
                        _marks138274_)))))
                 (_wrap-inner138258_
                  (lambda (_e138265_ _wrap-e138266_)
                    (let _recur138268_ ((_e138270_ _e138265_))
                      (if (symbol? _e138270_)
                          (_wrap-e138266_ _e138270_)
                          (if (pair? _e138270_)
                              (cons (_recur138268_ (car _e138270_))
                                    (_recur138268_ (cdr _e138270_)))
                              (if (vector? _e138270_)
                                  (vector-map _recur138268_ _e138270_)
                                  (if (box? _e138270_)
                                      (box (_recur138268_ (unbox _e138270_)))
                                      _e138270_)))))))
                 (_wrap-outer138259_
                  (lambda (_e138263_)
                    (if (##structure-instance-of? _e138263_ 'gerbil#AST::t)
                        _e138263_
                        (##structure gx#AST::t _e138263_ _src138253_)))))
          (if (##structure-instance-of? _datum138252_ 'gerbil#AST::t)
              _datum138252_
              (if (not _stx138251_)
                  (##structure gx#AST::t _datum138252_ _src138253_)
                  (if (gx#identifier? _stx138251_)
                      (let ((_stx138261_ (gx#stx-unwrap__0 _stx138251_)))
                        (_wrap-outer138259_
                         (if (##structure-direct-instance-of?
                              _stx138261_
                              'gx#syntax-quote::t)
                             (if _quote?138254_
                                 (_wrap-quote138257_
                                  _datum138252_
                                  (##unchecked-structure-ref
                                   _stx138261_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx138261_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum138256_
                                  _datum138252_
                                  (##unchecked-structure-ref
                                   _stx138261_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum138256_
                              _datum138252_
                              (##unchecked-structure-ref
                               _stx138261_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx138251_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx138290_ _datum138291_)
        (let* ((_src138293_ '#f) (_quote?138295_ '#t))
          (gx#datum->syntax__%
           _stx138290_
           _datum138291_
           _src138293_
           _quote?138295_))))
    (define gx#datum->syntax__1
      (lambda (_stx138297_ _datum138298_ _src138299_)
        (let ((_quote?138301_ '#t))
          (gx#datum->syntax__%
           _stx138297_
           _datum138298_
           _src138299_
           _quote?138301_))))
    (define gx#datum->syntax
      (lambda _g142990_
        (let ((_g142989_ (##length _g142990_)))
          (cond ((##fx= _g142989_ 2)
                 (apply (lambda (_stx138290_ _datum138291_)
                          (gx#datum->syntax__0 _stx138290_ _datum138291_))
                        _g142990_))
                ((##fx= _g142989_ 3)
                 (apply (lambda (_stx138297_ _datum138298_ _src138299_)
                          (gx#datum->syntax__1
                           _stx138297_
                           _datum138298_
                           _src138299_))
                        _g142990_))
                ((##fx= _g142989_ 4)
                 (apply (lambda (_stx138303_
                                 _datum138304_
                                 _src138305_
                                 _quote?138306_)
                          (gx#datum->syntax__%
                           _stx138303_
                           _datum138304_
                           _src138305_
                           _quote?138306_))
                        _g142990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g142990_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx138227_ _marks138228_)
        (let _lp138230_ ((_e138232_ _stx138227_)
                         (_marks138233_ _marks138228_)
                         (_src138234_ (gx#stx-source _stx138227_)))
          (if (##structure-direct-instance-of? _e138232_ 'gx#syntax-wrap::t)
              (_lp138230_
               (##unchecked-structure-ref _e138232_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e138232_ '3 gx#syntax-wrap::t '#f)
                _marks138233_)
               (##unchecked-structure-ref _e138232_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e138232_
                   'gx#identifier-wrap::t)
                  (if (null? _marks138233_)
                      _e138232_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e138232_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e138232_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e138232_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks138233_)))
                  (if (##structure-direct-instance-of?
                       _e138232_
                       'gx#syntax-quote::t)
                      _e138232_
                      (if (##structure-instance-of? _e138232_ 'gerbil#AST::t)
                          (_lp138230_
                           (##unchecked-structure-ref
                            _e138232_
                            '1
                            gx#AST::t
                            '#f)
                           _marks138233_
                           (##unchecked-structure-ref
                            _e138232_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e138232_)
                              (##structure
                               gx#identifier-wrap::t
                               _e138232_
                               _src138234_
                               (reverse _marks138233_))
                              (if (null? _marks138233_)
                                  _e138232_
                                  (if (pair? _e138232_)
                                      (cons (gx#stx-wrap
                                             (car _e138232_)
                                             _marks138233_)
                                            (gx#stx-wrap
                                             (cdr _e138232_)
                                             _marks138233_))
                                      (if (vector? _e138232_)
                                          (vector-map
                                           (lambda (_g138235138237_)
                                             (gx#stx-wrap
                                              _g138235138237_
                                              _marks138233_))
                                           _e138232_)
                                          (if (box? _e138232_)
                                              (box (gx#stx-wrap
                                                    (unbox _e138232_)
                                                    _marks138233_))
                                              _e138232_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx138243_)
        (let ((_marks138245_ '()))
          (gx#stx-unwrap__% _stx138243_ _marks138245_))))
    (define gx#stx-unwrap
      (lambda _g142992_
        (let ((_g142991_ (##length _g142992_)))
          (cond ((##fx= _g142991_ 1)
                 (apply (lambda (_stx138243_) (gx#stx-unwrap__0 _stx138243_))
                        _g142992_))
                ((##fx= _g142991_ 2)
                 (apply (lambda (_stx138247_ _marks138248_)
                          (gx#stx-unwrap__% _stx138247_ _marks138248_))
                        _g142992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g142992_))))))
    (define gx#stx-wrap
      (lambda (_stx138220_ _marks138221_)
        (foldl1 (lambda (_mark138223_ _stx138224_)
                  (gx#stx-apply-mark _stx138224_ _mark138223_))
                _stx138220_
                _marks138221_)))
    (define gx#stx-rewrap
      (lambda (_stx138214_ _marks138215_)
        (foldr1 (lambda (_mark138217_ _stx138218_)
                  (gx#stx-apply-mark _stx138218_ _mark138217_))
                _stx138214_
                _marks138215_)))
    (define gx#stx-apply-mark
      (lambda (_stx138211_ _mark138212_)
        (if (##structure-direct-instance-of? _stx138211_ 'gx#syntax-quote::t)
            _stx138211_
            (if (and (##structure-direct-instance-of?
                      _stx138211_
                      'gx#syntax-wrap::t)
                     (eq? _mark138212_
                          (##unchecked-structure-ref
                           _stx138211_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx138211_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx138211_
                 (gx#stx-source _stx138211_)
                 _mark138212_)))))
    (define gx#apply-mark
      (lambda (_mark138175_ _marks138176_)
        (let* ((_marks138177138185_ _marks138176_)
               (_else138179138193_
                (lambda () (cons _mark138175_ _marks138176_)))
               (_K138181138199_
                (lambda (_rest138196_ _hd138197_)
                  (if (eq? _mark138175_ _hd138197_)
                      _rest138196_
                      (cons _mark138175_ _marks138176_)))))
          (if (##pair? _marks138177138185_)
              (let ((_hd138182138202_ (##car _marks138177138185_))
                    (_tl138183138204_ (##cdr _marks138177138185_)))
                (let* ((_hd138207_ _hd138182138202_)
                       (_rest138209_ _tl138183138204_))
                  (_K138181138199_ _rest138209_ _hd138207_)))
              (_else138179138193_)))))
    (define gx#stx-e
      (lambda (_stx138173_)
        (if (##structure-direct-instance-of? _stx138173_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx138173_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx138173_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138173_ '1 gx#AST::t '#f)
                _stx138173_))))
    (define gx#stx-source
      (lambda (_stx138171_)
        (if (##structure-instance-of? _stx138171_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx138171_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx138165_ _src138166_)
        (if (or (##structure-instance-of? _stx138165_ 'gerbil#AST::t)
                (not _src138166_))
            _stx138165_
            (##structure gx#AST::t _stx138165_ _src138166_))))
    (define gx#stx-datum?
      (lambda (_stx138163_) (gx#self-quoting? (gx#stx-e _stx138163_))))
    (define gx#self-quoting?
      (lambda (_x138146_)
        (let ((_$e138148_ (immediate? _x138146_)))
          (if _$e138148_
              _$e138148_
              (let ((_$e138151_ (number? _x138146_)))
                (if _$e138151_
                    _$e138151_
                    (let ((_$e138154_ (keyword? _x138146_)))
                      (if _$e138154_
                          _$e138154_
                          (let ((_$e138157_ (string? _x138146_)))
                            (if _$e138157_
                                _$e138157_
                                (let ((_$e138160_ (vector? _x138146_)))
                                  (if _$e138160_
                                      _$e138160_
                                      (u8vector? _x138146_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e138144_) (boolean? (gx#stx-e _e138144_))))
    (define gx#stx-keyword?
      (lambda (_e138142_) (keyword? (gx#stx-e _e138142_))))
    (define gx#stx-char? (lambda (_e138140_) (char? (gx#stx-e _e138140_))))
    (define gx#stx-number? (lambda (_e138138_) (number? (gx#stx-e _e138138_))))
    (define gx#stx-fixnum? (lambda (_e138136_) (fixnum? (gx#stx-e _e138136_))))
    (define gx#stx-string? (lambda (_e138134_) (string? (gx#stx-e _e138134_))))
    (define gx#stx-null? (lambda (_e138132_) (null? (gx#stx-e _e138132_))))
    (define gx#stx-pair? (lambda (_e138130_) (pair? (gx#stx-e _e138130_))))
    (define gx#stx-list?
      (lambda (_e138092_)
        (let* ((_g138093138102_ (gx#stx-e _e138092_))
               (_E138096138106_
                (lambda () (error '"No clause matching" _g138093138102_))))
          (let ((_K138098138122_
                 (lambda (_rest138120_) (gx#stx-list? _rest138120_)))
                (_K138097138112_ (lambda (_tail138110_) (null? _tail138110_))))
            (if (##pair? _g138093138102_)
                (let* ((_tl138100138125_ (##cdr _g138093138102_))
                       (_rest138128_ _tl138100138125_))
                  (gx#stx-list? _rest138128_))
                (let ((_tail138115_ _g138093138102_))
                  (null? _tail138115_)))))))
    (define gx#stx-pair/null?
      (lambda (_e138085_)
        (let* ((_e138087_ (gx#stx-e _e138085_)) (_$e138089_ (pair? _e138087_)))
          (if _$e138089_ _$e138089_ (null? _e138087_)))))
    (define gx#stx-vector? (lambda (_e138083_) (vector? (gx#stx-e _e138083_))))
    (define gx#stx-box? (lambda (_e138081_) (box? (gx#stx-e _e138081_))))
    (define gx#stx-eq?
      (lambda (_x138078_ _y138079_)
        (eq? (gx#stx-e _x138078_) (gx#stx-e _y138079_))))
    (define gx#stx-eqv?
      (lambda (_x138075_ _y138076_)
        (eqv? (gx#stx-e _x138075_) (gx#stx-e _y138076_))))
    (define gx#stx-equal?
      (lambda (_x138072_ _y138073_)
        (equal? (gx#stx-e _x138072_) (gx#stx-e _y138073_))))
    (define gx#stx-false? (lambda (_x138070_) (not (gx#stx-e _x138070_))))
    (define gx#stx-identifier
      (lambda (_template138067_ . _args138068_)
        (gx#datum->syntax__1
         _template138067_
         (apply make-symbol (gx#syntax->datum _args138068_))
         (gx#stx-source _template138067_))))
    (define gx#stx-identifier-marks
      (lambda (_stx138065_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx138065_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx138063_)
        (if (##structure-direct-instance-of?
             _stx138063_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx138063_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx138063_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx138063_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx138063_)))))
    (define gx#stx-identifier-context
      (lambda (_stx138059_)
        (let ((_stx138061_ (gx#stx-unwrap__0 _stx138059_)))
          (if (gx#identifier-quote? _stx138061_)
              (##unchecked-structure-ref _stx138061_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx138014_)
        (let* ((_g138015138025_ (gx#stx-e _stx138014_))
               (_else138018138033_ (lambda () '#f)))
          (let ((_K138021138047_
                 (lambda (_rest138044_ _hd138045_)
                   (if (gx#identifier? _hd138045_)
                       (gx#identifier-list? _rest138044_)
                       '#f)))
                (_K138020138038_ (lambda () '#t)))
            (let ((_try-match138017138041_
                   (lambda ()
                     (if (##null? _g138015138025_)
                         (_K138020138038_)
                         (_else138018138033_)))))
              (if (##pair? _g138015138025_)
                  (let ((_tl138023138052_ (##cdr _g138015138025_))
                        (_hd138022138050_ (##car _g138015138025_)))
                    (let ((_hd138055_ _hd138022138050_)
                          (_rest138057_ _tl138023138052_))
                      (_K138021138047_ _rest138057_ _hd138055_)))
                  (_try-match138017138041_)))))))
    (define gx#genident__%
      (lambda (_e137991_ _src137992_)
        (gx#stx-wrap-source
         (gensym (let ((_e137994_ (gx#stx-e _e137991_)))
                   (if (interned-symbol? _e137994_) _e137994_ 'g)))
         (let ((_$e137996_ (gx#stx-source _e137991_)))
           (if _$e137996_ _$e137996_ _src137992_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e138003_ 'g) (_src138005_ '#f))
          (gx#genident__% _e138003_ _src138005_))))
    (define gx#genident__1
      (lambda (_e138007_)
        (let ((_src138009_ '#f)) (gx#genident__% _e138007_ _src138009_))))
    (define gx#genident
      (lambda _g142994_
        (let ((_g142993_ (##length _g142994_)))
          (cond ((##fx= _g142993_ 0)
                 (apply (lambda () (gx#genident__0)) _g142994_))
                ((##fx= _g142993_ 1)
                 (apply (lambda (_e138007_) (gx#genident__1 _e138007_))
                        _g142994_))
                ((##fx= _g142993_ 2)
                 (apply (lambda (_e138011_ _src138012_)
                          (gx#genident__% _e138011_ _src138012_))
                        _g142994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g142994_))))))
    (define gx#gentemps
      (lambda (_stx-lst137988_) (gx#stx-map1 gx#genident _stx-lst137988_)))
    (define gx#syntax->list
      (lambda (_stx137986_) (gx#stx-map1 values _stx137986_)))
    (define gx#stx-car
      (lambda (_stx137983_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx137983_)))))
    (define gx#stx-cdr
      (lambda (_stx137980_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx137980_)))))
    (define gx#stx-length
      (lambda (_stx137945_)
        (let _lp137947_ ((_rest137949_ _stx137945_) (_n137950_ '0))
          (let* ((_g137951137959_ (gx#stx-e _rest137949_))
                 (_else137953137967_ (lambda () _n137950_))
                 (_K137955137972_
                  (lambda (_rest137970_)
                    (_lp137947_ _rest137970_ (fx+ _n137950_ '1)))))
            (if (##pair? _g137951137959_)
                (let* ((_tl137957137975_ (##cdr _g137951137959_))
                       (_rest137978_ _tl137957137975_))
                  (_K137955137972_ _rest137978_))
                (_else137953137967_))))))
    (define gx#stx-for-each
      (lambda _g142996_
        (let ((_g142995_ (##length _g142996_)))
          (cond ((##fx= _g142995_ 2)
                 (apply (lambda (_f137938_ _stx137939_)
                          (gx#stx-for-each1 _f137938_ _stx137939_))
                        _g142996_))
                ((##fx= _g142995_ 3)
                 (apply (lambda (_f137941_ _xstx137942_ _ystx137943_)
                          (gx#stx-for-each2
                           _f137941_
                           _xstx137942_
                           _ystx137943_))
                        _g142996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g142996_))))))
    (define gx#stx-for-each1
      (lambda (_f137888_ _stx137889_)
        (if (procedure? _f137888_)
            '#!void
            (error '"expected procedure" _f137888_))
        (let _lp137891_ ((_rest137893_ _stx137889_))
          (let* ((_g137894137904_ (gx#syntax-e _rest137893_))
                 (_else137897137912_ (lambda () (_f137888_ _rest137893_))))
            (let ((_K137900137926_
                   (lambda (_rest137923_ _hd137924_)
                     (_f137888_ _hd137924_)
                     (_lp137891_ _rest137923_)))
                  (_K137899137917_ (lambda () '#!void)))
              (let ((_try-match137896137920_
                     (lambda ()
                       (if (##null? _g137894137904_)
                           (_K137899137917_)
                           (_else137897137912_)))))
                (if (##pair? _g137894137904_)
                    (let ((_tl137902137931_ (##cdr _g137894137904_))
                          (_hd137901137929_ (##car _g137894137904_)))
                      (let ((_hd137934_ _hd137901137929_)
                            (_rest137936_ _tl137902137931_))
                        (_K137900137926_ _rest137936_ _hd137934_)))
                    (_try-match137896137920_))))))))
    (define gx#stx-for-each2
      (lambda (_f137793_ _xstx137794_ _ystx137795_)
        (if (procedure? _f137793_)
            '#!void
            (error '"expected procedure" _f137793_))
        (let _lp137797_ ((_xrest137799_ _xstx137794_)
                         (_yrest137800_ _ystx137795_))
          (let* ((_g137801137811_ (gx#syntax-e _xrest137799_))
                 (_else137804137819_ (lambda () '#!void)))
            (let ((_K137807137876_
                   (lambda (_xrest137845_ _xhd137846_)
                     (let* ((_g137847137854_ (gx#syntax-e _yrest137800_))
                            (_E137849137858_
                             (lambda ()
                               (error '"No clause matching" _g137847137854_)))
                            (_K137850137864_
                             (lambda (_yrest137861_ _yhd137862_)
                               (_f137793_ _xhd137846_ _yhd137862_)
                               (_lp137797_ _xrest137845_ _yrest137861_))))
                       (if (##pair? _g137847137854_)
                           (let ((_hd137851137867_ (##car _g137847137854_))
                                 (_tl137852137869_ (##cdr _g137847137854_)))
                             (let* ((_yhd137872_ _hd137851137867_)
                                    (_yrest137874_ _tl137852137869_))
                               (_K137850137864_ _yrest137874_ _yhd137872_)))
                           (_E137849137858_)))))
                  (_K137806137839_
                   (lambda ()
                     (let* ((_yrest137823137828_ _yrest137800_)
                            (_E137825137832_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137823137828_)))
                            (_K137826137836_
                             (lambda ()
                               (_f137793_ _xrest137799_ _yrest137800_))))
                       (if (not (gx#stx-null? _yrest137823137828_))
                           (_K137826137836_)
                           (_E137825137832_))))))
              (let ((_try-match137803137842_
                     (lambda ()
                       (if (not (null? _g137801137811_))
                           (_K137806137839_)
                           (_else137804137819_)))))
                (if (##pair? _g137801137811_)
                    (let ((_tl137809137881_ (##cdr _g137801137811_))
                          (_hd137808137879_ (##car _g137801137811_)))
                      (let ((_xhd137884_ _hd137808137879_)
                            (_xrest137886_ _tl137809137881_))
                        (_K137807137876_ _xrest137886_ _xhd137884_)))
                    (_try-match137803137842_))))))))
    (define gx#stx-map
      (lambda _g142998_
        (let ((_g142997_ (##length _g142998_)))
          (cond ((##fx= _g142997_ 2)
                 (apply (lambda (_f137786_ _stx137787_)
                          (gx#stx-map1 _f137786_ _stx137787_))
                        _g142998_))
                ((##fx= _g142997_ 3)
                 (apply (lambda (_f137789_ _xstx137790_ _ystx137791_)
                          (gx#stx-map2 _f137789_ _xstx137790_ _ystx137791_))
                        _g142998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g142998_))))))
    (define gx#stx-map1
      (lambda (_f137736_ _stx137737_)
        (if (procedure? _f137736_)
            '#!void
            (error '"expected procedure" _f137736_))
        (let _recur137739_ ((_rest137741_ _stx137737_))
          (let* ((_g137742137752_ (gx#syntax-e _rest137741_))
                 (_else137745137760_ (lambda () (_f137736_ _rest137741_))))
            (let ((_K137748137774_
                   (lambda (_rest137771_ _hd137772_)
                     (cons (_f137736_ _hd137772_)
                           (_recur137739_ _rest137771_))))
                  (_K137747137765_ (lambda () '())))
              (let ((_try-match137744137768_
                     (lambda ()
                       (if (##null? _g137742137752_)
                           (_K137747137765_)
                           (_else137745137760_)))))
                (if (##pair? _g137742137752_)
                    (let ((_tl137750137779_ (##cdr _g137742137752_))
                          (_hd137749137777_ (##car _g137742137752_)))
                      (let ((_hd137782_ _hd137749137777_)
                            (_rest137784_ _tl137750137779_))
                        (_K137748137774_ _rest137784_ _hd137782_)))
                    (_try-match137744137768_))))))))
    (define gx#stx-map2
      (lambda (_f137641_ _xstx137642_ _ystx137643_)
        (if (procedure? _f137641_)
            '#!void
            (error '"expected procedure" _f137641_))
        (let _recur137645_ ((_xrest137647_ _xstx137642_)
                            (_yrest137648_ _ystx137643_))
          (let* ((_g137649137659_ (gx#syntax-e _xrest137647_))
                 (_else137652137667_ (lambda () '())))
            (let ((_K137655137724_
                   (lambda (_xrest137693_ _xhd137694_)
                     (let* ((_g137695137702_ (gx#syntax-e _yrest137648_))
                            (_E137697137706_
                             (lambda ()
                               (error '"No clause matching" _g137695137702_)))
                            (_K137698137712_
                             (lambda (_yrest137709_ _yhd137710_)
                               (cons (_f137641_ _xhd137694_ _yhd137710_)
                                     (_recur137645_
                                      _xrest137693_
                                      _yrest137709_)))))
                       (if (##pair? _g137695137702_)
                           (let ((_hd137699137715_ (##car _g137695137702_))
                                 (_tl137700137717_ (##cdr _g137695137702_)))
                             (let* ((_yhd137720_ _hd137699137715_)
                                    (_yrest137722_ _tl137700137717_))
                               (_K137698137712_ _yrest137722_ _yhd137720_)))
                           (_E137697137706_)))))
                  (_K137654137687_
                   (lambda ()
                     (let* ((_yrest137671137676_ _yrest137648_)
                            (_E137673137680_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137671137676_)))
                            (_K137674137684_
                             (lambda ()
                               (_f137641_ _xrest137647_ _yrest137648_))))
                       (if (not (gx#stx-null? _yrest137671137676_))
                           (_K137674137684_)
                           (_E137673137680_))))))
              (let ((_try-match137651137690_
                     (lambda ()
                       (if (not (null? _g137649137659_))
                           (_K137654137687_)
                           (_else137652137667_)))))
                (if (##pair? _g137649137659_)
                    (let ((_tl137657137729_ (##cdr _g137649137659_))
                          (_hd137656137727_ (##car _g137649137659_)))
                      (let ((_xhd137732_ _hd137656137727_)
                            (_xrest137734_ _tl137657137729_))
                        (_K137655137724_ _xrest137734_ _xhd137732_)))
                    (_try-match137651137690_))))))))
    (define gx#stx-andmap
      (lambda (_f137591_ _stx137592_)
        (if (procedure? _f137591_)
            '#!void
            (error '"expected procedure" _f137591_))
        (let _lp137594_ ((_rest137596_ _stx137592_))
          (let* ((_g137597137607_ (gx#syntax-e _rest137596_))
                 (_else137600137615_ (lambda () (_f137591_ _rest137596_))))
            (let ((_K137603137629_
                   (lambda (_rest137626_ _hd137627_)
                     (if (_f137591_ _hd137627_)
                         (_lp137594_ _rest137626_)
                         '#f)))
                  (_K137602137620_ (lambda () '#t)))
              (let ((_try-match137599137623_
                     (lambda ()
                       (if (##null? _g137597137607_)
                           (_K137602137620_)
                           (_else137600137615_)))))
                (if (##pair? _g137597137607_)
                    (let ((_tl137605137634_ (##cdr _g137597137607_))
                          (_hd137604137632_ (##car _g137597137607_)))
                      (let ((_hd137637_ _hd137604137632_)
                            (_rest137639_ _tl137605137634_))
                        (_K137603137629_ _rest137639_ _hd137637_)))
                    (_try-match137599137623_))))))))
    (define gx#stx-ormap
      (lambda (_f137538_ _stx137539_)
        (if (procedure? _f137538_)
            '#!void
            (error '"expected procedure" _f137538_))
        (let _lp137541_ ((_rest137543_ _stx137539_))
          (let* ((_g137544137554_ (gx#syntax-e _rest137543_))
                 (_else137547137562_ (lambda () (_f137538_ _rest137543_))))
            (let ((_K137550137579_
                   (lambda (_rest137573_ _hd137574_)
                     (let ((_$e137576_ (_f137538_ _hd137574_)))
                       (if _$e137576_ _$e137576_ (_lp137541_ _rest137573_)))))
                  (_K137549137567_ (lambda () '#f)))
              (let ((_try-match137546137570_
                     (lambda ()
                       (if (##null? _g137544137554_)
                           (_K137549137567_)
                           (_else137547137562_)))))
                (if (##pair? _g137544137554_)
                    (let ((_tl137552137584_ (##cdr _g137544137554_))
                          (_hd137551137582_ (##car _g137544137554_)))
                      (let ((_hd137587_ _hd137551137582_)
                            (_rest137589_ _tl137552137584_))
                        (_K137550137579_ _rest137589_ _hd137587_)))
                    (_try-match137546137570_))))))))
    (define gx#stx-foldl
      (lambda (_f137486_ _iv137487_ _stx137488_)
        (if (procedure? _f137486_)
            '#!void
            (error '"expected procedure" _f137486_))
        (let _lp137490_ ((_r137492_ _iv137487_) (_rest137493_ _stx137488_))
          (let* ((_g137494137504_ (gx#syntax-e _rest137493_))
                 (_else137497137512_
                  (lambda () (_f137486_ _rest137493_ _r137492_))))
            (let ((_K137500137526_
                   (lambda (_rest137523_ _hd137524_)
                     (_lp137490_
                      (_f137486_ _hd137524_ _r137492_)
                      _rest137523_)))
                  (_K137499137517_ (lambda () _r137492_)))
              (let ((_try-match137496137520_
                     (lambda ()
                       (if (##null? _g137494137504_)
                           (_K137499137517_)
                           (_else137497137512_)))))
                (if (##pair? _g137494137504_)
                    (let ((_tl137502137531_ (##cdr _g137494137504_))
                          (_hd137501137529_ (##car _g137494137504_)))
                      (let ((_hd137534_ _hd137501137529_)
                            (_rest137536_ _tl137502137531_))
                        (_K137500137526_ _rest137536_ _hd137534_)))
                    (_try-match137496137520_))))))))
    (define gx#stx-foldr
      (lambda (_f137435_ _iv137436_ _stx137437_)
        (if (procedure? _f137435_)
            '#!void
            (error '"expected procedure" _f137435_))
        (let _recur137439_ ((_rest137441_ _stx137437_))
          (let* ((_g137442137452_ (gx#syntax-e _rest137441_))
                 (_else137445137460_
                  (lambda () (_f137435_ _rest137441_ _iv137436_))))
            (let ((_K137448137474_
                   (lambda (_rest137471_ _hd137472_)
                     (_f137435_ _hd137472_ (_recur137439_ _rest137471_))))
                  (_K137447137465_ (lambda () _iv137436_)))
              (let ((_try-match137444137468_
                     (lambda ()
                       (if (##null? _g137442137452_)
                           (_K137447137465_)
                           (_else137445137460_)))))
                (if (##pair? _g137442137452_)
                    (let ((_tl137450137479_ (##cdr _g137442137452_))
                          (_hd137449137477_ (##car _g137442137452_)))
                      (let ((_hd137482_ _hd137449137477_)
                            (_rest137484_ _tl137450137479_))
                        (_K137448137474_ _rest137484_ _hd137482_)))
                    (_try-match137444137468_))))))))
    (define gx#stx-reverse
      (lambda (_stx137433_) (gx#stx-foldl cons '() _stx137433_)))
    (define gx#stx-last
      (lambda (_stx137394_)
        (let _lp137396_ ((_rest137398_ _stx137394_))
          (let* ((_g137399137407_ (gx#syntax-e _rest137398_))
                 (_else137401137415_ (lambda () _rest137398_))
                 (_K137403137421_
                  (lambda (_rest137418_ _hd137419_)
                    (if (gx#stx-null? _rest137418_)
                        _hd137419_
                        (_lp137396_ _rest137418_)))))
            (if (##pair? _g137399137407_)
                (let ((_hd137404137424_ (##car _g137399137407_))
                      (_tl137405137426_ (##cdr _g137399137407_)))
                  (let* ((_hd137429_ _hd137404137424_)
                         (_rest137431_ _tl137405137426_))
                    (_K137403137421_ _rest137431_ _hd137429_)))
                (_else137401137415_))))))
    (define gx#stx-last-pair
      (lambda (_stx137365_)
        (let _lp137367_ ((_hd137369_ _stx137365_))
          (let* ((_g137370137377_ (gx#syntax-e _hd137369_))
                 (_E137372137381_
                  (lambda () (error '"No clause matching" _g137370137377_)))
                 (_K137373137386_
                  (lambda (_rest137384_)
                    (if (gx#stx-pair? _rest137384_)
                        (_lp137367_ _rest137384_)
                        _hd137369_))))
            (if (##pair? _g137370137377_)
                (let* ((_tl137375137389_ (##cdr _g137370137377_))
                       (_rest137392_ _tl137375137389_))
                  (_K137373137386_ _rest137392_))
                (_E137372137381_))))))
    (define gx#stx-list-tail
      (lambda (_stx137334_ _k137335_)
        (let _lp137337_ ((_rest137339_ _stx137334_) (_k137340_ _k137335_))
          (if (fxpositive? _k137340_)
              (let* ((_g137341137348_ (gx#syntax-e _rest137339_))
                     (_E137343137352_
                      (lambda ()
                        (error '"No clause matching" _g137341137348_)))
                     (_K137344137357_
                      (lambda (_rest137355_)
                        (_lp137337_ _rest137355_ (fx- _k137340_ '1)))))
                (if (##pair? _g137341137348_)
                    (let* ((_tl137346137360_ (##cdr _g137341137348_))
                           (_rest137363_ _tl137346137360_))
                      (_K137344137357_ _rest137363_))
                    (_E137343137352_)))
              _rest137339_))))
    (define gx#stx-list-ref
      (lambda (_stx137331_ _k137332_)
        (gx#stx-car (gx#stx-list-tail _stx137331_ _k137332_))))
    (define gx#stx-plist?__%
      (lambda (_stx137243_ _key?137244_)
        (if (procedure? _key?137244_)
            '#!void
            (error '"expected procedure" _key?137244_))
        (let _lp137246_ ((_rest137248_ _stx137243_))
          (let* ((_g137249137259_ (gx#stx-e _rest137248_))
                 (_else137252137267_ (lambda () '#f)))
            (let ((_K137255137309_
                   (lambda (_rest137278_ _hd137279_)
                     (if (_key?137244_ _hd137279_)
                         (let* ((_g137280137288_ (gx#stx-e _rest137278_))
                                (_else137282137296_ (lambda () '#f))
                                (_K137284137301_
                                 (lambda (_rest137299_)
                                   (_lp137246_ _rest137299_))))
                           (if (##pair? _g137280137288_)
                               (let* ((_tl137286137304_
                                       (##cdr _g137280137288_))
                                      (_rest137307_ _tl137286137304_))
                                 (_lp137246_ _rest137307_))
                               (_else137282137296_)))
                         '#f)))
                  (_K137254137272_ (lambda () '#t)))
              (let ((_try-match137251137275_
                     (lambda ()
                       (if (##null? _g137249137259_)
                           (_K137254137272_)
                           (_else137252137267_)))))
                (if (##pair? _g137249137259_)
                    (let ((_tl137257137314_ (##cdr _g137249137259_))
                          (_hd137256137312_ (##car _g137249137259_)))
                      (let ((_hd137317_ _hd137256137312_)
                            (_rest137319_ _tl137257137314_))
                        (_K137255137309_ _rest137319_ _hd137317_)))
                    (_try-match137251137275_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx137324_)
        (let ((_key?137326_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx137324_ _key?137326_))))
    (define gx#stx-plist?
      (lambda _g143000_
        (let ((_g142999_ (##length _g143000_)))
          (cond ((##fx= _g142999_ 1)
                 (apply (lambda (_stx137324_) (gx#stx-plist?__0 _stx137324_))
                        _g143000_))
                ((##fx= _g142999_ 2)
                 (apply (lambda (_stx137328_ _key?137329_)
                          (gx#stx-plist?__% _stx137328_ _key?137329_))
                        _g143000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g143000_))))))
    (define gx#stx-getq__%
      (lambda (_key137161_ _stx137162_ _key=?137163_)
        (if (procedure? _key=?137163_)
            '#!void
            (error '"expected procedure" _key=?137163_))
        (let _lp137165_ ((_rest137167_ _stx137162_))
          (let* ((_g137168137176_ (gx#syntax-e _rest137167_))
                 (_else137170137184_ (lambda () '#f))
                 (_K137172137218_
                  (lambda (_rest137187_ _hd137188_)
                    (let* ((_g137189137196_ (gx#syntax-e _rest137187_))
                           (_E137191137200_
                            (lambda ()
                              (error '"No clause matching" _g137189137196_)))
                           (_K137192137206_
                            (lambda (_rest137203_ _val137204_)
                              (if (_key=?137163_ _hd137188_ _key137161_)
                                  _val137204_
                                  (_lp137165_ _rest137203_)))))
                      (if (##pair? _g137189137196_)
                          (let ((_hd137193137209_ (##car _g137189137196_))
                                (_tl137194137211_ (##cdr _g137189137196_)))
                            (let* ((_val137214_ _hd137193137209_)
                                   (_rest137216_ _tl137194137211_))
                              (_K137192137206_ _rest137216_ _val137214_)))
                          (_E137191137200_))))))
            (if (##pair? _g137168137176_)
                (let ((_hd137173137221_ (##car _g137168137176_))
                      (_tl137174137223_ (##cdr _g137168137176_)))
                  (let* ((_hd137226_ _hd137173137221_)
                         (_rest137228_ _tl137174137223_))
                    (_K137172137218_ _rest137228_ _hd137226_)))
                (_else137170137184_))))))
    (define gx#stx-getq__0
      (lambda (_key137233_ _stx137234_)
        (let ((_key=?137236_ gx#stx-eq?))
          (gx#stx-getq__% _key137233_ _stx137234_ _key=?137236_))))
    (define gx#stx-getq
      (lambda _g143002_
        (let ((_g143001_ (##length _g143002_)))
          (cond ((##fx= _g143001_ 2)
                 (apply (lambda (_key137233_ _stx137234_)
                          (gx#stx-getq__0 _key137233_ _stx137234_))
                        _g143002_))
                ((##fx= _g143001_ 3)
                 (apply (lambda (_key137238_ _stx137239_ _key=?137240_)
                          (gx#stx-getq__%
                           _key137238_
                           _stx137239_
                           _key=?137240_))
                        _g143002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g143002_))))))))
