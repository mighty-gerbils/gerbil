(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710067691)
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
      (lambda _$args81062_
        (apply make-instance gx#identifier-wrap::t _$args81062_)))
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
      (lambda _$args81059_
        (apply make-instance gx#syntax-wrap::t _$args81059_)))
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
      (lambda _$args81056_
        (apply make-instance gx#syntax-quote::t _$args81056_)))
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
      (lambda (_stx81054_) (symbol? (gx#stx-e _stx81054_))))
    (define gx#identifier-quote?
      (lambda (_stx81052_)
        (if (##structure-direct-instance-of? _stx81052_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81052_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81050_)
        (if (##structure-direct-instance-of? _stx81050_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81050_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81050_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81048_)
        (if (##structure-direct-instance-of? _stx81048_ 'gx#syntax-quote::t)
            _stx81048_
            (if (##structure-direct-instance-of? _stx81048_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81048_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81031_)
        (if (##structure-direct-instance-of? _stx81031_ 'gx#syntax-wrap::t)
            (let _lp81033_ ((_e81035_
                             (##unchecked-structure-ref
                              _stx81031_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81036_
                             (cons (##unchecked-structure-ref
                                    _stx81031_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81035_)
                  (let ((_$e81038_ (##type-id (##structure-type _e81035_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81038_)
                        (_lp81033_
                         (##unchecked-structure-ref _e81035_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81035_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81036_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81038_)
                                (eq? 'gx#identifier-wrap::t _$e81038_))
                            (##unchecked-structure-ref
                             _e81035_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81038_)
                                (_lp81033_
                                 (##unchecked-structure-ref
                                  _e81035_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81036_)
                                _e81035_))))
                  (if (null? _marks81036_)
                      _e81035_
                      (if (pair? _e81035_)
                          (cons (gx#stx-wrap (car _e81035_) _marks81036_)
                                (gx#stx-wrap (cdr _e81035_) _marks81036_))
                          (if (vector? _e81035_)
                              (vector-map
                               (lambda (_g8104381045_)
                                 (gx#stx-wrap _g8104381045_ _marks81036_))
                               _e81035_)
                              (if (box? _e81035_)
                                  (box (gx#stx-wrap
                                        (unbox _e81035_)
                                        _marks81036_))
                                  _e81035_))))))
            (if (##structure-instance-of? _stx81031_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81031_ '1 gx#AST::t '#f)
                _stx81031_))))
    (define gx#syntax->datum
      (lambda (_stx81029_)
        (if (##structure-instance-of? _stx81029_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81029_ '1 gx#AST::t '#f))
            (if (pair? _stx81029_)
                (cons (gx#syntax->datum (car _stx81029_))
                      (gx#syntax->datum (cdr _stx81029_)))
                (if (vector? _stx81029_)
                    (vector-map gx#syntax->datum _stx81029_)
                    (if (box? _stx81029_)
                        (box (gx#syntax->datum (unbox _stx81029_)))
                        _stx81029_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80972_ _datum80973_ _src80974_ _quote?80975_)
        (letrec ((_wrap-datum80977_
                  (lambda (_e81001_ _marks81002_)
                    (_wrap-inner80979_
                     _e81001_
                     (lambda (_g8100381005_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8100381005_
                        _src80974_
                        _marks81002_)))))
                 (_wrap-quote80978_
                  (lambda (_e80993_ _ctx80994_ _marks80995_)
                    (_wrap-inner80979_
                     _e80993_
                     (lambda (_g8099680998_)
                       (##structure
                        gx#syntax-quote::t
                        _g8099680998_
                        _src80974_
                        _ctx80994_
                        _marks80995_)))))
                 (_wrap-inner80979_
                  (lambda (_e80986_ _wrap-e80987_)
                    (let _recur80989_ ((_e80991_ _e80986_))
                      (if (symbol? _e80991_)
                          (_wrap-e80987_ _e80991_)
                          (if (pair? _e80991_)
                              (cons (_recur80989_ (car _e80991_))
                                    (_recur80989_ (cdr _e80991_)))
                              (if (vector? _e80991_)
                                  (vector-map _recur80989_ _e80991_)
                                  (if (box? _e80991_)
                                      (box (_recur80989_ (unbox _e80991_)))
                                      _e80991_)))))))
                 (_wrap-outer80980_
                  (lambda (_e80984_)
                    (if (##structure-instance-of? _e80984_ 'gerbil#AST::t)
                        _e80984_
                        (##structure gx#AST::t _e80984_ _src80974_)))))
          (if (##structure-instance-of? _datum80973_ 'gerbil#AST::t)
              _datum80973_
              (if (not _stx80972_)
                  (##structure gx#AST::t _datum80973_ _src80974_)
                  (if (gx#identifier? _stx80972_)
                      (let ((_stx80982_ (gx#stx-unwrap__0 _stx80972_)))
                        (_wrap-outer80980_
                         (if (##structure-direct-instance-of?
                              _stx80982_
                              'gx#syntax-quote::t)
                             (if _quote?80975_
                                 (_wrap-quote80978_
                                  _datum80973_
                                  (##unchecked-structure-ref
                                   _stx80982_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80982_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80977_
                                  _datum80973_
                                  (##unchecked-structure-ref
                                   _stx80982_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80977_
                              _datum80973_
                              (##unchecked-structure-ref
                               _stx80982_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80972_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81011_ _datum81012_)
        (let* ((_src81014_ '#f) (_quote?81016_ '#t))
          (gx#datum->syntax__%
           _stx81011_
           _datum81012_
           _src81014_
           _quote?81016_))))
    (define gx#datum->syntax__1
      (lambda (_stx81018_ _datum81019_ _src81020_)
        (let ((_quote?81022_ '#t))
          (gx#datum->syntax__%
           _stx81018_
           _datum81019_
           _src81020_
           _quote?81022_))))
    (define gx#datum->syntax
      (lambda _g81143_
        (let ((_g81142_ (##length _g81143_)))
          (cond ((##fx= _g81142_ 2)
                 (apply (lambda (_stx81011_ _datum81012_)
                          (gx#datum->syntax__0 _stx81011_ _datum81012_))
                        _g81143_))
                ((##fx= _g81142_ 3)
                 (apply (lambda (_stx81018_ _datum81019_ _src81020_)
                          (gx#datum->syntax__1
                           _stx81018_
                           _datum81019_
                           _src81020_))
                        _g81143_))
                ((##fx= _g81142_ 4)
                 (apply (lambda (_stx81024_
                                 _datum81025_
                                 _src81026_
                                 _quote?81027_)
                          (gx#datum->syntax__%
                           _stx81024_
                           _datum81025_
                           _src81026_
                           _quote?81027_))
                        _g81143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81143_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80948_ _marks80949_)
        (let _lp80951_ ((_e80953_ _stx80948_)
                        (_marks80954_ _marks80949_)
                        (_src80955_ (gx#stx-source _stx80948_)))
          (if (##structure-direct-instance-of? _e80953_ 'gx#syntax-wrap::t)
              (_lp80951_
               (##unchecked-structure-ref _e80953_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80953_ '3 gx#syntax-wrap::t '#f)
                _marks80954_)
               (##unchecked-structure-ref _e80953_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80953_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80954_)
                      _e80953_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80953_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80953_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80953_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80954_)))
                  (if (##structure-direct-instance-of?
                       _e80953_
                       'gx#syntax-quote::t)
                      _e80953_
                      (if (##structure-instance-of? _e80953_ 'gerbil#AST::t)
                          (_lp80951_
                           (##unchecked-structure-ref
                            _e80953_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80954_
                           (##unchecked-structure-ref
                            _e80953_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80953_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80953_
                               _src80955_
                               (reverse _marks80954_))
                              (if (null? _marks80954_)
                                  _e80953_
                                  (if (pair? _e80953_)
                                      (cons (gx#stx-wrap
                                             (car _e80953_)
                                             _marks80954_)
                                            (gx#stx-wrap
                                             (cdr _e80953_)
                                             _marks80954_))
                                      (if (vector? _e80953_)
                                          (vector-map
                                           (lambda (_g8095680958_)
                                             (gx#stx-wrap
                                              _g8095680958_
                                              _marks80954_))
                                           _e80953_)
                                          (if (box? _e80953_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80953_)
                                                    _marks80954_))
                                              _e80953_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80964_)
        (let ((_marks80966_ '())) (gx#stx-unwrap__% _stx80964_ _marks80966_))))
    (define gx#stx-unwrap
      (lambda _g81145_
        (let ((_g81144_ (##length _g81145_)))
          (cond ((##fx= _g81144_ 1)
                 (apply (lambda (_stx80964_) (gx#stx-unwrap__0 _stx80964_))
                        _g81145_))
                ((##fx= _g81144_ 2)
                 (apply (lambda (_stx80968_ _marks80969_)
                          (gx#stx-unwrap__% _stx80968_ _marks80969_))
                        _g81145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81145_))))))
    (define gx#stx-wrap
      (lambda (_stx80941_ _marks80942_)
        (foldl1 (lambda (_mark80944_ _stx80945_)
                  (gx#stx-apply-mark _stx80945_ _mark80944_))
                _stx80941_
                _marks80942_)))
    (define gx#stx-rewrap
      (lambda (_stx80935_ _marks80936_)
        (foldr1 (lambda (_mark80938_ _stx80939_)
                  (gx#stx-apply-mark _stx80939_ _mark80938_))
                _stx80935_
                _marks80936_)))
    (define gx#stx-apply-mark
      (lambda (_stx80932_ _mark80933_)
        (if (##structure-direct-instance-of? _stx80932_ 'gx#syntax-quote::t)
            _stx80932_
            (if (and (##structure-direct-instance-of?
                      _stx80932_
                      'gx#syntax-wrap::t)
                     (eq? _mark80933_
                          (##unchecked-structure-ref
                           _stx80932_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80932_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80932_
                 (gx#stx-source _stx80932_)
                 _mark80933_)))))
    (define gx#apply-mark
      (lambda (_mark80896_ _marks80897_)
        (let* ((_marks8089880906_ _marks80897_)
               (_else8090080914_ (lambda () (cons _mark80896_ _marks80897_)))
               (_K8090280920_
                (lambda (_rest80917_ _hd80918_)
                  (if (eq? _mark80896_ _hd80918_)
                      _rest80917_
                      (cons _mark80896_ _marks80897_)))))
          (if (##pair? _marks8089880906_)
              (let ((_hd8090380923_ (##car _marks8089880906_))
                    (_tl8090480925_ (##cdr _marks8089880906_)))
                (let* ((_hd80928_ _hd8090380923_) (_rest80930_ _tl8090480925_))
                  (_K8090280920_ _rest80930_ _hd80928_)))
              (_else8090080914_)))))
    (define gx#stx-e
      (lambda (_stx80894_)
        (if (##structure-direct-instance-of? _stx80894_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80894_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80894_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80894_ '1 gx#AST::t '#f)
                _stx80894_))))
    (define gx#stx-source
      (lambda (_stx80892_)
        (if (##structure-instance-of? _stx80892_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80892_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80886_ _src80887_)
        (if (or (##structure-instance-of? _stx80886_ 'gerbil#AST::t)
                (not _src80887_))
            _stx80886_
            (##structure gx#AST::t _stx80886_ _src80887_))))
    (define gx#stx-datum?
      (lambda (_stx80884_) (gx#self-quoting? (gx#stx-e _stx80884_))))
    (define gx#self-quoting?
      (lambda (_x80867_)
        (let ((_$e80869_ (immediate? _x80867_)))
          (if _$e80869_
              _$e80869_
              (let ((_$e80872_ (number? _x80867_)))
                (if _$e80872_
                    _$e80872_
                    (let ((_$e80875_ (keyword? _x80867_)))
                      (if _$e80875_
                          _$e80875_
                          (let ((_$e80878_ (string? _x80867_)))
                            (if _$e80878_
                                _$e80878_
                                (let ((_$e80881_ (vector? _x80867_)))
                                  (if _$e80881_
                                      _$e80881_
                                      (u8vector? _x80867_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80865_) (boolean? (gx#stx-e _e80865_))))
    (define gx#stx-keyword? (lambda (_e80863_) (keyword? (gx#stx-e _e80863_))))
    (define gx#stx-char? (lambda (_e80861_) (char? (gx#stx-e _e80861_))))
    (define gx#stx-number? (lambda (_e80859_) (number? (gx#stx-e _e80859_))))
    (define gx#stx-fixnum? (lambda (_e80857_) (fixnum? (gx#stx-e _e80857_))))
    (define gx#stx-string? (lambda (_e80855_) (string? (gx#stx-e _e80855_))))
    (define gx#stx-null? (lambda (_e80853_) (null? (gx#stx-e _e80853_))))
    (define gx#stx-pair? (lambda (_e80851_) (pair? (gx#stx-e _e80851_))))
    (define gx#stx-list?
      (lambda (_e80813_)
        (let* ((_g8081480823_ (gx#stx-e _e80813_))
               (_E8081780827_
                (lambda () (error '"No clause matching" _g8081480823_))))
          (let ((_K8081980843_
                 (lambda (_rest80841_) (gx#stx-list? _rest80841_)))
                (_K8081880833_ (lambda (_tail80831_) (null? _tail80831_))))
            (if (##pair? _g8081480823_)
                (let* ((_tl8082180846_ (##cdr _g8081480823_))
                       (_rest80849_ _tl8082180846_))
                  (gx#stx-list? _rest80849_))
                (let ((_tail80836_ _g8081480823_)) (null? _tail80836_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80806_)
        (let* ((_e80808_ (gx#stx-e _e80806_)) (_$e80810_ (pair? _e80808_)))
          (if _$e80810_ _$e80810_ (null? _e80808_)))))
    (define gx#stx-vector? (lambda (_e80804_) (vector? (gx#stx-e _e80804_))))
    (define gx#stx-box? (lambda (_e80802_) (box? (gx#stx-e _e80802_))))
    (define gx#stx-eq?
      (lambda (_x80799_ _y80800_)
        (eq? (gx#stx-e _x80799_) (gx#stx-e _y80800_))))
    (define gx#stx-eqv?
      (lambda (_x80796_ _y80797_)
        (eqv? (gx#stx-e _x80796_) (gx#stx-e _y80797_))))
    (define gx#stx-equal?
      (lambda (_x80793_ _y80794_)
        (equal? (gx#stx-e _x80793_) (gx#stx-e _y80794_))))
    (define gx#stx-false? (lambda (_x80791_) (not (gx#stx-e _x80791_))))
    (define gx#stx-identifier
      (lambda (_template80788_ . _args80789_)
        (gx#datum->syntax__1
         _template80788_
         (apply make-symbol (gx#syntax->datum _args80789_))
         (gx#stx-source _template80788_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80786_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80786_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80784_)
        (if (##structure-direct-instance-of? _stx80784_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80784_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80784_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80784_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80784_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80780_)
        (let ((_stx80782_ (gx#stx-unwrap__0 _stx80780_)))
          (if (gx#identifier-quote? _stx80782_)
              (##unchecked-structure-ref _stx80782_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80735_)
        (let* ((_g8073680746_ (gx#stx-e _stx80735_))
               (_else8073980754_ (lambda () '#f)))
          (let ((_K8074280768_
                 (lambda (_rest80765_ _hd80766_)
                   (if (gx#identifier? _hd80766_)
                       (gx#identifier-list? _rest80765_)
                       '#f)))
                (_K8074180759_ (lambda () '#t)))
            (let ((_try-match8073880762_
                   (lambda ()
                     (if (##null? _g8073680746_)
                         (_K8074180759_)
                         (_else8073980754_)))))
              (if (##pair? _g8073680746_)
                  (let ((_tl8074480773_ (##cdr _g8073680746_))
                        (_hd8074380771_ (##car _g8073680746_)))
                    (let ((_hd80776_ _hd8074380771_)
                          (_rest80778_ _tl8074480773_))
                      (_K8074280768_ _rest80778_ _hd80776_)))
                  (_try-match8073880762_)))))))
    (define gx#genident__%
      (lambda (_e80712_ _src80713_)
        (gx#stx-wrap-source
         (gensym (let ((_e80715_ (gx#stx-e _e80712_)))
                   (if (interned-symbol? _e80715_) _e80715_ 'g)))
         (let ((_$e80717_ (gx#stx-source _e80712_)))
           (if _$e80717_ _$e80717_ _src80713_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80724_ 'g) (_src80726_ '#f))
          (gx#genident__% _e80724_ _src80726_))))
    (define gx#genident__1
      (lambda (_e80728_)
        (let ((_src80730_ '#f)) (gx#genident__% _e80728_ _src80730_))))
    (define gx#genident
      (lambda _g81147_
        (let ((_g81146_ (##length _g81147_)))
          (cond ((##fx= _g81146_ 0)
                 (apply (lambda () (gx#genident__0)) _g81147_))
                ((##fx= _g81146_ 1)
                 (apply (lambda (_e80728_) (gx#genident__1 _e80728_))
                        _g81147_))
                ((##fx= _g81146_ 2)
                 (apply (lambda (_e80732_ _src80733_)
                          (gx#genident__% _e80732_ _src80733_))
                        _g81147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81147_))))))
    (define gx#gentemps
      (lambda (_stx-lst80709_) (gx#stx-map1 gx#genident _stx-lst80709_)))
    (define gx#syntax->list
      (lambda (_stx80707_) (gx#stx-map1 values _stx80707_)))
    (define gx#stx-car
      (lambda (_stx80704_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80704_)))))
    (define gx#stx-cdr
      (lambda (_stx80701_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80701_)))))
    (define gx#stx-length
      (lambda (_stx80666_)
        (let _lp80668_ ((_rest80670_ _stx80666_) (_n80671_ '0))
          (let* ((_g8067280680_ (gx#stx-e _rest80670_))
                 (_else8067480688_ (lambda () _n80671_))
                 (_K8067680693_
                  (lambda (_rest80691_)
                    (_lp80668_ _rest80691_ (fx+ _n80671_ '1)))))
            (if (##pair? _g8067280680_)
                (let* ((_tl8067880696_ (##cdr _g8067280680_))
                       (_rest80699_ _tl8067880696_))
                  (_K8067680693_ _rest80699_))
                (_else8067480688_))))))
    (define gx#stx-for-each
      (lambda _g81149_
        (let ((_g81148_ (##length _g81149_)))
          (cond ((##fx= _g81148_ 2)
                 (apply (lambda (_f80659_ _stx80660_)
                          (gx#stx-for-each1 _f80659_ _stx80660_))
                        _g81149_))
                ((##fx= _g81148_ 3)
                 (apply (lambda (_f80662_ _xstx80663_ _ystx80664_)
                          (gx#stx-for-each2 _f80662_ _xstx80663_ _ystx80664_))
                        _g81149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81149_))))))
    (define gx#stx-for-each1
      (lambda (_f80609_ _stx80610_)
        (if (procedure? _f80609_)
            '#!void
            (error '"expected procedure" _f80609_))
        (let _lp80612_ ((_rest80614_ _stx80610_))
          (let* ((_g8061580625_ (gx#syntax-e _rest80614_))
                 (_else8061880633_ (lambda () (_f80609_ _rest80614_))))
            (let ((_K8062180647_
                   (lambda (_rest80644_ _hd80645_)
                     (_f80609_ _hd80645_)
                     (_lp80612_ _rest80644_)))
                  (_K8062080638_ (lambda () '#!void)))
              (let ((_try-match8061780641_
                     (lambda ()
                       (if (##null? _g8061580625_)
                           (_K8062080638_)
                           (_else8061880633_)))))
                (if (##pair? _g8061580625_)
                    (let ((_tl8062380652_ (##cdr _g8061580625_))
                          (_hd8062280650_ (##car _g8061580625_)))
                      (let ((_hd80655_ _hd8062280650_)
                            (_rest80657_ _tl8062380652_))
                        (_K8062180647_ _rest80657_ _hd80655_)))
                    (_try-match8061780641_))))))))
    (define gx#stx-for-each2
      (lambda (_f80514_ _xstx80515_ _ystx80516_)
        (if (procedure? _f80514_)
            '#!void
            (error '"expected procedure" _f80514_))
        (let _lp80518_ ((_xrest80520_ _xstx80515_) (_yrest80521_ _ystx80516_))
          (let* ((_g8052280532_ (gx#syntax-e _xrest80520_))
                 (_else8052580540_ (lambda () '#!void)))
            (let ((_K8052880597_
                   (lambda (_xrest80566_ _xhd80567_)
                     (let* ((_g8056880575_ (gx#syntax-e _yrest80521_))
                            (_E8057080579_
                             (lambda ()
                               (error '"No clause matching" _g8056880575_)))
                            (_K8057180585_
                             (lambda (_yrest80582_ _yhd80583_)
                               (_f80514_ _xhd80567_ _yhd80583_)
                               (_lp80518_ _xrest80566_ _yrest80582_))))
                       (if (##pair? _g8056880575_)
                           (let ((_hd8057280588_ (##car _g8056880575_))
                                 (_tl8057380590_ (##cdr _g8056880575_)))
                             (let* ((_yhd80593_ _hd8057280588_)
                                    (_yrest80595_ _tl8057380590_))
                               (_K8057180585_ _yrest80595_ _yhd80593_)))
                           (_E8057080579_)))))
                  (_K8052780560_
                   (lambda ()
                     (let* ((_yrest8054480549_ _yrest80521_)
                            (_E8054680553_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8054480549_)))
                            (_K8054780557_
                             (lambda () (_f80514_ _xrest80520_ _yrest80521_))))
                       (if (not (gx#stx-null? _yrest8054480549_))
                           (_K8054780557_)
                           (_E8054680553_))))))
              (let ((_try-match8052480563_
                     (lambda ()
                       (if (not (null? _g8052280532_))
                           (_K8052780560_)
                           (_else8052580540_)))))
                (if (##pair? _g8052280532_)
                    (let ((_tl8053080602_ (##cdr _g8052280532_))
                          (_hd8052980600_ (##car _g8052280532_)))
                      (let ((_xhd80605_ _hd8052980600_)
                            (_xrest80607_ _tl8053080602_))
                        (_K8052880597_ _xrest80607_ _xhd80605_)))
                    (_try-match8052480563_))))))))
    (define gx#stx-map
      (lambda _g81151_
        (let ((_g81150_ (##length _g81151_)))
          (cond ((##fx= _g81150_ 2)
                 (apply (lambda (_f80507_ _stx80508_)
                          (gx#stx-map1 _f80507_ _stx80508_))
                        _g81151_))
                ((##fx= _g81150_ 3)
                 (apply (lambda (_f80510_ _xstx80511_ _ystx80512_)
                          (gx#stx-map2 _f80510_ _xstx80511_ _ystx80512_))
                        _g81151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81151_))))))
    (define gx#stx-map1
      (lambda (_f80457_ _stx80458_)
        (if (procedure? _f80457_)
            '#!void
            (error '"expected procedure" _f80457_))
        (let _recur80460_ ((_rest80462_ _stx80458_))
          (let* ((_g8046380473_ (gx#syntax-e _rest80462_))
                 (_else8046680481_ (lambda () (_f80457_ _rest80462_))))
            (let ((_K8046980495_
                   (lambda (_rest80492_ _hd80493_)
                     (cons (_f80457_ _hd80493_) (_recur80460_ _rest80492_))))
                  (_K8046880486_ (lambda () '())))
              (let ((_try-match8046580489_
                     (lambda ()
                       (if (##null? _g8046380473_)
                           (_K8046880486_)
                           (_else8046680481_)))))
                (if (##pair? _g8046380473_)
                    (let ((_tl8047180500_ (##cdr _g8046380473_))
                          (_hd8047080498_ (##car _g8046380473_)))
                      (let ((_hd80503_ _hd8047080498_)
                            (_rest80505_ _tl8047180500_))
                        (_K8046980495_ _rest80505_ _hd80503_)))
                    (_try-match8046580489_))))))))
    (define gx#stx-map2
      (lambda (_f80362_ _xstx80363_ _ystx80364_)
        (if (procedure? _f80362_)
            '#!void
            (error '"expected procedure" _f80362_))
        (let _recur80366_ ((_xrest80368_ _xstx80363_)
                           (_yrest80369_ _ystx80364_))
          (let* ((_g8037080380_ (gx#syntax-e _xrest80368_))
                 (_else8037380388_ (lambda () '())))
            (let ((_K8037680445_
                   (lambda (_xrest80414_ _xhd80415_)
                     (let* ((_g8041680423_ (gx#syntax-e _yrest80369_))
                            (_E8041880427_
                             (lambda ()
                               (error '"No clause matching" _g8041680423_)))
                            (_K8041980433_
                             (lambda (_yrest80430_ _yhd80431_)
                               (cons (_f80362_ _xhd80415_ _yhd80431_)
                                     (_recur80366_
                                      _xrest80414_
                                      _yrest80430_)))))
                       (if (##pair? _g8041680423_)
                           (let ((_hd8042080436_ (##car _g8041680423_))
                                 (_tl8042180438_ (##cdr _g8041680423_)))
                             (let* ((_yhd80441_ _hd8042080436_)
                                    (_yrest80443_ _tl8042180438_))
                               (_K8041980433_ _yrest80443_ _yhd80441_)))
                           (_E8041880427_)))))
                  (_K8037580408_
                   (lambda ()
                     (let* ((_yrest8039280397_ _yrest80369_)
                            (_E8039480401_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8039280397_)))
                            (_K8039580405_
                             (lambda () (_f80362_ _xrest80368_ _yrest80369_))))
                       (if (not (gx#stx-null? _yrest8039280397_))
                           (_K8039580405_)
                           (_E8039480401_))))))
              (let ((_try-match8037280411_
                     (lambda ()
                       (if (not (null? _g8037080380_))
                           (_K8037580408_)
                           (_else8037380388_)))))
                (if (##pair? _g8037080380_)
                    (let ((_tl8037880450_ (##cdr _g8037080380_))
                          (_hd8037780448_ (##car _g8037080380_)))
                      (let ((_xhd80453_ _hd8037780448_)
                            (_xrest80455_ _tl8037880450_))
                        (_K8037680445_ _xrest80455_ _xhd80453_)))
                    (_try-match8037280411_))))))))
    (define gx#stx-andmap
      (lambda (_f80312_ _stx80313_)
        (if (procedure? _f80312_)
            '#!void
            (error '"expected procedure" _f80312_))
        (let _lp80315_ ((_rest80317_ _stx80313_))
          (let* ((_g8031880328_ (gx#syntax-e _rest80317_))
                 (_else8032180336_ (lambda () (_f80312_ _rest80317_))))
            (let ((_K8032480350_
                   (lambda (_rest80347_ _hd80348_)
                     (if (_f80312_ _hd80348_) (_lp80315_ _rest80347_) '#f)))
                  (_K8032380341_ (lambda () '#t)))
              (let ((_try-match8032080344_
                     (lambda ()
                       (if (##null? _g8031880328_)
                           (_K8032380341_)
                           (_else8032180336_)))))
                (if (##pair? _g8031880328_)
                    (let ((_tl8032680355_ (##cdr _g8031880328_))
                          (_hd8032580353_ (##car _g8031880328_)))
                      (let ((_hd80358_ _hd8032580353_)
                            (_rest80360_ _tl8032680355_))
                        (_K8032480350_ _rest80360_ _hd80358_)))
                    (_try-match8032080344_))))))))
    (define gx#stx-ormap
      (lambda (_f80259_ _stx80260_)
        (if (procedure? _f80259_)
            '#!void
            (error '"expected procedure" _f80259_))
        (let _lp80262_ ((_rest80264_ _stx80260_))
          (let* ((_g8026580275_ (gx#syntax-e _rest80264_))
                 (_else8026880283_ (lambda () (_f80259_ _rest80264_))))
            (let ((_K8027180300_
                   (lambda (_rest80294_ _hd80295_)
                     (let ((_$e80297_ (_f80259_ _hd80295_)))
                       (if _$e80297_ _$e80297_ (_lp80262_ _rest80294_)))))
                  (_K8027080288_ (lambda () '#f)))
              (let ((_try-match8026780291_
                     (lambda ()
                       (if (##null? _g8026580275_)
                           (_K8027080288_)
                           (_else8026880283_)))))
                (if (##pair? _g8026580275_)
                    (let ((_tl8027380305_ (##cdr _g8026580275_))
                          (_hd8027280303_ (##car _g8026580275_)))
                      (let ((_hd80308_ _hd8027280303_)
                            (_rest80310_ _tl8027380305_))
                        (_K8027180300_ _rest80310_ _hd80308_)))
                    (_try-match8026780291_))))))))
    (define gx#stx-foldl
      (lambda (_f80207_ _iv80208_ _stx80209_)
        (if (procedure? _f80207_)
            '#!void
            (error '"expected procedure" _f80207_))
        (let _lp80211_ ((_r80213_ _iv80208_) (_rest80214_ _stx80209_))
          (let* ((_g8021580225_ (gx#syntax-e _rest80214_))
                 (_else8021880233_
                  (lambda () (_f80207_ _rest80214_ _r80213_))))
            (let ((_K8022180247_
                   (lambda (_rest80244_ _hd80245_)
                     (_lp80211_ (_f80207_ _hd80245_ _r80213_) _rest80244_)))
                  (_K8022080238_ (lambda () _r80213_)))
              (let ((_try-match8021780241_
                     (lambda ()
                       (if (##null? _g8021580225_)
                           (_K8022080238_)
                           (_else8021880233_)))))
                (if (##pair? _g8021580225_)
                    (let ((_tl8022380252_ (##cdr _g8021580225_))
                          (_hd8022280250_ (##car _g8021580225_)))
                      (let ((_hd80255_ _hd8022280250_)
                            (_rest80257_ _tl8022380252_))
                        (_K8022180247_ _rest80257_ _hd80255_)))
                    (_try-match8021780241_))))))))
    (define gx#stx-foldr
      (lambda (_f80156_ _iv80157_ _stx80158_)
        (if (procedure? _f80156_)
            '#!void
            (error '"expected procedure" _f80156_))
        (let _recur80160_ ((_rest80162_ _stx80158_))
          (let* ((_g8016380173_ (gx#syntax-e _rest80162_))
                 (_else8016680181_
                  (lambda () (_f80156_ _rest80162_ _iv80157_))))
            (let ((_K8016980195_
                   (lambda (_rest80192_ _hd80193_)
                     (_f80156_ _hd80193_ (_recur80160_ _rest80192_))))
                  (_K8016880186_ (lambda () _iv80157_)))
              (let ((_try-match8016580189_
                     (lambda ()
                       (if (##null? _g8016380173_)
                           (_K8016880186_)
                           (_else8016680181_)))))
                (if (##pair? _g8016380173_)
                    (let ((_tl8017180200_ (##cdr _g8016380173_))
                          (_hd8017080198_ (##car _g8016380173_)))
                      (let ((_hd80203_ _hd8017080198_)
                            (_rest80205_ _tl8017180200_))
                        (_K8016980195_ _rest80205_ _hd80203_)))
                    (_try-match8016580189_))))))))
    (define gx#stx-reverse
      (lambda (_stx80154_) (gx#stx-foldl cons '() _stx80154_)))
    (define gx#stx-last
      (lambda (_stx80115_)
        (let _lp80117_ ((_rest80119_ _stx80115_))
          (let* ((_g8012080128_ (gx#syntax-e _rest80119_))
                 (_else8012280136_ (lambda () _rest80119_))
                 (_K8012480142_
                  (lambda (_rest80139_ _hd80140_)
                    (if (gx#stx-null? _rest80139_)
                        _hd80140_
                        (_lp80117_ _rest80139_)))))
            (if (##pair? _g8012080128_)
                (let ((_hd8012580145_ (##car _g8012080128_))
                      (_tl8012680147_ (##cdr _g8012080128_)))
                  (let* ((_hd80150_ _hd8012580145_)
                         (_rest80152_ _tl8012680147_))
                    (_K8012480142_ _rest80152_ _hd80150_)))
                (_else8012280136_))))))
    (define gx#stx-last-pair
      (lambda (_stx80086_)
        (let _lp80088_ ((_hd80090_ _stx80086_))
          (let* ((_g8009180098_ (gx#syntax-e _hd80090_))
                 (_E8009380102_
                  (lambda () (error '"No clause matching" _g8009180098_)))
                 (_K8009480107_
                  (lambda (_rest80105_)
                    (if (gx#stx-pair? _rest80105_)
                        (_lp80088_ _rest80105_)
                        _hd80090_))))
            (if (##pair? _g8009180098_)
                (let* ((_tl8009680110_ (##cdr _g8009180098_))
                       (_rest80113_ _tl8009680110_))
                  (_K8009480107_ _rest80113_))
                (_E8009380102_))))))
    (define gx#stx-list-tail
      (lambda (_stx80055_ _k80056_)
        (let _lp80058_ ((_rest80060_ _stx80055_) (_k80061_ _k80056_))
          (if (fxpositive? _k80061_)
              (let* ((_g8006280069_ (gx#syntax-e _rest80060_))
                     (_E8006480073_
                      (lambda () (error '"No clause matching" _g8006280069_)))
                     (_K8006580078_
                      (lambda (_rest80076_)
                        (_lp80058_ _rest80076_ (fx- _k80061_ '1)))))
                (if (##pair? _g8006280069_)
                    (let* ((_tl8006780081_ (##cdr _g8006280069_))
                           (_rest80084_ _tl8006780081_))
                      (_K8006580078_ _rest80084_))
                    (_E8006480073_)))
              _rest80060_))))
    (define gx#stx-list-ref
      (lambda (_stx80052_ _k80053_)
        (gx#stx-car (gx#stx-list-tail _stx80052_ _k80053_))))
    (define gx#stx-plist?__%
      (lambda (_stx79964_ _key?79965_)
        (if (procedure? _key?79965_)
            '#!void
            (error '"expected procedure" _key?79965_))
        (let _lp79967_ ((_rest79969_ _stx79964_))
          (let* ((_g7997079980_ (gx#stx-e _rest79969_))
                 (_else7997379988_ (lambda () '#f)))
            (let ((_K7997680030_
                   (lambda (_rest79999_ _hd80000_)
                     (if (_key?79965_ _hd80000_)
                         (let* ((_g8000180009_ (gx#stx-e _rest79999_))
                                (_else8000380017_ (lambda () '#f))
                                (_K8000580022_
                                 (lambda (_rest80020_)
                                   (_lp79967_ _rest80020_))))
                           (if (##pair? _g8000180009_)
                               (let* ((_tl8000780025_ (##cdr _g8000180009_))
                                      (_rest80028_ _tl8000780025_))
                                 (_lp79967_ _rest80028_))
                               (_else8000380017_)))
                         '#f)))
                  (_K7997579993_ (lambda () '#t)))
              (let ((_try-match7997279996_
                     (lambda ()
                       (if (##null? _g7997079980_)
                           (_K7997579993_)
                           (_else7997379988_)))))
                (if (##pair? _g7997079980_)
                    (let ((_tl7997880035_ (##cdr _g7997079980_))
                          (_hd7997780033_ (##car _g7997079980_)))
                      (let ((_hd80038_ _hd7997780033_)
                            (_rest80040_ _tl7997880035_))
                        (_K7997680030_ _rest80040_ _hd80038_)))
                    (_try-match7997279996_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80045_)
        (let ((_key?80047_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80045_ _key?80047_))))
    (define gx#stx-plist?
      (lambda _g81153_
        (let ((_g81152_ (##length _g81153_)))
          (cond ((##fx= _g81152_ 1)
                 (apply (lambda (_stx80045_) (gx#stx-plist?__0 _stx80045_))
                        _g81153_))
                ((##fx= _g81152_ 2)
                 (apply (lambda (_stx80049_ _key?80050_)
                          (gx#stx-plist?__% _stx80049_ _key?80050_))
                        _g81153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81153_))))))
    (define gx#stx-getq__%
      (lambda (_key79882_ _stx79883_ _key=?79884_)
        (if (procedure? _key=?79884_)
            '#!void
            (error '"expected procedure" _key=?79884_))
        (let _lp79886_ ((_rest79888_ _stx79883_))
          (let* ((_g7988979897_ (gx#syntax-e _rest79888_))
                 (_else7989179905_ (lambda () '#f))
                 (_K7989379939_
                  (lambda (_rest79908_ _hd79909_)
                    (let* ((_g7991079917_ (gx#syntax-e _rest79908_))
                           (_E7991279921_
                            (lambda ()
                              (error '"No clause matching" _g7991079917_)))
                           (_K7991379927_
                            (lambda (_rest79924_ _val79925_)
                              (if (_key=?79884_ _hd79909_ _key79882_)
                                  _val79925_
                                  (_lp79886_ _rest79924_)))))
                      (if (##pair? _g7991079917_)
                          (let ((_hd7991479930_ (##car _g7991079917_))
                                (_tl7991579932_ (##cdr _g7991079917_)))
                            (let* ((_val79935_ _hd7991479930_)
                                   (_rest79937_ _tl7991579932_))
                              (_K7991379927_ _rest79937_ _val79935_)))
                          (_E7991279921_))))))
            (if (##pair? _g7988979897_)
                (let ((_hd7989479942_ (##car _g7988979897_))
                      (_tl7989579944_ (##cdr _g7988979897_)))
                  (let* ((_hd79947_ _hd7989479942_)
                         (_rest79949_ _tl7989579944_))
                    (_K7989379939_ _rest79949_ _hd79947_)))
                (_else7989179905_))))))
    (define gx#stx-getq__0
      (lambda (_key79954_ _stx79955_)
        (let ((_key=?79957_ gx#stx-eq?))
          (gx#stx-getq__% _key79954_ _stx79955_ _key=?79957_))))
    (define gx#stx-getq
      (lambda _g81155_
        (let ((_g81154_ (##length _g81155_)))
          (cond ((##fx= _g81154_ 2)
                 (apply (lambda (_key79954_ _stx79955_)
                          (gx#stx-getq__0 _key79954_ _stx79955_))
                        _g81155_))
                ((##fx= _g81154_ 3)
                 (apply (lambda (_key79959_ _stx79960_ _key=?79961_)
                          (gx#stx-getq__% _key79959_ _stx79960_ _key=?79961_))
                        _g81155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81155_))))))))
