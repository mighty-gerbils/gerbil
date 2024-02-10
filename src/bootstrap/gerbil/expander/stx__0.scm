(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707552287)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-struct-type*
       'gx#identifier-wrap::t
       'syntax
       gx#AST::t
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args131212_
        (apply make-struct-instance gx#identifier-wrap::t _$args131212_)))
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
      (make-struct-type*
       'gx#syntax-wrap::t
       'syntax
       gx#AST::t
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args131209_
        (apply make-struct-instance gx#syntax-wrap::t _$args131209_)))
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
      (make-struct-type*
       'gx#syntax-quote::t
       'syntax
       gx#AST::t
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args131206_
        (apply make-struct-instance gx#syntax-quote::t _$args131206_)))
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
      (lambda (_stx131204_) (symbol? (gx#stx-e _stx131204_))))
    (define gx#identifier-quote?
      (lambda (_stx131202_)
        (if (##structure-direct-instance-of? _stx131202_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx131202_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx131200_)
        (if (##structure-direct-instance-of? _stx131200_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx131200_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx131200_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx131198_)
        (if (##structure-direct-instance-of? _stx131198_ 'gx#syntax-quote::t)
            _stx131198_
            (if (##structure-direct-instance-of?
                 _stx131198_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx131198_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx131181_)
        (if (##structure-direct-instance-of? _stx131181_ 'gx#syntax-wrap::t)
            (let _lp131183_ ((_e131185_
                              (##unchecked-structure-ref
                               _stx131181_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks131186_
                              (cons (##unchecked-structure-ref
                                     _stx131181_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e131185_)
                  (let ((_$e131188_ (##type-id (##structure-type _e131185_))))
                    (if (eq? 'gx#syntax-wrap::t _$e131188_)
                        (_lp131183_
                         (##unchecked-structure-ref _e131185_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e131185_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks131186_))
                        (if (or (eq? 'gx#syntax-quote::t _$e131188_)
                                (eq? 'gx#identifier-wrap::t _$e131188_))
                            (##unchecked-structure-ref
                             _e131185_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e131188_)
                                (_lp131183_
                                 (##unchecked-structure-ref
                                  _e131185_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks131186_)
                                _e131185_))))
                  (if (null? _marks131186_)
                      _e131185_
                      (if (pair? _e131185_)
                          (cons (gx#stx-wrap (car _e131185_) _marks131186_)
                                (gx#stx-wrap (cdr _e131185_) _marks131186_))
                          (if (vector? _e131185_)
                              (vector-map
                               (lambda (_g131193131195_)
                                 (gx#stx-wrap _g131193131195_ _marks131186_))
                               _e131185_)
                              (if (box? _e131185_)
                                  (box (gx#stx-wrap
                                        (unbox _e131185_)
                                        _marks131186_))
                                  _e131185_))))))
            (if (##structure-instance-of? _stx131181_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131181_ '1 gx#AST::t '#f)
                _stx131181_))))
    (define gx#syntax->datum
      (lambda (_stx131179_)
        (if (##structure-instance-of? _stx131179_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx131179_ '1 gx#AST::t '#f))
            (if (pair? _stx131179_)
                (cons (gx#syntax->datum (car _stx131179_))
                      (gx#syntax->datum (cdr _stx131179_)))
                (if (vector? _stx131179_)
                    (vector-map gx#syntax->datum _stx131179_)
                    (if (box? _stx131179_)
                        (box (gx#syntax->datum (unbox _stx131179_)))
                        _stx131179_))))))
    (define gx#datum->syntax__%
      (lambda (_stx131122_ _datum131123_ _src131124_ _quote?131125_)
        (letrec ((_wrap-datum131127_
                  (lambda (_e131151_ _marks131152_)
                    (_wrap-inner131129_
                     _e131151_
                     (lambda (_g131153131155_)
                       (##structure
                        gx#identifier-wrap::t
                        _g131153131155_
                        _src131124_
                        _marks131152_)))))
                 (_wrap-quote131128_
                  (lambda (_e131143_ _ctx131144_ _marks131145_)
                    (_wrap-inner131129_
                     _e131143_
                     (lambda (_g131146131148_)
                       (##structure
                        gx#syntax-quote::t
                        _g131146131148_
                        _src131124_
                        _ctx131144_
                        _marks131145_)))))
                 (_wrap-inner131129_
                  (lambda (_e131136_ _wrap-e131137_)
                    (let _recur131139_ ((_e131141_ _e131136_))
                      (if (symbol? _e131141_)
                          (_wrap-e131137_ _e131141_)
                          (if (pair? _e131141_)
                              (cons (_recur131139_ (car _e131141_))
                                    (_recur131139_ (cdr _e131141_)))
                              (if (vector? _e131141_)
                                  (vector-map _recur131139_ _e131141_)
                                  (if (box? _e131141_)
                                      (box (_recur131139_ (unbox _e131141_)))
                                      _e131141_)))))))
                 (_wrap-outer131130_
                  (lambda (_e131134_)
                    (if (##structure-instance-of? _e131134_ 'gerbil#AST::t)
                        _e131134_
                        (##structure gx#AST::t _e131134_ _src131124_)))))
          (if (##structure-instance-of? _datum131123_ 'gerbil#AST::t)
              _datum131123_
              (if (not _stx131122_)
                  (##structure gx#AST::t _datum131123_ _src131124_)
                  (if (gx#identifier? _stx131122_)
                      (let ((_stx131132_ (gx#stx-unwrap__0 _stx131122_)))
                        (_wrap-outer131130_
                         (if (##structure-direct-instance-of?
                              _stx131132_
                              'gx#syntax-quote::t)
                             (if _quote?131125_
                                 (_wrap-quote131128_
                                  _datum131123_
                                  (##unchecked-structure-ref
                                   _stx131132_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx131132_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum131127_
                                  _datum131123_
                                  (##unchecked-structure-ref
                                   _stx131132_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum131127_
                              _datum131123_
                              (##unchecked-structure-ref
                               _stx131132_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx131122_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx131161_ _datum131162_)
        (let* ((_src131164_ '#f) (_quote?131166_ '#t))
          (gx#datum->syntax__%
           _stx131161_
           _datum131162_
           _src131164_
           _quote?131166_))))
    (define gx#datum->syntax__1
      (lambda (_stx131168_ _datum131169_ _src131170_)
        (let ((_quote?131172_ '#t))
          (gx#datum->syntax__%
           _stx131168_
           _datum131169_
           _src131170_
           _quote?131172_))))
    (define gx#datum->syntax
      (lambda _g135487_
        (let ((_g135486_ (##length _g135487_)))
          (cond ((##fx= _g135486_ 2)
                 (apply (lambda (_stx131161_ _datum131162_)
                          (gx#datum->syntax__0 _stx131161_ _datum131162_))
                        _g135487_))
                ((##fx= _g135486_ 3)
                 (apply (lambda (_stx131168_ _datum131169_ _src131170_)
                          (gx#datum->syntax__1
                           _stx131168_
                           _datum131169_
                           _src131170_))
                        _g135487_))
                ((##fx= _g135486_ 4)
                 (apply (lambda (_stx131174_
                                 _datum131175_
                                 _src131176_
                                 _quote?131177_)
                          (gx#datum->syntax__%
                           _stx131174_
                           _datum131175_
                           _src131176_
                           _quote?131177_))
                        _g135487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g135487_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx131098_ _marks131099_)
        (let _lp131101_ ((_e131103_ _stx131098_)
                         (_marks131104_ _marks131099_)
                         (_src131105_ (gx#stx-source _stx131098_)))
          (if (##structure-direct-instance-of? _e131103_ 'gx#syntax-wrap::t)
              (_lp131101_
               (##unchecked-structure-ref _e131103_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e131103_ '3 gx#syntax-wrap::t '#f)
                _marks131104_)
               (##unchecked-structure-ref _e131103_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e131103_
                   'gx#identifier-wrap::t)
                  (if (null? _marks131104_)
                      _e131103_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e131103_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e131103_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e131103_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks131104_)))
                  (if (##structure-direct-instance-of?
                       _e131103_
                       'gx#syntax-quote::t)
                      _e131103_
                      (if (##structure-instance-of? _e131103_ 'gerbil#AST::t)
                          (_lp131101_
                           (##unchecked-structure-ref
                            _e131103_
                            '1
                            gx#AST::t
                            '#f)
                           _marks131104_
                           (##unchecked-structure-ref
                            _e131103_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e131103_)
                              (##structure
                               gx#identifier-wrap::t
                               _e131103_
                               _src131105_
                               (reverse _marks131104_))
                              (if (null? _marks131104_)
                                  _e131103_
                                  (if (pair? _e131103_)
                                      (cons (gx#stx-wrap
                                             (car _e131103_)
                                             _marks131104_)
                                            (gx#stx-wrap
                                             (cdr _e131103_)
                                             _marks131104_))
                                      (if (vector? _e131103_)
                                          (vector-map
                                           (lambda (_g131106131108_)
                                             (gx#stx-wrap
                                              _g131106131108_
                                              _marks131104_))
                                           _e131103_)
                                          (if (box? _e131103_)
                                              (box (gx#stx-wrap
                                                    (unbox _e131103_)
                                                    _marks131104_))
                                              _e131103_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx131114_)
        (let ((_marks131116_ '()))
          (gx#stx-unwrap__% _stx131114_ _marks131116_))))
    (define gx#stx-unwrap
      (lambda _g135489_
        (let ((_g135488_ (##length _g135489_)))
          (cond ((##fx= _g135488_ 1)
                 (apply (lambda (_stx131114_) (gx#stx-unwrap__0 _stx131114_))
                        _g135489_))
                ((##fx= _g135488_ 2)
                 (apply (lambda (_stx131118_ _marks131119_)
                          (gx#stx-unwrap__% _stx131118_ _marks131119_))
                        _g135489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g135489_))))))
    (define gx#stx-wrap
      (lambda (_stx131091_ _marks131092_)
        (foldl1 (lambda (_mark131094_ _stx131095_)
                  (gx#stx-apply-mark _stx131095_ _mark131094_))
                _stx131091_
                _marks131092_)))
    (define gx#stx-rewrap
      (lambda (_stx131085_ _marks131086_)
        (foldr1 (lambda (_mark131088_ _stx131089_)
                  (gx#stx-apply-mark _stx131089_ _mark131088_))
                _stx131085_
                _marks131086_)))
    (define gx#stx-apply-mark
      (lambda (_stx131082_ _mark131083_)
        (if (##structure-direct-instance-of? _stx131082_ 'gx#syntax-quote::t)
            _stx131082_
            (if (and (##structure-direct-instance-of?
                      _stx131082_
                      'gx#syntax-wrap::t)
                     (eq? _mark131083_
                          (##unchecked-structure-ref
                           _stx131082_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx131082_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx131082_
                 (gx#stx-source _stx131082_)
                 _mark131083_)))))
    (define gx#apply-mark
      (lambda (_mark131046_ _marks131047_)
        (let* ((_marks131048131056_ _marks131047_)
               (_else131050131064_
                (lambda () (cons _mark131046_ _marks131047_)))
               (_K131052131070_
                (lambda (_rest131067_ _hd131068_)
                  (if (eq? _mark131046_ _hd131068_)
                      _rest131067_
                      (cons _mark131046_ _marks131047_)))))
          (if (##pair? _marks131048131056_)
              (let ((_hd131053131073_ (##car _marks131048131056_))
                    (_tl131054131075_ (##cdr _marks131048131056_)))
                (let* ((_hd131078_ _hd131053131073_)
                       (_rest131080_ _tl131054131075_))
                  (_K131052131070_ _rest131080_ _hd131078_)))
              (_else131050131064_)))))
    (define gx#stx-e
      (lambda (_stx131044_)
        (if (##structure-direct-instance-of? _stx131044_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx131044_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx131044_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131044_ '1 gx#AST::t '#f)
                _stx131044_))))
    (define gx#stx-source
      (lambda (_stx131042_)
        (if (##structure-instance-of? _stx131042_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx131042_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx131036_ _src131037_)
        (if (or (##structure-instance-of? _stx131036_ 'gerbil#AST::t)
                (not _src131037_))
            _stx131036_
            (##structure gx#AST::t _stx131036_ _src131037_))))
    (define gx#stx-datum?
      (lambda (_stx131034_) (gx#self-quoting? (gx#stx-e _stx131034_))))
    (define gx#self-quoting?
      (lambda (_x131017_)
        (let ((_$e131019_ (immediate? _x131017_)))
          (if _$e131019_
              _$e131019_
              (let ((_$e131022_ (number? _x131017_)))
                (if _$e131022_
                    _$e131022_
                    (let ((_$e131025_ (keyword? _x131017_)))
                      (if _$e131025_
                          _$e131025_
                          (let ((_$e131028_ (string? _x131017_)))
                            (if _$e131028_
                                _$e131028_
                                (let ((_$e131031_ (vector? _x131017_)))
                                  (if _$e131031_
                                      _$e131031_
                                      (u8vector? _x131017_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e131015_) (boolean? (gx#stx-e _e131015_))))
    (define gx#stx-keyword?
      (lambda (_e131013_) (keyword? (gx#stx-e _e131013_))))
    (define gx#stx-char? (lambda (_e131011_) (char? (gx#stx-e _e131011_))))
    (define gx#stx-number? (lambda (_e131009_) (number? (gx#stx-e _e131009_))))
    (define gx#stx-fixnum? (lambda (_e131007_) (fixnum? (gx#stx-e _e131007_))))
    (define gx#stx-string? (lambda (_e131005_) (string? (gx#stx-e _e131005_))))
    (define gx#stx-null? (lambda (_e131003_) (null? (gx#stx-e _e131003_))))
    (define gx#stx-pair? (lambda (_e131001_) (pair? (gx#stx-e _e131001_))))
    (define gx#stx-list?
      (lambda (_e130963_)
        (let* ((_g130964130973_ (gx#stx-e _e130963_))
               (_E130967130977_
                (lambda () (error '"No clause matching" _g130964130973_))))
          (let ((_K130969130993_
                 (lambda (_rest130991_) (gx#stx-list? _rest130991_)))
                (_K130968130983_ (lambda (_tail130981_) (null? _tail130981_))))
            (if (##pair? _g130964130973_)
                (let* ((_tl130971130996_ (##cdr _g130964130973_))
                       (_rest130999_ _tl130971130996_))
                  (gx#stx-list? _rest130999_))
                (let ((_tail130986_ _g130964130973_))
                  (null? _tail130986_)))))))
    (define gx#stx-pair/null?
      (lambda (_e130956_)
        (let* ((_e130958_ (gx#stx-e _e130956_)) (_$e130960_ (pair? _e130958_)))
          (if _$e130960_ _$e130960_ (null? _e130958_)))))
    (define gx#stx-vector? (lambda (_e130954_) (vector? (gx#stx-e _e130954_))))
    (define gx#stx-box? (lambda (_e130952_) (box? (gx#stx-e _e130952_))))
    (define gx#stx-eq?
      (lambda (_x130949_ _y130950_)
        (eq? (gx#stx-e _x130949_) (gx#stx-e _y130950_))))
    (define gx#stx-eqv?
      (lambda (_x130946_ _y130947_)
        (eqv? (gx#stx-e _x130946_) (gx#stx-e _y130947_))))
    (define gx#stx-equal?
      (lambda (_x130943_ _y130944_)
        (equal? (gx#stx-e _x130943_) (gx#stx-e _y130944_))))
    (define gx#stx-false? (lambda (_x130941_) (not (gx#stx-e _x130941_))))
    (define gx#stx-identifier
      (lambda (_template130938_ . _args130939_)
        (gx#datum->syntax__1
         _template130938_
         (apply make-symbol (gx#syntax->datum _args130939_))
         (gx#stx-source _template130938_))))
    (define gx#stx-identifier-marks
      (lambda (_stx130936_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx130936_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx130934_)
        (if (##structure-direct-instance-of?
             _stx130934_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx130934_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx130934_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx130934_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx130934_)))))
    (define gx#stx-identifier-context
      (lambda (_stx130930_)
        (let ((_stx130932_ (gx#stx-unwrap__0 _stx130930_)))
          (if (gx#identifier-quote? _stx130932_)
              (##unchecked-structure-ref _stx130932_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx130885_)
        (let* ((_g130886130896_ (gx#stx-e _stx130885_))
               (_else130889130904_ (lambda () '#f)))
          (let ((_K130892130918_
                 (lambda (_rest130915_ _hd130916_)
                   (if (gx#identifier? _hd130916_)
                       (gx#identifier-list? _rest130915_)
                       '#f)))
                (_K130891130909_ (lambda () '#t)))
            (let ((_try-match130888130912_
                   (lambda ()
                     (if (##null? _g130886130896_)
                         (_K130891130909_)
                         (_else130889130904_)))))
              (if (##pair? _g130886130896_)
                  (let ((_tl130894130923_ (##cdr _g130886130896_))
                        (_hd130893130921_ (##car _g130886130896_)))
                    (let ((_hd130926_ _hd130893130921_)
                          (_rest130928_ _tl130894130923_))
                      (_K130892130918_ _rest130928_ _hd130926_)))
                  (_try-match130888130912_)))))))
    (define gx#genident__%
      (lambda (_e130862_ _src130863_)
        (gx#stx-wrap-source
         (gensym (let ((_e130865_ (gx#stx-e _e130862_)))
                   (if (interned-symbol? _e130865_) _e130865_ 'g)))
         (let ((_$e130867_ (gx#stx-source _e130862_)))
           (if _$e130867_ _$e130867_ _src130863_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e130874_ 'g) (_src130876_ '#f))
          (gx#genident__% _e130874_ _src130876_))))
    (define gx#genident__1
      (lambda (_e130878_)
        (let ((_src130880_ '#f)) (gx#genident__% _e130878_ _src130880_))))
    (define gx#genident
      (lambda _g135491_
        (let ((_g135490_ (##length _g135491_)))
          (cond ((##fx= _g135490_ 0)
                 (apply (lambda () (gx#genident__0)) _g135491_))
                ((##fx= _g135490_ 1)
                 (apply (lambda (_e130878_) (gx#genident__1 _e130878_))
                        _g135491_))
                ((##fx= _g135490_ 2)
                 (apply (lambda (_e130882_ _src130883_)
                          (gx#genident__% _e130882_ _src130883_))
                        _g135491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g135491_))))))
    (define gx#gentemps
      (lambda (_stx-lst130859_) (gx#stx-map1 gx#genident _stx-lst130859_)))
    (define gx#syntax->list
      (lambda (_stx130857_) (gx#stx-map1 values _stx130857_)))
    (define gx#stx-car
      (lambda (_stx130854_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx130854_)))))
    (define gx#stx-cdr
      (lambda (_stx130851_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx130851_)))))
    (define gx#stx-length
      (lambda (_stx130816_)
        (let _lp130818_ ((_rest130820_ _stx130816_) (_n130821_ '0))
          (let* ((_g130822130830_ (gx#stx-e _rest130820_))
                 (_else130824130838_ (lambda () _n130821_))
                 (_K130826130843_
                  (lambda (_rest130841_)
                    (_lp130818_ _rest130841_ (fx+ _n130821_ '1)))))
            (if (##pair? _g130822130830_)
                (let* ((_tl130828130846_ (##cdr _g130822130830_))
                       (_rest130849_ _tl130828130846_))
                  (_K130826130843_ _rest130849_))
                (_else130824130838_))))))
    (define gx#stx-for-each
      (lambda _g135493_
        (let ((_g135492_ (##length _g135493_)))
          (cond ((##fx= _g135492_ 2)
                 (apply (lambda (_f130809_ _stx130810_)
                          (gx#stx-for-each1 _f130809_ _stx130810_))
                        _g135493_))
                ((##fx= _g135492_ 3)
                 (apply (lambda (_f130812_ _xstx130813_ _ystx130814_)
                          (gx#stx-for-each2
                           _f130812_
                           _xstx130813_
                           _ystx130814_))
                        _g135493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g135493_))))))
    (define gx#stx-for-each1
      (lambda (_f130759_ _stx130760_)
        (if (procedure? _f130759_)
            '#!void
            (error '"expected procedure" _f130759_))
        (let _lp130762_ ((_rest130764_ _stx130760_))
          (let* ((_g130765130775_ (gx#syntax-e _rest130764_))
                 (_else130768130783_ (lambda () (_f130759_ _rest130764_))))
            (let ((_K130771130797_
                   (lambda (_rest130794_ _hd130795_)
                     (_f130759_ _hd130795_)
                     (_lp130762_ _rest130794_)))
                  (_K130770130788_ (lambda () '#!void)))
              (let ((_try-match130767130791_
                     (lambda ()
                       (if (##null? _g130765130775_)
                           (_K130770130788_)
                           (_else130768130783_)))))
                (if (##pair? _g130765130775_)
                    (let ((_tl130773130802_ (##cdr _g130765130775_))
                          (_hd130772130800_ (##car _g130765130775_)))
                      (let ((_hd130805_ _hd130772130800_)
                            (_rest130807_ _tl130773130802_))
                        (_K130771130797_ _rest130807_ _hd130805_)))
                    (_try-match130767130791_))))))))
    (define gx#stx-for-each2
      (lambda (_f130664_ _xstx130665_ _ystx130666_)
        (if (procedure? _f130664_)
            '#!void
            (error '"expected procedure" _f130664_))
        (let _lp130668_ ((_xrest130670_ _xstx130665_)
                         (_yrest130671_ _ystx130666_))
          (let* ((_g130672130682_ (gx#syntax-e _xrest130670_))
                 (_else130675130690_ (lambda () '#!void)))
            (let ((_K130678130747_
                   (lambda (_xrest130716_ _xhd130717_)
                     (let* ((_g130718130725_ (gx#syntax-e _yrest130671_))
                            (_E130720130729_
                             (lambda ()
                               (error '"No clause matching" _g130718130725_)))
                            (_K130721130735_
                             (lambda (_yrest130732_ _yhd130733_)
                               (_f130664_ _xhd130717_ _yhd130733_)
                               (_lp130668_ _xrest130716_ _yrest130732_))))
                       (if (##pair? _g130718130725_)
                           (let ((_hd130722130738_ (##car _g130718130725_))
                                 (_tl130723130740_ (##cdr _g130718130725_)))
                             (let* ((_yhd130743_ _hd130722130738_)
                                    (_yrest130745_ _tl130723130740_))
                               (_K130721130735_ _yrest130745_ _yhd130743_)))
                           (_E130720130729_)))))
                  (_K130677130710_
                   (lambda ()
                     (let* ((_yrest130694130699_ _yrest130671_)
                            (_E130696130703_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130694130699_)))
                            (_K130697130707_
                             (lambda ()
                               (_f130664_ _xrest130670_ _yrest130671_))))
                       (if (not (gx#stx-null? _yrest130694130699_))
                           (_K130697130707_)
                           (_E130696130703_))))))
              (let ((_try-match130674130713_
                     (lambda ()
                       (if (not (null? _g130672130682_))
                           (_K130677130710_)
                           (_else130675130690_)))))
                (if (##pair? _g130672130682_)
                    (let ((_tl130680130752_ (##cdr _g130672130682_))
                          (_hd130679130750_ (##car _g130672130682_)))
                      (let ((_xhd130755_ _hd130679130750_)
                            (_xrest130757_ _tl130680130752_))
                        (_K130678130747_ _xrest130757_ _xhd130755_)))
                    (_try-match130674130713_))))))))
    (define gx#stx-map
      (lambda _g135495_
        (let ((_g135494_ (##length _g135495_)))
          (cond ((##fx= _g135494_ 2)
                 (apply (lambda (_f130657_ _stx130658_)
                          (gx#stx-map1 _f130657_ _stx130658_))
                        _g135495_))
                ((##fx= _g135494_ 3)
                 (apply (lambda (_f130660_ _xstx130661_ _ystx130662_)
                          (gx#stx-map2 _f130660_ _xstx130661_ _ystx130662_))
                        _g135495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g135495_))))))
    (define gx#stx-map1
      (lambda (_f130607_ _stx130608_)
        (if (procedure? _f130607_)
            '#!void
            (error '"expected procedure" _f130607_))
        (let _recur130610_ ((_rest130612_ _stx130608_))
          (let* ((_g130613130623_ (gx#syntax-e _rest130612_))
                 (_else130616130631_ (lambda () (_f130607_ _rest130612_))))
            (let ((_K130619130645_
                   (lambda (_rest130642_ _hd130643_)
                     (cons (_f130607_ _hd130643_)
                           (_recur130610_ _rest130642_))))
                  (_K130618130636_ (lambda () '())))
              (let ((_try-match130615130639_
                     (lambda ()
                       (if (##null? _g130613130623_)
                           (_K130618130636_)
                           (_else130616130631_)))))
                (if (##pair? _g130613130623_)
                    (let ((_tl130621130650_ (##cdr _g130613130623_))
                          (_hd130620130648_ (##car _g130613130623_)))
                      (let ((_hd130653_ _hd130620130648_)
                            (_rest130655_ _tl130621130650_))
                        (_K130619130645_ _rest130655_ _hd130653_)))
                    (_try-match130615130639_))))))))
    (define gx#stx-map2
      (lambda (_f130512_ _xstx130513_ _ystx130514_)
        (if (procedure? _f130512_)
            '#!void
            (error '"expected procedure" _f130512_))
        (let _recur130516_ ((_xrest130518_ _xstx130513_)
                            (_yrest130519_ _ystx130514_))
          (let* ((_g130520130530_ (gx#syntax-e _xrest130518_))
                 (_else130523130538_ (lambda () '())))
            (let ((_K130526130595_
                   (lambda (_xrest130564_ _xhd130565_)
                     (let* ((_g130566130573_ (gx#syntax-e _yrest130519_))
                            (_E130568130577_
                             (lambda ()
                               (error '"No clause matching" _g130566130573_)))
                            (_K130569130583_
                             (lambda (_yrest130580_ _yhd130581_)
                               (cons (_f130512_ _xhd130565_ _yhd130581_)
                                     (_recur130516_
                                      _xrest130564_
                                      _yrest130580_)))))
                       (if (##pair? _g130566130573_)
                           (let ((_hd130570130586_ (##car _g130566130573_))
                                 (_tl130571130588_ (##cdr _g130566130573_)))
                             (let* ((_yhd130591_ _hd130570130586_)
                                    (_yrest130593_ _tl130571130588_))
                               (_K130569130583_ _yrest130593_ _yhd130591_)))
                           (_E130568130577_)))))
                  (_K130525130558_
                   (lambda ()
                     (let* ((_yrest130542130547_ _yrest130519_)
                            (_E130544130551_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130542130547_)))
                            (_K130545130555_
                             (lambda ()
                               (_f130512_ _xrest130518_ _yrest130519_))))
                       (if (not (gx#stx-null? _yrest130542130547_))
                           (_K130545130555_)
                           (_E130544130551_))))))
              (let ((_try-match130522130561_
                     (lambda ()
                       (if (not (null? _g130520130530_))
                           (_K130525130558_)
                           (_else130523130538_)))))
                (if (##pair? _g130520130530_)
                    (let ((_tl130528130600_ (##cdr _g130520130530_))
                          (_hd130527130598_ (##car _g130520130530_)))
                      (let ((_xhd130603_ _hd130527130598_)
                            (_xrest130605_ _tl130528130600_))
                        (_K130526130595_ _xrest130605_ _xhd130603_)))
                    (_try-match130522130561_))))))))
    (define gx#stx-andmap
      (lambda (_f130462_ _stx130463_)
        (if (procedure? _f130462_)
            '#!void
            (error '"expected procedure" _f130462_))
        (let _lp130465_ ((_rest130467_ _stx130463_))
          (let* ((_g130468130478_ (gx#syntax-e _rest130467_))
                 (_else130471130486_ (lambda () (_f130462_ _rest130467_))))
            (let ((_K130474130500_
                   (lambda (_rest130497_ _hd130498_)
                     (if (_f130462_ _hd130498_)
                         (_lp130465_ _rest130497_)
                         '#f)))
                  (_K130473130491_ (lambda () '#t)))
              (let ((_try-match130470130494_
                     (lambda ()
                       (if (##null? _g130468130478_)
                           (_K130473130491_)
                           (_else130471130486_)))))
                (if (##pair? _g130468130478_)
                    (let ((_tl130476130505_ (##cdr _g130468130478_))
                          (_hd130475130503_ (##car _g130468130478_)))
                      (let ((_hd130508_ _hd130475130503_)
                            (_rest130510_ _tl130476130505_))
                        (_K130474130500_ _rest130510_ _hd130508_)))
                    (_try-match130470130494_))))))))
    (define gx#stx-ormap
      (lambda (_f130409_ _stx130410_)
        (if (procedure? _f130409_)
            '#!void
            (error '"expected procedure" _f130409_))
        (let _lp130412_ ((_rest130414_ _stx130410_))
          (let* ((_g130415130425_ (gx#syntax-e _rest130414_))
                 (_else130418130433_ (lambda () (_f130409_ _rest130414_))))
            (let ((_K130421130450_
                   (lambda (_rest130444_ _hd130445_)
                     (let ((_$e130447_ (_f130409_ _hd130445_)))
                       (if _$e130447_ _$e130447_ (_lp130412_ _rest130444_)))))
                  (_K130420130438_ (lambda () '#f)))
              (let ((_try-match130417130441_
                     (lambda ()
                       (if (##null? _g130415130425_)
                           (_K130420130438_)
                           (_else130418130433_)))))
                (if (##pair? _g130415130425_)
                    (let ((_tl130423130455_ (##cdr _g130415130425_))
                          (_hd130422130453_ (##car _g130415130425_)))
                      (let ((_hd130458_ _hd130422130453_)
                            (_rest130460_ _tl130423130455_))
                        (_K130421130450_ _rest130460_ _hd130458_)))
                    (_try-match130417130441_))))))))
    (define gx#stx-foldl
      (lambda (_f130357_ _iv130358_ _stx130359_)
        (if (procedure? _f130357_)
            '#!void
            (error '"expected procedure" _f130357_))
        (let _lp130361_ ((_r130363_ _iv130358_) (_rest130364_ _stx130359_))
          (let* ((_g130365130375_ (gx#syntax-e _rest130364_))
                 (_else130368130383_
                  (lambda () (_f130357_ _rest130364_ _r130363_))))
            (let ((_K130371130397_
                   (lambda (_rest130394_ _hd130395_)
                     (_lp130361_
                      (_f130357_ _hd130395_ _r130363_)
                      _rest130394_)))
                  (_K130370130388_ (lambda () _r130363_)))
              (let ((_try-match130367130391_
                     (lambda ()
                       (if (##null? _g130365130375_)
                           (_K130370130388_)
                           (_else130368130383_)))))
                (if (##pair? _g130365130375_)
                    (let ((_tl130373130402_ (##cdr _g130365130375_))
                          (_hd130372130400_ (##car _g130365130375_)))
                      (let ((_hd130405_ _hd130372130400_)
                            (_rest130407_ _tl130373130402_))
                        (_K130371130397_ _rest130407_ _hd130405_)))
                    (_try-match130367130391_))))))))
    (define gx#stx-foldr
      (lambda (_f130306_ _iv130307_ _stx130308_)
        (if (procedure? _f130306_)
            '#!void
            (error '"expected procedure" _f130306_))
        (let _recur130310_ ((_rest130312_ _stx130308_))
          (let* ((_g130313130323_ (gx#syntax-e _rest130312_))
                 (_else130316130331_
                  (lambda () (_f130306_ _rest130312_ _iv130307_))))
            (let ((_K130319130345_
                   (lambda (_rest130342_ _hd130343_)
                     (_f130306_ _hd130343_ (_recur130310_ _rest130342_))))
                  (_K130318130336_ (lambda () _iv130307_)))
              (let ((_try-match130315130339_
                     (lambda ()
                       (if (##null? _g130313130323_)
                           (_K130318130336_)
                           (_else130316130331_)))))
                (if (##pair? _g130313130323_)
                    (let ((_tl130321130350_ (##cdr _g130313130323_))
                          (_hd130320130348_ (##car _g130313130323_)))
                      (let ((_hd130353_ _hd130320130348_)
                            (_rest130355_ _tl130321130350_))
                        (_K130319130345_ _rest130355_ _hd130353_)))
                    (_try-match130315130339_))))))))
    (define gx#stx-reverse
      (lambda (_stx130304_) (gx#stx-foldl cons '() _stx130304_)))
    (define gx#stx-last
      (lambda (_stx130265_)
        (let _lp130267_ ((_rest130269_ _stx130265_))
          (let* ((_g130270130278_ (gx#syntax-e _rest130269_))
                 (_else130272130286_ (lambda () _rest130269_))
                 (_K130274130292_
                  (lambda (_rest130289_ _hd130290_)
                    (if (gx#stx-null? _rest130289_)
                        _hd130290_
                        (_lp130267_ _rest130289_)))))
            (if (##pair? _g130270130278_)
                (let ((_hd130275130295_ (##car _g130270130278_))
                      (_tl130276130297_ (##cdr _g130270130278_)))
                  (let* ((_hd130300_ _hd130275130295_)
                         (_rest130302_ _tl130276130297_))
                    (_K130274130292_ _rest130302_ _hd130300_)))
                (_else130272130286_))))))
    (define gx#stx-last-pair
      (lambda (_stx130236_)
        (let _lp130238_ ((_hd130240_ _stx130236_))
          (let* ((_g130241130248_ (gx#syntax-e _hd130240_))
                 (_E130243130252_
                  (lambda () (error '"No clause matching" _g130241130248_)))
                 (_K130244130257_
                  (lambda (_rest130255_)
                    (if (gx#stx-pair? _rest130255_)
                        (_lp130238_ _rest130255_)
                        _hd130240_))))
            (if (##pair? _g130241130248_)
                (let* ((_tl130246130260_ (##cdr _g130241130248_))
                       (_rest130263_ _tl130246130260_))
                  (_K130244130257_ _rest130263_))
                (_E130243130252_))))))
    (define gx#stx-list-tail
      (lambda (_stx130205_ _k130206_)
        (let _lp130208_ ((_rest130210_ _stx130205_) (_k130211_ _k130206_))
          (if (fxpositive? _k130211_)
              (let* ((_g130212130219_ (gx#syntax-e _rest130210_))
                     (_E130214130223_
                      (lambda ()
                        (error '"No clause matching" _g130212130219_)))
                     (_K130215130228_
                      (lambda (_rest130226_)
                        (_lp130208_ _rest130226_ (fx- _k130211_ '1)))))
                (if (##pair? _g130212130219_)
                    (let* ((_tl130217130231_ (##cdr _g130212130219_))
                           (_rest130234_ _tl130217130231_))
                      (_K130215130228_ _rest130234_))
                    (_E130214130223_)))
              _rest130210_))))
    (define gx#stx-list-ref
      (lambda (_stx130202_ _k130203_)
        (gx#stx-car (gx#stx-list-tail _stx130202_ _k130203_))))
    (define gx#stx-plist?__%
      (lambda (_stx130114_ _key?130115_)
        (if (procedure? _key?130115_)
            '#!void
            (error '"expected procedure" _key?130115_))
        (let _lp130117_ ((_rest130119_ _stx130114_))
          (let* ((_g130120130130_ (gx#stx-e _rest130119_))
                 (_else130123130138_ (lambda () '#f)))
            (let ((_K130126130180_
                   (lambda (_rest130149_ _hd130150_)
                     (if (_key?130115_ _hd130150_)
                         (let* ((_g130151130159_ (gx#stx-e _rest130149_))
                                (_else130153130167_ (lambda () '#f))
                                (_K130155130172_
                                 (lambda (_rest130170_)
                                   (_lp130117_ _rest130170_))))
                           (if (##pair? _g130151130159_)
                               (let* ((_tl130157130175_
                                       (##cdr _g130151130159_))
                                      (_rest130178_ _tl130157130175_))
                                 (_lp130117_ _rest130178_))
                               (_else130153130167_)))
                         '#f)))
                  (_K130125130143_ (lambda () '#t)))
              (let ((_try-match130122130146_
                     (lambda ()
                       (if (##null? _g130120130130_)
                           (_K130125130143_)
                           (_else130123130138_)))))
                (if (##pair? _g130120130130_)
                    (let ((_tl130128130185_ (##cdr _g130120130130_))
                          (_hd130127130183_ (##car _g130120130130_)))
                      (let ((_hd130188_ _hd130127130183_)
                            (_rest130190_ _tl130128130185_))
                        (_K130126130180_ _rest130190_ _hd130188_)))
                    (_try-match130122130146_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx130195_)
        (let ((_key?130197_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx130195_ _key?130197_))))
    (define gx#stx-plist?
      (lambda _g135497_
        (let ((_g135496_ (##length _g135497_)))
          (cond ((##fx= _g135496_ 1)
                 (apply (lambda (_stx130195_) (gx#stx-plist?__0 _stx130195_))
                        _g135497_))
                ((##fx= _g135496_ 2)
                 (apply (lambda (_stx130199_ _key?130200_)
                          (gx#stx-plist?__% _stx130199_ _key?130200_))
                        _g135497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g135497_))))))
    (define gx#stx-getq__%
      (lambda (_key130032_ _stx130033_ _key=?130034_)
        (if (procedure? _key=?130034_)
            '#!void
            (error '"expected procedure" _key=?130034_))
        (let _lp130036_ ((_rest130038_ _stx130033_))
          (let* ((_g130039130047_ (gx#syntax-e _rest130038_))
                 (_else130041130055_ (lambda () '#f))
                 (_K130043130089_
                  (lambda (_rest130058_ _hd130059_)
                    (let* ((_g130060130067_ (gx#syntax-e _rest130058_))
                           (_E130062130071_
                            (lambda ()
                              (error '"No clause matching" _g130060130067_)))
                           (_K130063130077_
                            (lambda (_rest130074_ _val130075_)
                              (if (_key=?130034_ _hd130059_ _key130032_)
                                  _val130075_
                                  (_lp130036_ _rest130074_)))))
                      (if (##pair? _g130060130067_)
                          (let ((_hd130064130080_ (##car _g130060130067_))
                                (_tl130065130082_ (##cdr _g130060130067_)))
                            (let* ((_val130085_ _hd130064130080_)
                                   (_rest130087_ _tl130065130082_))
                              (_K130063130077_ _rest130087_ _val130085_)))
                          (_E130062130071_))))))
            (if (##pair? _g130039130047_)
                (let ((_hd130044130092_ (##car _g130039130047_))
                      (_tl130045130094_ (##cdr _g130039130047_)))
                  (let* ((_hd130097_ _hd130044130092_)
                         (_rest130099_ _tl130045130094_))
                    (_K130043130089_ _rest130099_ _hd130097_)))
                (_else130041130055_))))))
    (define gx#stx-getq__0
      (lambda (_key130104_ _stx130105_)
        (let ((_key=?130107_ gx#stx-eq?))
          (gx#stx-getq__% _key130104_ _stx130105_ _key=?130107_))))
    (define gx#stx-getq
      (lambda _g135499_
        (let ((_g135498_ (##length _g135499_)))
          (cond ((##fx= _g135498_ 2)
                 (apply (lambda (_key130104_ _stx130105_)
                          (gx#stx-getq__0 _key130104_ _stx130105_))
                        _g135499_))
                ((##fx= _g135498_ 3)
                 (apply (lambda (_key130109_ _stx130110_ _key=?130111_)
                          (gx#stx-getq__%
                           _key130109_
                           _stx130110_
                           _key=?130111_))
                        _g135499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g135499_))))))))
