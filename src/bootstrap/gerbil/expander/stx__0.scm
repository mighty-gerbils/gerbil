(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707844655)
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
      (lambda _$args138345_
        (apply make-instance gx#identifier-wrap::t _$args138345_)))
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
      (lambda _$args138342_
        (apply make-instance gx#syntax-wrap::t _$args138342_)))
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
      (lambda _$args138339_
        (apply make-instance gx#syntax-quote::t _$args138339_)))
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
      (lambda (_stx138337_) (symbol? (gx#stx-e _stx138337_))))
    (define gx#identifier-quote?
      (lambda (_stx138335_)
        (if (##structure-direct-instance-of? _stx138335_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx138335_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx138333_)
        (if (##structure-direct-instance-of? _stx138333_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx138333_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx138333_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx138331_)
        (if (##structure-direct-instance-of? _stx138331_ 'gx#syntax-quote::t)
            _stx138331_
            (if (##structure-direct-instance-of?
                 _stx138331_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx138331_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx138314_)
        (if (##structure-direct-instance-of? _stx138314_ 'gx#syntax-wrap::t)
            (let _lp138316_ ((_e138318_
                              (##unchecked-structure-ref
                               _stx138314_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks138319_
                              (cons (##unchecked-structure-ref
                                     _stx138314_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e138318_)
                  (let ((_$e138321_ (##type-id (##structure-type _e138318_))))
                    (if (eq? 'gx#syntax-wrap::t _$e138321_)
                        (_lp138316_
                         (##unchecked-structure-ref _e138318_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e138318_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks138319_))
                        (if (or (eq? 'gx#syntax-quote::t _$e138321_)
                                (eq? 'gx#identifier-wrap::t _$e138321_))
                            (##unchecked-structure-ref
                             _e138318_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e138321_)
                                (_lp138316_
                                 (##unchecked-structure-ref
                                  _e138318_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks138319_)
                                _e138318_))))
                  (if (null? _marks138319_)
                      _e138318_
                      (if (pair? _e138318_)
                          (cons (gx#stx-wrap (car _e138318_) _marks138319_)
                                (gx#stx-wrap (cdr _e138318_) _marks138319_))
                          (if (vector? _e138318_)
                              (vector-map
                               (lambda (_g138326138328_)
                                 (gx#stx-wrap _g138326138328_ _marks138319_))
                               _e138318_)
                              (if (box? _e138318_)
                                  (box (gx#stx-wrap
                                        (unbox _e138318_)
                                        _marks138319_))
                                  _e138318_))))))
            (if (##structure-instance-of? _stx138314_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138314_ '1 gx#AST::t '#f)
                _stx138314_))))
    (define gx#syntax->datum
      (lambda (_stx138312_)
        (if (##structure-instance-of? _stx138312_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx138312_ '1 gx#AST::t '#f))
            (if (pair? _stx138312_)
                (cons (gx#syntax->datum (car _stx138312_))
                      (gx#syntax->datum (cdr _stx138312_)))
                (if (vector? _stx138312_)
                    (vector-map gx#syntax->datum _stx138312_)
                    (if (box? _stx138312_)
                        (box (gx#syntax->datum (unbox _stx138312_)))
                        _stx138312_))))))
    (define gx#datum->syntax__%
      (lambda (_stx138255_ _datum138256_ _src138257_ _quote?138258_)
        (letrec ((_wrap-datum138260_
                  (lambda (_e138284_ _marks138285_)
                    (_wrap-inner138262_
                     _e138284_
                     (lambda (_g138286138288_)
                       (##structure
                        gx#identifier-wrap::t
                        _g138286138288_
                        _src138257_
                        _marks138285_)))))
                 (_wrap-quote138261_
                  (lambda (_e138276_ _ctx138277_ _marks138278_)
                    (_wrap-inner138262_
                     _e138276_
                     (lambda (_g138279138281_)
                       (##structure
                        gx#syntax-quote::t
                        _g138279138281_
                        _src138257_
                        _ctx138277_
                        _marks138278_)))))
                 (_wrap-inner138262_
                  (lambda (_e138269_ _wrap-e138270_)
                    (let _recur138272_ ((_e138274_ _e138269_))
                      (if (symbol? _e138274_)
                          (_wrap-e138270_ _e138274_)
                          (if (pair? _e138274_)
                              (cons (_recur138272_ (car _e138274_))
                                    (_recur138272_ (cdr _e138274_)))
                              (if (vector? _e138274_)
                                  (vector-map _recur138272_ _e138274_)
                                  (if (box? _e138274_)
                                      (box (_recur138272_ (unbox _e138274_)))
                                      _e138274_)))))))
                 (_wrap-outer138263_
                  (lambda (_e138267_)
                    (if (##structure-instance-of? _e138267_ 'gerbil#AST::t)
                        _e138267_
                        (##structure gx#AST::t _e138267_ _src138257_)))))
          (if (##structure-instance-of? _datum138256_ 'gerbil#AST::t)
              _datum138256_
              (if (not _stx138255_)
                  (##structure gx#AST::t _datum138256_ _src138257_)
                  (if (gx#identifier? _stx138255_)
                      (let ((_stx138265_ (gx#stx-unwrap__0 _stx138255_)))
                        (_wrap-outer138263_
                         (if (##structure-direct-instance-of?
                              _stx138265_
                              'gx#syntax-quote::t)
                             (if _quote?138258_
                                 (_wrap-quote138261_
                                  _datum138256_
                                  (##unchecked-structure-ref
                                   _stx138265_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx138265_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum138260_
                                  _datum138256_
                                  (##unchecked-structure-ref
                                   _stx138265_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum138260_
                              _datum138256_
                              (##unchecked-structure-ref
                               _stx138265_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx138255_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx138294_ _datum138295_)
        (let* ((_src138297_ '#f) (_quote?138299_ '#t))
          (gx#datum->syntax__%
           _stx138294_
           _datum138295_
           _src138297_
           _quote?138299_))))
    (define gx#datum->syntax__1
      (lambda (_stx138301_ _datum138302_ _src138303_)
        (let ((_quote?138305_ '#t))
          (gx#datum->syntax__%
           _stx138301_
           _datum138302_
           _src138303_
           _quote?138305_))))
    (define gx#datum->syntax
      (lambda _g142994_
        (let ((_g142993_ (##length _g142994_)))
          (cond ((##fx= _g142993_ 2)
                 (apply (lambda (_stx138294_ _datum138295_)
                          (gx#datum->syntax__0 _stx138294_ _datum138295_))
                        _g142994_))
                ((##fx= _g142993_ 3)
                 (apply (lambda (_stx138301_ _datum138302_ _src138303_)
                          (gx#datum->syntax__1
                           _stx138301_
                           _datum138302_
                           _src138303_))
                        _g142994_))
                ((##fx= _g142993_ 4)
                 (apply (lambda (_stx138307_
                                 _datum138308_
                                 _src138309_
                                 _quote?138310_)
                          (gx#datum->syntax__%
                           _stx138307_
                           _datum138308_
                           _src138309_
                           _quote?138310_))
                        _g142994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g142994_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx138231_ _marks138232_)
        (let _lp138234_ ((_e138236_ _stx138231_)
                         (_marks138237_ _marks138232_)
                         (_src138238_ (gx#stx-source _stx138231_)))
          (if (##structure-direct-instance-of? _e138236_ 'gx#syntax-wrap::t)
              (_lp138234_
               (##unchecked-structure-ref _e138236_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e138236_ '3 gx#syntax-wrap::t '#f)
                _marks138237_)
               (##unchecked-structure-ref _e138236_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e138236_
                   'gx#identifier-wrap::t)
                  (if (null? _marks138237_)
                      _e138236_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e138236_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e138236_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e138236_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks138237_)))
                  (if (##structure-direct-instance-of?
                       _e138236_
                       'gx#syntax-quote::t)
                      _e138236_
                      (if (##structure-instance-of? _e138236_ 'gerbil#AST::t)
                          (_lp138234_
                           (##unchecked-structure-ref
                            _e138236_
                            '1
                            gx#AST::t
                            '#f)
                           _marks138237_
                           (##unchecked-structure-ref
                            _e138236_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e138236_)
                              (##structure
                               gx#identifier-wrap::t
                               _e138236_
                               _src138238_
                               (reverse _marks138237_))
                              (if (null? _marks138237_)
                                  _e138236_
                                  (if (pair? _e138236_)
                                      (cons (gx#stx-wrap
                                             (car _e138236_)
                                             _marks138237_)
                                            (gx#stx-wrap
                                             (cdr _e138236_)
                                             _marks138237_))
                                      (if (vector? _e138236_)
                                          (vector-map
                                           (lambda (_g138239138241_)
                                             (gx#stx-wrap
                                              _g138239138241_
                                              _marks138237_))
                                           _e138236_)
                                          (if (box? _e138236_)
                                              (box (gx#stx-wrap
                                                    (unbox _e138236_)
                                                    _marks138237_))
                                              _e138236_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx138247_)
        (let ((_marks138249_ '()))
          (gx#stx-unwrap__% _stx138247_ _marks138249_))))
    (define gx#stx-unwrap
      (lambda _g142996_
        (let ((_g142995_ (##length _g142996_)))
          (cond ((##fx= _g142995_ 1)
                 (apply (lambda (_stx138247_) (gx#stx-unwrap__0 _stx138247_))
                        _g142996_))
                ((##fx= _g142995_ 2)
                 (apply (lambda (_stx138251_ _marks138252_)
                          (gx#stx-unwrap__% _stx138251_ _marks138252_))
                        _g142996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g142996_))))))
    (define gx#stx-wrap
      (lambda (_stx138224_ _marks138225_)
        (foldl1 (lambda (_mark138227_ _stx138228_)
                  (gx#stx-apply-mark _stx138228_ _mark138227_))
                _stx138224_
                _marks138225_)))
    (define gx#stx-rewrap
      (lambda (_stx138218_ _marks138219_)
        (foldr1 (lambda (_mark138221_ _stx138222_)
                  (gx#stx-apply-mark _stx138222_ _mark138221_))
                _stx138218_
                _marks138219_)))
    (define gx#stx-apply-mark
      (lambda (_stx138215_ _mark138216_)
        (if (##structure-direct-instance-of? _stx138215_ 'gx#syntax-quote::t)
            _stx138215_
            (if (and (##structure-direct-instance-of?
                      _stx138215_
                      'gx#syntax-wrap::t)
                     (eq? _mark138216_
                          (##unchecked-structure-ref
                           _stx138215_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx138215_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx138215_
                 (gx#stx-source _stx138215_)
                 _mark138216_)))))
    (define gx#apply-mark
      (lambda (_mark138179_ _marks138180_)
        (let* ((_marks138181138189_ _marks138180_)
               (_else138183138197_
                (lambda () (cons _mark138179_ _marks138180_)))
               (_K138185138203_
                (lambda (_rest138200_ _hd138201_)
                  (if (eq? _mark138179_ _hd138201_)
                      _rest138200_
                      (cons _mark138179_ _marks138180_)))))
          (if (##pair? _marks138181138189_)
              (let ((_hd138186138206_ (##car _marks138181138189_))
                    (_tl138187138208_ (##cdr _marks138181138189_)))
                (let* ((_hd138211_ _hd138186138206_)
                       (_rest138213_ _tl138187138208_))
                  (_K138185138203_ _rest138213_ _hd138211_)))
              (_else138183138197_)))))
    (define gx#stx-e
      (lambda (_stx138177_)
        (if (##structure-direct-instance-of? _stx138177_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx138177_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx138177_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx138177_ '1 gx#AST::t '#f)
                _stx138177_))))
    (define gx#stx-source
      (lambda (_stx138175_)
        (if (##structure-instance-of? _stx138175_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx138175_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx138169_ _src138170_)
        (if (or (##structure-instance-of? _stx138169_ 'gerbil#AST::t)
                (not _src138170_))
            _stx138169_
            (##structure gx#AST::t _stx138169_ _src138170_))))
    (define gx#stx-datum?
      (lambda (_stx138167_) (gx#self-quoting? (gx#stx-e _stx138167_))))
    (define gx#self-quoting?
      (lambda (_x138150_)
        (let ((_$e138152_ (immediate? _x138150_)))
          (if _$e138152_
              _$e138152_
              (let ((_$e138155_ (number? _x138150_)))
                (if _$e138155_
                    _$e138155_
                    (let ((_$e138158_ (keyword? _x138150_)))
                      (if _$e138158_
                          _$e138158_
                          (let ((_$e138161_ (string? _x138150_)))
                            (if _$e138161_
                                _$e138161_
                                (let ((_$e138164_ (vector? _x138150_)))
                                  (if _$e138164_
                                      _$e138164_
                                      (u8vector? _x138150_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e138148_) (boolean? (gx#stx-e _e138148_))))
    (define gx#stx-keyword?
      (lambda (_e138146_) (keyword? (gx#stx-e _e138146_))))
    (define gx#stx-char? (lambda (_e138144_) (char? (gx#stx-e _e138144_))))
    (define gx#stx-number? (lambda (_e138142_) (number? (gx#stx-e _e138142_))))
    (define gx#stx-fixnum? (lambda (_e138140_) (fixnum? (gx#stx-e _e138140_))))
    (define gx#stx-string? (lambda (_e138138_) (string? (gx#stx-e _e138138_))))
    (define gx#stx-null? (lambda (_e138136_) (null? (gx#stx-e _e138136_))))
    (define gx#stx-pair? (lambda (_e138134_) (pair? (gx#stx-e _e138134_))))
    (define gx#stx-list?
      (lambda (_e138096_)
        (let* ((_g138097138106_ (gx#stx-e _e138096_))
               (_E138100138110_
                (lambda () (error '"No clause matching" _g138097138106_))))
          (let ((_K138102138126_
                 (lambda (_rest138124_) (gx#stx-list? _rest138124_)))
                (_K138101138116_ (lambda (_tail138114_) (null? _tail138114_))))
            (if (##pair? _g138097138106_)
                (let* ((_tl138104138129_ (##cdr _g138097138106_))
                       (_rest138132_ _tl138104138129_))
                  (gx#stx-list? _rest138132_))
                (let ((_tail138119_ _g138097138106_))
                  (null? _tail138119_)))))))
    (define gx#stx-pair/null?
      (lambda (_e138089_)
        (let* ((_e138091_ (gx#stx-e _e138089_)) (_$e138093_ (pair? _e138091_)))
          (if _$e138093_ _$e138093_ (null? _e138091_)))))
    (define gx#stx-vector? (lambda (_e138087_) (vector? (gx#stx-e _e138087_))))
    (define gx#stx-box? (lambda (_e138085_) (box? (gx#stx-e _e138085_))))
    (define gx#stx-eq?
      (lambda (_x138082_ _y138083_)
        (eq? (gx#stx-e _x138082_) (gx#stx-e _y138083_))))
    (define gx#stx-eqv?
      (lambda (_x138079_ _y138080_)
        (eqv? (gx#stx-e _x138079_) (gx#stx-e _y138080_))))
    (define gx#stx-equal?
      (lambda (_x138076_ _y138077_)
        (equal? (gx#stx-e _x138076_) (gx#stx-e _y138077_))))
    (define gx#stx-false? (lambda (_x138074_) (not (gx#stx-e _x138074_))))
    (define gx#stx-identifier
      (lambda (_template138071_ . _args138072_)
        (gx#datum->syntax__1
         _template138071_
         (apply make-symbol (gx#syntax->datum _args138072_))
         (gx#stx-source _template138071_))))
    (define gx#stx-identifier-marks
      (lambda (_stx138069_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx138069_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx138067_)
        (if (##structure-direct-instance-of?
             _stx138067_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx138067_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx138067_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx138067_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx138067_)))))
    (define gx#stx-identifier-context
      (lambda (_stx138063_)
        (let ((_stx138065_ (gx#stx-unwrap__0 _stx138063_)))
          (if (gx#identifier-quote? _stx138065_)
              (##unchecked-structure-ref _stx138065_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx138018_)
        (let* ((_g138019138029_ (gx#stx-e _stx138018_))
               (_else138022138037_ (lambda () '#f)))
          (let ((_K138025138051_
                 (lambda (_rest138048_ _hd138049_)
                   (if (gx#identifier? _hd138049_)
                       (gx#identifier-list? _rest138048_)
                       '#f)))
                (_K138024138042_ (lambda () '#t)))
            (let ((_try-match138021138045_
                   (lambda ()
                     (if (##null? _g138019138029_)
                         (_K138024138042_)
                         (_else138022138037_)))))
              (if (##pair? _g138019138029_)
                  (let ((_tl138027138056_ (##cdr _g138019138029_))
                        (_hd138026138054_ (##car _g138019138029_)))
                    (let ((_hd138059_ _hd138026138054_)
                          (_rest138061_ _tl138027138056_))
                      (_K138025138051_ _rest138061_ _hd138059_)))
                  (_try-match138021138045_)))))))
    (define gx#genident__%
      (lambda (_e137995_ _src137996_)
        (gx#stx-wrap-source
         (gensym (let ((_e137998_ (gx#stx-e _e137995_)))
                   (if (interned-symbol? _e137998_) _e137998_ 'g)))
         (let ((_$e138000_ (gx#stx-source _e137995_)))
           (if _$e138000_ _$e138000_ _src137996_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e138007_ 'g) (_src138009_ '#f))
          (gx#genident__% _e138007_ _src138009_))))
    (define gx#genident__1
      (lambda (_e138011_)
        (let ((_src138013_ '#f)) (gx#genident__% _e138011_ _src138013_))))
    (define gx#genident
      (lambda _g142998_
        (let ((_g142997_ (##length _g142998_)))
          (cond ((##fx= _g142997_ 0)
                 (apply (lambda () (gx#genident__0)) _g142998_))
                ((##fx= _g142997_ 1)
                 (apply (lambda (_e138011_) (gx#genident__1 _e138011_))
                        _g142998_))
                ((##fx= _g142997_ 2)
                 (apply (lambda (_e138015_ _src138016_)
                          (gx#genident__% _e138015_ _src138016_))
                        _g142998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g142998_))))))
    (define gx#gentemps
      (lambda (_stx-lst137992_) (gx#stx-map1 gx#genident _stx-lst137992_)))
    (define gx#syntax->list
      (lambda (_stx137990_) (gx#stx-map1 values _stx137990_)))
    (define gx#stx-car
      (lambda (_stx137987_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx137987_)))))
    (define gx#stx-cdr
      (lambda (_stx137984_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx137984_)))))
    (define gx#stx-length
      (lambda (_stx137949_)
        (let _lp137951_ ((_rest137953_ _stx137949_) (_n137954_ '0))
          (let* ((_g137955137963_ (gx#stx-e _rest137953_))
                 (_else137957137971_ (lambda () _n137954_))
                 (_K137959137976_
                  (lambda (_rest137974_)
                    (_lp137951_ _rest137974_ (fx+ _n137954_ '1)))))
            (if (##pair? _g137955137963_)
                (let* ((_tl137961137979_ (##cdr _g137955137963_))
                       (_rest137982_ _tl137961137979_))
                  (_K137959137976_ _rest137982_))
                (_else137957137971_))))))
    (define gx#stx-for-each
      (lambda _g143000_
        (let ((_g142999_ (##length _g143000_)))
          (cond ((##fx= _g142999_ 2)
                 (apply (lambda (_f137942_ _stx137943_)
                          (gx#stx-for-each1 _f137942_ _stx137943_))
                        _g143000_))
                ((##fx= _g142999_ 3)
                 (apply (lambda (_f137945_ _xstx137946_ _ystx137947_)
                          (gx#stx-for-each2
                           _f137945_
                           _xstx137946_
                           _ystx137947_))
                        _g143000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g143000_))))))
    (define gx#stx-for-each1
      (lambda (_f137892_ _stx137893_)
        (if (procedure? _f137892_)
            '#!void
            (error '"expected procedure" _f137892_))
        (let _lp137895_ ((_rest137897_ _stx137893_))
          (let* ((_g137898137908_ (gx#syntax-e _rest137897_))
                 (_else137901137916_ (lambda () (_f137892_ _rest137897_))))
            (let ((_K137904137930_
                   (lambda (_rest137927_ _hd137928_)
                     (_f137892_ _hd137928_)
                     (_lp137895_ _rest137927_)))
                  (_K137903137921_ (lambda () '#!void)))
              (let ((_try-match137900137924_
                     (lambda ()
                       (if (##null? _g137898137908_)
                           (_K137903137921_)
                           (_else137901137916_)))))
                (if (##pair? _g137898137908_)
                    (let ((_tl137906137935_ (##cdr _g137898137908_))
                          (_hd137905137933_ (##car _g137898137908_)))
                      (let ((_hd137938_ _hd137905137933_)
                            (_rest137940_ _tl137906137935_))
                        (_K137904137930_ _rest137940_ _hd137938_)))
                    (_try-match137900137924_))))))))
    (define gx#stx-for-each2
      (lambda (_f137797_ _xstx137798_ _ystx137799_)
        (if (procedure? _f137797_)
            '#!void
            (error '"expected procedure" _f137797_))
        (let _lp137801_ ((_xrest137803_ _xstx137798_)
                         (_yrest137804_ _ystx137799_))
          (let* ((_g137805137815_ (gx#syntax-e _xrest137803_))
                 (_else137808137823_ (lambda () '#!void)))
            (let ((_K137811137880_
                   (lambda (_xrest137849_ _xhd137850_)
                     (let* ((_g137851137858_ (gx#syntax-e _yrest137804_))
                            (_E137853137862_
                             (lambda ()
                               (error '"No clause matching" _g137851137858_)))
                            (_K137854137868_
                             (lambda (_yrest137865_ _yhd137866_)
                               (_f137797_ _xhd137850_ _yhd137866_)
                               (_lp137801_ _xrest137849_ _yrest137865_))))
                       (if (##pair? _g137851137858_)
                           (let ((_hd137855137871_ (##car _g137851137858_))
                                 (_tl137856137873_ (##cdr _g137851137858_)))
                             (let* ((_yhd137876_ _hd137855137871_)
                                    (_yrest137878_ _tl137856137873_))
                               (_K137854137868_ _yrest137878_ _yhd137876_)))
                           (_E137853137862_)))))
                  (_K137810137843_
                   (lambda ()
                     (let* ((_yrest137827137832_ _yrest137804_)
                            (_E137829137836_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137827137832_)))
                            (_K137830137840_
                             (lambda ()
                               (_f137797_ _xrest137803_ _yrest137804_))))
                       (if (not (gx#stx-null? _yrest137827137832_))
                           (_K137830137840_)
                           (_E137829137836_))))))
              (let ((_try-match137807137846_
                     (lambda ()
                       (if (not (null? _g137805137815_))
                           (_K137810137843_)
                           (_else137808137823_)))))
                (if (##pair? _g137805137815_)
                    (let ((_tl137813137885_ (##cdr _g137805137815_))
                          (_hd137812137883_ (##car _g137805137815_)))
                      (let ((_xhd137888_ _hd137812137883_)
                            (_xrest137890_ _tl137813137885_))
                        (_K137811137880_ _xrest137890_ _xhd137888_)))
                    (_try-match137807137846_))))))))
    (define gx#stx-map
      (lambda _g143002_
        (let ((_g143001_ (##length _g143002_)))
          (cond ((##fx= _g143001_ 2)
                 (apply (lambda (_f137790_ _stx137791_)
                          (gx#stx-map1 _f137790_ _stx137791_))
                        _g143002_))
                ((##fx= _g143001_ 3)
                 (apply (lambda (_f137793_ _xstx137794_ _ystx137795_)
                          (gx#stx-map2 _f137793_ _xstx137794_ _ystx137795_))
                        _g143002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g143002_))))))
    (define gx#stx-map1
      (lambda (_f137740_ _stx137741_)
        (if (procedure? _f137740_)
            '#!void
            (error '"expected procedure" _f137740_))
        (let _recur137743_ ((_rest137745_ _stx137741_))
          (let* ((_g137746137756_ (gx#syntax-e _rest137745_))
                 (_else137749137764_ (lambda () (_f137740_ _rest137745_))))
            (let ((_K137752137778_
                   (lambda (_rest137775_ _hd137776_)
                     (cons (_f137740_ _hd137776_)
                           (_recur137743_ _rest137775_))))
                  (_K137751137769_ (lambda () '())))
              (let ((_try-match137748137772_
                     (lambda ()
                       (if (##null? _g137746137756_)
                           (_K137751137769_)
                           (_else137749137764_)))))
                (if (##pair? _g137746137756_)
                    (let ((_tl137754137783_ (##cdr _g137746137756_))
                          (_hd137753137781_ (##car _g137746137756_)))
                      (let ((_hd137786_ _hd137753137781_)
                            (_rest137788_ _tl137754137783_))
                        (_K137752137778_ _rest137788_ _hd137786_)))
                    (_try-match137748137772_))))))))
    (define gx#stx-map2
      (lambda (_f137645_ _xstx137646_ _ystx137647_)
        (if (procedure? _f137645_)
            '#!void
            (error '"expected procedure" _f137645_))
        (let _recur137649_ ((_xrest137651_ _xstx137646_)
                            (_yrest137652_ _ystx137647_))
          (let* ((_g137653137663_ (gx#syntax-e _xrest137651_))
                 (_else137656137671_ (lambda () '())))
            (let ((_K137659137728_
                   (lambda (_xrest137697_ _xhd137698_)
                     (let* ((_g137699137706_ (gx#syntax-e _yrest137652_))
                            (_E137701137710_
                             (lambda ()
                               (error '"No clause matching" _g137699137706_)))
                            (_K137702137716_
                             (lambda (_yrest137713_ _yhd137714_)
                               (cons (_f137645_ _xhd137698_ _yhd137714_)
                                     (_recur137649_
                                      _xrest137697_
                                      _yrest137713_)))))
                       (if (##pair? _g137699137706_)
                           (let ((_hd137703137719_ (##car _g137699137706_))
                                 (_tl137704137721_ (##cdr _g137699137706_)))
                             (let* ((_yhd137724_ _hd137703137719_)
                                    (_yrest137726_ _tl137704137721_))
                               (_K137702137716_ _yrest137726_ _yhd137724_)))
                           (_E137701137710_)))))
                  (_K137658137691_
                   (lambda ()
                     (let* ((_yrest137675137680_ _yrest137652_)
                            (_E137677137684_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest137675137680_)))
                            (_K137678137688_
                             (lambda ()
                               (_f137645_ _xrest137651_ _yrest137652_))))
                       (if (not (gx#stx-null? _yrest137675137680_))
                           (_K137678137688_)
                           (_E137677137684_))))))
              (let ((_try-match137655137694_
                     (lambda ()
                       (if (not (null? _g137653137663_))
                           (_K137658137691_)
                           (_else137656137671_)))))
                (if (##pair? _g137653137663_)
                    (let ((_tl137661137733_ (##cdr _g137653137663_))
                          (_hd137660137731_ (##car _g137653137663_)))
                      (let ((_xhd137736_ _hd137660137731_)
                            (_xrest137738_ _tl137661137733_))
                        (_K137659137728_ _xrest137738_ _xhd137736_)))
                    (_try-match137655137694_))))))))
    (define gx#stx-andmap
      (lambda (_f137595_ _stx137596_)
        (if (procedure? _f137595_)
            '#!void
            (error '"expected procedure" _f137595_))
        (let _lp137598_ ((_rest137600_ _stx137596_))
          (let* ((_g137601137611_ (gx#syntax-e _rest137600_))
                 (_else137604137619_ (lambda () (_f137595_ _rest137600_))))
            (let ((_K137607137633_
                   (lambda (_rest137630_ _hd137631_)
                     (if (_f137595_ _hd137631_)
                         (_lp137598_ _rest137630_)
                         '#f)))
                  (_K137606137624_ (lambda () '#t)))
              (let ((_try-match137603137627_
                     (lambda ()
                       (if (##null? _g137601137611_)
                           (_K137606137624_)
                           (_else137604137619_)))))
                (if (##pair? _g137601137611_)
                    (let ((_tl137609137638_ (##cdr _g137601137611_))
                          (_hd137608137636_ (##car _g137601137611_)))
                      (let ((_hd137641_ _hd137608137636_)
                            (_rest137643_ _tl137609137638_))
                        (_K137607137633_ _rest137643_ _hd137641_)))
                    (_try-match137603137627_))))))))
    (define gx#stx-ormap
      (lambda (_f137542_ _stx137543_)
        (if (procedure? _f137542_)
            '#!void
            (error '"expected procedure" _f137542_))
        (let _lp137545_ ((_rest137547_ _stx137543_))
          (let* ((_g137548137558_ (gx#syntax-e _rest137547_))
                 (_else137551137566_ (lambda () (_f137542_ _rest137547_))))
            (let ((_K137554137583_
                   (lambda (_rest137577_ _hd137578_)
                     (let ((_$e137580_ (_f137542_ _hd137578_)))
                       (if _$e137580_ _$e137580_ (_lp137545_ _rest137577_)))))
                  (_K137553137571_ (lambda () '#f)))
              (let ((_try-match137550137574_
                     (lambda ()
                       (if (##null? _g137548137558_)
                           (_K137553137571_)
                           (_else137551137566_)))))
                (if (##pair? _g137548137558_)
                    (let ((_tl137556137588_ (##cdr _g137548137558_))
                          (_hd137555137586_ (##car _g137548137558_)))
                      (let ((_hd137591_ _hd137555137586_)
                            (_rest137593_ _tl137556137588_))
                        (_K137554137583_ _rest137593_ _hd137591_)))
                    (_try-match137550137574_))))))))
    (define gx#stx-foldl
      (lambda (_f137490_ _iv137491_ _stx137492_)
        (if (procedure? _f137490_)
            '#!void
            (error '"expected procedure" _f137490_))
        (let _lp137494_ ((_r137496_ _iv137491_) (_rest137497_ _stx137492_))
          (let* ((_g137498137508_ (gx#syntax-e _rest137497_))
                 (_else137501137516_
                  (lambda () (_f137490_ _rest137497_ _r137496_))))
            (let ((_K137504137530_
                   (lambda (_rest137527_ _hd137528_)
                     (_lp137494_
                      (_f137490_ _hd137528_ _r137496_)
                      _rest137527_)))
                  (_K137503137521_ (lambda () _r137496_)))
              (let ((_try-match137500137524_
                     (lambda ()
                       (if (##null? _g137498137508_)
                           (_K137503137521_)
                           (_else137501137516_)))))
                (if (##pair? _g137498137508_)
                    (let ((_tl137506137535_ (##cdr _g137498137508_))
                          (_hd137505137533_ (##car _g137498137508_)))
                      (let ((_hd137538_ _hd137505137533_)
                            (_rest137540_ _tl137506137535_))
                        (_K137504137530_ _rest137540_ _hd137538_)))
                    (_try-match137500137524_))))))))
    (define gx#stx-foldr
      (lambda (_f137439_ _iv137440_ _stx137441_)
        (if (procedure? _f137439_)
            '#!void
            (error '"expected procedure" _f137439_))
        (let _recur137443_ ((_rest137445_ _stx137441_))
          (let* ((_g137446137456_ (gx#syntax-e _rest137445_))
                 (_else137449137464_
                  (lambda () (_f137439_ _rest137445_ _iv137440_))))
            (let ((_K137452137478_
                   (lambda (_rest137475_ _hd137476_)
                     (_f137439_ _hd137476_ (_recur137443_ _rest137475_))))
                  (_K137451137469_ (lambda () _iv137440_)))
              (let ((_try-match137448137472_
                     (lambda ()
                       (if (##null? _g137446137456_)
                           (_K137451137469_)
                           (_else137449137464_)))))
                (if (##pair? _g137446137456_)
                    (let ((_tl137454137483_ (##cdr _g137446137456_))
                          (_hd137453137481_ (##car _g137446137456_)))
                      (let ((_hd137486_ _hd137453137481_)
                            (_rest137488_ _tl137454137483_))
                        (_K137452137478_ _rest137488_ _hd137486_)))
                    (_try-match137448137472_))))))))
    (define gx#stx-reverse
      (lambda (_stx137437_) (gx#stx-foldl cons '() _stx137437_)))
    (define gx#stx-last
      (lambda (_stx137398_)
        (let _lp137400_ ((_rest137402_ _stx137398_))
          (let* ((_g137403137411_ (gx#syntax-e _rest137402_))
                 (_else137405137419_ (lambda () _rest137402_))
                 (_K137407137425_
                  (lambda (_rest137422_ _hd137423_)
                    (if (gx#stx-null? _rest137422_)
                        _hd137423_
                        (_lp137400_ _rest137422_)))))
            (if (##pair? _g137403137411_)
                (let ((_hd137408137428_ (##car _g137403137411_))
                      (_tl137409137430_ (##cdr _g137403137411_)))
                  (let* ((_hd137433_ _hd137408137428_)
                         (_rest137435_ _tl137409137430_))
                    (_K137407137425_ _rest137435_ _hd137433_)))
                (_else137405137419_))))))
    (define gx#stx-last-pair
      (lambda (_stx137369_)
        (let _lp137371_ ((_hd137373_ _stx137369_))
          (let* ((_g137374137381_ (gx#syntax-e _hd137373_))
                 (_E137376137385_
                  (lambda () (error '"No clause matching" _g137374137381_)))
                 (_K137377137390_
                  (lambda (_rest137388_)
                    (if (gx#stx-pair? _rest137388_)
                        (_lp137371_ _rest137388_)
                        _hd137373_))))
            (if (##pair? _g137374137381_)
                (let* ((_tl137379137393_ (##cdr _g137374137381_))
                       (_rest137396_ _tl137379137393_))
                  (_K137377137390_ _rest137396_))
                (_E137376137385_))))))
    (define gx#stx-list-tail
      (lambda (_stx137338_ _k137339_)
        (let _lp137341_ ((_rest137343_ _stx137338_) (_k137344_ _k137339_))
          (if (fxpositive? _k137344_)
              (let* ((_g137345137352_ (gx#syntax-e _rest137343_))
                     (_E137347137356_
                      (lambda ()
                        (error '"No clause matching" _g137345137352_)))
                     (_K137348137361_
                      (lambda (_rest137359_)
                        (_lp137341_ _rest137359_ (fx- _k137344_ '1)))))
                (if (##pair? _g137345137352_)
                    (let* ((_tl137350137364_ (##cdr _g137345137352_))
                           (_rest137367_ _tl137350137364_))
                      (_K137348137361_ _rest137367_))
                    (_E137347137356_)))
              _rest137343_))))
    (define gx#stx-list-ref
      (lambda (_stx137335_ _k137336_)
        (gx#stx-car (gx#stx-list-tail _stx137335_ _k137336_))))
    (define gx#stx-plist?__%
      (lambda (_stx137247_ _key?137248_)
        (if (procedure? _key?137248_)
            '#!void
            (error '"expected procedure" _key?137248_))
        (let _lp137250_ ((_rest137252_ _stx137247_))
          (let* ((_g137253137263_ (gx#stx-e _rest137252_))
                 (_else137256137271_ (lambda () '#f)))
            (let ((_K137259137313_
                   (lambda (_rest137282_ _hd137283_)
                     (if (_key?137248_ _hd137283_)
                         (let* ((_g137284137292_ (gx#stx-e _rest137282_))
                                (_else137286137300_ (lambda () '#f))
                                (_K137288137305_
                                 (lambda (_rest137303_)
                                   (_lp137250_ _rest137303_))))
                           (if (##pair? _g137284137292_)
                               (let* ((_tl137290137308_
                                       (##cdr _g137284137292_))
                                      (_rest137311_ _tl137290137308_))
                                 (_lp137250_ _rest137311_))
                               (_else137286137300_)))
                         '#f)))
                  (_K137258137276_ (lambda () '#t)))
              (let ((_try-match137255137279_
                     (lambda ()
                       (if (##null? _g137253137263_)
                           (_K137258137276_)
                           (_else137256137271_)))))
                (if (##pair? _g137253137263_)
                    (let ((_tl137261137318_ (##cdr _g137253137263_))
                          (_hd137260137316_ (##car _g137253137263_)))
                      (let ((_hd137321_ _hd137260137316_)
                            (_rest137323_ _tl137261137318_))
                        (_K137259137313_ _rest137323_ _hd137321_)))
                    (_try-match137255137279_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx137328_)
        (let ((_key?137330_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx137328_ _key?137330_))))
    (define gx#stx-plist?
      (lambda _g143004_
        (let ((_g143003_ (##length _g143004_)))
          (cond ((##fx= _g143003_ 1)
                 (apply (lambda (_stx137328_) (gx#stx-plist?__0 _stx137328_))
                        _g143004_))
                ((##fx= _g143003_ 2)
                 (apply (lambda (_stx137332_ _key?137333_)
                          (gx#stx-plist?__% _stx137332_ _key?137333_))
                        _g143004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g143004_))))))
    (define gx#stx-getq__%
      (lambda (_key137165_ _stx137166_ _key=?137167_)
        (if (procedure? _key=?137167_)
            '#!void
            (error '"expected procedure" _key=?137167_))
        (let _lp137169_ ((_rest137171_ _stx137166_))
          (let* ((_g137172137180_ (gx#syntax-e _rest137171_))
                 (_else137174137188_ (lambda () '#f))
                 (_K137176137222_
                  (lambda (_rest137191_ _hd137192_)
                    (let* ((_g137193137200_ (gx#syntax-e _rest137191_))
                           (_E137195137204_
                            (lambda ()
                              (error '"No clause matching" _g137193137200_)))
                           (_K137196137210_
                            (lambda (_rest137207_ _val137208_)
                              (if (_key=?137167_ _hd137192_ _key137165_)
                                  _val137208_
                                  (_lp137169_ _rest137207_)))))
                      (if (##pair? _g137193137200_)
                          (let ((_hd137197137213_ (##car _g137193137200_))
                                (_tl137198137215_ (##cdr _g137193137200_)))
                            (let* ((_val137218_ _hd137197137213_)
                                   (_rest137220_ _tl137198137215_))
                              (_K137196137210_ _rest137220_ _val137218_)))
                          (_E137195137204_))))))
            (if (##pair? _g137172137180_)
                (let ((_hd137177137225_ (##car _g137172137180_))
                      (_tl137178137227_ (##cdr _g137172137180_)))
                  (let* ((_hd137230_ _hd137177137225_)
                         (_rest137232_ _tl137178137227_))
                    (_K137176137222_ _rest137232_ _hd137230_)))
                (_else137174137188_))))))
    (define gx#stx-getq__0
      (lambda (_key137237_ _stx137238_)
        (let ((_key=?137240_ gx#stx-eq?))
          (gx#stx-getq__% _key137237_ _stx137238_ _key=?137240_))))
    (define gx#stx-getq
      (lambda _g143006_
        (let ((_g143005_ (##length _g143006_)))
          (cond ((##fx= _g143005_ 2)
                 (apply (lambda (_key137237_ _stx137238_)
                          (gx#stx-getq__0 _key137237_ _stx137238_))
                        _g143006_))
                ((##fx= _g143005_ 3)
                 (apply (lambda (_key137242_ _stx137243_ _key=?137244_)
                          (gx#stx-getq__%
                           _key137242_
                           _stx137243_
                           _key=?137244_))
                        _g143006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g143006_))))))))
