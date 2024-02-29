(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709229970)
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
      (lambda _$args81463_
        (apply make-instance gx#identifier-wrap::t _$args81463_)))
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
      (lambda _$args81460_
        (apply make-instance gx#syntax-wrap::t _$args81460_)))
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
      (lambda _$args81457_
        (apply make-instance gx#syntax-quote::t _$args81457_)))
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
      (lambda (_stx81455_) (symbol? (gx#stx-e _stx81455_))))
    (define gx#identifier-quote?
      (lambda (_stx81453_)
        (if (##structure-direct-instance-of? _stx81453_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81453_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81451_)
        (if (##structure-direct-instance-of? _stx81451_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81451_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81451_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81449_)
        (if (##structure-direct-instance-of? _stx81449_ 'gx#syntax-quote::t)
            _stx81449_
            (if (##structure-direct-instance-of? _stx81449_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81449_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81432_)
        (if (##structure-direct-instance-of? _stx81432_ 'gx#syntax-wrap::t)
            (let _lp81434_ ((_e81436_
                             (##unchecked-structure-ref
                              _stx81432_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81437_
                             (cons (##unchecked-structure-ref
                                    _stx81432_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81436_)
                  (let ((_$e81439_ (##type-id (##structure-type _e81436_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81439_)
                        (_lp81434_
                         (##unchecked-structure-ref _e81436_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81436_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81437_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81439_)
                                (eq? 'gx#identifier-wrap::t _$e81439_))
                            (##unchecked-structure-ref
                             _e81436_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81439_)
                                (_lp81434_
                                 (##unchecked-structure-ref
                                  _e81436_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81437_)
                                _e81436_))))
                  (if (null? _marks81437_)
                      _e81436_
                      (if (pair? _e81436_)
                          (cons (gx#stx-wrap (car _e81436_) _marks81437_)
                                (gx#stx-wrap (cdr _e81436_) _marks81437_))
                          (if (vector? _e81436_)
                              (vector-map
                               (lambda (_g8144481446_)
                                 (gx#stx-wrap _g8144481446_ _marks81437_))
                               _e81436_)
                              (if (box? _e81436_)
                                  (box (gx#stx-wrap
                                        (unbox _e81436_)
                                        _marks81437_))
                                  _e81436_))))))
            (if (##structure-instance-of? _stx81432_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81432_ '1 gx#AST::t '#f)
                _stx81432_))))
    (define gx#syntax->datum
      (lambda (_stx81430_)
        (if (##structure-instance-of? _stx81430_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81430_ '1 gx#AST::t '#f))
            (if (pair? _stx81430_)
                (cons (gx#syntax->datum (car _stx81430_))
                      (gx#syntax->datum (cdr _stx81430_)))
                (if (vector? _stx81430_)
                    (vector-map gx#syntax->datum _stx81430_)
                    (if (box? _stx81430_)
                        (box (gx#syntax->datum (unbox _stx81430_)))
                        _stx81430_))))))
    (define gx#datum->syntax__%
      (lambda (_stx81373_ _datum81374_ _src81375_ _quote?81376_)
        (letrec ((_wrap-datum81378_
                  (lambda (_e81402_ _marks81403_)
                    (_wrap-inner81380_
                     _e81402_
                     (lambda (_g8140481406_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8140481406_
                        _src81375_
                        _marks81403_)))))
                 (_wrap-quote81379_
                  (lambda (_e81394_ _ctx81395_ _marks81396_)
                    (_wrap-inner81380_
                     _e81394_
                     (lambda (_g8139781399_)
                       (##structure
                        gx#syntax-quote::t
                        _g8139781399_
                        _src81375_
                        _ctx81395_
                        _marks81396_)))))
                 (_wrap-inner81380_
                  (lambda (_e81387_ _wrap-e81388_)
                    (let _recur81390_ ((_e81392_ _e81387_))
                      (if (symbol? _e81392_)
                          (_wrap-e81388_ _e81392_)
                          (if (pair? _e81392_)
                              (cons (_recur81390_ (car _e81392_))
                                    (_recur81390_ (cdr _e81392_)))
                              (if (vector? _e81392_)
                                  (vector-map _recur81390_ _e81392_)
                                  (if (box? _e81392_)
                                      (box (_recur81390_ (unbox _e81392_)))
                                      _e81392_)))))))
                 (_wrap-outer81381_
                  (lambda (_e81385_)
                    (if (##structure-instance-of? _e81385_ 'gerbil#AST::t)
                        _e81385_
                        (##structure gx#AST::t _e81385_ _src81375_)))))
          (if (##structure-instance-of? _datum81374_ 'gerbil#AST::t)
              _datum81374_
              (if (not _stx81373_)
                  (##structure gx#AST::t _datum81374_ _src81375_)
                  (if (gx#identifier? _stx81373_)
                      (let ((_stx81383_ (gx#stx-unwrap__0 _stx81373_)))
                        (_wrap-outer81381_
                         (if (##structure-direct-instance-of?
                              _stx81383_
                              'gx#syntax-quote::t)
                             (if _quote?81376_
                                 (_wrap-quote81379_
                                  _datum81374_
                                  (##unchecked-structure-ref
                                   _stx81383_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx81383_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum81378_
                                  _datum81374_
                                  (##unchecked-structure-ref
                                   _stx81383_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum81378_
                              _datum81374_
                              (##unchecked-structure-ref
                               _stx81383_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx81373_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81412_ _datum81413_)
        (let* ((_src81415_ '#f) (_quote?81417_ '#t))
          (gx#datum->syntax__%
           _stx81412_
           _datum81413_
           _src81415_
           _quote?81417_))))
    (define gx#datum->syntax__1
      (lambda (_stx81419_ _datum81420_ _src81421_)
        (let ((_quote?81423_ '#t))
          (gx#datum->syntax__%
           _stx81419_
           _datum81420_
           _src81421_
           _quote?81423_))))
    (define gx#datum->syntax
      (lambda _g81544_
        (let ((_g81543_ (##length _g81544_)))
          (cond ((##fx= _g81543_ 2)
                 (apply (lambda (_stx81412_ _datum81413_)
                          (gx#datum->syntax__0 _stx81412_ _datum81413_))
                        _g81544_))
                ((##fx= _g81543_ 3)
                 (apply (lambda (_stx81419_ _datum81420_ _src81421_)
                          (gx#datum->syntax__1
                           _stx81419_
                           _datum81420_
                           _src81421_))
                        _g81544_))
                ((##fx= _g81543_ 4)
                 (apply (lambda (_stx81425_
                                 _datum81426_
                                 _src81427_
                                 _quote?81428_)
                          (gx#datum->syntax__%
                           _stx81425_
                           _datum81426_
                           _src81427_
                           _quote?81428_))
                        _g81544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81544_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx81349_ _marks81350_)
        (let _lp81352_ ((_e81354_ _stx81349_)
                        (_marks81355_ _marks81350_)
                        (_src81356_ (gx#stx-source _stx81349_)))
          (if (##structure-direct-instance-of? _e81354_ 'gx#syntax-wrap::t)
              (_lp81352_
               (##unchecked-structure-ref _e81354_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e81354_ '3 gx#syntax-wrap::t '#f)
                _marks81355_)
               (##unchecked-structure-ref _e81354_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e81354_
                   'gx#identifier-wrap::t)
                  (if (null? _marks81355_)
                      _e81354_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e81354_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e81354_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81354_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81355_)))
                  (if (##structure-direct-instance-of?
                       _e81354_
                       'gx#syntax-quote::t)
                      _e81354_
                      (if (##structure-instance-of? _e81354_ 'gerbil#AST::t)
                          (_lp81352_
                           (##unchecked-structure-ref
                            _e81354_
                            '1
                            gx#AST::t
                            '#f)
                           _marks81355_
                           (##unchecked-structure-ref
                            _e81354_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e81354_)
                              (##structure
                               gx#identifier-wrap::t
                               _e81354_
                               _src81356_
                               (reverse _marks81355_))
                              (if (null? _marks81355_)
                                  _e81354_
                                  (if (pair? _e81354_)
                                      (cons (gx#stx-wrap
                                             (car _e81354_)
                                             _marks81355_)
                                            (gx#stx-wrap
                                             (cdr _e81354_)
                                             _marks81355_))
                                      (if (vector? _e81354_)
                                          (vector-map
                                           (lambda (_g8135781359_)
                                             (gx#stx-wrap
                                              _g8135781359_
                                              _marks81355_))
                                           _e81354_)
                                          (if (box? _e81354_)
                                              (box (gx#stx-wrap
                                                    (unbox _e81354_)
                                                    _marks81355_))
                                              _e81354_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx81365_)
        (let ((_marks81367_ '())) (gx#stx-unwrap__% _stx81365_ _marks81367_))))
    (define gx#stx-unwrap
      (lambda _g81546_
        (let ((_g81545_ (##length _g81546_)))
          (cond ((##fx= _g81545_ 1)
                 (apply (lambda (_stx81365_) (gx#stx-unwrap__0 _stx81365_))
                        _g81546_))
                ((##fx= _g81545_ 2)
                 (apply (lambda (_stx81369_ _marks81370_)
                          (gx#stx-unwrap__% _stx81369_ _marks81370_))
                        _g81546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81546_))))))
    (define gx#stx-wrap
      (lambda (_stx81342_ _marks81343_)
        (foldl1 (lambda (_mark81345_ _stx81346_)
                  (gx#stx-apply-mark _stx81346_ _mark81345_))
                _stx81342_
                _marks81343_)))
    (define gx#stx-rewrap
      (lambda (_stx81336_ _marks81337_)
        (foldr1 (lambda (_mark81339_ _stx81340_)
                  (gx#stx-apply-mark _stx81340_ _mark81339_))
                _stx81336_
                _marks81337_)))
    (define gx#stx-apply-mark
      (lambda (_stx81333_ _mark81334_)
        (if (##structure-direct-instance-of? _stx81333_ 'gx#syntax-quote::t)
            _stx81333_
            (if (and (##structure-direct-instance-of?
                      _stx81333_
                      'gx#syntax-wrap::t)
                     (eq? _mark81334_
                          (##unchecked-structure-ref
                           _stx81333_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx81333_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx81333_
                 (gx#stx-source _stx81333_)
                 _mark81334_)))))
    (define gx#apply-mark
      (lambda (_mark81297_ _marks81298_)
        (let* ((_marks8129981307_ _marks81298_)
               (_else8130181315_ (lambda () (cons _mark81297_ _marks81298_)))
               (_K8130381321_
                (lambda (_rest81318_ _hd81319_)
                  (if (eq? _mark81297_ _hd81319_)
                      _rest81318_
                      (cons _mark81297_ _marks81298_)))))
          (if (##pair? _marks8129981307_)
              (let ((_hd8130481324_ (##car _marks8129981307_))
                    (_tl8130581326_ (##cdr _marks8129981307_)))
                (let* ((_hd81329_ _hd8130481324_) (_rest81331_ _tl8130581326_))
                  (_K8130381321_ _rest81331_ _hd81329_)))
              (_else8130181315_)))))
    (define gx#stx-e
      (lambda (_stx81295_)
        (if (##structure-direct-instance-of? _stx81295_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx81295_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx81295_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81295_ '1 gx#AST::t '#f)
                _stx81295_))))
    (define gx#stx-source
      (lambda (_stx81293_)
        (if (##structure-instance-of? _stx81293_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx81293_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx81287_ _src81288_)
        (if (or (##structure-instance-of? _stx81287_ 'gerbil#AST::t)
                (not _src81288_))
            _stx81287_
            (##structure gx#AST::t _stx81287_ _src81288_))))
    (define gx#stx-datum?
      (lambda (_stx81285_) (gx#self-quoting? (gx#stx-e _stx81285_))))
    (define gx#self-quoting?
      (lambda (_x81268_)
        (let ((_$e81270_ (immediate? _x81268_)))
          (if _$e81270_
              _$e81270_
              (let ((_$e81273_ (number? _x81268_)))
                (if _$e81273_
                    _$e81273_
                    (let ((_$e81276_ (keyword? _x81268_)))
                      (if _$e81276_
                          _$e81276_
                          (let ((_$e81279_ (string? _x81268_)))
                            (if _$e81279_
                                _$e81279_
                                (let ((_$e81282_ (vector? _x81268_)))
                                  (if _$e81282_
                                      _$e81282_
                                      (u8vector? _x81268_)))))))))))))
    (define gx#stx-boolean? (lambda (_e81266_) (boolean? (gx#stx-e _e81266_))))
    (define gx#stx-keyword? (lambda (_e81264_) (keyword? (gx#stx-e _e81264_))))
    (define gx#stx-char? (lambda (_e81262_) (char? (gx#stx-e _e81262_))))
    (define gx#stx-number? (lambda (_e81260_) (number? (gx#stx-e _e81260_))))
    (define gx#stx-fixnum? (lambda (_e81258_) (fixnum? (gx#stx-e _e81258_))))
    (define gx#stx-string? (lambda (_e81256_) (string? (gx#stx-e _e81256_))))
    (define gx#stx-null? (lambda (_e81254_) (null? (gx#stx-e _e81254_))))
    (define gx#stx-pair? (lambda (_e81252_) (pair? (gx#stx-e _e81252_))))
    (define gx#stx-list?
      (lambda (_e81214_)
        (let* ((_g8121581224_ (gx#stx-e _e81214_))
               (_E8121881228_
                (lambda () (error '"No clause matching" _g8121581224_))))
          (let ((_K8122081244_
                 (lambda (_rest81242_) (gx#stx-list? _rest81242_)))
                (_K8121981234_ (lambda (_tail81232_) (null? _tail81232_))))
            (if (##pair? _g8121581224_)
                (let* ((_tl8122281247_ (##cdr _g8121581224_))
                       (_rest81250_ _tl8122281247_))
                  (gx#stx-list? _rest81250_))
                (let ((_tail81237_ _g8121581224_)) (null? _tail81237_)))))))
    (define gx#stx-pair/null?
      (lambda (_e81207_)
        (let* ((_e81209_ (gx#stx-e _e81207_)) (_$e81211_ (pair? _e81209_)))
          (if _$e81211_ _$e81211_ (null? _e81209_)))))
    (define gx#stx-vector? (lambda (_e81205_) (vector? (gx#stx-e _e81205_))))
    (define gx#stx-box? (lambda (_e81203_) (box? (gx#stx-e _e81203_))))
    (define gx#stx-eq?
      (lambda (_x81200_ _y81201_)
        (eq? (gx#stx-e _x81200_) (gx#stx-e _y81201_))))
    (define gx#stx-eqv?
      (lambda (_x81197_ _y81198_)
        (eqv? (gx#stx-e _x81197_) (gx#stx-e _y81198_))))
    (define gx#stx-equal?
      (lambda (_x81194_ _y81195_)
        (equal? (gx#stx-e _x81194_) (gx#stx-e _y81195_))))
    (define gx#stx-false? (lambda (_x81192_) (not (gx#stx-e _x81192_))))
    (define gx#stx-identifier
      (lambda (_template81189_ . _args81190_)
        (gx#datum->syntax__1
         _template81189_
         (apply make-symbol (gx#syntax->datum _args81190_))
         (gx#stx-source _template81189_))))
    (define gx#stx-identifier-marks
      (lambda (_stx81187_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx81187_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx81185_)
        (if (##structure-direct-instance-of? _stx81185_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx81185_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx81185_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx81185_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx81185_)))))
    (define gx#stx-identifier-context
      (lambda (_stx81181_)
        (let ((_stx81183_ (gx#stx-unwrap__0 _stx81181_)))
          (if (gx#identifier-quote? _stx81183_)
              (##unchecked-structure-ref _stx81183_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx81136_)
        (let* ((_g8113781147_ (gx#stx-e _stx81136_))
               (_else8114081155_ (lambda () '#f)))
          (let ((_K8114381169_
                 (lambda (_rest81166_ _hd81167_)
                   (if (gx#identifier? _hd81167_)
                       (gx#identifier-list? _rest81166_)
                       '#f)))
                (_K8114281160_ (lambda () '#t)))
            (let ((_try-match8113981163_
                   (lambda ()
                     (if (##null? _g8113781147_)
                         (_K8114281160_)
                         (_else8114081155_)))))
              (if (##pair? _g8113781147_)
                  (let ((_tl8114581174_ (##cdr _g8113781147_))
                        (_hd8114481172_ (##car _g8113781147_)))
                    (let ((_hd81177_ _hd8114481172_)
                          (_rest81179_ _tl8114581174_))
                      (_K8114381169_ _rest81179_ _hd81177_)))
                  (_try-match8113981163_)))))))
    (define gx#genident__%
      (lambda (_e81113_ _src81114_)
        (gx#stx-wrap-source
         (gensym (let ((_e81116_ (gx#stx-e _e81113_)))
                   (if (interned-symbol? _e81116_) _e81116_ 'g)))
         (let ((_$e81118_ (gx#stx-source _e81113_)))
           (if _$e81118_ _$e81118_ _src81114_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e81125_ 'g) (_src81127_ '#f))
          (gx#genident__% _e81125_ _src81127_))))
    (define gx#genident__1
      (lambda (_e81129_)
        (let ((_src81131_ '#f)) (gx#genident__% _e81129_ _src81131_))))
    (define gx#genident
      (lambda _g81548_
        (let ((_g81547_ (##length _g81548_)))
          (cond ((##fx= _g81547_ 0)
                 (apply (lambda () (gx#genident__0)) _g81548_))
                ((##fx= _g81547_ 1)
                 (apply (lambda (_e81129_) (gx#genident__1 _e81129_))
                        _g81548_))
                ((##fx= _g81547_ 2)
                 (apply (lambda (_e81133_ _src81134_)
                          (gx#genident__% _e81133_ _src81134_))
                        _g81548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81548_))))))
    (define gx#gentemps
      (lambda (_stx-lst81110_) (gx#stx-map1 gx#genident _stx-lst81110_)))
    (define gx#syntax->list
      (lambda (_stx81108_) (gx#stx-map1 values _stx81108_)))
    (define gx#stx-car
      (lambda (_stx81105_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx81105_)))))
    (define gx#stx-cdr
      (lambda (_stx81102_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx81102_)))))
    (define gx#stx-length
      (lambda (_stx81067_)
        (let _lp81069_ ((_rest81071_ _stx81067_) (_n81072_ '0))
          (let* ((_g8107381081_ (gx#stx-e _rest81071_))
                 (_else8107581089_ (lambda () _n81072_))
                 (_K8107781094_
                  (lambda (_rest81092_)
                    (_lp81069_ _rest81092_ (fx+ _n81072_ '1)))))
            (if (##pair? _g8107381081_)
                (let* ((_tl8107981097_ (##cdr _g8107381081_))
                       (_rest81100_ _tl8107981097_))
                  (_K8107781094_ _rest81100_))
                (_else8107581089_))))))
    (define gx#stx-for-each
      (lambda _g81550_
        (let ((_g81549_ (##length _g81550_)))
          (cond ((##fx= _g81549_ 2)
                 (apply (lambda (_f81060_ _stx81061_)
                          (gx#stx-for-each1 _f81060_ _stx81061_))
                        _g81550_))
                ((##fx= _g81549_ 3)
                 (apply (lambda (_f81063_ _xstx81064_ _ystx81065_)
                          (gx#stx-for-each2 _f81063_ _xstx81064_ _ystx81065_))
                        _g81550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81550_))))))
    (define gx#stx-for-each1
      (lambda (_f81010_ _stx81011_)
        (if (procedure? _f81010_)
            '#!void
            (error '"expected procedure" _f81010_))
        (let _lp81013_ ((_rest81015_ _stx81011_))
          (let* ((_g8101681026_ (gx#syntax-e _rest81015_))
                 (_else8101981034_ (lambda () (_f81010_ _rest81015_))))
            (let ((_K8102281048_
                   (lambda (_rest81045_ _hd81046_)
                     (_f81010_ _hd81046_)
                     (_lp81013_ _rest81045_)))
                  (_K8102181039_ (lambda () '#!void)))
              (let ((_try-match8101881042_
                     (lambda ()
                       (if (##null? _g8101681026_)
                           (_K8102181039_)
                           (_else8101981034_)))))
                (if (##pair? _g8101681026_)
                    (let ((_tl8102481053_ (##cdr _g8101681026_))
                          (_hd8102381051_ (##car _g8101681026_)))
                      (let ((_hd81056_ _hd8102381051_)
                            (_rest81058_ _tl8102481053_))
                        (_K8102281048_ _rest81058_ _hd81056_)))
                    (_try-match8101881042_))))))))
    (define gx#stx-for-each2
      (lambda (_f80915_ _xstx80916_ _ystx80917_)
        (if (procedure? _f80915_)
            '#!void
            (error '"expected procedure" _f80915_))
        (let _lp80919_ ((_xrest80921_ _xstx80916_) (_yrest80922_ _ystx80917_))
          (let* ((_g8092380933_ (gx#syntax-e _xrest80921_))
                 (_else8092680941_ (lambda () '#!void)))
            (let ((_K8092980998_
                   (lambda (_xrest80967_ _xhd80968_)
                     (let* ((_g8096980976_ (gx#syntax-e _yrest80922_))
                            (_E8097180980_
                             (lambda ()
                               (error '"No clause matching" _g8096980976_)))
                            (_K8097280986_
                             (lambda (_yrest80983_ _yhd80984_)
                               (_f80915_ _xhd80968_ _yhd80984_)
                               (_lp80919_ _xrest80967_ _yrest80983_))))
                       (if (##pair? _g8096980976_)
                           (let ((_hd8097380989_ (##car _g8096980976_))
                                 (_tl8097480991_ (##cdr _g8096980976_)))
                             (let* ((_yhd80994_ _hd8097380989_)
                                    (_yrest80996_ _tl8097480991_))
                               (_K8097280986_ _yrest80996_ _yhd80994_)))
                           (_E8097180980_)))))
                  (_K8092880961_
                   (lambda ()
                     (let* ((_yrest8094580950_ _yrest80922_)
                            (_E8094780954_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8094580950_)))
                            (_K8094880958_
                             (lambda () (_f80915_ _xrest80921_ _yrest80922_))))
                       (if (not (gx#stx-null? _yrest8094580950_))
                           (_K8094880958_)
                           (_E8094780954_))))))
              (let ((_try-match8092580964_
                     (lambda ()
                       (if (not (null? _g8092380933_))
                           (_K8092880961_)
                           (_else8092680941_)))))
                (if (##pair? _g8092380933_)
                    (let ((_tl8093181003_ (##cdr _g8092380933_))
                          (_hd8093081001_ (##car _g8092380933_)))
                      (let ((_xhd81006_ _hd8093081001_)
                            (_xrest81008_ _tl8093181003_))
                        (_K8092980998_ _xrest81008_ _xhd81006_)))
                    (_try-match8092580964_))))))))
    (define gx#stx-map
      (lambda _g81552_
        (let ((_g81551_ (##length _g81552_)))
          (cond ((##fx= _g81551_ 2)
                 (apply (lambda (_f80908_ _stx80909_)
                          (gx#stx-map1 _f80908_ _stx80909_))
                        _g81552_))
                ((##fx= _g81551_ 3)
                 (apply (lambda (_f80911_ _xstx80912_ _ystx80913_)
                          (gx#stx-map2 _f80911_ _xstx80912_ _ystx80913_))
                        _g81552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81552_))))))
    (define gx#stx-map1
      (lambda (_f80858_ _stx80859_)
        (if (procedure? _f80858_)
            '#!void
            (error '"expected procedure" _f80858_))
        (let _recur80861_ ((_rest80863_ _stx80859_))
          (let* ((_g8086480874_ (gx#syntax-e _rest80863_))
                 (_else8086780882_ (lambda () (_f80858_ _rest80863_))))
            (let ((_K8087080896_
                   (lambda (_rest80893_ _hd80894_)
                     (cons (_f80858_ _hd80894_) (_recur80861_ _rest80893_))))
                  (_K8086980887_ (lambda () '())))
              (let ((_try-match8086680890_
                     (lambda ()
                       (if (##null? _g8086480874_)
                           (_K8086980887_)
                           (_else8086780882_)))))
                (if (##pair? _g8086480874_)
                    (let ((_tl8087280901_ (##cdr _g8086480874_))
                          (_hd8087180899_ (##car _g8086480874_)))
                      (let ((_hd80904_ _hd8087180899_)
                            (_rest80906_ _tl8087280901_))
                        (_K8087080896_ _rest80906_ _hd80904_)))
                    (_try-match8086680890_))))))))
    (define gx#stx-map2
      (lambda (_f80763_ _xstx80764_ _ystx80765_)
        (if (procedure? _f80763_)
            '#!void
            (error '"expected procedure" _f80763_))
        (let _recur80767_ ((_xrest80769_ _xstx80764_)
                           (_yrest80770_ _ystx80765_))
          (let* ((_g8077180781_ (gx#syntax-e _xrest80769_))
                 (_else8077480789_ (lambda () '())))
            (let ((_K8077780846_
                   (lambda (_xrest80815_ _xhd80816_)
                     (let* ((_g8081780824_ (gx#syntax-e _yrest80770_))
                            (_E8081980828_
                             (lambda ()
                               (error '"No clause matching" _g8081780824_)))
                            (_K8082080834_
                             (lambda (_yrest80831_ _yhd80832_)
                               (cons (_f80763_ _xhd80816_ _yhd80832_)
                                     (_recur80767_
                                      _xrest80815_
                                      _yrest80831_)))))
                       (if (##pair? _g8081780824_)
                           (let ((_hd8082180837_ (##car _g8081780824_))
                                 (_tl8082280839_ (##cdr _g8081780824_)))
                             (let* ((_yhd80842_ _hd8082180837_)
                                    (_yrest80844_ _tl8082280839_))
                               (_K8082080834_ _yrest80844_ _yhd80842_)))
                           (_E8081980828_)))))
                  (_K8077680809_
                   (lambda ()
                     (let* ((_yrest8079380798_ _yrest80770_)
                            (_E8079580802_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8079380798_)))
                            (_K8079680806_
                             (lambda () (_f80763_ _xrest80769_ _yrest80770_))))
                       (if (not (gx#stx-null? _yrest8079380798_))
                           (_K8079680806_)
                           (_E8079580802_))))))
              (let ((_try-match8077380812_
                     (lambda ()
                       (if (not (null? _g8077180781_))
                           (_K8077680809_)
                           (_else8077480789_)))))
                (if (##pair? _g8077180781_)
                    (let ((_tl8077980851_ (##cdr _g8077180781_))
                          (_hd8077880849_ (##car _g8077180781_)))
                      (let ((_xhd80854_ _hd8077880849_)
                            (_xrest80856_ _tl8077980851_))
                        (_K8077780846_ _xrest80856_ _xhd80854_)))
                    (_try-match8077380812_))))))))
    (define gx#stx-andmap
      (lambda (_f80713_ _stx80714_)
        (if (procedure? _f80713_)
            '#!void
            (error '"expected procedure" _f80713_))
        (let _lp80716_ ((_rest80718_ _stx80714_))
          (let* ((_g8071980729_ (gx#syntax-e _rest80718_))
                 (_else8072280737_ (lambda () (_f80713_ _rest80718_))))
            (let ((_K8072580751_
                   (lambda (_rest80748_ _hd80749_)
                     (if (_f80713_ _hd80749_) (_lp80716_ _rest80748_) '#f)))
                  (_K8072480742_ (lambda () '#t)))
              (let ((_try-match8072180745_
                     (lambda ()
                       (if (##null? _g8071980729_)
                           (_K8072480742_)
                           (_else8072280737_)))))
                (if (##pair? _g8071980729_)
                    (let ((_tl8072780756_ (##cdr _g8071980729_))
                          (_hd8072680754_ (##car _g8071980729_)))
                      (let ((_hd80759_ _hd8072680754_)
                            (_rest80761_ _tl8072780756_))
                        (_K8072580751_ _rest80761_ _hd80759_)))
                    (_try-match8072180745_))))))))
    (define gx#stx-ormap
      (lambda (_f80660_ _stx80661_)
        (if (procedure? _f80660_)
            '#!void
            (error '"expected procedure" _f80660_))
        (let _lp80663_ ((_rest80665_ _stx80661_))
          (let* ((_g8066680676_ (gx#syntax-e _rest80665_))
                 (_else8066980684_ (lambda () (_f80660_ _rest80665_))))
            (let ((_K8067280701_
                   (lambda (_rest80695_ _hd80696_)
                     (let ((_$e80698_ (_f80660_ _hd80696_)))
                       (if _$e80698_ _$e80698_ (_lp80663_ _rest80695_)))))
                  (_K8067180689_ (lambda () '#f)))
              (let ((_try-match8066880692_
                     (lambda ()
                       (if (##null? _g8066680676_)
                           (_K8067180689_)
                           (_else8066980684_)))))
                (if (##pair? _g8066680676_)
                    (let ((_tl8067480706_ (##cdr _g8066680676_))
                          (_hd8067380704_ (##car _g8066680676_)))
                      (let ((_hd80709_ _hd8067380704_)
                            (_rest80711_ _tl8067480706_))
                        (_K8067280701_ _rest80711_ _hd80709_)))
                    (_try-match8066880692_))))))))
    (define gx#stx-foldl
      (lambda (_f80608_ _iv80609_ _stx80610_)
        (if (procedure? _f80608_)
            '#!void
            (error '"expected procedure" _f80608_))
        (let _lp80612_ ((_r80614_ _iv80609_) (_rest80615_ _stx80610_))
          (let* ((_g8061680626_ (gx#syntax-e _rest80615_))
                 (_else8061980634_
                  (lambda () (_f80608_ _rest80615_ _r80614_))))
            (let ((_K8062280648_
                   (lambda (_rest80645_ _hd80646_)
                     (_lp80612_ (_f80608_ _hd80646_ _r80614_) _rest80645_)))
                  (_K8062180639_ (lambda () _r80614_)))
              (let ((_try-match8061880642_
                     (lambda ()
                       (if (##null? _g8061680626_)
                           (_K8062180639_)
                           (_else8061980634_)))))
                (if (##pair? _g8061680626_)
                    (let ((_tl8062480653_ (##cdr _g8061680626_))
                          (_hd8062380651_ (##car _g8061680626_)))
                      (let ((_hd80656_ _hd8062380651_)
                            (_rest80658_ _tl8062480653_))
                        (_K8062280648_ _rest80658_ _hd80656_)))
                    (_try-match8061880642_))))))))
    (define gx#stx-foldr
      (lambda (_f80557_ _iv80558_ _stx80559_)
        (if (procedure? _f80557_)
            '#!void
            (error '"expected procedure" _f80557_))
        (let _recur80561_ ((_rest80563_ _stx80559_))
          (let* ((_g8056480574_ (gx#syntax-e _rest80563_))
                 (_else8056780582_
                  (lambda () (_f80557_ _rest80563_ _iv80558_))))
            (let ((_K8057080596_
                   (lambda (_rest80593_ _hd80594_)
                     (_f80557_ _hd80594_ (_recur80561_ _rest80593_))))
                  (_K8056980587_ (lambda () _iv80558_)))
              (let ((_try-match8056680590_
                     (lambda ()
                       (if (##null? _g8056480574_)
                           (_K8056980587_)
                           (_else8056780582_)))))
                (if (##pair? _g8056480574_)
                    (let ((_tl8057280601_ (##cdr _g8056480574_))
                          (_hd8057180599_ (##car _g8056480574_)))
                      (let ((_hd80604_ _hd8057180599_)
                            (_rest80606_ _tl8057280601_))
                        (_K8057080596_ _rest80606_ _hd80604_)))
                    (_try-match8056680590_))))))))
    (define gx#stx-reverse
      (lambda (_stx80555_) (gx#stx-foldl cons '() _stx80555_)))
    (define gx#stx-last
      (lambda (_stx80516_)
        (let _lp80518_ ((_rest80520_ _stx80516_))
          (let* ((_g8052180529_ (gx#syntax-e _rest80520_))
                 (_else8052380537_ (lambda () _rest80520_))
                 (_K8052580543_
                  (lambda (_rest80540_ _hd80541_)
                    (if (gx#stx-null? _rest80540_)
                        _hd80541_
                        (_lp80518_ _rest80540_)))))
            (if (##pair? _g8052180529_)
                (let ((_hd8052680546_ (##car _g8052180529_))
                      (_tl8052780548_ (##cdr _g8052180529_)))
                  (let* ((_hd80551_ _hd8052680546_)
                         (_rest80553_ _tl8052780548_))
                    (_K8052580543_ _rest80553_ _hd80551_)))
                (_else8052380537_))))))
    (define gx#stx-last-pair
      (lambda (_stx80487_)
        (let _lp80489_ ((_hd80491_ _stx80487_))
          (let* ((_g8049280499_ (gx#syntax-e _hd80491_))
                 (_E8049480503_
                  (lambda () (error '"No clause matching" _g8049280499_)))
                 (_K8049580508_
                  (lambda (_rest80506_)
                    (if (gx#stx-pair? _rest80506_)
                        (_lp80489_ _rest80506_)
                        _hd80491_))))
            (if (##pair? _g8049280499_)
                (let* ((_tl8049780511_ (##cdr _g8049280499_))
                       (_rest80514_ _tl8049780511_))
                  (_K8049580508_ _rest80514_))
                (_E8049480503_))))))
    (define gx#stx-list-tail
      (lambda (_stx80456_ _k80457_)
        (let _lp80459_ ((_rest80461_ _stx80456_) (_k80462_ _k80457_))
          (if (fxpositive? _k80462_)
              (let* ((_g8046380470_ (gx#syntax-e _rest80461_))
                     (_E8046580474_
                      (lambda () (error '"No clause matching" _g8046380470_)))
                     (_K8046680479_
                      (lambda (_rest80477_)
                        (_lp80459_ _rest80477_ (fx- _k80462_ '1)))))
                (if (##pair? _g8046380470_)
                    (let* ((_tl8046880482_ (##cdr _g8046380470_))
                           (_rest80485_ _tl8046880482_))
                      (_K8046680479_ _rest80485_))
                    (_E8046580474_)))
              _rest80461_))))
    (define gx#stx-list-ref
      (lambda (_stx80453_ _k80454_)
        (gx#stx-car (gx#stx-list-tail _stx80453_ _k80454_))))
    (define gx#stx-plist?__%
      (lambda (_stx80365_ _key?80366_)
        (if (procedure? _key?80366_)
            '#!void
            (error '"expected procedure" _key?80366_))
        (let _lp80368_ ((_rest80370_ _stx80365_))
          (let* ((_g8037180381_ (gx#stx-e _rest80370_))
                 (_else8037480389_ (lambda () '#f)))
            (let ((_K8037780431_
                   (lambda (_rest80400_ _hd80401_)
                     (if (_key?80366_ _hd80401_)
                         (let* ((_g8040280410_ (gx#stx-e _rest80400_))
                                (_else8040480418_ (lambda () '#f))
                                (_K8040680423_
                                 (lambda (_rest80421_)
                                   (_lp80368_ _rest80421_))))
                           (if (##pair? _g8040280410_)
                               (let* ((_tl8040880426_ (##cdr _g8040280410_))
                                      (_rest80429_ _tl8040880426_))
                                 (_lp80368_ _rest80429_))
                               (_else8040480418_)))
                         '#f)))
                  (_K8037680394_ (lambda () '#t)))
              (let ((_try-match8037380397_
                     (lambda ()
                       (if (##null? _g8037180381_)
                           (_K8037680394_)
                           (_else8037480389_)))))
                (if (##pair? _g8037180381_)
                    (let ((_tl8037980436_ (##cdr _g8037180381_))
                          (_hd8037880434_ (##car _g8037180381_)))
                      (let ((_hd80439_ _hd8037880434_)
                            (_rest80441_ _tl8037980436_))
                        (_K8037780431_ _rest80441_ _hd80439_)))
                    (_try-match8037380397_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80446_)
        (let ((_key?80448_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80446_ _key?80448_))))
    (define gx#stx-plist?
      (lambda _g81554_
        (let ((_g81553_ (##length _g81554_)))
          (cond ((##fx= _g81553_ 1)
                 (apply (lambda (_stx80446_) (gx#stx-plist?__0 _stx80446_))
                        _g81554_))
                ((##fx= _g81553_ 2)
                 (apply (lambda (_stx80450_ _key?80451_)
                          (gx#stx-plist?__% _stx80450_ _key?80451_))
                        _g81554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81554_))))))
    (define gx#stx-getq__%
      (lambda (_key80283_ _stx80284_ _key=?80285_)
        (if (procedure? _key=?80285_)
            '#!void
            (error '"expected procedure" _key=?80285_))
        (let _lp80287_ ((_rest80289_ _stx80284_))
          (let* ((_g8029080298_ (gx#syntax-e _rest80289_))
                 (_else8029280306_ (lambda () '#f))
                 (_K8029480340_
                  (lambda (_rest80309_ _hd80310_)
                    (let* ((_g8031180318_ (gx#syntax-e _rest80309_))
                           (_E8031380322_
                            (lambda ()
                              (error '"No clause matching" _g8031180318_)))
                           (_K8031480328_
                            (lambda (_rest80325_ _val80326_)
                              (if (_key=?80285_ _hd80310_ _key80283_)
                                  _val80326_
                                  (_lp80287_ _rest80325_)))))
                      (if (##pair? _g8031180318_)
                          (let ((_hd8031580331_ (##car _g8031180318_))
                                (_tl8031680333_ (##cdr _g8031180318_)))
                            (let* ((_val80336_ _hd8031580331_)
                                   (_rest80338_ _tl8031680333_))
                              (_K8031480328_ _rest80338_ _val80336_)))
                          (_E8031380322_))))))
            (if (##pair? _g8029080298_)
                (let ((_hd8029580343_ (##car _g8029080298_))
                      (_tl8029680345_ (##cdr _g8029080298_)))
                  (let* ((_hd80348_ _hd8029580343_)
                         (_rest80350_ _tl8029680345_))
                    (_K8029480340_ _rest80350_ _hd80348_)))
                (_else8029280306_))))))
    (define gx#stx-getq__0
      (lambda (_key80355_ _stx80356_)
        (let ((_key=?80358_ gx#stx-eq?))
          (gx#stx-getq__% _key80355_ _stx80356_ _key=?80358_))))
    (define gx#stx-getq
      (lambda _g81556_
        (let ((_g81555_ (##length _g81556_)))
          (cond ((##fx= _g81555_ 2)
                 (apply (lambda (_key80355_ _stx80356_)
                          (gx#stx-getq__0 _key80355_ _stx80356_))
                        _g81556_))
                ((##fx= _g81555_ 3)
                 (apply (lambda (_key80360_ _stx80361_ _key=?80362_)
                          (gx#stx-getq__% _key80360_ _stx80361_ _key=?80362_))
                        _g81556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81556_))))))))
