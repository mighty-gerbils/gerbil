(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710699091)
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
      (lambda _$args82471_
        (apply make-instance gx#identifier-wrap::t _$args82471_)))
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
      (lambda _$args82468_
        (apply make-instance gx#syntax-wrap::t _$args82468_)))
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
      (lambda _$args82465_
        (apply make-instance gx#syntax-quote::t _$args82465_)))
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
      (lambda (_stx82463_) (symbol? (gx#stx-e _stx82463_))))
    (define gx#identifier-quote?
      (lambda (_stx82461_)
        (if (##structure-direct-instance-of? _stx82461_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx82461_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx82459_)
        (if (##structure-direct-instance-of? _stx82459_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx82459_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx82459_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx82457_)
        (if (##structure-direct-instance-of? _stx82457_ 'gx#syntax-quote::t)
            _stx82457_
            (if (##structure-direct-instance-of? _stx82457_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx82457_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx82440_)
        (if (##structure-direct-instance-of? _stx82440_ 'gx#syntax-wrap::t)
            (let _lp82442_ ((_e82444_
                             (##unchecked-structure-ref
                              _stx82440_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks82445_
                             (cons (##unchecked-structure-ref
                                    _stx82440_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e82444_)
                  (let ((_$e82447_ (##type-id (##structure-type _e82444_))))
                    (if (eq? 'gx#syntax-wrap::t _$e82447_)
                        (_lp82442_
                         (##unchecked-structure-ref _e82444_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e82444_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks82445_))
                        (if (or (eq? 'gx#syntax-quote::t _$e82447_)
                                (eq? 'gx#identifier-wrap::t _$e82447_))
                            (##unchecked-structure-ref
                             _e82444_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e82447_)
                                (_lp82442_
                                 (##unchecked-structure-ref
                                  _e82444_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks82445_)
                                _e82444_))))
                  (if (null? _marks82445_)
                      _e82444_
                      (if (pair? _e82444_)
                          (cons (gx#stx-wrap (car _e82444_) _marks82445_)
                                (gx#stx-wrap (cdr _e82444_) _marks82445_))
                          (if (vector? _e82444_)
                              (vector-map
                               (lambda (_g8245282454_)
                                 (gx#stx-wrap _g8245282454_ _marks82445_))
                               _e82444_)
                              (if (box? _e82444_)
                                  (box (gx#stx-wrap
                                        (unbox _e82444_)
                                        _marks82445_))
                                  _e82444_))))))
            (if (##structure-instance-of? _stx82440_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82440_ '1 gx#AST::t '#f)
                _stx82440_))))
    (define gx#syntax->datum
      (lambda (_stx82438_)
        (if (##structure-instance-of? _stx82438_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx82438_ '1 gx#AST::t '#f))
            (if (pair? _stx82438_)
                (cons (gx#syntax->datum (car _stx82438_))
                      (gx#syntax->datum (cdr _stx82438_)))
                (if (vector? _stx82438_)
                    (vector-map gx#syntax->datum _stx82438_)
                    (if (box? _stx82438_)
                        (box (gx#syntax->datum (unbox _stx82438_)))
                        _stx82438_))))))
    (define gx#datum->syntax__%
      (lambda (_stx82381_ _datum82382_ _src82383_ _quote?82384_)
        (letrec ((_wrap-datum82386_
                  (lambda (_e82410_ _marks82411_)
                    (_wrap-inner82388_
                     _e82410_
                     (lambda (_g8241282414_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8241282414_
                        _src82383_
                        _marks82411_)))))
                 (_wrap-quote82387_
                  (lambda (_e82402_ _ctx82403_ _marks82404_)
                    (_wrap-inner82388_
                     _e82402_
                     (lambda (_g8240582407_)
                       (##structure
                        gx#syntax-quote::t
                        _g8240582407_
                        _src82383_
                        _ctx82403_
                        _marks82404_)))))
                 (_wrap-inner82388_
                  (lambda (_e82395_ _wrap-e82396_)
                    (let _recur82398_ ((_e82400_ _e82395_))
                      (if (symbol? _e82400_)
                          (_wrap-e82396_ _e82400_)
                          (if (pair? _e82400_)
                              (cons (_recur82398_ (car _e82400_))
                                    (_recur82398_ (cdr _e82400_)))
                              (if (vector? _e82400_)
                                  (vector-map _recur82398_ _e82400_)
                                  (if (box? _e82400_)
                                      (box (_recur82398_ (unbox _e82400_)))
                                      _e82400_)))))))
                 (_wrap-outer82389_
                  (lambda (_e82393_)
                    (if (##structure-instance-of? _e82393_ 'gerbil#AST::t)
                        _e82393_
                        (##structure gx#AST::t _e82393_ _src82383_)))))
          (if (##structure-instance-of? _datum82382_ 'gerbil#AST::t)
              _datum82382_
              (if (not _stx82381_)
                  (##structure gx#AST::t _datum82382_ _src82383_)
                  (if (gx#identifier? _stx82381_)
                      (let ((_stx82391_ (gx#stx-unwrap__0 _stx82381_)))
                        (_wrap-outer82389_
                         (if (##structure-direct-instance-of?
                              _stx82391_
                              'gx#syntax-quote::t)
                             (if _quote?82384_
                                 (_wrap-quote82387_
                                  _datum82382_
                                  (##unchecked-structure-ref
                                   _stx82391_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx82391_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum82386_
                                  _datum82382_
                                  (##unchecked-structure-ref
                                   _stx82391_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum82386_
                              _datum82382_
                              (##unchecked-structure-ref
                               _stx82391_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx82381_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx82420_ _datum82421_)
        (let* ((_src82423_ '#f) (_quote?82425_ '#t))
          (gx#datum->syntax__%
           _stx82420_
           _datum82421_
           _src82423_
           _quote?82425_))))
    (define gx#datum->syntax__1
      (lambda (_stx82427_ _datum82428_ _src82429_)
        (let ((_quote?82431_ '#t))
          (gx#datum->syntax__%
           _stx82427_
           _datum82428_
           _src82429_
           _quote?82431_))))
    (define gx#datum->syntax
      (lambda _g82552_
        (let ((_g82551_ (##length _g82552_)))
          (cond ((##fx= _g82551_ 2)
                 (apply (lambda (_stx82420_ _datum82421_)
                          (gx#datum->syntax__0 _stx82420_ _datum82421_))
                        _g82552_))
                ((##fx= _g82551_ 3)
                 (apply (lambda (_stx82427_ _datum82428_ _src82429_)
                          (gx#datum->syntax__1
                           _stx82427_
                           _datum82428_
                           _src82429_))
                        _g82552_))
                ((##fx= _g82551_ 4)
                 (apply (lambda (_stx82433_
                                 _datum82434_
                                 _src82435_
                                 _quote?82436_)
                          (gx#datum->syntax__%
                           _stx82433_
                           _datum82434_
                           _src82435_
                           _quote?82436_))
                        _g82552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g82552_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx82357_ _marks82358_)
        (let _lp82360_ ((_e82362_ _stx82357_)
                        (_marks82363_ _marks82358_)
                        (_src82364_ (gx#stx-source _stx82357_)))
          (if (##structure-direct-instance-of? _e82362_ 'gx#syntax-wrap::t)
              (_lp82360_
               (##unchecked-structure-ref _e82362_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e82362_ '3 gx#syntax-wrap::t '#f)
                _marks82363_)
               (##unchecked-structure-ref _e82362_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e82362_
                   'gx#identifier-wrap::t)
                  (if (null? _marks82363_)
                      _e82362_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e82362_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e82362_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82362_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82363_)))
                  (if (##structure-direct-instance-of?
                       _e82362_
                       'gx#syntax-quote::t)
                      _e82362_
                      (if (##structure-instance-of? _e82362_ 'gerbil#AST::t)
                          (_lp82360_
                           (##unchecked-structure-ref
                            _e82362_
                            '1
                            gx#AST::t
                            '#f)
                           _marks82363_
                           (##unchecked-structure-ref
                            _e82362_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e82362_)
                              (##structure
                               gx#identifier-wrap::t
                               _e82362_
                               _src82364_
                               (reverse _marks82363_))
                              (if (null? _marks82363_)
                                  _e82362_
                                  (if (pair? _e82362_)
                                      (cons (gx#stx-wrap
                                             (car _e82362_)
                                             _marks82363_)
                                            (gx#stx-wrap
                                             (cdr _e82362_)
                                             _marks82363_))
                                      (if (vector? _e82362_)
                                          (vector-map
                                           (lambda (_g8236582367_)
                                             (gx#stx-wrap
                                              _g8236582367_
                                              _marks82363_))
                                           _e82362_)
                                          (if (box? _e82362_)
                                              (box (gx#stx-wrap
                                                    (unbox _e82362_)
                                                    _marks82363_))
                                              _e82362_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx82373_)
        (let ((_marks82375_ '())) (gx#stx-unwrap__% _stx82373_ _marks82375_))))
    (define gx#stx-unwrap
      (lambda _g82554_
        (let ((_g82553_ (##length _g82554_)))
          (cond ((##fx= _g82553_ 1)
                 (apply (lambda (_stx82373_) (gx#stx-unwrap__0 _stx82373_))
                        _g82554_))
                ((##fx= _g82553_ 2)
                 (apply (lambda (_stx82377_ _marks82378_)
                          (gx#stx-unwrap__% _stx82377_ _marks82378_))
                        _g82554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g82554_))))))
    (define gx#stx-wrap
      (lambda (_stx82350_ _marks82351_)
        (foldl1 (lambda (_mark82353_ _stx82354_)
                  (gx#stx-apply-mark _stx82354_ _mark82353_))
                _stx82350_
                _marks82351_)))
    (define gx#stx-rewrap
      (lambda (_stx82344_ _marks82345_)
        (foldr1 (lambda (_mark82347_ _stx82348_)
                  (gx#stx-apply-mark _stx82348_ _mark82347_))
                _stx82344_
                _marks82345_)))
    (define gx#stx-apply-mark
      (lambda (_stx82341_ _mark82342_)
        (if (##structure-direct-instance-of? _stx82341_ 'gx#syntax-quote::t)
            _stx82341_
            (if (and (##structure-direct-instance-of?
                      _stx82341_
                      'gx#syntax-wrap::t)
                     (eq? _mark82342_
                          (##unchecked-structure-ref
                           _stx82341_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx82341_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx82341_
                 (gx#stx-source _stx82341_)
                 _mark82342_)))))
    (define gx#apply-mark
      (lambda (_mark82305_ _marks82306_)
        (let* ((_marks8230782315_ _marks82306_)
               (_else8230982323_ (lambda () (cons _mark82305_ _marks82306_)))
               (_K8231182329_
                (lambda (_rest82326_ _hd82327_)
                  (if (eq? _mark82305_ _hd82327_)
                      _rest82326_
                      (cons _mark82305_ _marks82306_)))))
          (if (##pair? _marks8230782315_)
              (let ((_hd8231282332_ (##car _marks8230782315_))
                    (_tl8231382334_ (##cdr _marks8230782315_)))
                (let* ((_hd82337_ _hd8231282332_) (_rest82339_ _tl8231382334_))
                  (_K8231182329_ _rest82339_ _hd82337_)))
              (_else8230982323_)))))
    (define gx#stx-e
      (lambda (_stx82303_)
        (if (##structure-direct-instance-of? _stx82303_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx82303_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx82303_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx82303_ '1 gx#AST::t '#f)
                _stx82303_))))
    (define gx#stx-source
      (lambda (_stx82301_)
        (if (##structure-instance-of? _stx82301_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx82301_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx82295_ _src82296_)
        (if (or (##structure-instance-of? _stx82295_ 'gerbil#AST::t)
                (not _src82296_))
            _stx82295_
            (##structure gx#AST::t _stx82295_ _src82296_))))
    (define gx#stx-datum?
      (lambda (_stx82293_) (gx#self-quoting? (gx#stx-e _stx82293_))))
    (define gx#self-quoting?
      (lambda (_x82276_)
        (let ((_$e82278_ (immediate? _x82276_)))
          (if _$e82278_
              _$e82278_
              (let ((_$e82281_ (number? _x82276_)))
                (if _$e82281_
                    _$e82281_
                    (let ((_$e82284_ (keyword? _x82276_)))
                      (if _$e82284_
                          _$e82284_
                          (let ((_$e82287_ (string? _x82276_)))
                            (if _$e82287_
                                _$e82287_
                                (let ((_$e82290_ (vector? _x82276_)))
                                  (if _$e82290_
                                      _$e82290_
                                      (u8vector? _x82276_)))))))))))))
    (define gx#stx-boolean? (lambda (_e82274_) (boolean? (gx#stx-e _e82274_))))
    (define gx#stx-keyword? (lambda (_e82272_) (keyword? (gx#stx-e _e82272_))))
    (define gx#stx-char? (lambda (_e82270_) (char? (gx#stx-e _e82270_))))
    (define gx#stx-number? (lambda (_e82268_) (number? (gx#stx-e _e82268_))))
    (define gx#stx-fixnum? (lambda (_e82266_) (fixnum? (gx#stx-e _e82266_))))
    (define gx#stx-string? (lambda (_e82264_) (string? (gx#stx-e _e82264_))))
    (define gx#stx-null? (lambda (_e82262_) (null? (gx#stx-e _e82262_))))
    (define gx#stx-pair? (lambda (_e82260_) (pair? (gx#stx-e _e82260_))))
    (define gx#stx-list?
      (lambda (_e82222_)
        (let* ((_g8222382232_ (gx#stx-e _e82222_))
               (_E8222682236_
                (lambda () (error '"No clause matching" _g8222382232_))))
          (let ((_K8222882252_
                 (lambda (_rest82250_) (gx#stx-list? _rest82250_)))
                (_K8222782242_ (lambda (_tail82240_) (null? _tail82240_))))
            (if (##pair? _g8222382232_)
                (let* ((_tl8223082255_ (##cdr _g8222382232_))
                       (_rest82258_ _tl8223082255_))
                  (gx#stx-list? _rest82258_))
                (let ((_tail82245_ _g8222382232_)) (null? _tail82245_)))))))
    (define gx#stx-pair/null?
      (lambda (_e82215_)
        (let* ((_e82217_ (gx#stx-e _e82215_)) (_$e82219_ (pair? _e82217_)))
          (if _$e82219_ _$e82219_ (null? _e82217_)))))
    (define gx#stx-vector? (lambda (_e82213_) (vector? (gx#stx-e _e82213_))))
    (define gx#stx-box? (lambda (_e82211_) (box? (gx#stx-e _e82211_))))
    (define gx#stx-eq?
      (lambda (_x82208_ _y82209_)
        (eq? (gx#stx-e _x82208_) (gx#stx-e _y82209_))))
    (define gx#stx-eqv?
      (lambda (_x82205_ _y82206_)
        (eqv? (gx#stx-e _x82205_) (gx#stx-e _y82206_))))
    (define gx#stx-equal?
      (lambda (_x82202_ _y82203_)
        (equal? (gx#stx-e _x82202_) (gx#stx-e _y82203_))))
    (define gx#stx-false? (lambda (_x82200_) (not (gx#stx-e _x82200_))))
    (define gx#stx-identifier
      (lambda (_template82197_ . _args82198_)
        (gx#datum->syntax__1
         _template82197_
         (apply make-symbol (gx#syntax->datum _args82198_))
         (gx#stx-source _template82197_))))
    (define gx#stx-identifier-marks
      (lambda (_stx82195_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx82195_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx82193_)
        (if (##structure-direct-instance-of? _stx82193_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx82193_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx82193_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx82193_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx82193_)))))
    (define gx#stx-identifier-context
      (lambda (_stx82189_)
        (let ((_stx82191_ (gx#stx-unwrap__0 _stx82189_)))
          (if (gx#identifier-quote? _stx82191_)
              (##unchecked-structure-ref _stx82191_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx82144_)
        (let* ((_g8214582155_ (gx#stx-e _stx82144_))
               (_else8214882163_ (lambda () '#f)))
          (let ((_K8215182177_
                 (lambda (_rest82174_ _hd82175_)
                   (if (gx#identifier? _hd82175_)
                       (gx#identifier-list? _rest82174_)
                       '#f)))
                (_K8215082168_ (lambda () '#t)))
            (let ((_try-match8214782171_
                   (lambda ()
                     (if (##null? _g8214582155_)
                         (_K8215082168_)
                         (_else8214882163_)))))
              (if (##pair? _g8214582155_)
                  (let ((_tl8215382182_ (##cdr _g8214582155_))
                        (_hd8215282180_ (##car _g8214582155_)))
                    (let ((_hd82185_ _hd8215282180_)
                          (_rest82187_ _tl8215382182_))
                      (_K8215182177_ _rest82187_ _hd82185_)))
                  (_try-match8214782171_)))))))
    (define gx#genident__%
      (lambda (_e82121_ _src82122_)
        (gx#stx-wrap-source
         (gensym (let ((_e82124_ (gx#stx-e _e82121_)))
                   (if (interned-symbol? _e82124_) _e82124_ 'g)))
         (let ((_$e82126_ (gx#stx-source _e82121_)))
           (if _$e82126_ _$e82126_ _src82122_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e82133_ 'g) (_src82135_ '#f))
          (gx#genident__% _e82133_ _src82135_))))
    (define gx#genident__1
      (lambda (_e82137_)
        (let ((_src82139_ '#f)) (gx#genident__% _e82137_ _src82139_))))
    (define gx#genident
      (lambda _g82556_
        (let ((_g82555_ (##length _g82556_)))
          (cond ((##fx= _g82555_ 0)
                 (apply (lambda () (gx#genident__0)) _g82556_))
                ((##fx= _g82555_ 1)
                 (apply (lambda (_e82137_) (gx#genident__1 _e82137_))
                        _g82556_))
                ((##fx= _g82555_ 2)
                 (apply (lambda (_e82141_ _src82142_)
                          (gx#genident__% _e82141_ _src82142_))
                        _g82556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g82556_))))))
    (define gx#gentemps
      (lambda (_stx-lst82118_) (gx#stx-map1 gx#genident _stx-lst82118_)))
    (define gx#syntax->list
      (lambda (_stx82116_) (gx#stx-map1 values _stx82116_)))
    (define gx#stx-car
      (lambda (_stx82113_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx82113_)))))
    (define gx#stx-cdr
      (lambda (_stx82110_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx82110_)))))
    (define gx#stx-length
      (lambda (_stx82075_)
        (let _lp82077_ ((_rest82079_ _stx82075_) (_n82080_ '0))
          (let* ((_g8208182089_ (gx#stx-e _rest82079_))
                 (_else8208382097_ (lambda () _n82080_))
                 (_K8208582102_
                  (lambda (_rest82100_)
                    (_lp82077_ _rest82100_ (fx+ _n82080_ '1)))))
            (if (##pair? _g8208182089_)
                (let* ((_tl8208782105_ (##cdr _g8208182089_))
                       (_rest82108_ _tl8208782105_))
                  (_K8208582102_ _rest82108_))
                (_else8208382097_))))))
    (define gx#stx-for-each
      (lambda _g82558_
        (let ((_g82557_ (##length _g82558_)))
          (cond ((##fx= _g82557_ 2)
                 (apply (lambda (_f82068_ _stx82069_)
                          (gx#stx-for-each1 _f82068_ _stx82069_))
                        _g82558_))
                ((##fx= _g82557_ 3)
                 (apply (lambda (_f82071_ _xstx82072_ _ystx82073_)
                          (gx#stx-for-each2 _f82071_ _xstx82072_ _ystx82073_))
                        _g82558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g82558_))))))
    (define gx#stx-for-each1
      (lambda (_f82018_ _stx82019_)
        (if (procedure? _f82018_)
            '#!void
            (error '"expected procedure" _f82018_))
        (let _lp82021_ ((_rest82023_ _stx82019_))
          (let* ((_g8202482034_ (gx#syntax-e _rest82023_))
                 (_else8202782042_ (lambda () (_f82018_ _rest82023_))))
            (let ((_K8203082056_
                   (lambda (_rest82053_ _hd82054_)
                     (_f82018_ _hd82054_)
                     (_lp82021_ _rest82053_)))
                  (_K8202982047_ (lambda () '#!void)))
              (let ((_try-match8202682050_
                     (lambda ()
                       (if (##null? _g8202482034_)
                           (_K8202982047_)
                           (_else8202782042_)))))
                (if (##pair? _g8202482034_)
                    (let ((_tl8203282061_ (##cdr _g8202482034_))
                          (_hd8203182059_ (##car _g8202482034_)))
                      (let ((_hd82064_ _hd8203182059_)
                            (_rest82066_ _tl8203282061_))
                        (_K8203082056_ _rest82066_ _hd82064_)))
                    (_try-match8202682050_))))))))
    (define gx#stx-for-each2
      (lambda (_f81923_ _xstx81924_ _ystx81925_)
        (if (procedure? _f81923_)
            '#!void
            (error '"expected procedure" _f81923_))
        (let _lp81927_ ((_xrest81929_ _xstx81924_) (_yrest81930_ _ystx81925_))
          (let* ((_g8193181941_ (gx#syntax-e _xrest81929_))
                 (_else8193481949_ (lambda () '#!void)))
            (let ((_K8193782006_
                   (lambda (_xrest81975_ _xhd81976_)
                     (let* ((_g8197781984_ (gx#syntax-e _yrest81930_))
                            (_E8197981988_
                             (lambda ()
                               (error '"No clause matching" _g8197781984_)))
                            (_K8198081994_
                             (lambda (_yrest81991_ _yhd81992_)
                               (_f81923_ _xhd81976_ _yhd81992_)
                               (_lp81927_ _xrest81975_ _yrest81991_))))
                       (if (##pair? _g8197781984_)
                           (let ((_hd8198181997_ (##car _g8197781984_))
                                 (_tl8198281999_ (##cdr _g8197781984_)))
                             (let* ((_yhd82002_ _hd8198181997_)
                                    (_yrest82004_ _tl8198281999_))
                               (_K8198081994_ _yrest82004_ _yhd82002_)))
                           (_E8197981988_)))))
                  (_K8193681969_
                   (lambda ()
                     (let* ((_yrest8195381958_ _yrest81930_)
                            (_E8195581962_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8195381958_)))
                            (_K8195681966_
                             (lambda () (_f81923_ _xrest81929_ _yrest81930_))))
                       (if (not (gx#stx-null? _yrest8195381958_))
                           (_K8195681966_)
                           (_E8195581962_))))))
              (let ((_try-match8193381972_
                     (lambda ()
                       (if (not (null? _g8193181941_))
                           (_K8193681969_)
                           (_else8193481949_)))))
                (if (##pair? _g8193181941_)
                    (let ((_tl8193982011_ (##cdr _g8193181941_))
                          (_hd8193882009_ (##car _g8193181941_)))
                      (let ((_xhd82014_ _hd8193882009_)
                            (_xrest82016_ _tl8193982011_))
                        (_K8193782006_ _xrest82016_ _xhd82014_)))
                    (_try-match8193381972_))))))))
    (define gx#stx-map
      (lambda _g82560_
        (let ((_g82559_ (##length _g82560_)))
          (cond ((##fx= _g82559_ 2)
                 (apply (lambda (_f81916_ _stx81917_)
                          (gx#stx-map1 _f81916_ _stx81917_))
                        _g82560_))
                ((##fx= _g82559_ 3)
                 (apply (lambda (_f81919_ _xstx81920_ _ystx81921_)
                          (gx#stx-map2 _f81919_ _xstx81920_ _ystx81921_))
                        _g82560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g82560_))))))
    (define gx#stx-map1
      (lambda (_f81866_ _stx81867_)
        (if (procedure? _f81866_)
            '#!void
            (error '"expected procedure" _f81866_))
        (let _recur81869_ ((_rest81871_ _stx81867_))
          (let* ((_g8187281882_ (gx#syntax-e _rest81871_))
                 (_else8187581890_ (lambda () (_f81866_ _rest81871_))))
            (let ((_K8187881904_
                   (lambda (_rest81901_ _hd81902_)
                     (cons (_f81866_ _hd81902_) (_recur81869_ _rest81901_))))
                  (_K8187781895_ (lambda () '())))
              (let ((_try-match8187481898_
                     (lambda ()
                       (if (##null? _g8187281882_)
                           (_K8187781895_)
                           (_else8187581890_)))))
                (if (##pair? _g8187281882_)
                    (let ((_tl8188081909_ (##cdr _g8187281882_))
                          (_hd8187981907_ (##car _g8187281882_)))
                      (let ((_hd81912_ _hd8187981907_)
                            (_rest81914_ _tl8188081909_))
                        (_K8187881904_ _rest81914_ _hd81912_)))
                    (_try-match8187481898_))))))))
    (define gx#stx-map2
      (lambda (_f81771_ _xstx81772_ _ystx81773_)
        (if (procedure? _f81771_)
            '#!void
            (error '"expected procedure" _f81771_))
        (let _recur81775_ ((_xrest81777_ _xstx81772_)
                           (_yrest81778_ _ystx81773_))
          (let* ((_g8177981789_ (gx#syntax-e _xrest81777_))
                 (_else8178281797_ (lambda () '())))
            (let ((_K8178581854_
                   (lambda (_xrest81823_ _xhd81824_)
                     (let* ((_g8182581832_ (gx#syntax-e _yrest81778_))
                            (_E8182781836_
                             (lambda ()
                               (error '"No clause matching" _g8182581832_)))
                            (_K8182881842_
                             (lambda (_yrest81839_ _yhd81840_)
                               (cons (_f81771_ _xhd81824_ _yhd81840_)
                                     (_recur81775_
                                      _xrest81823_
                                      _yrest81839_)))))
                       (if (##pair? _g8182581832_)
                           (let ((_hd8182981845_ (##car _g8182581832_))
                                 (_tl8183081847_ (##cdr _g8182581832_)))
                             (let* ((_yhd81850_ _hd8182981845_)
                                    (_yrest81852_ _tl8183081847_))
                               (_K8182881842_ _yrest81852_ _yhd81850_)))
                           (_E8182781836_)))))
                  (_K8178481817_
                   (lambda ()
                     (let* ((_yrest8180181806_ _yrest81778_)
                            (_E8180381810_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8180181806_)))
                            (_K8180481814_
                             (lambda () (_f81771_ _xrest81777_ _yrest81778_))))
                       (if (not (gx#stx-null? _yrest8180181806_))
                           (_K8180481814_)
                           (_E8180381810_))))))
              (let ((_try-match8178181820_
                     (lambda ()
                       (if (not (null? _g8177981789_))
                           (_K8178481817_)
                           (_else8178281797_)))))
                (if (##pair? _g8177981789_)
                    (let ((_tl8178781859_ (##cdr _g8177981789_))
                          (_hd8178681857_ (##car _g8177981789_)))
                      (let ((_xhd81862_ _hd8178681857_)
                            (_xrest81864_ _tl8178781859_))
                        (_K8178581854_ _xrest81864_ _xhd81862_)))
                    (_try-match8178181820_))))))))
    (define gx#stx-andmap
      (lambda (_f81721_ _stx81722_)
        (if (procedure? _f81721_)
            '#!void
            (error '"expected procedure" _f81721_))
        (let _lp81724_ ((_rest81726_ _stx81722_))
          (let* ((_g8172781737_ (gx#syntax-e _rest81726_))
                 (_else8173081745_ (lambda () (_f81721_ _rest81726_))))
            (let ((_K8173381759_
                   (lambda (_rest81756_ _hd81757_)
                     (if (_f81721_ _hd81757_) (_lp81724_ _rest81756_) '#f)))
                  (_K8173281750_ (lambda () '#t)))
              (let ((_try-match8172981753_
                     (lambda ()
                       (if (##null? _g8172781737_)
                           (_K8173281750_)
                           (_else8173081745_)))))
                (if (##pair? _g8172781737_)
                    (let ((_tl8173581764_ (##cdr _g8172781737_))
                          (_hd8173481762_ (##car _g8172781737_)))
                      (let ((_hd81767_ _hd8173481762_)
                            (_rest81769_ _tl8173581764_))
                        (_K8173381759_ _rest81769_ _hd81767_)))
                    (_try-match8172981753_))))))))
    (define gx#stx-ormap
      (lambda (_f81668_ _stx81669_)
        (if (procedure? _f81668_)
            '#!void
            (error '"expected procedure" _f81668_))
        (let _lp81671_ ((_rest81673_ _stx81669_))
          (let* ((_g8167481684_ (gx#syntax-e _rest81673_))
                 (_else8167781692_ (lambda () (_f81668_ _rest81673_))))
            (let ((_K8168081709_
                   (lambda (_rest81703_ _hd81704_)
                     (let ((_$e81706_ (_f81668_ _hd81704_)))
                       (if _$e81706_ _$e81706_ (_lp81671_ _rest81703_)))))
                  (_K8167981697_ (lambda () '#f)))
              (let ((_try-match8167681700_
                     (lambda ()
                       (if (##null? _g8167481684_)
                           (_K8167981697_)
                           (_else8167781692_)))))
                (if (##pair? _g8167481684_)
                    (let ((_tl8168281714_ (##cdr _g8167481684_))
                          (_hd8168181712_ (##car _g8167481684_)))
                      (let ((_hd81717_ _hd8168181712_)
                            (_rest81719_ _tl8168281714_))
                        (_K8168081709_ _rest81719_ _hd81717_)))
                    (_try-match8167681700_))))))))
    (define gx#stx-foldl
      (lambda (_f81616_ _iv81617_ _stx81618_)
        (if (procedure? _f81616_)
            '#!void
            (error '"expected procedure" _f81616_))
        (let _lp81620_ ((_r81622_ _iv81617_) (_rest81623_ _stx81618_))
          (let* ((_g8162481634_ (gx#syntax-e _rest81623_))
                 (_else8162781642_
                  (lambda () (_f81616_ _rest81623_ _r81622_))))
            (let ((_K8163081656_
                   (lambda (_rest81653_ _hd81654_)
                     (_lp81620_ (_f81616_ _hd81654_ _r81622_) _rest81653_)))
                  (_K8162981647_ (lambda () _r81622_)))
              (let ((_try-match8162681650_
                     (lambda ()
                       (if (##null? _g8162481634_)
                           (_K8162981647_)
                           (_else8162781642_)))))
                (if (##pair? _g8162481634_)
                    (let ((_tl8163281661_ (##cdr _g8162481634_))
                          (_hd8163181659_ (##car _g8162481634_)))
                      (let ((_hd81664_ _hd8163181659_)
                            (_rest81666_ _tl8163281661_))
                        (_K8163081656_ _rest81666_ _hd81664_)))
                    (_try-match8162681650_))))))))
    (define gx#stx-foldr
      (lambda (_f81565_ _iv81566_ _stx81567_)
        (if (procedure? _f81565_)
            '#!void
            (error '"expected procedure" _f81565_))
        (let _recur81569_ ((_rest81571_ _stx81567_))
          (let* ((_g8157281582_ (gx#syntax-e _rest81571_))
                 (_else8157581590_
                  (lambda () (_f81565_ _rest81571_ _iv81566_))))
            (let ((_K8157881604_
                   (lambda (_rest81601_ _hd81602_)
                     (_f81565_ _hd81602_ (_recur81569_ _rest81601_))))
                  (_K8157781595_ (lambda () _iv81566_)))
              (let ((_try-match8157481598_
                     (lambda ()
                       (if (##null? _g8157281582_)
                           (_K8157781595_)
                           (_else8157581590_)))))
                (if (##pair? _g8157281582_)
                    (let ((_tl8158081609_ (##cdr _g8157281582_))
                          (_hd8157981607_ (##car _g8157281582_)))
                      (let ((_hd81612_ _hd8157981607_)
                            (_rest81614_ _tl8158081609_))
                        (_K8157881604_ _rest81614_ _hd81612_)))
                    (_try-match8157481598_))))))))
    (define gx#stx-reverse
      (lambda (_stx81563_) (gx#stx-foldl cons '() _stx81563_)))
    (define gx#stx-last
      (lambda (_stx81524_)
        (let _lp81526_ ((_rest81528_ _stx81524_))
          (let* ((_g8152981537_ (gx#syntax-e _rest81528_))
                 (_else8153181545_ (lambda () _rest81528_))
                 (_K8153381551_
                  (lambda (_rest81548_ _hd81549_)
                    (if (gx#stx-null? _rest81548_)
                        _hd81549_
                        (_lp81526_ _rest81548_)))))
            (if (##pair? _g8152981537_)
                (let ((_hd8153481554_ (##car _g8152981537_))
                      (_tl8153581556_ (##cdr _g8152981537_)))
                  (let* ((_hd81559_ _hd8153481554_)
                         (_rest81561_ _tl8153581556_))
                    (_K8153381551_ _rest81561_ _hd81559_)))
                (_else8153181545_))))))
    (define gx#stx-last-pair
      (lambda (_stx81495_)
        (let _lp81497_ ((_hd81499_ _stx81495_))
          (let* ((_g8150081507_ (gx#syntax-e _hd81499_))
                 (_E8150281511_
                  (lambda () (error '"No clause matching" _g8150081507_)))
                 (_K8150381516_
                  (lambda (_rest81514_)
                    (if (gx#stx-pair? _rest81514_)
                        (_lp81497_ _rest81514_)
                        _hd81499_))))
            (if (##pair? _g8150081507_)
                (let* ((_tl8150581519_ (##cdr _g8150081507_))
                       (_rest81522_ _tl8150581519_))
                  (_K8150381516_ _rest81522_))
                (_E8150281511_))))))
    (define gx#stx-list-tail
      (lambda (_stx81464_ _k81465_)
        (let _lp81467_ ((_rest81469_ _stx81464_) (_k81470_ _k81465_))
          (if (fxpositive? _k81470_)
              (let* ((_g8147181478_ (gx#syntax-e _rest81469_))
                     (_E8147381482_
                      (lambda () (error '"No clause matching" _g8147181478_)))
                     (_K8147481487_
                      (lambda (_rest81485_)
                        (_lp81467_ _rest81485_ (fx- _k81470_ '1)))))
                (if (##pair? _g8147181478_)
                    (let* ((_tl8147681490_ (##cdr _g8147181478_))
                           (_rest81493_ _tl8147681490_))
                      (_K8147481487_ _rest81493_))
                    (_E8147381482_)))
              _rest81469_))))
    (define gx#stx-list-ref
      (lambda (_stx81461_ _k81462_)
        (gx#stx-car (gx#stx-list-tail _stx81461_ _k81462_))))
    (define gx#stx-plist?__%
      (lambda (_stx81373_ _key?81374_)
        (if (procedure? _key?81374_)
            '#!void
            (error '"expected procedure" _key?81374_))
        (let _lp81376_ ((_rest81378_ _stx81373_))
          (let* ((_g8137981389_ (gx#stx-e _rest81378_))
                 (_else8138281397_ (lambda () '#f)))
            (let ((_K8138581439_
                   (lambda (_rest81408_ _hd81409_)
                     (if (_key?81374_ _hd81409_)
                         (let* ((_g8141081418_ (gx#stx-e _rest81408_))
                                (_else8141281426_ (lambda () '#f))
                                (_K8141481431_
                                 (lambda (_rest81429_)
                                   (_lp81376_ _rest81429_))))
                           (if (##pair? _g8141081418_)
                               (let* ((_tl8141681434_ (##cdr _g8141081418_))
                                      (_rest81437_ _tl8141681434_))
                                 (_lp81376_ _rest81437_))
                               (_else8141281426_)))
                         '#f)))
                  (_K8138481402_ (lambda () '#t)))
              (let ((_try-match8138181405_
                     (lambda ()
                       (if (##null? _g8137981389_)
                           (_K8138481402_)
                           (_else8138281397_)))))
                (if (##pair? _g8137981389_)
                    (let ((_tl8138781444_ (##cdr _g8137981389_))
                          (_hd8138681442_ (##car _g8137981389_)))
                      (let ((_hd81447_ _hd8138681442_)
                            (_rest81449_ _tl8138781444_))
                        (_K8138581439_ _rest81449_ _hd81447_)))
                    (_try-match8138181405_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx81454_)
        (let ((_key?81456_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx81454_ _key?81456_))))
    (define gx#stx-plist?
      (lambda _g82562_
        (let ((_g82561_ (##length _g82562_)))
          (cond ((##fx= _g82561_ 1)
                 (apply (lambda (_stx81454_) (gx#stx-plist?__0 _stx81454_))
                        _g82562_))
                ((##fx= _g82561_ 2)
                 (apply (lambda (_stx81458_ _key?81459_)
                          (gx#stx-plist?__% _stx81458_ _key?81459_))
                        _g82562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g82562_))))))
    (define gx#stx-getq__%
      (lambda (_key81291_ _stx81292_ _key=?81293_)
        (if (procedure? _key=?81293_)
            '#!void
            (error '"expected procedure" _key=?81293_))
        (let _lp81295_ ((_rest81297_ _stx81292_))
          (let* ((_g8129881306_ (gx#syntax-e _rest81297_))
                 (_else8130081314_ (lambda () '#f))
                 (_K8130281348_
                  (lambda (_rest81317_ _hd81318_)
                    (let* ((_g8131981326_ (gx#syntax-e _rest81317_))
                           (_E8132181330_
                            (lambda ()
                              (error '"No clause matching" _g8131981326_)))
                           (_K8132281336_
                            (lambda (_rest81333_ _val81334_)
                              (if (_key=?81293_ _hd81318_ _key81291_)
                                  _val81334_
                                  (_lp81295_ _rest81333_)))))
                      (if (##pair? _g8131981326_)
                          (let ((_hd8132381339_ (##car _g8131981326_))
                                (_tl8132481341_ (##cdr _g8131981326_)))
                            (let* ((_val81344_ _hd8132381339_)
                                   (_rest81346_ _tl8132481341_))
                              (_K8132281336_ _rest81346_ _val81344_)))
                          (_E8132181330_))))))
            (if (##pair? _g8129881306_)
                (let ((_hd8130381351_ (##car _g8129881306_))
                      (_tl8130481353_ (##cdr _g8129881306_)))
                  (let* ((_hd81356_ _hd8130381351_)
                         (_rest81358_ _tl8130481353_))
                    (_K8130281348_ _rest81358_ _hd81356_)))
                (_else8130081314_))))))
    (define gx#stx-getq__0
      (lambda (_key81363_ _stx81364_)
        (let ((_key=?81366_ gx#stx-eq?))
          (gx#stx-getq__% _key81363_ _stx81364_ _key=?81366_))))
    (define gx#stx-getq
      (lambda _g82564_
        (let ((_g82563_ (##length _g82564_)))
          (cond ((##fx= _g82563_ 2)
                 (apply (lambda (_key81363_ _stx81364_)
                          (gx#stx-getq__0 _key81363_ _stx81364_))
                        _g82564_))
                ((##fx= _g82563_ 3)
                 (apply (lambda (_key81368_ _stx81369_ _key=?81370_)
                          (gx#stx-getq__% _key81368_ _stx81369_ _key=?81370_))
                        _g82564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g82564_))))))))
