(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707554637)
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
      (lambda _$args131217_
        (apply make-struct-instance gx#identifier-wrap::t _$args131217_)))
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
      (lambda _$args131214_
        (apply make-struct-instance gx#syntax-wrap::t _$args131214_)))
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
      (lambda _$args131211_
        (apply make-struct-instance gx#syntax-quote::t _$args131211_)))
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
      (lambda (_stx131209_) (symbol? (gx#stx-e _stx131209_))))
    (define gx#identifier-quote?
      (lambda (_stx131207_)
        (if (##structure-direct-instance-of? _stx131207_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx131207_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx131205_)
        (if (##structure-direct-instance-of? _stx131205_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx131205_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx131205_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx131203_)
        (if (##structure-direct-instance-of? _stx131203_ 'gx#syntax-quote::t)
            _stx131203_
            (if (##structure-direct-instance-of?
                 _stx131203_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx131203_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx131186_)
        (if (##structure-direct-instance-of? _stx131186_ 'gx#syntax-wrap::t)
            (let _lp131188_ ((_e131190_
                              (##unchecked-structure-ref
                               _stx131186_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks131191_
                              (cons (##unchecked-structure-ref
                                     _stx131186_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e131190_)
                  (let ((_$e131193_ (##type-id (##structure-type _e131190_))))
                    (if (eq? 'gx#syntax-wrap::t _$e131193_)
                        (_lp131188_
                         (##unchecked-structure-ref _e131190_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e131190_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks131191_))
                        (if (or (eq? 'gx#syntax-quote::t _$e131193_)
                                (eq? 'gx#identifier-wrap::t _$e131193_))
                            (##unchecked-structure-ref
                             _e131190_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e131193_)
                                (_lp131188_
                                 (##unchecked-structure-ref
                                  _e131190_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks131191_)
                                _e131190_))))
                  (if (null? _marks131191_)
                      _e131190_
                      (if (pair? _e131190_)
                          (cons (gx#stx-wrap (car _e131190_) _marks131191_)
                                (gx#stx-wrap (cdr _e131190_) _marks131191_))
                          (if (vector? _e131190_)
                              (vector-map
                               (lambda (_g131198131200_)
                                 (gx#stx-wrap _g131198131200_ _marks131191_))
                               _e131190_)
                              (if (box? _e131190_)
                                  (box (gx#stx-wrap
                                        (unbox _e131190_)
                                        _marks131191_))
                                  _e131190_))))))
            (if (##structure-instance-of? _stx131186_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131186_ '1 gx#AST::t '#f)
                _stx131186_))))
    (define gx#syntax->datum
      (lambda (_stx131184_)
        (if (##structure-instance-of? _stx131184_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx131184_ '1 gx#AST::t '#f))
            (if (pair? _stx131184_)
                (cons (gx#syntax->datum (car _stx131184_))
                      (gx#syntax->datum (cdr _stx131184_)))
                (if (vector? _stx131184_)
                    (vector-map gx#syntax->datum _stx131184_)
                    (if (box? _stx131184_)
                        (box (gx#syntax->datum (unbox _stx131184_)))
                        _stx131184_))))))
    (define gx#datum->syntax__%
      (lambda (_stx131127_ _datum131128_ _src131129_ _quote?131130_)
        (letrec ((_wrap-datum131132_
                  (lambda (_e131156_ _marks131157_)
                    (_wrap-inner131134_
                     _e131156_
                     (lambda (_g131158131160_)
                       (##structure
                        gx#identifier-wrap::t
                        _g131158131160_
                        _src131129_
                        _marks131157_)))))
                 (_wrap-quote131133_
                  (lambda (_e131148_ _ctx131149_ _marks131150_)
                    (_wrap-inner131134_
                     _e131148_
                     (lambda (_g131151131153_)
                       (##structure
                        gx#syntax-quote::t
                        _g131151131153_
                        _src131129_
                        _ctx131149_
                        _marks131150_)))))
                 (_wrap-inner131134_
                  (lambda (_e131141_ _wrap-e131142_)
                    (let _recur131144_ ((_e131146_ _e131141_))
                      (if (symbol? _e131146_)
                          (_wrap-e131142_ _e131146_)
                          (if (pair? _e131146_)
                              (cons (_recur131144_ (car _e131146_))
                                    (_recur131144_ (cdr _e131146_)))
                              (if (vector? _e131146_)
                                  (vector-map _recur131144_ _e131146_)
                                  (if (box? _e131146_)
                                      (box (_recur131144_ (unbox _e131146_)))
                                      _e131146_)))))))
                 (_wrap-outer131135_
                  (lambda (_e131139_)
                    (if (##structure-instance-of? _e131139_ 'gerbil#AST::t)
                        _e131139_
                        (##structure gx#AST::t _e131139_ _src131129_)))))
          (if (##structure-instance-of? _datum131128_ 'gerbil#AST::t)
              _datum131128_
              (if (not _stx131127_)
                  (##structure gx#AST::t _datum131128_ _src131129_)
                  (if (gx#identifier? _stx131127_)
                      (let ((_stx131137_ (gx#stx-unwrap__0 _stx131127_)))
                        (_wrap-outer131135_
                         (if (##structure-direct-instance-of?
                              _stx131137_
                              'gx#syntax-quote::t)
                             (if _quote?131130_
                                 (_wrap-quote131133_
                                  _datum131128_
                                  (##unchecked-structure-ref
                                   _stx131137_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx131137_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum131132_
                                  _datum131128_
                                  (##unchecked-structure-ref
                                   _stx131137_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum131132_
                              _datum131128_
                              (##unchecked-structure-ref
                               _stx131137_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx131127_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx131166_ _datum131167_)
        (let* ((_src131169_ '#f) (_quote?131171_ '#t))
          (gx#datum->syntax__%
           _stx131166_
           _datum131167_
           _src131169_
           _quote?131171_))))
    (define gx#datum->syntax__1
      (lambda (_stx131173_ _datum131174_ _src131175_)
        (let ((_quote?131177_ '#t))
          (gx#datum->syntax__%
           _stx131173_
           _datum131174_
           _src131175_
           _quote?131177_))))
    (define gx#datum->syntax
      (lambda _g135492_
        (let ((_g135491_ (##length _g135492_)))
          (cond ((##fx= _g135491_ 2)
                 (apply (lambda (_stx131166_ _datum131167_)
                          (gx#datum->syntax__0 _stx131166_ _datum131167_))
                        _g135492_))
                ((##fx= _g135491_ 3)
                 (apply (lambda (_stx131173_ _datum131174_ _src131175_)
                          (gx#datum->syntax__1
                           _stx131173_
                           _datum131174_
                           _src131175_))
                        _g135492_))
                ((##fx= _g135491_ 4)
                 (apply (lambda (_stx131179_
                                 _datum131180_
                                 _src131181_
                                 _quote?131182_)
                          (gx#datum->syntax__%
                           _stx131179_
                           _datum131180_
                           _src131181_
                           _quote?131182_))
                        _g135492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g135492_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx131103_ _marks131104_)
        (let _lp131106_ ((_e131108_ _stx131103_)
                         (_marks131109_ _marks131104_)
                         (_src131110_ (gx#stx-source _stx131103_)))
          (if (##structure-direct-instance-of? _e131108_ 'gx#syntax-wrap::t)
              (_lp131106_
               (##unchecked-structure-ref _e131108_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e131108_ '3 gx#syntax-wrap::t '#f)
                _marks131109_)
               (##unchecked-structure-ref _e131108_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e131108_
                   'gx#identifier-wrap::t)
                  (if (null? _marks131109_)
                      _e131108_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e131108_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e131108_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e131108_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks131109_)))
                  (if (##structure-direct-instance-of?
                       _e131108_
                       'gx#syntax-quote::t)
                      _e131108_
                      (if (##structure-instance-of? _e131108_ 'gerbil#AST::t)
                          (_lp131106_
                           (##unchecked-structure-ref
                            _e131108_
                            '1
                            gx#AST::t
                            '#f)
                           _marks131109_
                           (##unchecked-structure-ref
                            _e131108_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e131108_)
                              (##structure
                               gx#identifier-wrap::t
                               _e131108_
                               _src131110_
                               (reverse _marks131109_))
                              (if (null? _marks131109_)
                                  _e131108_
                                  (if (pair? _e131108_)
                                      (cons (gx#stx-wrap
                                             (car _e131108_)
                                             _marks131109_)
                                            (gx#stx-wrap
                                             (cdr _e131108_)
                                             _marks131109_))
                                      (if (vector? _e131108_)
                                          (vector-map
                                           (lambda (_g131111131113_)
                                             (gx#stx-wrap
                                              _g131111131113_
                                              _marks131109_))
                                           _e131108_)
                                          (if (box? _e131108_)
                                              (box (gx#stx-wrap
                                                    (unbox _e131108_)
                                                    _marks131109_))
                                              _e131108_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx131119_)
        (let ((_marks131121_ '()))
          (gx#stx-unwrap__% _stx131119_ _marks131121_))))
    (define gx#stx-unwrap
      (lambda _g135494_
        (let ((_g135493_ (##length _g135494_)))
          (cond ((##fx= _g135493_ 1)
                 (apply (lambda (_stx131119_) (gx#stx-unwrap__0 _stx131119_))
                        _g135494_))
                ((##fx= _g135493_ 2)
                 (apply (lambda (_stx131123_ _marks131124_)
                          (gx#stx-unwrap__% _stx131123_ _marks131124_))
                        _g135494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g135494_))))))
    (define gx#stx-wrap
      (lambda (_stx131096_ _marks131097_)
        (foldl1 (lambda (_mark131099_ _stx131100_)
                  (gx#stx-apply-mark _stx131100_ _mark131099_))
                _stx131096_
                _marks131097_)))
    (define gx#stx-rewrap
      (lambda (_stx131090_ _marks131091_)
        (foldr1 (lambda (_mark131093_ _stx131094_)
                  (gx#stx-apply-mark _stx131094_ _mark131093_))
                _stx131090_
                _marks131091_)))
    (define gx#stx-apply-mark
      (lambda (_stx131087_ _mark131088_)
        (if (##structure-direct-instance-of? _stx131087_ 'gx#syntax-quote::t)
            _stx131087_
            (if (and (##structure-direct-instance-of?
                      _stx131087_
                      'gx#syntax-wrap::t)
                     (eq? _mark131088_
                          (##unchecked-structure-ref
                           _stx131087_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx131087_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx131087_
                 (gx#stx-source _stx131087_)
                 _mark131088_)))))
    (define gx#apply-mark
      (lambda (_mark131051_ _marks131052_)
        (let* ((_marks131053131061_ _marks131052_)
               (_else131055131069_
                (lambda () (cons _mark131051_ _marks131052_)))
               (_K131057131075_
                (lambda (_rest131072_ _hd131073_)
                  (if (eq? _mark131051_ _hd131073_)
                      _rest131072_
                      (cons _mark131051_ _marks131052_)))))
          (if (##pair? _marks131053131061_)
              (let ((_hd131058131078_ (##car _marks131053131061_))
                    (_tl131059131080_ (##cdr _marks131053131061_)))
                (let* ((_hd131083_ _hd131058131078_)
                       (_rest131085_ _tl131059131080_))
                  (_K131057131075_ _rest131085_ _hd131083_)))
              (_else131055131069_)))))
    (define gx#stx-e
      (lambda (_stx131049_)
        (if (##structure-direct-instance-of? _stx131049_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx131049_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx131049_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131049_ '1 gx#AST::t '#f)
                _stx131049_))))
    (define gx#stx-source
      (lambda (_stx131047_)
        (if (##structure-instance-of? _stx131047_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx131047_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx131041_ _src131042_)
        (if (or (##structure-instance-of? _stx131041_ 'gerbil#AST::t)
                (not _src131042_))
            _stx131041_
            (##structure gx#AST::t _stx131041_ _src131042_))))
    (define gx#stx-datum?
      (lambda (_stx131039_) (gx#self-quoting? (gx#stx-e _stx131039_))))
    (define gx#self-quoting?
      (lambda (_x131022_)
        (let ((_$e131024_ (immediate? _x131022_)))
          (if _$e131024_
              _$e131024_
              (let ((_$e131027_ (number? _x131022_)))
                (if _$e131027_
                    _$e131027_
                    (let ((_$e131030_ (keyword? _x131022_)))
                      (if _$e131030_
                          _$e131030_
                          (let ((_$e131033_ (string? _x131022_)))
                            (if _$e131033_
                                _$e131033_
                                (let ((_$e131036_ (vector? _x131022_)))
                                  (if _$e131036_
                                      _$e131036_
                                      (u8vector? _x131022_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e131020_) (boolean? (gx#stx-e _e131020_))))
    (define gx#stx-keyword?
      (lambda (_e131018_) (keyword? (gx#stx-e _e131018_))))
    (define gx#stx-char? (lambda (_e131016_) (char? (gx#stx-e _e131016_))))
    (define gx#stx-number? (lambda (_e131014_) (number? (gx#stx-e _e131014_))))
    (define gx#stx-fixnum? (lambda (_e131012_) (fixnum? (gx#stx-e _e131012_))))
    (define gx#stx-string? (lambda (_e131010_) (string? (gx#stx-e _e131010_))))
    (define gx#stx-null? (lambda (_e131008_) (null? (gx#stx-e _e131008_))))
    (define gx#stx-pair? (lambda (_e131006_) (pair? (gx#stx-e _e131006_))))
    (define gx#stx-list?
      (lambda (_e130968_)
        (let* ((_g130969130978_ (gx#stx-e _e130968_))
               (_E130972130982_
                (lambda () (error '"No clause matching" _g130969130978_))))
          (let ((_K130974130998_
                 (lambda (_rest130996_) (gx#stx-list? _rest130996_)))
                (_K130973130988_ (lambda (_tail130986_) (null? _tail130986_))))
            (if (##pair? _g130969130978_)
                (let* ((_tl130976131001_ (##cdr _g130969130978_))
                       (_rest131004_ _tl130976131001_))
                  (gx#stx-list? _rest131004_))
                (let ((_tail130991_ _g130969130978_))
                  (null? _tail130991_)))))))
    (define gx#stx-pair/null?
      (lambda (_e130961_)
        (let* ((_e130963_ (gx#stx-e _e130961_)) (_$e130965_ (pair? _e130963_)))
          (if _$e130965_ _$e130965_ (null? _e130963_)))))
    (define gx#stx-vector? (lambda (_e130959_) (vector? (gx#stx-e _e130959_))))
    (define gx#stx-box? (lambda (_e130957_) (box? (gx#stx-e _e130957_))))
    (define gx#stx-eq?
      (lambda (_x130954_ _y130955_)
        (eq? (gx#stx-e _x130954_) (gx#stx-e _y130955_))))
    (define gx#stx-eqv?
      (lambda (_x130951_ _y130952_)
        (eqv? (gx#stx-e _x130951_) (gx#stx-e _y130952_))))
    (define gx#stx-equal?
      (lambda (_x130948_ _y130949_)
        (equal? (gx#stx-e _x130948_) (gx#stx-e _y130949_))))
    (define gx#stx-false? (lambda (_x130946_) (not (gx#stx-e _x130946_))))
    (define gx#stx-identifier
      (lambda (_template130943_ . _args130944_)
        (gx#datum->syntax__1
         _template130943_
         (apply make-symbol (gx#syntax->datum _args130944_))
         (gx#stx-source _template130943_))))
    (define gx#stx-identifier-marks
      (lambda (_stx130941_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx130941_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx130939_)
        (if (##structure-direct-instance-of?
             _stx130939_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx130939_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx130939_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx130939_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx130939_)))))
    (define gx#stx-identifier-context
      (lambda (_stx130935_)
        (let ((_stx130937_ (gx#stx-unwrap__0 _stx130935_)))
          (if (gx#identifier-quote? _stx130937_)
              (##unchecked-structure-ref _stx130937_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx130890_)
        (let* ((_g130891130901_ (gx#stx-e _stx130890_))
               (_else130894130909_ (lambda () '#f)))
          (let ((_K130897130923_
                 (lambda (_rest130920_ _hd130921_)
                   (if (gx#identifier? _hd130921_)
                       (gx#identifier-list? _rest130920_)
                       '#f)))
                (_K130896130914_ (lambda () '#t)))
            (let ((_try-match130893130917_
                   (lambda ()
                     (if (##null? _g130891130901_)
                         (_K130896130914_)
                         (_else130894130909_)))))
              (if (##pair? _g130891130901_)
                  (let ((_tl130899130928_ (##cdr _g130891130901_))
                        (_hd130898130926_ (##car _g130891130901_)))
                    (let ((_hd130931_ _hd130898130926_)
                          (_rest130933_ _tl130899130928_))
                      (_K130897130923_ _rest130933_ _hd130931_)))
                  (_try-match130893130917_)))))))
    (define gx#genident__%
      (lambda (_e130867_ _src130868_)
        (gx#stx-wrap-source
         (gensym (let ((_e130870_ (gx#stx-e _e130867_)))
                   (if (interned-symbol? _e130870_) _e130870_ 'g)))
         (let ((_$e130872_ (gx#stx-source _e130867_)))
           (if _$e130872_ _$e130872_ _src130868_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e130879_ 'g) (_src130881_ '#f))
          (gx#genident__% _e130879_ _src130881_))))
    (define gx#genident__1
      (lambda (_e130883_)
        (let ((_src130885_ '#f)) (gx#genident__% _e130883_ _src130885_))))
    (define gx#genident
      (lambda _g135496_
        (let ((_g135495_ (##length _g135496_)))
          (cond ((##fx= _g135495_ 0)
                 (apply (lambda () (gx#genident__0)) _g135496_))
                ((##fx= _g135495_ 1)
                 (apply (lambda (_e130883_) (gx#genident__1 _e130883_))
                        _g135496_))
                ((##fx= _g135495_ 2)
                 (apply (lambda (_e130887_ _src130888_)
                          (gx#genident__% _e130887_ _src130888_))
                        _g135496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g135496_))))))
    (define gx#gentemps
      (lambda (_stx-lst130864_) (gx#stx-map1 gx#genident _stx-lst130864_)))
    (define gx#syntax->list
      (lambda (_stx130862_) (gx#stx-map1 values _stx130862_)))
    (define gx#stx-car
      (lambda (_stx130859_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx130859_)))))
    (define gx#stx-cdr
      (lambda (_stx130856_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx130856_)))))
    (define gx#stx-length
      (lambda (_stx130821_)
        (let _lp130823_ ((_rest130825_ _stx130821_) (_n130826_ '0))
          (let* ((_g130827130835_ (gx#stx-e _rest130825_))
                 (_else130829130843_ (lambda () _n130826_))
                 (_K130831130848_
                  (lambda (_rest130846_)
                    (_lp130823_ _rest130846_ (fx+ _n130826_ '1)))))
            (if (##pair? _g130827130835_)
                (let* ((_tl130833130851_ (##cdr _g130827130835_))
                       (_rest130854_ _tl130833130851_))
                  (_K130831130848_ _rest130854_))
                (_else130829130843_))))))
    (define gx#stx-for-each
      (lambda _g135498_
        (let ((_g135497_ (##length _g135498_)))
          (cond ((##fx= _g135497_ 2)
                 (apply (lambda (_f130814_ _stx130815_)
                          (gx#stx-for-each1 _f130814_ _stx130815_))
                        _g135498_))
                ((##fx= _g135497_ 3)
                 (apply (lambda (_f130817_ _xstx130818_ _ystx130819_)
                          (gx#stx-for-each2
                           _f130817_
                           _xstx130818_
                           _ystx130819_))
                        _g135498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g135498_))))))
    (define gx#stx-for-each1
      (lambda (_f130764_ _stx130765_)
        (if (procedure? _f130764_)
            '#!void
            (error '"expected procedure" _f130764_))
        (let _lp130767_ ((_rest130769_ _stx130765_))
          (let* ((_g130770130780_ (gx#syntax-e _rest130769_))
                 (_else130773130788_ (lambda () (_f130764_ _rest130769_))))
            (let ((_K130776130802_
                   (lambda (_rest130799_ _hd130800_)
                     (_f130764_ _hd130800_)
                     (_lp130767_ _rest130799_)))
                  (_K130775130793_ (lambda () '#!void)))
              (let ((_try-match130772130796_
                     (lambda ()
                       (if (##null? _g130770130780_)
                           (_K130775130793_)
                           (_else130773130788_)))))
                (if (##pair? _g130770130780_)
                    (let ((_tl130778130807_ (##cdr _g130770130780_))
                          (_hd130777130805_ (##car _g130770130780_)))
                      (let ((_hd130810_ _hd130777130805_)
                            (_rest130812_ _tl130778130807_))
                        (_K130776130802_ _rest130812_ _hd130810_)))
                    (_try-match130772130796_))))))))
    (define gx#stx-for-each2
      (lambda (_f130669_ _xstx130670_ _ystx130671_)
        (if (procedure? _f130669_)
            '#!void
            (error '"expected procedure" _f130669_))
        (let _lp130673_ ((_xrest130675_ _xstx130670_)
                         (_yrest130676_ _ystx130671_))
          (let* ((_g130677130687_ (gx#syntax-e _xrest130675_))
                 (_else130680130695_ (lambda () '#!void)))
            (let ((_K130683130752_
                   (lambda (_xrest130721_ _xhd130722_)
                     (let* ((_g130723130730_ (gx#syntax-e _yrest130676_))
                            (_E130725130734_
                             (lambda ()
                               (error '"No clause matching" _g130723130730_)))
                            (_K130726130740_
                             (lambda (_yrest130737_ _yhd130738_)
                               (_f130669_ _xhd130722_ _yhd130738_)
                               (_lp130673_ _xrest130721_ _yrest130737_))))
                       (if (##pair? _g130723130730_)
                           (let ((_hd130727130743_ (##car _g130723130730_))
                                 (_tl130728130745_ (##cdr _g130723130730_)))
                             (let* ((_yhd130748_ _hd130727130743_)
                                    (_yrest130750_ _tl130728130745_))
                               (_K130726130740_ _yrest130750_ _yhd130748_)))
                           (_E130725130734_)))))
                  (_K130682130715_
                   (lambda ()
                     (let* ((_yrest130699130704_ _yrest130676_)
                            (_E130701130708_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130699130704_)))
                            (_K130702130712_
                             (lambda ()
                               (_f130669_ _xrest130675_ _yrest130676_))))
                       (if (not (gx#stx-null? _yrest130699130704_))
                           (_K130702130712_)
                           (_E130701130708_))))))
              (let ((_try-match130679130718_
                     (lambda ()
                       (if (not (null? _g130677130687_))
                           (_K130682130715_)
                           (_else130680130695_)))))
                (if (##pair? _g130677130687_)
                    (let ((_tl130685130757_ (##cdr _g130677130687_))
                          (_hd130684130755_ (##car _g130677130687_)))
                      (let ((_xhd130760_ _hd130684130755_)
                            (_xrest130762_ _tl130685130757_))
                        (_K130683130752_ _xrest130762_ _xhd130760_)))
                    (_try-match130679130718_))))))))
    (define gx#stx-map
      (lambda _g135500_
        (let ((_g135499_ (##length _g135500_)))
          (cond ((##fx= _g135499_ 2)
                 (apply (lambda (_f130662_ _stx130663_)
                          (gx#stx-map1 _f130662_ _stx130663_))
                        _g135500_))
                ((##fx= _g135499_ 3)
                 (apply (lambda (_f130665_ _xstx130666_ _ystx130667_)
                          (gx#stx-map2 _f130665_ _xstx130666_ _ystx130667_))
                        _g135500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g135500_))))))
    (define gx#stx-map1
      (lambda (_f130612_ _stx130613_)
        (if (procedure? _f130612_)
            '#!void
            (error '"expected procedure" _f130612_))
        (let _recur130615_ ((_rest130617_ _stx130613_))
          (let* ((_g130618130628_ (gx#syntax-e _rest130617_))
                 (_else130621130636_ (lambda () (_f130612_ _rest130617_))))
            (let ((_K130624130650_
                   (lambda (_rest130647_ _hd130648_)
                     (cons (_f130612_ _hd130648_)
                           (_recur130615_ _rest130647_))))
                  (_K130623130641_ (lambda () '())))
              (let ((_try-match130620130644_
                     (lambda ()
                       (if (##null? _g130618130628_)
                           (_K130623130641_)
                           (_else130621130636_)))))
                (if (##pair? _g130618130628_)
                    (let ((_tl130626130655_ (##cdr _g130618130628_))
                          (_hd130625130653_ (##car _g130618130628_)))
                      (let ((_hd130658_ _hd130625130653_)
                            (_rest130660_ _tl130626130655_))
                        (_K130624130650_ _rest130660_ _hd130658_)))
                    (_try-match130620130644_))))))))
    (define gx#stx-map2
      (lambda (_f130517_ _xstx130518_ _ystx130519_)
        (if (procedure? _f130517_)
            '#!void
            (error '"expected procedure" _f130517_))
        (let _recur130521_ ((_xrest130523_ _xstx130518_)
                            (_yrest130524_ _ystx130519_))
          (let* ((_g130525130535_ (gx#syntax-e _xrest130523_))
                 (_else130528130543_ (lambda () '())))
            (let ((_K130531130600_
                   (lambda (_xrest130569_ _xhd130570_)
                     (let* ((_g130571130578_ (gx#syntax-e _yrest130524_))
                            (_E130573130582_
                             (lambda ()
                               (error '"No clause matching" _g130571130578_)))
                            (_K130574130588_
                             (lambda (_yrest130585_ _yhd130586_)
                               (cons (_f130517_ _xhd130570_ _yhd130586_)
                                     (_recur130521_
                                      _xrest130569_
                                      _yrest130585_)))))
                       (if (##pair? _g130571130578_)
                           (let ((_hd130575130591_ (##car _g130571130578_))
                                 (_tl130576130593_ (##cdr _g130571130578_)))
                             (let* ((_yhd130596_ _hd130575130591_)
                                    (_yrest130598_ _tl130576130593_))
                               (_K130574130588_ _yrest130598_ _yhd130596_)))
                           (_E130573130582_)))))
                  (_K130530130563_
                   (lambda ()
                     (let* ((_yrest130547130552_ _yrest130524_)
                            (_E130549130556_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130547130552_)))
                            (_K130550130560_
                             (lambda ()
                               (_f130517_ _xrest130523_ _yrest130524_))))
                       (if (not (gx#stx-null? _yrest130547130552_))
                           (_K130550130560_)
                           (_E130549130556_))))))
              (let ((_try-match130527130566_
                     (lambda ()
                       (if (not (null? _g130525130535_))
                           (_K130530130563_)
                           (_else130528130543_)))))
                (if (##pair? _g130525130535_)
                    (let ((_tl130533130605_ (##cdr _g130525130535_))
                          (_hd130532130603_ (##car _g130525130535_)))
                      (let ((_xhd130608_ _hd130532130603_)
                            (_xrest130610_ _tl130533130605_))
                        (_K130531130600_ _xrest130610_ _xhd130608_)))
                    (_try-match130527130566_))))))))
    (define gx#stx-andmap
      (lambda (_f130467_ _stx130468_)
        (if (procedure? _f130467_)
            '#!void
            (error '"expected procedure" _f130467_))
        (let _lp130470_ ((_rest130472_ _stx130468_))
          (let* ((_g130473130483_ (gx#syntax-e _rest130472_))
                 (_else130476130491_ (lambda () (_f130467_ _rest130472_))))
            (let ((_K130479130505_
                   (lambda (_rest130502_ _hd130503_)
                     (if (_f130467_ _hd130503_)
                         (_lp130470_ _rest130502_)
                         '#f)))
                  (_K130478130496_ (lambda () '#t)))
              (let ((_try-match130475130499_
                     (lambda ()
                       (if (##null? _g130473130483_)
                           (_K130478130496_)
                           (_else130476130491_)))))
                (if (##pair? _g130473130483_)
                    (let ((_tl130481130510_ (##cdr _g130473130483_))
                          (_hd130480130508_ (##car _g130473130483_)))
                      (let ((_hd130513_ _hd130480130508_)
                            (_rest130515_ _tl130481130510_))
                        (_K130479130505_ _rest130515_ _hd130513_)))
                    (_try-match130475130499_))))))))
    (define gx#stx-ormap
      (lambda (_f130414_ _stx130415_)
        (if (procedure? _f130414_)
            '#!void
            (error '"expected procedure" _f130414_))
        (let _lp130417_ ((_rest130419_ _stx130415_))
          (let* ((_g130420130430_ (gx#syntax-e _rest130419_))
                 (_else130423130438_ (lambda () (_f130414_ _rest130419_))))
            (let ((_K130426130455_
                   (lambda (_rest130449_ _hd130450_)
                     (let ((_$e130452_ (_f130414_ _hd130450_)))
                       (if _$e130452_ _$e130452_ (_lp130417_ _rest130449_)))))
                  (_K130425130443_ (lambda () '#f)))
              (let ((_try-match130422130446_
                     (lambda ()
                       (if (##null? _g130420130430_)
                           (_K130425130443_)
                           (_else130423130438_)))))
                (if (##pair? _g130420130430_)
                    (let ((_tl130428130460_ (##cdr _g130420130430_))
                          (_hd130427130458_ (##car _g130420130430_)))
                      (let ((_hd130463_ _hd130427130458_)
                            (_rest130465_ _tl130428130460_))
                        (_K130426130455_ _rest130465_ _hd130463_)))
                    (_try-match130422130446_))))))))
    (define gx#stx-foldl
      (lambda (_f130362_ _iv130363_ _stx130364_)
        (if (procedure? _f130362_)
            '#!void
            (error '"expected procedure" _f130362_))
        (let _lp130366_ ((_r130368_ _iv130363_) (_rest130369_ _stx130364_))
          (let* ((_g130370130380_ (gx#syntax-e _rest130369_))
                 (_else130373130388_
                  (lambda () (_f130362_ _rest130369_ _r130368_))))
            (let ((_K130376130402_
                   (lambda (_rest130399_ _hd130400_)
                     (_lp130366_
                      (_f130362_ _hd130400_ _r130368_)
                      _rest130399_)))
                  (_K130375130393_ (lambda () _r130368_)))
              (let ((_try-match130372130396_
                     (lambda ()
                       (if (##null? _g130370130380_)
                           (_K130375130393_)
                           (_else130373130388_)))))
                (if (##pair? _g130370130380_)
                    (let ((_tl130378130407_ (##cdr _g130370130380_))
                          (_hd130377130405_ (##car _g130370130380_)))
                      (let ((_hd130410_ _hd130377130405_)
                            (_rest130412_ _tl130378130407_))
                        (_K130376130402_ _rest130412_ _hd130410_)))
                    (_try-match130372130396_))))))))
    (define gx#stx-foldr
      (lambda (_f130311_ _iv130312_ _stx130313_)
        (if (procedure? _f130311_)
            '#!void
            (error '"expected procedure" _f130311_))
        (let _recur130315_ ((_rest130317_ _stx130313_))
          (let* ((_g130318130328_ (gx#syntax-e _rest130317_))
                 (_else130321130336_
                  (lambda () (_f130311_ _rest130317_ _iv130312_))))
            (let ((_K130324130350_
                   (lambda (_rest130347_ _hd130348_)
                     (_f130311_ _hd130348_ (_recur130315_ _rest130347_))))
                  (_K130323130341_ (lambda () _iv130312_)))
              (let ((_try-match130320130344_
                     (lambda ()
                       (if (##null? _g130318130328_)
                           (_K130323130341_)
                           (_else130321130336_)))))
                (if (##pair? _g130318130328_)
                    (let ((_tl130326130355_ (##cdr _g130318130328_))
                          (_hd130325130353_ (##car _g130318130328_)))
                      (let ((_hd130358_ _hd130325130353_)
                            (_rest130360_ _tl130326130355_))
                        (_K130324130350_ _rest130360_ _hd130358_)))
                    (_try-match130320130344_))))))))
    (define gx#stx-reverse
      (lambda (_stx130309_) (gx#stx-foldl cons '() _stx130309_)))
    (define gx#stx-last
      (lambda (_stx130270_)
        (let _lp130272_ ((_rest130274_ _stx130270_))
          (let* ((_g130275130283_ (gx#syntax-e _rest130274_))
                 (_else130277130291_ (lambda () _rest130274_))
                 (_K130279130297_
                  (lambda (_rest130294_ _hd130295_)
                    (if (gx#stx-null? _rest130294_)
                        _hd130295_
                        (_lp130272_ _rest130294_)))))
            (if (##pair? _g130275130283_)
                (let ((_hd130280130300_ (##car _g130275130283_))
                      (_tl130281130302_ (##cdr _g130275130283_)))
                  (let* ((_hd130305_ _hd130280130300_)
                         (_rest130307_ _tl130281130302_))
                    (_K130279130297_ _rest130307_ _hd130305_)))
                (_else130277130291_))))))
    (define gx#stx-last-pair
      (lambda (_stx130241_)
        (let _lp130243_ ((_hd130245_ _stx130241_))
          (let* ((_g130246130253_ (gx#syntax-e _hd130245_))
                 (_E130248130257_
                  (lambda () (error '"No clause matching" _g130246130253_)))
                 (_K130249130262_
                  (lambda (_rest130260_)
                    (if (gx#stx-pair? _rest130260_)
                        (_lp130243_ _rest130260_)
                        _hd130245_))))
            (if (##pair? _g130246130253_)
                (let* ((_tl130251130265_ (##cdr _g130246130253_))
                       (_rest130268_ _tl130251130265_))
                  (_K130249130262_ _rest130268_))
                (_E130248130257_))))))
    (define gx#stx-list-tail
      (lambda (_stx130210_ _k130211_)
        (let _lp130213_ ((_rest130215_ _stx130210_) (_k130216_ _k130211_))
          (if (fxpositive? _k130216_)
              (let* ((_g130217130224_ (gx#syntax-e _rest130215_))
                     (_E130219130228_
                      (lambda ()
                        (error '"No clause matching" _g130217130224_)))
                     (_K130220130233_
                      (lambda (_rest130231_)
                        (_lp130213_ _rest130231_ (fx- _k130216_ '1)))))
                (if (##pair? _g130217130224_)
                    (let* ((_tl130222130236_ (##cdr _g130217130224_))
                           (_rest130239_ _tl130222130236_))
                      (_K130220130233_ _rest130239_))
                    (_E130219130228_)))
              _rest130215_))))
    (define gx#stx-list-ref
      (lambda (_stx130207_ _k130208_)
        (gx#stx-car (gx#stx-list-tail _stx130207_ _k130208_))))
    (define gx#stx-plist?__%
      (lambda (_stx130119_ _key?130120_)
        (if (procedure? _key?130120_)
            '#!void
            (error '"expected procedure" _key?130120_))
        (let _lp130122_ ((_rest130124_ _stx130119_))
          (let* ((_g130125130135_ (gx#stx-e _rest130124_))
                 (_else130128130143_ (lambda () '#f)))
            (let ((_K130131130185_
                   (lambda (_rest130154_ _hd130155_)
                     (if (_key?130120_ _hd130155_)
                         (let* ((_g130156130164_ (gx#stx-e _rest130154_))
                                (_else130158130172_ (lambda () '#f))
                                (_K130160130177_
                                 (lambda (_rest130175_)
                                   (_lp130122_ _rest130175_))))
                           (if (##pair? _g130156130164_)
                               (let* ((_tl130162130180_
                                       (##cdr _g130156130164_))
                                      (_rest130183_ _tl130162130180_))
                                 (_lp130122_ _rest130183_))
                               (_else130158130172_)))
                         '#f)))
                  (_K130130130148_ (lambda () '#t)))
              (let ((_try-match130127130151_
                     (lambda ()
                       (if (##null? _g130125130135_)
                           (_K130130130148_)
                           (_else130128130143_)))))
                (if (##pair? _g130125130135_)
                    (let ((_tl130133130190_ (##cdr _g130125130135_))
                          (_hd130132130188_ (##car _g130125130135_)))
                      (let ((_hd130193_ _hd130132130188_)
                            (_rest130195_ _tl130133130190_))
                        (_K130131130185_ _rest130195_ _hd130193_)))
                    (_try-match130127130151_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx130200_)
        (let ((_key?130202_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx130200_ _key?130202_))))
    (define gx#stx-plist?
      (lambda _g135502_
        (let ((_g135501_ (##length _g135502_)))
          (cond ((##fx= _g135501_ 1)
                 (apply (lambda (_stx130200_) (gx#stx-plist?__0 _stx130200_))
                        _g135502_))
                ((##fx= _g135501_ 2)
                 (apply (lambda (_stx130204_ _key?130205_)
                          (gx#stx-plist?__% _stx130204_ _key?130205_))
                        _g135502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g135502_))))))
    (define gx#stx-getq__%
      (lambda (_key130037_ _stx130038_ _key=?130039_)
        (if (procedure? _key=?130039_)
            '#!void
            (error '"expected procedure" _key=?130039_))
        (let _lp130041_ ((_rest130043_ _stx130038_))
          (let* ((_g130044130052_ (gx#syntax-e _rest130043_))
                 (_else130046130060_ (lambda () '#f))
                 (_K130048130094_
                  (lambda (_rest130063_ _hd130064_)
                    (let* ((_g130065130072_ (gx#syntax-e _rest130063_))
                           (_E130067130076_
                            (lambda ()
                              (error '"No clause matching" _g130065130072_)))
                           (_K130068130082_
                            (lambda (_rest130079_ _val130080_)
                              (if (_key=?130039_ _hd130064_ _key130037_)
                                  _val130080_
                                  (_lp130041_ _rest130079_)))))
                      (if (##pair? _g130065130072_)
                          (let ((_hd130069130085_ (##car _g130065130072_))
                                (_tl130070130087_ (##cdr _g130065130072_)))
                            (let* ((_val130090_ _hd130069130085_)
                                   (_rest130092_ _tl130070130087_))
                              (_K130068130082_ _rest130092_ _val130090_)))
                          (_E130067130076_))))))
            (if (##pair? _g130044130052_)
                (let ((_hd130049130097_ (##car _g130044130052_))
                      (_tl130050130099_ (##cdr _g130044130052_)))
                  (let* ((_hd130102_ _hd130049130097_)
                         (_rest130104_ _tl130050130099_))
                    (_K130048130094_ _rest130104_ _hd130102_)))
                (_else130046130060_))))))
    (define gx#stx-getq__0
      (lambda (_key130109_ _stx130110_)
        (let ((_key=?130112_ gx#stx-eq?))
          (gx#stx-getq__% _key130109_ _stx130110_ _key=?130112_))))
    (define gx#stx-getq
      (lambda _g135504_
        (let ((_g135503_ (##length _g135504_)))
          (cond ((##fx= _g135503_ 2)
                 (apply (lambda (_key130109_ _stx130110_)
                          (gx#stx-getq__0 _key130109_ _stx130110_))
                        _g135504_))
                ((##fx= _g135503_ 3)
                 (apply (lambda (_key130114_ _stx130115_ _key=?130116_)
                          (gx#stx-getq__%
                           _key130114_
                           _stx130115_
                           _key=?130116_))
                        _g135504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g135504_))))))))
