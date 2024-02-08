(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707384295)
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
      (lambda _$args131281_
        (apply make-struct-instance gx#identifier-wrap::t _$args131281_)))
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
      (lambda _$args131278_
        (apply make-struct-instance gx#syntax-wrap::t _$args131278_)))
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
      (lambda _$args131275_
        (apply make-struct-instance gx#syntax-quote::t _$args131275_)))
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
      (lambda (_stx131273_) (symbol? (gx#stx-e _stx131273_))))
    (define gx#identifier-quote?
      (lambda (_stx131271_)
        (if (##structure-direct-instance-of? _stx131271_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx131271_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx131269_)
        (if (##structure-direct-instance-of? _stx131269_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx131269_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx131269_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx131267_)
        (if (##structure-direct-instance-of? _stx131267_ 'gx#syntax-quote::t)
            _stx131267_
            (if (##structure-direct-instance-of?
                 _stx131267_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx131267_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx131250_)
        (if (##structure-direct-instance-of? _stx131250_ 'gx#syntax-wrap::t)
            (let _lp131252_ ((_e131254_
                              (##unchecked-structure-ref
                               _stx131250_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks131255_
                              (cons (##unchecked-structure-ref
                                     _stx131250_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e131254_)
                  (let ((_$e131257_ (##type-id (##structure-type _e131254_))))
                    (if (eq? 'gx#syntax-wrap::t _$e131257_)
                        (_lp131252_
                         (##unchecked-structure-ref _e131254_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e131254_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks131255_))
                        (if (or (eq? 'gx#syntax-quote::t _$e131257_)
                                (eq? 'gx#identifier-wrap::t _$e131257_))
                            (##unchecked-structure-ref
                             _e131254_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e131257_)
                                (_lp131252_
                                 (##unchecked-structure-ref
                                  _e131254_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks131255_)
                                _e131254_))))
                  (if (null? _marks131255_)
                      _e131254_
                      (if (pair? _e131254_)
                          (cons (gx#stx-wrap (car _e131254_) _marks131255_)
                                (gx#stx-wrap (cdr _e131254_) _marks131255_))
                          (if (vector? _e131254_)
                              (vector-map
                               (lambda (_g131262131264_)
                                 (gx#stx-wrap _g131262131264_ _marks131255_))
                               _e131254_)
                              (if (box? _e131254_)
                                  (box (gx#stx-wrap
                                        (unbox _e131254_)
                                        _marks131255_))
                                  _e131254_))))))
            (if (##structure-instance-of? _stx131250_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131250_ '1 gx#AST::t '#f)
                _stx131250_))))
    (define gx#syntax->datum
      (lambda (_stx131248_)
        (if (##structure-instance-of? _stx131248_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx131248_ '1 gx#AST::t '#f))
            (if (pair? _stx131248_)
                (cons (gx#syntax->datum (car _stx131248_))
                      (gx#syntax->datum (cdr _stx131248_)))
                (if (vector? _stx131248_)
                    (vector-map gx#syntax->datum _stx131248_)
                    (if (box? _stx131248_)
                        (box (gx#syntax->datum (unbox _stx131248_)))
                        _stx131248_))))))
    (define gx#datum->syntax__%
      (lambda (_stx131191_ _datum131192_ _src131193_ _quote?131194_)
        (letrec ((_wrap-datum131196_
                  (lambda (_e131220_ _marks131221_)
                    (_wrap-inner131198_
                     _e131220_
                     (lambda (_g131222131224_)
                       (##structure
                        gx#identifier-wrap::t
                        _g131222131224_
                        _src131193_
                        _marks131221_)))))
                 (_wrap-quote131197_
                  (lambda (_e131212_ _ctx131213_ _marks131214_)
                    (_wrap-inner131198_
                     _e131212_
                     (lambda (_g131215131217_)
                       (##structure
                        gx#syntax-quote::t
                        _g131215131217_
                        _src131193_
                        _ctx131213_
                        _marks131214_)))))
                 (_wrap-inner131198_
                  (lambda (_e131205_ _wrap-e131206_)
                    (let _recur131208_ ((_e131210_ _e131205_))
                      (if (symbol? _e131210_)
                          (_wrap-e131206_ _e131210_)
                          (if (pair? _e131210_)
                              (cons (_recur131208_ (car _e131210_))
                                    (_recur131208_ (cdr _e131210_)))
                              (if (vector? _e131210_)
                                  (vector-map _recur131208_ _e131210_)
                                  (if (box? _e131210_)
                                      (box (_recur131208_ (unbox _e131210_)))
                                      _e131210_)))))))
                 (_wrap-outer131199_
                  (lambda (_e131203_)
                    (if (##structure-instance-of? _e131203_ 'gerbil#AST::t)
                        _e131203_
                        (##structure gx#AST::t _e131203_ _src131193_)))))
          (if (##structure-instance-of? _datum131192_ 'gerbil#AST::t)
              _datum131192_
              (if (not _stx131191_)
                  (##structure gx#AST::t _datum131192_ _src131193_)
                  (if (gx#identifier? _stx131191_)
                      (let ((_stx131201_ (gx#stx-unwrap__0 _stx131191_)))
                        (_wrap-outer131199_
                         (if (##structure-direct-instance-of?
                              _stx131201_
                              'gx#syntax-quote::t)
                             (if _quote?131194_
                                 (_wrap-quote131197_
                                  _datum131192_
                                  (##unchecked-structure-ref
                                   _stx131201_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx131201_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum131196_
                                  _datum131192_
                                  (##unchecked-structure-ref
                                   _stx131201_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum131196_
                              _datum131192_
                              (##unchecked-structure-ref
                               _stx131201_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx131191_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx131230_ _datum131231_)
        (let* ((_src131233_ '#f) (_quote?131235_ '#t))
          (gx#datum->syntax__%
           _stx131230_
           _datum131231_
           _src131233_
           _quote?131235_))))
    (define gx#datum->syntax__1
      (lambda (_stx131237_ _datum131238_ _src131239_)
        (let ((_quote?131241_ '#t))
          (gx#datum->syntax__%
           _stx131237_
           _datum131238_
           _src131239_
           _quote?131241_))))
    (define gx#datum->syntax
      (lambda _g135556_
        (let ((_g135555_ (##length _g135556_)))
          (cond ((##fx= _g135555_ 2)
                 (apply (lambda (_stx131230_ _datum131231_)
                          (gx#datum->syntax__0 _stx131230_ _datum131231_))
                        _g135556_))
                ((##fx= _g135555_ 3)
                 (apply (lambda (_stx131237_ _datum131238_ _src131239_)
                          (gx#datum->syntax__1
                           _stx131237_
                           _datum131238_
                           _src131239_))
                        _g135556_))
                ((##fx= _g135555_ 4)
                 (apply (lambda (_stx131243_
                                 _datum131244_
                                 _src131245_
                                 _quote?131246_)
                          (gx#datum->syntax__%
                           _stx131243_
                           _datum131244_
                           _src131245_
                           _quote?131246_))
                        _g135556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g135556_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx131167_ _marks131168_)
        (let _lp131170_ ((_e131172_ _stx131167_)
                         (_marks131173_ _marks131168_)
                         (_src131174_ (gx#stx-source _stx131167_)))
          (if (##structure-direct-instance-of? _e131172_ 'gx#syntax-wrap::t)
              (_lp131170_
               (##unchecked-structure-ref _e131172_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e131172_ '3 gx#syntax-wrap::t '#f)
                _marks131173_)
               (##unchecked-structure-ref _e131172_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e131172_
                   'gx#identifier-wrap::t)
                  (if (null? _marks131173_)
                      _e131172_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e131172_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e131172_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e131172_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks131173_)))
                  (if (##structure-direct-instance-of?
                       _e131172_
                       'gx#syntax-quote::t)
                      _e131172_
                      (if (##structure-instance-of? _e131172_ 'gerbil#AST::t)
                          (_lp131170_
                           (##unchecked-structure-ref
                            _e131172_
                            '1
                            gx#AST::t
                            '#f)
                           _marks131173_
                           (##unchecked-structure-ref
                            _e131172_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e131172_)
                              (##structure
                               gx#identifier-wrap::t
                               _e131172_
                               _src131174_
                               (reverse _marks131173_))
                              (if (null? _marks131173_)
                                  _e131172_
                                  (if (pair? _e131172_)
                                      (cons (gx#stx-wrap
                                             (car _e131172_)
                                             _marks131173_)
                                            (gx#stx-wrap
                                             (cdr _e131172_)
                                             _marks131173_))
                                      (if (vector? _e131172_)
                                          (vector-map
                                           (lambda (_g131175131177_)
                                             (gx#stx-wrap
                                              _g131175131177_
                                              _marks131173_))
                                           _e131172_)
                                          (if (box? _e131172_)
                                              (box (gx#stx-wrap
                                                    (unbox _e131172_)
                                                    _marks131173_))
                                              _e131172_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx131183_)
        (let ((_marks131185_ '()))
          (gx#stx-unwrap__% _stx131183_ _marks131185_))))
    (define gx#stx-unwrap
      (lambda _g135558_
        (let ((_g135557_ (##length _g135558_)))
          (cond ((##fx= _g135557_ 1)
                 (apply (lambda (_stx131183_) (gx#stx-unwrap__0 _stx131183_))
                        _g135558_))
                ((##fx= _g135557_ 2)
                 (apply (lambda (_stx131187_ _marks131188_)
                          (gx#stx-unwrap__% _stx131187_ _marks131188_))
                        _g135558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g135558_))))))
    (define gx#stx-wrap
      (lambda (_stx131160_ _marks131161_)
        (foldl1 (lambda (_mark131163_ _stx131164_)
                  (gx#stx-apply-mark _stx131164_ _mark131163_))
                _stx131160_
                _marks131161_)))
    (define gx#stx-rewrap
      (lambda (_stx131154_ _marks131155_)
        (foldr1 (lambda (_mark131157_ _stx131158_)
                  (gx#stx-apply-mark _stx131158_ _mark131157_))
                _stx131154_
                _marks131155_)))
    (define gx#stx-apply-mark
      (lambda (_stx131151_ _mark131152_)
        (if (##structure-direct-instance-of? _stx131151_ 'gx#syntax-quote::t)
            _stx131151_
            (if (and (##structure-direct-instance-of?
                      _stx131151_
                      'gx#syntax-wrap::t)
                     (eq? _mark131152_
                          (##unchecked-structure-ref
                           _stx131151_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx131151_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx131151_
                 (gx#stx-source _stx131151_)
                 _mark131152_)))))
    (define gx#apply-mark
      (lambda (_mark131115_ _marks131116_)
        (let* ((_marks131117131125_ _marks131116_)
               (_else131119131133_
                (lambda () (cons _mark131115_ _marks131116_)))
               (_K131121131139_
                (lambda (_rest131136_ _hd131137_)
                  (if (eq? _mark131115_ _hd131137_)
                      _rest131136_
                      (cons _mark131115_ _marks131116_)))))
          (if (##pair? _marks131117131125_)
              (let ((_hd131122131142_ (##car _marks131117131125_))
                    (_tl131123131144_ (##cdr _marks131117131125_)))
                (let* ((_hd131147_ _hd131122131142_)
                       (_rest131149_ _tl131123131144_))
                  (_K131121131139_ _rest131149_ _hd131147_)))
              (_else131119131133_)))))
    (define gx#stx-e
      (lambda (_stx131113_)
        (if (##structure-direct-instance-of? _stx131113_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx131113_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx131113_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx131113_ '1 gx#AST::t '#f)
                _stx131113_))))
    (define gx#stx-source
      (lambda (_stx131111_)
        (if (##structure-instance-of? _stx131111_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx131111_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx131105_ _src131106_)
        (if (or (##structure-instance-of? _stx131105_ 'gerbil#AST::t)
                (not _src131106_))
            _stx131105_
            (##structure gx#AST::t _stx131105_ _src131106_))))
    (define gx#stx-datum?
      (lambda (_stx131103_) (gx#self-quoting? (gx#stx-e _stx131103_))))
    (define gx#self-quoting?
      (lambda (_x131086_)
        (let ((_$e131088_ (immediate? _x131086_)))
          (if _$e131088_
              _$e131088_
              (let ((_$e131091_ (number? _x131086_)))
                (if _$e131091_
                    _$e131091_
                    (let ((_$e131094_ (keyword? _x131086_)))
                      (if _$e131094_
                          _$e131094_
                          (let ((_$e131097_ (string? _x131086_)))
                            (if _$e131097_
                                _$e131097_
                                (let ((_$e131100_ (vector? _x131086_)))
                                  (if _$e131100_
                                      _$e131100_
                                      (u8vector? _x131086_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e131084_) (boolean? (gx#stx-e _e131084_))))
    (define gx#stx-keyword?
      (lambda (_e131082_) (keyword? (gx#stx-e _e131082_))))
    (define gx#stx-char? (lambda (_e131080_) (char? (gx#stx-e _e131080_))))
    (define gx#stx-number? (lambda (_e131078_) (number? (gx#stx-e _e131078_))))
    (define gx#stx-fixnum? (lambda (_e131076_) (fixnum? (gx#stx-e _e131076_))))
    (define gx#stx-string? (lambda (_e131074_) (string? (gx#stx-e _e131074_))))
    (define gx#stx-null? (lambda (_e131072_) (null? (gx#stx-e _e131072_))))
    (define gx#stx-pair? (lambda (_e131070_) (pair? (gx#stx-e _e131070_))))
    (define gx#stx-list?
      (lambda (_e131032_)
        (let* ((_g131033131042_ (gx#stx-e _e131032_))
               (_E131036131046_
                (lambda () (error '"No clause matching" _g131033131042_))))
          (let ((_K131038131062_
                 (lambda (_rest131060_) (gx#stx-list? _rest131060_)))
                (_K131037131052_ (lambda (_tail131050_) (null? _tail131050_))))
            (if (##pair? _g131033131042_)
                (let* ((_tl131040131065_ (##cdr _g131033131042_))
                       (_rest131068_ _tl131040131065_))
                  (gx#stx-list? _rest131068_))
                (let ((_tail131055_ _g131033131042_))
                  (null? _tail131055_)))))))
    (define gx#stx-pair/null?
      (lambda (_e131025_)
        (let* ((_e131027_ (gx#stx-e _e131025_)) (_$e131029_ (pair? _e131027_)))
          (if _$e131029_ _$e131029_ (null? _e131027_)))))
    (define gx#stx-vector? (lambda (_e131023_) (vector? (gx#stx-e _e131023_))))
    (define gx#stx-box? (lambda (_e131021_) (box? (gx#stx-e _e131021_))))
    (define gx#stx-eq?
      (lambda (_x131018_ _y131019_)
        (eq? (gx#stx-e _x131018_) (gx#stx-e _y131019_))))
    (define gx#stx-eqv?
      (lambda (_x131015_ _y131016_)
        (eqv? (gx#stx-e _x131015_) (gx#stx-e _y131016_))))
    (define gx#stx-equal?
      (lambda (_x131012_ _y131013_)
        (equal? (gx#stx-e _x131012_) (gx#stx-e _y131013_))))
    (define gx#stx-false? (lambda (_x131010_) (not (gx#stx-e _x131010_))))
    (define gx#stx-identifier
      (lambda (_template131007_ . _args131008_)
        (gx#datum->syntax__1
         _template131007_
         (apply make-symbol (gx#syntax->datum _args131008_))
         (gx#stx-source _template131007_))))
    (define gx#stx-identifier-marks
      (lambda (_stx131005_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx131005_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx131003_)
        (if (##structure-direct-instance-of?
             _stx131003_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx131003_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx131003_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx131003_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx131003_)))))
    (define gx#stx-identifier-context
      (lambda (_stx130999_)
        (let ((_stx131001_ (gx#stx-unwrap__0 _stx130999_)))
          (if (gx#identifier-quote? _stx131001_)
              (##unchecked-structure-ref _stx131001_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx130954_)
        (let* ((_g130955130965_ (gx#stx-e _stx130954_))
               (_else130958130973_ (lambda () '#f)))
          (let ((_K130961130987_
                 (lambda (_rest130984_ _hd130985_)
                   (if (gx#identifier? _hd130985_)
                       (gx#identifier-list? _rest130984_)
                       '#f)))
                (_K130960130978_ (lambda () '#t)))
            (let ((_try-match130957130981_
                   (lambda ()
                     (if (##null? _g130955130965_)
                         (_K130960130978_)
                         (_else130958130973_)))))
              (if (##pair? _g130955130965_)
                  (let ((_tl130963130992_ (##cdr _g130955130965_))
                        (_hd130962130990_ (##car _g130955130965_)))
                    (let ((_hd130995_ _hd130962130990_)
                          (_rest130997_ _tl130963130992_))
                      (_K130961130987_ _rest130997_ _hd130995_)))
                  (_try-match130957130981_)))))))
    (define gx#genident__%
      (lambda (_e130931_ _src130932_)
        (gx#stx-wrap-source
         (gensym (let ((_e130934_ (gx#stx-e _e130931_)))
                   (if (interned-symbol? _e130934_) _e130934_ 'g)))
         (let ((_$e130936_ (gx#stx-source _e130931_)))
           (if _$e130936_ _$e130936_ _src130932_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e130943_ 'g) (_src130945_ '#f))
          (gx#genident__% _e130943_ _src130945_))))
    (define gx#genident__1
      (lambda (_e130947_)
        (let ((_src130949_ '#f)) (gx#genident__% _e130947_ _src130949_))))
    (define gx#genident
      (lambda _g135560_
        (let ((_g135559_ (##length _g135560_)))
          (cond ((##fx= _g135559_ 0)
                 (apply (lambda () (gx#genident__0)) _g135560_))
                ((##fx= _g135559_ 1)
                 (apply (lambda (_e130947_) (gx#genident__1 _e130947_))
                        _g135560_))
                ((##fx= _g135559_ 2)
                 (apply (lambda (_e130951_ _src130952_)
                          (gx#genident__% _e130951_ _src130952_))
                        _g135560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g135560_))))))
    (define gx#gentemps
      (lambda (_stx-lst130928_) (gx#stx-map1 gx#genident _stx-lst130928_)))
    (define gx#syntax->list
      (lambda (_stx130926_) (gx#stx-map1 values _stx130926_)))
    (define gx#stx-car
      (lambda (_stx130923_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx130923_)))))
    (define gx#stx-cdr
      (lambda (_stx130920_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx130920_)))))
    (define gx#stx-length
      (lambda (_stx130885_)
        (let _lp130887_ ((_rest130889_ _stx130885_) (_n130890_ '0))
          (let* ((_g130891130899_ (gx#stx-e _rest130889_))
                 (_else130893130907_ (lambda () _n130890_))
                 (_K130895130912_
                  (lambda (_rest130910_)
                    (_lp130887_ _rest130910_ (fx+ _n130890_ '1)))))
            (if (##pair? _g130891130899_)
                (let* ((_tl130897130915_ (##cdr _g130891130899_))
                       (_rest130918_ _tl130897130915_))
                  (_K130895130912_ _rest130918_))
                (_else130893130907_))))))
    (define gx#stx-for-each
      (lambda _g135562_
        (let ((_g135561_ (##length _g135562_)))
          (cond ((##fx= _g135561_ 2)
                 (apply (lambda (_f130878_ _stx130879_)
                          (gx#stx-for-each1 _f130878_ _stx130879_))
                        _g135562_))
                ((##fx= _g135561_ 3)
                 (apply (lambda (_f130881_ _xstx130882_ _ystx130883_)
                          (gx#stx-for-each2
                           _f130881_
                           _xstx130882_
                           _ystx130883_))
                        _g135562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g135562_))))))
    (define gx#stx-for-each1
      (lambda (_f130828_ _stx130829_)
        (if (procedure? _f130828_)
            '#!void
            (error '"expected procedure" _f130828_))
        (let _lp130831_ ((_rest130833_ _stx130829_))
          (let* ((_g130834130844_ (gx#syntax-e _rest130833_))
                 (_else130837130852_ (lambda () (_f130828_ _rest130833_))))
            (let ((_K130840130866_
                   (lambda (_rest130863_ _hd130864_)
                     (_f130828_ _hd130864_)
                     (_lp130831_ _rest130863_)))
                  (_K130839130857_ (lambda () '#!void)))
              (let ((_try-match130836130860_
                     (lambda ()
                       (if (##null? _g130834130844_)
                           (_K130839130857_)
                           (_else130837130852_)))))
                (if (##pair? _g130834130844_)
                    (let ((_tl130842130871_ (##cdr _g130834130844_))
                          (_hd130841130869_ (##car _g130834130844_)))
                      (let ((_hd130874_ _hd130841130869_)
                            (_rest130876_ _tl130842130871_))
                        (_K130840130866_ _rest130876_ _hd130874_)))
                    (_try-match130836130860_))))))))
    (define gx#stx-for-each2
      (lambda (_f130733_ _xstx130734_ _ystx130735_)
        (if (procedure? _f130733_)
            '#!void
            (error '"expected procedure" _f130733_))
        (let _lp130737_ ((_xrest130739_ _xstx130734_)
                         (_yrest130740_ _ystx130735_))
          (let* ((_g130741130751_ (gx#syntax-e _xrest130739_))
                 (_else130744130759_ (lambda () '#!void)))
            (let ((_K130747130816_
                   (lambda (_xrest130785_ _xhd130786_)
                     (let* ((_g130787130794_ (gx#syntax-e _yrest130740_))
                            (_E130789130798_
                             (lambda ()
                               (error '"No clause matching" _g130787130794_)))
                            (_K130790130804_
                             (lambda (_yrest130801_ _yhd130802_)
                               (_f130733_ _xhd130786_ _yhd130802_)
                               (_lp130737_ _xrest130785_ _yrest130801_))))
                       (if (##pair? _g130787130794_)
                           (let ((_hd130791130807_ (##car _g130787130794_))
                                 (_tl130792130809_ (##cdr _g130787130794_)))
                             (let* ((_yhd130812_ _hd130791130807_)
                                    (_yrest130814_ _tl130792130809_))
                               (_K130790130804_ _yrest130814_ _yhd130812_)))
                           (_E130789130798_)))))
                  (_K130746130779_
                   (lambda ()
                     (let* ((_yrest130763130768_ _yrest130740_)
                            (_E130765130772_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130763130768_)))
                            (_K130766130776_
                             (lambda ()
                               (_f130733_ _xrest130739_ _yrest130740_))))
                       (if (not (gx#stx-null? _yrest130763130768_))
                           (_K130766130776_)
                           (_E130765130772_))))))
              (let ((_try-match130743130782_
                     (lambda ()
                       (if (not (null? _g130741130751_))
                           (_K130746130779_)
                           (_else130744130759_)))))
                (if (##pair? _g130741130751_)
                    (let ((_tl130749130821_ (##cdr _g130741130751_))
                          (_hd130748130819_ (##car _g130741130751_)))
                      (let ((_xhd130824_ _hd130748130819_)
                            (_xrest130826_ _tl130749130821_))
                        (_K130747130816_ _xrest130826_ _xhd130824_)))
                    (_try-match130743130782_))))))))
    (define gx#stx-map
      (lambda _g135564_
        (let ((_g135563_ (##length _g135564_)))
          (cond ((##fx= _g135563_ 2)
                 (apply (lambda (_f130726_ _stx130727_)
                          (gx#stx-map1 _f130726_ _stx130727_))
                        _g135564_))
                ((##fx= _g135563_ 3)
                 (apply (lambda (_f130729_ _xstx130730_ _ystx130731_)
                          (gx#stx-map2 _f130729_ _xstx130730_ _ystx130731_))
                        _g135564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g135564_))))))
    (define gx#stx-map1
      (lambda (_f130676_ _stx130677_)
        (if (procedure? _f130676_)
            '#!void
            (error '"expected procedure" _f130676_))
        (let _recur130679_ ((_rest130681_ _stx130677_))
          (let* ((_g130682130692_ (gx#syntax-e _rest130681_))
                 (_else130685130700_ (lambda () (_f130676_ _rest130681_))))
            (let ((_K130688130714_
                   (lambda (_rest130711_ _hd130712_)
                     (cons (_f130676_ _hd130712_)
                           (_recur130679_ _rest130711_))))
                  (_K130687130705_ (lambda () '())))
              (let ((_try-match130684130708_
                     (lambda ()
                       (if (##null? _g130682130692_)
                           (_K130687130705_)
                           (_else130685130700_)))))
                (if (##pair? _g130682130692_)
                    (let ((_tl130690130719_ (##cdr _g130682130692_))
                          (_hd130689130717_ (##car _g130682130692_)))
                      (let ((_hd130722_ _hd130689130717_)
                            (_rest130724_ _tl130690130719_))
                        (_K130688130714_ _rest130724_ _hd130722_)))
                    (_try-match130684130708_))))))))
    (define gx#stx-map2
      (lambda (_f130581_ _xstx130582_ _ystx130583_)
        (if (procedure? _f130581_)
            '#!void
            (error '"expected procedure" _f130581_))
        (let _recur130585_ ((_xrest130587_ _xstx130582_)
                            (_yrest130588_ _ystx130583_))
          (let* ((_g130589130599_ (gx#syntax-e _xrest130587_))
                 (_else130592130607_ (lambda () '())))
            (let ((_K130595130664_
                   (lambda (_xrest130633_ _xhd130634_)
                     (let* ((_g130635130642_ (gx#syntax-e _yrest130588_))
                            (_E130637130646_
                             (lambda ()
                               (error '"No clause matching" _g130635130642_)))
                            (_K130638130652_
                             (lambda (_yrest130649_ _yhd130650_)
                               (cons (_f130581_ _xhd130634_ _yhd130650_)
                                     (_recur130585_
                                      _xrest130633_
                                      _yrest130649_)))))
                       (if (##pair? _g130635130642_)
                           (let ((_hd130639130655_ (##car _g130635130642_))
                                 (_tl130640130657_ (##cdr _g130635130642_)))
                             (let* ((_yhd130660_ _hd130639130655_)
                                    (_yrest130662_ _tl130640130657_))
                               (_K130638130652_ _yrest130662_ _yhd130660_)))
                           (_E130637130646_)))))
                  (_K130594130627_
                   (lambda ()
                     (let* ((_yrest130611130616_ _yrest130588_)
                            (_E130613130620_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest130611130616_)))
                            (_K130614130624_
                             (lambda ()
                               (_f130581_ _xrest130587_ _yrest130588_))))
                       (if (not (gx#stx-null? _yrest130611130616_))
                           (_K130614130624_)
                           (_E130613130620_))))))
              (let ((_try-match130591130630_
                     (lambda ()
                       (if (not (null? _g130589130599_))
                           (_K130594130627_)
                           (_else130592130607_)))))
                (if (##pair? _g130589130599_)
                    (let ((_tl130597130669_ (##cdr _g130589130599_))
                          (_hd130596130667_ (##car _g130589130599_)))
                      (let ((_xhd130672_ _hd130596130667_)
                            (_xrest130674_ _tl130597130669_))
                        (_K130595130664_ _xrest130674_ _xhd130672_)))
                    (_try-match130591130630_))))))))
    (define gx#stx-andmap
      (lambda (_f130531_ _stx130532_)
        (if (procedure? _f130531_)
            '#!void
            (error '"expected procedure" _f130531_))
        (let _lp130534_ ((_rest130536_ _stx130532_))
          (let* ((_g130537130547_ (gx#syntax-e _rest130536_))
                 (_else130540130555_ (lambda () (_f130531_ _rest130536_))))
            (let ((_K130543130569_
                   (lambda (_rest130566_ _hd130567_)
                     (if (_f130531_ _hd130567_)
                         (_lp130534_ _rest130566_)
                         '#f)))
                  (_K130542130560_ (lambda () '#t)))
              (let ((_try-match130539130563_
                     (lambda ()
                       (if (##null? _g130537130547_)
                           (_K130542130560_)
                           (_else130540130555_)))))
                (if (##pair? _g130537130547_)
                    (let ((_tl130545130574_ (##cdr _g130537130547_))
                          (_hd130544130572_ (##car _g130537130547_)))
                      (let ((_hd130577_ _hd130544130572_)
                            (_rest130579_ _tl130545130574_))
                        (_K130543130569_ _rest130579_ _hd130577_)))
                    (_try-match130539130563_))))))))
    (define gx#stx-ormap
      (lambda (_f130478_ _stx130479_)
        (if (procedure? _f130478_)
            '#!void
            (error '"expected procedure" _f130478_))
        (let _lp130481_ ((_rest130483_ _stx130479_))
          (let* ((_g130484130494_ (gx#syntax-e _rest130483_))
                 (_else130487130502_ (lambda () (_f130478_ _rest130483_))))
            (let ((_K130490130519_
                   (lambda (_rest130513_ _hd130514_)
                     (let ((_$e130516_ (_f130478_ _hd130514_)))
                       (if _$e130516_ _$e130516_ (_lp130481_ _rest130513_)))))
                  (_K130489130507_ (lambda () '#f)))
              (let ((_try-match130486130510_
                     (lambda ()
                       (if (##null? _g130484130494_)
                           (_K130489130507_)
                           (_else130487130502_)))))
                (if (##pair? _g130484130494_)
                    (let ((_tl130492130524_ (##cdr _g130484130494_))
                          (_hd130491130522_ (##car _g130484130494_)))
                      (let ((_hd130527_ _hd130491130522_)
                            (_rest130529_ _tl130492130524_))
                        (_K130490130519_ _rest130529_ _hd130527_)))
                    (_try-match130486130510_))))))))
    (define gx#stx-foldl
      (lambda (_f130426_ _iv130427_ _stx130428_)
        (if (procedure? _f130426_)
            '#!void
            (error '"expected procedure" _f130426_))
        (let _lp130430_ ((_r130432_ _iv130427_) (_rest130433_ _stx130428_))
          (let* ((_g130434130444_ (gx#syntax-e _rest130433_))
                 (_else130437130452_
                  (lambda () (_f130426_ _rest130433_ _r130432_))))
            (let ((_K130440130466_
                   (lambda (_rest130463_ _hd130464_)
                     (_lp130430_
                      (_f130426_ _hd130464_ _r130432_)
                      _rest130463_)))
                  (_K130439130457_ (lambda () _r130432_)))
              (let ((_try-match130436130460_
                     (lambda ()
                       (if (##null? _g130434130444_)
                           (_K130439130457_)
                           (_else130437130452_)))))
                (if (##pair? _g130434130444_)
                    (let ((_tl130442130471_ (##cdr _g130434130444_))
                          (_hd130441130469_ (##car _g130434130444_)))
                      (let ((_hd130474_ _hd130441130469_)
                            (_rest130476_ _tl130442130471_))
                        (_K130440130466_ _rest130476_ _hd130474_)))
                    (_try-match130436130460_))))))))
    (define gx#stx-foldr
      (lambda (_f130375_ _iv130376_ _stx130377_)
        (if (procedure? _f130375_)
            '#!void
            (error '"expected procedure" _f130375_))
        (let _recur130379_ ((_rest130381_ _stx130377_))
          (let* ((_g130382130392_ (gx#syntax-e _rest130381_))
                 (_else130385130400_
                  (lambda () (_f130375_ _rest130381_ _iv130376_))))
            (let ((_K130388130414_
                   (lambda (_rest130411_ _hd130412_)
                     (_f130375_ _hd130412_ (_recur130379_ _rest130411_))))
                  (_K130387130405_ (lambda () _iv130376_)))
              (let ((_try-match130384130408_
                     (lambda ()
                       (if (##null? _g130382130392_)
                           (_K130387130405_)
                           (_else130385130400_)))))
                (if (##pair? _g130382130392_)
                    (let ((_tl130390130419_ (##cdr _g130382130392_))
                          (_hd130389130417_ (##car _g130382130392_)))
                      (let ((_hd130422_ _hd130389130417_)
                            (_rest130424_ _tl130390130419_))
                        (_K130388130414_ _rest130424_ _hd130422_)))
                    (_try-match130384130408_))))))))
    (define gx#stx-reverse
      (lambda (_stx130373_) (gx#stx-foldl cons '() _stx130373_)))
    (define gx#stx-last
      (lambda (_stx130334_)
        (let _lp130336_ ((_rest130338_ _stx130334_))
          (let* ((_g130339130347_ (gx#syntax-e _rest130338_))
                 (_else130341130355_ (lambda () _rest130338_))
                 (_K130343130361_
                  (lambda (_rest130358_ _hd130359_)
                    (if (gx#stx-null? _rest130358_)
                        _hd130359_
                        (_lp130336_ _rest130358_)))))
            (if (##pair? _g130339130347_)
                (let ((_hd130344130364_ (##car _g130339130347_))
                      (_tl130345130366_ (##cdr _g130339130347_)))
                  (let* ((_hd130369_ _hd130344130364_)
                         (_rest130371_ _tl130345130366_))
                    (_K130343130361_ _rest130371_ _hd130369_)))
                (_else130341130355_))))))
    (define gx#stx-last-pair
      (lambda (_stx130305_)
        (let _lp130307_ ((_hd130309_ _stx130305_))
          (let* ((_g130310130317_ (gx#syntax-e _hd130309_))
                 (_E130312130321_
                  (lambda () (error '"No clause matching" _g130310130317_)))
                 (_K130313130326_
                  (lambda (_rest130324_)
                    (if (gx#stx-pair? _rest130324_)
                        (_lp130307_ _rest130324_)
                        _hd130309_))))
            (if (##pair? _g130310130317_)
                (let* ((_tl130315130329_ (##cdr _g130310130317_))
                       (_rest130332_ _tl130315130329_))
                  (_K130313130326_ _rest130332_))
                (_E130312130321_))))))
    (define gx#stx-list-tail
      (lambda (_stx130274_ _k130275_)
        (let _lp130277_ ((_rest130279_ _stx130274_) (_k130280_ _k130275_))
          (if (fxpositive? _k130280_)
              (let* ((_g130281130288_ (gx#syntax-e _rest130279_))
                     (_E130283130292_
                      (lambda ()
                        (error '"No clause matching" _g130281130288_)))
                     (_K130284130297_
                      (lambda (_rest130295_)
                        (_lp130277_ _rest130295_ (fx- _k130280_ '1)))))
                (if (##pair? _g130281130288_)
                    (let* ((_tl130286130300_ (##cdr _g130281130288_))
                           (_rest130303_ _tl130286130300_))
                      (_K130284130297_ _rest130303_))
                    (_E130283130292_)))
              _rest130279_))))
    (define gx#stx-list-ref
      (lambda (_stx130271_ _k130272_)
        (gx#stx-car (gx#stx-list-tail _stx130271_ _k130272_))))
    (define gx#stx-plist?__%
      (lambda (_stx130183_ _key?130184_)
        (if (procedure? _key?130184_)
            '#!void
            (error '"expected procedure" _key?130184_))
        (let _lp130186_ ((_rest130188_ _stx130183_))
          (let* ((_g130189130199_ (gx#stx-e _rest130188_))
                 (_else130192130207_ (lambda () '#f)))
            (let ((_K130195130249_
                   (lambda (_rest130218_ _hd130219_)
                     (if (_key?130184_ _hd130219_)
                         (let* ((_g130220130228_ (gx#stx-e _rest130218_))
                                (_else130222130236_ (lambda () '#f))
                                (_K130224130241_
                                 (lambda (_rest130239_)
                                   (_lp130186_ _rest130239_))))
                           (if (##pair? _g130220130228_)
                               (let* ((_tl130226130244_
                                       (##cdr _g130220130228_))
                                      (_rest130247_ _tl130226130244_))
                                 (_lp130186_ _rest130247_))
                               (_else130222130236_)))
                         '#f)))
                  (_K130194130212_ (lambda () '#t)))
              (let ((_try-match130191130215_
                     (lambda ()
                       (if (##null? _g130189130199_)
                           (_K130194130212_)
                           (_else130192130207_)))))
                (if (##pair? _g130189130199_)
                    (let ((_tl130197130254_ (##cdr _g130189130199_))
                          (_hd130196130252_ (##car _g130189130199_)))
                      (let ((_hd130257_ _hd130196130252_)
                            (_rest130259_ _tl130197130254_))
                        (_K130195130249_ _rest130259_ _hd130257_)))
                    (_try-match130191130215_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx130264_)
        (let ((_key?130266_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx130264_ _key?130266_))))
    (define gx#stx-plist?
      (lambda _g135566_
        (let ((_g135565_ (##length _g135566_)))
          (cond ((##fx= _g135565_ 1)
                 (apply (lambda (_stx130264_) (gx#stx-plist?__0 _stx130264_))
                        _g135566_))
                ((##fx= _g135565_ 2)
                 (apply (lambda (_stx130268_ _key?130269_)
                          (gx#stx-plist?__% _stx130268_ _key?130269_))
                        _g135566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g135566_))))))
    (define gx#stx-getq__%
      (lambda (_key130101_ _stx130102_ _key=?130103_)
        (if (procedure? _key=?130103_)
            '#!void
            (error '"expected procedure" _key=?130103_))
        (let _lp130105_ ((_rest130107_ _stx130102_))
          (let* ((_g130108130116_ (gx#syntax-e _rest130107_))
                 (_else130110130124_ (lambda () '#f))
                 (_K130112130158_
                  (lambda (_rest130127_ _hd130128_)
                    (let* ((_g130129130136_ (gx#syntax-e _rest130127_))
                           (_E130131130140_
                            (lambda ()
                              (error '"No clause matching" _g130129130136_)))
                           (_K130132130146_
                            (lambda (_rest130143_ _val130144_)
                              (if (_key=?130103_ _hd130128_ _key130101_)
                                  _val130144_
                                  (_lp130105_ _rest130143_)))))
                      (if (##pair? _g130129130136_)
                          (let ((_hd130133130149_ (##car _g130129130136_))
                                (_tl130134130151_ (##cdr _g130129130136_)))
                            (let* ((_val130154_ _hd130133130149_)
                                   (_rest130156_ _tl130134130151_))
                              (_K130132130146_ _rest130156_ _val130154_)))
                          (_E130131130140_))))))
            (if (##pair? _g130108130116_)
                (let ((_hd130113130161_ (##car _g130108130116_))
                      (_tl130114130163_ (##cdr _g130108130116_)))
                  (let* ((_hd130166_ _hd130113130161_)
                         (_rest130168_ _tl130114130163_))
                    (_K130112130158_ _rest130168_ _hd130166_)))
                (_else130110130124_))))))
    (define gx#stx-getq__0
      (lambda (_key130173_ _stx130174_)
        (let ((_key=?130176_ gx#stx-eq?))
          (gx#stx-getq__% _key130173_ _stx130174_ _key=?130176_))))
    (define gx#stx-getq
      (lambda _g135568_
        (let ((_g135567_ (##length _g135568_)))
          (cond ((##fx= _g135567_ 2)
                 (apply (lambda (_key130173_ _stx130174_)
                          (gx#stx-getq__0 _key130173_ _stx130174_))
                        _g135568_))
                ((##fx= _g135567_ 3)
                 (apply (lambda (_key130178_ _stx130179_ _key=?130180_)
                          (gx#stx-getq__%
                           _key130178_
                           _stx130179_
                           _key=?130180_))
                        _g135568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g135568_))))))))
