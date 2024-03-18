(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710715075)
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
      (lambda _$args82461_
        (apply make-instance gx#identifier-wrap::t _$args82461_)))
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
      (lambda _$args82458_
        (apply make-instance gx#syntax-wrap::t _$args82458_)))
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
      (lambda _$args82455_
        (apply make-instance gx#syntax-quote::t _$args82455_)))
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
      (lambda (_stx82453_) (symbol? (gx#stx-e _stx82453_))))
    (define gx#identifier-quote?
      (lambda (_stx82451_)
        (if (##structure-direct-instance-of? _stx82451_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82451_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82449_)
        (if (##structure-direct-instance-of? _stx82449_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82449_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82449_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82447_)
        (if (##structure-direct-instance-of? _stx82447_ 'gx#syntax-quote::t)
            _stx82447_
            (if (##structure-direct-instance-of? _stx82447_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82447_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82430_)
        (if (##structure-direct-instance-of? _stx82430_ 'gx#syntax-wrap::t)
            (let _lp82432_ ((_e82434_
                             (##unchecked-structure-ref
                              _stx82430_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82435_
                             (cons (##unchecked-structure-ref
                                    _stx82430_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82434_)
                  (let ((_$e82437_ (##type-id (##structure-type _e82434_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82437_)
                        (_lp82432_
                         (##unchecked-structure-ref _e82434_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82434_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82435_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82437_)
                                (eq? 'gx#identifier-wrap::t _$e82437_))
                            (##unchecked-structure-ref
                             _e82434_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82437_)
                                (_lp82432_
                                 (##unchecked-structure-ref
                                  _e82434_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82435_)
                                _e82434_))))
                  (if (null? _marks82435_)
                      _e82434_
                      (if (pair? _e82434_)
                          (cons (gx#stx-wrap (car _e82434_) _marks82435_)
                                (gx#stx-wrap (cdr _e82434_) _marks82435_))
                          (if (vector? _e82434_)
                              (vector-map
                               (lambda (_g8244282444_)
                                 (gx#stx-wrap _g8244282444_ _marks82435_))
                               _e82434_)
                              (if (box? _e82434_)
                                  (box (gx#stx-wrap
                                        (unbox _e82434_)
                                        _marks82435_))
                                  _e82434_))))))
            (if (##structure-instance-of? _stx82430_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82430_ '1 gx#AST::t '#f)
                _stx82430_))))
    (define gx#syntax->datum
      (lambda (_stx82428_)
        (if (##structure-instance-of? _stx82428_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82428_ '1 gx#AST::t '#f))
            (if (pair? _stx82428_)
                (cons (gx#syntax->datum (car _stx82428_))
                      (gx#syntax->datum (cdr _stx82428_)))
                (if (vector? _stx82428_)
                    (vector-map gx#syntax->datum _stx82428_)
                    (if (box? _stx82428_)
                        (box (gx#syntax->datum (unbox _stx82428_)))
                        _stx82428_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82371_ _datum82372_ _src82373_ _quote?82374_)
        (letrec ((_wrap-datum82376_
                  (lambda (_e82400_ _marks82401_)
                    (_wrap-inner82378_
                     _e82400_
                     (lambda (_g8240282404_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8240282404_
                        _src82373_
                        _marks82401_)))))
                 (_wrap-quote82377_
                  (lambda (_e82392_ _ctx82393_ _marks82394_)
                    (_wrap-inner82378_
                     _e82392_
                     (lambda (_g8239582397_)
                       (##structure
                        gx#syntax-quote::t
                        _g8239582397_
                        _src82373_
                        _ctx82393_
                        _marks82394_)))))
                 (_wrap-inner82378_
                  (lambda (_e82385_ _wrap-e82386_)
                    (let _recur82388_ ((_e82390_ _e82385_))
                      (if (symbol? _e82390_)
                          (_wrap-e82386_ _e82390_)
                          (if (pair? _e82390_)
                              (cons (_recur82388_ (car _e82390_))
                                    (_recur82388_ (cdr _e82390_)))
                              (if (vector? _e82390_)
                                  (vector-map _recur82388_ _e82390_)
                                  (if (box? _e82390_)
                                      (box (_recur82388_ (unbox _e82390_)))
                                      _e82390_)))))))
                 (_wrap-outer82379_
                  (lambda (_e82383_)
                    (if (##structure-instance-of? _e82383_ 'gerbil#AST::t)
                        _e82383_
                        (##structure gx#AST::t _e82383_ _src82373_)))))
          (if (##structure-instance-of? _datum82372_ 'gerbil#AST::t)
              _datum82372_
              (if (not _stx82371_)
                  (##structure gx#AST::t _datum82372_ _src82373_)
                  (if (gx#identifier? _stx82371_)
                      (let ((_stx82381_ (gx#stx-unwrap__0 _stx82371_)))
                        (_wrap-outer82379_
                         (if (##structure-direct-instance-of?
                              _stx82381_
                              'gx#syntax-quote::t)
                             (if _quote?82374_
                                 (_wrap-quote82377_
                                  _datum82372_
                                  (##unchecked-structure-ref
                                   _stx82381_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82381_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82376_
                                  _datum82372_
                                  (##unchecked-structure-ref
                                   _stx82381_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82376_
                              _datum82372_
                              (##unchecked-structure-ref
                               _stx82381_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82371_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82410_ _datum82411_)
        (let* ((_src82413_ '#f) (_quote?82415_ '#t))
          (gx#datum->syntax__%
           _stx82410_
           _datum82411_
           _src82413_
           _quote?82415_))))
    (define gx#datum->syntax__1
      (lambda (_stx82417_ _datum82418_ _src82419_)
        (let ((_quote?82421_ '#t))
          (gx#datum->syntax__%
           _stx82417_
           _datum82418_
           _src82419_
           _quote?82421_))))
    (define gx#datum->syntax
      (lambda _g82542_
        (let ((_g82541_ (##length _g82542_)))
          (cond ((##fx= _g82541_ 2)
                 (apply (lambda (_stx82410_ _datum82411_)
                          (gx#datum->syntax__0 _stx82410_ _datum82411_))
                        _g82542_))
                ((##fx= _g82541_ 3)
                 (apply (lambda (_stx82417_ _datum82418_ _src82419_)
                          (gx#datum->syntax__1
                           _stx82417_
                           _datum82418_
                           _src82419_))
                        _g82542_))
                ((##fx= _g82541_ 4)
                 (apply (lambda (_stx82423_
                                 _datum82424_
                                 _src82425_
                                 _quote?82426_)
                          (gx#datum->syntax__%
                           _stx82423_
                           _datum82424_
                           _src82425_
                           _quote?82426_))
                        _g82542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82542_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82347_ _marks82348_)
        (let _lp82350_ ((_e82352_ _stx82347_)
                        (_marks82353_ _marks82348_)
                        (_src82354_ (gx#stx-source _stx82347_)))
          (if (##structure-direct-instance-of? _e82352_ 'gx#syntax-wrap::t)
              (_lp82350_
               (##unchecked-structure-ref _e82352_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82352_ '3 gx#syntax-wrap::t '#f)
                _marks82353_)
               (##unchecked-structure-ref _e82352_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82352_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82353_)
                      _e82352_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82352_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82352_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82352_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82353_)))
                  (if (##structure-direct-instance-of?
                       _e82352_
                       'gx#syntax-quote::t)
                      _e82352_
                      (if (##structure-instance-of? _e82352_ 'gerbil#AST::t)
                          (_lp82350_
                           (##unchecked-structure-ref
                            _e82352_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82353_
                           (##unchecked-structure-ref
                            _e82352_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82352_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82352_
                               _src82354_
                               (reverse _marks82353_))
                              (if (null? _marks82353_)
                                  _e82352_
                                  (if (pair? _e82352_)
                                      (cons (gx#stx-wrap
                                             (car _e82352_)
                                             _marks82353_)
                                            (gx#stx-wrap
                                             (cdr _e82352_)
                                             _marks82353_))
                                      (if (vector? _e82352_)
                                          (vector-map
                                           (lambda (_g8235582357_)
                                             (gx#stx-wrap
                                              _g8235582357_
                                              _marks82353_))
                                           _e82352_)
                                          (if (box? _e82352_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82352_)
                                                    _marks82353_))
                                              _e82352_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82363_)
        (let ((_marks82365_ '())) (gx#stx-unwrap__% _stx82363_ _marks82365_))))
    (define gx#stx-unwrap
      (lambda _g82544_
        (let ((_g82543_ (##length _g82544_)))
          (cond ((##fx= _g82543_ 1)
                 (apply (lambda (_stx82363_) (gx#stx-unwrap__0 _stx82363_))
                        _g82544_))
                ((##fx= _g82543_ 2)
                 (apply (lambda (_stx82367_ _marks82368_)
                          (gx#stx-unwrap__% _stx82367_ _marks82368_))
                        _g82544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82544_))))))
    (define gx#stx-wrap
      (lambda (_stx82340_ _marks82341_)
        (foldl1 (lambda (_mark82343_ _stx82344_)
                  (gx#stx-apply-mark _stx82344_ _mark82343_))
                _stx82340_
                _marks82341_)))
    (define gx#stx-rewrap
      (lambda (_stx82334_ _marks82335_)
        (foldr1 (lambda (_mark82337_ _stx82338_)
                  (gx#stx-apply-mark _stx82338_ _mark82337_))
                _stx82334_
                _marks82335_)))
    (define gx#stx-apply-mark
      (lambda (_stx82331_ _mark82332_)
        (if (##structure-direct-instance-of? _stx82331_ 'gx#syntax-quote::t)
            _stx82331_
            (if (and (##structure-direct-instance-of?
                      _stx82331_
                      'gx#syntax-wrap::t)
                     (eq? _mark82332_
                          (##unchecked-structure-ref
                           _stx82331_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82331_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82331_
                 (gx#stx-source _stx82331_)
                 _mark82332_)))))
    (define gx#apply-mark
      (lambda (_mark82295_ _marks82296_)
        (let* ((_marks8229782305_ _marks82296_)
               (_else8229982313_ (lambda () (cons _mark82295_ _marks82296_)))
               (_K8230182319_
                (lambda (_rest82316_ _hd82317_)
                  (if (eq? _mark82295_ _hd82317_)
                      _rest82316_
                      (cons _mark82295_ _marks82296_)))))
          (if (##pair? _marks8229782305_)
              (let ((_hd8230282322_ (##car _marks8229782305_))
                    (_tl8230382324_ (##cdr _marks8229782305_)))
                (let* ((_hd82327_ _hd8230282322_) (_rest82329_ _tl8230382324_))
                  (_K8230182319_ _rest82329_ _hd82327_)))
              (_else8229982313_)))))
    (define gx#stx-e
      (lambda (_stx82293_)
        (if (##structure-direct-instance-of? _stx82293_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82293_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82293_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82293_ '1 gx#AST::t '#f)
                _stx82293_))))
    (define gx#stx-source
      (lambda (_stx82291_)
        (if (##structure-instance-of? _stx82291_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82291_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82285_ _src82286_)
        (if (or (##structure-instance-of? _stx82285_ 'gerbil#AST::t)
                (not _src82286_))
            _stx82285_
            (##structure gx#AST::t _stx82285_ _src82286_))))
    (define gx#stx-datum?
      (lambda (_stx82283_) (gx#self-quoting? (gx#stx-e _stx82283_))))
    (define gx#self-quoting?
      (lambda (_x82266_)
        (let ((_$e82268_ (immediate? _x82266_)))
          (if _$e82268_
              _$e82268_
              (let ((_$e82271_ (number? _x82266_)))
                (if _$e82271_
                    _$e82271_
                    (let ((_$e82274_ (keyword? _x82266_)))
                      (if _$e82274_
                          _$e82274_
                          (let ((_$e82277_ (string? _x82266_)))
                            (if _$e82277_
                                _$e82277_
                                (let ((_$e82280_ (vector? _x82266_)))
                                  (if _$e82280_
                                      _$e82280_
                                      (u8vector? _x82266_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82264_) (boolean? (gx#stx-e _e82264_))))
    (define gx#stx-keyword? (lambda (_e82262_) (keyword? (gx#stx-e _e82262_))))
    (define gx#stx-char? (lambda (_e82260_) (char? (gx#stx-e _e82260_))))
    (define gx#stx-number? (lambda (_e82258_) (number? (gx#stx-e _e82258_))))
    (define gx#stx-fixnum? (lambda (_e82256_) (fixnum? (gx#stx-e _e82256_))))
    (define gx#stx-string? (lambda (_e82254_) (string? (gx#stx-e _e82254_))))
    (define gx#stx-null? (lambda (_e82252_) (null? (gx#stx-e _e82252_))))
    (define gx#stx-pair? (lambda (_e82250_) (pair? (gx#stx-e _e82250_))))
    (define gx#stx-list?
      (lambda (_e82212_)
        (let* ((_g8221382222_ (gx#stx-e _e82212_))
               (_E8221682226_
                (lambda () (error '"No clause matching" _g8221382222_))))
          (let ((_K8221882242_
                 (lambda (_rest82240_) (gx#stx-list? _rest82240_)))
                (_K8221782232_ (lambda (_tail82230_) (null? _tail82230_))))
            (if (##pair? _g8221382222_)
                (let* ((_tl8222082245_ (##cdr _g8221382222_))
                       (_rest82248_ _tl8222082245_))
                  (gx#stx-list? _rest82248_))
                (let ((_tail82235_ _g8221382222_)) (null? _tail82235_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82205_)
        (let* ((_e82207_ (gx#stx-e _e82205_)) (_$e82209_ (pair? _e82207_)))
          (if _$e82209_ _$e82209_ (null? _e82207_)))))
    (define gx#stx-vector? (lambda (_e82203_) (vector? (gx#stx-e _e82203_))))
    (define gx#stx-box? (lambda (_e82201_) (box? (gx#stx-e _e82201_))))
    (define gx#stx-eq?
      (lambda (_x82198_ _y82199_)
        (eq? (gx#stx-e _x82198_) (gx#stx-e _y82199_))))
    (define gx#stx-eqv?
      (lambda (_x82195_ _y82196_)
        (eqv? (gx#stx-e _x82195_) (gx#stx-e _y82196_))))
    (define gx#stx-equal?
      (lambda (_x82192_ _y82193_)
        (equal? (gx#stx-e _x82192_) (gx#stx-e _y82193_))))
    (define gx#stx-false? (lambda (_x82190_) (not (gx#stx-e _x82190_))))
    (define gx#stx-identifier
      (lambda (_template82187_ . _args82188_)
        (gx#datum->syntax__1
         _template82187_
         (apply make-symbol (gx#syntax->datum _args82188_))
         (gx#stx-source _template82187_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82185_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82185_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82183_)
        (if (##structure-direct-instance-of? _stx82183_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82183_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82183_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82183_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82183_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82179_)
        (let ((_stx82181_ (gx#stx-unwrap__0 _stx82179_)))
          (if (gx#identifier-quote? _stx82181_)
              (##unchecked-structure-ref _stx82181_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82134_)
        (let* ((_g8213582145_ (gx#stx-e _stx82134_))
               (_else8213882153_ (lambda () '#f)))
          (let ((_K8214182167_
                 (lambda (_rest82164_ _hd82165_)
                   (if (gx#identifier? _hd82165_)
                       (gx#identifier-list? _rest82164_)
                       '#f)))
                (_K8214082158_ (lambda () '#t)))
            (let ((_try-match8213782161_
                   (lambda ()
                     (if (##null? _g8213582145_)
                         (_K8214082158_)
                         (_else8213882153_)))))
              (if (##pair? _g8213582145_)
                  (let ((_tl8214382172_ (##cdr _g8213582145_))
                        (_hd8214282170_ (##car _g8213582145_)))
                    (let ((_hd82175_ _hd8214282170_)
                          (_rest82177_ _tl8214382172_))
                      (_K8214182167_ _rest82177_ _hd82175_)))
                  (_try-match8213782161_)))))))
    (define gx#genident__%
      (lambda (_e82111_ _src82112_)
        (gx#stx-wrap-source
         (gensym (let ((_e82114_ (gx#stx-e _e82111_)))
                   (if (interned-symbol? _e82114_) _e82114_ 'g)))
         (let ((_$e82116_ (gx#stx-source _e82111_)))
           (if _$e82116_ _$e82116_ _src82112_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82123_ 'g) (_src82125_ '#f))
          (gx#genident__% _e82123_ _src82125_))))
    (define gx#genident__1
      (lambda (_e82127_)
        (let ((_src82129_ '#f)) (gx#genident__% _e82127_ _src82129_))))
    (define gx#genident
      (lambda _g82546_
        (let ((_g82545_ (##length _g82546_)))
          (cond ((##fx= _g82545_ 0)
                 (apply (lambda () (gx#genident__0)) _g82546_))
                ((##fx= _g82545_ 1)
                 (apply (lambda (_e82127_) (gx#genident__1 _e82127_))
                        _g82546_))
                ((##fx= _g82545_ 2)
                 (apply (lambda (_e82131_ _src82132_)
                          (gx#genident__% _e82131_ _src82132_))
                        _g82546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82546_))))))
    (define gx#gentemps
      (lambda (_stx-lst82108_) (gx#stx-map1 gx#genident _stx-lst82108_)))
    (define gx#syntax->list
      (lambda (_stx82106_) (gx#stx-map1 values _stx82106_)))
    (define gx#stx-car
      (lambda (_stx82103_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82103_)))))
    (define gx#stx-cdr
      (lambda (_stx82100_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82100_)))))
    (define gx#stx-length
      (lambda (_stx82065_)
        (let _lp82067_ ((_rest82069_ _stx82065_) (_n82070_ '0))
          (let* ((_g8207182079_ (gx#stx-e _rest82069_))
                 (_else8207382087_ (lambda () _n82070_))
                 (_K8207582092_
                  (lambda (_rest82090_)
                    (_lp82067_ _rest82090_ (fx+ _n82070_ '1)))))
            (if (##pair? _g8207182079_)
                (let* ((_tl8207782095_ (##cdr _g8207182079_))
                       (_rest82098_ _tl8207782095_))
                  (_K8207582092_ _rest82098_))
                (_else8207382087_))))))
    (define gx#stx-for-each
      (lambda _g82548_
        (let ((_g82547_ (##length _g82548_)))
          (cond ((##fx= _g82547_ 2)
                 (apply (lambda (_f82058_ _stx82059_)
                          (gx#stx-for-each1 _f82058_ _stx82059_))
                        _g82548_))
                ((##fx= _g82547_ 3)
                 (apply (lambda (_f82061_ _xstx82062_ _ystx82063_)
                          (gx#stx-for-each2 _f82061_ _xstx82062_ _ystx82063_))
                        _g82548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82548_))))))
    (define gx#stx-for-each1
      (lambda (_f82008_ _stx82009_)
        (if (procedure? _f82008_)
            '#!void
            (error '"expected procedure" _f82008_))
        (let _lp82011_ ((_rest82013_ _stx82009_))
          (let* ((_g8201482024_ (gx#syntax-e _rest82013_))
                 (_else8201782032_ (lambda () (_f82008_ _rest82013_))))
            (let ((_K8202082046_
                   (lambda (_rest82043_ _hd82044_)
                     (_f82008_ _hd82044_)
                     (_lp82011_ _rest82043_)))
                  (_K8201982037_ (lambda () '#!void)))
              (let ((_try-match8201682040_
                     (lambda ()
                       (if (##null? _g8201482024_)
                           (_K8201982037_)
                           (_else8201782032_)))))
                (if (##pair? _g8201482024_)
                    (let ((_tl8202282051_ (##cdr _g8201482024_))
                          (_hd8202182049_ (##car _g8201482024_)))
                      (let ((_hd82054_ _hd8202182049_)
                            (_rest82056_ _tl8202282051_))
                        (_K8202082046_ _rest82056_ _hd82054_)))
                    (_try-match8201682040_))))))))
    (define gx#stx-for-each2
      (lambda (_f81913_ _xstx81914_ _ystx81915_)
        (if (procedure? _f81913_)
            '#!void
            (error '"expected procedure" _f81913_))
        (let _lp81917_ ((_xrest81919_ _xstx81914_) (_yrest81920_ _ystx81915_))
          (let* ((_g8192181931_ (gx#syntax-e _xrest81919_))
                 (_else8192481939_ (lambda () '#!void)))
            (let ((_K8192781996_
                   (lambda (_xrest81965_ _xhd81966_)
                     (let* ((_g8196781974_ (gx#syntax-e _yrest81920_))
                            (_E8196981978_
                             (lambda ()
                               (error '"No clause matching" _g8196781974_)))
                            (_K8197081984_
                             (lambda (_yrest81981_ _yhd81982_)
                               (_f81913_ _xhd81966_ _yhd81982_)
                               (_lp81917_ _xrest81965_ _yrest81981_))))
                       (if (##pair? _g8196781974_)
                           (let ((_hd8197181987_ (##car _g8196781974_))
                                 (_tl8197281989_ (##cdr _g8196781974_)))
                             (let* ((_yhd81992_ _hd8197181987_)
                                    (_yrest81994_ _tl8197281989_))
                               (_K8197081984_ _yrest81994_ _yhd81992_)))
                           (_E8196981978_)))))
                  (_K8192681959_
                   (lambda ()
                     (let* ((_yrest8194381948_ _yrest81920_)
                            (_E8194581952_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8194381948_)))
                            (_K8194681956_
                             (lambda () (_f81913_ _xrest81919_ _yrest81920_))))
                       (if (not (gx#stx-null? _yrest8194381948_))
                           (_K8194681956_)
                           (_E8194581952_))))))
              (let ((_try-match8192381962_
                     (lambda ()
                       (if (not (null? _g8192181931_))
                           (_K8192681959_)
                           (_else8192481939_)))))
                (if (##pair? _g8192181931_)
                    (let ((_tl8192982001_ (##cdr _g8192181931_))
                          (_hd8192881999_ (##car _g8192181931_)))
                      (let ((_xhd82004_ _hd8192881999_)
                            (_xrest82006_ _tl8192982001_))
                        (_K8192781996_ _xrest82006_ _xhd82004_)))
                    (_try-match8192381962_))))))))
    (define gx#stx-map
      (lambda _g82550_
        (let ((_g82549_ (##length _g82550_)))
          (cond ((##fx= _g82549_ 2)
                 (apply (lambda (_f81906_ _stx81907_)
                          (gx#stx-map1 _f81906_ _stx81907_))
                        _g82550_))
                ((##fx= _g82549_ 3)
                 (apply (lambda (_f81909_ _xstx81910_ _ystx81911_)
                          (gx#stx-map2 _f81909_ _xstx81910_ _ystx81911_))
                        _g82550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82550_))))))
    (define gx#stx-map1
      (lambda (_f81856_ _stx81857_)
        (if (procedure? _f81856_)
            '#!void
            (error '"expected procedure" _f81856_))
        (let _recur81859_ ((_rest81861_ _stx81857_))
          (let* ((_g8186281872_ (gx#syntax-e _rest81861_))
                 (_else8186581880_ (lambda () (_f81856_ _rest81861_))))
            (let ((_K8186881894_
                   (lambda (_rest81891_ _hd81892_)
                     (cons (_f81856_ _hd81892_) (_recur81859_ _rest81891_))))
                  (_K8186781885_ (lambda () '())))
              (let ((_try-match8186481888_
                     (lambda ()
                       (if (##null? _g8186281872_)
                           (_K8186781885_)
                           (_else8186581880_)))))
                (if (##pair? _g8186281872_)
                    (let ((_tl8187081899_ (##cdr _g8186281872_))
                          (_hd8186981897_ (##car _g8186281872_)))
                      (let ((_hd81902_ _hd8186981897_)
                            (_rest81904_ _tl8187081899_))
                        (_K8186881894_ _rest81904_ _hd81902_)))
                    (_try-match8186481888_))))))))
    (define gx#stx-map2
      (lambda (_f81761_ _xstx81762_ _ystx81763_)
        (if (procedure? _f81761_)
            '#!void
            (error '"expected procedure" _f81761_))
        (let _recur81765_ ((_xrest81767_ _xstx81762_)
                           (_yrest81768_ _ystx81763_))
          (let* ((_g8176981779_ (gx#syntax-e _xrest81767_))
                 (_else8177281787_ (lambda () '())))
            (let ((_K8177581844_
                   (lambda (_xrest81813_ _xhd81814_)
                     (let* ((_g8181581822_ (gx#syntax-e _yrest81768_))
                            (_E8181781826_
                             (lambda ()
                               (error '"No clause matching" _g8181581822_)))
                            (_K8181881832_
                             (lambda (_yrest81829_ _yhd81830_)
                               (cons (_f81761_ _xhd81814_ _yhd81830_)
                                     (_recur81765_
                                      _xrest81813_
                                      _yrest81829_)))))
                       (if (##pair? _g8181581822_)
                           (let ((_hd8181981835_ (##car _g8181581822_))
                                 (_tl8182081837_ (##cdr _g8181581822_)))
                             (let* ((_yhd81840_ _hd8181981835_)
                                    (_yrest81842_ _tl8182081837_))
                               (_K8181881832_ _yrest81842_ _yhd81840_)))
                           (_E8181781826_)))))
                  (_K8177481807_
                   (lambda ()
                     (let* ((_yrest8179181796_ _yrest81768_)
                            (_E8179381800_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8179181796_)))
                            (_K8179481804_
                             (lambda () (_f81761_ _xrest81767_ _yrest81768_))))
                       (if (not (gx#stx-null? _yrest8179181796_))
                           (_K8179481804_)
                           (_E8179381800_))))))
              (let ((_try-match8177181810_
                     (lambda ()
                       (if (not (null? _g8176981779_))
                           (_K8177481807_)
                           (_else8177281787_)))))
                (if (##pair? _g8176981779_)
                    (let ((_tl8177781849_ (##cdr _g8176981779_))
                          (_hd8177681847_ (##car _g8176981779_)))
                      (let ((_xhd81852_ _hd8177681847_)
                            (_xrest81854_ _tl8177781849_))
                        (_K8177581844_ _xrest81854_ _xhd81852_)))
                    (_try-match8177181810_))))))))
    (define gx#stx-andmap
      (lambda (_f81711_ _stx81712_)
        (if (procedure? _f81711_)
            '#!void
            (error '"expected procedure" _f81711_))
        (let _lp81714_ ((_rest81716_ _stx81712_))
          (let* ((_g8171781727_ (gx#syntax-e _rest81716_))
                 (_else8172081735_ (lambda () (_f81711_ _rest81716_))))
            (let ((_K8172381749_
                   (lambda (_rest81746_ _hd81747_)
                     (if (_f81711_ _hd81747_) (_lp81714_ _rest81746_) '#f)))
                  (_K8172281740_ (lambda () '#t)))
              (let ((_try-match8171981743_
                     (lambda ()
                       (if (##null? _g8171781727_)
                           (_K8172281740_)
                           (_else8172081735_)))))
                (if (##pair? _g8171781727_)
                    (let ((_tl8172581754_ (##cdr _g8171781727_))
                          (_hd8172481752_ (##car _g8171781727_)))
                      (let ((_hd81757_ _hd8172481752_)
                            (_rest81759_ _tl8172581754_))
                        (_K8172381749_ _rest81759_ _hd81757_)))
                    (_try-match8171981743_))))))))
    (define gx#stx-ormap
      (lambda (_f81658_ _stx81659_)
        (if (procedure? _f81658_)
            '#!void
            (error '"expected procedure" _f81658_))
        (let _lp81661_ ((_rest81663_ _stx81659_))
          (let* ((_g8166481674_ (gx#syntax-e _rest81663_))
                 (_else8166781682_ (lambda () (_f81658_ _rest81663_))))
            (let ((_K8167081699_
                   (lambda (_rest81693_ _hd81694_)
                     (let ((_$e81696_ (_f81658_ _hd81694_)))
                       (if _$e81696_ _$e81696_ (_lp81661_ _rest81693_)))))
                  (_K8166981687_ (lambda () '#f)))
              (let ((_try-match8166681690_
                     (lambda ()
                       (if (##null? _g8166481674_)
                           (_K8166981687_)
                           (_else8166781682_)))))
                (if (##pair? _g8166481674_)
                    (let ((_tl8167281704_ (##cdr _g8166481674_))
                          (_hd8167181702_ (##car _g8166481674_)))
                      (let ((_hd81707_ _hd8167181702_)
                            (_rest81709_ _tl8167281704_))
                        (_K8167081699_ _rest81709_ _hd81707_)))
                    (_try-match8166681690_))))))))
    (define gx#stx-foldl
      (lambda (_f81606_ _iv81607_ _stx81608_)
        (if (procedure? _f81606_)
            '#!void
            (error '"expected procedure" _f81606_))
        (let _lp81610_ ((_r81612_ _iv81607_) (_rest81613_ _stx81608_))
          (let* ((_g8161481624_ (gx#syntax-e _rest81613_))
                 (_else8161781632_
                  (lambda () (_f81606_ _rest81613_ _r81612_))))
            (let ((_K8162081646_
                   (lambda (_rest81643_ _hd81644_)
                     (_lp81610_ (_f81606_ _hd81644_ _r81612_) _rest81643_)))
                  (_K8161981637_ (lambda () _r81612_)))
              (let ((_try-match8161681640_
                     (lambda ()
                       (if (##null? _g8161481624_)
                           (_K8161981637_)
                           (_else8161781632_)))))
                (if (##pair? _g8161481624_)
                    (let ((_tl8162281651_ (##cdr _g8161481624_))
                          (_hd8162181649_ (##car _g8161481624_)))
                      (let ((_hd81654_ _hd8162181649_)
                            (_rest81656_ _tl8162281651_))
                        (_K8162081646_ _rest81656_ _hd81654_)))
                    (_try-match8161681640_))))))))
    (define gx#stx-foldr
      (lambda (_f81555_ _iv81556_ _stx81557_)
        (if (procedure? _f81555_)
            '#!void
            (error '"expected procedure" _f81555_))
        (let _recur81559_ ((_rest81561_ _stx81557_))
          (let* ((_g8156281572_ (gx#syntax-e _rest81561_))
                 (_else8156581580_
                  (lambda () (_f81555_ _rest81561_ _iv81556_))))
            (let ((_K8156881594_
                   (lambda (_rest81591_ _hd81592_)
                     (_f81555_ _hd81592_ (_recur81559_ _rest81591_))))
                  (_K8156781585_ (lambda () _iv81556_)))
              (let ((_try-match8156481588_
                     (lambda ()
                       (if (##null? _g8156281572_)
                           (_K8156781585_)
                           (_else8156581580_)))))
                (if (##pair? _g8156281572_)
                    (let ((_tl8157081599_ (##cdr _g8156281572_))
                          (_hd8156981597_ (##car _g8156281572_)))
                      (let ((_hd81602_ _hd8156981597_)
                            (_rest81604_ _tl8157081599_))
                        (_K8156881594_ _rest81604_ _hd81602_)))
                    (_try-match8156481588_))))))))
    (define gx#stx-reverse
      (lambda (_stx81553_) (gx#stx-foldl cons '() _stx81553_)))
    (define gx#stx-last
      (lambda (_stx81514_)
        (let _lp81516_ ((_rest81518_ _stx81514_))
          (let* ((_g8151981527_ (gx#syntax-e _rest81518_))
                 (_else8152181535_ (lambda () _rest81518_))
                 (_K8152381541_
                  (lambda (_rest81538_ _hd81539_)
                    (if (gx#stx-null? _rest81538_)
                        _hd81539_
                        (_lp81516_ _rest81538_)))))
            (if (##pair? _g8151981527_)
                (let ((_hd8152481544_ (##car _g8151981527_))
                      (_tl8152581546_ (##cdr _g8151981527_)))
                  (let* ((_hd81549_ _hd8152481544_)
                         (_rest81551_ _tl8152581546_))
                    (_K8152381541_ _rest81551_ _hd81549_)))
                (_else8152181535_))))))
    (define gx#stx-last-pair
      (lambda (_stx81485_)
        (let _lp81487_ ((_hd81489_ _stx81485_))
          (let* ((_g8149081497_ (gx#syntax-e _hd81489_))
                 (_E8149281501_
                  (lambda () (error '"No clause matching" _g8149081497_)))
                 (_K8149381506_
                  (lambda (_rest81504_)
                    (if (gx#stx-pair? _rest81504_)
                        (_lp81487_ _rest81504_)
                        _hd81489_))))
            (if (##pair? _g8149081497_)
                (let* ((_tl8149581509_ (##cdr _g8149081497_))
                       (_rest81512_ _tl8149581509_))
                  (_K8149381506_ _rest81512_))
                (_E8149281501_))))))
    (define gx#stx-list-tail
      (lambda (_stx81454_ _k81455_)
        (let _lp81457_ ((_rest81459_ _stx81454_) (_k81460_ _k81455_))
          (if (fxpositive? _k81460_)
              (let* ((_g8146181468_ (gx#syntax-e _rest81459_))
                     (_E8146381472_
                      (lambda () (error '"No clause matching" _g8146181468_)))
                     (_K8146481477_
                      (lambda (_rest81475_)
                        (_lp81457_ _rest81475_ (fx- _k81460_ '1)))))
                (if (##pair? _g8146181468_)
                    (let* ((_tl8146681480_ (##cdr _g8146181468_))
                           (_rest81483_ _tl8146681480_))
                      (_K8146481477_ _rest81483_))
                    (_E8146381472_)))
              _rest81459_))))
    (define gx#stx-list-ref
      (lambda (_stx81451_ _k81452_)
        (gx#stx-car (gx#stx-list-tail _stx81451_ _k81452_))))
    (define gx#stx-plist?__%
      (lambda (_stx81363_ _key?81364_)
        (if (procedure? _key?81364_)
            '#!void
            (error '"expected procedure" _key?81364_))
        (let _lp81366_ ((_rest81368_ _stx81363_))
          (let* ((_g8136981379_ (gx#stx-e _rest81368_))
                 (_else8137281387_ (lambda () '#f)))
            (let ((_K8137581429_
                   (lambda (_rest81398_ _hd81399_)
                     (if (_key?81364_ _hd81399_)
                         (let* ((_g8140081408_ (gx#stx-e _rest81398_))
                                (_else8140281416_ (lambda () '#f))
                                (_K8140481421_
                                 (lambda (_rest81419_)
                                   (_lp81366_ _rest81419_))))
                           (if (##pair? _g8140081408_)
                               (let* ((_tl8140681424_ (##cdr _g8140081408_))
                                      (_rest81427_ _tl8140681424_))
                                 (_lp81366_ _rest81427_))
                               (_else8140281416_)))
                         '#f)))
                  (_K8137481392_ (lambda () '#t)))
              (let ((_try-match8137181395_
                     (lambda ()
                       (if (##null? _g8136981379_)
                           (_K8137481392_)
                           (_else8137281387_)))))
                (if (##pair? _g8136981379_)
                    (let ((_tl8137781434_ (##cdr _g8136981379_))
                          (_hd8137681432_ (##car _g8136981379_)))
                      (let ((_hd81437_ _hd8137681432_)
                            (_rest81439_ _tl8137781434_))
                        (_K8137581429_ _rest81439_ _hd81437_)))
                    (_try-match8137181395_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81444_)
        (let ((_key?81446_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81444_ _key?81446_))))
    (define gx#stx-plist?
      (lambda _g82552_
        (let ((_g82551_ (##length _g82552_)))
          (cond ((##fx= _g82551_ 1)
                 (apply (lambda (_stx81444_) (gx#stx-plist?__0 _stx81444_))
                        _g82552_))
                ((##fx= _g82551_ 2)
                 (apply (lambda (_stx81448_ _key?81449_)
                          (gx#stx-plist?__% _stx81448_ _key?81449_))
                        _g82552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82552_))))))
    (define gx#stx-getq__%
      (lambda (_key81281_ _stx81282_ _key=?81283_)
        (if (procedure? _key=?81283_)
            '#!void
            (error '"expected procedure" _key=?81283_))
        (let _lp81285_ ((_rest81287_ _stx81282_))
          (let* ((_g8128881296_ (gx#syntax-e _rest81287_))
                 (_else8129081304_ (lambda () '#f))
                 (_K8129281338_
                  (lambda (_rest81307_ _hd81308_)
                    (let* ((_g8130981316_ (gx#syntax-e _rest81307_))
                           (_E8131181320_
                            (lambda ()
                              (error '"No clause matching" _g8130981316_)))
                           (_K8131281326_
                            (lambda (_rest81323_ _val81324_)
                              (if (_key=?81283_ _hd81308_ _key81281_)
                                  _val81324_
                                  (_lp81285_ _rest81323_)))))
                      (if (##pair? _g8130981316_)
                          (let ((_hd8131381329_ (##car _g8130981316_))
                                (_tl8131481331_ (##cdr _g8130981316_)))
                            (let* ((_val81334_ _hd8131381329_)
                                   (_rest81336_ _tl8131481331_))
                              (_K8131281326_ _rest81336_ _val81334_)))
                          (_E8131181320_))))))
            (if (##pair? _g8128881296_)
                (let ((_hd8129381341_ (##car _g8128881296_))
                      (_tl8129481343_ (##cdr _g8128881296_)))
                  (let* ((_hd81346_ _hd8129381341_)
                         (_rest81348_ _tl8129481343_))
                    (_K8129281338_ _rest81348_ _hd81346_)))
                (_else8129081304_))))))
    (define gx#stx-getq__0
      (lambda (_key81353_ _stx81354_)
        (let ((_key=?81356_ gx#stx-eq?))
          (gx#stx-getq__% _key81353_ _stx81354_ _key=?81356_))))
    (define gx#stx-getq
      (lambda _g82554_
        (let ((_g82553_ (##length _g82554_)))
          (cond ((##fx= _g82553_ 2)
                 (apply (lambda (_key81353_ _stx81354_)
                          (gx#stx-getq__0 _key81353_ _stx81354_))
                        _g82554_))
                ((##fx= _g82553_ 3)
                 (apply (lambda (_key81358_ _stx81359_ _key=?81360_)
                          (gx#stx-getq__% _key81358_ _stx81359_ _key=?81360_))
                        _g82554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82554_))))))))
