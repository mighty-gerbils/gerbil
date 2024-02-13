(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707847727)
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
      (lambda _$args138346_
        (apply make-instance gx#identifier-wrap::t _$args138346_)))
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
      (lambda _$args138343_
        (apply make-instance gx#syntax-wrap::t _$args138343_)))
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
      (lambda _$args138340_
        (apply make-instance gx#syntax-quote::t _$args138340_)))
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
      (lambda (_stx138338_) (symbol? (gx#stx-e _stx138338_))))
    (define gx#identifier-quote?
      (lambda (_stx138336_)
        (if (##structure-direct-instance-of? _stx138336_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx138336_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx138334_)
        (if (##structure-direct-instance-of? _stx138334_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx138334_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx138334_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx138332_)
        (if (##structure-direct-instance-of? _stx138332_ 'gx#syntax-quote::t)
            _stx138332_
            (if (##structure-direct-instance-of?
                 _stx138332_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx138332_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx138315_)
        (if (##structure-direct-instance-of? _stx138315_ 'gx#syntax-wrap::t)
            (let _lp138317_ ((_e138319_
                              (##unchecked-structure-ref
                               _stx138315_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks138320_
                              (cons (##unchecked-structure-ref
                                     _stx138315_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e138319_)
                  (let ((_$e138322_ (##type-id (##structure-type _e138319_))))
                    (if (eq? 'gx#syntax-wrap::t _$e138322_)
                        (_lp138317_
                         (##unchecked-structure-ref _e138319_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e138319_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks138320_))
                        (if (or (eq? 'gx#syntax-quote::t _$e138322_)
                                (eq? 'gx#identifier-wrap::t _$e138322_))
                            (##unchecked-structure-ref
                             _e138319_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e138322_)
                                (_lp138317_
                                 (##unchecked-structure-ref
                                  _e138319_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks138320_)
                                _e138319_))))
                  (if (null? _marks138320_)
                      _e138319_
                      (if (pair? _e138319_)
                          (cons (gx#stx-wrap (car _e138319_) _marks138320_)
                                (gx#stx-wrap (cdr _e138319_) _marks138320_))
                          (if (vector? _e138319_)
                              (vector-map
                               (lambda (_g138327138329_)
                                 (gx#stx-wrap _g138327138329_ _marks138320_))
                               _e138319_)
                              (if (box? _e138319_)
                                  (box (gx#stx-wrap
                                        (unbox _e138319_)
                                        _marks138320_))
                                  _e138319_))))))
            (if (##structure-instance-of? _stx138315_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138315_ '1 gx#AST::t '#f)
                _stx138315_))))
    (define gx#syntax->datum
      (lambda (_stx138313_)
        (if (##structure-instance-of? _stx138313_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx138313_ '1 gx#AST::t '#f))
            (if (pair? _stx138313_)
                (cons (gx#syntax->datum (car _stx138313_))
                      (gx#syntax->datum (cdr _stx138313_)))
                (if (vector? _stx138313_)
                    (vector-map gx#syntax->datum _stx138313_)
                    (if (box? _stx138313_)
                        (box (gx#syntax->datum (unbox _stx138313_)))
                        _stx138313_))))))
    (define gx#datum->syntax__%
      (lambda (_stx138256_ _datum138257_ _src138258_ _quote?138259_)
        (letrec ((_wrap-datum138261_
                  (lambda (_e138285_ _marks138286_)
                    (_wrap-inner138263_
                     _e138285_
                     (lambda (_g138287138289_)
                       (##structure
                        gx#identifier-wrap::t
                        _g138287138289_
                        _src138258_
                        _marks138286_)))))
                 (_wrap-quote138262_
                  (lambda (_e138277_ _ctx138278_ _marks138279_)
                    (_wrap-inner138263_
                     _e138277_
                     (lambda (_g138280138282_)
                       (##structure
                        gx#syntax-quote::t
                        _g138280138282_
                        _src138258_
                        _ctx138278_
                        _marks138279_)))))
                 (_wrap-inner138263_
                  (lambda (_e138270_ _wrap-e138271_)
                    (let _recur138273_ ((_e138275_ _e138270_))
                      (if (symbol? _e138275_)
                          (_wrap-e138271_ _e138275_)
                          (if (pair? _e138275_)
                              (cons (_recur138273_ (car _e138275_))
                                    (_recur138273_ (cdr _e138275_)))
                              (if (vector? _e138275_)
                                  (vector-map _recur138273_ _e138275_)
                                  (if (box? _e138275_)
                                      (box (_recur138273_ (unbox _e138275_)))
                                      _e138275_)))))))
                 (_wrap-outer138264_
                  (lambda (_e138268_)
                    (if (##structure-instance-of? _e138268_ 'gerbil#AST::t)
                        _e138268_
                        (##structure gx#AST::t _e138268_ _src138258_)))))
          (if (##structure-instance-of? _datum138257_ 'gerbil#AST::t)
              _datum138257_
              (if (not _stx138256_)
                  (##structure gx#AST::t _datum138257_ _src138258_)
                  (if (gx#identifier? _stx138256_)
                      (let ((_stx138266_ (gx#stx-unwrap__0 _stx138256_)))
                        (_wrap-outer138264_
                         (if (##structure-direct-instance-of?
                              _stx138266_
                              'gx#syntax-quote::t)
                             (if _quote?138259_
                                 (_wrap-quote138262_
                                  _datum138257_
                                  (##unchecked-structure-ref
                                   _stx138266_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx138266_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum138261_
                                  _datum138257_
                                  (##unchecked-structure-ref
                                   _stx138266_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum138261_
                              _datum138257_
                              (##unchecked-structure-ref
                               _stx138266_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx138256_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx138295_ _datum138296_)
        (let* ((_src138298_ '#f) (_quote?138300_ '#t))
          (gx#datum->syntax__%
           _stx138295_
           _datum138296_
           _src138298_
           _quote?138300_))))
    (define gx#datum->syntax__1
      (lambda (_stx138302_ _datum138303_ _src138304_)
        (let ((_quote?138306_ '#t))
          (gx#datum->syntax__%
           _stx138302_
           _datum138303_
           _src138304_
           _quote?138306_))))
    (define gx#datum->syntax
      (lambda _g142995_
        (let ((_g142994_ (##length _g142995_)))
          (cond ((##fx= _g142994_ 2)
                 (apply (lambda (_stx138295_ _datum138296_)
                          (gx#datum->syntax__0 _stx138295_ _datum138296_))
                        _g142995_))
                ((##fx= _g142994_ 3)
                 (apply (lambda (_stx138302_ _datum138303_ _src138304_)
                          (gx#datum->syntax__1
                           _stx138302_
                           _datum138303_
                           _src138304_))
                        _g142995_))
                ((##fx= _g142994_ 4)
                 (apply (lambda (_stx138308_
                                 _datum138309_
                                 _src138310_
                                 _quote?138311_)
                          (gx#datum->syntax__%
                           _stx138308_
                           _datum138309_
                           _src138310_
                           _quote?138311_))
                        _g142995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g142995_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx138232_ _marks138233_)
        (let _lp138235_ ((_e138237_ _stx138232_)
                         (_marks138238_ _marks138233_)
                         (_src138239_ (gx#stx-source _stx138232_)))
          (if (##structure-direct-instance-of? _e138237_ 'gx#syntax-wrap::t)
              (_lp138235_
               (##unchecked-structure-ref _e138237_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e138237_ '3 gx#syntax-wrap::t '#f)
                _marks138238_)
               (##unchecked-structure-ref _e138237_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e138237_
                   'gx#identifier-wrap::t)
                  (if (null? _marks138238_)
                      _e138237_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e138237_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e138237_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e138237_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks138238_)))
                  (if (##structure-direct-instance-of?
                       _e138237_
                       'gx#syntax-quote::t)
                      _e138237_
                      (if (##structure-instance-of? _e138237_ 'gerbil#AST::t)
                          (_lp138235_
                           (##unchecked-structure-ref
                            _e138237_
                            '1
                            gx#AST::t
                            '#f)
                           _marks138238_
                           (##unchecked-structure-ref
                            _e138237_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e138237_)
                              (##structure
                               gx#identifier-wrap::t
                               _e138237_
                               _src138239_
                               (reverse _marks138238_))
                              (if (null? _marks138238_)
                                  _e138237_
                                  (if (pair? _e138237_)
                                      (cons (gx#stx-wrap
                                             (car _e138237_)
                                             _marks138238_)
                                            (gx#stx-wrap
                                             (cdr _e138237_)
                                             _marks138238_))
                                      (if (vector? _e138237_)
                                          (vector-map
                                           (lambda (_g138240138242_)
                                             (gx#stx-wrap
                                              _g138240138242_
                                              _marks138238_))
                                           _e138237_)
                                          (if (box? _e138237_)
                                              (box (gx#stx-wrap
                                                    (unbox _e138237_)
                                                    _marks138238_))
                                              _e138237_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx138248_)
        (let ((_marks138250_ '()))
          (gx#stx-unwrap__% _stx138248_ _marks138250_))))
    (define gx#stx-unwrap
      (lambda _g142997_
        (let ((_g142996_ (##length _g142997_)))
          (cond ((##fx= _g142996_ 1)
                 (apply (lambda (_stx138248_) (gx#stx-unwrap__0 _stx138248_))
                        _g142997_))
                ((##fx= _g142996_ 2)
                 (apply (lambda (_stx138252_ _marks138253_)
                          (gx#stx-unwrap__% _stx138252_ _marks138253_))
                        _g142997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g142997_))))))
    (define gx#stx-wrap
      (lambda (_stx138225_ _marks138226_)
        (foldl1 (lambda (_mark138228_ _stx138229_)
                  (gx#stx-apply-mark _stx138229_ _mark138228_))
                _stx138225_
                _marks138226_)))
    (define gx#stx-rewrap
      (lambda (_stx138219_ _marks138220_)
        (foldr1 (lambda (_mark138222_ _stx138223_)
                  (gx#stx-apply-mark _stx138223_ _mark138222_))
                _stx138219_
                _marks138220_)))
    (define gx#stx-apply-mark
      (lambda (_stx138216_ _mark138217_)
        (if (##structure-direct-instance-of? _stx138216_ 'gx#syntax-quote::t)
            _stx138216_
            (if (and (##structure-direct-instance-of?
                      _stx138216_
                      'gx#syntax-wrap::t)
                     (eq? _mark138217_
                          (##unchecked-structure-ref
                           _stx138216_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx138216_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx138216_
                 (gx#stx-source _stx138216_)
                 _mark138217_)))))
    (define gx#apply-mark
      (lambda (_mark138180_ _marks138181_)
        (let* ((_marks138182138190_ _marks138181_)
               (_else138184138198_
                (lambda () (cons _mark138180_ _marks138181_)))
               (_K138186138204_
                (lambda (_rest138201_ _hd138202_)
                  (if (eq? _mark138180_ _hd138202_)
                      _rest138201_
                      (cons _mark138180_ _marks138181_)))))
          (if (##pair? _marks138182138190_)
              (let ((_hd138187138207_ (##car _marks138182138190_))
                    (_tl138188138209_ (##cdr _marks138182138190_)))
                (let* ((_hd138212_ _hd138187138207_)
                       (_rest138214_ _tl138188138209_))
                  (_K138186138204_ _rest138214_ _hd138212_)))
              (_else138184138198_)))))
    (define gx#stx-e
      (lambda (_stx138178_)
        (if (##structure-direct-instance-of? _stx138178_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx138178_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx138178_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138178_ '1 gx#AST::t '#f)
                _stx138178_))))
    (define gx#stx-source
      (lambda (_stx138176_)
        (if (##structure-instance-of? _stx138176_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx138176_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx138170_ _src138171_)
        (if (or (##structure-instance-of? _stx138170_ 'gerbil#AST::t)
                (not _src138171_))
            _stx138170_
            (##structure gx#AST::t _stx138170_ _src138171_))))
    (define gx#stx-datum?
      (lambda (_stx138168_) (gx#self-quoting? (gx#stx-e _stx138168_))))
    (define gx#self-quoting?
      (lambda (_x138151_)
        (let ((_$e138153_ (immediate? _x138151_)))
          (if _$e138153_
              _$e138153_
              (let ((_$e138156_ (number? _x138151_)))
                (if _$e138156_
                    _$e138156_
                    (let ((_$e138159_ (keyword? _x138151_)))
                      (if _$e138159_
                          _$e138159_
                          (let ((_$e138162_ (string? _x138151_)))
                            (if _$e138162_
                                _$e138162_
                                (let ((_$e138165_ (vector? _x138151_)))
                                  (if _$e138165_
                                      _$e138165_
                                      (u8vector? _x138151_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e138149_) (boolean? (gx#stx-e _e138149_))))
    (define gx#stx-keyword?
      (lambda (_e138147_) (keyword? (gx#stx-e _e138147_))))
    (define gx#stx-char? (lambda (_e138145_) (char? (gx#stx-e _e138145_))))
    (define gx#stx-number? (lambda (_e138143_) (number? (gx#stx-e _e138143_))))
    (define gx#stx-fixnum? (lambda (_e138141_) (fixnum? (gx#stx-e _e138141_))))
    (define gx#stx-string? (lambda (_e138139_) (string? (gx#stx-e _e138139_))))
    (define gx#stx-null? (lambda (_e138137_) (null? (gx#stx-e _e138137_))))
    (define gx#stx-pair? (lambda (_e138135_) (pair? (gx#stx-e _e138135_))))
    (define gx#stx-list?
      (lambda (_e138097_)
        (let* ((_g138098138107_ (gx#stx-e _e138097_))
               (_E138101138111_
                (lambda () (error '"No clause matching" _g138098138107_))))
          (let ((_K138103138127_
                 (lambda (_rest138125_) (gx#stx-list? _rest138125_)))
                (_K138102138117_ (lambda (_tail138115_) (null? _tail138115_))))
            (if (##pair? _g138098138107_)
                (let* ((_tl138105138130_ (##cdr _g138098138107_))
                       (_rest138133_ _tl138105138130_))
                  (gx#stx-list? _rest138133_))
                (let ((_tail138120_ _g138098138107_))
                  (null? _tail138120_)))))))
    (define gx#stx-pair/null?
      (lambda (_e138090_)
        (let* ((_e138092_ (gx#stx-e _e138090_)) (_$e138094_ (pair? _e138092_)))
          (if _$e138094_ _$e138094_ (null? _e138092_)))))
    (define gx#stx-vector? (lambda (_e138088_) (vector? (gx#stx-e _e138088_))))
    (define gx#stx-box? (lambda (_e138086_) (box? (gx#stx-e _e138086_))))
    (define gx#stx-eq?
      (lambda (_x138083_ _y138084_)
        (eq? (gx#stx-e _x138083_) (gx#stx-e _y138084_))))
    (define gx#stx-eqv?
      (lambda (_x138080_ _y138081_)
        (eqv? (gx#stx-e _x138080_) (gx#stx-e _y138081_))))
    (define gx#stx-equal?
      (lambda (_x138077_ _y138078_)
        (equal? (gx#stx-e _x138077_) (gx#stx-e _y138078_))))
    (define gx#stx-false? (lambda (_x138075_) (not (gx#stx-e _x138075_))))
    (define gx#stx-identifier
      (lambda (_template138072_ . _args138073_)
        (gx#datum->syntax__1
         _template138072_
         (apply make-symbol (gx#syntax->datum _args138073_))
         (gx#stx-source _template138072_))))
    (define gx#stx-identifier-marks
      (lambda (_stx138070_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx138070_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx138068_)
        (if (##structure-direct-instance-of?
             _stx138068_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx138068_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx138068_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx138068_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx138068_)))))
    (define gx#stx-identifier-context
      (lambda (_stx138064_)
        (let ((_stx138066_ (gx#stx-unwrap__0 _stx138064_)))
          (if (gx#identifier-quote? _stx138066_)
              (##unchecked-structure-ref _stx138066_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx138019_)
        (let* ((_g138020138030_ (gx#stx-e _stx138019_))
               (_else138023138038_ (lambda () '#f)))
          (let ((_K138026138052_
                 (lambda (_rest138049_ _hd138050_)
                   (if (gx#identifier? _hd138050_)
                       (gx#identifier-list? _rest138049_)
                       '#f)))
                (_K138025138043_ (lambda () '#t)))
            (let ((_try-match138022138046_
                   (lambda ()
                     (if (##null? _g138020138030_)
                         (_K138025138043_)
                         (_else138023138038_)))))
              (if (##pair? _g138020138030_)
                  (let ((_tl138028138057_ (##cdr _g138020138030_))
                        (_hd138027138055_ (##car _g138020138030_)))
                    (let ((_hd138060_ _hd138027138055_)
                          (_rest138062_ _tl138028138057_))
                      (_K138026138052_ _rest138062_ _hd138060_)))
                  (_try-match138022138046_)))))))
    (define gx#genident__%
      (lambda (_e137996_ _src137997_)
        (gx#stx-wrap-source
         (gensym (let ((_e137999_ (gx#stx-e _e137996_)))
                   (if (interned-symbol? _e137999_) _e137999_ 'g)))
         (let ((_$e138001_ (gx#stx-source _e137996_)))
           (if _$e138001_ _$e138001_ _src137997_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e138008_ 'g) (_src138010_ '#f))
          (gx#genident__% _e138008_ _src138010_))))
    (define gx#genident__1
      (lambda (_e138012_)
        (let ((_src138014_ '#f)) (gx#genident__% _e138012_ _src138014_))))
    (define gx#genident
      (lambda _g142999_
        (let ((_g142998_ (##length _g142999_)))
          (cond ((##fx= _g142998_ 0)
                 (apply (lambda () (gx#genident__0)) _g142999_))
                ((##fx= _g142998_ 1)
                 (apply (lambda (_e138012_) (gx#genident__1 _e138012_))
                        _g142999_))
                ((##fx= _g142998_ 2)
                 (apply (lambda (_e138016_ _src138017_)
                          (gx#genident__% _e138016_ _src138017_))
                        _g142999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g142999_))))))
    (define gx#gentemps
      (lambda (_stx-lst137993_) (gx#stx-map1 gx#genident _stx-lst137993_)))
    (define gx#syntax->list
      (lambda (_stx137991_) (gx#stx-map1 values _stx137991_)))
    (define gx#stx-car
      (lambda (_stx137988_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx137988_)))))
    (define gx#stx-cdr
      (lambda (_stx137985_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx137985_)))))
    (define gx#stx-length
      (lambda (_stx137950_)
        (let _lp137952_ ((_rest137954_ _stx137950_) (_n137955_ '0))
          (let* ((_g137956137964_ (gx#stx-e _rest137954_))
                 (_else137958137972_ (lambda () _n137955_))
                 (_K137960137977_
                  (lambda (_rest137975_)
                    (_lp137952_ _rest137975_ (fx+ _n137955_ '1)))))
            (if (##pair? _g137956137964_)
                (let* ((_tl137962137980_ (##cdr _g137956137964_))
                       (_rest137983_ _tl137962137980_))
                  (_K137960137977_ _rest137983_))
                (_else137958137972_))))))
    (define gx#stx-for-each
      (lambda _g143001_
        (let ((_g143000_ (##length _g143001_)))
          (cond ((##fx= _g143000_ 2)
                 (apply (lambda (_f137943_ _stx137944_)
                          (gx#stx-for-each1 _f137943_ _stx137944_))
                        _g143001_))
                ((##fx= _g143000_ 3)
                 (apply (lambda (_f137946_ _xstx137947_ _ystx137948_)
                          (gx#stx-for-each2
                           _f137946_
                           _xstx137947_
                           _ystx137948_))
                        _g143001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g143001_))))))
    (define gx#stx-for-each1
      (lambda (_f137893_ _stx137894_)
        (if (procedure? _f137893_)
            '#!void
            (error '"expected procedure" _f137893_))
        (let _lp137896_ ((_rest137898_ _stx137894_))
          (let* ((_g137899137909_ (gx#syntax-e _rest137898_))
                 (_else137902137917_ (lambda () (_f137893_ _rest137898_))))
            (let ((_K137905137931_
                   (lambda (_rest137928_ _hd137929_)
                     (_f137893_ _hd137929_)
                     (_lp137896_ _rest137928_)))
                  (_K137904137922_ (lambda () '#!void)))
              (let ((_try-match137901137925_
                     (lambda ()
                       (if (##null? _g137899137909_)
                           (_K137904137922_)
                           (_else137902137917_)))))
                (if (##pair? _g137899137909_)
                    (let ((_tl137907137936_ (##cdr _g137899137909_))
                          (_hd137906137934_ (##car _g137899137909_)))
                      (let ((_hd137939_ _hd137906137934_)
                            (_rest137941_ _tl137907137936_))
                        (_K137905137931_ _rest137941_ _hd137939_)))
                    (_try-match137901137925_))))))))
    (define gx#stx-for-each2
      (lambda (_f137798_ _xstx137799_ _ystx137800_)
        (if (procedure? _f137798_)
            '#!void
            (error '"expected procedure" _f137798_))
        (let _lp137802_ ((_xrest137804_ _xstx137799_)
                         (_yrest137805_ _ystx137800_))
          (let* ((_g137806137816_ (gx#syntax-e _xrest137804_))
                 (_else137809137824_ (lambda () '#!void)))
            (let ((_K137812137881_
                   (lambda (_xrest137850_ _xhd137851_)
                     (let* ((_g137852137859_ (gx#syntax-e _yrest137805_))
                            (_E137854137863_
                             (lambda ()
                               (error '"No clause matching" _g137852137859_)))
                            (_K137855137869_
                             (lambda (_yrest137866_ _yhd137867_)
                               (_f137798_ _xhd137851_ _yhd137867_)
                               (_lp137802_ _xrest137850_ _yrest137866_))))
                       (if (##pair? _g137852137859_)
                           (let ((_hd137856137872_ (##car _g137852137859_))
                                 (_tl137857137874_ (##cdr _g137852137859_)))
                             (let* ((_yhd137877_ _hd137856137872_)
                                    (_yrest137879_ _tl137857137874_))
                               (_K137855137869_ _yrest137879_ _yhd137877_)))
                           (_E137854137863_)))))
                  (_K137811137844_
                   (lambda ()
                     (let* ((_yrest137828137833_ _yrest137805_)
                            (_E137830137837_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137828137833_)))
                            (_K137831137841_
                             (lambda ()
                               (_f137798_ _xrest137804_ _yrest137805_))))
                       (if (not (gx#stx-null? _yrest137828137833_))
                           (_K137831137841_)
                           (_E137830137837_))))))
              (let ((_try-match137808137847_
                     (lambda ()
                       (if (not (null? _g137806137816_))
                           (_K137811137844_)
                           (_else137809137824_)))))
                (if (##pair? _g137806137816_)
                    (let ((_tl137814137886_ (##cdr _g137806137816_))
                          (_hd137813137884_ (##car _g137806137816_)))
                      (let ((_xhd137889_ _hd137813137884_)
                            (_xrest137891_ _tl137814137886_))
                        (_K137812137881_ _xrest137891_ _xhd137889_)))
                    (_try-match137808137847_))))))))
    (define gx#stx-map
      (lambda _g143003_
        (let ((_g143002_ (##length _g143003_)))
          (cond ((##fx= _g143002_ 2)
                 (apply (lambda (_f137791_ _stx137792_)
                          (gx#stx-map1 _f137791_ _stx137792_))
                        _g143003_))
                ((##fx= _g143002_ 3)
                 (apply (lambda (_f137794_ _xstx137795_ _ystx137796_)
                          (gx#stx-map2 _f137794_ _xstx137795_ _ystx137796_))
                        _g143003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g143003_))))))
    (define gx#stx-map1
      (lambda (_f137741_ _stx137742_)
        (if (procedure? _f137741_)
            '#!void
            (error '"expected procedure" _f137741_))
        (let _recur137744_ ((_rest137746_ _stx137742_))
          (let* ((_g137747137757_ (gx#syntax-e _rest137746_))
                 (_else137750137765_ (lambda () (_f137741_ _rest137746_))))
            (let ((_K137753137779_
                   (lambda (_rest137776_ _hd137777_)
                     (cons (_f137741_ _hd137777_)
                           (_recur137744_ _rest137776_))))
                  (_K137752137770_ (lambda () '())))
              (let ((_try-match137749137773_
                     (lambda ()
                       (if (##null? _g137747137757_)
                           (_K137752137770_)
                           (_else137750137765_)))))
                (if (##pair? _g137747137757_)
                    (let ((_tl137755137784_ (##cdr _g137747137757_))
                          (_hd137754137782_ (##car _g137747137757_)))
                      (let ((_hd137787_ _hd137754137782_)
                            (_rest137789_ _tl137755137784_))
                        (_K137753137779_ _rest137789_ _hd137787_)))
                    (_try-match137749137773_))))))))
    (define gx#stx-map2
      (lambda (_f137646_ _xstx137647_ _ystx137648_)
        (if (procedure? _f137646_)
            '#!void
            (error '"expected procedure" _f137646_))
        (let _recur137650_ ((_xrest137652_ _xstx137647_)
                            (_yrest137653_ _ystx137648_))
          (let* ((_g137654137664_ (gx#syntax-e _xrest137652_))
                 (_else137657137672_ (lambda () '())))
            (let ((_K137660137729_
                   (lambda (_xrest137698_ _xhd137699_)
                     (let* ((_g137700137707_ (gx#syntax-e _yrest137653_))
                            (_E137702137711_
                             (lambda ()
                               (error '"No clause matching" _g137700137707_)))
                            (_K137703137717_
                             (lambda (_yrest137714_ _yhd137715_)
                               (cons (_f137646_ _xhd137699_ _yhd137715_)
                                     (_recur137650_
                                      _xrest137698_
                                      _yrest137714_)))))
                       (if (##pair? _g137700137707_)
                           (let ((_hd137704137720_ (##car _g137700137707_))
                                 (_tl137705137722_ (##cdr _g137700137707_)))
                             (let* ((_yhd137725_ _hd137704137720_)
                                    (_yrest137727_ _tl137705137722_))
                               (_K137703137717_ _yrest137727_ _yhd137725_)))
                           (_E137702137711_)))))
                  (_K137659137692_
                   (lambda ()
                     (let* ((_yrest137676137681_ _yrest137653_)
                            (_E137678137685_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137676137681_)))
                            (_K137679137689_
                             (lambda ()
                               (_f137646_ _xrest137652_ _yrest137653_))))
                       (if (not (gx#stx-null? _yrest137676137681_))
                           (_K137679137689_)
                           (_E137678137685_))))))
              (let ((_try-match137656137695_
                     (lambda ()
                       (if (not (null? _g137654137664_))
                           (_K137659137692_)
                           (_else137657137672_)))))
                (if (##pair? _g137654137664_)
                    (let ((_tl137662137734_ (##cdr _g137654137664_))
                          (_hd137661137732_ (##car _g137654137664_)))
                      (let ((_xhd137737_ _hd137661137732_)
                            (_xrest137739_ _tl137662137734_))
                        (_K137660137729_ _xrest137739_ _xhd137737_)))
                    (_try-match137656137695_))))))))
    (define gx#stx-andmap
      (lambda (_f137596_ _stx137597_)
        (if (procedure? _f137596_)
            '#!void
            (error '"expected procedure" _f137596_))
        (let _lp137599_ ((_rest137601_ _stx137597_))
          (let* ((_g137602137612_ (gx#syntax-e _rest137601_))
                 (_else137605137620_ (lambda () (_f137596_ _rest137601_))))
            (let ((_K137608137634_
                   (lambda (_rest137631_ _hd137632_)
                     (if (_f137596_ _hd137632_)
                         (_lp137599_ _rest137631_)
                         '#f)))
                  (_K137607137625_ (lambda () '#t)))
              (let ((_try-match137604137628_
                     (lambda ()
                       (if (##null? _g137602137612_)
                           (_K137607137625_)
                           (_else137605137620_)))))
                (if (##pair? _g137602137612_)
                    (let ((_tl137610137639_ (##cdr _g137602137612_))
                          (_hd137609137637_ (##car _g137602137612_)))
                      (let ((_hd137642_ _hd137609137637_)
                            (_rest137644_ _tl137610137639_))
                        (_K137608137634_ _rest137644_ _hd137642_)))
                    (_try-match137604137628_))))))))
    (define gx#stx-ormap
      (lambda (_f137543_ _stx137544_)
        (if (procedure? _f137543_)
            '#!void
            (error '"expected procedure" _f137543_))
        (let _lp137546_ ((_rest137548_ _stx137544_))
          (let* ((_g137549137559_ (gx#syntax-e _rest137548_))
                 (_else137552137567_ (lambda () (_f137543_ _rest137548_))))
            (let ((_K137555137584_
                   (lambda (_rest137578_ _hd137579_)
                     (let ((_$e137581_ (_f137543_ _hd137579_)))
                       (if _$e137581_ _$e137581_ (_lp137546_ _rest137578_)))))
                  (_K137554137572_ (lambda () '#f)))
              (let ((_try-match137551137575_
                     (lambda ()
                       (if (##null? _g137549137559_)
                           (_K137554137572_)
                           (_else137552137567_)))))
                (if (##pair? _g137549137559_)
                    (let ((_tl137557137589_ (##cdr _g137549137559_))
                          (_hd137556137587_ (##car _g137549137559_)))
                      (let ((_hd137592_ _hd137556137587_)
                            (_rest137594_ _tl137557137589_))
                        (_K137555137584_ _rest137594_ _hd137592_)))
                    (_try-match137551137575_))))))))
    (define gx#stx-foldl
      (lambda (_f137491_ _iv137492_ _stx137493_)
        (if (procedure? _f137491_)
            '#!void
            (error '"expected procedure" _f137491_))
        (let _lp137495_ ((_r137497_ _iv137492_) (_rest137498_ _stx137493_))
          (let* ((_g137499137509_ (gx#syntax-e _rest137498_))
                 (_else137502137517_
                  (lambda () (_f137491_ _rest137498_ _r137497_))))
            (let ((_K137505137531_
                   (lambda (_rest137528_ _hd137529_)
                     (_lp137495_
                      (_f137491_ _hd137529_ _r137497_)
                      _rest137528_)))
                  (_K137504137522_ (lambda () _r137497_)))
              (let ((_try-match137501137525_
                     (lambda ()
                       (if (##null? _g137499137509_)
                           (_K137504137522_)
                           (_else137502137517_)))))
                (if (##pair? _g137499137509_)
                    (let ((_tl137507137536_ (##cdr _g137499137509_))
                          (_hd137506137534_ (##car _g137499137509_)))
                      (let ((_hd137539_ _hd137506137534_)
                            (_rest137541_ _tl137507137536_))
                        (_K137505137531_ _rest137541_ _hd137539_)))
                    (_try-match137501137525_))))))))
    (define gx#stx-foldr
      (lambda (_f137440_ _iv137441_ _stx137442_)
        (if (procedure? _f137440_)
            '#!void
            (error '"expected procedure" _f137440_))
        (let _recur137444_ ((_rest137446_ _stx137442_))
          (let* ((_g137447137457_ (gx#syntax-e _rest137446_))
                 (_else137450137465_
                  (lambda () (_f137440_ _rest137446_ _iv137441_))))
            (let ((_K137453137479_
                   (lambda (_rest137476_ _hd137477_)
                     (_f137440_ _hd137477_ (_recur137444_ _rest137476_))))
                  (_K137452137470_ (lambda () _iv137441_)))
              (let ((_try-match137449137473_
                     (lambda ()
                       (if (##null? _g137447137457_)
                           (_K137452137470_)
                           (_else137450137465_)))))
                (if (##pair? _g137447137457_)
                    (let ((_tl137455137484_ (##cdr _g137447137457_))
                          (_hd137454137482_ (##car _g137447137457_)))
                      (let ((_hd137487_ _hd137454137482_)
                            (_rest137489_ _tl137455137484_))
                        (_K137453137479_ _rest137489_ _hd137487_)))
                    (_try-match137449137473_))))))))
    (define gx#stx-reverse
      (lambda (_stx137438_) (gx#stx-foldl cons '() _stx137438_)))
    (define gx#stx-last
      (lambda (_stx137399_)
        (let _lp137401_ ((_rest137403_ _stx137399_))
          (let* ((_g137404137412_ (gx#syntax-e _rest137403_))
                 (_else137406137420_ (lambda () _rest137403_))
                 (_K137408137426_
                  (lambda (_rest137423_ _hd137424_)
                    (if (gx#stx-null? _rest137423_)
                        _hd137424_
                        (_lp137401_ _rest137423_)))))
            (if (##pair? _g137404137412_)
                (let ((_hd137409137429_ (##car _g137404137412_))
                      (_tl137410137431_ (##cdr _g137404137412_)))
                  (let* ((_hd137434_ _hd137409137429_)
                         (_rest137436_ _tl137410137431_))
                    (_K137408137426_ _rest137436_ _hd137434_)))
                (_else137406137420_))))))
    (define gx#stx-last-pair
      (lambda (_stx137370_)
        (let _lp137372_ ((_hd137374_ _stx137370_))
          (let* ((_g137375137382_ (gx#syntax-e _hd137374_))
                 (_E137377137386_
                  (lambda () (error '"No clause matching" _g137375137382_)))
                 (_K137378137391_
                  (lambda (_rest137389_)
                    (if (gx#stx-pair? _rest137389_)
                        (_lp137372_ _rest137389_)
                        _hd137374_))))
            (if (##pair? _g137375137382_)
                (let* ((_tl137380137394_ (##cdr _g137375137382_))
                       (_rest137397_ _tl137380137394_))
                  (_K137378137391_ _rest137397_))
                (_E137377137386_))))))
    (define gx#stx-list-tail
      (lambda (_stx137339_ _k137340_)
        (let _lp137342_ ((_rest137344_ _stx137339_) (_k137345_ _k137340_))
          (if (fxpositive? _k137345_)
              (let* ((_g137346137353_ (gx#syntax-e _rest137344_))
                     (_E137348137357_
                      (lambda ()
                        (error '"No clause matching" _g137346137353_)))
                     (_K137349137362_
                      (lambda (_rest137360_)
                        (_lp137342_ _rest137360_ (fx- _k137345_ '1)))))
                (if (##pair? _g137346137353_)
                    (let* ((_tl137351137365_ (##cdr _g137346137353_))
                           (_rest137368_ _tl137351137365_))
                      (_K137349137362_ _rest137368_))
                    (_E137348137357_)))
              _rest137344_))))
    (define gx#stx-list-ref
      (lambda (_stx137336_ _k137337_)
        (gx#stx-car (gx#stx-list-tail _stx137336_ _k137337_))))
    (define gx#stx-plist?__%
      (lambda (_stx137248_ _key?137249_)
        (if (procedure? _key?137249_)
            '#!void
            (error '"expected procedure" _key?137249_))
        (let _lp137251_ ((_rest137253_ _stx137248_))
          (let* ((_g137254137264_ (gx#stx-e _rest137253_))
                 (_else137257137272_ (lambda () '#f)))
            (let ((_K137260137314_
                   (lambda (_rest137283_ _hd137284_)
                     (if (_key?137249_ _hd137284_)
                         (let* ((_g137285137293_ (gx#stx-e _rest137283_))
                                (_else137287137301_ (lambda () '#f))
                                (_K137289137306_
                                 (lambda (_rest137304_)
                                   (_lp137251_ _rest137304_))))
                           (if (##pair? _g137285137293_)
                               (let* ((_tl137291137309_
                                       (##cdr _g137285137293_))
                                      (_rest137312_ _tl137291137309_))
                                 (_lp137251_ _rest137312_))
                               (_else137287137301_)))
                         '#f)))
                  (_K137259137277_ (lambda () '#t)))
              (let ((_try-match137256137280_
                     (lambda ()
                       (if (##null? _g137254137264_)
                           (_K137259137277_)
                           (_else137257137272_)))))
                (if (##pair? _g137254137264_)
                    (let ((_tl137262137319_ (##cdr _g137254137264_))
                          (_hd137261137317_ (##car _g137254137264_)))
                      (let ((_hd137322_ _hd137261137317_)
                            (_rest137324_ _tl137262137319_))
                        (_K137260137314_ _rest137324_ _hd137322_)))
                    (_try-match137256137280_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx137329_)
        (let ((_key?137331_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx137329_ _key?137331_))))
    (define gx#stx-plist?
      (lambda _g143005_
        (let ((_g143004_ (##length _g143005_)))
          (cond ((##fx= _g143004_ 1)
                 (apply (lambda (_stx137329_) (gx#stx-plist?__0 _stx137329_))
                        _g143005_))
                ((##fx= _g143004_ 2)
                 (apply (lambda (_stx137333_ _key?137334_)
                          (gx#stx-plist?__% _stx137333_ _key?137334_))
                        _g143005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g143005_))))))
    (define gx#stx-getq__%
      (lambda (_key137166_ _stx137167_ _key=?137168_)
        (if (procedure? _key=?137168_)
            '#!void
            (error '"expected procedure" _key=?137168_))
        (let _lp137170_ ((_rest137172_ _stx137167_))
          (let* ((_g137173137181_ (gx#syntax-e _rest137172_))
                 (_else137175137189_ (lambda () '#f))
                 (_K137177137223_
                  (lambda (_rest137192_ _hd137193_)
                    (let* ((_g137194137201_ (gx#syntax-e _rest137192_))
                           (_E137196137205_
                            (lambda ()
                              (error '"No clause matching" _g137194137201_)))
                           (_K137197137211_
                            (lambda (_rest137208_ _val137209_)
                              (if (_key=?137168_ _hd137193_ _key137166_)
                                  _val137209_
                                  (_lp137170_ _rest137208_)))))
                      (if (##pair? _g137194137201_)
                          (let ((_hd137198137214_ (##car _g137194137201_))
                                (_tl137199137216_ (##cdr _g137194137201_)))
                            (let* ((_val137219_ _hd137198137214_)
                                   (_rest137221_ _tl137199137216_))
                              (_K137197137211_ _rest137221_ _val137219_)))
                          (_E137196137205_))))))
            (if (##pair? _g137173137181_)
                (let ((_hd137178137226_ (##car _g137173137181_))
                      (_tl137179137228_ (##cdr _g137173137181_)))
                  (let* ((_hd137231_ _hd137178137226_)
                         (_rest137233_ _tl137179137228_))
                    (_K137177137223_ _rest137233_ _hd137231_)))
                (_else137175137189_))))))
    (define gx#stx-getq__0
      (lambda (_key137238_ _stx137239_)
        (let ((_key=?137241_ gx#stx-eq?))
          (gx#stx-getq__% _key137238_ _stx137239_ _key=?137241_))))
    (define gx#stx-getq
      (lambda _g143007_
        (let ((_g143006_ (##length _g143007_)))
          (cond ((##fx= _g143006_ 2)
                 (apply (lambda (_key137238_ _stx137239_)
                          (gx#stx-getq__0 _key137238_ _stx137239_))
                        _g143007_))
                ((##fx= _g143006_ 3)
                 (apply (lambda (_key137243_ _stx137244_ _key=?137245_)
                          (gx#stx-getq__%
                           _key137243_
                           _stx137244_
                           _key=?137245_))
                        _g143007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g143007_))))))))
