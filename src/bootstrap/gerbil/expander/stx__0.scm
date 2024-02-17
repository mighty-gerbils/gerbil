(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708165429)
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
      (lambda _$args144596_
        (apply make-instance gx#identifier-wrap::t _$args144596_)))
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
      (lambda _$args144593_
        (apply make-instance gx#syntax-wrap::t _$args144593_)))
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
      (lambda _$args144590_
        (apply make-instance gx#syntax-quote::t _$args144590_)))
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
      (lambda (_stx144588_) (symbol? (gx#stx-e _stx144588_))))
    (define gx#identifier-quote?
      (lambda (_stx144586_)
        (if (##structure-direct-instance-of? _stx144586_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx144586_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx144584_)
        (if (##structure-direct-instance-of? _stx144584_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx144584_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx144584_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx144582_)
        (if (##structure-direct-instance-of? _stx144582_ 'gx#syntax-quote::t)
            _stx144582_
            (if (##structure-direct-instance-of?
                 _stx144582_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx144582_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx144565_)
        (if (##structure-direct-instance-of? _stx144565_ 'gx#syntax-wrap::t)
            (let _lp144567_ ((_e144569_
                              (##unchecked-structure-ref
                               _stx144565_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks144570_
                              (cons (##unchecked-structure-ref
                                     _stx144565_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e144569_)
                  (let ((_$e144572_ (##type-id (##structure-type _e144569_))))
                    (if (eq? 'gx#syntax-wrap::t _$e144572_)
                        (_lp144567_
                         (##unchecked-structure-ref _e144569_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e144569_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks144570_))
                        (if (or (eq? 'gx#syntax-quote::t _$e144572_)
                                (eq? 'gx#identifier-wrap::t _$e144572_))
                            (##unchecked-structure-ref
                             _e144569_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e144572_)
                                (_lp144567_
                                 (##unchecked-structure-ref
                                  _e144569_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks144570_)
                                _e144569_))))
                  (if (null? _marks144570_)
                      _e144569_
                      (if (pair? _e144569_)
                          (cons (gx#stx-wrap (car _e144569_) _marks144570_)
                                (gx#stx-wrap (cdr _e144569_) _marks144570_))
                          (if (vector? _e144569_)
                              (vector-map
                               (lambda (_g144577144579_)
                                 (gx#stx-wrap _g144577144579_ _marks144570_))
                               _e144569_)
                              (if (box? _e144569_)
                                  (box (gx#stx-wrap
                                        (unbox _e144569_)
                                        _marks144570_))
                                  _e144569_))))))
            (if (##structure-instance-of? _stx144565_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx144565_ '1 gx#AST::t '#f)
                _stx144565_))))
    (define gx#syntax->datum
      (lambda (_stx144563_)
        (if (##structure-instance-of? _stx144563_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx144563_ '1 gx#AST::t '#f))
            (if (pair? _stx144563_)
                (cons (gx#syntax->datum (car _stx144563_))
                      (gx#syntax->datum (cdr _stx144563_)))
                (if (vector? _stx144563_)
                    (vector-map gx#syntax->datum _stx144563_)
                    (if (box? _stx144563_)
                        (box (gx#syntax->datum (unbox _stx144563_)))
                        _stx144563_))))))
    (define gx#datum->syntax__%
      (lambda (_stx144506_ _datum144507_ _src144508_ _quote?144509_)
        (letrec ((_wrap-datum144511_
                  (lambda (_e144535_ _marks144536_)
                    (_wrap-inner144513_
                     _e144535_
                     (lambda (_g144537144539_)
                       (##structure
                        gx#identifier-wrap::t
                        _g144537144539_
                        _src144508_
                        _marks144536_)))))
                 (_wrap-quote144512_
                  (lambda (_e144527_ _ctx144528_ _marks144529_)
                    (_wrap-inner144513_
                     _e144527_
                     (lambda (_g144530144532_)
                       (##structure
                        gx#syntax-quote::t
                        _g144530144532_
                        _src144508_
                        _ctx144528_
                        _marks144529_)))))
                 (_wrap-inner144513_
                  (lambda (_e144520_ _wrap-e144521_)
                    (let _recur144523_ ((_e144525_ _e144520_))
                      (if (symbol? _e144525_)
                          (_wrap-e144521_ _e144525_)
                          (if (pair? _e144525_)
                              (cons (_recur144523_ (car _e144525_))
                                    (_recur144523_ (cdr _e144525_)))
                              (if (vector? _e144525_)
                                  (vector-map _recur144523_ _e144525_)
                                  (if (box? _e144525_)
                                      (box (_recur144523_ (unbox _e144525_)))
                                      _e144525_)))))))
                 (_wrap-outer144514_
                  (lambda (_e144518_)
                    (if (##structure-instance-of? _e144518_ 'gerbil#AST::t)
                        _e144518_
                        (##structure gx#AST::t _e144518_ _src144508_)))))
          (if (##structure-instance-of? _datum144507_ 'gerbil#AST::t)
              _datum144507_
              (if (not _stx144506_)
                  (##structure gx#AST::t _datum144507_ _src144508_)
                  (if (gx#identifier? _stx144506_)
                      (let ((_stx144516_ (gx#stx-unwrap__0 _stx144506_)))
                        (_wrap-outer144514_
                         (if (##structure-direct-instance-of?
                              _stx144516_
                              'gx#syntax-quote::t)
                             (if _quote?144509_
                                 (_wrap-quote144512_
                                  _datum144507_
                                  (##unchecked-structure-ref
                                   _stx144516_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx144516_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum144511_
                                  _datum144507_
                                  (##unchecked-structure-ref
                                   _stx144516_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum144511_
                              _datum144507_
                              (##unchecked-structure-ref
                               _stx144516_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx144506_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx144545_ _datum144546_)
        (let* ((_src144548_ '#f) (_quote?144550_ '#t))
          (gx#datum->syntax__%
           _stx144545_
           _datum144546_
           _src144548_
           _quote?144550_))))
    (define gx#datum->syntax__1
      (lambda (_stx144552_ _datum144553_ _src144554_)
        (let ((_quote?144556_ '#t))
          (gx#datum->syntax__%
           _stx144552_
           _datum144553_
           _src144554_
           _quote?144556_))))
    (define gx#datum->syntax
      (lambda _g149245_
        (let ((_g149244_ (##length _g149245_)))
          (cond ((##fx= _g149244_ 2)
                 (apply (lambda (_stx144545_ _datum144546_)
                          (gx#datum->syntax__0 _stx144545_ _datum144546_))
                        _g149245_))
                ((##fx= _g149244_ 3)
                 (apply (lambda (_stx144552_ _datum144553_ _src144554_)
                          (gx#datum->syntax__1
                           _stx144552_
                           _datum144553_
                           _src144554_))
                        _g149245_))
                ((##fx= _g149244_ 4)
                 (apply (lambda (_stx144558_
                                 _datum144559_
                                 _src144560_
                                 _quote?144561_)
                          (gx#datum->syntax__%
                           _stx144558_
                           _datum144559_
                           _src144560_
                           _quote?144561_))
                        _g149245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g149245_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx144482_ _marks144483_)
        (let _lp144485_ ((_e144487_ _stx144482_)
                         (_marks144488_ _marks144483_)
                         (_src144489_ (gx#stx-source _stx144482_)))
          (if (##structure-direct-instance-of? _e144487_ 'gx#syntax-wrap::t)
              (_lp144485_
               (##unchecked-structure-ref _e144487_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e144487_ '3 gx#syntax-wrap::t '#f)
                _marks144488_)
               (##unchecked-structure-ref _e144487_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e144487_
                   'gx#identifier-wrap::t)
                  (if (null? _marks144488_)
                      _e144487_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e144487_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e144487_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e144487_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks144488_)))
                  (if (##structure-direct-instance-of?
                       _e144487_
                       'gx#syntax-quote::t)
                      _e144487_
                      (if (##structure-instance-of? _e144487_ 'gerbil#AST::t)
                          (_lp144485_
                           (##unchecked-structure-ref
                            _e144487_
                            '1
                            gx#AST::t
                            '#f)
                           _marks144488_
                           (##unchecked-structure-ref
                            _e144487_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e144487_)
                              (##structure
                               gx#identifier-wrap::t
                               _e144487_
                               _src144489_
                               (reverse _marks144488_))
                              (if (null? _marks144488_)
                                  _e144487_
                                  (if (pair? _e144487_)
                                      (cons (gx#stx-wrap
                                             (car _e144487_)
                                             _marks144488_)
                                            (gx#stx-wrap
                                             (cdr _e144487_)
                                             _marks144488_))
                                      (if (vector? _e144487_)
                                          (vector-map
                                           (lambda (_g144490144492_)
                                             (gx#stx-wrap
                                              _g144490144492_
                                              _marks144488_))
                                           _e144487_)
                                          (if (box? _e144487_)
                                              (box (gx#stx-wrap
                                                    (unbox _e144487_)
                                                    _marks144488_))
                                              _e144487_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx144498_)
        (let ((_marks144500_ '()))
          (gx#stx-unwrap__% _stx144498_ _marks144500_))))
    (define gx#stx-unwrap
      (lambda _g149247_
        (let ((_g149246_ (##length _g149247_)))
          (cond ((##fx= _g149246_ 1)
                 (apply (lambda (_stx144498_) (gx#stx-unwrap__0 _stx144498_))
                        _g149247_))
                ((##fx= _g149246_ 2)
                 (apply (lambda (_stx144502_ _marks144503_)
                          (gx#stx-unwrap__% _stx144502_ _marks144503_))
                        _g149247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g149247_))))))
    (define gx#stx-wrap
      (lambda (_stx144475_ _marks144476_)
        (foldl1 (lambda (_mark144478_ _stx144479_)
                  (gx#stx-apply-mark _stx144479_ _mark144478_))
                _stx144475_
                _marks144476_)))
    (define gx#stx-rewrap
      (lambda (_stx144469_ _marks144470_)
        (foldr1 (lambda (_mark144472_ _stx144473_)
                  (gx#stx-apply-mark _stx144473_ _mark144472_))
                _stx144469_
                _marks144470_)))
    (define gx#stx-apply-mark
      (lambda (_stx144466_ _mark144467_)
        (if (##structure-direct-instance-of? _stx144466_ 'gx#syntax-quote::t)
            _stx144466_
            (if (and (##structure-direct-instance-of?
                      _stx144466_
                      'gx#syntax-wrap::t)
                     (eq? _mark144467_
                          (##unchecked-structure-ref
                           _stx144466_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx144466_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx144466_
                 (gx#stx-source _stx144466_)
                 _mark144467_)))))
    (define gx#apply-mark
      (lambda (_mark144430_ _marks144431_)
        (let* ((_marks144432144440_ _marks144431_)
               (_else144434144448_
                (lambda () (cons _mark144430_ _marks144431_)))
               (_K144436144454_
                (lambda (_rest144451_ _hd144452_)
                  (if (eq? _mark144430_ _hd144452_)
                      _rest144451_
                      (cons _mark144430_ _marks144431_)))))
          (if (##pair? _marks144432144440_)
              (let ((_hd144437144457_ (##car _marks144432144440_))
                    (_tl144438144459_ (##cdr _marks144432144440_)))
                (let* ((_hd144462_ _hd144437144457_)
                       (_rest144464_ _tl144438144459_))
                  (_K144436144454_ _rest144464_ _hd144462_)))
              (_else144434144448_)))))
    (define gx#stx-e
      (lambda (_stx144428_)
        (if (##structure-direct-instance-of? _stx144428_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx144428_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx144428_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx144428_ '1 gx#AST::t '#f)
                _stx144428_))))
    (define gx#stx-source
      (lambda (_stx144426_)
        (if (##structure-instance-of? _stx144426_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx144426_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx144420_ _src144421_)
        (if (or (##structure-instance-of? _stx144420_ 'gerbil#AST::t)
                (not _src144421_))
            _stx144420_
            (##structure gx#AST::t _stx144420_ _src144421_))))
    (define gx#stx-datum?
      (lambda (_stx144418_) (gx#self-quoting? (gx#stx-e _stx144418_))))
    (define gx#self-quoting?
      (lambda (_x144401_)
        (let ((_$e144403_ (immediate? _x144401_)))
          (if _$e144403_
              _$e144403_
              (let ((_$e144406_ (number? _x144401_)))
                (if _$e144406_
                    _$e144406_
                    (let ((_$e144409_ (keyword? _x144401_)))
                      (if _$e144409_
                          _$e144409_
                          (let ((_$e144412_ (string? _x144401_)))
                            (if _$e144412_
                                _$e144412_
                                (let ((_$e144415_ (vector? _x144401_)))
                                  (if _$e144415_
                                      _$e144415_
                                      (u8vector? _x144401_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e144399_) (boolean? (gx#stx-e _e144399_))))
    (define gx#stx-keyword?
      (lambda (_e144397_) (keyword? (gx#stx-e _e144397_))))
    (define gx#stx-char? (lambda (_e144395_) (char? (gx#stx-e _e144395_))))
    (define gx#stx-number? (lambda (_e144393_) (number? (gx#stx-e _e144393_))))
    (define gx#stx-fixnum? (lambda (_e144391_) (fixnum? (gx#stx-e _e144391_))))
    (define gx#stx-string? (lambda (_e144389_) (string? (gx#stx-e _e144389_))))
    (define gx#stx-null? (lambda (_e144387_) (null? (gx#stx-e _e144387_))))
    (define gx#stx-pair? (lambda (_e144385_) (pair? (gx#stx-e _e144385_))))
    (define gx#stx-list?
      (lambda (_e144347_)
        (let* ((_g144348144357_ (gx#stx-e _e144347_))
               (_E144351144361_
                (lambda () (error '"No clause matching" _g144348144357_))))
          (let ((_K144353144377_
                 (lambda (_rest144375_) (gx#stx-list? _rest144375_)))
                (_K144352144367_ (lambda (_tail144365_) (null? _tail144365_))))
            (if (##pair? _g144348144357_)
                (let* ((_tl144355144380_ (##cdr _g144348144357_))
                       (_rest144383_ _tl144355144380_))
                  (gx#stx-list? _rest144383_))
                (let ((_tail144370_ _g144348144357_))
                  (null? _tail144370_)))))))
    (define gx#stx-pair/null?
      (lambda (_e144340_)
        (let* ((_e144342_ (gx#stx-e _e144340_)) (_$e144344_ (pair? _e144342_)))
          (if _$e144344_ _$e144344_ (null? _e144342_)))))
    (define gx#stx-vector? (lambda (_e144338_) (vector? (gx#stx-e _e144338_))))
    (define gx#stx-box? (lambda (_e144336_) (box? (gx#stx-e _e144336_))))
    (define gx#stx-eq?
      (lambda (_x144333_ _y144334_)
        (eq? (gx#stx-e _x144333_) (gx#stx-e _y144334_))))
    (define gx#stx-eqv?
      (lambda (_x144330_ _y144331_)
        (eqv? (gx#stx-e _x144330_) (gx#stx-e _y144331_))))
    (define gx#stx-equal?
      (lambda (_x144327_ _y144328_)
        (equal? (gx#stx-e _x144327_) (gx#stx-e _y144328_))))
    (define gx#stx-false? (lambda (_x144325_) (not (gx#stx-e _x144325_))))
    (define gx#stx-identifier
      (lambda (_template144322_ . _args144323_)
        (gx#datum->syntax__1
         _template144322_
         (apply make-symbol (gx#syntax->datum _args144323_))
         (gx#stx-source _template144322_))))
    (define gx#stx-identifier-marks
      (lambda (_stx144320_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx144320_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx144318_)
        (if (##structure-direct-instance-of?
             _stx144318_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx144318_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx144318_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx144318_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx144318_)))))
    (define gx#stx-identifier-context
      (lambda (_stx144314_)
        (let ((_stx144316_ (gx#stx-unwrap__0 _stx144314_)))
          (if (gx#identifier-quote? _stx144316_)
              (##unchecked-structure-ref _stx144316_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx144269_)
        (let* ((_g144270144280_ (gx#stx-e _stx144269_))
               (_else144273144288_ (lambda () '#f)))
          (let ((_K144276144302_
                 (lambda (_rest144299_ _hd144300_)
                   (if (gx#identifier? _hd144300_)
                       (gx#identifier-list? _rest144299_)
                       '#f)))
                (_K144275144293_ (lambda () '#t)))
            (let ((_try-match144272144296_
                   (lambda ()
                     (if (##null? _g144270144280_)
                         (_K144275144293_)
                         (_else144273144288_)))))
              (if (##pair? _g144270144280_)
                  (let ((_tl144278144307_ (##cdr _g144270144280_))
                        (_hd144277144305_ (##car _g144270144280_)))
                    (let ((_hd144310_ _hd144277144305_)
                          (_rest144312_ _tl144278144307_))
                      (_K144276144302_ _rest144312_ _hd144310_)))
                  (_try-match144272144296_)))))))
    (define gx#genident__%
      (lambda (_e144246_ _src144247_)
        (gx#stx-wrap-source
         (gensym (let ((_e144249_ (gx#stx-e _e144246_)))
                   (if (interned-symbol? _e144249_) _e144249_ 'g)))
         (let ((_$e144251_ (gx#stx-source _e144246_)))
           (if _$e144251_ _$e144251_ _src144247_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e144258_ 'g) (_src144260_ '#f))
          (gx#genident__% _e144258_ _src144260_))))
    (define gx#genident__1
      (lambda (_e144262_)
        (let ((_src144264_ '#f)) (gx#genident__% _e144262_ _src144264_))))
    (define gx#genident
      (lambda _g149249_
        (let ((_g149248_ (##length _g149249_)))
          (cond ((##fx= _g149248_ 0)
                 (apply (lambda () (gx#genident__0)) _g149249_))
                ((##fx= _g149248_ 1)
                 (apply (lambda (_e144262_) (gx#genident__1 _e144262_))
                        _g149249_))
                ((##fx= _g149248_ 2)
                 (apply (lambda (_e144266_ _src144267_)
                          (gx#genident__% _e144266_ _src144267_))
                        _g149249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g149249_))))))
    (define gx#gentemps
      (lambda (_stx-lst144243_) (gx#stx-map1 gx#genident _stx-lst144243_)))
    (define gx#syntax->list
      (lambda (_stx144241_) (gx#stx-map1 values _stx144241_)))
    (define gx#stx-car
      (lambda (_stx144238_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx144238_)))))
    (define gx#stx-cdr
      (lambda (_stx144235_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx144235_)))))
    (define gx#stx-length
      (lambda (_stx144200_)
        (let _lp144202_ ((_rest144204_ _stx144200_) (_n144205_ '0))
          (let* ((_g144206144214_ (gx#stx-e _rest144204_))
                 (_else144208144222_ (lambda () _n144205_))
                 (_K144210144227_
                  (lambda (_rest144225_)
                    (_lp144202_ _rest144225_ (fx+ _n144205_ '1)))))
            (if (##pair? _g144206144214_)
                (let* ((_tl144212144230_ (##cdr _g144206144214_))
                       (_rest144233_ _tl144212144230_))
                  (_K144210144227_ _rest144233_))
                (_else144208144222_))))))
    (define gx#stx-for-each
      (lambda _g149251_
        (let ((_g149250_ (##length _g149251_)))
          (cond ((##fx= _g149250_ 2)
                 (apply (lambda (_f144193_ _stx144194_)
                          (gx#stx-for-each1 _f144193_ _stx144194_))
                        _g149251_))
                ((##fx= _g149250_ 3)
                 (apply (lambda (_f144196_ _xstx144197_ _ystx144198_)
                          (gx#stx-for-each2
                           _f144196_
                           _xstx144197_
                           _ystx144198_))
                        _g149251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g149251_))))))
    (define gx#stx-for-each1
      (lambda (_f144143_ _stx144144_)
        (if (procedure? _f144143_)
            '#!void
            (error '"expected procedure" _f144143_))
        (let _lp144146_ ((_rest144148_ _stx144144_))
          (let* ((_g144149144159_ (gx#syntax-e _rest144148_))
                 (_else144152144167_ (lambda () (_f144143_ _rest144148_))))
            (let ((_K144155144181_
                   (lambda (_rest144178_ _hd144179_)
                     (_f144143_ _hd144179_)
                     (_lp144146_ _rest144178_)))
                  (_K144154144172_ (lambda () '#!void)))
              (let ((_try-match144151144175_
                     (lambda ()
                       (if (##null? _g144149144159_)
                           (_K144154144172_)
                           (_else144152144167_)))))
                (if (##pair? _g144149144159_)
                    (let ((_tl144157144186_ (##cdr _g144149144159_))
                          (_hd144156144184_ (##car _g144149144159_)))
                      (let ((_hd144189_ _hd144156144184_)
                            (_rest144191_ _tl144157144186_))
                        (_K144155144181_ _rest144191_ _hd144189_)))
                    (_try-match144151144175_))))))))
    (define gx#stx-for-each2
      (lambda (_f144048_ _xstx144049_ _ystx144050_)
        (if (procedure? _f144048_)
            '#!void
            (error '"expected procedure" _f144048_))
        (let _lp144052_ ((_xrest144054_ _xstx144049_)
                         (_yrest144055_ _ystx144050_))
          (let* ((_g144056144066_ (gx#syntax-e _xrest144054_))
                 (_else144059144074_ (lambda () '#!void)))
            (let ((_K144062144131_
                   (lambda (_xrest144100_ _xhd144101_)
                     (let* ((_g144102144109_ (gx#syntax-e _yrest144055_))
                            (_E144104144113_
                             (lambda ()
                               (error '"No clause matching" _g144102144109_)))
                            (_K144105144119_
                             (lambda (_yrest144116_ _yhd144117_)
                               (_f144048_ _xhd144101_ _yhd144117_)
                               (_lp144052_ _xrest144100_ _yrest144116_))))
                       (if (##pair? _g144102144109_)
                           (let ((_hd144106144122_ (##car _g144102144109_))
                                 (_tl144107144124_ (##cdr _g144102144109_)))
                             (let* ((_yhd144127_ _hd144106144122_)
                                    (_yrest144129_ _tl144107144124_))
                               (_K144105144119_ _yrest144129_ _yhd144127_)))
                           (_E144104144113_)))))
                  (_K144061144094_
                   (lambda ()
                     (let* ((_yrest144078144083_ _yrest144055_)
                            (_E144080144087_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest144078144083_)))
                            (_K144081144091_
                             (lambda ()
                               (_f144048_ _xrest144054_ _yrest144055_))))
                       (if (not (gx#stx-null? _yrest144078144083_))
                           (_K144081144091_)
                           (_E144080144087_))))))
              (let ((_try-match144058144097_
                     (lambda ()
                       (if (not (null? _g144056144066_))
                           (_K144061144094_)
                           (_else144059144074_)))))
                (if (##pair? _g144056144066_)
                    (let ((_tl144064144136_ (##cdr _g144056144066_))
                          (_hd144063144134_ (##car _g144056144066_)))
                      (let ((_xhd144139_ _hd144063144134_)
                            (_xrest144141_ _tl144064144136_))
                        (_K144062144131_ _xrest144141_ _xhd144139_)))
                    (_try-match144058144097_))))))))
    (define gx#stx-map
      (lambda _g149253_
        (let ((_g149252_ (##length _g149253_)))
          (cond ((##fx= _g149252_ 2)
                 (apply (lambda (_f144041_ _stx144042_)
                          (gx#stx-map1 _f144041_ _stx144042_))
                        _g149253_))
                ((##fx= _g149252_ 3)
                 (apply (lambda (_f144044_ _xstx144045_ _ystx144046_)
                          (gx#stx-map2 _f144044_ _xstx144045_ _ystx144046_))
                        _g149253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g149253_))))))
    (define gx#stx-map1
      (lambda (_f143991_ _stx143992_)
        (if (procedure? _f143991_)
            '#!void
            (error '"expected procedure" _f143991_))
        (let _recur143994_ ((_rest143996_ _stx143992_))
          (let* ((_g143997144007_ (gx#syntax-e _rest143996_))
                 (_else144000144015_ (lambda () (_f143991_ _rest143996_))))
            (let ((_K144003144029_
                   (lambda (_rest144026_ _hd144027_)
                     (cons (_f143991_ _hd144027_)
                           (_recur143994_ _rest144026_))))
                  (_K144002144020_ (lambda () '())))
              (let ((_try-match143999144023_
                     (lambda ()
                       (if (##null? _g143997144007_)
                           (_K144002144020_)
                           (_else144000144015_)))))
                (if (##pair? _g143997144007_)
                    (let ((_tl144005144034_ (##cdr _g143997144007_))
                          (_hd144004144032_ (##car _g143997144007_)))
                      (let ((_hd144037_ _hd144004144032_)
                            (_rest144039_ _tl144005144034_))
                        (_K144003144029_ _rest144039_ _hd144037_)))
                    (_try-match143999144023_))))))))
    (define gx#stx-map2
      (lambda (_f143896_ _xstx143897_ _ystx143898_)
        (if (procedure? _f143896_)
            '#!void
            (error '"expected procedure" _f143896_))
        (let _recur143900_ ((_xrest143902_ _xstx143897_)
                            (_yrest143903_ _ystx143898_))
          (let* ((_g143904143914_ (gx#syntax-e _xrest143902_))
                 (_else143907143922_ (lambda () '())))
            (let ((_K143910143979_
                   (lambda (_xrest143948_ _xhd143949_)
                     (let* ((_g143950143957_ (gx#syntax-e _yrest143903_))
                            (_E143952143961_
                             (lambda ()
                               (error '"No clause matching" _g143950143957_)))
                            (_K143953143967_
                             (lambda (_yrest143964_ _yhd143965_)
                               (cons (_f143896_ _xhd143949_ _yhd143965_)
                                     (_recur143900_
                                      _xrest143948_
                                      _yrest143964_)))))
                       (if (##pair? _g143950143957_)
                           (let ((_hd143954143970_ (##car _g143950143957_))
                                 (_tl143955143972_ (##cdr _g143950143957_)))
                             (let* ((_yhd143975_ _hd143954143970_)
                                    (_yrest143977_ _tl143955143972_))
                               (_K143953143967_ _yrest143977_ _yhd143975_)))
                           (_E143952143961_)))))
                  (_K143909143942_
                   (lambda ()
                     (let* ((_yrest143926143931_ _yrest143903_)
                            (_E143928143935_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest143926143931_)))
                            (_K143929143939_
                             (lambda ()
                               (_f143896_ _xrest143902_ _yrest143903_))))
                       (if (not (gx#stx-null? _yrest143926143931_))
                           (_K143929143939_)
                           (_E143928143935_))))))
              (let ((_try-match143906143945_
                     (lambda ()
                       (if (not (null? _g143904143914_))
                           (_K143909143942_)
                           (_else143907143922_)))))
                (if (##pair? _g143904143914_)
                    (let ((_tl143912143984_ (##cdr _g143904143914_))
                          (_hd143911143982_ (##car _g143904143914_)))
                      (let ((_xhd143987_ _hd143911143982_)
                            (_xrest143989_ _tl143912143984_))
                        (_K143910143979_ _xrest143989_ _xhd143987_)))
                    (_try-match143906143945_))))))))
    (define gx#stx-andmap
      (lambda (_f143846_ _stx143847_)
        (if (procedure? _f143846_)
            '#!void
            (error '"expected procedure" _f143846_))
        (let _lp143849_ ((_rest143851_ _stx143847_))
          (let* ((_g143852143862_ (gx#syntax-e _rest143851_))
                 (_else143855143870_ (lambda () (_f143846_ _rest143851_))))
            (let ((_K143858143884_
                   (lambda (_rest143881_ _hd143882_)
                     (if (_f143846_ _hd143882_)
                         (_lp143849_ _rest143881_)
                         '#f)))
                  (_K143857143875_ (lambda () '#t)))
              (let ((_try-match143854143878_
                     (lambda ()
                       (if (##null? _g143852143862_)
                           (_K143857143875_)
                           (_else143855143870_)))))
                (if (##pair? _g143852143862_)
                    (let ((_tl143860143889_ (##cdr _g143852143862_))
                          (_hd143859143887_ (##car _g143852143862_)))
                      (let ((_hd143892_ _hd143859143887_)
                            (_rest143894_ _tl143860143889_))
                        (_K143858143884_ _rest143894_ _hd143892_)))
                    (_try-match143854143878_))))))))
    (define gx#stx-ormap
      (lambda (_f143793_ _stx143794_)
        (if (procedure? _f143793_)
            '#!void
            (error '"expected procedure" _f143793_))
        (let _lp143796_ ((_rest143798_ _stx143794_))
          (let* ((_g143799143809_ (gx#syntax-e _rest143798_))
                 (_else143802143817_ (lambda () (_f143793_ _rest143798_))))
            (let ((_K143805143834_
                   (lambda (_rest143828_ _hd143829_)
                     (let ((_$e143831_ (_f143793_ _hd143829_)))
                       (if _$e143831_ _$e143831_ (_lp143796_ _rest143828_)))))
                  (_K143804143822_ (lambda () '#f)))
              (let ((_try-match143801143825_
                     (lambda ()
                       (if (##null? _g143799143809_)
                           (_K143804143822_)
                           (_else143802143817_)))))
                (if (##pair? _g143799143809_)
                    (let ((_tl143807143839_ (##cdr _g143799143809_))
                          (_hd143806143837_ (##car _g143799143809_)))
                      (let ((_hd143842_ _hd143806143837_)
                            (_rest143844_ _tl143807143839_))
                        (_K143805143834_ _rest143844_ _hd143842_)))
                    (_try-match143801143825_))))))))
    (define gx#stx-foldl
      (lambda (_f143741_ _iv143742_ _stx143743_)
        (if (procedure? _f143741_)
            '#!void
            (error '"expected procedure" _f143741_))
        (let _lp143745_ ((_r143747_ _iv143742_) (_rest143748_ _stx143743_))
          (let* ((_g143749143759_ (gx#syntax-e _rest143748_))
                 (_else143752143767_
                  (lambda () (_f143741_ _rest143748_ _r143747_))))
            (let ((_K143755143781_
                   (lambda (_rest143778_ _hd143779_)
                     (_lp143745_
                      (_f143741_ _hd143779_ _r143747_)
                      _rest143778_)))
                  (_K143754143772_ (lambda () _r143747_)))
              (let ((_try-match143751143775_
                     (lambda ()
                       (if (##null? _g143749143759_)
                           (_K143754143772_)
                           (_else143752143767_)))))
                (if (##pair? _g143749143759_)
                    (let ((_tl143757143786_ (##cdr _g143749143759_))
                          (_hd143756143784_ (##car _g143749143759_)))
                      (let ((_hd143789_ _hd143756143784_)
                            (_rest143791_ _tl143757143786_))
                        (_K143755143781_ _rest143791_ _hd143789_)))
                    (_try-match143751143775_))))))))
    (define gx#stx-foldr
      (lambda (_f143690_ _iv143691_ _stx143692_)
        (if (procedure? _f143690_)
            '#!void
            (error '"expected procedure" _f143690_))
        (let _recur143694_ ((_rest143696_ _stx143692_))
          (let* ((_g143697143707_ (gx#syntax-e _rest143696_))
                 (_else143700143715_
                  (lambda () (_f143690_ _rest143696_ _iv143691_))))
            (let ((_K143703143729_
                   (lambda (_rest143726_ _hd143727_)
                     (_f143690_ _hd143727_ (_recur143694_ _rest143726_))))
                  (_K143702143720_ (lambda () _iv143691_)))
              (let ((_try-match143699143723_
                     (lambda ()
                       (if (##null? _g143697143707_)
                           (_K143702143720_)
                           (_else143700143715_)))))
                (if (##pair? _g143697143707_)
                    (let ((_tl143705143734_ (##cdr _g143697143707_))
                          (_hd143704143732_ (##car _g143697143707_)))
                      (let ((_hd143737_ _hd143704143732_)
                            (_rest143739_ _tl143705143734_))
                        (_K143703143729_ _rest143739_ _hd143737_)))
                    (_try-match143699143723_))))))))
    (define gx#stx-reverse
      (lambda (_stx143688_) (gx#stx-foldl cons '() _stx143688_)))
    (define gx#stx-last
      (lambda (_stx143649_)
        (let _lp143651_ ((_rest143653_ _stx143649_))
          (let* ((_g143654143662_ (gx#syntax-e _rest143653_))
                 (_else143656143670_ (lambda () _rest143653_))
                 (_K143658143676_
                  (lambda (_rest143673_ _hd143674_)
                    (if (gx#stx-null? _rest143673_)
                        _hd143674_
                        (_lp143651_ _rest143673_)))))
            (if (##pair? _g143654143662_)
                (let ((_hd143659143679_ (##car _g143654143662_))
                      (_tl143660143681_ (##cdr _g143654143662_)))
                  (let* ((_hd143684_ _hd143659143679_)
                         (_rest143686_ _tl143660143681_))
                    (_K143658143676_ _rest143686_ _hd143684_)))
                (_else143656143670_))))))
    (define gx#stx-last-pair
      (lambda (_stx143620_)
        (let _lp143622_ ((_hd143624_ _stx143620_))
          (let* ((_g143625143632_ (gx#syntax-e _hd143624_))
                 (_E143627143636_
                  (lambda () (error '"No clause matching" _g143625143632_)))
                 (_K143628143641_
                  (lambda (_rest143639_)
                    (if (gx#stx-pair? _rest143639_)
                        (_lp143622_ _rest143639_)
                        _hd143624_))))
            (if (##pair? _g143625143632_)
                (let* ((_tl143630143644_ (##cdr _g143625143632_))
                       (_rest143647_ _tl143630143644_))
                  (_K143628143641_ _rest143647_))
                (_E143627143636_))))))
    (define gx#stx-list-tail
      (lambda (_stx143589_ _k143590_)
        (let _lp143592_ ((_rest143594_ _stx143589_) (_k143595_ _k143590_))
          (if (fxpositive? _k143595_)
              (let* ((_g143596143603_ (gx#syntax-e _rest143594_))
                     (_E143598143607_
                      (lambda ()
                        (error '"No clause matching" _g143596143603_)))
                     (_K143599143612_
                      (lambda (_rest143610_)
                        (_lp143592_ _rest143610_ (fx- _k143595_ '1)))))
                (if (##pair? _g143596143603_)
                    (let* ((_tl143601143615_ (##cdr _g143596143603_))
                           (_rest143618_ _tl143601143615_))
                      (_K143599143612_ _rest143618_))
                    (_E143598143607_)))
              _rest143594_))))
    (define gx#stx-list-ref
      (lambda (_stx143586_ _k143587_)
        (gx#stx-car (gx#stx-list-tail _stx143586_ _k143587_))))
    (define gx#stx-plist?__%
      (lambda (_stx143498_ _key?143499_)
        (if (procedure? _key?143499_)
            '#!void
            (error '"expected procedure" _key?143499_))
        (let _lp143501_ ((_rest143503_ _stx143498_))
          (let* ((_g143504143514_ (gx#stx-e _rest143503_))
                 (_else143507143522_ (lambda () '#f)))
            (let ((_K143510143564_
                   (lambda (_rest143533_ _hd143534_)
                     (if (_key?143499_ _hd143534_)
                         (let* ((_g143535143543_ (gx#stx-e _rest143533_))
                                (_else143537143551_ (lambda () '#f))
                                (_K143539143556_
                                 (lambda (_rest143554_)
                                   (_lp143501_ _rest143554_))))
                           (if (##pair? _g143535143543_)
                               (let* ((_tl143541143559_
                                       (##cdr _g143535143543_))
                                      (_rest143562_ _tl143541143559_))
                                 (_lp143501_ _rest143562_))
                               (_else143537143551_)))
                         '#f)))
                  (_K143509143527_ (lambda () '#t)))
              (let ((_try-match143506143530_
                     (lambda ()
                       (if (##null? _g143504143514_)
                           (_K143509143527_)
                           (_else143507143522_)))))
                (if (##pair? _g143504143514_)
                    (let ((_tl143512143569_ (##cdr _g143504143514_))
                          (_hd143511143567_ (##car _g143504143514_)))
                      (let ((_hd143572_ _hd143511143567_)
                            (_rest143574_ _tl143512143569_))
                        (_K143510143564_ _rest143574_ _hd143572_)))
                    (_try-match143506143530_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx143579_)
        (let ((_key?143581_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx143579_ _key?143581_))))
    (define gx#stx-plist?
      (lambda _g149255_
        (let ((_g149254_ (##length _g149255_)))
          (cond ((##fx= _g149254_ 1)
                 (apply (lambda (_stx143579_) (gx#stx-plist?__0 _stx143579_))
                        _g149255_))
                ((##fx= _g149254_ 2)
                 (apply (lambda (_stx143583_ _key?143584_)
                          (gx#stx-plist?__% _stx143583_ _key?143584_))
                        _g149255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g149255_))))))
    (define gx#stx-getq__%
      (lambda (_key143416_ _stx143417_ _key=?143418_)
        (if (procedure? _key=?143418_)
            '#!void
            (error '"expected procedure" _key=?143418_))
        (let _lp143420_ ((_rest143422_ _stx143417_))
          (let* ((_g143423143431_ (gx#syntax-e _rest143422_))
                 (_else143425143439_ (lambda () '#f))
                 (_K143427143473_
                  (lambda (_rest143442_ _hd143443_)
                    (let* ((_g143444143451_ (gx#syntax-e _rest143442_))
                           (_E143446143455_
                            (lambda ()
                              (error '"No clause matching" _g143444143451_)))
                           (_K143447143461_
                            (lambda (_rest143458_ _val143459_)
                              (if (_key=?143418_ _hd143443_ _key143416_)
                                  _val143459_
                                  (_lp143420_ _rest143458_)))))
                      (if (##pair? _g143444143451_)
                          (let ((_hd143448143464_ (##car _g143444143451_))
                                (_tl143449143466_ (##cdr _g143444143451_)))
                            (let* ((_val143469_ _hd143448143464_)
                                   (_rest143471_ _tl143449143466_))
                              (_K143447143461_ _rest143471_ _val143469_)))
                          (_E143446143455_))))))
            (if (##pair? _g143423143431_)
                (let ((_hd143428143476_ (##car _g143423143431_))
                      (_tl143429143478_ (##cdr _g143423143431_)))
                  (let* ((_hd143481_ _hd143428143476_)
                         (_rest143483_ _tl143429143478_))
                    (_K143427143473_ _rest143483_ _hd143481_)))
                (_else143425143439_))))))
    (define gx#stx-getq__0
      (lambda (_key143488_ _stx143489_)
        (let ((_key=?143491_ gx#stx-eq?))
          (gx#stx-getq__% _key143488_ _stx143489_ _key=?143491_))))
    (define gx#stx-getq
      (lambda _g149257_
        (let ((_g149256_ (##length _g149257_)))
          (cond ((##fx= _g149256_ 2)
                 (apply (lambda (_key143488_ _stx143489_)
                          (gx#stx-getq__0 _key143488_ _stx143489_))
                        _g149257_))
                ((##fx= _g149256_ 3)
                 (apply (lambda (_key143493_ _stx143494_ _key=?143495_)
                          (gx#stx-getq__%
                           _key143493_
                           _stx143494_
                           _key=?143495_))
                        _g149257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g149257_))))))))
