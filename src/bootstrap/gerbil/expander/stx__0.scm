(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707556026)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-struct-type
       'gx#identifier-wrap::t
       'syntax
       gx#AST::t
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args131211_
        (apply make-struct-instance gx#identifier-wrap::t _$args131211_)))
    (define gx#identifier-wrap-marks
      (make-struct-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (make-struct-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (make-struct-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (make-struct-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (make-struct-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (make-struct-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (make-struct-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (make-struct-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (make-struct-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (make-struct-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (make-struct-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (make-struct-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (make-struct-type
       'gx#syntax-wrap::t
       'syntax
       gx#AST::t
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args131208_
        (apply make-struct-instance gx#syntax-wrap::t _$args131208_)))
    (define gx#syntax-wrap-mark
      (make-struct-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (make-struct-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (make-struct-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (make-struct-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (make-struct-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (make-struct-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (make-struct-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (make-struct-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (make-struct-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (make-struct-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (make-struct-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (make-struct-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (make-struct-type
       'gx#syntax-quote::t
       'syntax
       gx#AST::t
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args131205_
        (apply make-struct-instance gx#syntax-quote::t _$args131205_)))
    (define gx#syntax-quote-context
      (make-struct-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (make-struct-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (make-struct-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (make-struct-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (make-struct-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (make-struct-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (make-struct-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_stx131203_) (symbol? (gx#stx-e _stx131203_))))
    (define gx#identifier-quote?
      (lambda (_stx131201_)
        (if (##structure-direct-instance-of? _stx131201_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx131201_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx131199_)
        (if (##structure-direct-instance-of? _stx131199_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx131199_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx131199_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx131197_)
        (if (##structure-direct-instance-of? _stx131197_ 'gx#syntax-quote::t)
            _stx131197_
            (if (##structure-direct-instance-of?
                 _stx131197_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx131197_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx131180_)
        (if (##structure-direct-instance-of? _stx131180_ 'gx#syntax-wrap::t)
            (let _lp131182_ ((_e131184_
                              (##unchecked-structure-ref
                               _stx131180_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks131185_
                              (cons (##unchecked-structure-ref
                                     _stx131180_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e131184_)
                  (let ((_$e131187_ (##type-id (##structure-type _e131184_))))
                    (if (eq? 'gx#syntax-wrap::t _$e131187_)
                        (_lp131182_
                         (##unchecked-structure-ref _e131184_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e131184_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks131185_))
                        (if (or (eq? 'gx#syntax-quote::t _$e131187_)
                                (eq? 'gx#identifier-wrap::t _$e131187_))
                            (##unchecked-structure-ref
                             _e131184_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e131187_)
                                (_lp131182_
                                 (##unchecked-structure-ref
                                  _e131184_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks131185_)
                                _e131184_))))
                  (if (null? _marks131185_)
                      _e131184_
                      (if (pair? _e131184_)
                          (cons (gx#stx-wrap (car _e131184_) _marks131185_)
                                (gx#stx-wrap (cdr _e131184_) _marks131185_))
                          (if (vector? _e131184_)
                              (vector-map
                               (lambda (_g131192131194_)
                                 (gx#stx-wrap _g131192131194_ _marks131185_))
                               _e131184_)
                              (if (box? _e131184_)
                                  (box (gx#stx-wrap
                                        (unbox _e131184_)
                                        _marks131185_))
                                  _e131184_))))))
            (if (##structure-instance-of? _stx131180_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131180_ '1 gx#AST::t '#f)
                _stx131180_))))
    (define gx#syntax->datum
      (lambda (_stx131178_)
        (if (##structure-instance-of? _stx131178_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx131178_ '1 gx#AST::t '#f))
            (if (pair? _stx131178_)
                (cons (gx#syntax->datum (car _stx131178_))
                      (gx#syntax->datum (cdr _stx131178_)))
                (if (vector? _stx131178_)
                    (vector-map gx#syntax->datum _stx131178_)
                    (if (box? _stx131178_)
                        (box (gx#syntax->datum (unbox _stx131178_)))
                        _stx131178_))))))
    (define gx#datum->syntax__%
      (lambda (_stx131121_ _datum131122_ _src131123_ _quote?131124_)
        (letrec ((_wrap-datum131126_
                  (lambda (_e131150_ _marks131151_)
                    (_wrap-inner131128_
                     _e131150_
                     (lambda (_g131152131154_)
                       (##structure
                        gx#identifier-wrap::t
                        _g131152131154_
                        _src131123_
                        _marks131151_)))))
                 (_wrap-quote131127_
                  (lambda (_e131142_ _ctx131143_ _marks131144_)
                    (_wrap-inner131128_
                     _e131142_
                     (lambda (_g131145131147_)
                       (##structure
                        gx#syntax-quote::t
                        _g131145131147_
                        _src131123_
                        _ctx131143_
                        _marks131144_)))))
                 (_wrap-inner131128_
                  (lambda (_e131135_ _wrap-e131136_)
                    (let _recur131138_ ((_e131140_ _e131135_))
                      (if (symbol? _e131140_)
                          (_wrap-e131136_ _e131140_)
                          (if (pair? _e131140_)
                              (cons (_recur131138_ (car _e131140_))
                                    (_recur131138_ (cdr _e131140_)))
                              (if (vector? _e131140_)
                                  (vector-map _recur131138_ _e131140_)
                                  (if (box? _e131140_)
                                      (box (_recur131138_ (unbox _e131140_)))
                                      _e131140_)))))))
                 (_wrap-outer131129_
                  (lambda (_e131133_)
                    (if (##structure-instance-of? _e131133_ 'gerbil#AST::t)
                        _e131133_
                        (##structure gx#AST::t _e131133_ _src131123_)))))
          (if (##structure-instance-of? _datum131122_ 'gerbil#AST::t)
              _datum131122_
              (if (not _stx131121_)
                  (##structure gx#AST::t _datum131122_ _src131123_)
                  (if (gx#identifier? _stx131121_)
                      (let ((_stx131131_ (gx#stx-unwrap__0 _stx131121_)))
                        (_wrap-outer131129_
                         (if (##structure-direct-instance-of?
                              _stx131131_
                              'gx#syntax-quote::t)
                             (if _quote?131124_
                                 (_wrap-quote131127_
                                  _datum131122_
                                  (##unchecked-structure-ref
                                   _stx131131_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx131131_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum131126_
                                  _datum131122_
                                  (##unchecked-structure-ref
                                   _stx131131_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum131126_
                              _datum131122_
                              (##unchecked-structure-ref
                               _stx131131_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx131121_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx131160_ _datum131161_)
        (let* ((_src131163_ '#f) (_quote?131165_ '#t))
          (gx#datum->syntax__%
           _stx131160_
           _datum131161_
           _src131163_
           _quote?131165_))))
    (define gx#datum->syntax__1
      (lambda (_stx131167_ _datum131168_ _src131169_)
        (let ((_quote?131171_ '#t))
          (gx#datum->syntax__%
           _stx131167_
           _datum131168_
           _src131169_
           _quote?131171_))))
    (define gx#datum->syntax
      (lambda _g135486_
        (let ((_g135485_ (##length _g135486_)))
          (cond ((##fx= _g135485_ 2)
                 (apply (lambda (_stx131160_ _datum131161_)
                          (gx#datum->syntax__0 _stx131160_ _datum131161_))
                        _g135486_))
                ((##fx= _g135485_ 3)
                 (apply (lambda (_stx131167_ _datum131168_ _src131169_)
                          (gx#datum->syntax__1
                           _stx131167_
                           _datum131168_
                           _src131169_))
                        _g135486_))
                ((##fx= _g135485_ 4)
                 (apply (lambda (_stx131173_
                                 _datum131174_
                                 _src131175_
                                 _quote?131176_)
                          (gx#datum->syntax__%
                           _stx131173_
                           _datum131174_
                           _src131175_
                           _quote?131176_))
                        _g135486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g135486_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx131097_ _marks131098_)
        (let _lp131100_ ((_e131102_ _stx131097_)
                         (_marks131103_ _marks131098_)
                         (_src131104_ (gx#stx-source _stx131097_)))
          (if (##structure-direct-instance-of? _e131102_ 'gx#syntax-wrap::t)
              (_lp131100_
               (##unchecked-structure-ref _e131102_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e131102_ '3 gx#syntax-wrap::t '#f)
                _marks131103_)
               (##unchecked-structure-ref _e131102_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e131102_
                   'gx#identifier-wrap::t)
                  (if (null? _marks131103_)
                      _e131102_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e131102_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e131102_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e131102_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks131103_)))
                  (if (##structure-direct-instance-of?
                       _e131102_
                       'gx#syntax-quote::t)
                      _e131102_
                      (if (##structure-instance-of? _e131102_ 'gerbil#AST::t)
                          (_lp131100_
                           (##unchecked-structure-ref
                            _e131102_
                            '1
                            gx#AST::t
                            '#f)
                           _marks131103_
                           (##unchecked-structure-ref
                            _e131102_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e131102_)
                              (##structure
                               gx#identifier-wrap::t
                               _e131102_
                               _src131104_
                               (reverse _marks131103_))
                              (if (null? _marks131103_)
                                  _e131102_
                                  (if (pair? _e131102_)
                                      (cons (gx#stx-wrap
                                             (car _e131102_)
                                             _marks131103_)
                                            (gx#stx-wrap
                                             (cdr _e131102_)
                                             _marks131103_))
                                      (if (vector? _e131102_)
                                          (vector-map
                                           (lambda (_g131105131107_)
                                             (gx#stx-wrap
                                              _g131105131107_
                                              _marks131103_))
                                           _e131102_)
                                          (if (box? _e131102_)
                                              (box (gx#stx-wrap
                                                    (unbox _e131102_)
                                                    _marks131103_))
                                              _e131102_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx131113_)
        (let ((_marks131115_ '()))
          (gx#stx-unwrap__% _stx131113_ _marks131115_))))
    (define gx#stx-unwrap
      (lambda _g135488_
        (let ((_g135487_ (##length _g135488_)))
          (cond ((##fx= _g135487_ 1)
                 (apply (lambda (_stx131113_) (gx#stx-unwrap__0 _stx131113_))
                        _g135488_))
                ((##fx= _g135487_ 2)
                 (apply (lambda (_stx131117_ _marks131118_)
                          (gx#stx-unwrap__% _stx131117_ _marks131118_))
                        _g135488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g135488_))))))
    (define gx#stx-wrap
      (lambda (_stx131090_ _marks131091_)
        (foldl1 (lambda (_mark131093_ _stx131094_)
                  (gx#stx-apply-mark _stx131094_ _mark131093_))
                _stx131090_
                _marks131091_)))
    (define gx#stx-rewrap
      (lambda (_stx131084_ _marks131085_)
        (foldr1 (lambda (_mark131087_ _stx131088_)
                  (gx#stx-apply-mark _stx131088_ _mark131087_))
                _stx131084_
                _marks131085_)))
    (define gx#stx-apply-mark
      (lambda (_stx131081_ _mark131082_)
        (if (##structure-direct-instance-of? _stx131081_ 'gx#syntax-quote::t)
            _stx131081_
            (if (and (##structure-direct-instance-of?
                      _stx131081_
                      'gx#syntax-wrap::t)
                     (eq? _mark131082_
                          (##unchecked-structure-ref
                           _stx131081_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx131081_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx131081_
                 (gx#stx-source _stx131081_)
                 _mark131082_)))))
    (define gx#apply-mark
      (lambda (_mark131045_ _marks131046_)
        (let* ((_marks131047131055_ _marks131046_)
               (_else131049131063_
                (lambda () (cons _mark131045_ _marks131046_)))
               (_K131051131069_
                (lambda (_rest131066_ _hd131067_)
                  (if (eq? _mark131045_ _hd131067_)
                      _rest131066_
                      (cons _mark131045_ _marks131046_)))))
          (if (##pair? _marks131047131055_)
              (let ((_hd131052131072_ (##car _marks131047131055_))
                    (_tl131053131074_ (##cdr _marks131047131055_)))
                (let* ((_hd131077_ _hd131052131072_)
                       (_rest131079_ _tl131053131074_))
                  (_K131051131069_ _rest131079_ _hd131077_)))
              (_else131049131063_)))))
    (define gx#stx-e
      (lambda (_stx131043_)
        (if (##structure-direct-instance-of? _stx131043_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx131043_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx131043_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131043_ '1 gx#AST::t '#f)
                _stx131043_))))
    (define gx#stx-source
      (lambda (_stx131041_)
        (if (##structure-instance-of? _stx131041_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx131041_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx131035_ _src131036_)
        (if (or (##structure-instance-of? _stx131035_ 'gerbil#AST::t)
                (not _src131036_))
            _stx131035_
            (##structure gx#AST::t _stx131035_ _src131036_))))
    (define gx#stx-datum?
      (lambda (_stx131033_) (gx#self-quoting? (gx#stx-e _stx131033_))))
    (define gx#self-quoting?
      (lambda (_x131016_)
        (let ((_$e131018_ (immediate? _x131016_)))
          (if _$e131018_
              _$e131018_
              (let ((_$e131021_ (number? _x131016_)))
                (if _$e131021_
                    _$e131021_
                    (let ((_$e131024_ (keyword? _x131016_)))
                      (if _$e131024_
                          _$e131024_
                          (let ((_$e131027_ (string? _x131016_)))
                            (if _$e131027_
                                _$e131027_
                                (let ((_$e131030_ (vector? _x131016_)))
                                  (if _$e131030_
                                      _$e131030_
                                      (u8vector? _x131016_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e131014_) (boolean? (gx#stx-e _e131014_))))
    (define gx#stx-keyword?
      (lambda (_e131012_) (keyword? (gx#stx-e _e131012_))))
    (define gx#stx-char? (lambda (_e131010_) (char? (gx#stx-e _e131010_))))
    (define gx#stx-number? (lambda (_e131008_) (number? (gx#stx-e _e131008_))))
    (define gx#stx-fixnum? (lambda (_e131006_) (fixnum? (gx#stx-e _e131006_))))
    (define gx#stx-string? (lambda (_e131004_) (string? (gx#stx-e _e131004_))))
    (define gx#stx-null? (lambda (_e131002_) (null? (gx#stx-e _e131002_))))
    (define gx#stx-pair? (lambda (_e131000_) (pair? (gx#stx-e _e131000_))))
    (define gx#stx-list?
      (lambda (_e130962_)
        (let* ((_g130963130972_ (gx#stx-e _e130962_))
               (_E130966130976_
                (lambda () (error '"No clause matching" _g130963130972_))))
          (let ((_K130968130992_
                 (lambda (_rest130990_) (gx#stx-list? _rest130990_)))
                (_K130967130982_ (lambda (_tail130980_) (null? _tail130980_))))
            (if (##pair? _g130963130972_)
                (let* ((_tl130970130995_ (##cdr _g130963130972_))
                       (_rest130998_ _tl130970130995_))
                  (gx#stx-list? _rest130998_))
                (let ((_tail130985_ _g130963130972_))
                  (null? _tail130985_)))))))
    (define gx#stx-pair/null?
      (lambda (_e130955_)
        (let* ((_e130957_ (gx#stx-e _e130955_)) (_$e130959_ (pair? _e130957_)))
          (if _$e130959_ _$e130959_ (null? _e130957_)))))
    (define gx#stx-vector? (lambda (_e130953_) (vector? (gx#stx-e _e130953_))))
    (define gx#stx-box? (lambda (_e130951_) (box? (gx#stx-e _e130951_))))
    (define gx#stx-eq?
      (lambda (_x130948_ _y130949_)
        (eq? (gx#stx-e _x130948_) (gx#stx-e _y130949_))))
    (define gx#stx-eqv?
      (lambda (_x130945_ _y130946_)
        (eqv? (gx#stx-e _x130945_) (gx#stx-e _y130946_))))
    (define gx#stx-equal?
      (lambda (_x130942_ _y130943_)
        (equal? (gx#stx-e _x130942_) (gx#stx-e _y130943_))))
    (define gx#stx-false? (lambda (_x130940_) (not (gx#stx-e _x130940_))))
    (define gx#stx-identifier
      (lambda (_template130937_ . _args130938_)
        (gx#datum->syntax__1
         _template130937_
         (apply make-symbol (gx#syntax->datum _args130938_))
         (gx#stx-source _template130937_))))
    (define gx#stx-identifier-marks
      (lambda (_stx130935_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx130935_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx130933_)
        (if (##structure-direct-instance-of?
             _stx130933_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx130933_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx130933_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx130933_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx130933_)))))
    (define gx#stx-identifier-context
      (lambda (_stx130929_)
        (let ((_stx130931_ (gx#stx-unwrap__0 _stx130929_)))
          (if (gx#identifier-quote? _stx130931_)
              (##unchecked-structure-ref _stx130931_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx130884_)
        (let* ((_g130885130895_ (gx#stx-e _stx130884_))
               (_else130888130903_ (lambda () '#f)))
          (let ((_K130891130917_
                 (lambda (_rest130914_ _hd130915_)
                   (if (gx#identifier? _hd130915_)
                       (gx#identifier-list? _rest130914_)
                       '#f)))
                (_K130890130908_ (lambda () '#t)))
            (let ((_try-match130887130911_
                   (lambda ()
                     (if (##null? _g130885130895_)
                         (_K130890130908_)
                         (_else130888130903_)))))
              (if (##pair? _g130885130895_)
                  (let ((_tl130893130922_ (##cdr _g130885130895_))
                        (_hd130892130920_ (##car _g130885130895_)))
                    (let ((_hd130925_ _hd130892130920_)
                          (_rest130927_ _tl130893130922_))
                      (_K130891130917_ _rest130927_ _hd130925_)))
                  (_try-match130887130911_)))))))
    (define gx#genident__%
      (lambda (_e130861_ _src130862_)
        (gx#stx-wrap-source
         (gensym (let ((_e130864_ (gx#stx-e _e130861_)))
                   (if (interned-symbol? _e130864_) _e130864_ 'g)))
         (let ((_$e130866_ (gx#stx-source _e130861_)))
           (if _$e130866_ _$e130866_ _src130862_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e130873_ 'g) (_src130875_ '#f))
          (gx#genident__% _e130873_ _src130875_))))
    (define gx#genident__1
      (lambda (_e130877_)
        (let ((_src130879_ '#f)) (gx#genident__% _e130877_ _src130879_))))
    (define gx#genident
      (lambda _g135490_
        (let ((_g135489_ (##length _g135490_)))
          (cond ((##fx= _g135489_ 0)
                 (apply (lambda () (gx#genident__0)) _g135490_))
                ((##fx= _g135489_ 1)
                 (apply (lambda (_e130877_) (gx#genident__1 _e130877_))
                        _g135490_))
                ((##fx= _g135489_ 2)
                 (apply (lambda (_e130881_ _src130882_)
                          (gx#genident__% _e130881_ _src130882_))
                        _g135490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g135490_))))))
    (define gx#gentemps
      (lambda (_stx-lst130858_) (gx#stx-map1 gx#genident _stx-lst130858_)))
    (define gx#syntax->list
      (lambda (_stx130856_) (gx#stx-map1 values _stx130856_)))
    (define gx#stx-car
      (lambda (_stx130853_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx130853_)))))
    (define gx#stx-cdr
      (lambda (_stx130850_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx130850_)))))
    (define gx#stx-length
      (lambda (_stx130815_)
        (let _lp130817_ ((_rest130819_ _stx130815_) (_n130820_ '0))
          (let* ((_g130821130829_ (gx#stx-e _rest130819_))
                 (_else130823130837_ (lambda () _n130820_))
                 (_K130825130842_
                  (lambda (_rest130840_)
                    (_lp130817_ _rest130840_ (fx+ _n130820_ '1)))))
            (if (##pair? _g130821130829_)
                (let* ((_tl130827130845_ (##cdr _g130821130829_))
                       (_rest130848_ _tl130827130845_))
                  (_K130825130842_ _rest130848_))
                (_else130823130837_))))))
    (define gx#stx-for-each
      (lambda _g135492_
        (let ((_g135491_ (##length _g135492_)))
          (cond ((##fx= _g135491_ 2)
                 (apply (lambda (_f130808_ _stx130809_)
                          (gx#stx-for-each1 _f130808_ _stx130809_))
                        _g135492_))
                ((##fx= _g135491_ 3)
                 (apply (lambda (_f130811_ _xstx130812_ _ystx130813_)
                          (gx#stx-for-each2
                           _f130811_
                           _xstx130812_
                           _ystx130813_))
                        _g135492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g135492_))))))
    (define gx#stx-for-each1
      (lambda (_f130758_ _stx130759_)
        (if (procedure? _f130758_)
            '#!void
            (error '"expected procedure" _f130758_))
        (let _lp130761_ ((_rest130763_ _stx130759_))
          (let* ((_g130764130774_ (gx#syntax-e _rest130763_))
                 (_else130767130782_ (lambda () (_f130758_ _rest130763_))))
            (let ((_K130770130796_
                   (lambda (_rest130793_ _hd130794_)
                     (_f130758_ _hd130794_)
                     (_lp130761_ _rest130793_)))
                  (_K130769130787_ (lambda () '#!void)))
              (let ((_try-match130766130790_
                     (lambda ()
                       (if (##null? _g130764130774_)
                           (_K130769130787_)
                           (_else130767130782_)))))
                (if (##pair? _g130764130774_)
                    (let ((_tl130772130801_ (##cdr _g130764130774_))
                          (_hd130771130799_ (##car _g130764130774_)))
                      (let ((_hd130804_ _hd130771130799_)
                            (_rest130806_ _tl130772130801_))
                        (_K130770130796_ _rest130806_ _hd130804_)))
                    (_try-match130766130790_))))))))
    (define gx#stx-for-each2
      (lambda (_f130663_ _xstx130664_ _ystx130665_)
        (if (procedure? _f130663_)
            '#!void
            (error '"expected procedure" _f130663_))
        (let _lp130667_ ((_xrest130669_ _xstx130664_)
                         (_yrest130670_ _ystx130665_))
          (let* ((_g130671130681_ (gx#syntax-e _xrest130669_))
                 (_else130674130689_ (lambda () '#!void)))
            (let ((_K130677130746_
                   (lambda (_xrest130715_ _xhd130716_)
                     (let* ((_g130717130724_ (gx#syntax-e _yrest130670_))
                            (_E130719130728_
                             (lambda ()
                               (error '"No clause matching" _g130717130724_)))
                            (_K130720130734_
                             (lambda (_yrest130731_ _yhd130732_)
                               (_f130663_ _xhd130716_ _yhd130732_)
                               (_lp130667_ _xrest130715_ _yrest130731_))))
                       (if (##pair? _g130717130724_)
                           (let ((_hd130721130737_ (##car _g130717130724_))
                                 (_tl130722130739_ (##cdr _g130717130724_)))
                             (let* ((_yhd130742_ _hd130721130737_)
                                    (_yrest130744_ _tl130722130739_))
                               (_K130720130734_ _yrest130744_ _yhd130742_)))
                           (_E130719130728_)))))
                  (_K130676130709_
                   (lambda ()
                     (let* ((_yrest130693130698_ _yrest130670_)
                            (_E130695130702_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130693130698_)))
                            (_K130696130706_
                             (lambda ()
                               (_f130663_ _xrest130669_ _yrest130670_))))
                       (if (not (gx#stx-null? _yrest130693130698_))
                           (_K130696130706_)
                           (_E130695130702_))))))
              (let ((_try-match130673130712_
                     (lambda ()
                       (if (not (null? _g130671130681_))
                           (_K130676130709_)
                           (_else130674130689_)))))
                (if (##pair? _g130671130681_)
                    (let ((_tl130679130751_ (##cdr _g130671130681_))
                          (_hd130678130749_ (##car _g130671130681_)))
                      (let ((_xhd130754_ _hd130678130749_)
                            (_xrest130756_ _tl130679130751_))
                        (_K130677130746_ _xrest130756_ _xhd130754_)))
                    (_try-match130673130712_))))))))
    (define gx#stx-map
      (lambda _g135494_
        (let ((_g135493_ (##length _g135494_)))
          (cond ((##fx= _g135493_ 2)
                 (apply (lambda (_f130656_ _stx130657_)
                          (gx#stx-map1 _f130656_ _stx130657_))
                        _g135494_))
                ((##fx= _g135493_ 3)
                 (apply (lambda (_f130659_ _xstx130660_ _ystx130661_)
                          (gx#stx-map2 _f130659_ _xstx130660_ _ystx130661_))
                        _g135494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g135494_))))))
    (define gx#stx-map1
      (lambda (_f130606_ _stx130607_)
        (if (procedure? _f130606_)
            '#!void
            (error '"expected procedure" _f130606_))
        (let _recur130609_ ((_rest130611_ _stx130607_))
          (let* ((_g130612130622_ (gx#syntax-e _rest130611_))
                 (_else130615130630_ (lambda () (_f130606_ _rest130611_))))
            (let ((_K130618130644_
                   (lambda (_rest130641_ _hd130642_)
                     (cons (_f130606_ _hd130642_)
                           (_recur130609_ _rest130641_))))
                  (_K130617130635_ (lambda () '())))
              (let ((_try-match130614130638_
                     (lambda ()
                       (if (##null? _g130612130622_)
                           (_K130617130635_)
                           (_else130615130630_)))))
                (if (##pair? _g130612130622_)
                    (let ((_tl130620130649_ (##cdr _g130612130622_))
                          (_hd130619130647_ (##car _g130612130622_)))
                      (let ((_hd130652_ _hd130619130647_)
                            (_rest130654_ _tl130620130649_))
                        (_K130618130644_ _rest130654_ _hd130652_)))
                    (_try-match130614130638_))))))))
    (define gx#stx-map2
      (lambda (_f130511_ _xstx130512_ _ystx130513_)
        (if (procedure? _f130511_)
            '#!void
            (error '"expected procedure" _f130511_))
        (let _recur130515_ ((_xrest130517_ _xstx130512_)
                            (_yrest130518_ _ystx130513_))
          (let* ((_g130519130529_ (gx#syntax-e _xrest130517_))
                 (_else130522130537_ (lambda () '())))
            (let ((_K130525130594_
                   (lambda (_xrest130563_ _xhd130564_)
                     (let* ((_g130565130572_ (gx#syntax-e _yrest130518_))
                            (_E130567130576_
                             (lambda ()
                               (error '"No clause matching" _g130565130572_)))
                            (_K130568130582_
                             (lambda (_yrest130579_ _yhd130580_)
                               (cons (_f130511_ _xhd130564_ _yhd130580_)
                                     (_recur130515_
                                      _xrest130563_
                                      _yrest130579_)))))
                       (if (##pair? _g130565130572_)
                           (let ((_hd130569130585_ (##car _g130565130572_))
                                 (_tl130570130587_ (##cdr _g130565130572_)))
                             (let* ((_yhd130590_ _hd130569130585_)
                                    (_yrest130592_ _tl130570130587_))
                               (_K130568130582_ _yrest130592_ _yhd130590_)))
                           (_E130567130576_)))))
                  (_K130524130557_
                   (lambda ()
                     (let* ((_yrest130541130546_ _yrest130518_)
                            (_E130543130550_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130541130546_)))
                            (_K130544130554_
                             (lambda ()
                               (_f130511_ _xrest130517_ _yrest130518_))))
                       (if (not (gx#stx-null? _yrest130541130546_))
                           (_K130544130554_)
                           (_E130543130550_))))))
              (let ((_try-match130521130560_
                     (lambda ()
                       (if (not (null? _g130519130529_))
                           (_K130524130557_)
                           (_else130522130537_)))))
                (if (##pair? _g130519130529_)
                    (let ((_tl130527130599_ (##cdr _g130519130529_))
                          (_hd130526130597_ (##car _g130519130529_)))
                      (let ((_xhd130602_ _hd130526130597_)
                            (_xrest130604_ _tl130527130599_))
                        (_K130525130594_ _xrest130604_ _xhd130602_)))
                    (_try-match130521130560_))))))))
    (define gx#stx-andmap
      (lambda (_f130461_ _stx130462_)
        (if (procedure? _f130461_)
            '#!void
            (error '"expected procedure" _f130461_))
        (let _lp130464_ ((_rest130466_ _stx130462_))
          (let* ((_g130467130477_ (gx#syntax-e _rest130466_))
                 (_else130470130485_ (lambda () (_f130461_ _rest130466_))))
            (let ((_K130473130499_
                   (lambda (_rest130496_ _hd130497_)
                     (if (_f130461_ _hd130497_)
                         (_lp130464_ _rest130496_)
                         '#f)))
                  (_K130472130490_ (lambda () '#t)))
              (let ((_try-match130469130493_
                     (lambda ()
                       (if (##null? _g130467130477_)
                           (_K130472130490_)
                           (_else130470130485_)))))
                (if (##pair? _g130467130477_)
                    (let ((_tl130475130504_ (##cdr _g130467130477_))
                          (_hd130474130502_ (##car _g130467130477_)))
                      (let ((_hd130507_ _hd130474130502_)
                            (_rest130509_ _tl130475130504_))
                        (_K130473130499_ _rest130509_ _hd130507_)))
                    (_try-match130469130493_))))))))
    (define gx#stx-ormap
      (lambda (_f130408_ _stx130409_)
        (if (procedure? _f130408_)
            '#!void
            (error '"expected procedure" _f130408_))
        (let _lp130411_ ((_rest130413_ _stx130409_))
          (let* ((_g130414130424_ (gx#syntax-e _rest130413_))
                 (_else130417130432_ (lambda () (_f130408_ _rest130413_))))
            (let ((_K130420130449_
                   (lambda (_rest130443_ _hd130444_)
                     (let ((_$e130446_ (_f130408_ _hd130444_)))
                       (if _$e130446_ _$e130446_ (_lp130411_ _rest130443_)))))
                  (_K130419130437_ (lambda () '#f)))
              (let ((_try-match130416130440_
                     (lambda ()
                       (if (##null? _g130414130424_)
                           (_K130419130437_)
                           (_else130417130432_)))))
                (if (##pair? _g130414130424_)
                    (let ((_tl130422130454_ (##cdr _g130414130424_))
                          (_hd130421130452_ (##car _g130414130424_)))
                      (let ((_hd130457_ _hd130421130452_)
                            (_rest130459_ _tl130422130454_))
                        (_K130420130449_ _rest130459_ _hd130457_)))
                    (_try-match130416130440_))))))))
    (define gx#stx-foldl
      (lambda (_f130356_ _iv130357_ _stx130358_)
        (if (procedure? _f130356_)
            '#!void
            (error '"expected procedure" _f130356_))
        (let _lp130360_ ((_r130362_ _iv130357_) (_rest130363_ _stx130358_))
          (let* ((_g130364130374_ (gx#syntax-e _rest130363_))
                 (_else130367130382_
                  (lambda () (_f130356_ _rest130363_ _r130362_))))
            (let ((_K130370130396_
                   (lambda (_rest130393_ _hd130394_)
                     (_lp130360_
                      (_f130356_ _hd130394_ _r130362_)
                      _rest130393_)))
                  (_K130369130387_ (lambda () _r130362_)))
              (let ((_try-match130366130390_
                     (lambda ()
                       (if (##null? _g130364130374_)
                           (_K130369130387_)
                           (_else130367130382_)))))
                (if (##pair? _g130364130374_)
                    (let ((_tl130372130401_ (##cdr _g130364130374_))
                          (_hd130371130399_ (##car _g130364130374_)))
                      (let ((_hd130404_ _hd130371130399_)
                            (_rest130406_ _tl130372130401_))
                        (_K130370130396_ _rest130406_ _hd130404_)))
                    (_try-match130366130390_))))))))
    (define gx#stx-foldr
      (lambda (_f130305_ _iv130306_ _stx130307_)
        (if (procedure? _f130305_)
            '#!void
            (error '"expected procedure" _f130305_))
        (let _recur130309_ ((_rest130311_ _stx130307_))
          (let* ((_g130312130322_ (gx#syntax-e _rest130311_))
                 (_else130315130330_
                  (lambda () (_f130305_ _rest130311_ _iv130306_))))
            (let ((_K130318130344_
                   (lambda (_rest130341_ _hd130342_)
                     (_f130305_ _hd130342_ (_recur130309_ _rest130341_))))
                  (_K130317130335_ (lambda () _iv130306_)))
              (let ((_try-match130314130338_
                     (lambda ()
                       (if (##null? _g130312130322_)
                           (_K130317130335_)
                           (_else130315130330_)))))
                (if (##pair? _g130312130322_)
                    (let ((_tl130320130349_ (##cdr _g130312130322_))
                          (_hd130319130347_ (##car _g130312130322_)))
                      (let ((_hd130352_ _hd130319130347_)
                            (_rest130354_ _tl130320130349_))
                        (_K130318130344_ _rest130354_ _hd130352_)))
                    (_try-match130314130338_))))))))
    (define gx#stx-reverse
      (lambda (_stx130303_) (gx#stx-foldl cons '() _stx130303_)))
    (define gx#stx-last
      (lambda (_stx130264_)
        (let _lp130266_ ((_rest130268_ _stx130264_))
          (let* ((_g130269130277_ (gx#syntax-e _rest130268_))
                 (_else130271130285_ (lambda () _rest130268_))
                 (_K130273130291_
                  (lambda (_rest130288_ _hd130289_)
                    (if (gx#stx-null? _rest130288_)
                        _hd130289_
                        (_lp130266_ _rest130288_)))))
            (if (##pair? _g130269130277_)
                (let ((_hd130274130294_ (##car _g130269130277_))
                      (_tl130275130296_ (##cdr _g130269130277_)))
                  (let* ((_hd130299_ _hd130274130294_)
                         (_rest130301_ _tl130275130296_))
                    (_K130273130291_ _rest130301_ _hd130299_)))
                (_else130271130285_))))))
    (define gx#stx-last-pair
      (lambda (_stx130235_)
        (let _lp130237_ ((_hd130239_ _stx130235_))
          (let* ((_g130240130247_ (gx#syntax-e _hd130239_))
                 (_E130242130251_
                  (lambda () (error '"No clause matching" _g130240130247_)))
                 (_K130243130256_
                  (lambda (_rest130254_)
                    (if (gx#stx-pair? _rest130254_)
                        (_lp130237_ _rest130254_)
                        _hd130239_))))
            (if (##pair? _g130240130247_)
                (let* ((_tl130245130259_ (##cdr _g130240130247_))
                       (_rest130262_ _tl130245130259_))
                  (_K130243130256_ _rest130262_))
                (_E130242130251_))))))
    (define gx#stx-list-tail
      (lambda (_stx130204_ _k130205_)
        (let _lp130207_ ((_rest130209_ _stx130204_) (_k130210_ _k130205_))
          (if (fxpositive? _k130210_)
              (let* ((_g130211130218_ (gx#syntax-e _rest130209_))
                     (_E130213130222_
                      (lambda ()
                        (error '"No clause matching" _g130211130218_)))
                     (_K130214130227_
                      (lambda (_rest130225_)
                        (_lp130207_ _rest130225_ (fx- _k130210_ '1)))))
                (if (##pair? _g130211130218_)
                    (let* ((_tl130216130230_ (##cdr _g130211130218_))
                           (_rest130233_ _tl130216130230_))
                      (_K130214130227_ _rest130233_))
                    (_E130213130222_)))
              _rest130209_))))
    (define gx#stx-list-ref
      (lambda (_stx130201_ _k130202_)
        (gx#stx-car (gx#stx-list-tail _stx130201_ _k130202_))))
    (define gx#stx-plist?__%
      (lambda (_stx130113_ _key?130114_)
        (if (procedure? _key?130114_)
            '#!void
            (error '"expected procedure" _key?130114_))
        (let _lp130116_ ((_rest130118_ _stx130113_))
          (let* ((_g130119130129_ (gx#stx-e _rest130118_))
                 (_else130122130137_ (lambda () '#f)))
            (let ((_K130125130179_
                   (lambda (_rest130148_ _hd130149_)
                     (if (_key?130114_ _hd130149_)
                         (let* ((_g130150130158_ (gx#stx-e _rest130148_))
                                (_else130152130166_ (lambda () '#f))
                                (_K130154130171_
                                 (lambda (_rest130169_)
                                   (_lp130116_ _rest130169_))))
                           (if (##pair? _g130150130158_)
                               (let* ((_tl130156130174_
                                       (##cdr _g130150130158_))
                                      (_rest130177_ _tl130156130174_))
                                 (_lp130116_ _rest130177_))
                               (_else130152130166_)))
                         '#f)))
                  (_K130124130142_ (lambda () '#t)))
              (let ((_try-match130121130145_
                     (lambda ()
                       (if (##null? _g130119130129_)
                           (_K130124130142_)
                           (_else130122130137_)))))
                (if (##pair? _g130119130129_)
                    (let ((_tl130127130184_ (##cdr _g130119130129_))
                          (_hd130126130182_ (##car _g130119130129_)))
                      (let ((_hd130187_ _hd130126130182_)
                            (_rest130189_ _tl130127130184_))
                        (_K130125130179_ _rest130189_ _hd130187_)))
                    (_try-match130121130145_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx130194_)
        (let ((_key?130196_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx130194_ _key?130196_))))
    (define gx#stx-plist?
      (lambda _g135496_
        (let ((_g135495_ (##length _g135496_)))
          (cond ((##fx= _g135495_ 1)
                 (apply (lambda (_stx130194_) (gx#stx-plist?__0 _stx130194_))
                        _g135496_))
                ((##fx= _g135495_ 2)
                 (apply (lambda (_stx130198_ _key?130199_)
                          (gx#stx-plist?__% _stx130198_ _key?130199_))
                        _g135496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g135496_))))))
    (define gx#stx-getq__%
      (lambda (_key130031_ _stx130032_ _key=?130033_)
        (if (procedure? _key=?130033_)
            '#!void
            (error '"expected procedure" _key=?130033_))
        (let _lp130035_ ((_rest130037_ _stx130032_))
          (let* ((_g130038130046_ (gx#syntax-e _rest130037_))
                 (_else130040130054_ (lambda () '#f))
                 (_K130042130088_
                  (lambda (_rest130057_ _hd130058_)
                    (let* ((_g130059130066_ (gx#syntax-e _rest130057_))
                           (_E130061130070_
                            (lambda ()
                              (error '"No clause matching" _g130059130066_)))
                           (_K130062130076_
                            (lambda (_rest130073_ _val130074_)
                              (if (_key=?130033_ _hd130058_ _key130031_)
                                  _val130074_
                                  (_lp130035_ _rest130073_)))))
                      (if (##pair? _g130059130066_)
                          (let ((_hd130063130079_ (##car _g130059130066_))
                                (_tl130064130081_ (##cdr _g130059130066_)))
                            (let* ((_val130084_ _hd130063130079_)
                                   (_rest130086_ _tl130064130081_))
                              (_K130062130076_ _rest130086_ _val130084_)))
                          (_E130061130070_))))))
            (if (##pair? _g130038130046_)
                (let ((_hd130043130091_ (##car _g130038130046_))
                      (_tl130044130093_ (##cdr _g130038130046_)))
                  (let* ((_hd130096_ _hd130043130091_)
                         (_rest130098_ _tl130044130093_))
                    (_K130042130088_ _rest130098_ _hd130096_)))
                (_else130040130054_))))))
    (define gx#stx-getq__0
      (lambda (_key130103_ _stx130104_)
        (let ((_key=?130106_ gx#stx-eq?))
          (gx#stx-getq__% _key130103_ _stx130104_ _key=?130106_))))
    (define gx#stx-getq
      (lambda _g135498_
        (let ((_g135497_ (##length _g135498_)))
          (cond ((##fx= _g135497_ 2)
                 (apply (lambda (_key130103_ _stx130104_)
                          (gx#stx-getq__0 _key130103_ _stx130104_))
                        _g135498_))
                ((##fx= _g135497_ 3)
                 (apply (lambda (_key130108_ _stx130109_ _key=?130110_)
                          (gx#stx-getq__%
                           _key130108_
                           _stx130109_
                           _key=?130110_))
                        _g135498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g135498_))))))))
