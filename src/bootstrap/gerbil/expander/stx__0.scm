(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708280333)
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
      (lambda _$args149373_
        (apply make-instance gx#identifier-wrap::t _$args149373_)))
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
      (lambda _$args149370_
        (apply make-instance gx#syntax-wrap::t _$args149370_)))
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
      (lambda _$args149367_
        (apply make-instance gx#syntax-quote::t _$args149367_)))
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
      (lambda (_stx149365_) (symbol? (gx#stx-e _stx149365_))))
    (define gx#identifier-quote?
      (lambda (_stx149363_)
        (if (##structure-direct-instance-of? _stx149363_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx149363_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx149361_)
        (if (##structure-direct-instance-of? _stx149361_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx149361_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx149361_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx149359_)
        (if (##structure-direct-instance-of? _stx149359_ 'gx#syntax-quote::t)
            _stx149359_
            (if (##structure-direct-instance-of?
                 _stx149359_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx149359_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx149342_)
        (if (##structure-direct-instance-of? _stx149342_ 'gx#syntax-wrap::t)
            (let _lp149344_ ((_e149346_
                              (##unchecked-structure-ref
                               _stx149342_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks149347_
                              (cons (##unchecked-structure-ref
                                     _stx149342_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e149346_)
                  (let ((_$e149349_ (##type-id (##structure-type _e149346_))))
                    (if (eq? 'gx#syntax-wrap::t _$e149349_)
                        (_lp149344_
                         (##unchecked-structure-ref _e149346_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e149346_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks149347_))
                        (if (or (eq? 'gx#syntax-quote::t _$e149349_)
                                (eq? 'gx#identifier-wrap::t _$e149349_))
                            (##unchecked-structure-ref
                             _e149346_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e149349_)
                                (_lp149344_
                                 (##unchecked-structure-ref
                                  _e149346_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks149347_)
                                _e149346_))))
                  (if (null? _marks149347_)
                      _e149346_
                      (if (pair? _e149346_)
                          (cons (gx#stx-wrap (car _e149346_) _marks149347_)
                                (gx#stx-wrap (cdr _e149346_) _marks149347_))
                          (if (vector? _e149346_)
                              (vector-map
                               (lambda (_g149354149356_)
                                 (gx#stx-wrap _g149354149356_ _marks149347_))
                               _e149346_)
                              (if (box? _e149346_)
                                  (box (gx#stx-wrap
                                        (unbox _e149346_)
                                        _marks149347_))
                                  _e149346_))))))
            (if (##structure-instance-of? _stx149342_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx149342_ '1 gx#AST::t '#f)
                _stx149342_))))
    (define gx#syntax->datum
      (lambda (_stx149340_)
        (if (##structure-instance-of? _stx149340_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx149340_ '1 gx#AST::t '#f))
            (if (pair? _stx149340_)
                (cons (gx#syntax->datum (car _stx149340_))
                      (gx#syntax->datum (cdr _stx149340_)))
                (if (vector? _stx149340_)
                    (vector-map gx#syntax->datum _stx149340_)
                    (if (box? _stx149340_)
                        (box (gx#syntax->datum (unbox _stx149340_)))
                        _stx149340_))))))
    (define gx#datum->syntax__%
      (lambda (_stx149283_ _datum149284_ _src149285_ _quote?149286_)
        (letrec ((_wrap-datum149288_
                  (lambda (_e149312_ _marks149313_)
                    (_wrap-inner149290_
                     _e149312_
                     (lambda (_g149314149316_)
                       (##structure
                        gx#identifier-wrap::t
                        _g149314149316_
                        _src149285_
                        _marks149313_)))))
                 (_wrap-quote149289_
                  (lambda (_e149304_ _ctx149305_ _marks149306_)
                    (_wrap-inner149290_
                     _e149304_
                     (lambda (_g149307149309_)
                       (##structure
                        gx#syntax-quote::t
                        _g149307149309_
                        _src149285_
                        _ctx149305_
                        _marks149306_)))))
                 (_wrap-inner149290_
                  (lambda (_e149297_ _wrap-e149298_)
                    (let _recur149300_ ((_e149302_ _e149297_))
                      (if (symbol? _e149302_)
                          (_wrap-e149298_ _e149302_)
                          (if (pair? _e149302_)
                              (cons (_recur149300_ (car _e149302_))
                                    (_recur149300_ (cdr _e149302_)))
                              (if (vector? _e149302_)
                                  (vector-map _recur149300_ _e149302_)
                                  (if (box? _e149302_)
                                      (box (_recur149300_ (unbox _e149302_)))
                                      _e149302_)))))))
                 (_wrap-outer149291_
                  (lambda (_e149295_)
                    (if (##structure-instance-of? _e149295_ 'gerbil#AST::t)
                        _e149295_
                        (##structure gx#AST::t _e149295_ _src149285_)))))
          (if (##structure-instance-of? _datum149284_ 'gerbil#AST::t)
              _datum149284_
              (if (not _stx149283_)
                  (##structure gx#AST::t _datum149284_ _src149285_)
                  (if (gx#identifier? _stx149283_)
                      (let ((_stx149293_ (gx#stx-unwrap__0 _stx149283_)))
                        (_wrap-outer149291_
                         (if (##structure-direct-instance-of?
                              _stx149293_
                              'gx#syntax-quote::t)
                             (if _quote?149286_
                                 (_wrap-quote149289_
                                  _datum149284_
                                  (##unchecked-structure-ref
                                   _stx149293_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx149293_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum149288_
                                  _datum149284_
                                  (##unchecked-structure-ref
                                   _stx149293_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum149288_
                              _datum149284_
                              (##unchecked-structure-ref
                               _stx149293_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx149283_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx149322_ _datum149323_)
        (let* ((_src149325_ '#f) (_quote?149327_ '#t))
          (gx#datum->syntax__%
           _stx149322_
           _datum149323_
           _src149325_
           _quote?149327_))))
    (define gx#datum->syntax__1
      (lambda (_stx149329_ _datum149330_ _src149331_)
        (let ((_quote?149333_ '#t))
          (gx#datum->syntax__%
           _stx149329_
           _datum149330_
           _src149331_
           _quote?149333_))))
    (define gx#datum->syntax
      (lambda _g153521_
        (let ((_g153520_ (##length _g153521_)))
          (cond ((##fx= _g153520_ 2)
                 (apply (lambda (_stx149322_ _datum149323_)
                          (gx#datum->syntax__0 _stx149322_ _datum149323_))
                        _g153521_))
                ((##fx= _g153520_ 3)
                 (apply (lambda (_stx149329_ _datum149330_ _src149331_)
                          (gx#datum->syntax__1
                           _stx149329_
                           _datum149330_
                           _src149331_))
                        _g153521_))
                ((##fx= _g153520_ 4)
                 (apply (lambda (_stx149335_
                                 _datum149336_
                                 _src149337_
                                 _quote?149338_)
                          (gx#datum->syntax__%
                           _stx149335_
                           _datum149336_
                           _src149337_
                           _quote?149338_))
                        _g153521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g153521_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx149259_ _marks149260_)
        (let _lp149262_ ((_e149264_ _stx149259_)
                         (_marks149265_ _marks149260_)
                         (_src149266_ (gx#stx-source _stx149259_)))
          (if (##structure-direct-instance-of? _e149264_ 'gx#syntax-wrap::t)
              (_lp149262_
               (##unchecked-structure-ref _e149264_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e149264_ '3 gx#syntax-wrap::t '#f)
                _marks149265_)
               (##unchecked-structure-ref _e149264_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e149264_
                   'gx#identifier-wrap::t)
                  (if (null? _marks149265_)
                      _e149264_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e149264_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e149264_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e149264_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks149265_)))
                  (if (##structure-direct-instance-of?
                       _e149264_
                       'gx#syntax-quote::t)
                      _e149264_
                      (if (##structure-instance-of? _e149264_ 'gerbil#AST::t)
                          (_lp149262_
                           (##unchecked-structure-ref
                            _e149264_
                            '1
                            gx#AST::t
                            '#f)
                           _marks149265_
                           (##unchecked-structure-ref
                            _e149264_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e149264_)
                              (##structure
                               gx#identifier-wrap::t
                               _e149264_
                               _src149266_
                               (reverse _marks149265_))
                              (if (null? _marks149265_)
                                  _e149264_
                                  (if (pair? _e149264_)
                                      (cons (gx#stx-wrap
                                             (car _e149264_)
                                             _marks149265_)
                                            (gx#stx-wrap
                                             (cdr _e149264_)
                                             _marks149265_))
                                      (if (vector? _e149264_)
                                          (vector-map
                                           (lambda (_g149267149269_)
                                             (gx#stx-wrap
                                              _g149267149269_
                                              _marks149265_))
                                           _e149264_)
                                          (if (box? _e149264_)
                                              (box (gx#stx-wrap
                                                    (unbox _e149264_)
                                                    _marks149265_))
                                              _e149264_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx149275_)
        (let ((_marks149277_ '()))
          (gx#stx-unwrap__% _stx149275_ _marks149277_))))
    (define gx#stx-unwrap
      (lambda _g153523_
        (let ((_g153522_ (##length _g153523_)))
          (cond ((##fx= _g153522_ 1)
                 (apply (lambda (_stx149275_) (gx#stx-unwrap__0 _stx149275_))
                        _g153523_))
                ((##fx= _g153522_ 2)
                 (apply (lambda (_stx149279_ _marks149280_)
                          (gx#stx-unwrap__% _stx149279_ _marks149280_))
                        _g153523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g153523_))))))
    (define gx#stx-wrap
      (lambda (_stx149252_ _marks149253_)
        (foldl1 (lambda (_mark149255_ _stx149256_)
                  (gx#stx-apply-mark _stx149256_ _mark149255_))
                _stx149252_
                _marks149253_)))
    (define gx#stx-rewrap
      (lambda (_stx149246_ _marks149247_)
        (foldr1 (lambda (_mark149249_ _stx149250_)
                  (gx#stx-apply-mark _stx149250_ _mark149249_))
                _stx149246_
                _marks149247_)))
    (define gx#stx-apply-mark
      (lambda (_stx149243_ _mark149244_)
        (if (##structure-direct-instance-of? _stx149243_ 'gx#syntax-quote::t)
            _stx149243_
            (if (and (##structure-direct-instance-of?
                      _stx149243_
                      'gx#syntax-wrap::t)
                     (eq? _mark149244_
                          (##unchecked-structure-ref
                           _stx149243_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx149243_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx149243_
                 (gx#stx-source _stx149243_)
                 _mark149244_)))))
    (define gx#apply-mark
      (lambda (_mark149207_ _marks149208_)
        (let* ((_marks149209149217_ _marks149208_)
               (_else149211149225_
                (lambda () (cons _mark149207_ _marks149208_)))
               (_K149213149231_
                (lambda (_rest149228_ _hd149229_)
                  (if (eq? _mark149207_ _hd149229_)
                      _rest149228_
                      (cons _mark149207_ _marks149208_)))))
          (if (##pair? _marks149209149217_)
              (let ((_hd149214149234_ (##car _marks149209149217_))
                    (_tl149215149236_ (##cdr _marks149209149217_)))
                (let* ((_hd149239_ _hd149214149234_)
                       (_rest149241_ _tl149215149236_))
                  (_K149213149231_ _rest149241_ _hd149239_)))
              (_else149211149225_)))))
    (define gx#stx-e
      (lambda (_stx149205_)
        (if (##structure-direct-instance-of? _stx149205_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx149205_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx149205_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx149205_ '1 gx#AST::t '#f)
                _stx149205_))))
    (define gx#stx-source
      (lambda (_stx149203_)
        (if (##structure-instance-of? _stx149203_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx149203_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx149197_ _src149198_)
        (if (or (##structure-instance-of? _stx149197_ 'gerbil#AST::t)
                (not _src149198_))
            _stx149197_
            (##structure gx#AST::t _stx149197_ _src149198_))))
    (define gx#stx-datum?
      (lambda (_stx149195_) (gx#self-quoting? (gx#stx-e _stx149195_))))
    (define gx#self-quoting?
      (lambda (_x149178_)
        (let ((_$e149180_ (immediate? _x149178_)))
          (if _$e149180_
              _$e149180_
              (let ((_$e149183_ (number? _x149178_)))
                (if _$e149183_
                    _$e149183_
                    (let ((_$e149186_ (keyword? _x149178_)))
                      (if _$e149186_
                          _$e149186_
                          (let ((_$e149189_ (string? _x149178_)))
                            (if _$e149189_
                                _$e149189_
                                (let ((_$e149192_ (vector? _x149178_)))
                                  (if _$e149192_
                                      _$e149192_
                                      (u8vector? _x149178_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e149176_) (boolean? (gx#stx-e _e149176_))))
    (define gx#stx-keyword?
      (lambda (_e149174_) (keyword? (gx#stx-e _e149174_))))
    (define gx#stx-char? (lambda (_e149172_) (char? (gx#stx-e _e149172_))))
    (define gx#stx-number? (lambda (_e149170_) (number? (gx#stx-e _e149170_))))
    (define gx#stx-fixnum? (lambda (_e149168_) (fixnum? (gx#stx-e _e149168_))))
    (define gx#stx-string? (lambda (_e149166_) (string? (gx#stx-e _e149166_))))
    (define gx#stx-null? (lambda (_e149164_) (null? (gx#stx-e _e149164_))))
    (define gx#stx-pair? (lambda (_e149162_) (pair? (gx#stx-e _e149162_))))
    (define gx#stx-list?
      (lambda (_e149124_)
        (let* ((_g149125149134_ (gx#stx-e _e149124_))
               (_E149128149138_
                (lambda () (error '"No clause matching" _g149125149134_))))
          (let ((_K149130149154_
                 (lambda (_rest149152_) (gx#stx-list? _rest149152_)))
                (_K149129149144_ (lambda (_tail149142_) (null? _tail149142_))))
            (if (##pair? _g149125149134_)
                (let* ((_tl149132149157_ (##cdr _g149125149134_))
                       (_rest149160_ _tl149132149157_))
                  (gx#stx-list? _rest149160_))
                (let ((_tail149147_ _g149125149134_))
                  (null? _tail149147_)))))))
    (define gx#stx-pair/null?
      (lambda (_e149117_)
        (let* ((_e149119_ (gx#stx-e _e149117_)) (_$e149121_ (pair? _e149119_)))
          (if _$e149121_ _$e149121_ (null? _e149119_)))))
    (define gx#stx-vector? (lambda (_e149115_) (vector? (gx#stx-e _e149115_))))
    (define gx#stx-box? (lambda (_e149113_) (box? (gx#stx-e _e149113_))))
    (define gx#stx-eq?
      (lambda (_x149110_ _y149111_)
        (eq? (gx#stx-e _x149110_) (gx#stx-e _y149111_))))
    (define gx#stx-eqv?
      (lambda (_x149107_ _y149108_)
        (eqv? (gx#stx-e _x149107_) (gx#stx-e _y149108_))))
    (define gx#stx-equal?
      (lambda (_x149104_ _y149105_)
        (equal? (gx#stx-e _x149104_) (gx#stx-e _y149105_))))
    (define gx#stx-false? (lambda (_x149102_) (not (gx#stx-e _x149102_))))
    (define gx#stx-identifier
      (lambda (_template149099_ . _args149100_)
        (gx#datum->syntax__1
         _template149099_
         (apply make-symbol (gx#syntax->datum _args149100_))
         (gx#stx-source _template149099_))))
    (define gx#stx-identifier-marks
      (lambda (_stx149097_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx149097_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx149095_)
        (if (##structure-direct-instance-of?
             _stx149095_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx149095_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx149095_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx149095_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx149095_)))))
    (define gx#stx-identifier-context
      (lambda (_stx149091_)
        (let ((_stx149093_ (gx#stx-unwrap__0 _stx149091_)))
          (if (gx#identifier-quote? _stx149093_)
              (##unchecked-structure-ref _stx149093_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx149046_)
        (let* ((_g149047149057_ (gx#stx-e _stx149046_))
               (_else149050149065_ (lambda () '#f)))
          (let ((_K149053149079_
                 (lambda (_rest149076_ _hd149077_)
                   (if (gx#identifier? _hd149077_)
                       (gx#identifier-list? _rest149076_)
                       '#f)))
                (_K149052149070_ (lambda () '#t)))
            (let ((_try-match149049149073_
                   (lambda ()
                     (if (##null? _g149047149057_)
                         (_K149052149070_)
                         (_else149050149065_)))))
              (if (##pair? _g149047149057_)
                  (let ((_tl149055149084_ (##cdr _g149047149057_))
                        (_hd149054149082_ (##car _g149047149057_)))
                    (let ((_hd149087_ _hd149054149082_)
                          (_rest149089_ _tl149055149084_))
                      (_K149053149079_ _rest149089_ _hd149087_)))
                  (_try-match149049149073_)))))))
    (define gx#genident__%
      (lambda (_e149023_ _src149024_)
        (gx#stx-wrap-source
         (gensym (let ((_e149026_ (gx#stx-e _e149023_)))
                   (if (interned-symbol? _e149026_) _e149026_ 'g)))
         (let ((_$e149028_ (gx#stx-source _e149023_)))
           (if _$e149028_ _$e149028_ _src149024_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e149035_ 'g) (_src149037_ '#f))
          (gx#genident__% _e149035_ _src149037_))))
    (define gx#genident__1
      (lambda (_e149039_)
        (let ((_src149041_ '#f)) (gx#genident__% _e149039_ _src149041_))))
    (define gx#genident
      (lambda _g153525_
        (let ((_g153524_ (##length _g153525_)))
          (cond ((##fx= _g153524_ 0)
                 (apply (lambda () (gx#genident__0)) _g153525_))
                ((##fx= _g153524_ 1)
                 (apply (lambda (_e149039_) (gx#genident__1 _e149039_))
                        _g153525_))
                ((##fx= _g153524_ 2)
                 (apply (lambda (_e149043_ _src149044_)
                          (gx#genident__% _e149043_ _src149044_))
                        _g153525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g153525_))))))
    (define gx#gentemps
      (lambda (_stx-lst149020_) (gx#stx-map1 gx#genident _stx-lst149020_)))
    (define gx#syntax->list
      (lambda (_stx149018_) (gx#stx-map1 values _stx149018_)))
    (define gx#stx-car
      (lambda (_stx149015_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx149015_)))))
    (define gx#stx-cdr
      (lambda (_stx149012_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx149012_)))))
    (define gx#stx-length
      (lambda (_stx148977_)
        (let _lp148979_ ((_rest148981_ _stx148977_) (_n148982_ '0))
          (let* ((_g148983148991_ (gx#stx-e _rest148981_))
                 (_else148985148999_ (lambda () _n148982_))
                 (_K148987149004_
                  (lambda (_rest149002_)
                    (_lp148979_ _rest149002_ (fx+ _n148982_ '1)))))
            (if (##pair? _g148983148991_)
                (let* ((_tl148989149007_ (##cdr _g148983148991_))
                       (_rest149010_ _tl148989149007_))
                  (_K148987149004_ _rest149010_))
                (_else148985148999_))))))
    (define gx#stx-for-each
      (lambda _g153527_
        (let ((_g153526_ (##length _g153527_)))
          (cond ((##fx= _g153526_ 2)
                 (apply (lambda (_f148970_ _stx148971_)
                          (gx#stx-for-each1 _f148970_ _stx148971_))
                        _g153527_))
                ((##fx= _g153526_ 3)
                 (apply (lambda (_f148973_ _xstx148974_ _ystx148975_)
                          (gx#stx-for-each2
                           _f148973_
                           _xstx148974_
                           _ystx148975_))
                        _g153527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g153527_))))))
    (define gx#stx-for-each1
      (lambda (_f148920_ _stx148921_)
        (if (procedure? _f148920_)
            '#!void
            (error '"expected procedure" _f148920_))
        (let _lp148923_ ((_rest148925_ _stx148921_))
          (let* ((_g148926148936_ (gx#syntax-e _rest148925_))
                 (_else148929148944_ (lambda () (_f148920_ _rest148925_))))
            (let ((_K148932148958_
                   (lambda (_rest148955_ _hd148956_)
                     (_f148920_ _hd148956_)
                     (_lp148923_ _rest148955_)))
                  (_K148931148949_ (lambda () '#!void)))
              (let ((_try-match148928148952_
                     (lambda ()
                       (if (##null? _g148926148936_)
                           (_K148931148949_)
                           (_else148929148944_)))))
                (if (##pair? _g148926148936_)
                    (let ((_tl148934148963_ (##cdr _g148926148936_))
                          (_hd148933148961_ (##car _g148926148936_)))
                      (let ((_hd148966_ _hd148933148961_)
                            (_rest148968_ _tl148934148963_))
                        (_K148932148958_ _rest148968_ _hd148966_)))
                    (_try-match148928148952_))))))))
    (define gx#stx-for-each2
      (lambda (_f148825_ _xstx148826_ _ystx148827_)
        (if (procedure? _f148825_)
            '#!void
            (error '"expected procedure" _f148825_))
        (let _lp148829_ ((_xrest148831_ _xstx148826_)
                         (_yrest148832_ _ystx148827_))
          (let* ((_g148833148843_ (gx#syntax-e _xrest148831_))
                 (_else148836148851_ (lambda () '#!void)))
            (let ((_K148839148908_
                   (lambda (_xrest148877_ _xhd148878_)
                     (let* ((_g148879148886_ (gx#syntax-e _yrest148832_))
                            (_E148881148890_
                             (lambda ()
                               (error '"No clause matching" _g148879148886_)))
                            (_K148882148896_
                             (lambda (_yrest148893_ _yhd148894_)
                               (_f148825_ _xhd148878_ _yhd148894_)
                               (_lp148829_ _xrest148877_ _yrest148893_))))
                       (if (##pair? _g148879148886_)
                           (let ((_hd148883148899_ (##car _g148879148886_))
                                 (_tl148884148901_ (##cdr _g148879148886_)))
                             (let* ((_yhd148904_ _hd148883148899_)
                                    (_yrest148906_ _tl148884148901_))
                               (_K148882148896_ _yrest148906_ _yhd148904_)))
                           (_E148881148890_)))))
                  (_K148838148871_
                   (lambda ()
                     (let* ((_yrest148855148860_ _yrest148832_)
                            (_E148857148864_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest148855148860_)))
                            (_K148858148868_
                             (lambda ()
                               (_f148825_ _xrest148831_ _yrest148832_))))
                       (if (not (gx#stx-null? _yrest148855148860_))
                           (_K148858148868_)
                           (_E148857148864_))))))
              (let ((_try-match148835148874_
                     (lambda ()
                       (if (not (null? _g148833148843_))
                           (_K148838148871_)
                           (_else148836148851_)))))
                (if (##pair? _g148833148843_)
                    (let ((_tl148841148913_ (##cdr _g148833148843_))
                          (_hd148840148911_ (##car _g148833148843_)))
                      (let ((_xhd148916_ _hd148840148911_)
                            (_xrest148918_ _tl148841148913_))
                        (_K148839148908_ _xrest148918_ _xhd148916_)))
                    (_try-match148835148874_))))))))
    (define gx#stx-map
      (lambda _g153529_
        (let ((_g153528_ (##length _g153529_)))
          (cond ((##fx= _g153528_ 2)
                 (apply (lambda (_f148818_ _stx148819_)
                          (gx#stx-map1 _f148818_ _stx148819_))
                        _g153529_))
                ((##fx= _g153528_ 3)
                 (apply (lambda (_f148821_ _xstx148822_ _ystx148823_)
                          (gx#stx-map2 _f148821_ _xstx148822_ _ystx148823_))
                        _g153529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g153529_))))))
    (define gx#stx-map1
      (lambda (_f148768_ _stx148769_)
        (if (procedure? _f148768_)
            '#!void
            (error '"expected procedure" _f148768_))
        (let _recur148771_ ((_rest148773_ _stx148769_))
          (let* ((_g148774148784_ (gx#syntax-e _rest148773_))
                 (_else148777148792_ (lambda () (_f148768_ _rest148773_))))
            (let ((_K148780148806_
                   (lambda (_rest148803_ _hd148804_)
                     (cons (_f148768_ _hd148804_)
                           (_recur148771_ _rest148803_))))
                  (_K148779148797_ (lambda () '())))
              (let ((_try-match148776148800_
                     (lambda ()
                       (if (##null? _g148774148784_)
                           (_K148779148797_)
                           (_else148777148792_)))))
                (if (##pair? _g148774148784_)
                    (let ((_tl148782148811_ (##cdr _g148774148784_))
                          (_hd148781148809_ (##car _g148774148784_)))
                      (let ((_hd148814_ _hd148781148809_)
                            (_rest148816_ _tl148782148811_))
                        (_K148780148806_ _rest148816_ _hd148814_)))
                    (_try-match148776148800_))))))))
    (define gx#stx-map2
      (lambda (_f148673_ _xstx148674_ _ystx148675_)
        (if (procedure? _f148673_)
            '#!void
            (error '"expected procedure" _f148673_))
        (let _recur148677_ ((_xrest148679_ _xstx148674_)
                            (_yrest148680_ _ystx148675_))
          (let* ((_g148681148691_ (gx#syntax-e _xrest148679_))
                 (_else148684148699_ (lambda () '())))
            (let ((_K148687148756_
                   (lambda (_xrest148725_ _xhd148726_)
                     (let* ((_g148727148734_ (gx#syntax-e _yrest148680_))
                            (_E148729148738_
                             (lambda ()
                               (error '"No clause matching" _g148727148734_)))
                            (_K148730148744_
                             (lambda (_yrest148741_ _yhd148742_)
                               (cons (_f148673_ _xhd148726_ _yhd148742_)
                                     (_recur148677_
                                      _xrest148725_
                                      _yrest148741_)))))
                       (if (##pair? _g148727148734_)
                           (let ((_hd148731148747_ (##car _g148727148734_))
                                 (_tl148732148749_ (##cdr _g148727148734_)))
                             (let* ((_yhd148752_ _hd148731148747_)
                                    (_yrest148754_ _tl148732148749_))
                               (_K148730148744_ _yrest148754_ _yhd148752_)))
                           (_E148729148738_)))))
                  (_K148686148719_
                   (lambda ()
                     (let* ((_yrest148703148708_ _yrest148680_)
                            (_E148705148712_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest148703148708_)))
                            (_K148706148716_
                             (lambda ()
                               (_f148673_ _xrest148679_ _yrest148680_))))
                       (if (not (gx#stx-null? _yrest148703148708_))
                           (_K148706148716_)
                           (_E148705148712_))))))
              (let ((_try-match148683148722_
                     (lambda ()
                       (if (not (null? _g148681148691_))
                           (_K148686148719_)
                           (_else148684148699_)))))
                (if (##pair? _g148681148691_)
                    (let ((_tl148689148761_ (##cdr _g148681148691_))
                          (_hd148688148759_ (##car _g148681148691_)))
                      (let ((_xhd148764_ _hd148688148759_)
                            (_xrest148766_ _tl148689148761_))
                        (_K148687148756_ _xrest148766_ _xhd148764_)))
                    (_try-match148683148722_))))))))
    (define gx#stx-andmap
      (lambda (_f148623_ _stx148624_)
        (if (procedure? _f148623_)
            '#!void
            (error '"expected procedure" _f148623_))
        (let _lp148626_ ((_rest148628_ _stx148624_))
          (let* ((_g148629148639_ (gx#syntax-e _rest148628_))
                 (_else148632148647_ (lambda () (_f148623_ _rest148628_))))
            (let ((_K148635148661_
                   (lambda (_rest148658_ _hd148659_)
                     (if (_f148623_ _hd148659_)
                         (_lp148626_ _rest148658_)
                         '#f)))
                  (_K148634148652_ (lambda () '#t)))
              (let ((_try-match148631148655_
                     (lambda ()
                       (if (##null? _g148629148639_)
                           (_K148634148652_)
                           (_else148632148647_)))))
                (if (##pair? _g148629148639_)
                    (let ((_tl148637148666_ (##cdr _g148629148639_))
                          (_hd148636148664_ (##car _g148629148639_)))
                      (let ((_hd148669_ _hd148636148664_)
                            (_rest148671_ _tl148637148666_))
                        (_K148635148661_ _rest148671_ _hd148669_)))
                    (_try-match148631148655_))))))))
    (define gx#stx-ormap
      (lambda (_f148570_ _stx148571_)
        (if (procedure? _f148570_)
            '#!void
            (error '"expected procedure" _f148570_))
        (let _lp148573_ ((_rest148575_ _stx148571_))
          (let* ((_g148576148586_ (gx#syntax-e _rest148575_))
                 (_else148579148594_ (lambda () (_f148570_ _rest148575_))))
            (let ((_K148582148611_
                   (lambda (_rest148605_ _hd148606_)
                     (let ((_$e148608_ (_f148570_ _hd148606_)))
                       (if _$e148608_ _$e148608_ (_lp148573_ _rest148605_)))))
                  (_K148581148599_ (lambda () '#f)))
              (let ((_try-match148578148602_
                     (lambda ()
                       (if (##null? _g148576148586_)
                           (_K148581148599_)
                           (_else148579148594_)))))
                (if (##pair? _g148576148586_)
                    (let ((_tl148584148616_ (##cdr _g148576148586_))
                          (_hd148583148614_ (##car _g148576148586_)))
                      (let ((_hd148619_ _hd148583148614_)
                            (_rest148621_ _tl148584148616_))
                        (_K148582148611_ _rest148621_ _hd148619_)))
                    (_try-match148578148602_))))))))
    (define gx#stx-foldl
      (lambda (_f148518_ _iv148519_ _stx148520_)
        (if (procedure? _f148518_)
            '#!void
            (error '"expected procedure" _f148518_))
        (let _lp148522_ ((_r148524_ _iv148519_) (_rest148525_ _stx148520_))
          (let* ((_g148526148536_ (gx#syntax-e _rest148525_))
                 (_else148529148544_
                  (lambda () (_f148518_ _rest148525_ _r148524_))))
            (let ((_K148532148558_
                   (lambda (_rest148555_ _hd148556_)
                     (_lp148522_
                      (_f148518_ _hd148556_ _r148524_)
                      _rest148555_)))
                  (_K148531148549_ (lambda () _r148524_)))
              (let ((_try-match148528148552_
                     (lambda ()
                       (if (##null? _g148526148536_)
                           (_K148531148549_)
                           (_else148529148544_)))))
                (if (##pair? _g148526148536_)
                    (let ((_tl148534148563_ (##cdr _g148526148536_))
                          (_hd148533148561_ (##car _g148526148536_)))
                      (let ((_hd148566_ _hd148533148561_)
                            (_rest148568_ _tl148534148563_))
                        (_K148532148558_ _rest148568_ _hd148566_)))
                    (_try-match148528148552_))))))))
    (define gx#stx-foldr
      (lambda (_f148467_ _iv148468_ _stx148469_)
        (if (procedure? _f148467_)
            '#!void
            (error '"expected procedure" _f148467_))
        (let _recur148471_ ((_rest148473_ _stx148469_))
          (let* ((_g148474148484_ (gx#syntax-e _rest148473_))
                 (_else148477148492_
                  (lambda () (_f148467_ _rest148473_ _iv148468_))))
            (let ((_K148480148506_
                   (lambda (_rest148503_ _hd148504_)
                     (_f148467_ _hd148504_ (_recur148471_ _rest148503_))))
                  (_K148479148497_ (lambda () _iv148468_)))
              (let ((_try-match148476148500_
                     (lambda ()
                       (if (##null? _g148474148484_)
                           (_K148479148497_)
                           (_else148477148492_)))))
                (if (##pair? _g148474148484_)
                    (let ((_tl148482148511_ (##cdr _g148474148484_))
                          (_hd148481148509_ (##car _g148474148484_)))
                      (let ((_hd148514_ _hd148481148509_)
                            (_rest148516_ _tl148482148511_))
                        (_K148480148506_ _rest148516_ _hd148514_)))
                    (_try-match148476148500_))))))))
    (define gx#stx-reverse
      (lambda (_stx148465_) (gx#stx-foldl cons '() _stx148465_)))
    (define gx#stx-last
      (lambda (_stx148426_)
        (let _lp148428_ ((_rest148430_ _stx148426_))
          (let* ((_g148431148439_ (gx#syntax-e _rest148430_))
                 (_else148433148447_ (lambda () _rest148430_))
                 (_K148435148453_
                  (lambda (_rest148450_ _hd148451_)
                    (if (gx#stx-null? _rest148450_)
                        _hd148451_
                        (_lp148428_ _rest148450_)))))
            (if (##pair? _g148431148439_)
                (let ((_hd148436148456_ (##car _g148431148439_))
                      (_tl148437148458_ (##cdr _g148431148439_)))
                  (let* ((_hd148461_ _hd148436148456_)
                         (_rest148463_ _tl148437148458_))
                    (_K148435148453_ _rest148463_ _hd148461_)))
                (_else148433148447_))))))
    (define gx#stx-last-pair
      (lambda (_stx148397_)
        (let _lp148399_ ((_hd148401_ _stx148397_))
          (let* ((_g148402148409_ (gx#syntax-e _hd148401_))
                 (_E148404148413_
                  (lambda () (error '"No clause matching" _g148402148409_)))
                 (_K148405148418_
                  (lambda (_rest148416_)
                    (if (gx#stx-pair? _rest148416_)
                        (_lp148399_ _rest148416_)
                        _hd148401_))))
            (if (##pair? _g148402148409_)
                (let* ((_tl148407148421_ (##cdr _g148402148409_))
                       (_rest148424_ _tl148407148421_))
                  (_K148405148418_ _rest148424_))
                (_E148404148413_))))))
    (define gx#stx-list-tail
      (lambda (_stx148366_ _k148367_)
        (let _lp148369_ ((_rest148371_ _stx148366_) (_k148372_ _k148367_))
          (if (fxpositive? _k148372_)
              (let* ((_g148373148380_ (gx#syntax-e _rest148371_))
                     (_E148375148384_
                      (lambda ()
                        (error '"No clause matching" _g148373148380_)))
                     (_K148376148389_
                      (lambda (_rest148387_)
                        (_lp148369_ _rest148387_ (fx- _k148372_ '1)))))
                (if (##pair? _g148373148380_)
                    (let* ((_tl148378148392_ (##cdr _g148373148380_))
                           (_rest148395_ _tl148378148392_))
                      (_K148376148389_ _rest148395_))
                    (_E148375148384_)))
              _rest148371_))))
    (define gx#stx-list-ref
      (lambda (_stx148363_ _k148364_)
        (gx#stx-car (gx#stx-list-tail _stx148363_ _k148364_))))
    (define gx#stx-plist?__%
      (lambda (_stx148275_ _key?148276_)
        (if (procedure? _key?148276_)
            '#!void
            (error '"expected procedure" _key?148276_))
        (let _lp148278_ ((_rest148280_ _stx148275_))
          (let* ((_g148281148291_ (gx#stx-e _rest148280_))
                 (_else148284148299_ (lambda () '#f)))
            (let ((_K148287148341_
                   (lambda (_rest148310_ _hd148311_)
                     (if (_key?148276_ _hd148311_)
                         (let* ((_g148312148320_ (gx#stx-e _rest148310_))
                                (_else148314148328_ (lambda () '#f))
                                (_K148316148333_
                                 (lambda (_rest148331_)
                                   (_lp148278_ _rest148331_))))
                           (if (##pair? _g148312148320_)
                               (let* ((_tl148318148336_
                                       (##cdr _g148312148320_))
                                      (_rest148339_ _tl148318148336_))
                                 (_lp148278_ _rest148339_))
                               (_else148314148328_)))
                         '#f)))
                  (_K148286148304_ (lambda () '#t)))
              (let ((_try-match148283148307_
                     (lambda ()
                       (if (##null? _g148281148291_)
                           (_K148286148304_)
                           (_else148284148299_)))))
                (if (##pair? _g148281148291_)
                    (let ((_tl148289148346_ (##cdr _g148281148291_))
                          (_hd148288148344_ (##car _g148281148291_)))
                      (let ((_hd148349_ _hd148288148344_)
                            (_rest148351_ _tl148289148346_))
                        (_K148287148341_ _rest148351_ _hd148349_)))
                    (_try-match148283148307_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx148356_)
        (let ((_key?148358_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx148356_ _key?148358_))))
    (define gx#stx-plist?
      (lambda _g153531_
        (let ((_g153530_ (##length _g153531_)))
          (cond ((##fx= _g153530_ 1)
                 (apply (lambda (_stx148356_) (gx#stx-plist?__0 _stx148356_))
                        _g153531_))
                ((##fx= _g153530_ 2)
                 (apply (lambda (_stx148360_ _key?148361_)
                          (gx#stx-plist?__% _stx148360_ _key?148361_))
                        _g153531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g153531_))))))
    (define gx#stx-getq__%
      (lambda (_key148193_ _stx148194_ _key=?148195_)
        (if (procedure? _key=?148195_)
            '#!void
            (error '"expected procedure" _key=?148195_))
        (let _lp148197_ ((_rest148199_ _stx148194_))
          (let* ((_g148200148208_ (gx#syntax-e _rest148199_))
                 (_else148202148216_ (lambda () '#f))
                 (_K148204148250_
                  (lambda (_rest148219_ _hd148220_)
                    (let* ((_g148221148228_ (gx#syntax-e _rest148219_))
                           (_E148223148232_
                            (lambda ()
                              (error '"No clause matching" _g148221148228_)))
                           (_K148224148238_
                            (lambda (_rest148235_ _val148236_)
                              (if (_key=?148195_ _hd148220_ _key148193_)
                                  _val148236_
                                  (_lp148197_ _rest148235_)))))
                      (if (##pair? _g148221148228_)
                          (let ((_hd148225148241_ (##car _g148221148228_))
                                (_tl148226148243_ (##cdr _g148221148228_)))
                            (let* ((_val148246_ _hd148225148241_)
                                   (_rest148248_ _tl148226148243_))
                              (_K148224148238_ _rest148248_ _val148246_)))
                          (_E148223148232_))))))
            (if (##pair? _g148200148208_)
                (let ((_hd148205148253_ (##car _g148200148208_))
                      (_tl148206148255_ (##cdr _g148200148208_)))
                  (let* ((_hd148258_ _hd148205148253_)
                         (_rest148260_ _tl148206148255_))
                    (_K148204148250_ _rest148260_ _hd148258_)))
                (_else148202148216_))))))
    (define gx#stx-getq__0
      (lambda (_key148265_ _stx148266_)
        (let ((_key=?148268_ gx#stx-eq?))
          (gx#stx-getq__% _key148265_ _stx148266_ _key=?148268_))))
    (define gx#stx-getq
      (lambda _g153533_
        (let ((_g153532_ (##length _g153533_)))
          (cond ((##fx= _g153532_ 2)
                 (apply (lambda (_key148265_ _stx148266_)
                          (gx#stx-getq__0 _key148265_ _stx148266_))
                        _g153533_))
                ((##fx= _g153532_ 3)
                 (apply (lambda (_key148270_ _stx148271_ _key=?148272_)
                          (gx#stx-getq__%
                           _key148270_
                           _stx148271_
                           _key=?148272_))
                        _g153533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g153533_))))))))
