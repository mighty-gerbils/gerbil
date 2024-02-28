(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709125254)
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
      (lambda _$args81456_
        (apply make-instance gx#identifier-wrap::t _$args81456_)))
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
      (lambda _$args81453_
        (apply make-instance gx#syntax-wrap::t _$args81453_)))
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
      (lambda _$args81450_
        (apply make-instance gx#syntax-quote::t _$args81450_)))
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
      (lambda (_stx81448_) (symbol? (gx#stx-e _stx81448_))))
    (define gx#identifier-quote?
      (lambda (_stx81446_)
        (if (##structure-direct-instance-of? _stx81446_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81446_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81444_)
        (if (##structure-direct-instance-of? _stx81444_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81444_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81444_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81442_)
        (if (##structure-direct-instance-of? _stx81442_ 'gx#syntax-quote::t)
            _stx81442_
            (if (##structure-direct-instance-of? _stx81442_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81442_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81425_)
        (if (##structure-direct-instance-of? _stx81425_ 'gx#syntax-wrap::t)
            (let _lp81427_ ((_e81429_
                             (##unchecked-structure-ref
                              _stx81425_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81430_
                             (cons (##unchecked-structure-ref
                                    _stx81425_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81429_)
                  (let ((_$e81432_ (##type-id (##structure-type _e81429_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81432_)
                        (_lp81427_
                         (##unchecked-structure-ref _e81429_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81429_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81430_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81432_)
                                (eq? 'gx#identifier-wrap::t _$e81432_))
                            (##unchecked-structure-ref
                             _e81429_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81432_)
                                (_lp81427_
                                 (##unchecked-structure-ref
                                  _e81429_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81430_)
                                _e81429_))))
                  (if (null? _marks81430_)
                      _e81429_
                      (if (pair? _e81429_)
                          (cons (gx#stx-wrap (car _e81429_) _marks81430_)
                                (gx#stx-wrap (cdr _e81429_) _marks81430_))
                          (if (vector? _e81429_)
                              (vector-map
                               (lambda (_g8143781439_)
                                 (gx#stx-wrap _g8143781439_ _marks81430_))
                               _e81429_)
                              (if (box? _e81429_)
                                  (box (gx#stx-wrap
                                        (unbox _e81429_)
                                        _marks81430_))
                                  _e81429_))))))
            (if (##structure-instance-of? _stx81425_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81425_ '1 gx#AST::t '#f)
                _stx81425_))))
    (define gx#syntax->datum
      (lambda (_stx81423_)
        (if (##structure-instance-of? _stx81423_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81423_ '1 gx#AST::t '#f))
            (if (pair? _stx81423_)
                (cons (gx#syntax->datum (car _stx81423_))
                      (gx#syntax->datum (cdr _stx81423_)))
                (if (vector? _stx81423_)
                    (vector-map gx#syntax->datum _stx81423_)
                    (if (box? _stx81423_)
                        (box (gx#syntax->datum (unbox _stx81423_)))
                        _stx81423_))))))
    (define gx#datum->syntax__%
      (lambda (_stx81366_ _datum81367_ _src81368_ _quote?81369_)
        (letrec ((_wrap-datum81371_
                  (lambda (_e81395_ _marks81396_)
                    (_wrap-inner81373_
                     _e81395_
                     (lambda (_g8139781399_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8139781399_
                        _src81368_
                        _marks81396_)))))
                 (_wrap-quote81372_
                  (lambda (_e81387_ _ctx81388_ _marks81389_)
                    (_wrap-inner81373_
                     _e81387_
                     (lambda (_g8139081392_)
                       (##structure
                        gx#syntax-quote::t
                        _g8139081392_
                        _src81368_
                        _ctx81388_
                        _marks81389_)))))
                 (_wrap-inner81373_
                  (lambda (_e81380_ _wrap-e81381_)
                    (let _recur81383_ ((_e81385_ _e81380_))
                      (if (symbol? _e81385_)
                          (_wrap-e81381_ _e81385_)
                          (if (pair? _e81385_)
                              (cons (_recur81383_ (car _e81385_))
                                    (_recur81383_ (cdr _e81385_)))
                              (if (vector? _e81385_)
                                  (vector-map _recur81383_ _e81385_)
                                  (if (box? _e81385_)
                                      (box (_recur81383_ (unbox _e81385_)))
                                      _e81385_)))))))
                 (_wrap-outer81374_
                  (lambda (_e81378_)
                    (if (##structure-instance-of? _e81378_ 'gerbil#AST::t)
                        _e81378_
                        (##structure gx#AST::t _e81378_ _src81368_)))))
          (if (##structure-instance-of? _datum81367_ 'gerbil#AST::t)
              _datum81367_
              (if (not _stx81366_)
                  (##structure gx#AST::t _datum81367_ _src81368_)
                  (if (gx#identifier? _stx81366_)
                      (let ((_stx81376_ (gx#stx-unwrap__0 _stx81366_)))
                        (_wrap-outer81374_
                         (if (##structure-direct-instance-of?
                              _stx81376_
                              'gx#syntax-quote::t)
                             (if _quote?81369_
                                 (_wrap-quote81372_
                                  _datum81367_
                                  (##unchecked-structure-ref
                                   _stx81376_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx81376_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum81371_
                                  _datum81367_
                                  (##unchecked-structure-ref
                                   _stx81376_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum81371_
                              _datum81367_
                              (##unchecked-structure-ref
                               _stx81376_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx81366_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81405_ _datum81406_)
        (let* ((_src81408_ '#f) (_quote?81410_ '#t))
          (gx#datum->syntax__%
           _stx81405_
           _datum81406_
           _src81408_
           _quote?81410_))))
    (define gx#datum->syntax__1
      (lambda (_stx81412_ _datum81413_ _src81414_)
        (let ((_quote?81416_ '#t))
          (gx#datum->syntax__%
           _stx81412_
           _datum81413_
           _src81414_
           _quote?81416_))))
    (define gx#datum->syntax
      (lambda _g81537_
        (let ((_g81536_ (##length _g81537_)))
          (cond ((##fx= _g81536_ 2)
                 (apply (lambda (_stx81405_ _datum81406_)
                          (gx#datum->syntax__0 _stx81405_ _datum81406_))
                        _g81537_))
                ((##fx= _g81536_ 3)
                 (apply (lambda (_stx81412_ _datum81413_ _src81414_)
                          (gx#datum->syntax__1
                           _stx81412_
                           _datum81413_
                           _src81414_))
                        _g81537_))
                ((##fx= _g81536_ 4)
                 (apply (lambda (_stx81418_
                                 _datum81419_
                                 _src81420_
                                 _quote?81421_)
                          (gx#datum->syntax__%
                           _stx81418_
                           _datum81419_
                           _src81420_
                           _quote?81421_))
                        _g81537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81537_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx81342_ _marks81343_)
        (let _lp81345_ ((_e81347_ _stx81342_)
                        (_marks81348_ _marks81343_)
                        (_src81349_ (gx#stx-source _stx81342_)))
          (if (##structure-direct-instance-of? _e81347_ 'gx#syntax-wrap::t)
              (_lp81345_
               (##unchecked-structure-ref _e81347_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e81347_ '3 gx#syntax-wrap::t '#f)
                _marks81348_)
               (##unchecked-structure-ref _e81347_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e81347_
                   'gx#identifier-wrap::t)
                  (if (null? _marks81348_)
                      _e81347_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e81347_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e81347_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81347_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81348_)))
                  (if (##structure-direct-instance-of?
                       _e81347_
                       'gx#syntax-quote::t)
                      _e81347_
                      (if (##structure-instance-of? _e81347_ 'gerbil#AST::t)
                          (_lp81345_
                           (##unchecked-structure-ref
                            _e81347_
                            '1
                            gx#AST::t
                            '#f)
                           _marks81348_
                           (##unchecked-structure-ref
                            _e81347_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e81347_)
                              (##structure
                               gx#identifier-wrap::t
                               _e81347_
                               _src81349_
                               (reverse _marks81348_))
                              (if (null? _marks81348_)
                                  _e81347_
                                  (if (pair? _e81347_)
                                      (cons (gx#stx-wrap
                                             (car _e81347_)
                                             _marks81348_)
                                            (gx#stx-wrap
                                             (cdr _e81347_)
                                             _marks81348_))
                                      (if (vector? _e81347_)
                                          (vector-map
                                           (lambda (_g8135081352_)
                                             (gx#stx-wrap
                                              _g8135081352_
                                              _marks81348_))
                                           _e81347_)
                                          (if (box? _e81347_)
                                              (box (gx#stx-wrap
                                                    (unbox _e81347_)
                                                    _marks81348_))
                                              _e81347_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx81358_)
        (let ((_marks81360_ '())) (gx#stx-unwrap__% _stx81358_ _marks81360_))))
    (define gx#stx-unwrap
      (lambda _g81539_
        (let ((_g81538_ (##length _g81539_)))
          (cond ((##fx= _g81538_ 1)
                 (apply (lambda (_stx81358_) (gx#stx-unwrap__0 _stx81358_))
                        _g81539_))
                ((##fx= _g81538_ 2)
                 (apply (lambda (_stx81362_ _marks81363_)
                          (gx#stx-unwrap__% _stx81362_ _marks81363_))
                        _g81539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81539_))))))
    (define gx#stx-wrap
      (lambda (_stx81335_ _marks81336_)
        (foldl1 (lambda (_mark81338_ _stx81339_)
                  (gx#stx-apply-mark _stx81339_ _mark81338_))
                _stx81335_
                _marks81336_)))
    (define gx#stx-rewrap
      (lambda (_stx81329_ _marks81330_)
        (foldr1 (lambda (_mark81332_ _stx81333_)
                  (gx#stx-apply-mark _stx81333_ _mark81332_))
                _stx81329_
                _marks81330_)))
    (define gx#stx-apply-mark
      (lambda (_stx81326_ _mark81327_)
        (if (##structure-direct-instance-of? _stx81326_ 'gx#syntax-quote::t)
            _stx81326_
            (if (and (##structure-direct-instance-of?
                      _stx81326_
                      'gx#syntax-wrap::t)
                     (eq? _mark81327_
                          (##unchecked-structure-ref
                           _stx81326_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx81326_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx81326_
                 (gx#stx-source _stx81326_)
                 _mark81327_)))))
    (define gx#apply-mark
      (lambda (_mark81290_ _marks81291_)
        (let* ((_marks8129281300_ _marks81291_)
               (_else8129481308_ (lambda () (cons _mark81290_ _marks81291_)))
               (_K8129681314_
                (lambda (_rest81311_ _hd81312_)
                  (if (eq? _mark81290_ _hd81312_)
                      _rest81311_
                      (cons _mark81290_ _marks81291_)))))
          (if (##pair? _marks8129281300_)
              (let ((_hd8129781317_ (##car _marks8129281300_))
                    (_tl8129881319_ (##cdr _marks8129281300_)))
                (let* ((_hd81322_ _hd8129781317_) (_rest81324_ _tl8129881319_))
                  (_K8129681314_ _rest81324_ _hd81322_)))
              (_else8129481308_)))))
    (define gx#stx-e
      (lambda (_stx81288_)
        (if (##structure-direct-instance-of? _stx81288_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx81288_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx81288_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81288_ '1 gx#AST::t '#f)
                _stx81288_))))
    (define gx#stx-source
      (lambda (_stx81286_)
        (if (##structure-instance-of? _stx81286_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx81286_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx81280_ _src81281_)
        (if (or (##structure-instance-of? _stx81280_ 'gerbil#AST::t)
                (not _src81281_))
            _stx81280_
            (##structure gx#AST::t _stx81280_ _src81281_))))
    (define gx#stx-datum?
      (lambda (_stx81278_) (gx#self-quoting? (gx#stx-e _stx81278_))))
    (define gx#self-quoting?
      (lambda (_x81261_)
        (let ((_$e81263_ (immediate? _x81261_)))
          (if _$e81263_
              _$e81263_
              (let ((_$e81266_ (number? _x81261_)))
                (if _$e81266_
                    _$e81266_
                    (let ((_$e81269_ (keyword? _x81261_)))
                      (if _$e81269_
                          _$e81269_
                          (let ((_$e81272_ (string? _x81261_)))
                            (if _$e81272_
                                _$e81272_
                                (let ((_$e81275_ (vector? _x81261_)))
                                  (if _$e81275_
                                      _$e81275_
                                      (u8vector? _x81261_)))))))))))))
    (define gx#stx-boolean? (lambda (_e81259_) (boolean? (gx#stx-e _e81259_))))
    (define gx#stx-keyword? (lambda (_e81257_) (keyword? (gx#stx-e _e81257_))))
    (define gx#stx-char? (lambda (_e81255_) (char? (gx#stx-e _e81255_))))
    (define gx#stx-number? (lambda (_e81253_) (number? (gx#stx-e _e81253_))))
    (define gx#stx-fixnum? (lambda (_e81251_) (fixnum? (gx#stx-e _e81251_))))
    (define gx#stx-string? (lambda (_e81249_) (string? (gx#stx-e _e81249_))))
    (define gx#stx-null? (lambda (_e81247_) (null? (gx#stx-e _e81247_))))
    (define gx#stx-pair? (lambda (_e81245_) (pair? (gx#stx-e _e81245_))))
    (define gx#stx-list?
      (lambda (_e81207_)
        (let* ((_g8120881217_ (gx#stx-e _e81207_))
               (_E8121181221_
                (lambda () (error '"No clause matching" _g8120881217_))))
          (let ((_K8121381237_
                 (lambda (_rest81235_) (gx#stx-list? _rest81235_)))
                (_K8121281227_ (lambda (_tail81225_) (null? _tail81225_))))
            (if (##pair? _g8120881217_)
                (let* ((_tl8121581240_ (##cdr _g8120881217_))
                       (_rest81243_ _tl8121581240_))
                  (gx#stx-list? _rest81243_))
                (let ((_tail81230_ _g8120881217_)) (null? _tail81230_)))))))
    (define gx#stx-pair/null?
      (lambda (_e81200_)
        (let* ((_e81202_ (gx#stx-e _e81200_)) (_$e81204_ (pair? _e81202_)))
          (if _$e81204_ _$e81204_ (null? _e81202_)))))
    (define gx#stx-vector? (lambda (_e81198_) (vector? (gx#stx-e _e81198_))))
    (define gx#stx-box? (lambda (_e81196_) (box? (gx#stx-e _e81196_))))
    (define gx#stx-eq?
      (lambda (_x81193_ _y81194_)
        (eq? (gx#stx-e _x81193_) (gx#stx-e _y81194_))))
    (define gx#stx-eqv?
      (lambda (_x81190_ _y81191_)
        (eqv? (gx#stx-e _x81190_) (gx#stx-e _y81191_))))
    (define gx#stx-equal?
      (lambda (_x81187_ _y81188_)
        (equal? (gx#stx-e _x81187_) (gx#stx-e _y81188_))))
    (define gx#stx-false? (lambda (_x81185_) (not (gx#stx-e _x81185_))))
    (define gx#stx-identifier
      (lambda (_template81182_ . _args81183_)
        (gx#datum->syntax__1
         _template81182_
         (apply make-symbol (gx#syntax->datum _args81183_))
         (gx#stx-source _template81182_))))
    (define gx#stx-identifier-marks
      (lambda (_stx81180_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx81180_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx81178_)
        (if (##structure-direct-instance-of? _stx81178_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx81178_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx81178_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx81178_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx81178_)))))
    (define gx#stx-identifier-context
      (lambda (_stx81174_)
        (let ((_stx81176_ (gx#stx-unwrap__0 _stx81174_)))
          (if (gx#identifier-quote? _stx81176_)
              (##unchecked-structure-ref _stx81176_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx81129_)
        (let* ((_g8113081140_ (gx#stx-e _stx81129_))
               (_else8113381148_ (lambda () '#f)))
          (let ((_K8113681162_
                 (lambda (_rest81159_ _hd81160_)
                   (if (gx#identifier? _hd81160_)
                       (gx#identifier-list? _rest81159_)
                       '#f)))
                (_K8113581153_ (lambda () '#t)))
            (let ((_try-match8113281156_
                   (lambda ()
                     (if (##null? _g8113081140_)
                         (_K8113581153_)
                         (_else8113381148_)))))
              (if (##pair? _g8113081140_)
                  (let ((_tl8113881167_ (##cdr _g8113081140_))
                        (_hd8113781165_ (##car _g8113081140_)))
                    (let ((_hd81170_ _hd8113781165_)
                          (_rest81172_ _tl8113881167_))
                      (_K8113681162_ _rest81172_ _hd81170_)))
                  (_try-match8113281156_)))))))
    (define gx#genident__%
      (lambda (_e81106_ _src81107_)
        (gx#stx-wrap-source
         (gensym (let ((_e81109_ (gx#stx-e _e81106_)))
                   (if (interned-symbol? _e81109_) _e81109_ 'g)))
         (let ((_$e81111_ (gx#stx-source _e81106_)))
           (if _$e81111_ _$e81111_ _src81107_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e81118_ 'g) (_src81120_ '#f))
          (gx#genident__% _e81118_ _src81120_))))
    (define gx#genident__1
      (lambda (_e81122_)
        (let ((_src81124_ '#f)) (gx#genident__% _e81122_ _src81124_))))
    (define gx#genident
      (lambda _g81541_
        (let ((_g81540_ (##length _g81541_)))
          (cond ((##fx= _g81540_ 0)
                 (apply (lambda () (gx#genident__0)) _g81541_))
                ((##fx= _g81540_ 1)
                 (apply (lambda (_e81122_) (gx#genident__1 _e81122_))
                        _g81541_))
                ((##fx= _g81540_ 2)
                 (apply (lambda (_e81126_ _src81127_)
                          (gx#genident__% _e81126_ _src81127_))
                        _g81541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81541_))))))
    (define gx#gentemps
      (lambda (_stx-lst81103_) (gx#stx-map1 gx#genident _stx-lst81103_)))
    (define gx#syntax->list
      (lambda (_stx81101_) (gx#stx-map1 values _stx81101_)))
    (define gx#stx-car
      (lambda (_stx81098_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx81098_)))))
    (define gx#stx-cdr
      (lambda (_stx81095_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx81095_)))))
    (define gx#stx-length
      (lambda (_stx81060_)
        (let _lp81062_ ((_rest81064_ _stx81060_) (_n81065_ '0))
          (let* ((_g8106681074_ (gx#stx-e _rest81064_))
                 (_else8106881082_ (lambda () _n81065_))
                 (_K8107081087_
                  (lambda (_rest81085_)
                    (_lp81062_ _rest81085_ (fx+ _n81065_ '1)))))
            (if (##pair? _g8106681074_)
                (let* ((_tl8107281090_ (##cdr _g8106681074_))
                       (_rest81093_ _tl8107281090_))
                  (_K8107081087_ _rest81093_))
                (_else8106881082_))))))
    (define gx#stx-for-each
      (lambda _g81543_
        (let ((_g81542_ (##length _g81543_)))
          (cond ((##fx= _g81542_ 2)
                 (apply (lambda (_f81053_ _stx81054_)
                          (gx#stx-for-each1 _f81053_ _stx81054_))
                        _g81543_))
                ((##fx= _g81542_ 3)
                 (apply (lambda (_f81056_ _xstx81057_ _ystx81058_)
                          (gx#stx-for-each2 _f81056_ _xstx81057_ _ystx81058_))
                        _g81543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81543_))))))
    (define gx#stx-for-each1
      (lambda (_f81003_ _stx81004_)
        (if (procedure? _f81003_)
            '#!void
            (error '"expected procedure" _f81003_))
        (let _lp81006_ ((_rest81008_ _stx81004_))
          (let* ((_g8100981019_ (gx#syntax-e _rest81008_))
                 (_else8101281027_ (lambda () (_f81003_ _rest81008_))))
            (let ((_K8101581041_
                   (lambda (_rest81038_ _hd81039_)
                     (_f81003_ _hd81039_)
                     (_lp81006_ _rest81038_)))
                  (_K8101481032_ (lambda () '#!void)))
              (let ((_try-match8101181035_
                     (lambda ()
                       (if (##null? _g8100981019_)
                           (_K8101481032_)
                           (_else8101281027_)))))
                (if (##pair? _g8100981019_)
                    (let ((_tl8101781046_ (##cdr _g8100981019_))
                          (_hd8101681044_ (##car _g8100981019_)))
                      (let ((_hd81049_ _hd8101681044_)
                            (_rest81051_ _tl8101781046_))
                        (_K8101581041_ _rest81051_ _hd81049_)))
                    (_try-match8101181035_))))))))
    (define gx#stx-for-each2
      (lambda (_f80908_ _xstx80909_ _ystx80910_)
        (if (procedure? _f80908_)
            '#!void
            (error '"expected procedure" _f80908_))
        (let _lp80912_ ((_xrest80914_ _xstx80909_) (_yrest80915_ _ystx80910_))
          (let* ((_g8091680926_ (gx#syntax-e _xrest80914_))
                 (_else8091980934_ (lambda () '#!void)))
            (let ((_K8092280991_
                   (lambda (_xrest80960_ _xhd80961_)
                     (let* ((_g8096280969_ (gx#syntax-e _yrest80915_))
                            (_E8096480973_
                             (lambda ()
                               (error '"No clause matching" _g8096280969_)))
                            (_K8096580979_
                             (lambda (_yrest80976_ _yhd80977_)
                               (_f80908_ _xhd80961_ _yhd80977_)
                               (_lp80912_ _xrest80960_ _yrest80976_))))
                       (if (##pair? _g8096280969_)
                           (let ((_hd8096680982_ (##car _g8096280969_))
                                 (_tl8096780984_ (##cdr _g8096280969_)))
                             (let* ((_yhd80987_ _hd8096680982_)
                                    (_yrest80989_ _tl8096780984_))
                               (_K8096580979_ _yrest80989_ _yhd80987_)))
                           (_E8096480973_)))))
                  (_K8092180954_
                   (lambda ()
                     (let* ((_yrest8093880943_ _yrest80915_)
                            (_E8094080947_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8093880943_)))
                            (_K8094180951_
                             (lambda () (_f80908_ _xrest80914_ _yrest80915_))))
                       (if (not (gx#stx-null? _yrest8093880943_))
                           (_K8094180951_)
                           (_E8094080947_))))))
              (let ((_try-match8091880957_
                     (lambda ()
                       (if (not (null? _g8091680926_))
                           (_K8092180954_)
                           (_else8091980934_)))))
                (if (##pair? _g8091680926_)
                    (let ((_tl8092480996_ (##cdr _g8091680926_))
                          (_hd8092380994_ (##car _g8091680926_)))
                      (let ((_xhd80999_ _hd8092380994_)
                            (_xrest81001_ _tl8092480996_))
                        (_K8092280991_ _xrest81001_ _xhd80999_)))
                    (_try-match8091880957_))))))))
    (define gx#stx-map
      (lambda _g81545_
        (let ((_g81544_ (##length _g81545_)))
          (cond ((##fx= _g81544_ 2)
                 (apply (lambda (_f80901_ _stx80902_)
                          (gx#stx-map1 _f80901_ _stx80902_))
                        _g81545_))
                ((##fx= _g81544_ 3)
                 (apply (lambda (_f80904_ _xstx80905_ _ystx80906_)
                          (gx#stx-map2 _f80904_ _xstx80905_ _ystx80906_))
                        _g81545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81545_))))))
    (define gx#stx-map1
      (lambda (_f80851_ _stx80852_)
        (if (procedure? _f80851_)
            '#!void
            (error '"expected procedure" _f80851_))
        (let _recur80854_ ((_rest80856_ _stx80852_))
          (let* ((_g8085780867_ (gx#syntax-e _rest80856_))
                 (_else8086080875_ (lambda () (_f80851_ _rest80856_))))
            (let ((_K8086380889_
                   (lambda (_rest80886_ _hd80887_)
                     (cons (_f80851_ _hd80887_) (_recur80854_ _rest80886_))))
                  (_K8086280880_ (lambda () '())))
              (let ((_try-match8085980883_
                     (lambda ()
                       (if (##null? _g8085780867_)
                           (_K8086280880_)
                           (_else8086080875_)))))
                (if (##pair? _g8085780867_)
                    (let ((_tl8086580894_ (##cdr _g8085780867_))
                          (_hd8086480892_ (##car _g8085780867_)))
                      (let ((_hd80897_ _hd8086480892_)
                            (_rest80899_ _tl8086580894_))
                        (_K8086380889_ _rest80899_ _hd80897_)))
                    (_try-match8085980883_))))))))
    (define gx#stx-map2
      (lambda (_f80756_ _xstx80757_ _ystx80758_)
        (if (procedure? _f80756_)
            '#!void
            (error '"expected procedure" _f80756_))
        (let _recur80760_ ((_xrest80762_ _xstx80757_)
                           (_yrest80763_ _ystx80758_))
          (let* ((_g8076480774_ (gx#syntax-e _xrest80762_))
                 (_else8076780782_ (lambda () '())))
            (let ((_K8077080839_
                   (lambda (_xrest80808_ _xhd80809_)
                     (let* ((_g8081080817_ (gx#syntax-e _yrest80763_))
                            (_E8081280821_
                             (lambda ()
                               (error '"No clause matching" _g8081080817_)))
                            (_K8081380827_
                             (lambda (_yrest80824_ _yhd80825_)
                               (cons (_f80756_ _xhd80809_ _yhd80825_)
                                     (_recur80760_
                                      _xrest80808_
                                      _yrest80824_)))))
                       (if (##pair? _g8081080817_)
                           (let ((_hd8081480830_ (##car _g8081080817_))
                                 (_tl8081580832_ (##cdr _g8081080817_)))
                             (let* ((_yhd80835_ _hd8081480830_)
                                    (_yrest80837_ _tl8081580832_))
                               (_K8081380827_ _yrest80837_ _yhd80835_)))
                           (_E8081280821_)))))
                  (_K8076980802_
                   (lambda ()
                     (let* ((_yrest8078680791_ _yrest80763_)
                            (_E8078880795_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8078680791_)))
                            (_K8078980799_
                             (lambda () (_f80756_ _xrest80762_ _yrest80763_))))
                       (if (not (gx#stx-null? _yrest8078680791_))
                           (_K8078980799_)
                           (_E8078880795_))))))
              (let ((_try-match8076680805_
                     (lambda ()
                       (if (not (null? _g8076480774_))
                           (_K8076980802_)
                           (_else8076780782_)))))
                (if (##pair? _g8076480774_)
                    (let ((_tl8077280844_ (##cdr _g8076480774_))
                          (_hd8077180842_ (##car _g8076480774_)))
                      (let ((_xhd80847_ _hd8077180842_)
                            (_xrest80849_ _tl8077280844_))
                        (_K8077080839_ _xrest80849_ _xhd80847_)))
                    (_try-match8076680805_))))))))
    (define gx#stx-andmap
      (lambda (_f80706_ _stx80707_)
        (if (procedure? _f80706_)
            '#!void
            (error '"expected procedure" _f80706_))
        (let _lp80709_ ((_rest80711_ _stx80707_))
          (let* ((_g8071280722_ (gx#syntax-e _rest80711_))
                 (_else8071580730_ (lambda () (_f80706_ _rest80711_))))
            (let ((_K8071880744_
                   (lambda (_rest80741_ _hd80742_)
                     (if (_f80706_ _hd80742_) (_lp80709_ _rest80741_) '#f)))
                  (_K8071780735_ (lambda () '#t)))
              (let ((_try-match8071480738_
                     (lambda ()
                       (if (##null? _g8071280722_)
                           (_K8071780735_)
                           (_else8071580730_)))))
                (if (##pair? _g8071280722_)
                    (let ((_tl8072080749_ (##cdr _g8071280722_))
                          (_hd8071980747_ (##car _g8071280722_)))
                      (let ((_hd80752_ _hd8071980747_)
                            (_rest80754_ _tl8072080749_))
                        (_K8071880744_ _rest80754_ _hd80752_)))
                    (_try-match8071480738_))))))))
    (define gx#stx-ormap
      (lambda (_f80653_ _stx80654_)
        (if (procedure? _f80653_)
            '#!void
            (error '"expected procedure" _f80653_))
        (let _lp80656_ ((_rest80658_ _stx80654_))
          (let* ((_g8065980669_ (gx#syntax-e _rest80658_))
                 (_else8066280677_ (lambda () (_f80653_ _rest80658_))))
            (let ((_K8066580694_
                   (lambda (_rest80688_ _hd80689_)
                     (let ((_$e80691_ (_f80653_ _hd80689_)))
                       (if _$e80691_ _$e80691_ (_lp80656_ _rest80688_)))))
                  (_K8066480682_ (lambda () '#f)))
              (let ((_try-match8066180685_
                     (lambda ()
                       (if (##null? _g8065980669_)
                           (_K8066480682_)
                           (_else8066280677_)))))
                (if (##pair? _g8065980669_)
                    (let ((_tl8066780699_ (##cdr _g8065980669_))
                          (_hd8066680697_ (##car _g8065980669_)))
                      (let ((_hd80702_ _hd8066680697_)
                            (_rest80704_ _tl8066780699_))
                        (_K8066580694_ _rest80704_ _hd80702_)))
                    (_try-match8066180685_))))))))
    (define gx#stx-foldl
      (lambda (_f80601_ _iv80602_ _stx80603_)
        (if (procedure? _f80601_)
            '#!void
            (error '"expected procedure" _f80601_))
        (let _lp80605_ ((_r80607_ _iv80602_) (_rest80608_ _stx80603_))
          (let* ((_g8060980619_ (gx#syntax-e _rest80608_))
                 (_else8061280627_
                  (lambda () (_f80601_ _rest80608_ _r80607_))))
            (let ((_K8061580641_
                   (lambda (_rest80638_ _hd80639_)
                     (_lp80605_ (_f80601_ _hd80639_ _r80607_) _rest80638_)))
                  (_K8061480632_ (lambda () _r80607_)))
              (let ((_try-match8061180635_
                     (lambda ()
                       (if (##null? _g8060980619_)
                           (_K8061480632_)
                           (_else8061280627_)))))
                (if (##pair? _g8060980619_)
                    (let ((_tl8061780646_ (##cdr _g8060980619_))
                          (_hd8061680644_ (##car _g8060980619_)))
                      (let ((_hd80649_ _hd8061680644_)
                            (_rest80651_ _tl8061780646_))
                        (_K8061580641_ _rest80651_ _hd80649_)))
                    (_try-match8061180635_))))))))
    (define gx#stx-foldr
      (lambda (_f80550_ _iv80551_ _stx80552_)
        (if (procedure? _f80550_)
            '#!void
            (error '"expected procedure" _f80550_))
        (let _recur80554_ ((_rest80556_ _stx80552_))
          (let* ((_g8055780567_ (gx#syntax-e _rest80556_))
                 (_else8056080575_
                  (lambda () (_f80550_ _rest80556_ _iv80551_))))
            (let ((_K8056380589_
                   (lambda (_rest80586_ _hd80587_)
                     (_f80550_ _hd80587_ (_recur80554_ _rest80586_))))
                  (_K8056280580_ (lambda () _iv80551_)))
              (let ((_try-match8055980583_
                     (lambda ()
                       (if (##null? _g8055780567_)
                           (_K8056280580_)
                           (_else8056080575_)))))
                (if (##pair? _g8055780567_)
                    (let ((_tl8056580594_ (##cdr _g8055780567_))
                          (_hd8056480592_ (##car _g8055780567_)))
                      (let ((_hd80597_ _hd8056480592_)
                            (_rest80599_ _tl8056580594_))
                        (_K8056380589_ _rest80599_ _hd80597_)))
                    (_try-match8055980583_))))))))
    (define gx#stx-reverse
      (lambda (_stx80548_) (gx#stx-foldl cons '() _stx80548_)))
    (define gx#stx-last
      (lambda (_stx80509_)
        (let _lp80511_ ((_rest80513_ _stx80509_))
          (let* ((_g8051480522_ (gx#syntax-e _rest80513_))
                 (_else8051680530_ (lambda () _rest80513_))
                 (_K8051880536_
                  (lambda (_rest80533_ _hd80534_)
                    (if (gx#stx-null? _rest80533_)
                        _hd80534_
                        (_lp80511_ _rest80533_)))))
            (if (##pair? _g8051480522_)
                (let ((_hd8051980539_ (##car _g8051480522_))
                      (_tl8052080541_ (##cdr _g8051480522_)))
                  (let* ((_hd80544_ _hd8051980539_)
                         (_rest80546_ _tl8052080541_))
                    (_K8051880536_ _rest80546_ _hd80544_)))
                (_else8051680530_))))))
    (define gx#stx-last-pair
      (lambda (_stx80480_)
        (let _lp80482_ ((_hd80484_ _stx80480_))
          (let* ((_g8048580492_ (gx#syntax-e _hd80484_))
                 (_E8048780496_
                  (lambda () (error '"No clause matching" _g8048580492_)))
                 (_K8048880501_
                  (lambda (_rest80499_)
                    (if (gx#stx-pair? _rest80499_)
                        (_lp80482_ _rest80499_)
                        _hd80484_))))
            (if (##pair? _g8048580492_)
                (let* ((_tl8049080504_ (##cdr _g8048580492_))
                       (_rest80507_ _tl8049080504_))
                  (_K8048880501_ _rest80507_))
                (_E8048780496_))))))
    (define gx#stx-list-tail
      (lambda (_stx80449_ _k80450_)
        (let _lp80452_ ((_rest80454_ _stx80449_) (_k80455_ _k80450_))
          (if (fxpositive? _k80455_)
              (let* ((_g8045680463_ (gx#syntax-e _rest80454_))
                     (_E8045880467_
                      (lambda () (error '"No clause matching" _g8045680463_)))
                     (_K8045980472_
                      (lambda (_rest80470_)
                        (_lp80452_ _rest80470_ (fx- _k80455_ '1)))))
                (if (##pair? _g8045680463_)
                    (let* ((_tl8046180475_ (##cdr _g8045680463_))
                           (_rest80478_ _tl8046180475_))
                      (_K8045980472_ _rest80478_))
                    (_E8045880467_)))
              _rest80454_))))
    (define gx#stx-list-ref
      (lambda (_stx80446_ _k80447_)
        (gx#stx-car (gx#stx-list-tail _stx80446_ _k80447_))))
    (define gx#stx-plist?__%
      (lambda (_stx80358_ _key?80359_)
        (if (procedure? _key?80359_)
            '#!void
            (error '"expected procedure" _key?80359_))
        (let _lp80361_ ((_rest80363_ _stx80358_))
          (let* ((_g8036480374_ (gx#stx-e _rest80363_))
                 (_else8036780382_ (lambda () '#f)))
            (let ((_K8037080424_
                   (lambda (_rest80393_ _hd80394_)
                     (if (_key?80359_ _hd80394_)
                         (let* ((_g8039580403_ (gx#stx-e _rest80393_))
                                (_else8039780411_ (lambda () '#f))
                                (_K8039980416_
                                 (lambda (_rest80414_)
                                   (_lp80361_ _rest80414_))))
                           (if (##pair? _g8039580403_)
                               (let* ((_tl8040180419_ (##cdr _g8039580403_))
                                      (_rest80422_ _tl8040180419_))
                                 (_lp80361_ _rest80422_))
                               (_else8039780411_)))
                         '#f)))
                  (_K8036980387_ (lambda () '#t)))
              (let ((_try-match8036680390_
                     (lambda ()
                       (if (##null? _g8036480374_)
                           (_K8036980387_)
                           (_else8036780382_)))))
                (if (##pair? _g8036480374_)
                    (let ((_tl8037280429_ (##cdr _g8036480374_))
                          (_hd8037180427_ (##car _g8036480374_)))
                      (let ((_hd80432_ _hd8037180427_)
                            (_rest80434_ _tl8037280429_))
                        (_K8037080424_ _rest80434_ _hd80432_)))
                    (_try-match8036680390_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80439_)
        (let ((_key?80441_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80439_ _key?80441_))))
    (define gx#stx-plist?
      (lambda _g81547_
        (let ((_g81546_ (##length _g81547_)))
          (cond ((##fx= _g81546_ 1)
                 (apply (lambda (_stx80439_) (gx#stx-plist?__0 _stx80439_))
                        _g81547_))
                ((##fx= _g81546_ 2)
                 (apply (lambda (_stx80443_ _key?80444_)
                          (gx#stx-plist?__% _stx80443_ _key?80444_))
                        _g81547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81547_))))))
    (define gx#stx-getq__%
      (lambda (_key80276_ _stx80277_ _key=?80278_)
        (if (procedure? _key=?80278_)
            '#!void
            (error '"expected procedure" _key=?80278_))
        (let _lp80280_ ((_rest80282_ _stx80277_))
          (let* ((_g8028380291_ (gx#syntax-e _rest80282_))
                 (_else8028580299_ (lambda () '#f))
                 (_K8028780333_
                  (lambda (_rest80302_ _hd80303_)
                    (let* ((_g8030480311_ (gx#syntax-e _rest80302_))
                           (_E8030680315_
                            (lambda ()
                              (error '"No clause matching" _g8030480311_)))
                           (_K8030780321_
                            (lambda (_rest80318_ _val80319_)
                              (if (_key=?80278_ _hd80303_ _key80276_)
                                  _val80319_
                                  (_lp80280_ _rest80318_)))))
                      (if (##pair? _g8030480311_)
                          (let ((_hd8030880324_ (##car _g8030480311_))
                                (_tl8030980326_ (##cdr _g8030480311_)))
                            (let* ((_val80329_ _hd8030880324_)
                                   (_rest80331_ _tl8030980326_))
                              (_K8030780321_ _rest80331_ _val80329_)))
                          (_E8030680315_))))))
            (if (##pair? _g8028380291_)
                (let ((_hd8028880336_ (##car _g8028380291_))
                      (_tl8028980338_ (##cdr _g8028380291_)))
                  (let* ((_hd80341_ _hd8028880336_)
                         (_rest80343_ _tl8028980338_))
                    (_K8028780333_ _rest80343_ _hd80341_)))
                (_else8028580299_))))))
    (define gx#stx-getq__0
      (lambda (_key80348_ _stx80349_)
        (let ((_key=?80351_ gx#stx-eq?))
          (gx#stx-getq__% _key80348_ _stx80349_ _key=?80351_))))
    (define gx#stx-getq
      (lambda _g81549_
        (let ((_g81548_ (##length _g81549_)))
          (cond ((##fx= _g81548_ 2)
                 (apply (lambda (_key80348_ _stx80349_)
                          (gx#stx-getq__0 _key80348_ _stx80349_))
                        _g81549_))
                ((##fx= _g81548_ 3)
                 (apply (lambda (_key80353_ _stx80354_ _key=?80355_)
                          (gx#stx-getq__% _key80353_ _stx80354_ _key=?80355_))
                        _g81549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81549_))))))))
