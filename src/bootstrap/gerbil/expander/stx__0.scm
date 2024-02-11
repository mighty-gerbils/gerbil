(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707647932)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#identifier-wrap? (make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args135522_
        (apply make-class-instance gx#identifier-wrap::t _$args135522_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#syntax-wrap? (make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args135519_
        (apply make-class-instance gx#syntax-wrap::t _$args135519_)))
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
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#syntax-quote? (make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args135516_
        (apply make-class-instance gx#syntax-quote::t _$args135516_)))
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
      (lambda (_stx135514_) (symbol? (gx#stx-e _stx135514_))))
    (define gx#identifier-quote?
      (lambda (_stx135512_)
        (if (##structure-direct-instance-of? _stx135512_ 'gx#syntax-quote::t)
            (symbol? (unchecked-slot-ref _stx135512_ 'e))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135510_)
        (if (##structure-direct-instance-of? _stx135510_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135510_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax? (unchecked-slot-ref _stx135510_ 'e))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135508_)
        (if (##structure-direct-instance-of? _stx135508_ 'gx#syntax-quote::t)
            _stx135508_
            (if (##structure-direct-instance-of?
                 _stx135508_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap (unchecked-slot-ref _stx135508_ 'e))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135491_)
        (if (##structure-direct-instance-of? _stx135491_ 'gx#syntax-wrap::t)
            (let _lp135493_ ((_e135495_ (unchecked-slot-ref _stx135491_ 'e))
                             (_marks135496_
                              (cons (##unchecked-structure-ref
                                     _stx135491_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135495_)
                  (let ((_$e135498_ (##type-id (##structure-type _e135495_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135498_)
                        (_lp135493_
                         (unchecked-slot-ref _e135495_ 'e)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135495_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135496_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135498_)
                                (eq? 'gx#identifier-wrap::t _$e135498_))
                            (unchecked-slot-ref _e135495_ 'e)
                            (if (eq? 'gerbil#AST::t _$e135498_)
                                (_lp135493_
                                 (unchecked-slot-ref _e135495_ 'e)
                                 _marks135496_)
                                _e135495_))))
                  (if (null? _marks135496_)
                      _e135495_
                      (if (pair? _e135495_)
                          (cons (gx#stx-wrap (car _e135495_) _marks135496_)
                                (gx#stx-wrap (cdr _e135495_) _marks135496_))
                          (if (vector? _e135495_)
                              (vector-map
                               (lambda (_g135503135505_)
                                 (gx#stx-wrap _g135503135505_ _marks135496_))
                               _e135495_)
                              (if (box? _e135495_)
                                  (box (gx#stx-wrap
                                        (unbox _e135495_)
                                        _marks135496_))
                                  _e135495_))))))
            (if (class-instance? gx#AST::t _stx135491_)
                (unchecked-slot-ref _stx135491_ 'e)
                _stx135491_))))
    (define gx#syntax->datum
      (lambda (_stx135489_)
        (if (class-instance? gx#AST::t _stx135489_)
            (gx#syntax->datum (unchecked-slot-ref _stx135489_ 'e))
            (if (pair? _stx135489_)
                (cons (gx#syntax->datum (car _stx135489_))
                      (gx#syntax->datum (cdr _stx135489_)))
                (if (vector? _stx135489_)
                    (vector-map gx#syntax->datum _stx135489_)
                    (if (box? _stx135489_)
                        (box (gx#syntax->datum (unbox _stx135489_)))
                        _stx135489_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135432_ _datum135433_ _src135434_ _quote?135435_)
        (letrec ((_wrap-datum135437_
                  (lambda (_e135461_ _marks135462_)
                    (_wrap-inner135439_
                     _e135461_
                     (lambda (_g135463135465_)
                       (let ((__obj140070
                              (##structure gx#identifier-wrap::t '#f '#f '#f)))
                         (class-instance-init!
                          __obj140070
                          _g135463135465_
                          _src135434_
                          _marks135462_)
                         __obj140070)))))
                 (_wrap-quote135438_
                  (lambda (_e135453_ _ctx135454_ _marks135455_)
                    (_wrap-inner135439_
                     _e135453_
                     (lambda (_g135456135458_)
                       (let ((__obj140071
                              (##structure
                               gx#syntax-quote::t
                               '#f
                               '#f
                               '#f
                               '#f)))
                         (class-instance-init!
                          __obj140071
                          _g135456135458_
                          _src135434_
                          _ctx135454_
                          _marks135455_)
                         __obj140071)))))
                 (_wrap-inner135439_
                  (lambda (_e135446_ _wrap-e135447_)
                    (let _recur135449_ ((_e135451_ _e135446_))
                      (if (symbol? _e135451_)
                          (_wrap-e135447_ _e135451_)
                          (if (pair? _e135451_)
                              (cons (_recur135449_ (car _e135451_))
                                    (_recur135449_ (cdr _e135451_)))
                              (if (vector? _e135451_)
                                  (vector-map _recur135449_ _e135451_)
                                  (if (box? _e135451_)
                                      (box (_recur135449_ (unbox _e135451_)))
                                      _e135451_)))))))
                 (_wrap-outer135440_
                  (lambda (_e135444_)
                    (if (class-instance? gx#AST::t _e135444_)
                        _e135444_
                        (let ((__obj140072 (##structure gx#AST::t '#f '#f)))
                          (class-instance-init!
                           __obj140072
                           _e135444_
                           _src135434_)
                          __obj140072)))))
          (if (class-instance? gx#AST::t _datum135433_)
              _datum135433_
              (if (not _stx135432_)
                  (let ((__obj140073 (##structure gx#AST::t '#f '#f)))
                    (class-instance-init!
                     __obj140073
                     _datum135433_
                     _src135434_)
                    __obj140073)
                  (if (gx#identifier? _stx135432_)
                      (let ((_stx135442_ (gx#stx-unwrap__0 _stx135432_)))
                        (_wrap-outer135440_
                         (if (##structure-direct-instance-of?
                              _stx135442_
                              'gx#syntax-quote::t)
                             (if _quote?135435_
                                 (_wrap-quote135438_
                                  _datum135433_
                                  (##unchecked-structure-ref
                                   _stx135442_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135442_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135437_
                                  _datum135433_
                                  (##unchecked-structure-ref
                                   _stx135442_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135437_
                              _datum135433_
                              (##unchecked-structure-ref
                               _stx135442_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135432_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135471_ _datum135472_)
        (let* ((_src135474_ '#f) (_quote?135476_ '#t))
          (gx#datum->syntax__%
           _stx135471_
           _datum135472_
           _src135474_
           _quote?135476_))))
    (define gx#datum->syntax__1
      (lambda (_stx135478_ _datum135479_ _src135480_)
        (let ((_quote?135482_ '#t))
          (gx#datum->syntax__%
           _stx135478_
           _datum135479_
           _src135480_
           _quote?135482_))))
    (define gx#datum->syntax
      (lambda _g140079_
        (let ((_g140078_ (##length _g140079_)))
          (cond ((##fx= _g140078_ 2)
                 (apply (lambda (_stx135471_ _datum135472_)
                          (gx#datum->syntax__0 _stx135471_ _datum135472_))
                        _g140079_))
                ((##fx= _g140078_ 3)
                 (apply (lambda (_stx135478_ _datum135479_ _src135480_)
                          (gx#datum->syntax__1
                           _stx135478_
                           _datum135479_
                           _src135480_))
                        _g140079_))
                ((##fx= _g140078_ 4)
                 (apply (lambda (_stx135484_
                                 _datum135485_
                                 _src135486_
                                 _quote?135487_)
                          (gx#datum->syntax__%
                           _stx135484_
                           _datum135485_
                           _src135486_
                           _quote?135487_))
                        _g140079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140079_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135408_ _marks135409_)
        (let _lp135411_ ((_e135413_ _stx135408_)
                         (_marks135414_ _marks135409_)
                         (_src135415_ (gx#stx-source _stx135408_)))
          (if (##structure-direct-instance-of? _e135413_ 'gx#syntax-wrap::t)
              (_lp135411_
               (unchecked-slot-ref _e135413_ 'e)
               (gx#apply-mark
                (##unchecked-structure-ref _e135413_ '3 gx#syntax-wrap::t '#f)
                _marks135414_)
               (unchecked-slot-ref _e135413_ 'source))
              (if (##structure-direct-instance-of?
                   _e135413_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135414_)
                      _e135413_
                      (let ((__obj140074
                             (##structure gx#identifier-wrap::t '#f '#f '#f)))
                        (class-instance-init!
                         __obj140074
                         (unchecked-slot-ref _e135413_ 'e)
                         (unchecked-slot-ref _e135413_ 'source)
                         (foldl1 gx#apply-mark
                                 (##unchecked-structure-ref
                                  _e135413_
                                  '3
                                  gx#identifier-wrap::t
                                  '#f)
                                 _marks135414_))
                        __obj140074))
                  (if (##structure-direct-instance-of?
                       _e135413_
                       'gx#syntax-quote::t)
                      _e135413_
                      (if (class-instance? gx#AST::t _e135413_)
                          (_lp135411_
                           (unchecked-slot-ref _e135413_ 'e)
                           _marks135414_
                           (unchecked-slot-ref _e135413_ 'source))
                          (if (symbol? _e135413_)
                              (let ((__obj140075
                                     (##structure
                                      gx#identifier-wrap::t
                                      '#f
                                      '#f
                                      '#f)))
                                (class-instance-init!
                                 __obj140075
                                 _e135413_
                                 _src135415_
                                 (reverse _marks135414_))
                                __obj140075)
                              (if (null? _marks135414_)
                                  _e135413_
                                  (if (pair? _e135413_)
                                      (cons (gx#stx-wrap
                                             (car _e135413_)
                                             _marks135414_)
                                            (gx#stx-wrap
                                             (cdr _e135413_)
                                             _marks135414_))
                                      (if (vector? _e135413_)
                                          (vector-map
                                           (lambda (_g135416135418_)
                                             (gx#stx-wrap
                                              _g135416135418_
                                              _marks135414_))
                                           _e135413_)
                                          (if (box? _e135413_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135413_)
                                                    _marks135414_))
                                              _e135413_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135424_)
        (let ((_marks135426_ '()))
          (gx#stx-unwrap__% _stx135424_ _marks135426_))))
    (define gx#stx-unwrap
      (lambda _g140081_
        (let ((_g140080_ (##length _g140081_)))
          (cond ((##fx= _g140080_ 1)
                 (apply (lambda (_stx135424_) (gx#stx-unwrap__0 _stx135424_))
                        _g140081_))
                ((##fx= _g140080_ 2)
                 (apply (lambda (_stx135428_ _marks135429_)
                          (gx#stx-unwrap__% _stx135428_ _marks135429_))
                        _g140081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140081_))))))
    (define gx#stx-wrap
      (lambda (_stx135401_ _marks135402_)
        (foldl1 (lambda (_mark135404_ _stx135405_)
                  (gx#stx-apply-mark _stx135405_ _mark135404_))
                _stx135401_
                _marks135402_)))
    (define gx#stx-rewrap
      (lambda (_stx135395_ _marks135396_)
        (foldr1 (lambda (_mark135398_ _stx135399_)
                  (gx#stx-apply-mark _stx135399_ _mark135398_))
                _stx135395_
                _marks135396_)))
    (define gx#stx-apply-mark
      (lambda (_stx135392_ _mark135393_)
        (if (##structure-direct-instance-of? _stx135392_ 'gx#syntax-quote::t)
            _stx135392_
            (if (and (##structure-direct-instance-of?
                      _stx135392_
                      'gx#syntax-wrap::t)
                     (eq? _mark135393_
                          (##unchecked-structure-ref
                           _stx135392_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (unchecked-slot-ref _stx135392_ 'e)
                (let ((__obj140076
                       (##structure gx#syntax-wrap::t '#f '#f '#f)))
                  (class-instance-init!
                   __obj140076
                   _stx135392_
                   (gx#stx-source _stx135392_)
                   _mark135393_)
                  __obj140076)))))
    (define gx#apply-mark
      (lambda (_mark135356_ _marks135357_)
        (let* ((_marks135358135366_ _marks135357_)
               (_else135360135374_
                (lambda () (cons _mark135356_ _marks135357_)))
               (_K135362135380_
                (lambda (_rest135377_ _hd135378_)
                  (if (eq? _mark135356_ _hd135378_)
                      _rest135377_
                      (cons _mark135356_ _marks135357_)))))
          (if (##pair? _marks135358135366_)
              (let ((_hd135363135383_ (##car _marks135358135366_))
                    (_tl135364135385_ (##cdr _marks135358135366_)))
                (let* ((_hd135388_ _hd135363135383_)
                       (_rest135390_ _tl135364135385_))
                  (_K135362135380_ _rest135390_ _hd135388_)))
              (_else135360135374_)))))
    (define gx#stx-e
      (lambda (_stx135354_)
        (if (##structure-direct-instance-of? _stx135354_ 'gx#syntax-wrap::t)
            (gx#stx-e (unchecked-slot-ref _stx135354_ 'e))
            (if (class-instance? gx#AST::t _stx135354_)
                (unchecked-slot-ref _stx135354_ 'e)
                _stx135354_))))
    (define gx#stx-source
      (lambda (_stx135352_)
        (if (class-instance? gx#AST::t _stx135352_)
            (unchecked-slot-ref _stx135352_ 'source)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135346_ _src135347_)
        (if (or (class-instance? gx#AST::t _stx135346_) (not _src135347_))
            _stx135346_
            (let ((__obj140077 (##structure gx#AST::t '#f '#f)))
              (class-instance-init! __obj140077 _stx135346_ _src135347_)
              __obj140077))))
    (define gx#stx-datum?
      (lambda (_stx135344_) (gx#self-quoting? (gx#stx-e _stx135344_))))
    (define gx#self-quoting?
      (lambda (_x135327_)
        (let ((_$e135329_ (immediate? _x135327_)))
          (if _$e135329_
              _$e135329_
              (let ((_$e135332_ (number? _x135327_)))
                (if _$e135332_
                    _$e135332_
                    (let ((_$e135335_ (keyword? _x135327_)))
                      (if _$e135335_
                          _$e135335_
                          (let ((_$e135338_ (string? _x135327_)))
                            (if _$e135338_
                                _$e135338_
                                (let ((_$e135341_ (vector? _x135327_)))
                                  (if _$e135341_
                                      _$e135341_
                                      (u8vector? _x135327_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135325_) (boolean? (gx#stx-e _e135325_))))
    (define gx#stx-keyword?
      (lambda (_e135323_) (keyword? (gx#stx-e _e135323_))))
    (define gx#stx-char? (lambda (_e135321_) (char? (gx#stx-e _e135321_))))
    (define gx#stx-number? (lambda (_e135319_) (number? (gx#stx-e _e135319_))))
    (define gx#stx-fixnum? (lambda (_e135317_) (fixnum? (gx#stx-e _e135317_))))
    (define gx#stx-string? (lambda (_e135315_) (string? (gx#stx-e _e135315_))))
    (define gx#stx-null? (lambda (_e135313_) (null? (gx#stx-e _e135313_))))
    (define gx#stx-pair? (lambda (_e135311_) (pair? (gx#stx-e _e135311_))))
    (define gx#stx-list?
      (lambda (_e135273_)
        (let* ((_g135274135283_ (gx#stx-e _e135273_))
               (_E135277135287_
                (lambda () (error '"No clause matching" _g135274135283_))))
          (let ((_K135279135303_
                 (lambda (_rest135301_) (gx#stx-list? _rest135301_)))
                (_K135278135293_ (lambda (_tail135291_) (null? _tail135291_))))
            (if (##pair? _g135274135283_)
                (let* ((_tl135281135306_ (##cdr _g135274135283_))
                       (_rest135309_ _tl135281135306_))
                  (gx#stx-list? _rest135309_))
                (let ((_tail135296_ _g135274135283_))
                  (null? _tail135296_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135266_)
        (let* ((_e135268_ (gx#stx-e _e135266_)) (_$e135270_ (pair? _e135268_)))
          (if _$e135270_ _$e135270_ (null? _e135268_)))))
    (define gx#stx-vector? (lambda (_e135264_) (vector? (gx#stx-e _e135264_))))
    (define gx#stx-box? (lambda (_e135262_) (box? (gx#stx-e _e135262_))))
    (define gx#stx-eq?
      (lambda (_x135259_ _y135260_)
        (eq? (gx#stx-e _x135259_) (gx#stx-e _y135260_))))
    (define gx#stx-eqv?
      (lambda (_x135256_ _y135257_)
        (eqv? (gx#stx-e _x135256_) (gx#stx-e _y135257_))))
    (define gx#stx-equal?
      (lambda (_x135253_ _y135254_)
        (equal? (gx#stx-e _x135253_) (gx#stx-e _y135254_))))
    (define gx#stx-false? (lambda (_x135251_) (not (gx#stx-e _x135251_))))
    (define gx#stx-identifier
      (lambda (_template135248_ . _args135249_)
        (gx#datum->syntax__1
         _template135248_
         (apply make-symbol (gx#syntax->datum _args135249_))
         (gx#stx-source _template135248_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135246_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135246_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135244_)
        (if (##structure-direct-instance-of?
             _stx135244_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135244_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135244_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135244_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135244_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135240_)
        (let ((_stx135242_ (gx#stx-unwrap__0 _stx135240_)))
          (if (gx#identifier-quote? _stx135242_)
              (##unchecked-structure-ref _stx135242_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135195_)
        (let* ((_g135196135206_ (gx#stx-e _stx135195_))
               (_else135199135214_ (lambda () '#f)))
          (let ((_K135202135228_
                 (lambda (_rest135225_ _hd135226_)
                   (if (gx#identifier? _hd135226_)
                       (gx#identifier-list? _rest135225_)
                       '#f)))
                (_K135201135219_ (lambda () '#t)))
            (let ((_try-match135198135222_
                   (lambda ()
                     (if (##null? _g135196135206_)
                         (_K135201135219_)
                         (_else135199135214_)))))
              (if (##pair? _g135196135206_)
                  (let ((_tl135204135233_ (##cdr _g135196135206_))
                        (_hd135203135231_ (##car _g135196135206_)))
                    (let ((_hd135236_ _hd135203135231_)
                          (_rest135238_ _tl135204135233_))
                      (_K135202135228_ _rest135238_ _hd135236_)))
                  (_try-match135198135222_)))))))
    (define gx#genident__%
      (lambda (_e135172_ _src135173_)
        (gx#stx-wrap-source
         (gensym (let ((_e135175_ (gx#stx-e _e135172_)))
                   (if (interned-symbol? _e135175_) _e135175_ 'g)))
         (let ((_$e135177_ (gx#stx-source _e135172_)))
           (if _$e135177_ _$e135177_ _src135173_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135184_ 'g) (_src135186_ '#f))
          (gx#genident__% _e135184_ _src135186_))))
    (define gx#genident__1
      (lambda (_e135188_)
        (let ((_src135190_ '#f)) (gx#genident__% _e135188_ _src135190_))))
    (define gx#genident
      (lambda _g140083_
        (let ((_g140082_ (##length _g140083_)))
          (cond ((##fx= _g140082_ 0)
                 (apply (lambda () (gx#genident__0)) _g140083_))
                ((##fx= _g140082_ 1)
                 (apply (lambda (_e135188_) (gx#genident__1 _e135188_))
                        _g140083_))
                ((##fx= _g140082_ 2)
                 (apply (lambda (_e135192_ _src135193_)
                          (gx#genident__% _e135192_ _src135193_))
                        _g140083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140083_))))))
    (define gx#gentemps
      (lambda (_stx-lst135169_) (gx#stx-map1 gx#genident _stx-lst135169_)))
    (define gx#syntax->list
      (lambda (_stx135167_) (gx#stx-map1 values _stx135167_)))
    (define gx#stx-car
      (lambda (_stx135164_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135164_)))))
    (define gx#stx-cdr
      (lambda (_stx135161_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135161_)))))
    (define gx#stx-length
      (lambda (_stx135126_)
        (let _lp135128_ ((_rest135130_ _stx135126_) (_n135131_ '0))
          (let* ((_g135132135140_ (gx#stx-e _rest135130_))
                 (_else135134135148_ (lambda () _n135131_))
                 (_K135136135153_
                  (lambda (_rest135151_)
                    (_lp135128_ _rest135151_ (fx+ _n135131_ '1)))))
            (if (##pair? _g135132135140_)
                (let* ((_tl135138135156_ (##cdr _g135132135140_))
                       (_rest135159_ _tl135138135156_))
                  (_K135136135153_ _rest135159_))
                (_else135134135148_))))))
    (define gx#stx-for-each
      (lambda _g140085_
        (let ((_g140084_ (##length _g140085_)))
          (cond ((##fx= _g140084_ 2)
                 (apply (lambda (_f135119_ _stx135120_)
                          (gx#stx-for-each1 _f135119_ _stx135120_))
                        _g140085_))
                ((##fx= _g140084_ 3)
                 (apply (lambda (_f135122_ _xstx135123_ _ystx135124_)
                          (gx#stx-for-each2
                           _f135122_
                           _xstx135123_
                           _ystx135124_))
                        _g140085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140085_))))))
    (define gx#stx-for-each1
      (lambda (_f135069_ _stx135070_)
        (if (procedure? _f135069_)
            '#!void
            (error '"expected procedure" _f135069_))
        (let _lp135072_ ((_rest135074_ _stx135070_))
          (let* ((_g135075135085_ (gx#syntax-e _rest135074_))
                 (_else135078135093_ (lambda () (_f135069_ _rest135074_))))
            (let ((_K135081135107_
                   (lambda (_rest135104_ _hd135105_)
                     (_f135069_ _hd135105_)
                     (_lp135072_ _rest135104_)))
                  (_K135080135098_ (lambda () '#!void)))
              (let ((_try-match135077135101_
                     (lambda ()
                       (if (##null? _g135075135085_)
                           (_K135080135098_)
                           (_else135078135093_)))))
                (if (##pair? _g135075135085_)
                    (let ((_tl135083135112_ (##cdr _g135075135085_))
                          (_hd135082135110_ (##car _g135075135085_)))
                      (let ((_hd135115_ _hd135082135110_)
                            (_rest135117_ _tl135083135112_))
                        (_K135081135107_ _rest135117_ _hd135115_)))
                    (_try-match135077135101_))))))))
    (define gx#stx-for-each2
      (lambda (_f134974_ _xstx134975_ _ystx134976_)
        (if (procedure? _f134974_)
            '#!void
            (error '"expected procedure" _f134974_))
        (let _lp134978_ ((_xrest134980_ _xstx134975_)
                         (_yrest134981_ _ystx134976_))
          (let* ((_g134982134992_ (gx#syntax-e _xrest134980_))
                 (_else134985135000_ (lambda () '#!void)))
            (let ((_K134988135057_
                   (lambda (_xrest135026_ _xhd135027_)
                     (let* ((_g135028135035_ (gx#syntax-e _yrest134981_))
                            (_E135030135039_
                             (lambda ()
                               (error '"No clause matching" _g135028135035_)))
                            (_K135031135045_
                             (lambda (_yrest135042_ _yhd135043_)
                               (_f134974_ _xhd135027_ _yhd135043_)
                               (_lp134978_ _xrest135026_ _yrest135042_))))
                       (if (##pair? _g135028135035_)
                           (let ((_hd135032135048_ (##car _g135028135035_))
                                 (_tl135033135050_ (##cdr _g135028135035_)))
                             (let* ((_yhd135053_ _hd135032135048_)
                                    (_yrest135055_ _tl135033135050_))
                               (_K135031135045_ _yrest135055_ _yhd135053_)))
                           (_E135030135039_)))))
                  (_K134987135020_
                   (lambda ()
                     (let* ((_yrest135004135009_ _yrest134981_)
                            (_E135006135013_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest135004135009_)))
                            (_K135007135017_
                             (lambda ()
                               (_f134974_ _xrest134980_ _yrest134981_))))
                       (if (not (gx#stx-null? _yrest135004135009_))
                           (_K135007135017_)
                           (_E135006135013_))))))
              (let ((_try-match134984135023_
                     (lambda ()
                       (if (not (null? _g134982134992_))
                           (_K134987135020_)
                           (_else134985135000_)))))
                (if (##pair? _g134982134992_)
                    (let ((_tl134990135062_ (##cdr _g134982134992_))
                          (_hd134989135060_ (##car _g134982134992_)))
                      (let ((_xhd135065_ _hd134989135060_)
                            (_xrest135067_ _tl134990135062_))
                        (_K134988135057_ _xrest135067_ _xhd135065_)))
                    (_try-match134984135023_))))))))
    (define gx#stx-map
      (lambda _g140087_
        (let ((_g140086_ (##length _g140087_)))
          (cond ((##fx= _g140086_ 2)
                 (apply (lambda (_f134967_ _stx134968_)
                          (gx#stx-map1 _f134967_ _stx134968_))
                        _g140087_))
                ((##fx= _g140086_ 3)
                 (apply (lambda (_f134970_ _xstx134971_ _ystx134972_)
                          (gx#stx-map2 _f134970_ _xstx134971_ _ystx134972_))
                        _g140087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140087_))))))
    (define gx#stx-map1
      (lambda (_f134917_ _stx134918_)
        (if (procedure? _f134917_)
            '#!void
            (error '"expected procedure" _f134917_))
        (let _recur134920_ ((_rest134922_ _stx134918_))
          (let* ((_g134923134933_ (gx#syntax-e _rest134922_))
                 (_else134926134941_ (lambda () (_f134917_ _rest134922_))))
            (let ((_K134929134955_
                   (lambda (_rest134952_ _hd134953_)
                     (cons (_f134917_ _hd134953_)
                           (_recur134920_ _rest134952_))))
                  (_K134928134946_ (lambda () '())))
              (let ((_try-match134925134949_
                     (lambda ()
                       (if (##null? _g134923134933_)
                           (_K134928134946_)
                           (_else134926134941_)))))
                (if (##pair? _g134923134933_)
                    (let ((_tl134931134960_ (##cdr _g134923134933_))
                          (_hd134930134958_ (##car _g134923134933_)))
                      (let ((_hd134963_ _hd134930134958_)
                            (_rest134965_ _tl134931134960_))
                        (_K134929134955_ _rest134965_ _hd134963_)))
                    (_try-match134925134949_))))))))
    (define gx#stx-map2
      (lambda (_f134822_ _xstx134823_ _ystx134824_)
        (if (procedure? _f134822_)
            '#!void
            (error '"expected procedure" _f134822_))
        (let _recur134826_ ((_xrest134828_ _xstx134823_)
                            (_yrest134829_ _ystx134824_))
          (let* ((_g134830134840_ (gx#syntax-e _xrest134828_))
                 (_else134833134848_ (lambda () '())))
            (let ((_K134836134905_
                   (lambda (_xrest134874_ _xhd134875_)
                     (let* ((_g134876134883_ (gx#syntax-e _yrest134829_))
                            (_E134878134887_
                             (lambda ()
                               (error '"No clause matching" _g134876134883_)))
                            (_K134879134893_
                             (lambda (_yrest134890_ _yhd134891_)
                               (cons (_f134822_ _xhd134875_ _yhd134891_)
                                     (_recur134826_
                                      _xrest134874_
                                      _yrest134890_)))))
                       (if (##pair? _g134876134883_)
                           (let ((_hd134880134896_ (##car _g134876134883_))
                                 (_tl134881134898_ (##cdr _g134876134883_)))
                             (let* ((_yhd134901_ _hd134880134896_)
                                    (_yrest134903_ _tl134881134898_))
                               (_K134879134893_ _yrest134903_ _yhd134901_)))
                           (_E134878134887_)))))
                  (_K134835134868_
                   (lambda ()
                     (let* ((_yrest134852134857_ _yrest134829_)
                            (_E134854134861_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134852134857_)))
                            (_K134855134865_
                             (lambda ()
                               (_f134822_ _xrest134828_ _yrest134829_))))
                       (if (not (gx#stx-null? _yrest134852134857_))
                           (_K134855134865_)
                           (_E134854134861_))))))
              (let ((_try-match134832134871_
                     (lambda ()
                       (if (not (null? _g134830134840_))
                           (_K134835134868_)
                           (_else134833134848_)))))
                (if (##pair? _g134830134840_)
                    (let ((_tl134838134910_ (##cdr _g134830134840_))
                          (_hd134837134908_ (##car _g134830134840_)))
                      (let ((_xhd134913_ _hd134837134908_)
                            (_xrest134915_ _tl134838134910_))
                        (_K134836134905_ _xrest134915_ _xhd134913_)))
                    (_try-match134832134871_))))))))
    (define gx#stx-andmap
      (lambda (_f134772_ _stx134773_)
        (if (procedure? _f134772_)
            '#!void
            (error '"expected procedure" _f134772_))
        (let _lp134775_ ((_rest134777_ _stx134773_))
          (let* ((_g134778134788_ (gx#syntax-e _rest134777_))
                 (_else134781134796_ (lambda () (_f134772_ _rest134777_))))
            (let ((_K134784134810_
                   (lambda (_rest134807_ _hd134808_)
                     (if (_f134772_ _hd134808_)
                         (_lp134775_ _rest134807_)
                         '#f)))
                  (_K134783134801_ (lambda () '#t)))
              (let ((_try-match134780134804_
                     (lambda ()
                       (if (##null? _g134778134788_)
                           (_K134783134801_)
                           (_else134781134796_)))))
                (if (##pair? _g134778134788_)
                    (let ((_tl134786134815_ (##cdr _g134778134788_))
                          (_hd134785134813_ (##car _g134778134788_)))
                      (let ((_hd134818_ _hd134785134813_)
                            (_rest134820_ _tl134786134815_))
                        (_K134784134810_ _rest134820_ _hd134818_)))
                    (_try-match134780134804_))))))))
    (define gx#stx-ormap
      (lambda (_f134719_ _stx134720_)
        (if (procedure? _f134719_)
            '#!void
            (error '"expected procedure" _f134719_))
        (let _lp134722_ ((_rest134724_ _stx134720_))
          (let* ((_g134725134735_ (gx#syntax-e _rest134724_))
                 (_else134728134743_ (lambda () (_f134719_ _rest134724_))))
            (let ((_K134731134760_
                   (lambda (_rest134754_ _hd134755_)
                     (let ((_$e134757_ (_f134719_ _hd134755_)))
                       (if _$e134757_ _$e134757_ (_lp134722_ _rest134754_)))))
                  (_K134730134748_ (lambda () '#f)))
              (let ((_try-match134727134751_
                     (lambda ()
                       (if (##null? _g134725134735_)
                           (_K134730134748_)
                           (_else134728134743_)))))
                (if (##pair? _g134725134735_)
                    (let ((_tl134733134765_ (##cdr _g134725134735_))
                          (_hd134732134763_ (##car _g134725134735_)))
                      (let ((_hd134768_ _hd134732134763_)
                            (_rest134770_ _tl134733134765_))
                        (_K134731134760_ _rest134770_ _hd134768_)))
                    (_try-match134727134751_))))))))
    (define gx#stx-foldl
      (lambda (_f134667_ _iv134668_ _stx134669_)
        (if (procedure? _f134667_)
            '#!void
            (error '"expected procedure" _f134667_))
        (let _lp134671_ ((_r134673_ _iv134668_) (_rest134674_ _stx134669_))
          (let* ((_g134675134685_ (gx#syntax-e _rest134674_))
                 (_else134678134693_
                  (lambda () (_f134667_ _rest134674_ _r134673_))))
            (let ((_K134681134707_
                   (lambda (_rest134704_ _hd134705_)
                     (_lp134671_
                      (_f134667_ _hd134705_ _r134673_)
                      _rest134704_)))
                  (_K134680134698_ (lambda () _r134673_)))
              (let ((_try-match134677134701_
                     (lambda ()
                       (if (##null? _g134675134685_)
                           (_K134680134698_)
                           (_else134678134693_)))))
                (if (##pair? _g134675134685_)
                    (let ((_tl134683134712_ (##cdr _g134675134685_))
                          (_hd134682134710_ (##car _g134675134685_)))
                      (let ((_hd134715_ _hd134682134710_)
                            (_rest134717_ _tl134683134712_))
                        (_K134681134707_ _rest134717_ _hd134715_)))
                    (_try-match134677134701_))))))))
    (define gx#stx-foldr
      (lambda (_f134616_ _iv134617_ _stx134618_)
        (if (procedure? _f134616_)
            '#!void
            (error '"expected procedure" _f134616_))
        (let _recur134620_ ((_rest134622_ _stx134618_))
          (let* ((_g134623134633_ (gx#syntax-e _rest134622_))
                 (_else134626134641_
                  (lambda () (_f134616_ _rest134622_ _iv134617_))))
            (let ((_K134629134655_
                   (lambda (_rest134652_ _hd134653_)
                     (_f134616_ _hd134653_ (_recur134620_ _rest134652_))))
                  (_K134628134646_ (lambda () _iv134617_)))
              (let ((_try-match134625134649_
                     (lambda ()
                       (if (##null? _g134623134633_)
                           (_K134628134646_)
                           (_else134626134641_)))))
                (if (##pair? _g134623134633_)
                    (let ((_tl134631134660_ (##cdr _g134623134633_))
                          (_hd134630134658_ (##car _g134623134633_)))
                      (let ((_hd134663_ _hd134630134658_)
                            (_rest134665_ _tl134631134660_))
                        (_K134629134655_ _rest134665_ _hd134663_)))
                    (_try-match134625134649_))))))))
    (define gx#stx-reverse
      (lambda (_stx134614_) (gx#stx-foldl cons '() _stx134614_)))
    (define gx#stx-last
      (lambda (_stx134575_)
        (let _lp134577_ ((_rest134579_ _stx134575_))
          (let* ((_g134580134588_ (gx#syntax-e _rest134579_))
                 (_else134582134596_ (lambda () _rest134579_))
                 (_K134584134602_
                  (lambda (_rest134599_ _hd134600_)
                    (if (gx#stx-null? _rest134599_)
                        _hd134600_
                        (_lp134577_ _rest134599_)))))
            (if (##pair? _g134580134588_)
                (let ((_hd134585134605_ (##car _g134580134588_))
                      (_tl134586134607_ (##cdr _g134580134588_)))
                  (let* ((_hd134610_ _hd134585134605_)
                         (_rest134612_ _tl134586134607_))
                    (_K134584134602_ _rest134612_ _hd134610_)))
                (_else134582134596_))))))
    (define gx#stx-last-pair
      (lambda (_stx134546_)
        (let _lp134548_ ((_hd134550_ _stx134546_))
          (let* ((_g134551134558_ (gx#syntax-e _hd134550_))
                 (_E134553134562_
                  (lambda () (error '"No clause matching" _g134551134558_)))
                 (_K134554134567_
                  (lambda (_rest134565_)
                    (if (gx#stx-pair? _rest134565_)
                        (_lp134548_ _rest134565_)
                        _hd134550_))))
            (if (##pair? _g134551134558_)
                (let* ((_tl134556134570_ (##cdr _g134551134558_))
                       (_rest134573_ _tl134556134570_))
                  (_K134554134567_ _rest134573_))
                (_E134553134562_))))))
    (define gx#stx-list-tail
      (lambda (_stx134515_ _k134516_)
        (let _lp134518_ ((_rest134520_ _stx134515_) (_k134521_ _k134516_))
          (if (fxpositive? _k134521_)
              (let* ((_g134522134529_ (gx#syntax-e _rest134520_))
                     (_E134524134533_
                      (lambda ()
                        (error '"No clause matching" _g134522134529_)))
                     (_K134525134538_
                      (lambda (_rest134536_)
                        (_lp134518_ _rest134536_ (fx- _k134521_ '1)))))
                (if (##pair? _g134522134529_)
                    (let* ((_tl134527134541_ (##cdr _g134522134529_))
                           (_rest134544_ _tl134527134541_))
                      (_K134525134538_ _rest134544_))
                    (_E134524134533_)))
              _rest134520_))))
    (define gx#stx-list-ref
      (lambda (_stx134512_ _k134513_)
        (gx#stx-car (gx#stx-list-tail _stx134512_ _k134513_))))
    (define gx#stx-plist?__%
      (lambda (_stx134424_ _key?134425_)
        (if (procedure? _key?134425_)
            '#!void
            (error '"expected procedure" _key?134425_))
        (let _lp134427_ ((_rest134429_ _stx134424_))
          (let* ((_g134430134440_ (gx#stx-e _rest134429_))
                 (_else134433134448_ (lambda () '#f)))
            (let ((_K134436134490_
                   (lambda (_rest134459_ _hd134460_)
                     (if (_key?134425_ _hd134460_)
                         (let* ((_g134461134469_ (gx#stx-e _rest134459_))
                                (_else134463134477_ (lambda () '#f))
                                (_K134465134482_
                                 (lambda (_rest134480_)
                                   (_lp134427_ _rest134480_))))
                           (if (##pair? _g134461134469_)
                               (let* ((_tl134467134485_
                                       (##cdr _g134461134469_))
                                      (_rest134488_ _tl134467134485_))
                                 (_lp134427_ _rest134488_))
                               (_else134463134477_)))
                         '#f)))
                  (_K134435134453_ (lambda () '#t)))
              (let ((_try-match134432134456_
                     (lambda ()
                       (if (##null? _g134430134440_)
                           (_K134435134453_)
                           (_else134433134448_)))))
                (if (##pair? _g134430134440_)
                    (let ((_tl134438134495_ (##cdr _g134430134440_))
                          (_hd134437134493_ (##car _g134430134440_)))
                      (let ((_hd134498_ _hd134437134493_)
                            (_rest134500_ _tl134438134495_))
                        (_K134436134490_ _rest134500_ _hd134498_)))
                    (_try-match134432134456_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134505_)
        (let ((_key?134507_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134505_ _key?134507_))))
    (define gx#stx-plist?
      (lambda _g140089_
        (let ((_g140088_ (##length _g140089_)))
          (cond ((##fx= _g140088_ 1)
                 (apply (lambda (_stx134505_) (gx#stx-plist?__0 _stx134505_))
                        _g140089_))
                ((##fx= _g140088_ 2)
                 (apply (lambda (_stx134509_ _key?134510_)
                          (gx#stx-plist?__% _stx134509_ _key?134510_))
                        _g140089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140089_))))))
    (define gx#stx-getq__%
      (lambda (_key134342_ _stx134343_ _key=?134344_)
        (if (procedure? _key=?134344_)
            '#!void
            (error '"expected procedure" _key=?134344_))
        (let _lp134346_ ((_rest134348_ _stx134343_))
          (let* ((_g134349134357_ (gx#syntax-e _rest134348_))
                 (_else134351134365_ (lambda () '#f))
                 (_K134353134399_
                  (lambda (_rest134368_ _hd134369_)
                    (let* ((_g134370134377_ (gx#syntax-e _rest134368_))
                           (_E134372134381_
                            (lambda ()
                              (error '"No clause matching" _g134370134377_)))
                           (_K134373134387_
                            (lambda (_rest134384_ _val134385_)
                              (if (_key=?134344_ _hd134369_ _key134342_)
                                  _val134385_
                                  (_lp134346_ _rest134384_)))))
                      (if (##pair? _g134370134377_)
                          (let ((_hd134374134390_ (##car _g134370134377_))
                                (_tl134375134392_ (##cdr _g134370134377_)))
                            (let* ((_val134395_ _hd134374134390_)
                                   (_rest134397_ _tl134375134392_))
                              (_K134373134387_ _rest134397_ _val134395_)))
                          (_E134372134381_))))))
            (if (##pair? _g134349134357_)
                (let ((_hd134354134402_ (##car _g134349134357_))
                      (_tl134355134404_ (##cdr _g134349134357_)))
                  (let* ((_hd134407_ _hd134354134402_)
                         (_rest134409_ _tl134355134404_))
                    (_K134353134399_ _rest134409_ _hd134407_)))
                (_else134351134365_))))))
    (define gx#stx-getq__0
      (lambda (_key134414_ _stx134415_)
        (let ((_key=?134417_ gx#stx-eq?))
          (gx#stx-getq__% _key134414_ _stx134415_ _key=?134417_))))
    (define gx#stx-getq
      (lambda _g140091_
        (let ((_g140090_ (##length _g140091_)))
          (cond ((##fx= _g140090_ 2)
                 (apply (lambda (_key134414_ _stx134415_)
                          (gx#stx-getq__0 _key134414_ _stx134415_))
                        _g140091_))
                ((##fx= _g140090_ 3)
                 (apply (lambda (_key134419_ _stx134420_ _key=?134421_)
                          (gx#stx-getq__%
                           _key134419_
                           _stx134420_
                           _key=?134421_))
                        _g140091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140091_))))))))
