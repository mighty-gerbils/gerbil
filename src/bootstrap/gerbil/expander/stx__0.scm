(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707657570)
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
      (lambda _$args135474_
        (apply make-class-instance gx#identifier-wrap::t _$args135474_)))
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
      (lambda _$args135471_
        (apply make-class-instance gx#syntax-wrap::t _$args135471_)))
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
      (lambda _$args135468_
        (apply make-class-instance gx#syntax-quote::t _$args135468_)))
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
      (lambda (_stx135466_) (symbol? (gx#stx-e _stx135466_))))
    (define gx#identifier-quote?
      (lambda (_stx135464_)
        (if (##structure-direct-instance-of? _stx135464_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx135464_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx135462_)
        (if (##structure-direct-instance-of? _stx135462_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx135462_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx135462_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx135460_)
        (if (##structure-direct-instance-of? _stx135460_ 'gx#syntax-quote::t)
            _stx135460_
            (if (##structure-direct-instance-of?
                 _stx135460_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx135460_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx135443_)
        (if (##structure-direct-instance-of? _stx135443_ 'gx#syntax-wrap::t)
            (let _lp135445_ ((_e135447_
                              (##unchecked-structure-ref
                               _stx135443_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks135448_
                              (cons (##unchecked-structure-ref
                                     _stx135443_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e135447_)
                  (let ((_$e135450_ (##type-id (##structure-type _e135447_))))
                    (if (eq? 'gx#syntax-wrap::t _$e135450_)
                        (_lp135445_
                         (##unchecked-structure-ref _e135447_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e135447_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks135448_))
                        (if (or (eq? 'gx#syntax-quote::t _$e135450_)
                                (eq? 'gx#identifier-wrap::t _$e135450_))
                            (##unchecked-structure-ref
                             _e135447_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e135450_)
                                (_lp135445_
                                 (##unchecked-structure-ref
                                  _e135447_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks135448_)
                                _e135447_))))
                  (if (null? _marks135448_)
                      _e135447_
                      (if (pair? _e135447_)
                          (cons (gx#stx-wrap (car _e135447_) _marks135448_)
                                (gx#stx-wrap (cdr _e135447_) _marks135448_))
                          (if (vector? _e135447_)
                              (vector-map
                               (lambda (_g135455135457_)
                                 (gx#stx-wrap _g135455135457_ _marks135448_))
                               _e135447_)
                              (if (box? _e135447_)
                                  (box (gx#stx-wrap
                                        (unbox _e135447_)
                                        _marks135448_))
                                  _e135447_))))))
            (if (##structure-instance-of? _stx135443_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135443_ '1 gx#AST::t '#f)
                _stx135443_))))
    (define gx#syntax->datum
      (lambda (_stx135441_)
        (if (##structure-instance-of? _stx135441_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx135441_ '1 gx#AST::t '#f))
            (if (pair? _stx135441_)
                (cons (gx#syntax->datum (car _stx135441_))
                      (gx#syntax->datum (cdr _stx135441_)))
                (if (vector? _stx135441_)
                    (vector-map gx#syntax->datum _stx135441_)
                    (if (box? _stx135441_)
                        (box (gx#syntax->datum (unbox _stx135441_)))
                        _stx135441_))))))
    (define gx#datum->syntax__%
      (lambda (_stx135384_ _datum135385_ _src135386_ _quote?135387_)
        (letrec ((_wrap-datum135389_
                  (lambda (_e135413_ _marks135414_)
                    (_wrap-inner135391_
                     _e135413_
                     (lambda (_g135415135417_)
                       (##structure
                        gx#identifier-wrap::t
                        _g135415135417_
                        _src135386_
                        _marks135414_)))))
                 (_wrap-quote135390_
                  (lambda (_e135405_ _ctx135406_ _marks135407_)
                    (_wrap-inner135391_
                     _e135405_
                     (lambda (_g135408135410_)
                       (##structure
                        gx#syntax-quote::t
                        _g135408135410_
                        _src135386_
                        _ctx135406_
                        _marks135407_)))))
                 (_wrap-inner135391_
                  (lambda (_e135398_ _wrap-e135399_)
                    (let _recur135401_ ((_e135403_ _e135398_))
                      (if (symbol? _e135403_)
                          (_wrap-e135399_ _e135403_)
                          (if (pair? _e135403_)
                              (cons (_recur135401_ (car _e135403_))
                                    (_recur135401_ (cdr _e135403_)))
                              (if (vector? _e135403_)
                                  (vector-map _recur135401_ _e135403_)
                                  (if (box? _e135403_)
                                      (box (_recur135401_ (unbox _e135403_)))
                                      _e135403_)))))))
                 (_wrap-outer135392_
                  (lambda (_e135396_)
                    (if (##structure-instance-of? _e135396_ 'gerbil#AST::t)
                        _e135396_
                        (##structure gx#AST::t _e135396_ _src135386_)))))
          (if (##structure-instance-of? _datum135385_ 'gerbil#AST::t)
              _datum135385_
              (if (not _stx135384_)
                  (##structure gx#AST::t _datum135385_ _src135386_)
                  (if (gx#identifier? _stx135384_)
                      (let ((_stx135394_ (gx#stx-unwrap__0 _stx135384_)))
                        (_wrap-outer135392_
                         (if (##structure-direct-instance-of?
                              _stx135394_
                              'gx#syntax-quote::t)
                             (if _quote?135387_
                                 (_wrap-quote135390_
                                  _datum135385_
                                  (##unchecked-structure-ref
                                   _stx135394_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx135394_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum135389_
                                  _datum135385_
                                  (##unchecked-structure-ref
                                   _stx135394_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum135389_
                              _datum135385_
                              (##unchecked-structure-ref
                               _stx135394_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx135384_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx135423_ _datum135424_)
        (let* ((_src135426_ '#f) (_quote?135428_ '#t))
          (gx#datum->syntax__%
           _stx135423_
           _datum135424_
           _src135426_
           _quote?135428_))))
    (define gx#datum->syntax__1
      (lambda (_stx135430_ _datum135431_ _src135432_)
        (let ((_quote?135434_ '#t))
          (gx#datum->syntax__%
           _stx135430_
           _datum135431_
           _src135432_
           _quote?135434_))))
    (define gx#datum->syntax
      (lambda _g140023_
        (let ((_g140022_ (##length _g140023_)))
          (cond ((##fx= _g140022_ 2)
                 (apply (lambda (_stx135423_ _datum135424_)
                          (gx#datum->syntax__0 _stx135423_ _datum135424_))
                        _g140023_))
                ((##fx= _g140022_ 3)
                 (apply (lambda (_stx135430_ _datum135431_ _src135432_)
                          (gx#datum->syntax__1
                           _stx135430_
                           _datum135431_
                           _src135432_))
                        _g140023_))
                ((##fx= _g140022_ 4)
                 (apply (lambda (_stx135436_
                                 _datum135437_
                                 _src135438_
                                 _quote?135439_)
                          (gx#datum->syntax__%
                           _stx135436_
                           _datum135437_
                           _src135438_
                           _quote?135439_))
                        _g140023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140023_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx135360_ _marks135361_)
        (let _lp135363_ ((_e135365_ _stx135360_)
                         (_marks135366_ _marks135361_)
                         (_src135367_ (gx#stx-source _stx135360_)))
          (if (##structure-direct-instance-of? _e135365_ 'gx#syntax-wrap::t)
              (_lp135363_
               (##unchecked-structure-ref _e135365_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e135365_ '3 gx#syntax-wrap::t '#f)
                _marks135366_)
               (##unchecked-structure-ref _e135365_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e135365_
                   'gx#identifier-wrap::t)
                  (if (null? _marks135366_)
                      _e135365_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e135365_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e135365_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e135365_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks135366_)))
                  (if (##structure-direct-instance-of?
                       _e135365_
                       'gx#syntax-quote::t)
                      _e135365_
                      (if (##structure-instance-of? _e135365_ 'gerbil#AST::t)
                          (_lp135363_
                           (##unchecked-structure-ref
                            _e135365_
                            '1
                            gx#AST::t
                            '#f)
                           _marks135366_
                           (##unchecked-structure-ref
                            _e135365_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e135365_)
                              (##structure
                               gx#identifier-wrap::t
                               _e135365_
                               _src135367_
                               (reverse _marks135366_))
                              (if (null? _marks135366_)
                                  _e135365_
                                  (if (pair? _e135365_)
                                      (cons (gx#stx-wrap
                                             (car _e135365_)
                                             _marks135366_)
                                            (gx#stx-wrap
                                             (cdr _e135365_)
                                             _marks135366_))
                                      (if (vector? _e135365_)
                                          (vector-map
                                           (lambda (_g135368135370_)
                                             (gx#stx-wrap
                                              _g135368135370_
                                              _marks135366_))
                                           _e135365_)
                                          (if (box? _e135365_)
                                              (box (gx#stx-wrap
                                                    (unbox _e135365_)
                                                    _marks135366_))
                                              _e135365_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx135376_)
        (let ((_marks135378_ '()))
          (gx#stx-unwrap__% _stx135376_ _marks135378_))))
    (define gx#stx-unwrap
      (lambda _g140025_
        (let ((_g140024_ (##length _g140025_)))
          (cond ((##fx= _g140024_ 1)
                 (apply (lambda (_stx135376_) (gx#stx-unwrap__0 _stx135376_))
                        _g140025_))
                ((##fx= _g140024_ 2)
                 (apply (lambda (_stx135380_ _marks135381_)
                          (gx#stx-unwrap__% _stx135380_ _marks135381_))
                        _g140025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140025_))))))
    (define gx#stx-wrap
      (lambda (_stx135353_ _marks135354_)
        (foldl1 (lambda (_mark135356_ _stx135357_)
                  (gx#stx-apply-mark _stx135357_ _mark135356_))
                _stx135353_
                _marks135354_)))
    (define gx#stx-rewrap
      (lambda (_stx135347_ _marks135348_)
        (foldr1 (lambda (_mark135350_ _stx135351_)
                  (gx#stx-apply-mark _stx135351_ _mark135350_))
                _stx135347_
                _marks135348_)))
    (define gx#stx-apply-mark
      (lambda (_stx135344_ _mark135345_)
        (if (##structure-direct-instance-of? _stx135344_ 'gx#syntax-quote::t)
            _stx135344_
            (if (and (##structure-direct-instance-of?
                      _stx135344_
                      'gx#syntax-wrap::t)
                     (eq? _mark135345_
                          (##unchecked-structure-ref
                           _stx135344_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx135344_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx135344_
                 (gx#stx-source _stx135344_)
                 _mark135345_)))))
    (define gx#apply-mark
      (lambda (_mark135308_ _marks135309_)
        (let* ((_marks135310135318_ _marks135309_)
               (_else135312135326_
                (lambda () (cons _mark135308_ _marks135309_)))
               (_K135314135332_
                (lambda (_rest135329_ _hd135330_)
                  (if (eq? _mark135308_ _hd135330_)
                      _rest135329_
                      (cons _mark135308_ _marks135309_)))))
          (if (##pair? _marks135310135318_)
              (let ((_hd135315135335_ (##car _marks135310135318_))
                    (_tl135316135337_ (##cdr _marks135310135318_)))
                (let* ((_hd135340_ _hd135315135335_)
                       (_rest135342_ _tl135316135337_))
                  (_K135314135332_ _rest135342_ _hd135340_)))
              (_else135312135326_)))))
    (define gx#stx-e
      (lambda (_stx135306_)
        (if (##structure-direct-instance-of? _stx135306_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx135306_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx135306_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx135306_ '1 gx#AST::t '#f)
                _stx135306_))))
    (define gx#stx-source
      (lambda (_stx135304_)
        (if (##structure-instance-of? _stx135304_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx135304_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx135298_ _src135299_)
        (if (or (##structure-instance-of? _stx135298_ 'gerbil#AST::t)
                (not _src135299_))
            _stx135298_
            (##structure gx#AST::t _stx135298_ _src135299_))))
    (define gx#stx-datum?
      (lambda (_stx135296_) (gx#self-quoting? (gx#stx-e _stx135296_))))
    (define gx#self-quoting?
      (lambda (_x135279_)
        (let ((_$e135281_ (immediate? _x135279_)))
          (if _$e135281_
              _$e135281_
              (let ((_$e135284_ (number? _x135279_)))
                (if _$e135284_
                    _$e135284_
                    (let ((_$e135287_ (keyword? _x135279_)))
                      (if _$e135287_
                          _$e135287_
                          (let ((_$e135290_ (string? _x135279_)))
                            (if _$e135290_
                                _$e135290_
                                (let ((_$e135293_ (vector? _x135279_)))
                                  (if _$e135293_
                                      _$e135293_
                                      (u8vector? _x135279_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e135277_) (boolean? (gx#stx-e _e135277_))))
    (define gx#stx-keyword?
      (lambda (_e135275_) (keyword? (gx#stx-e _e135275_))))
    (define gx#stx-char? (lambda (_e135273_) (char? (gx#stx-e _e135273_))))
    (define gx#stx-number? (lambda (_e135271_) (number? (gx#stx-e _e135271_))))
    (define gx#stx-fixnum? (lambda (_e135269_) (fixnum? (gx#stx-e _e135269_))))
    (define gx#stx-string? (lambda (_e135267_) (string? (gx#stx-e _e135267_))))
    (define gx#stx-null? (lambda (_e135265_) (null? (gx#stx-e _e135265_))))
    (define gx#stx-pair? (lambda (_e135263_) (pair? (gx#stx-e _e135263_))))
    (define gx#stx-list?
      (lambda (_e135225_)
        (let* ((_g135226135235_ (gx#stx-e _e135225_))
               (_E135229135239_
                (lambda () (error '"No clause matching" _g135226135235_))))
          (let ((_K135231135255_
                 (lambda (_rest135253_) (gx#stx-list? _rest135253_)))
                (_K135230135245_ (lambda (_tail135243_) (null? _tail135243_))))
            (if (##pair? _g135226135235_)
                (let* ((_tl135233135258_ (##cdr _g135226135235_))
                       (_rest135261_ _tl135233135258_))
                  (gx#stx-list? _rest135261_))
                (let ((_tail135248_ _g135226135235_))
                  (null? _tail135248_)))))))
    (define gx#stx-pair/null?
      (lambda (_e135218_)
        (let* ((_e135220_ (gx#stx-e _e135218_)) (_$e135222_ (pair? _e135220_)))
          (if _$e135222_ _$e135222_ (null? _e135220_)))))
    (define gx#stx-vector? (lambda (_e135216_) (vector? (gx#stx-e _e135216_))))
    (define gx#stx-box? (lambda (_e135214_) (box? (gx#stx-e _e135214_))))
    (define gx#stx-eq?
      (lambda (_x135211_ _y135212_)
        (eq? (gx#stx-e _x135211_) (gx#stx-e _y135212_))))
    (define gx#stx-eqv?
      (lambda (_x135208_ _y135209_)
        (eqv? (gx#stx-e _x135208_) (gx#stx-e _y135209_))))
    (define gx#stx-equal?
      (lambda (_x135205_ _y135206_)
        (equal? (gx#stx-e _x135205_) (gx#stx-e _y135206_))))
    (define gx#stx-false? (lambda (_x135203_) (not (gx#stx-e _x135203_))))
    (define gx#stx-identifier
      (lambda (_template135200_ . _args135201_)
        (gx#datum->syntax__1
         _template135200_
         (apply make-symbol (gx#syntax->datum _args135201_))
         (gx#stx-source _template135200_))))
    (define gx#stx-identifier-marks
      (lambda (_stx135198_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx135198_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx135196_)
        (if (##structure-direct-instance-of?
             _stx135196_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx135196_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx135196_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx135196_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx135196_)))))
    (define gx#stx-identifier-context
      (lambda (_stx135192_)
        (let ((_stx135194_ (gx#stx-unwrap__0 _stx135192_)))
          (if (gx#identifier-quote? _stx135194_)
              (##unchecked-structure-ref _stx135194_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx135147_)
        (let* ((_g135148135158_ (gx#stx-e _stx135147_))
               (_else135151135166_ (lambda () '#f)))
          (let ((_K135154135180_
                 (lambda (_rest135177_ _hd135178_)
                   (if (gx#identifier? _hd135178_)
                       (gx#identifier-list? _rest135177_)
                       '#f)))
                (_K135153135171_ (lambda () '#t)))
            (let ((_try-match135150135174_
                   (lambda ()
                     (if (##null? _g135148135158_)
                         (_K135153135171_)
                         (_else135151135166_)))))
              (if (##pair? _g135148135158_)
                  (let ((_tl135156135185_ (##cdr _g135148135158_))
                        (_hd135155135183_ (##car _g135148135158_)))
                    (let ((_hd135188_ _hd135155135183_)
                          (_rest135190_ _tl135156135185_))
                      (_K135154135180_ _rest135190_ _hd135188_)))
                  (_try-match135150135174_)))))))
    (define gx#genident__%
      (lambda (_e135124_ _src135125_)
        (gx#stx-wrap-source
         (gensym (let ((_e135127_ (gx#stx-e _e135124_)))
                   (if (interned-symbol? _e135127_) _e135127_ 'g)))
         (let ((_$e135129_ (gx#stx-source _e135124_)))
           (if _$e135129_ _$e135129_ _src135125_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e135136_ 'g) (_src135138_ '#f))
          (gx#genident__% _e135136_ _src135138_))))
    (define gx#genident__1
      (lambda (_e135140_)
        (let ((_src135142_ '#f)) (gx#genident__% _e135140_ _src135142_))))
    (define gx#genident
      (lambda _g140027_
        (let ((_g140026_ (##length _g140027_)))
          (cond ((##fx= _g140026_ 0)
                 (apply (lambda () (gx#genident__0)) _g140027_))
                ((##fx= _g140026_ 1)
                 (apply (lambda (_e135140_) (gx#genident__1 _e135140_))
                        _g140027_))
                ((##fx= _g140026_ 2)
                 (apply (lambda (_e135144_ _src135145_)
                          (gx#genident__% _e135144_ _src135145_))
                        _g140027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140027_))))))
    (define gx#gentemps
      (lambda (_stx-lst135121_) (gx#stx-map1 gx#genident _stx-lst135121_)))
    (define gx#syntax->list
      (lambda (_stx135119_) (gx#stx-map1 values _stx135119_)))
    (define gx#stx-car
      (lambda (_stx135116_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx135116_)))))
    (define gx#stx-cdr
      (lambda (_stx135113_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx135113_)))))
    (define gx#stx-length
      (lambda (_stx135078_)
        (let _lp135080_ ((_rest135082_ _stx135078_) (_n135083_ '0))
          (let* ((_g135084135092_ (gx#stx-e _rest135082_))
                 (_else135086135100_ (lambda () _n135083_))
                 (_K135088135105_
                  (lambda (_rest135103_)
                    (_lp135080_ _rest135103_ (fx+ _n135083_ '1)))))
            (if (##pair? _g135084135092_)
                (let* ((_tl135090135108_ (##cdr _g135084135092_))
                       (_rest135111_ _tl135090135108_))
                  (_K135088135105_ _rest135111_))
                (_else135086135100_))))))
    (define gx#stx-for-each
      (lambda _g140029_
        (let ((_g140028_ (##length _g140029_)))
          (cond ((##fx= _g140028_ 2)
                 (apply (lambda (_f135071_ _stx135072_)
                          (gx#stx-for-each1 _f135071_ _stx135072_))
                        _g140029_))
                ((##fx= _g140028_ 3)
                 (apply (lambda (_f135074_ _xstx135075_ _ystx135076_)
                          (gx#stx-for-each2
                           _f135074_
                           _xstx135075_
                           _ystx135076_))
                        _g140029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140029_))))))
    (define gx#stx-for-each1
      (lambda (_f135021_ _stx135022_)
        (if (procedure? _f135021_)
            '#!void
            (error '"expected procedure" _f135021_))
        (let _lp135024_ ((_rest135026_ _stx135022_))
          (let* ((_g135027135037_ (gx#syntax-e _rest135026_))
                 (_else135030135045_ (lambda () (_f135021_ _rest135026_))))
            (let ((_K135033135059_
                   (lambda (_rest135056_ _hd135057_)
                     (_f135021_ _hd135057_)
                     (_lp135024_ _rest135056_)))
                  (_K135032135050_ (lambda () '#!void)))
              (let ((_try-match135029135053_
                     (lambda ()
                       (if (##null? _g135027135037_)
                           (_K135032135050_)
                           (_else135030135045_)))))
                (if (##pair? _g135027135037_)
                    (let ((_tl135035135064_ (##cdr _g135027135037_))
                          (_hd135034135062_ (##car _g135027135037_)))
                      (let ((_hd135067_ _hd135034135062_)
                            (_rest135069_ _tl135035135064_))
                        (_K135033135059_ _rest135069_ _hd135067_)))
                    (_try-match135029135053_))))))))
    (define gx#stx-for-each2
      (lambda (_f134926_ _xstx134927_ _ystx134928_)
        (if (procedure? _f134926_)
            '#!void
            (error '"expected procedure" _f134926_))
        (let _lp134930_ ((_xrest134932_ _xstx134927_)
                         (_yrest134933_ _ystx134928_))
          (let* ((_g134934134944_ (gx#syntax-e _xrest134932_))
                 (_else134937134952_ (lambda () '#!void)))
            (let ((_K134940135009_
                   (lambda (_xrest134978_ _xhd134979_)
                     (let* ((_g134980134987_ (gx#syntax-e _yrest134933_))
                            (_E134982134991_
                             (lambda ()
                               (error '"No clause matching" _g134980134987_)))
                            (_K134983134997_
                             (lambda (_yrest134994_ _yhd134995_)
                               (_f134926_ _xhd134979_ _yhd134995_)
                               (_lp134930_ _xrest134978_ _yrest134994_))))
                       (if (##pair? _g134980134987_)
                           (let ((_hd134984135000_ (##car _g134980134987_))
                                 (_tl134985135002_ (##cdr _g134980134987_)))
                             (let* ((_yhd135005_ _hd134984135000_)
                                    (_yrest135007_ _tl134985135002_))
                               (_K134983134997_ _yrest135007_ _yhd135005_)))
                           (_E134982134991_)))))
                  (_K134939134972_
                   (lambda ()
                     (let* ((_yrest134956134961_ _yrest134933_)
                            (_E134958134965_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134956134961_)))
                            (_K134959134969_
                             (lambda ()
                               (_f134926_ _xrest134932_ _yrest134933_))))
                       (if (not (gx#stx-null? _yrest134956134961_))
                           (_K134959134969_)
                           (_E134958134965_))))))
              (let ((_try-match134936134975_
                     (lambda ()
                       (if (not (null? _g134934134944_))
                           (_K134939134972_)
                           (_else134937134952_)))))
                (if (##pair? _g134934134944_)
                    (let ((_tl134942135014_ (##cdr _g134934134944_))
                          (_hd134941135012_ (##car _g134934134944_)))
                      (let ((_xhd135017_ _hd134941135012_)
                            (_xrest135019_ _tl134942135014_))
                        (_K134940135009_ _xrest135019_ _xhd135017_)))
                    (_try-match134936134975_))))))))
    (define gx#stx-map
      (lambda _g140031_
        (let ((_g140030_ (##length _g140031_)))
          (cond ((##fx= _g140030_ 2)
                 (apply (lambda (_f134919_ _stx134920_)
                          (gx#stx-map1 _f134919_ _stx134920_))
                        _g140031_))
                ((##fx= _g140030_ 3)
                 (apply (lambda (_f134922_ _xstx134923_ _ystx134924_)
                          (gx#stx-map2 _f134922_ _xstx134923_ _ystx134924_))
                        _g140031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140031_))))))
    (define gx#stx-map1
      (lambda (_f134869_ _stx134870_)
        (if (procedure? _f134869_)
            '#!void
            (error '"expected procedure" _f134869_))
        (let _recur134872_ ((_rest134874_ _stx134870_))
          (let* ((_g134875134885_ (gx#syntax-e _rest134874_))
                 (_else134878134893_ (lambda () (_f134869_ _rest134874_))))
            (let ((_K134881134907_
                   (lambda (_rest134904_ _hd134905_)
                     (cons (_f134869_ _hd134905_)
                           (_recur134872_ _rest134904_))))
                  (_K134880134898_ (lambda () '())))
              (let ((_try-match134877134901_
                     (lambda ()
                       (if (##null? _g134875134885_)
                           (_K134880134898_)
                           (_else134878134893_)))))
                (if (##pair? _g134875134885_)
                    (let ((_tl134883134912_ (##cdr _g134875134885_))
                          (_hd134882134910_ (##car _g134875134885_)))
                      (let ((_hd134915_ _hd134882134910_)
                            (_rest134917_ _tl134883134912_))
                        (_K134881134907_ _rest134917_ _hd134915_)))
                    (_try-match134877134901_))))))))
    (define gx#stx-map2
      (lambda (_f134774_ _xstx134775_ _ystx134776_)
        (if (procedure? _f134774_)
            '#!void
            (error '"expected procedure" _f134774_))
        (let _recur134778_ ((_xrest134780_ _xstx134775_)
                            (_yrest134781_ _ystx134776_))
          (let* ((_g134782134792_ (gx#syntax-e _xrest134780_))
                 (_else134785134800_ (lambda () '())))
            (let ((_K134788134857_
                   (lambda (_xrest134826_ _xhd134827_)
                     (let* ((_g134828134835_ (gx#syntax-e _yrest134781_))
                            (_E134830134839_
                             (lambda ()
                               (error '"No clause matching" _g134828134835_)))
                            (_K134831134845_
                             (lambda (_yrest134842_ _yhd134843_)
                               (cons (_f134774_ _xhd134827_ _yhd134843_)
                                     (_recur134778_
                                      _xrest134826_
                                      _yrest134842_)))))
                       (if (##pair? _g134828134835_)
                           (let ((_hd134832134848_ (##car _g134828134835_))
                                 (_tl134833134850_ (##cdr _g134828134835_)))
                             (let* ((_yhd134853_ _hd134832134848_)
                                    (_yrest134855_ _tl134833134850_))
                               (_K134831134845_ _yrest134855_ _yhd134853_)))
                           (_E134830134839_)))))
                  (_K134787134820_
                   (lambda ()
                     (let* ((_yrest134804134809_ _yrest134781_)
                            (_E134806134813_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest134804134809_)))
                            (_K134807134817_
                             (lambda ()
                               (_f134774_ _xrest134780_ _yrest134781_))))
                       (if (not (gx#stx-null? _yrest134804134809_))
                           (_K134807134817_)
                           (_E134806134813_))))))
              (let ((_try-match134784134823_
                     (lambda ()
                       (if (not (null? _g134782134792_))
                           (_K134787134820_)
                           (_else134785134800_)))))
                (if (##pair? _g134782134792_)
                    (let ((_tl134790134862_ (##cdr _g134782134792_))
                          (_hd134789134860_ (##car _g134782134792_)))
                      (let ((_xhd134865_ _hd134789134860_)
                            (_xrest134867_ _tl134790134862_))
                        (_K134788134857_ _xrest134867_ _xhd134865_)))
                    (_try-match134784134823_))))))))
    (define gx#stx-andmap
      (lambda (_f134724_ _stx134725_)
        (if (procedure? _f134724_)
            '#!void
            (error '"expected procedure" _f134724_))
        (let _lp134727_ ((_rest134729_ _stx134725_))
          (let* ((_g134730134740_ (gx#syntax-e _rest134729_))
                 (_else134733134748_ (lambda () (_f134724_ _rest134729_))))
            (let ((_K134736134762_
                   (lambda (_rest134759_ _hd134760_)
                     (if (_f134724_ _hd134760_)
                         (_lp134727_ _rest134759_)
                         '#f)))
                  (_K134735134753_ (lambda () '#t)))
              (let ((_try-match134732134756_
                     (lambda ()
                       (if (##null? _g134730134740_)
                           (_K134735134753_)
                           (_else134733134748_)))))
                (if (##pair? _g134730134740_)
                    (let ((_tl134738134767_ (##cdr _g134730134740_))
                          (_hd134737134765_ (##car _g134730134740_)))
                      (let ((_hd134770_ _hd134737134765_)
                            (_rest134772_ _tl134738134767_))
                        (_K134736134762_ _rest134772_ _hd134770_)))
                    (_try-match134732134756_))))))))
    (define gx#stx-ormap
      (lambda (_f134671_ _stx134672_)
        (if (procedure? _f134671_)
            '#!void
            (error '"expected procedure" _f134671_))
        (let _lp134674_ ((_rest134676_ _stx134672_))
          (let* ((_g134677134687_ (gx#syntax-e _rest134676_))
                 (_else134680134695_ (lambda () (_f134671_ _rest134676_))))
            (let ((_K134683134712_
                   (lambda (_rest134706_ _hd134707_)
                     (let ((_$e134709_ (_f134671_ _hd134707_)))
                       (if _$e134709_ _$e134709_ (_lp134674_ _rest134706_)))))
                  (_K134682134700_ (lambda () '#f)))
              (let ((_try-match134679134703_
                     (lambda ()
                       (if (##null? _g134677134687_)
                           (_K134682134700_)
                           (_else134680134695_)))))
                (if (##pair? _g134677134687_)
                    (let ((_tl134685134717_ (##cdr _g134677134687_))
                          (_hd134684134715_ (##car _g134677134687_)))
                      (let ((_hd134720_ _hd134684134715_)
                            (_rest134722_ _tl134685134717_))
                        (_K134683134712_ _rest134722_ _hd134720_)))
                    (_try-match134679134703_))))))))
    (define gx#stx-foldl
      (lambda (_f134619_ _iv134620_ _stx134621_)
        (if (procedure? _f134619_)
            '#!void
            (error '"expected procedure" _f134619_))
        (let _lp134623_ ((_r134625_ _iv134620_) (_rest134626_ _stx134621_))
          (let* ((_g134627134637_ (gx#syntax-e _rest134626_))
                 (_else134630134645_
                  (lambda () (_f134619_ _rest134626_ _r134625_))))
            (let ((_K134633134659_
                   (lambda (_rest134656_ _hd134657_)
                     (_lp134623_
                      (_f134619_ _hd134657_ _r134625_)
                      _rest134656_)))
                  (_K134632134650_ (lambda () _r134625_)))
              (let ((_try-match134629134653_
                     (lambda ()
                       (if (##null? _g134627134637_)
                           (_K134632134650_)
                           (_else134630134645_)))))
                (if (##pair? _g134627134637_)
                    (let ((_tl134635134664_ (##cdr _g134627134637_))
                          (_hd134634134662_ (##car _g134627134637_)))
                      (let ((_hd134667_ _hd134634134662_)
                            (_rest134669_ _tl134635134664_))
                        (_K134633134659_ _rest134669_ _hd134667_)))
                    (_try-match134629134653_))))))))
    (define gx#stx-foldr
      (lambda (_f134568_ _iv134569_ _stx134570_)
        (if (procedure? _f134568_)
            '#!void
            (error '"expected procedure" _f134568_))
        (let _recur134572_ ((_rest134574_ _stx134570_))
          (let* ((_g134575134585_ (gx#syntax-e _rest134574_))
                 (_else134578134593_
                  (lambda () (_f134568_ _rest134574_ _iv134569_))))
            (let ((_K134581134607_
                   (lambda (_rest134604_ _hd134605_)
                     (_f134568_ _hd134605_ (_recur134572_ _rest134604_))))
                  (_K134580134598_ (lambda () _iv134569_)))
              (let ((_try-match134577134601_
                     (lambda ()
                       (if (##null? _g134575134585_)
                           (_K134580134598_)
                           (_else134578134593_)))))
                (if (##pair? _g134575134585_)
                    (let ((_tl134583134612_ (##cdr _g134575134585_))
                          (_hd134582134610_ (##car _g134575134585_)))
                      (let ((_hd134615_ _hd134582134610_)
                            (_rest134617_ _tl134583134612_))
                        (_K134581134607_ _rest134617_ _hd134615_)))
                    (_try-match134577134601_))))))))
    (define gx#stx-reverse
      (lambda (_stx134566_) (gx#stx-foldl cons '() _stx134566_)))
    (define gx#stx-last
      (lambda (_stx134527_)
        (let _lp134529_ ((_rest134531_ _stx134527_))
          (let* ((_g134532134540_ (gx#syntax-e _rest134531_))
                 (_else134534134548_ (lambda () _rest134531_))
                 (_K134536134554_
                  (lambda (_rest134551_ _hd134552_)
                    (if (gx#stx-null? _rest134551_)
                        _hd134552_
                        (_lp134529_ _rest134551_)))))
            (if (##pair? _g134532134540_)
                (let ((_hd134537134557_ (##car _g134532134540_))
                      (_tl134538134559_ (##cdr _g134532134540_)))
                  (let* ((_hd134562_ _hd134537134557_)
                         (_rest134564_ _tl134538134559_))
                    (_K134536134554_ _rest134564_ _hd134562_)))
                (_else134534134548_))))))
    (define gx#stx-last-pair
      (lambda (_stx134498_)
        (let _lp134500_ ((_hd134502_ _stx134498_))
          (let* ((_g134503134510_ (gx#syntax-e _hd134502_))
                 (_E134505134514_
                  (lambda () (error '"No clause matching" _g134503134510_)))
                 (_K134506134519_
                  (lambda (_rest134517_)
                    (if (gx#stx-pair? _rest134517_)
                        (_lp134500_ _rest134517_)
                        _hd134502_))))
            (if (##pair? _g134503134510_)
                (let* ((_tl134508134522_ (##cdr _g134503134510_))
                       (_rest134525_ _tl134508134522_))
                  (_K134506134519_ _rest134525_))
                (_E134505134514_))))))
    (define gx#stx-list-tail
      (lambda (_stx134467_ _k134468_)
        (let _lp134470_ ((_rest134472_ _stx134467_) (_k134473_ _k134468_))
          (if (fxpositive? _k134473_)
              (let* ((_g134474134481_ (gx#syntax-e _rest134472_))
                     (_E134476134485_
                      (lambda ()
                        (error '"No clause matching" _g134474134481_)))
                     (_K134477134490_
                      (lambda (_rest134488_)
                        (_lp134470_ _rest134488_ (fx- _k134473_ '1)))))
                (if (##pair? _g134474134481_)
                    (let* ((_tl134479134493_ (##cdr _g134474134481_))
                           (_rest134496_ _tl134479134493_))
                      (_K134477134490_ _rest134496_))
                    (_E134476134485_)))
              _rest134472_))))
    (define gx#stx-list-ref
      (lambda (_stx134464_ _k134465_)
        (gx#stx-car (gx#stx-list-tail _stx134464_ _k134465_))))
    (define gx#stx-plist?__%
      (lambda (_stx134376_ _key?134377_)
        (if (procedure? _key?134377_)
            '#!void
            (error '"expected procedure" _key?134377_))
        (let _lp134379_ ((_rest134381_ _stx134376_))
          (let* ((_g134382134392_ (gx#stx-e _rest134381_))
                 (_else134385134400_ (lambda () '#f)))
            (let ((_K134388134442_
                   (lambda (_rest134411_ _hd134412_)
                     (if (_key?134377_ _hd134412_)
                         (let* ((_g134413134421_ (gx#stx-e _rest134411_))
                                (_else134415134429_ (lambda () '#f))
                                (_K134417134434_
                                 (lambda (_rest134432_)
                                   (_lp134379_ _rest134432_))))
                           (if (##pair? _g134413134421_)
                               (let* ((_tl134419134437_
                                       (##cdr _g134413134421_))
                                      (_rest134440_ _tl134419134437_))
                                 (_lp134379_ _rest134440_))
                               (_else134415134429_)))
                         '#f)))
                  (_K134387134405_ (lambda () '#t)))
              (let ((_try-match134384134408_
                     (lambda ()
                       (if (##null? _g134382134392_)
                           (_K134387134405_)
                           (_else134385134400_)))))
                (if (##pair? _g134382134392_)
                    (let ((_tl134390134447_ (##cdr _g134382134392_))
                          (_hd134389134445_ (##car _g134382134392_)))
                      (let ((_hd134450_ _hd134389134445_)
                            (_rest134452_ _tl134390134447_))
                        (_K134388134442_ _rest134452_ _hd134450_)))
                    (_try-match134384134408_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx134457_)
        (let ((_key?134459_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx134457_ _key?134459_))))
    (define gx#stx-plist?
      (lambda _g140033_
        (let ((_g140032_ (##length _g140033_)))
          (cond ((##fx= _g140032_ 1)
                 (apply (lambda (_stx134457_) (gx#stx-plist?__0 _stx134457_))
                        _g140033_))
                ((##fx= _g140032_ 2)
                 (apply (lambda (_stx134461_ _key?134462_)
                          (gx#stx-plist?__% _stx134461_ _key?134462_))
                        _g140033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140033_))))))
    (define gx#stx-getq__%
      (lambda (_key134294_ _stx134295_ _key=?134296_)
        (if (procedure? _key=?134296_)
            '#!void
            (error '"expected procedure" _key=?134296_))
        (let _lp134298_ ((_rest134300_ _stx134295_))
          (let* ((_g134301134309_ (gx#syntax-e _rest134300_))
                 (_else134303134317_ (lambda () '#f))
                 (_K134305134351_
                  (lambda (_rest134320_ _hd134321_)
                    (let* ((_g134322134329_ (gx#syntax-e _rest134320_))
                           (_E134324134333_
                            (lambda ()
                              (error '"No clause matching" _g134322134329_)))
                           (_K134325134339_
                            (lambda (_rest134336_ _val134337_)
                              (if (_key=?134296_ _hd134321_ _key134294_)
                                  _val134337_
                                  (_lp134298_ _rest134336_)))))
                      (if (##pair? _g134322134329_)
                          (let ((_hd134326134342_ (##car _g134322134329_))
                                (_tl134327134344_ (##cdr _g134322134329_)))
                            (let* ((_val134347_ _hd134326134342_)
                                   (_rest134349_ _tl134327134344_))
                              (_K134325134339_ _rest134349_ _val134347_)))
                          (_E134324134333_))))))
            (if (##pair? _g134301134309_)
                (let ((_hd134306134354_ (##car _g134301134309_))
                      (_tl134307134356_ (##cdr _g134301134309_)))
                  (let* ((_hd134359_ _hd134306134354_)
                         (_rest134361_ _tl134307134356_))
                    (_K134305134351_ _rest134361_ _hd134359_)))
                (_else134303134317_))))))
    (define gx#stx-getq__0
      (lambda (_key134366_ _stx134367_)
        (let ((_key=?134369_ gx#stx-eq?))
          (gx#stx-getq__% _key134366_ _stx134367_ _key=?134369_))))
    (define gx#stx-getq
      (lambda _g140035_
        (let ((_g140034_ (##length _g140035_)))
          (cond ((##fx= _g140034_ 2)
                 (apply (lambda (_key134366_ _stx134367_)
                          (gx#stx-getq__0 _key134366_ _stx134367_))
                        _g140035_))
                ((##fx= _g140034_ 3)
                 (apply (lambda (_key134371_ _stx134372_ _key=?134373_)
                          (gx#stx-getq__%
                           _key134371_
                           _stx134372_
                           _key=?134373_))
                        _g140035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140035_))))))))
