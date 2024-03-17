(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710687284)
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
      (lambda _$args82559_
        (apply make-instance gx#identifier-wrap::t _$args82559_)))
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
      (lambda _$args82556_
        (apply make-instance gx#syntax-wrap::t _$args82556_)))
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
      (lambda _$args82553_
        (apply make-instance gx#syntax-quote::t _$args82553_)))
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
      (lambda (_stx82551_) (symbol? (gx#stx-e _stx82551_))))
    (define gx#identifier-quote?
      (lambda (_stx82549_)
        (if (##structure-direct-instance-of? _stx82549_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82549_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82547_)
        (if (##structure-direct-instance-of? _stx82547_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82547_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82547_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82545_)
        (if (##structure-direct-instance-of? _stx82545_ 'gx#syntax-quote::t)
            _stx82545_
            (if (##structure-direct-instance-of? _stx82545_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82545_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82528_)
        (if (##structure-direct-instance-of? _stx82528_ 'gx#syntax-wrap::t)
            (let _lp82530_ ((_e82532_
                             (##unchecked-structure-ref
                              _stx82528_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82533_
                             (cons (##unchecked-structure-ref
                                    _stx82528_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82532_)
                  (let ((_$e82535_ (##type-id (##structure-type _e82532_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82535_)
                        (_lp82530_
                         (##unchecked-structure-ref _e82532_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82532_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82533_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82535_)
                                (eq? 'gx#identifier-wrap::t _$e82535_))
                            (##unchecked-structure-ref
                             _e82532_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82535_)
                                (_lp82530_
                                 (##unchecked-structure-ref
                                  _e82532_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82533_)
                                _e82532_))))
                  (if (null? _marks82533_)
                      _e82532_
                      (if (pair? _e82532_)
                          (cons (gx#stx-wrap (car _e82532_) _marks82533_)
                                (gx#stx-wrap (cdr _e82532_) _marks82533_))
                          (if (vector? _e82532_)
                              (vector-map
                               (lambda (_g8254082542_)
                                 (gx#stx-wrap _g8254082542_ _marks82533_))
                               _e82532_)
                              (if (box? _e82532_)
                                  (box (gx#stx-wrap
                                        (unbox _e82532_)
                                        _marks82533_))
                                  _e82532_))))))
            (if (##structure-instance-of? _stx82528_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82528_ '1 gx#AST::t '#f)
                _stx82528_))))
    (define gx#syntax->datum
      (lambda (_stx82526_)
        (if (##structure-instance-of? _stx82526_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82526_ '1 gx#AST::t '#f))
            (if (pair? _stx82526_)
                (cons (gx#syntax->datum (car _stx82526_))
                      (gx#syntax->datum (cdr _stx82526_)))
                (if (vector? _stx82526_)
                    (vector-map gx#syntax->datum _stx82526_)
                    (if (box? _stx82526_)
                        (box (gx#syntax->datum (unbox _stx82526_)))
                        _stx82526_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82469_ _datum82470_ _src82471_ _quote?82472_)
        (letrec ((_wrap-datum82474_
                  (lambda (_e82498_ _marks82499_)
                    (_wrap-inner82476_
                     _e82498_
                     (lambda (_g8250082502_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8250082502_
                        _src82471_
                        _marks82499_)))))
                 (_wrap-quote82475_
                  (lambda (_e82490_ _ctx82491_ _marks82492_)
                    (_wrap-inner82476_
                     _e82490_
                     (lambda (_g8249382495_)
                       (##structure
                        gx#syntax-quote::t
                        _g8249382495_
                        _src82471_
                        _ctx82491_
                        _marks82492_)))))
                 (_wrap-inner82476_
                  (lambda (_e82483_ _wrap-e82484_)
                    (let _recur82486_ ((_e82488_ _e82483_))
                      (if (symbol? _e82488_)
                          (_wrap-e82484_ _e82488_)
                          (if (pair? _e82488_)
                              (cons (_recur82486_ (car _e82488_))
                                    (_recur82486_ (cdr _e82488_)))
                              (if (vector? _e82488_)
                                  (vector-map _recur82486_ _e82488_)
                                  (if (box? _e82488_)
                                      (box (_recur82486_ (unbox _e82488_)))
                                      _e82488_)))))))
                 (_wrap-outer82477_
                  (lambda (_e82481_)
                    (if (##structure-instance-of? _e82481_ 'gerbil#AST::t)
                        _e82481_
                        (##structure gx#AST::t _e82481_ _src82471_)))))
          (if (##structure-instance-of? _datum82470_ 'gerbil#AST::t)
              _datum82470_
              (if (not _stx82469_)
                  (##structure gx#AST::t _datum82470_ _src82471_)
                  (if (gx#identifier? _stx82469_)
                      (let ((_stx82479_ (gx#stx-unwrap__0 _stx82469_)))
                        (_wrap-outer82477_
                         (if (##structure-direct-instance-of?
                              _stx82479_
                              'gx#syntax-quote::t)
                             (if _quote?82472_
                                 (_wrap-quote82475_
                                  _datum82470_
                                  (##unchecked-structure-ref
                                   _stx82479_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82479_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82474_
                                  _datum82470_
                                  (##unchecked-structure-ref
                                   _stx82479_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82474_
                              _datum82470_
                              (##unchecked-structure-ref
                               _stx82479_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82469_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82508_ _datum82509_)
        (let* ((_src82511_ '#f) (_quote?82513_ '#t))
          (gx#datum->syntax__%
           _stx82508_
           _datum82509_
           _src82511_
           _quote?82513_))))
    (define gx#datum->syntax__1
      (lambda (_stx82515_ _datum82516_ _src82517_)
        (let ((_quote?82519_ '#t))
          (gx#datum->syntax__%
           _stx82515_
           _datum82516_
           _src82517_
           _quote?82519_))))
    (define gx#datum->syntax
      (lambda _g82640_
        (let ((_g82639_ (##length _g82640_)))
          (cond ((##fx= _g82639_ 2)
                 (apply (lambda (_stx82508_ _datum82509_)
                          (gx#datum->syntax__0 _stx82508_ _datum82509_))
                        _g82640_))
                ((##fx= _g82639_ 3)
                 (apply (lambda (_stx82515_ _datum82516_ _src82517_)
                          (gx#datum->syntax__1
                           _stx82515_
                           _datum82516_
                           _src82517_))
                        _g82640_))
                ((##fx= _g82639_ 4)
                 (apply (lambda (_stx82521_
                                 _datum82522_
                                 _src82523_
                                 _quote?82524_)
                          (gx#datum->syntax__%
                           _stx82521_
                           _datum82522_
                           _src82523_
                           _quote?82524_))
                        _g82640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82640_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82445_ _marks82446_)
        (let _lp82448_ ((_e82450_ _stx82445_)
                        (_marks82451_ _marks82446_)
                        (_src82452_ (gx#stx-source _stx82445_)))
          (if (##structure-direct-instance-of? _e82450_ 'gx#syntax-wrap::t)
              (_lp82448_
               (##unchecked-structure-ref _e82450_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82450_ '3 gx#syntax-wrap::t '#f)
                _marks82451_)
               (##unchecked-structure-ref _e82450_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82450_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82451_)
                      _e82450_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82450_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82450_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82450_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82451_)))
                  (if (##structure-direct-instance-of?
                       _e82450_
                       'gx#syntax-quote::t)
                      _e82450_
                      (if (##structure-instance-of? _e82450_ 'gerbil#AST::t)
                          (_lp82448_
                           (##unchecked-structure-ref
                            _e82450_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82451_
                           (##unchecked-structure-ref
                            _e82450_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82450_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82450_
                               _src82452_
                               (reverse _marks82451_))
                              (if (null? _marks82451_)
                                  _e82450_
                                  (if (pair? _e82450_)
                                      (cons (gx#stx-wrap
                                             (car _e82450_)
                                             _marks82451_)
                                            (gx#stx-wrap
                                             (cdr _e82450_)
                                             _marks82451_))
                                      (if (vector? _e82450_)
                                          (vector-map
                                           (lambda (_g8245382455_)
                                             (gx#stx-wrap
                                              _g8245382455_
                                              _marks82451_))
                                           _e82450_)
                                          (if (box? _e82450_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82450_)
                                                    _marks82451_))
                                              _e82450_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82461_)
        (let ((_marks82463_ '())) (gx#stx-unwrap__% _stx82461_ _marks82463_))))
    (define gx#stx-unwrap
      (lambda _g82642_
        (let ((_g82641_ (##length _g82642_)))
          (cond ((##fx= _g82641_ 1)
                 (apply (lambda (_stx82461_) (gx#stx-unwrap__0 _stx82461_))
                        _g82642_))
                ((##fx= _g82641_ 2)
                 (apply (lambda (_stx82465_ _marks82466_)
                          (gx#stx-unwrap__% _stx82465_ _marks82466_))
                        _g82642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82642_))))))
    (define gx#stx-wrap
      (lambda (_stx82438_ _marks82439_)
        (foldl1 (lambda (_mark82441_ _stx82442_)
                  (gx#stx-apply-mark _stx82442_ _mark82441_))
                _stx82438_
                _marks82439_)))
    (define gx#stx-rewrap
      (lambda (_stx82432_ _marks82433_)
        (foldr1 (lambda (_mark82435_ _stx82436_)
                  (gx#stx-apply-mark _stx82436_ _mark82435_))
                _stx82432_
                _marks82433_)))
    (define gx#stx-apply-mark
      (lambda (_stx82429_ _mark82430_)
        (if (##structure-direct-instance-of? _stx82429_ 'gx#syntax-quote::t)
            _stx82429_
            (if (and (##structure-direct-instance-of?
                      _stx82429_
                      'gx#syntax-wrap::t)
                     (eq? _mark82430_
                          (##unchecked-structure-ref
                           _stx82429_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82429_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82429_
                 (gx#stx-source _stx82429_)
                 _mark82430_)))))
    (define gx#apply-mark
      (lambda (_mark82393_ _marks82394_)
        (let* ((_marks8239582403_ _marks82394_)
               (_else8239782411_ (lambda () (cons _mark82393_ _marks82394_)))
               (_K8239982417_
                (lambda (_rest82414_ _hd82415_)
                  (if (eq? _mark82393_ _hd82415_)
                      _rest82414_
                      (cons _mark82393_ _marks82394_)))))
          (if (##pair? _marks8239582403_)
              (let ((_hd8240082420_ (##car _marks8239582403_))
                    (_tl8240182422_ (##cdr _marks8239582403_)))
                (let* ((_hd82425_ _hd8240082420_) (_rest82427_ _tl8240182422_))
                  (_K8239982417_ _rest82427_ _hd82425_)))
              (_else8239782411_)))))
    (define gx#stx-e
      (lambda (_stx82391_)
        (if (##structure-direct-instance-of? _stx82391_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82391_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82391_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82391_ '1 gx#AST::t '#f)
                _stx82391_))))
    (define gx#stx-source
      (lambda (_stx82389_)
        (if (##structure-instance-of? _stx82389_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82389_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82383_ _src82384_)
        (if (or (##structure-instance-of? _stx82383_ 'gerbil#AST::t)
                (not _src82384_))
            _stx82383_
            (##structure gx#AST::t _stx82383_ _src82384_))))
    (define gx#stx-datum?
      (lambda (_stx82381_) (gx#self-quoting? (gx#stx-e _stx82381_))))
    (define gx#self-quoting?
      (lambda (_x82364_)
        (let ((_$e82366_ (immediate? _x82364_)))
          (if _$e82366_
              _$e82366_
              (let ((_$e82369_ (number? _x82364_)))
                (if _$e82369_
                    _$e82369_
                    (let ((_$e82372_ (keyword? _x82364_)))
                      (if _$e82372_
                          _$e82372_
                          (let ((_$e82375_ (string? _x82364_)))
                            (if _$e82375_
                                _$e82375_
                                (let ((_$e82378_ (vector? _x82364_)))
                                  (if _$e82378_
                                      _$e82378_
                                      (u8vector? _x82364_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82362_) (boolean? (gx#stx-e _e82362_))))
    (define gx#stx-keyword? (lambda (_e82360_) (keyword? (gx#stx-e _e82360_))))
    (define gx#stx-char? (lambda (_e82358_) (char? (gx#stx-e _e82358_))))
    (define gx#stx-number? (lambda (_e82356_) (number? (gx#stx-e _e82356_))))
    (define gx#stx-fixnum? (lambda (_e82354_) (fixnum? (gx#stx-e _e82354_))))
    (define gx#stx-string? (lambda (_e82352_) (string? (gx#stx-e _e82352_))))
    (define gx#stx-null? (lambda (_e82350_) (null? (gx#stx-e _e82350_))))
    (define gx#stx-pair? (lambda (_e82348_) (pair? (gx#stx-e _e82348_))))
    (define gx#stx-list?
      (lambda (_e82310_)
        (let* ((_g8231182320_ (gx#stx-e _e82310_))
               (_E8231482324_
                (lambda () (error '"No clause matching" _g8231182320_))))
          (let ((_K8231682340_
                 (lambda (_rest82338_) (gx#stx-list? _rest82338_)))
                (_K8231582330_ (lambda (_tail82328_) (null? _tail82328_))))
            (if (##pair? _g8231182320_)
                (let* ((_tl8231882343_ (##cdr _g8231182320_))
                       (_rest82346_ _tl8231882343_))
                  (gx#stx-list? _rest82346_))
                (let ((_tail82333_ _g8231182320_)) (null? _tail82333_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82303_)
        (let* ((_e82305_ (gx#stx-e _e82303_)) (_$e82307_ (pair? _e82305_)))
          (if _$e82307_ _$e82307_ (null? _e82305_)))))
    (define gx#stx-vector? (lambda (_e82301_) (vector? (gx#stx-e _e82301_))))
    (define gx#stx-box? (lambda (_e82299_) (box? (gx#stx-e _e82299_))))
    (define gx#stx-eq?
      (lambda (_x82296_ _y82297_)
        (eq? (gx#stx-e _x82296_) (gx#stx-e _y82297_))))
    (define gx#stx-eqv?
      (lambda (_x82293_ _y82294_)
        (eqv? (gx#stx-e _x82293_) (gx#stx-e _y82294_))))
    (define gx#stx-equal?
      (lambda (_x82290_ _y82291_)
        (equal? (gx#stx-e _x82290_) (gx#stx-e _y82291_))))
    (define gx#stx-false? (lambda (_x82288_) (not (gx#stx-e _x82288_))))
    (define gx#stx-identifier
      (lambda (_template82285_ . _args82286_)
        (gx#datum->syntax__1
         _template82285_
         (apply make-symbol (gx#syntax->datum _args82286_))
         (gx#stx-source _template82285_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82283_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82283_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82281_)
        (if (##structure-direct-instance-of? _stx82281_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82281_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82281_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82281_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82281_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82277_)
        (let ((_stx82279_ (gx#stx-unwrap__0 _stx82277_)))
          (if (gx#identifier-quote? _stx82279_)
              (##unchecked-structure-ref _stx82279_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82232_)
        (let* ((_g8223382243_ (gx#stx-e _stx82232_))
               (_else8223682251_ (lambda () '#f)))
          (let ((_K8223982265_
                 (lambda (_rest82262_ _hd82263_)
                   (if (gx#identifier? _hd82263_)
                       (gx#identifier-list? _rest82262_)
                       '#f)))
                (_K8223882256_ (lambda () '#t)))
            (let ((_try-match8223582259_
                   (lambda ()
                     (if (##null? _g8223382243_)
                         (_K8223882256_)
                         (_else8223682251_)))))
              (if (##pair? _g8223382243_)
                  (let ((_tl8224182270_ (##cdr _g8223382243_))
                        (_hd8224082268_ (##car _g8223382243_)))
                    (let ((_hd82273_ _hd8224082268_)
                          (_rest82275_ _tl8224182270_))
                      (_K8223982265_ _rest82275_ _hd82273_)))
                  (_try-match8223582259_)))))))
    (define gx#genident__%
      (lambda (_e82209_ _src82210_)
        (gx#stx-wrap-source
         (gensym (let ((_e82212_ (gx#stx-e _e82209_)))
                   (if (interned-symbol? _e82212_) _e82212_ 'g)))
         (let ((_$e82214_ (gx#stx-source _e82209_)))
           (if _$e82214_ _$e82214_ _src82210_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82221_ 'g) (_src82223_ '#f))
          (gx#genident__% _e82221_ _src82223_))))
    (define gx#genident__1
      (lambda (_e82225_)
        (let ((_src82227_ '#f)) (gx#genident__% _e82225_ _src82227_))))
    (define gx#genident
      (lambda _g82644_
        (let ((_g82643_ (##length _g82644_)))
          (cond ((##fx= _g82643_ 0)
                 (apply (lambda () (gx#genident__0)) _g82644_))
                ((##fx= _g82643_ 1)
                 (apply (lambda (_e82225_) (gx#genident__1 _e82225_))
                        _g82644_))
                ((##fx= _g82643_ 2)
                 (apply (lambda (_e82229_ _src82230_)
                          (gx#genident__% _e82229_ _src82230_))
                        _g82644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82644_))))))
    (define gx#gentemps
      (lambda (_stx-lst82206_) (gx#stx-map1 gx#genident _stx-lst82206_)))
    (define gx#syntax->list
      (lambda (_stx82204_) (gx#stx-map1 values _stx82204_)))
    (define gx#stx-car
      (lambda (_stx82201_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82201_)))))
    (define gx#stx-cdr
      (lambda (_stx82198_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82198_)))))
    (define gx#stx-length
      (lambda (_stx82163_)
        (let _lp82165_ ((_rest82167_ _stx82163_) (_n82168_ '0))
          (let* ((_g8216982177_ (gx#stx-e _rest82167_))
                 (_else8217182185_ (lambda () _n82168_))
                 (_K8217382190_
                  (lambda (_rest82188_)
                    (_lp82165_ _rest82188_ (fx+ _n82168_ '1)))))
            (if (##pair? _g8216982177_)
                (let* ((_tl8217582193_ (##cdr _g8216982177_))
                       (_rest82196_ _tl8217582193_))
                  (_K8217382190_ _rest82196_))
                (_else8217182185_))))))
    (define gx#stx-for-each
      (lambda _g82646_
        (let ((_g82645_ (##length _g82646_)))
          (cond ((##fx= _g82645_ 2)
                 (apply (lambda (_f82156_ _stx82157_)
                          (gx#stx-for-each1 _f82156_ _stx82157_))
                        _g82646_))
                ((##fx= _g82645_ 3)
                 (apply (lambda (_f82159_ _xstx82160_ _ystx82161_)
                          (gx#stx-for-each2 _f82159_ _xstx82160_ _ystx82161_))
                        _g82646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82646_))))))
    (define gx#stx-for-each1
      (lambda (_f82106_ _stx82107_)
        (if (procedure? _f82106_)
            '#!void
            (error '"expected procedure" _f82106_))
        (let _lp82109_ ((_rest82111_ _stx82107_))
          (let* ((_g8211282122_ (gx#syntax-e _rest82111_))
                 (_else8211582130_ (lambda () (_f82106_ _rest82111_))))
            (let ((_K8211882144_
                   (lambda (_rest82141_ _hd82142_)
                     (_f82106_ _hd82142_)
                     (_lp82109_ _rest82141_)))
                  (_K8211782135_ (lambda () '#!void)))
              (let ((_try-match8211482138_
                     (lambda ()
                       (if (##null? _g8211282122_)
                           (_K8211782135_)
                           (_else8211582130_)))))
                (if (##pair? _g8211282122_)
                    (let ((_tl8212082149_ (##cdr _g8211282122_))
                          (_hd8211982147_ (##car _g8211282122_)))
                      (let ((_hd82152_ _hd8211982147_)
                            (_rest82154_ _tl8212082149_))
                        (_K8211882144_ _rest82154_ _hd82152_)))
                    (_try-match8211482138_))))))))
    (define gx#stx-for-each2
      (lambda (_f82011_ _xstx82012_ _ystx82013_)
        (if (procedure? _f82011_)
            '#!void
            (error '"expected procedure" _f82011_))
        (let _lp82015_ ((_xrest82017_ _xstx82012_) (_yrest82018_ _ystx82013_))
          (let* ((_g8201982029_ (gx#syntax-e _xrest82017_))
                 (_else8202282037_ (lambda () '#!void)))
            (let ((_K8202582094_
                   (lambda (_xrest82063_ _xhd82064_)
                     (let* ((_g8206582072_ (gx#syntax-e _yrest82018_))
                            (_E8206782076_
                             (lambda ()
                               (error '"No clause matching" _g8206582072_)))
                            (_K8206882082_
                             (lambda (_yrest82079_ _yhd82080_)
                               (_f82011_ _xhd82064_ _yhd82080_)
                               (_lp82015_ _xrest82063_ _yrest82079_))))
                       (if (##pair? _g8206582072_)
                           (let ((_hd8206982085_ (##car _g8206582072_))
                                 (_tl8207082087_ (##cdr _g8206582072_)))
                             (let* ((_yhd82090_ _hd8206982085_)
                                    (_yrest82092_ _tl8207082087_))
                               (_K8206882082_ _yrest82092_ _yhd82090_)))
                           (_E8206782076_)))))
                  (_K8202482057_
                   (lambda ()
                     (let* ((_yrest8204182046_ _yrest82018_)
                            (_E8204382050_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8204182046_)))
                            (_K8204482054_
                             (lambda () (_f82011_ _xrest82017_ _yrest82018_))))
                       (if (not (gx#stx-null? _yrest8204182046_))
                           (_K8204482054_)
                           (_E8204382050_))))))
              (let ((_try-match8202182060_
                     (lambda ()
                       (if (not (null? _g8201982029_))
                           (_K8202482057_)
                           (_else8202282037_)))))
                (if (##pair? _g8201982029_)
                    (let ((_tl8202782099_ (##cdr _g8201982029_))
                          (_hd8202682097_ (##car _g8201982029_)))
                      (let ((_xhd82102_ _hd8202682097_)
                            (_xrest82104_ _tl8202782099_))
                        (_K8202582094_ _xrest82104_ _xhd82102_)))
                    (_try-match8202182060_))))))))
    (define gx#stx-map
      (lambda _g82648_
        (let ((_g82647_ (##length _g82648_)))
          (cond ((##fx= _g82647_ 2)
                 (apply (lambda (_f82004_ _stx82005_)
                          (gx#stx-map1 _f82004_ _stx82005_))
                        _g82648_))
                ((##fx= _g82647_ 3)
                 (apply (lambda (_f82007_ _xstx82008_ _ystx82009_)
                          (gx#stx-map2 _f82007_ _xstx82008_ _ystx82009_))
                        _g82648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82648_))))))
    (define gx#stx-map1
      (lambda (_f81954_ _stx81955_)
        (if (procedure? _f81954_)
            '#!void
            (error '"expected procedure" _f81954_))
        (let _recur81957_ ((_rest81959_ _stx81955_))
          (let* ((_g8196081970_ (gx#syntax-e _rest81959_))
                 (_else8196381978_ (lambda () (_f81954_ _rest81959_))))
            (let ((_K8196681992_
                   (lambda (_rest81989_ _hd81990_)
                     (cons (_f81954_ _hd81990_) (_recur81957_ _rest81989_))))
                  (_K8196581983_ (lambda () '())))
              (let ((_try-match8196281986_
                     (lambda ()
                       (if (##null? _g8196081970_)
                           (_K8196581983_)
                           (_else8196381978_)))))
                (if (##pair? _g8196081970_)
                    (let ((_tl8196881997_ (##cdr _g8196081970_))
                          (_hd8196781995_ (##car _g8196081970_)))
                      (let ((_hd82000_ _hd8196781995_)
                            (_rest82002_ _tl8196881997_))
                        (_K8196681992_ _rest82002_ _hd82000_)))
                    (_try-match8196281986_))))))))
    (define gx#stx-map2
      (lambda (_f81859_ _xstx81860_ _ystx81861_)
        (if (procedure? _f81859_)
            '#!void
            (error '"expected procedure" _f81859_))
        (let _recur81863_ ((_xrest81865_ _xstx81860_)
                           (_yrest81866_ _ystx81861_))
          (let* ((_g8186781877_ (gx#syntax-e _xrest81865_))
                 (_else8187081885_ (lambda () '())))
            (let ((_K8187381942_
                   (lambda (_xrest81911_ _xhd81912_)
                     (let* ((_g8191381920_ (gx#syntax-e _yrest81866_))
                            (_E8191581924_
                             (lambda ()
                               (error '"No clause matching" _g8191381920_)))
                            (_K8191681930_
                             (lambda (_yrest81927_ _yhd81928_)
                               (cons (_f81859_ _xhd81912_ _yhd81928_)
                                     (_recur81863_
                                      _xrest81911_
                                      _yrest81927_)))))
                       (if (##pair? _g8191381920_)
                           (let ((_hd8191781933_ (##car _g8191381920_))
                                 (_tl8191881935_ (##cdr _g8191381920_)))
                             (let* ((_yhd81938_ _hd8191781933_)
                                    (_yrest81940_ _tl8191881935_))
                               (_K8191681930_ _yrest81940_ _yhd81938_)))
                           (_E8191581924_)))))
                  (_K8187281905_
                   (lambda ()
                     (let* ((_yrest8188981894_ _yrest81866_)
                            (_E8189181898_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8188981894_)))
                            (_K8189281902_
                             (lambda () (_f81859_ _xrest81865_ _yrest81866_))))
                       (if (not (gx#stx-null? _yrest8188981894_))
                           (_K8189281902_)
                           (_E8189181898_))))))
              (let ((_try-match8186981908_
                     (lambda ()
                       (if (not (null? _g8186781877_))
                           (_K8187281905_)
                           (_else8187081885_)))))
                (if (##pair? _g8186781877_)
                    (let ((_tl8187581947_ (##cdr _g8186781877_))
                          (_hd8187481945_ (##car _g8186781877_)))
                      (let ((_xhd81950_ _hd8187481945_)
                            (_xrest81952_ _tl8187581947_))
                        (_K8187381942_ _xrest81952_ _xhd81950_)))
                    (_try-match8186981908_))))))))
    (define gx#stx-andmap
      (lambda (_f81809_ _stx81810_)
        (if (procedure? _f81809_)
            '#!void
            (error '"expected procedure" _f81809_))
        (let _lp81812_ ((_rest81814_ _stx81810_))
          (let* ((_g8181581825_ (gx#syntax-e _rest81814_))
                 (_else8181881833_ (lambda () (_f81809_ _rest81814_))))
            (let ((_K8182181847_
                   (lambda (_rest81844_ _hd81845_)
                     (if (_f81809_ _hd81845_) (_lp81812_ _rest81844_) '#f)))
                  (_K8182081838_ (lambda () '#t)))
              (let ((_try-match8181781841_
                     (lambda ()
                       (if (##null? _g8181581825_)
                           (_K8182081838_)
                           (_else8181881833_)))))
                (if (##pair? _g8181581825_)
                    (let ((_tl8182381852_ (##cdr _g8181581825_))
                          (_hd8182281850_ (##car _g8181581825_)))
                      (let ((_hd81855_ _hd8182281850_)
                            (_rest81857_ _tl8182381852_))
                        (_K8182181847_ _rest81857_ _hd81855_)))
                    (_try-match8181781841_))))))))
    (define gx#stx-ormap
      (lambda (_f81756_ _stx81757_)
        (if (procedure? _f81756_)
            '#!void
            (error '"expected procedure" _f81756_))
        (let _lp81759_ ((_rest81761_ _stx81757_))
          (let* ((_g8176281772_ (gx#syntax-e _rest81761_))
                 (_else8176581780_ (lambda () (_f81756_ _rest81761_))))
            (let ((_K8176881797_
                   (lambda (_rest81791_ _hd81792_)
                     (let ((_$e81794_ (_f81756_ _hd81792_)))
                       (if _$e81794_ _$e81794_ (_lp81759_ _rest81791_)))))
                  (_K8176781785_ (lambda () '#f)))
              (let ((_try-match8176481788_
                     (lambda ()
                       (if (##null? _g8176281772_)
                           (_K8176781785_)
                           (_else8176581780_)))))
                (if (##pair? _g8176281772_)
                    (let ((_tl8177081802_ (##cdr _g8176281772_))
                          (_hd8176981800_ (##car _g8176281772_)))
                      (let ((_hd81805_ _hd8176981800_)
                            (_rest81807_ _tl8177081802_))
                        (_K8176881797_ _rest81807_ _hd81805_)))
                    (_try-match8176481788_))))))))
    (define gx#stx-foldl
      (lambda (_f81704_ _iv81705_ _stx81706_)
        (if (procedure? _f81704_)
            '#!void
            (error '"expected procedure" _f81704_))
        (let _lp81708_ ((_r81710_ _iv81705_) (_rest81711_ _stx81706_))
          (let* ((_g8171281722_ (gx#syntax-e _rest81711_))
                 (_else8171581730_
                  (lambda () (_f81704_ _rest81711_ _r81710_))))
            (let ((_K8171881744_
                   (lambda (_rest81741_ _hd81742_)
                     (_lp81708_ (_f81704_ _hd81742_ _r81710_) _rest81741_)))
                  (_K8171781735_ (lambda () _r81710_)))
              (let ((_try-match8171481738_
                     (lambda ()
                       (if (##null? _g8171281722_)
                           (_K8171781735_)
                           (_else8171581730_)))))
                (if (##pair? _g8171281722_)
                    (let ((_tl8172081749_ (##cdr _g8171281722_))
                          (_hd8171981747_ (##car _g8171281722_)))
                      (let ((_hd81752_ _hd8171981747_)
                            (_rest81754_ _tl8172081749_))
                        (_K8171881744_ _rest81754_ _hd81752_)))
                    (_try-match8171481738_))))))))
    (define gx#stx-foldr
      (lambda (_f81653_ _iv81654_ _stx81655_)
        (if (procedure? _f81653_)
            '#!void
            (error '"expected procedure" _f81653_))
        (let _recur81657_ ((_rest81659_ _stx81655_))
          (let* ((_g8166081670_ (gx#syntax-e _rest81659_))
                 (_else8166381678_
                  (lambda () (_f81653_ _rest81659_ _iv81654_))))
            (let ((_K8166681692_
                   (lambda (_rest81689_ _hd81690_)
                     (_f81653_ _hd81690_ (_recur81657_ _rest81689_))))
                  (_K8166581683_ (lambda () _iv81654_)))
              (let ((_try-match8166281686_
                     (lambda ()
                       (if (##null? _g8166081670_)
                           (_K8166581683_)
                           (_else8166381678_)))))
                (if (##pair? _g8166081670_)
                    (let ((_tl8166881697_ (##cdr _g8166081670_))
                          (_hd8166781695_ (##car _g8166081670_)))
                      (let ((_hd81700_ _hd8166781695_)
                            (_rest81702_ _tl8166881697_))
                        (_K8166681692_ _rest81702_ _hd81700_)))
                    (_try-match8166281686_))))))))
    (define gx#stx-reverse
      (lambda (_stx81651_) (gx#stx-foldl cons '() _stx81651_)))
    (define gx#stx-last
      (lambda (_stx81612_)
        (let _lp81614_ ((_rest81616_ _stx81612_))
          (let* ((_g8161781625_ (gx#syntax-e _rest81616_))
                 (_else8161981633_ (lambda () _rest81616_))
                 (_K8162181639_
                  (lambda (_rest81636_ _hd81637_)
                    (if (gx#stx-null? _rest81636_)
                        _hd81637_
                        (_lp81614_ _rest81636_)))))
            (if (##pair? _g8161781625_)
                (let ((_hd8162281642_ (##car _g8161781625_))
                      (_tl8162381644_ (##cdr _g8161781625_)))
                  (let* ((_hd81647_ _hd8162281642_)
                         (_rest81649_ _tl8162381644_))
                    (_K8162181639_ _rest81649_ _hd81647_)))
                (_else8161981633_))))))
    (define gx#stx-last-pair
      (lambda (_stx81583_)
        (let _lp81585_ ((_hd81587_ _stx81583_))
          (let* ((_g8158881595_ (gx#syntax-e _hd81587_))
                 (_E8159081599_
                  (lambda () (error '"No clause matching" _g8158881595_)))
                 (_K8159181604_
                  (lambda (_rest81602_)
                    (if (gx#stx-pair? _rest81602_)
                        (_lp81585_ _rest81602_)
                        _hd81587_))))
            (if (##pair? _g8158881595_)
                (let* ((_tl8159381607_ (##cdr _g8158881595_))
                       (_rest81610_ _tl8159381607_))
                  (_K8159181604_ _rest81610_))
                (_E8159081599_))))))
    (define gx#stx-list-tail
      (lambda (_stx81552_ _k81553_)
        (let _lp81555_ ((_rest81557_ _stx81552_) (_k81558_ _k81553_))
          (if (fxpositive? _k81558_)
              (let* ((_g8155981566_ (gx#syntax-e _rest81557_))
                     (_E8156181570_
                      (lambda () (error '"No clause matching" _g8155981566_)))
                     (_K8156281575_
                      (lambda (_rest81573_)
                        (_lp81555_ _rest81573_ (fx- _k81558_ '1)))))
                (if (##pair? _g8155981566_)
                    (let* ((_tl8156481578_ (##cdr _g8155981566_))
                           (_rest81581_ _tl8156481578_))
                      (_K8156281575_ _rest81581_))
                    (_E8156181570_)))
              _rest81557_))))
    (define gx#stx-list-ref
      (lambda (_stx81549_ _k81550_)
        (gx#stx-car (gx#stx-list-tail _stx81549_ _k81550_))))
    (define gx#stx-plist?__%
      (lambda (_stx81461_ _key?81462_)
        (if (procedure? _key?81462_)
            '#!void
            (error '"expected procedure" _key?81462_))
        (let _lp81464_ ((_rest81466_ _stx81461_))
          (let* ((_g8146781477_ (gx#stx-e _rest81466_))
                 (_else8147081485_ (lambda () '#f)))
            (let ((_K8147381527_
                   (lambda (_rest81496_ _hd81497_)
                     (if (_key?81462_ _hd81497_)
                         (let* ((_g8149881506_ (gx#stx-e _rest81496_))
                                (_else8150081514_ (lambda () '#f))
                                (_K8150281519_
                                 (lambda (_rest81517_)
                                   (_lp81464_ _rest81517_))))
                           (if (##pair? _g8149881506_)
                               (let* ((_tl8150481522_ (##cdr _g8149881506_))
                                      (_rest81525_ _tl8150481522_))
                                 (_lp81464_ _rest81525_))
                               (_else8150081514_)))
                         '#f)))
                  (_K8147281490_ (lambda () '#t)))
              (let ((_try-match8146981493_
                     (lambda ()
                       (if (##null? _g8146781477_)
                           (_K8147281490_)
                           (_else8147081485_)))))
                (if (##pair? _g8146781477_)
                    (let ((_tl8147581532_ (##cdr _g8146781477_))
                          (_hd8147481530_ (##car _g8146781477_)))
                      (let ((_hd81535_ _hd8147481530_)
                            (_rest81537_ _tl8147581532_))
                        (_K8147381527_ _rest81537_ _hd81535_)))
                    (_try-match8146981493_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81542_)
        (let ((_key?81544_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81542_ _key?81544_))))
    (define gx#stx-plist?
      (lambda _g82650_
        (let ((_g82649_ (##length _g82650_)))
          (cond ((##fx= _g82649_ 1)
                 (apply (lambda (_stx81542_) (gx#stx-plist?__0 _stx81542_))
                        _g82650_))
                ((##fx= _g82649_ 2)
                 (apply (lambda (_stx81546_ _key?81547_)
                          (gx#stx-plist?__% _stx81546_ _key?81547_))
                        _g82650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82650_))))))
    (define gx#stx-getq__%
      (lambda (_key81379_ _stx81380_ _key=?81381_)
        (if (procedure? _key=?81381_)
            '#!void
            (error '"expected procedure" _key=?81381_))
        (let _lp81383_ ((_rest81385_ _stx81380_))
          (let* ((_g8138681394_ (gx#syntax-e _rest81385_))
                 (_else8138881402_ (lambda () '#f))
                 (_K8139081436_
                  (lambda (_rest81405_ _hd81406_)
                    (let* ((_g8140781414_ (gx#syntax-e _rest81405_))
                           (_E8140981418_
                            (lambda ()
                              (error '"No clause matching" _g8140781414_)))
                           (_K8141081424_
                            (lambda (_rest81421_ _val81422_)
                              (if (_key=?81381_ _hd81406_ _key81379_)
                                  _val81422_
                                  (_lp81383_ _rest81421_)))))
                      (if (##pair? _g8140781414_)
                          (let ((_hd8141181427_ (##car _g8140781414_))
                                (_tl8141281429_ (##cdr _g8140781414_)))
                            (let* ((_val81432_ _hd8141181427_)
                                   (_rest81434_ _tl8141281429_))
                              (_K8141081424_ _rest81434_ _val81432_)))
                          (_E8140981418_))))))
            (if (##pair? _g8138681394_)
                (let ((_hd8139181439_ (##car _g8138681394_))
                      (_tl8139281441_ (##cdr _g8138681394_)))
                  (let* ((_hd81444_ _hd8139181439_)
                         (_rest81446_ _tl8139281441_))
                    (_K8139081436_ _rest81446_ _hd81444_)))
                (_else8138881402_))))))
    (define gx#stx-getq__0
      (lambda (_key81451_ _stx81452_)
        (let ((_key=?81454_ gx#stx-eq?))
          (gx#stx-getq__% _key81451_ _stx81452_ _key=?81454_))))
    (define gx#stx-getq
      (lambda _g82652_
        (let ((_g82651_ (##length _g82652_)))
          (cond ((##fx= _g82651_ 2)
                 (apply (lambda (_key81451_ _stx81452_)
                          (gx#stx-getq__0 _key81451_ _stx81452_))
                        _g82652_))
                ((##fx= _g82651_ 3)
                 (apply (lambda (_key81456_ _stx81457_ _key=?81458_)
                          (gx#stx-getq__% _key81456_ _stx81457_ _key=?81458_))
                        _g82652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82652_))))))))
