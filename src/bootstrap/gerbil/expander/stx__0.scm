(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707773927)
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
      (lambda _$args137185_
        (apply make-instance gx#identifier-wrap::t _$args137185_)))
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
      (lambda _$args137182_
        (apply make-instance gx#syntax-wrap::t _$args137182_)))
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
      (lambda _$args137179_
        (apply make-instance gx#syntax-quote::t _$args137179_)))
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
      (lambda (_stx137177_) (symbol? (gx#stx-e _stx137177_))))
    (define gx#identifier-quote?
      (lambda (_stx137175_)
        (if (##structure-direct-instance-of? _stx137175_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx137175_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx137173_)
        (if (##structure-direct-instance-of? _stx137173_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx137173_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx137173_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx137171_)
        (if (##structure-direct-instance-of? _stx137171_ 'gx#syntax-quote::t)
            _stx137171_
            (if (##structure-direct-instance-of?
                 _stx137171_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx137171_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx137154_)
        (if (##structure-direct-instance-of? _stx137154_ 'gx#syntax-wrap::t)
            (let _lp137156_ ((_e137158_
                              (##unchecked-structure-ref
                               _stx137154_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks137159_
                              (cons (##unchecked-structure-ref
                                     _stx137154_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e137158_)
                  (let ((_$e137161_ (##type-id (##structure-type _e137158_))))
                    (if (eq? 'gx#syntax-wrap::t _$e137161_)
                        (_lp137156_
                         (##unchecked-structure-ref _e137158_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e137158_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks137159_))
                        (if (or (eq? 'gx#syntax-quote::t _$e137161_)
                                (eq? 'gx#identifier-wrap::t _$e137161_))
                            (##unchecked-structure-ref
                             _e137158_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e137161_)
                                (_lp137156_
                                 (##unchecked-structure-ref
                                  _e137158_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks137159_)
                                _e137158_))))
                  (if (null? _marks137159_)
                      _e137158_
                      (if (pair? _e137158_)
                          (cons (gx#stx-wrap (car _e137158_) _marks137159_)
                                (gx#stx-wrap (cdr _e137158_) _marks137159_))
                          (if (vector? _e137158_)
                              (vector-map
                               (lambda (_g137166137168_)
                                 (gx#stx-wrap _g137166137168_ _marks137159_))
                               _e137158_)
                              (if (box? _e137158_)
                                  (box (gx#stx-wrap
                                        (unbox _e137158_)
                                        _marks137159_))
                                  _e137158_))))))
            (if (##structure-instance-of? _stx137154_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx137154_ '1 gx#AST::t '#f)
                _stx137154_))))
    (define gx#syntax->datum
      (lambda (_stx137152_)
        (if (##structure-instance-of? _stx137152_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx137152_ '1 gx#AST::t '#f))
            (if (pair? _stx137152_)
                (cons (gx#syntax->datum (car _stx137152_))
                      (gx#syntax->datum (cdr _stx137152_)))
                (if (vector? _stx137152_)
                    (vector-map gx#syntax->datum _stx137152_)
                    (if (box? _stx137152_)
                        (box (gx#syntax->datum (unbox _stx137152_)))
                        _stx137152_))))))
    (define gx#datum->syntax__%
      (lambda (_stx137095_ _datum137096_ _src137097_ _quote?137098_)
        (letrec ((_wrap-datum137100_
                  (lambda (_e137124_ _marks137125_)
                    (_wrap-inner137102_
                     _e137124_
                     (lambda (_g137126137128_)
                       (##structure
                        gx#identifier-wrap::t
                        _g137126137128_
                        _src137097_
                        _marks137125_)))))
                 (_wrap-quote137101_
                  (lambda (_e137116_ _ctx137117_ _marks137118_)
                    (_wrap-inner137102_
                     _e137116_
                     (lambda (_g137119137121_)
                       (##structure
                        gx#syntax-quote::t
                        _g137119137121_
                        _src137097_
                        _ctx137117_
                        _marks137118_)))))
                 (_wrap-inner137102_
                  (lambda (_e137109_ _wrap-e137110_)
                    (let _recur137112_ ((_e137114_ _e137109_))
                      (if (symbol? _e137114_)
                          (_wrap-e137110_ _e137114_)
                          (if (pair? _e137114_)
                              (cons (_recur137112_ (car _e137114_))
                                    (_recur137112_ (cdr _e137114_)))
                              (if (vector? _e137114_)
                                  (vector-map _recur137112_ _e137114_)
                                  (if (box? _e137114_)
                                      (box (_recur137112_ (unbox _e137114_)))
                                      _e137114_)))))))
                 (_wrap-outer137103_
                  (lambda (_e137107_)
                    (if (##structure-instance-of? _e137107_ 'gerbil#AST::t)
                        _e137107_
                        (##structure gx#AST::t _e137107_ _src137097_)))))
          (if (##structure-instance-of? _datum137096_ 'gerbil#AST::t)
              _datum137096_
              (if (not _stx137095_)
                  (##structure gx#AST::t _datum137096_ _src137097_)
                  (if (gx#identifier? _stx137095_)
                      (let ((_stx137105_ (gx#stx-unwrap__0 _stx137095_)))
                        (_wrap-outer137103_
                         (if (##structure-direct-instance-of?
                              _stx137105_
                              'gx#syntax-quote::t)
                             (if _quote?137098_
                                 (_wrap-quote137101_
                                  _datum137096_
                                  (##unchecked-structure-ref
                                   _stx137105_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx137105_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum137100_
                                  _datum137096_
                                  (##unchecked-structure-ref
                                   _stx137105_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum137100_
                              _datum137096_
                              (##unchecked-structure-ref
                               _stx137105_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx137095_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx137134_ _datum137135_)
        (let* ((_src137137_ '#f) (_quote?137139_ '#t))
          (gx#datum->syntax__%
           _stx137134_
           _datum137135_
           _src137137_
           _quote?137139_))))
    (define gx#datum->syntax__1
      (lambda (_stx137141_ _datum137142_ _src137143_)
        (let ((_quote?137145_ '#t))
          (gx#datum->syntax__%
           _stx137141_
           _datum137142_
           _src137143_
           _quote?137145_))))
    (define gx#datum->syntax
      (lambda _g141834_
        (let ((_g141833_ (##length _g141834_)))
          (cond ((##fx= _g141833_ 2)
                 (apply (lambda (_stx137134_ _datum137135_)
                          (gx#datum->syntax__0 _stx137134_ _datum137135_))
                        _g141834_))
                ((##fx= _g141833_ 3)
                 (apply (lambda (_stx137141_ _datum137142_ _src137143_)
                          (gx#datum->syntax__1
                           _stx137141_
                           _datum137142_
                           _src137143_))
                        _g141834_))
                ((##fx= _g141833_ 4)
                 (apply (lambda (_stx137147_
                                 _datum137148_
                                 _src137149_
                                 _quote?137150_)
                          (gx#datum->syntax__%
                           _stx137147_
                           _datum137148_
                           _src137149_
                           _quote?137150_))
                        _g141834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g141834_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx137071_ _marks137072_)
        (let _lp137074_ ((_e137076_ _stx137071_)
                         (_marks137077_ _marks137072_)
                         (_src137078_ (gx#stx-source _stx137071_)))
          (if (##structure-direct-instance-of? _e137076_ 'gx#syntax-wrap::t)
              (_lp137074_
               (##unchecked-structure-ref _e137076_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e137076_ '3 gx#syntax-wrap::t '#f)
                _marks137077_)
               (##unchecked-structure-ref _e137076_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e137076_
                   'gx#identifier-wrap::t)
                  (if (null? _marks137077_)
                      _e137076_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e137076_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e137076_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e137076_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks137077_)))
                  (if (##structure-direct-instance-of?
                       _e137076_
                       'gx#syntax-quote::t)
                      _e137076_
                      (if (##structure-instance-of? _e137076_ 'gerbil#AST::t)
                          (_lp137074_
                           (##unchecked-structure-ref
                            _e137076_
                            '1
                            gx#AST::t
                            '#f)
                           _marks137077_
                           (##unchecked-structure-ref
                            _e137076_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e137076_)
                              (##structure
                               gx#identifier-wrap::t
                               _e137076_
                               _src137078_
                               (reverse _marks137077_))
                              (if (null? _marks137077_)
                                  _e137076_
                                  (if (pair? _e137076_)
                                      (cons (gx#stx-wrap
                                             (car _e137076_)
                                             _marks137077_)
                                            (gx#stx-wrap
                                             (cdr _e137076_)
                                             _marks137077_))
                                      (if (vector? _e137076_)
                                          (vector-map
                                           (lambda (_g137079137081_)
                                             (gx#stx-wrap
                                              _g137079137081_
                                              _marks137077_))
                                           _e137076_)
                                          (if (box? _e137076_)
                                              (box (gx#stx-wrap
                                                    (unbox _e137076_)
                                                    _marks137077_))
                                              _e137076_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx137087_)
        (let ((_marks137089_ '()))
          (gx#stx-unwrap__% _stx137087_ _marks137089_))))
    (define gx#stx-unwrap
      (lambda _g141836_
        (let ((_g141835_ (##length _g141836_)))
          (cond ((##fx= _g141835_ 1)
                 (apply (lambda (_stx137087_) (gx#stx-unwrap__0 _stx137087_))
                        _g141836_))
                ((##fx= _g141835_ 2)
                 (apply (lambda (_stx137091_ _marks137092_)
                          (gx#stx-unwrap__% _stx137091_ _marks137092_))
                        _g141836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g141836_))))))
    (define gx#stx-wrap
      (lambda (_stx137064_ _marks137065_)
        (foldl1 (lambda (_mark137067_ _stx137068_)
                  (gx#stx-apply-mark _stx137068_ _mark137067_))
                _stx137064_
                _marks137065_)))
    (define gx#stx-rewrap
      (lambda (_stx137058_ _marks137059_)
        (foldr1 (lambda (_mark137061_ _stx137062_)
                  (gx#stx-apply-mark _stx137062_ _mark137061_))
                _stx137058_
                _marks137059_)))
    (define gx#stx-apply-mark
      (lambda (_stx137055_ _mark137056_)
        (if (##structure-direct-instance-of? _stx137055_ 'gx#syntax-quote::t)
            _stx137055_
            (if (and (##structure-direct-instance-of?
                      _stx137055_
                      'gx#syntax-wrap::t)
                     (eq? _mark137056_
                          (##unchecked-structure-ref
                           _stx137055_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx137055_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx137055_
                 (gx#stx-source _stx137055_)
                 _mark137056_)))))
    (define gx#apply-mark
      (lambda (_mark137019_ _marks137020_)
        (let* ((_marks137021137029_ _marks137020_)
               (_else137023137037_
                (lambda () (cons _mark137019_ _marks137020_)))
               (_K137025137043_
                (lambda (_rest137040_ _hd137041_)
                  (if (eq? _mark137019_ _hd137041_)
                      _rest137040_
                      (cons _mark137019_ _marks137020_)))))
          (if (##pair? _marks137021137029_)
              (let ((_hd137026137046_ (##car _marks137021137029_))
                    (_tl137027137048_ (##cdr _marks137021137029_)))
                (let* ((_hd137051_ _hd137026137046_)
                       (_rest137053_ _tl137027137048_))
                  (_K137025137043_ _rest137053_ _hd137051_)))
              (_else137023137037_)))))
    (define gx#stx-e
      (lambda (_stx137017_)
        (if (##structure-direct-instance-of? _stx137017_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx137017_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx137017_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx137017_ '1 gx#AST::t '#f)
                _stx137017_))))
    (define gx#stx-source
      (lambda (_stx137015_)
        (if (##structure-instance-of? _stx137015_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx137015_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx137009_ _src137010_)
        (if (or (##structure-instance-of? _stx137009_ 'gerbil#AST::t)
                (not _src137010_))
            _stx137009_
            (##structure gx#AST::t _stx137009_ _src137010_))))
    (define gx#stx-datum?
      (lambda (_stx137007_) (gx#self-quoting? (gx#stx-e _stx137007_))))
    (define gx#self-quoting?
      (lambda (_x136990_)
        (let ((_$e136992_ (immediate? _x136990_)))
          (if _$e136992_
              _$e136992_
              (let ((_$e136995_ (number? _x136990_)))
                (if _$e136995_
                    _$e136995_
                    (let ((_$e136998_ (keyword? _x136990_)))
                      (if _$e136998_
                          _$e136998_
                          (let ((_$e137001_ (string? _x136990_)))
                            (if _$e137001_
                                _$e137001_
                                (let ((_$e137004_ (vector? _x136990_)))
                                  (if _$e137004_
                                      _$e137004_
                                      (u8vector? _x136990_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136988_) (boolean? (gx#stx-e _e136988_))))
    (define gx#stx-keyword?
      (lambda (_e136986_) (keyword? (gx#stx-e _e136986_))))
    (define gx#stx-char? (lambda (_e136984_) (char? (gx#stx-e _e136984_))))
    (define gx#stx-number? (lambda (_e136982_) (number? (gx#stx-e _e136982_))))
    (define gx#stx-fixnum? (lambda (_e136980_) (fixnum? (gx#stx-e _e136980_))))
    (define gx#stx-string? (lambda (_e136978_) (string? (gx#stx-e _e136978_))))
    (define gx#stx-null? (lambda (_e136976_) (null? (gx#stx-e _e136976_))))
    (define gx#stx-pair? (lambda (_e136974_) (pair? (gx#stx-e _e136974_))))
    (define gx#stx-list?
      (lambda (_e136936_)
        (let* ((_g136937136946_ (gx#stx-e _e136936_))
               (_E136940136950_
                (lambda () (error '"No clause matching" _g136937136946_))))
          (let ((_K136942136966_
                 (lambda (_rest136964_) (gx#stx-list? _rest136964_)))
                (_K136941136956_ (lambda (_tail136954_) (null? _tail136954_))))
            (if (##pair? _g136937136946_)
                (let* ((_tl136944136969_ (##cdr _g136937136946_))
                       (_rest136972_ _tl136944136969_))
                  (gx#stx-list? _rest136972_))
                (let ((_tail136959_ _g136937136946_))
                  (null? _tail136959_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136929_)
        (let* ((_e136931_ (gx#stx-e _e136929_)) (_$e136933_ (pair? _e136931_)))
          (if _$e136933_ _$e136933_ (null? _e136931_)))))
    (define gx#stx-vector? (lambda (_e136927_) (vector? (gx#stx-e _e136927_))))
    (define gx#stx-box? (lambda (_e136925_) (box? (gx#stx-e _e136925_))))
    (define gx#stx-eq?
      (lambda (_x136922_ _y136923_)
        (eq? (gx#stx-e _x136922_) (gx#stx-e _y136923_))))
    (define gx#stx-eqv?
      (lambda (_x136919_ _y136920_)
        (eqv? (gx#stx-e _x136919_) (gx#stx-e _y136920_))))
    (define gx#stx-equal?
      (lambda (_x136916_ _y136917_)
        (equal? (gx#stx-e _x136916_) (gx#stx-e _y136917_))))
    (define gx#stx-false? (lambda (_x136914_) (not (gx#stx-e _x136914_))))
    (define gx#stx-identifier
      (lambda (_template136911_ . _args136912_)
        (gx#datum->syntax__1
         _template136911_
         (apply make-symbol (gx#syntax->datum _args136912_))
         (gx#stx-source _template136911_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136909_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136909_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136907_)
        (if (##structure-direct-instance-of?
             _stx136907_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136907_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136907_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136907_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136907_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136903_)
        (let ((_stx136905_ (gx#stx-unwrap__0 _stx136903_)))
          (if (gx#identifier-quote? _stx136905_)
              (##unchecked-structure-ref _stx136905_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136858_)
        (let* ((_g136859136869_ (gx#stx-e _stx136858_))
               (_else136862136877_ (lambda () '#f)))
          (let ((_K136865136891_
                 (lambda (_rest136888_ _hd136889_)
                   (if (gx#identifier? _hd136889_)
                       (gx#identifier-list? _rest136888_)
                       '#f)))
                (_K136864136882_ (lambda () '#t)))
            (let ((_try-match136861136885_
                   (lambda ()
                     (if (##null? _g136859136869_)
                         (_K136864136882_)
                         (_else136862136877_)))))
              (if (##pair? _g136859136869_)
                  (let ((_tl136867136896_ (##cdr _g136859136869_))
                        (_hd136866136894_ (##car _g136859136869_)))
                    (let ((_hd136899_ _hd136866136894_)
                          (_rest136901_ _tl136867136896_))
                      (_K136865136891_ _rest136901_ _hd136899_)))
                  (_try-match136861136885_)))))))
    (define gx#genident__%
      (lambda (_e136835_ _src136836_)
        (gx#stx-wrap-source
         (gensym (let ((_e136838_ (gx#stx-e _e136835_)))
                   (if (interned-symbol? _e136838_) _e136838_ 'g)))
         (let ((_$e136840_ (gx#stx-source _e136835_)))
           (if _$e136840_ _$e136840_ _src136836_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136847_ 'g) (_src136849_ '#f))
          (gx#genident__% _e136847_ _src136849_))))
    (define gx#genident__1
      (lambda (_e136851_)
        (let ((_src136853_ '#f)) (gx#genident__% _e136851_ _src136853_))))
    (define gx#genident
      (lambda _g141838_
        (let ((_g141837_ (##length _g141838_)))
          (cond ((##fx= _g141837_ 0)
                 (apply (lambda () (gx#genident__0)) _g141838_))
                ((##fx= _g141837_ 1)
                 (apply (lambda (_e136851_) (gx#genident__1 _e136851_))
                        _g141838_))
                ((##fx= _g141837_ 2)
                 (apply (lambda (_e136855_ _src136856_)
                          (gx#genident__% _e136855_ _src136856_))
                        _g141838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g141838_))))))
    (define gx#gentemps
      (lambda (_stx-lst136832_) (gx#stx-map1 gx#genident _stx-lst136832_)))
    (define gx#syntax->list
      (lambda (_stx136830_) (gx#stx-map1 values _stx136830_)))
    (define gx#stx-car
      (lambda (_stx136827_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136827_)))))
    (define gx#stx-cdr
      (lambda (_stx136824_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136824_)))))
    (define gx#stx-length
      (lambda (_stx136789_)
        (let _lp136791_ ((_rest136793_ _stx136789_) (_n136794_ '0))
          (let* ((_g136795136803_ (gx#stx-e _rest136793_))
                 (_else136797136811_ (lambda () _n136794_))
                 (_K136799136816_
                  (lambda (_rest136814_)
                    (_lp136791_ _rest136814_ (fx+ _n136794_ '1)))))
            (if (##pair? _g136795136803_)
                (let* ((_tl136801136819_ (##cdr _g136795136803_))
                       (_rest136822_ _tl136801136819_))
                  (_K136799136816_ _rest136822_))
                (_else136797136811_))))))
    (define gx#stx-for-each
      (lambda _g141840_
        (let ((_g141839_ (##length _g141840_)))
          (cond ((##fx= _g141839_ 2)
                 (apply (lambda (_f136782_ _stx136783_)
                          (gx#stx-for-each1 _f136782_ _stx136783_))
                        _g141840_))
                ((##fx= _g141839_ 3)
                 (apply (lambda (_f136785_ _xstx136786_ _ystx136787_)
                          (gx#stx-for-each2
                           _f136785_
                           _xstx136786_
                           _ystx136787_))
                        _g141840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g141840_))))))
    (define gx#stx-for-each1
      (lambda (_f136732_ _stx136733_)
        (if (procedure? _f136732_)
            '#!void
            (error '"expected procedure" _f136732_))
        (let _lp136735_ ((_rest136737_ _stx136733_))
          (let* ((_g136738136748_ (gx#syntax-e _rest136737_))
                 (_else136741136756_ (lambda () (_f136732_ _rest136737_))))
            (let ((_K136744136770_
                   (lambda (_rest136767_ _hd136768_)
                     (_f136732_ _hd136768_)
                     (_lp136735_ _rest136767_)))
                  (_K136743136761_ (lambda () '#!void)))
              (let ((_try-match136740136764_
                     (lambda ()
                       (if (##null? _g136738136748_)
                           (_K136743136761_)
                           (_else136741136756_)))))
                (if (##pair? _g136738136748_)
                    (let ((_tl136746136775_ (##cdr _g136738136748_))
                          (_hd136745136773_ (##car _g136738136748_)))
                      (let ((_hd136778_ _hd136745136773_)
                            (_rest136780_ _tl136746136775_))
                        (_K136744136770_ _rest136780_ _hd136778_)))
                    (_try-match136740136764_))))))))
    (define gx#stx-for-each2
      (lambda (_f136637_ _xstx136638_ _ystx136639_)
        (if (procedure? _f136637_)
            '#!void
            (error '"expected procedure" _f136637_))
        (let _lp136641_ ((_xrest136643_ _xstx136638_)
                         (_yrest136644_ _ystx136639_))
          (let* ((_g136645136655_ (gx#syntax-e _xrest136643_))
                 (_else136648136663_ (lambda () '#!void)))
            (let ((_K136651136720_
                   (lambda (_xrest136689_ _xhd136690_)
                     (let* ((_g136691136698_ (gx#syntax-e _yrest136644_))
                            (_E136693136702_
                             (lambda ()
                               (error '"No clause matching" _g136691136698_)))
                            (_K136694136708_
                             (lambda (_yrest136705_ _yhd136706_)
                               (_f136637_ _xhd136690_ _yhd136706_)
                               (_lp136641_ _xrest136689_ _yrest136705_))))
                       (if (##pair? _g136691136698_)
                           (let ((_hd136695136711_ (##car _g136691136698_))
                                 (_tl136696136713_ (##cdr _g136691136698_)))
                             (let* ((_yhd136716_ _hd136695136711_)
                                    (_yrest136718_ _tl136696136713_))
                               (_K136694136708_ _yrest136718_ _yhd136716_)))
                           (_E136693136702_)))))
                  (_K136650136683_
                   (lambda ()
                     (let* ((_yrest136667136672_ _yrest136644_)
                            (_E136669136676_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136667136672_)))
                            (_K136670136680_
                             (lambda ()
                               (_f136637_ _xrest136643_ _yrest136644_))))
                       (if (not (gx#stx-null? _yrest136667136672_))
                           (_K136670136680_)
                           (_E136669136676_))))))
              (let ((_try-match136647136686_
                     (lambda ()
                       (if (not (null? _g136645136655_))
                           (_K136650136683_)
                           (_else136648136663_)))))
                (if (##pair? _g136645136655_)
                    (let ((_tl136653136725_ (##cdr _g136645136655_))
                          (_hd136652136723_ (##car _g136645136655_)))
                      (let ((_xhd136728_ _hd136652136723_)
                            (_xrest136730_ _tl136653136725_))
                        (_K136651136720_ _xrest136730_ _xhd136728_)))
                    (_try-match136647136686_))))))))
    (define gx#stx-map
      (lambda _g141842_
        (let ((_g141841_ (##length _g141842_)))
          (cond ((##fx= _g141841_ 2)
                 (apply (lambda (_f136630_ _stx136631_)
                          (gx#stx-map1 _f136630_ _stx136631_))
                        _g141842_))
                ((##fx= _g141841_ 3)
                 (apply (lambda (_f136633_ _xstx136634_ _ystx136635_)
                          (gx#stx-map2 _f136633_ _xstx136634_ _ystx136635_))
                        _g141842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g141842_))))))
    (define gx#stx-map1
      (lambda (_f136580_ _stx136581_)
        (if (procedure? _f136580_)
            '#!void
            (error '"expected procedure" _f136580_))
        (let _recur136583_ ((_rest136585_ _stx136581_))
          (let* ((_g136586136596_ (gx#syntax-e _rest136585_))
                 (_else136589136604_ (lambda () (_f136580_ _rest136585_))))
            (let ((_K136592136618_
                   (lambda (_rest136615_ _hd136616_)
                     (cons (_f136580_ _hd136616_)
                           (_recur136583_ _rest136615_))))
                  (_K136591136609_ (lambda () '())))
              (let ((_try-match136588136612_
                     (lambda ()
                       (if (##null? _g136586136596_)
                           (_K136591136609_)
                           (_else136589136604_)))))
                (if (##pair? _g136586136596_)
                    (let ((_tl136594136623_ (##cdr _g136586136596_))
                          (_hd136593136621_ (##car _g136586136596_)))
                      (let ((_hd136626_ _hd136593136621_)
                            (_rest136628_ _tl136594136623_))
                        (_K136592136618_ _rest136628_ _hd136626_)))
                    (_try-match136588136612_))))))))
    (define gx#stx-map2
      (lambda (_f136485_ _xstx136486_ _ystx136487_)
        (if (procedure? _f136485_)
            '#!void
            (error '"expected procedure" _f136485_))
        (let _recur136489_ ((_xrest136491_ _xstx136486_)
                            (_yrest136492_ _ystx136487_))
          (let* ((_g136493136503_ (gx#syntax-e _xrest136491_))
                 (_else136496136511_ (lambda () '())))
            (let ((_K136499136568_
                   (lambda (_xrest136537_ _xhd136538_)
                     (let* ((_g136539136546_ (gx#syntax-e _yrest136492_))
                            (_E136541136550_
                             (lambda ()
                               (error '"No clause matching" _g136539136546_)))
                            (_K136542136556_
                             (lambda (_yrest136553_ _yhd136554_)
                               (cons (_f136485_ _xhd136538_ _yhd136554_)
                                     (_recur136489_
                                      _xrest136537_
                                      _yrest136553_)))))
                       (if (##pair? _g136539136546_)
                           (let ((_hd136543136559_ (##car _g136539136546_))
                                 (_tl136544136561_ (##cdr _g136539136546_)))
                             (let* ((_yhd136564_ _hd136543136559_)
                                    (_yrest136566_ _tl136544136561_))
                               (_K136542136556_ _yrest136566_ _yhd136564_)))
                           (_E136541136550_)))))
                  (_K136498136531_
                   (lambda ()
                     (let* ((_yrest136515136520_ _yrest136492_)
                            (_E136517136524_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136515136520_)))
                            (_K136518136528_
                             (lambda ()
                               (_f136485_ _xrest136491_ _yrest136492_))))
                       (if (not (gx#stx-null? _yrest136515136520_))
                           (_K136518136528_)
                           (_E136517136524_))))))
              (let ((_try-match136495136534_
                     (lambda ()
                       (if (not (null? _g136493136503_))
                           (_K136498136531_)
                           (_else136496136511_)))))
                (if (##pair? _g136493136503_)
                    (let ((_tl136501136573_ (##cdr _g136493136503_))
                          (_hd136500136571_ (##car _g136493136503_)))
                      (let ((_xhd136576_ _hd136500136571_)
                            (_xrest136578_ _tl136501136573_))
                        (_K136499136568_ _xrest136578_ _xhd136576_)))
                    (_try-match136495136534_))))))))
    (define gx#stx-andmap
      (lambda (_f136435_ _stx136436_)
        (if (procedure? _f136435_)
            '#!void
            (error '"expected procedure" _f136435_))
        (let _lp136438_ ((_rest136440_ _stx136436_))
          (let* ((_g136441136451_ (gx#syntax-e _rest136440_))
                 (_else136444136459_ (lambda () (_f136435_ _rest136440_))))
            (let ((_K136447136473_
                   (lambda (_rest136470_ _hd136471_)
                     (if (_f136435_ _hd136471_)
                         (_lp136438_ _rest136470_)
                         '#f)))
                  (_K136446136464_ (lambda () '#t)))
              (let ((_try-match136443136467_
                     (lambda ()
                       (if (##null? _g136441136451_)
                           (_K136446136464_)
                           (_else136444136459_)))))
                (if (##pair? _g136441136451_)
                    (let ((_tl136449136478_ (##cdr _g136441136451_))
                          (_hd136448136476_ (##car _g136441136451_)))
                      (let ((_hd136481_ _hd136448136476_)
                            (_rest136483_ _tl136449136478_))
                        (_K136447136473_ _rest136483_ _hd136481_)))
                    (_try-match136443136467_))))))))
    (define gx#stx-ormap
      (lambda (_f136382_ _stx136383_)
        (if (procedure? _f136382_)
            '#!void
            (error '"expected procedure" _f136382_))
        (let _lp136385_ ((_rest136387_ _stx136383_))
          (let* ((_g136388136398_ (gx#syntax-e _rest136387_))
                 (_else136391136406_ (lambda () (_f136382_ _rest136387_))))
            (let ((_K136394136423_
                   (lambda (_rest136417_ _hd136418_)
                     (let ((_$e136420_ (_f136382_ _hd136418_)))
                       (if _$e136420_ _$e136420_ (_lp136385_ _rest136417_)))))
                  (_K136393136411_ (lambda () '#f)))
              (let ((_try-match136390136414_
                     (lambda ()
                       (if (##null? _g136388136398_)
                           (_K136393136411_)
                           (_else136391136406_)))))
                (if (##pair? _g136388136398_)
                    (let ((_tl136396136428_ (##cdr _g136388136398_))
                          (_hd136395136426_ (##car _g136388136398_)))
                      (let ((_hd136431_ _hd136395136426_)
                            (_rest136433_ _tl136396136428_))
                        (_K136394136423_ _rest136433_ _hd136431_)))
                    (_try-match136390136414_))))))))
    (define gx#stx-foldl
      (lambda (_f136330_ _iv136331_ _stx136332_)
        (if (procedure? _f136330_)
            '#!void
            (error '"expected procedure" _f136330_))
        (let _lp136334_ ((_r136336_ _iv136331_) (_rest136337_ _stx136332_))
          (let* ((_g136338136348_ (gx#syntax-e _rest136337_))
                 (_else136341136356_
                  (lambda () (_f136330_ _rest136337_ _r136336_))))
            (let ((_K136344136370_
                   (lambda (_rest136367_ _hd136368_)
                     (_lp136334_
                      (_f136330_ _hd136368_ _r136336_)
                      _rest136367_)))
                  (_K136343136361_ (lambda () _r136336_)))
              (let ((_try-match136340136364_
                     (lambda ()
                       (if (##null? _g136338136348_)
                           (_K136343136361_)
                           (_else136341136356_)))))
                (if (##pair? _g136338136348_)
                    (let ((_tl136346136375_ (##cdr _g136338136348_))
                          (_hd136345136373_ (##car _g136338136348_)))
                      (let ((_hd136378_ _hd136345136373_)
                            (_rest136380_ _tl136346136375_))
                        (_K136344136370_ _rest136380_ _hd136378_)))
                    (_try-match136340136364_))))))))
    (define gx#stx-foldr
      (lambda (_f136279_ _iv136280_ _stx136281_)
        (if (procedure? _f136279_)
            '#!void
            (error '"expected procedure" _f136279_))
        (let _recur136283_ ((_rest136285_ _stx136281_))
          (let* ((_g136286136296_ (gx#syntax-e _rest136285_))
                 (_else136289136304_
                  (lambda () (_f136279_ _rest136285_ _iv136280_))))
            (let ((_K136292136318_
                   (lambda (_rest136315_ _hd136316_)
                     (_f136279_ _hd136316_ (_recur136283_ _rest136315_))))
                  (_K136291136309_ (lambda () _iv136280_)))
              (let ((_try-match136288136312_
                     (lambda ()
                       (if (##null? _g136286136296_)
                           (_K136291136309_)
                           (_else136289136304_)))))
                (if (##pair? _g136286136296_)
                    (let ((_tl136294136323_ (##cdr _g136286136296_))
                          (_hd136293136321_ (##car _g136286136296_)))
                      (let ((_hd136326_ _hd136293136321_)
                            (_rest136328_ _tl136294136323_))
                        (_K136292136318_ _rest136328_ _hd136326_)))
                    (_try-match136288136312_))))))))
    (define gx#stx-reverse
      (lambda (_stx136277_) (gx#stx-foldl cons '() _stx136277_)))
    (define gx#stx-last
      (lambda (_stx136238_)
        (let _lp136240_ ((_rest136242_ _stx136238_))
          (let* ((_g136243136251_ (gx#syntax-e _rest136242_))
                 (_else136245136259_ (lambda () _rest136242_))
                 (_K136247136265_
                  (lambda (_rest136262_ _hd136263_)
                    (if (gx#stx-null? _rest136262_)
                        _hd136263_
                        (_lp136240_ _rest136262_)))))
            (if (##pair? _g136243136251_)
                (let ((_hd136248136268_ (##car _g136243136251_))
                      (_tl136249136270_ (##cdr _g136243136251_)))
                  (let* ((_hd136273_ _hd136248136268_)
                         (_rest136275_ _tl136249136270_))
                    (_K136247136265_ _rest136275_ _hd136273_)))
                (_else136245136259_))))))
    (define gx#stx-last-pair
      (lambda (_stx136209_)
        (let _lp136211_ ((_hd136213_ _stx136209_))
          (let* ((_g136214136221_ (gx#syntax-e _hd136213_))
                 (_E136216136225_
                  (lambda () (error '"No clause matching" _g136214136221_)))
                 (_K136217136230_
                  (lambda (_rest136228_)
                    (if (gx#stx-pair? _rest136228_)
                        (_lp136211_ _rest136228_)
                        _hd136213_))))
            (if (##pair? _g136214136221_)
                (let* ((_tl136219136233_ (##cdr _g136214136221_))
                       (_rest136236_ _tl136219136233_))
                  (_K136217136230_ _rest136236_))
                (_E136216136225_))))))
    (define gx#stx-list-tail
      (lambda (_stx136178_ _k136179_)
        (let _lp136181_ ((_rest136183_ _stx136178_) (_k136184_ _k136179_))
          (if (fxpositive? _k136184_)
              (let* ((_g136185136192_ (gx#syntax-e _rest136183_))
                     (_E136187136196_
                      (lambda ()
                        (error '"No clause matching" _g136185136192_)))
                     (_K136188136201_
                      (lambda (_rest136199_)
                        (_lp136181_ _rest136199_ (fx- _k136184_ '1)))))
                (if (##pair? _g136185136192_)
                    (let* ((_tl136190136204_ (##cdr _g136185136192_))
                           (_rest136207_ _tl136190136204_))
                      (_K136188136201_ _rest136207_))
                    (_E136187136196_)))
              _rest136183_))))
    (define gx#stx-list-ref
      (lambda (_stx136175_ _k136176_)
        (gx#stx-car (gx#stx-list-tail _stx136175_ _k136176_))))
    (define gx#stx-plist?__%
      (lambda (_stx136087_ _key?136088_)
        (if (procedure? _key?136088_)
            '#!void
            (error '"expected procedure" _key?136088_))
        (let _lp136090_ ((_rest136092_ _stx136087_))
          (let* ((_g136093136103_ (gx#stx-e _rest136092_))
                 (_else136096136111_ (lambda () '#f)))
            (let ((_K136099136153_
                   (lambda (_rest136122_ _hd136123_)
                     (if (_key?136088_ _hd136123_)
                         (let* ((_g136124136132_ (gx#stx-e _rest136122_))
                                (_else136126136140_ (lambda () '#f))
                                (_K136128136145_
                                 (lambda (_rest136143_)
                                   (_lp136090_ _rest136143_))))
                           (if (##pair? _g136124136132_)
                               (let* ((_tl136130136148_
                                       (##cdr _g136124136132_))
                                      (_rest136151_ _tl136130136148_))
                                 (_lp136090_ _rest136151_))
                               (_else136126136140_)))
                         '#f)))
                  (_K136098136116_ (lambda () '#t)))
              (let ((_try-match136095136119_
                     (lambda ()
                       (if (##null? _g136093136103_)
                           (_K136098136116_)
                           (_else136096136111_)))))
                (if (##pair? _g136093136103_)
                    (let ((_tl136101136158_ (##cdr _g136093136103_))
                          (_hd136100136156_ (##car _g136093136103_)))
                      (let ((_hd136161_ _hd136100136156_)
                            (_rest136163_ _tl136101136158_))
                        (_K136099136153_ _rest136163_ _hd136161_)))
                    (_try-match136095136119_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx136168_)
        (let ((_key?136170_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx136168_ _key?136170_))))
    (define gx#stx-plist?
      (lambda _g141844_
        (let ((_g141843_ (##length _g141844_)))
          (cond ((##fx= _g141843_ 1)
                 (apply (lambda (_stx136168_) (gx#stx-plist?__0 _stx136168_))
                        _g141844_))
                ((##fx= _g141843_ 2)
                 (apply (lambda (_stx136172_ _key?136173_)
                          (gx#stx-plist?__% _stx136172_ _key?136173_))
                        _g141844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g141844_))))))
    (define gx#stx-getq__%
      (lambda (_key136005_ _stx136006_ _key=?136007_)
        (if (procedure? _key=?136007_)
            '#!void
            (error '"expected procedure" _key=?136007_))
        (let _lp136009_ ((_rest136011_ _stx136006_))
          (let* ((_g136012136020_ (gx#syntax-e _rest136011_))
                 (_else136014136028_ (lambda () '#f))
                 (_K136016136062_
                  (lambda (_rest136031_ _hd136032_)
                    (let* ((_g136033136040_ (gx#syntax-e _rest136031_))
                           (_E136035136044_
                            (lambda ()
                              (error '"No clause matching" _g136033136040_)))
                           (_K136036136050_
                            (lambda (_rest136047_ _val136048_)
                              (if (_key=?136007_ _hd136032_ _key136005_)
                                  _val136048_
                                  (_lp136009_ _rest136047_)))))
                      (if (##pair? _g136033136040_)
                          (let ((_hd136037136053_ (##car _g136033136040_))
                                (_tl136038136055_ (##cdr _g136033136040_)))
                            (let* ((_val136058_ _hd136037136053_)
                                   (_rest136060_ _tl136038136055_))
                              (_K136036136050_ _rest136060_ _val136058_)))
                          (_E136035136044_))))))
            (if (##pair? _g136012136020_)
                (let ((_hd136017136065_ (##car _g136012136020_))
                      (_tl136018136067_ (##cdr _g136012136020_)))
                  (let* ((_hd136070_ _hd136017136065_)
                         (_rest136072_ _tl136018136067_))
                    (_K136016136062_ _rest136072_ _hd136070_)))
                (_else136014136028_))))))
    (define gx#stx-getq__0
      (lambda (_key136077_ _stx136078_)
        (let ((_key=?136080_ gx#stx-eq?))
          (gx#stx-getq__% _key136077_ _stx136078_ _key=?136080_))))
    (define gx#stx-getq
      (lambda _g141846_
        (let ((_g141845_ (##length _g141846_)))
          (cond ((##fx= _g141845_ 2)
                 (apply (lambda (_key136077_ _stx136078_)
                          (gx#stx-getq__0 _key136077_ _stx136078_))
                        _g141846_))
                ((##fx= _g141845_ 3)
                 (apply (lambda (_key136082_ _stx136083_ _key=?136084_)
                          (gx#stx-getq__%
                           _key136082_
                           _stx136083_
                           _key=?136084_))
                        _g141846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g141846_))))))))
