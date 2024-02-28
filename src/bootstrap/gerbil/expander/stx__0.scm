(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1709111636)
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
      (lambda _$args81049_
        (apply make-instance gx#identifier-wrap::t _$args81049_)))
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
      (lambda _$args81046_
        (apply make-instance gx#syntax-wrap::t _$args81046_)))
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
      (lambda _$args81043_
        (apply make-instance gx#syntax-quote::t _$args81043_)))
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
      (lambda (_stx81041_) (symbol? (gx#stx-e _stx81041_))))
    (define gx#identifier-quote?
      (lambda (_stx81039_)
        (if (##structure-direct-instance-of? _stx81039_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81039_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81037_)
        (if (##structure-direct-instance-of? _stx81037_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81037_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81037_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81035_)
        (if (##structure-direct-instance-of? _stx81035_ 'gx#syntax-quote::t)
            _stx81035_
            (if (##structure-direct-instance-of? _stx81035_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81035_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81018_)
        (if (##structure-direct-instance-of? _stx81018_ 'gx#syntax-wrap::t)
            (let _lp81020_ ((_e81022_
                             (##unchecked-structure-ref
                              _stx81018_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81023_
                             (cons (##unchecked-structure-ref
                                    _stx81018_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81022_)
                  (let ((_$e81025_ (##type-id (##structure-type _e81022_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81025_)
                        (_lp81020_
                         (##unchecked-structure-ref _e81022_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81022_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81023_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81025_)
                                (eq? 'gx#identifier-wrap::t _$e81025_))
                            (##unchecked-structure-ref
                             _e81022_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81025_)
                                (_lp81020_
                                 (##unchecked-structure-ref
                                  _e81022_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81023_)
                                _e81022_))))
                  (if (null? _marks81023_)
                      _e81022_
                      (if (pair? _e81022_)
                          (cons (gx#stx-wrap (car _e81022_) _marks81023_)
                                (gx#stx-wrap (cdr _e81022_) _marks81023_))
                          (if (vector? _e81022_)
                              (vector-map
                               (lambda (_g8103081032_)
                                 (gx#stx-wrap _g8103081032_ _marks81023_))
                               _e81022_)
                              (if (box? _e81022_)
                                  (box (gx#stx-wrap
                                        (unbox _e81022_)
                                        _marks81023_))
                                  _e81022_))))))
            (if (##structure-instance-of? _stx81018_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81018_ '1 gx#AST::t '#f)
                _stx81018_))))
    (define gx#syntax->datum
      (lambda (_stx81016_)
        (if (##structure-instance-of? _stx81016_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81016_ '1 gx#AST::t '#f))
            (if (pair? _stx81016_)
                (cons (gx#syntax->datum (car _stx81016_))
                      (gx#syntax->datum (cdr _stx81016_)))
                (if (vector? _stx81016_)
                    (vector-map gx#syntax->datum _stx81016_)
                    (if (box? _stx81016_)
                        (box (gx#syntax->datum (unbox _stx81016_)))
                        _stx81016_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80959_ _datum80960_ _src80961_ _quote?80962_)
        (letrec ((_wrap-datum80964_
                  (lambda (_e80988_ _marks80989_)
                    (_wrap-inner80966_
                     _e80988_
                     (lambda (_g8099080992_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8099080992_
                        _src80961_
                        _marks80989_)))))
                 (_wrap-quote80965_
                  (lambda (_e80980_ _ctx80981_ _marks80982_)
                    (_wrap-inner80966_
                     _e80980_
                     (lambda (_g8098380985_)
                       (##structure
                        gx#syntax-quote::t
                        _g8098380985_
                        _src80961_
                        _ctx80981_
                        _marks80982_)))))
                 (_wrap-inner80966_
                  (lambda (_e80973_ _wrap-e80974_)
                    (let _recur80976_ ((_e80978_ _e80973_))
                      (if (symbol? _e80978_)
                          (_wrap-e80974_ _e80978_)
                          (if (pair? _e80978_)
                              (cons (_recur80976_ (car _e80978_))
                                    (_recur80976_ (cdr _e80978_)))
                              (if (vector? _e80978_)
                                  (vector-map _recur80976_ _e80978_)
                                  (if (box? _e80978_)
                                      (box (_recur80976_ (unbox _e80978_)))
                                      _e80978_)))))))
                 (_wrap-outer80967_
                  (lambda (_e80971_)
                    (if (##structure-instance-of? _e80971_ 'gerbil#AST::t)
                        _e80971_
                        (##structure gx#AST::t _e80971_ _src80961_)))))
          (if (##structure-instance-of? _datum80960_ 'gerbil#AST::t)
              _datum80960_
              (if (not _stx80959_)
                  (##structure gx#AST::t _datum80960_ _src80961_)
                  (if (gx#identifier? _stx80959_)
                      (let ((_stx80969_ (gx#stx-unwrap__0 _stx80959_)))
                        (_wrap-outer80967_
                         (if (##structure-direct-instance-of?
                              _stx80969_
                              'gx#syntax-quote::t)
                             (if _quote?80962_
                                 (_wrap-quote80965_
                                  _datum80960_
                                  (##unchecked-structure-ref
                                   _stx80969_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80969_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80964_
                                  _datum80960_
                                  (##unchecked-structure-ref
                                   _stx80969_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80964_
                              _datum80960_
                              (##unchecked-structure-ref
                               _stx80969_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80959_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80998_ _datum80999_)
        (let* ((_src81001_ '#f) (_quote?81003_ '#t))
          (gx#datum->syntax__%
           _stx80998_
           _datum80999_
           _src81001_
           _quote?81003_))))
    (define gx#datum->syntax__1
      (lambda (_stx81005_ _datum81006_ _src81007_)
        (let ((_quote?81009_ '#t))
          (gx#datum->syntax__%
           _stx81005_
           _datum81006_
           _src81007_
           _quote?81009_))))
    (define gx#datum->syntax
      (lambda _g81130_
        (let ((_g81129_ (##length _g81130_)))
          (cond ((##fx= _g81129_ 2)
                 (apply (lambda (_stx80998_ _datum80999_)
                          (gx#datum->syntax__0 _stx80998_ _datum80999_))
                        _g81130_))
                ((##fx= _g81129_ 3)
                 (apply (lambda (_stx81005_ _datum81006_ _src81007_)
                          (gx#datum->syntax__1
                           _stx81005_
                           _datum81006_
                           _src81007_))
                        _g81130_))
                ((##fx= _g81129_ 4)
                 (apply (lambda (_stx81011_
                                 _datum81012_
                                 _src81013_
                                 _quote?81014_)
                          (gx#datum->syntax__%
                           _stx81011_
                           _datum81012_
                           _src81013_
                           _quote?81014_))
                        _g81130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81130_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80935_ _marks80936_)
        (let _lp80938_ ((_e80940_ _stx80935_)
                        (_marks80941_ _marks80936_)
                        (_src80942_ (gx#stx-source _stx80935_)))
          (if (##structure-direct-instance-of? _e80940_ 'gx#syntax-wrap::t)
              (_lp80938_
               (##unchecked-structure-ref _e80940_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80940_ '3 gx#syntax-wrap::t '#f)
                _marks80941_)
               (##unchecked-structure-ref _e80940_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80940_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80941_)
                      _e80940_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80940_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80940_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80940_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80941_)))
                  (if (##structure-direct-instance-of?
                       _e80940_
                       'gx#syntax-quote::t)
                      _e80940_
                      (if (##structure-instance-of? _e80940_ 'gerbil#AST::t)
                          (_lp80938_
                           (##unchecked-structure-ref
                            _e80940_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80941_
                           (##unchecked-structure-ref
                            _e80940_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80940_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80940_
                               _src80942_
                               (reverse _marks80941_))
                              (if (null? _marks80941_)
                                  _e80940_
                                  (if (pair? _e80940_)
                                      (cons (gx#stx-wrap
                                             (car _e80940_)
                                             _marks80941_)
                                            (gx#stx-wrap
                                             (cdr _e80940_)
                                             _marks80941_))
                                      (if (vector? _e80940_)
                                          (vector-map
                                           (lambda (_g8094380945_)
                                             (gx#stx-wrap
                                              _g8094380945_
                                              _marks80941_))
                                           _e80940_)
                                          (if (box? _e80940_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80940_)
                                                    _marks80941_))
                                              _e80940_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80951_)
        (let ((_marks80953_ '())) (gx#stx-unwrap__% _stx80951_ _marks80953_))))
    (define gx#stx-unwrap
      (lambda _g81132_
        (let ((_g81131_ (##length _g81132_)))
          (cond ((##fx= _g81131_ 1)
                 (apply (lambda (_stx80951_) (gx#stx-unwrap__0 _stx80951_))
                        _g81132_))
                ((##fx= _g81131_ 2)
                 (apply (lambda (_stx80955_ _marks80956_)
                          (gx#stx-unwrap__% _stx80955_ _marks80956_))
                        _g81132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81132_))))))
    (define gx#stx-wrap
      (lambda (_stx80928_ _marks80929_)
        (foldl1 (lambda (_mark80931_ _stx80932_)
                  (gx#stx-apply-mark _stx80932_ _mark80931_))
                _stx80928_
                _marks80929_)))
    (define gx#stx-rewrap
      (lambda (_stx80922_ _marks80923_)
        (foldr1 (lambda (_mark80925_ _stx80926_)
                  (gx#stx-apply-mark _stx80926_ _mark80925_))
                _stx80922_
                _marks80923_)))
    (define gx#stx-apply-mark
      (lambda (_stx80919_ _mark80920_)
        (if (##structure-direct-instance-of? _stx80919_ 'gx#syntax-quote::t)
            _stx80919_
            (if (and (##structure-direct-instance-of?
                      _stx80919_
                      'gx#syntax-wrap::t)
                     (eq? _mark80920_
                          (##unchecked-structure-ref
                           _stx80919_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80919_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80919_
                 (gx#stx-source _stx80919_)
                 _mark80920_)))))
    (define gx#apply-mark
      (lambda (_mark80883_ _marks80884_)
        (let* ((_marks8088580893_ _marks80884_)
               (_else8088780901_ (lambda () (cons _mark80883_ _marks80884_)))
               (_K8088980907_
                (lambda (_rest80904_ _hd80905_)
                  (if (eq? _mark80883_ _hd80905_)
                      _rest80904_
                      (cons _mark80883_ _marks80884_)))))
          (if (##pair? _marks8088580893_)
              (let ((_hd8089080910_ (##car _marks8088580893_))
                    (_tl8089180912_ (##cdr _marks8088580893_)))
                (let* ((_hd80915_ _hd8089080910_) (_rest80917_ _tl8089180912_))
                  (_K8088980907_ _rest80917_ _hd80915_)))
              (_else8088780901_)))))
    (define gx#stx-e
      (lambda (_stx80881_)
        (if (##structure-direct-instance-of? _stx80881_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80881_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80881_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80881_ '1 gx#AST::t '#f)
                _stx80881_))))
    (define gx#stx-source
      (lambda (_stx80879_)
        (if (##structure-instance-of? _stx80879_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80879_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80873_ _src80874_)
        (if (or (##structure-instance-of? _stx80873_ 'gerbil#AST::t)
                (not _src80874_))
            _stx80873_
            (##structure gx#AST::t _stx80873_ _src80874_))))
    (define gx#stx-datum?
      (lambda (_stx80871_) (gx#self-quoting? (gx#stx-e _stx80871_))))
    (define gx#self-quoting?
      (lambda (_x80854_)
        (let ((_$e80856_ (immediate? _x80854_)))
          (if _$e80856_
              _$e80856_
              (let ((_$e80859_ (number? _x80854_)))
                (if _$e80859_
                    _$e80859_
                    (let ((_$e80862_ (keyword? _x80854_)))
                      (if _$e80862_
                          _$e80862_
                          (let ((_$e80865_ (string? _x80854_)))
                            (if _$e80865_
                                _$e80865_
                                (let ((_$e80868_ (vector? _x80854_)))
                                  (if _$e80868_
                                      _$e80868_
                                      (u8vector? _x80854_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80852_) (boolean? (gx#stx-e _e80852_))))
    (define gx#stx-keyword? (lambda (_e80850_) (keyword? (gx#stx-e _e80850_))))
    (define gx#stx-char? (lambda (_e80848_) (char? (gx#stx-e _e80848_))))
    (define gx#stx-number? (lambda (_e80846_) (number? (gx#stx-e _e80846_))))
    (define gx#stx-fixnum? (lambda (_e80844_) (fixnum? (gx#stx-e _e80844_))))
    (define gx#stx-string? (lambda (_e80842_) (string? (gx#stx-e _e80842_))))
    (define gx#stx-null? (lambda (_e80840_) (null? (gx#stx-e _e80840_))))
    (define gx#stx-pair? (lambda (_e80838_) (pair? (gx#stx-e _e80838_))))
    (define gx#stx-list?
      (lambda (_e80800_)
        (let* ((_g8080180810_ (gx#stx-e _e80800_))
               (_E8080480814_
                (lambda () (error '"No clause matching" _g8080180810_))))
          (let ((_K8080680830_
                 (lambda (_rest80828_) (gx#stx-list? _rest80828_)))
                (_K8080580820_ (lambda (_tail80818_) (null? _tail80818_))))
            (if (##pair? _g8080180810_)
                (let* ((_tl8080880833_ (##cdr _g8080180810_))
                       (_rest80836_ _tl8080880833_))
                  (gx#stx-list? _rest80836_))
                (let ((_tail80823_ _g8080180810_)) (null? _tail80823_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80793_)
        (let* ((_e80795_ (gx#stx-e _e80793_)) (_$e80797_ (pair? _e80795_)))
          (if _$e80797_ _$e80797_ (null? _e80795_)))))
    (define gx#stx-vector? (lambda (_e80791_) (vector? (gx#stx-e _e80791_))))
    (define gx#stx-box? (lambda (_e80789_) (box? (gx#stx-e _e80789_))))
    (define gx#stx-eq?
      (lambda (_x80786_ _y80787_)
        (eq? (gx#stx-e _x80786_) (gx#stx-e _y80787_))))
    (define gx#stx-eqv?
      (lambda (_x80783_ _y80784_)
        (eqv? (gx#stx-e _x80783_) (gx#stx-e _y80784_))))
    (define gx#stx-equal?
      (lambda (_x80780_ _y80781_)
        (equal? (gx#stx-e _x80780_) (gx#stx-e _y80781_))))
    (define gx#stx-false? (lambda (_x80778_) (not (gx#stx-e _x80778_))))
    (define gx#stx-identifier
      (lambda (_template80775_ . _args80776_)
        (gx#datum->syntax__1
         _template80775_
         (apply make-symbol (gx#syntax->datum _args80776_))
         (gx#stx-source _template80775_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80773_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80773_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80771_)
        (if (##structure-direct-instance-of? _stx80771_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80771_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80771_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80771_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80771_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80767_)
        (let ((_stx80769_ (gx#stx-unwrap__0 _stx80767_)))
          (if (gx#identifier-quote? _stx80769_)
              (##unchecked-structure-ref _stx80769_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80722_)
        (let* ((_g8072380733_ (gx#stx-e _stx80722_))
               (_else8072680741_ (lambda () '#f)))
          (let ((_K8072980755_
                 (lambda (_rest80752_ _hd80753_)
                   (if (gx#identifier? _hd80753_)
                       (gx#identifier-list? _rest80752_)
                       '#f)))
                (_K8072880746_ (lambda () '#t)))
            (let ((_try-match8072580749_
                   (lambda ()
                     (if (##null? _g8072380733_)
                         (_K8072880746_)
                         (_else8072680741_)))))
              (if (##pair? _g8072380733_)
                  (let ((_tl8073180760_ (##cdr _g8072380733_))
                        (_hd8073080758_ (##car _g8072380733_)))
                    (let ((_hd80763_ _hd8073080758_)
                          (_rest80765_ _tl8073180760_))
                      (_K8072980755_ _rest80765_ _hd80763_)))
                  (_try-match8072580749_)))))))
    (define gx#genident__%
      (lambda (_e80699_ _src80700_)
        (gx#stx-wrap-source
         (gensym (let ((_e80702_ (gx#stx-e _e80699_)))
                   (if (interned-symbol? _e80702_) _e80702_ 'g)))
         (let ((_$e80704_ (gx#stx-source _e80699_)))
           (if _$e80704_ _$e80704_ _src80700_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80711_ 'g) (_src80713_ '#f))
          (gx#genident__% _e80711_ _src80713_))))
    (define gx#genident__1
      (lambda (_e80715_)
        (let ((_src80717_ '#f)) (gx#genident__% _e80715_ _src80717_))))
    (define gx#genident
      (lambda _g81134_
        (let ((_g81133_ (##length _g81134_)))
          (cond ((##fx= _g81133_ 0)
                 (apply (lambda () (gx#genident__0)) _g81134_))
                ((##fx= _g81133_ 1)
                 (apply (lambda (_e80715_) (gx#genident__1 _e80715_))
                        _g81134_))
                ((##fx= _g81133_ 2)
                 (apply (lambda (_e80719_ _src80720_)
                          (gx#genident__% _e80719_ _src80720_))
                        _g81134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81134_))))))
    (define gx#gentemps
      (lambda (_stx-lst80696_) (gx#stx-map1 gx#genident _stx-lst80696_)))
    (define gx#syntax->list
      (lambda (_stx80694_) (gx#stx-map1 values _stx80694_)))
    (define gx#stx-car
      (lambda (_stx80691_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80691_)))))
    (define gx#stx-cdr
      (lambda (_stx80688_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80688_)))))
    (define gx#stx-length
      (lambda (_stx80653_)
        (let _lp80655_ ((_rest80657_ _stx80653_) (_n80658_ '0))
          (let* ((_g8065980667_ (gx#stx-e _rest80657_))
                 (_else8066180675_ (lambda () _n80658_))
                 (_K8066380680_
                  (lambda (_rest80678_)
                    (_lp80655_ _rest80678_ (fx+ _n80658_ '1)))))
            (if (##pair? _g8065980667_)
                (let* ((_tl8066580683_ (##cdr _g8065980667_))
                       (_rest80686_ _tl8066580683_))
                  (_K8066380680_ _rest80686_))
                (_else8066180675_))))))
    (define gx#stx-for-each
      (lambda _g81136_
        (let ((_g81135_ (##length _g81136_)))
          (cond ((##fx= _g81135_ 2)
                 (apply (lambda (_f80646_ _stx80647_)
                          (gx#stx-for-each1 _f80646_ _stx80647_))
                        _g81136_))
                ((##fx= _g81135_ 3)
                 (apply (lambda (_f80649_ _xstx80650_ _ystx80651_)
                          (gx#stx-for-each2 _f80649_ _xstx80650_ _ystx80651_))
                        _g81136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81136_))))))
    (define gx#stx-for-each1
      (lambda (_f80596_ _stx80597_)
        (if (procedure? _f80596_)
            '#!void
            (error '"expected procedure" _f80596_))
        (let _lp80599_ ((_rest80601_ _stx80597_))
          (let* ((_g8060280612_ (gx#syntax-e _rest80601_))
                 (_else8060580620_ (lambda () (_f80596_ _rest80601_))))
            (let ((_K8060880634_
                   (lambda (_rest80631_ _hd80632_)
                     (_f80596_ _hd80632_)
                     (_lp80599_ _rest80631_)))
                  (_K8060780625_ (lambda () '#!void)))
              (let ((_try-match8060480628_
                     (lambda ()
                       (if (##null? _g8060280612_)
                           (_K8060780625_)
                           (_else8060580620_)))))
                (if (##pair? _g8060280612_)
                    (let ((_tl8061080639_ (##cdr _g8060280612_))
                          (_hd8060980637_ (##car _g8060280612_)))
                      (let ((_hd80642_ _hd8060980637_)
                            (_rest80644_ _tl8061080639_))
                        (_K8060880634_ _rest80644_ _hd80642_)))
                    (_try-match8060480628_))))))))
    (define gx#stx-for-each2
      (lambda (_f80501_ _xstx80502_ _ystx80503_)
        (if (procedure? _f80501_)
            '#!void
            (error '"expected procedure" _f80501_))
        (let _lp80505_ ((_xrest80507_ _xstx80502_) (_yrest80508_ _ystx80503_))
          (let* ((_g8050980519_ (gx#syntax-e _xrest80507_))
                 (_else8051280527_ (lambda () '#!void)))
            (let ((_K8051580584_
                   (lambda (_xrest80553_ _xhd80554_)
                     (let* ((_g8055580562_ (gx#syntax-e _yrest80508_))
                            (_E8055780566_
                             (lambda ()
                               (error '"No clause matching" _g8055580562_)))
                            (_K8055880572_
                             (lambda (_yrest80569_ _yhd80570_)
                               (_f80501_ _xhd80554_ _yhd80570_)
                               (_lp80505_ _xrest80553_ _yrest80569_))))
                       (if (##pair? _g8055580562_)
                           (let ((_hd8055980575_ (##car _g8055580562_))
                                 (_tl8056080577_ (##cdr _g8055580562_)))
                             (let* ((_yhd80580_ _hd8055980575_)
                                    (_yrest80582_ _tl8056080577_))
                               (_K8055880572_ _yrest80582_ _yhd80580_)))
                           (_E8055780566_)))))
                  (_K8051480547_
                   (lambda ()
                     (let* ((_yrest8053180536_ _yrest80508_)
                            (_E8053380540_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8053180536_)))
                            (_K8053480544_
                             (lambda () (_f80501_ _xrest80507_ _yrest80508_))))
                       (if (not (gx#stx-null? _yrest8053180536_))
                           (_K8053480544_)
                           (_E8053380540_))))))
              (let ((_try-match8051180550_
                     (lambda ()
                       (if (not (null? _g8050980519_))
                           (_K8051480547_)
                           (_else8051280527_)))))
                (if (##pair? _g8050980519_)
                    (let ((_tl8051780589_ (##cdr _g8050980519_))
                          (_hd8051680587_ (##car _g8050980519_)))
                      (let ((_xhd80592_ _hd8051680587_)
                            (_xrest80594_ _tl8051780589_))
                        (_K8051580584_ _xrest80594_ _xhd80592_)))
                    (_try-match8051180550_))))))))
    (define gx#stx-map
      (lambda _g81138_
        (let ((_g81137_ (##length _g81138_)))
          (cond ((##fx= _g81137_ 2)
                 (apply (lambda (_f80494_ _stx80495_)
                          (gx#stx-map1 _f80494_ _stx80495_))
                        _g81138_))
                ((##fx= _g81137_ 3)
                 (apply (lambda (_f80497_ _xstx80498_ _ystx80499_)
                          (gx#stx-map2 _f80497_ _xstx80498_ _ystx80499_))
                        _g81138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81138_))))))
    (define gx#stx-map1
      (lambda (_f80444_ _stx80445_)
        (if (procedure? _f80444_)
            '#!void
            (error '"expected procedure" _f80444_))
        (let _recur80447_ ((_rest80449_ _stx80445_))
          (let* ((_g8045080460_ (gx#syntax-e _rest80449_))
                 (_else8045380468_ (lambda () (_f80444_ _rest80449_))))
            (let ((_K8045680482_
                   (lambda (_rest80479_ _hd80480_)
                     (cons (_f80444_ _hd80480_) (_recur80447_ _rest80479_))))
                  (_K8045580473_ (lambda () '())))
              (let ((_try-match8045280476_
                     (lambda ()
                       (if (##null? _g8045080460_)
                           (_K8045580473_)
                           (_else8045380468_)))))
                (if (##pair? _g8045080460_)
                    (let ((_tl8045880487_ (##cdr _g8045080460_))
                          (_hd8045780485_ (##car _g8045080460_)))
                      (let ((_hd80490_ _hd8045780485_)
                            (_rest80492_ _tl8045880487_))
                        (_K8045680482_ _rest80492_ _hd80490_)))
                    (_try-match8045280476_))))))))
    (define gx#stx-map2
      (lambda (_f80349_ _xstx80350_ _ystx80351_)
        (if (procedure? _f80349_)
            '#!void
            (error '"expected procedure" _f80349_))
        (let _recur80353_ ((_xrest80355_ _xstx80350_)
                           (_yrest80356_ _ystx80351_))
          (let* ((_g8035780367_ (gx#syntax-e _xrest80355_))
                 (_else8036080375_ (lambda () '())))
            (let ((_K8036380432_
                   (lambda (_xrest80401_ _xhd80402_)
                     (let* ((_g8040380410_ (gx#syntax-e _yrest80356_))
                            (_E8040580414_
                             (lambda ()
                               (error '"No clause matching" _g8040380410_)))
                            (_K8040680420_
                             (lambda (_yrest80417_ _yhd80418_)
                               (cons (_f80349_ _xhd80402_ _yhd80418_)
                                     (_recur80353_
                                      _xrest80401_
                                      _yrest80417_)))))
                       (if (##pair? _g8040380410_)
                           (let ((_hd8040780423_ (##car _g8040380410_))
                                 (_tl8040880425_ (##cdr _g8040380410_)))
                             (let* ((_yhd80428_ _hd8040780423_)
                                    (_yrest80430_ _tl8040880425_))
                               (_K8040680420_ _yrest80430_ _yhd80428_)))
                           (_E8040580414_)))))
                  (_K8036280395_
                   (lambda ()
                     (let* ((_yrest8037980384_ _yrest80356_)
                            (_E8038180388_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8037980384_)))
                            (_K8038280392_
                             (lambda () (_f80349_ _xrest80355_ _yrest80356_))))
                       (if (not (gx#stx-null? _yrest8037980384_))
                           (_K8038280392_)
                           (_E8038180388_))))))
              (let ((_try-match8035980398_
                     (lambda ()
                       (if (not (null? _g8035780367_))
                           (_K8036280395_)
                           (_else8036080375_)))))
                (if (##pair? _g8035780367_)
                    (let ((_tl8036580437_ (##cdr _g8035780367_))
                          (_hd8036480435_ (##car _g8035780367_)))
                      (let ((_xhd80440_ _hd8036480435_)
                            (_xrest80442_ _tl8036580437_))
                        (_K8036380432_ _xrest80442_ _xhd80440_)))
                    (_try-match8035980398_))))))))
    (define gx#stx-andmap
      (lambda (_f80299_ _stx80300_)
        (if (procedure? _f80299_)
            '#!void
            (error '"expected procedure" _f80299_))
        (let _lp80302_ ((_rest80304_ _stx80300_))
          (let* ((_g8030580315_ (gx#syntax-e _rest80304_))
                 (_else8030880323_ (lambda () (_f80299_ _rest80304_))))
            (let ((_K8031180337_
                   (lambda (_rest80334_ _hd80335_)
                     (if (_f80299_ _hd80335_) (_lp80302_ _rest80334_) '#f)))
                  (_K8031080328_ (lambda () '#t)))
              (let ((_try-match8030780331_
                     (lambda ()
                       (if (##null? _g8030580315_)
                           (_K8031080328_)
                           (_else8030880323_)))))
                (if (##pair? _g8030580315_)
                    (let ((_tl8031380342_ (##cdr _g8030580315_))
                          (_hd8031280340_ (##car _g8030580315_)))
                      (let ((_hd80345_ _hd8031280340_)
                            (_rest80347_ _tl8031380342_))
                        (_K8031180337_ _rest80347_ _hd80345_)))
                    (_try-match8030780331_))))))))
    (define gx#stx-ormap
      (lambda (_f80246_ _stx80247_)
        (if (procedure? _f80246_)
            '#!void
            (error '"expected procedure" _f80246_))
        (let _lp80249_ ((_rest80251_ _stx80247_))
          (let* ((_g8025280262_ (gx#syntax-e _rest80251_))
                 (_else8025580270_ (lambda () (_f80246_ _rest80251_))))
            (let ((_K8025880287_
                   (lambda (_rest80281_ _hd80282_)
                     (let ((_$e80284_ (_f80246_ _hd80282_)))
                       (if _$e80284_ _$e80284_ (_lp80249_ _rest80281_)))))
                  (_K8025780275_ (lambda () '#f)))
              (let ((_try-match8025480278_
                     (lambda ()
                       (if (##null? _g8025280262_)
                           (_K8025780275_)
                           (_else8025580270_)))))
                (if (##pair? _g8025280262_)
                    (let ((_tl8026080292_ (##cdr _g8025280262_))
                          (_hd8025980290_ (##car _g8025280262_)))
                      (let ((_hd80295_ _hd8025980290_)
                            (_rest80297_ _tl8026080292_))
                        (_K8025880287_ _rest80297_ _hd80295_)))
                    (_try-match8025480278_))))))))
    (define gx#stx-foldl
      (lambda (_f80194_ _iv80195_ _stx80196_)
        (if (procedure? _f80194_)
            '#!void
            (error '"expected procedure" _f80194_))
        (let _lp80198_ ((_r80200_ _iv80195_) (_rest80201_ _stx80196_))
          (let* ((_g8020280212_ (gx#syntax-e _rest80201_))
                 (_else8020580220_
                  (lambda () (_f80194_ _rest80201_ _r80200_))))
            (let ((_K8020880234_
                   (lambda (_rest80231_ _hd80232_)
                     (_lp80198_ (_f80194_ _hd80232_ _r80200_) _rest80231_)))
                  (_K8020780225_ (lambda () _r80200_)))
              (let ((_try-match8020480228_
                     (lambda ()
                       (if (##null? _g8020280212_)
                           (_K8020780225_)
                           (_else8020580220_)))))
                (if (##pair? _g8020280212_)
                    (let ((_tl8021080239_ (##cdr _g8020280212_))
                          (_hd8020980237_ (##car _g8020280212_)))
                      (let ((_hd80242_ _hd8020980237_)
                            (_rest80244_ _tl8021080239_))
                        (_K8020880234_ _rest80244_ _hd80242_)))
                    (_try-match8020480228_))))))))
    (define gx#stx-foldr
      (lambda (_f80143_ _iv80144_ _stx80145_)
        (if (procedure? _f80143_)
            '#!void
            (error '"expected procedure" _f80143_))
        (let _recur80147_ ((_rest80149_ _stx80145_))
          (let* ((_g8015080160_ (gx#syntax-e _rest80149_))
                 (_else8015380168_
                  (lambda () (_f80143_ _rest80149_ _iv80144_))))
            (let ((_K8015680182_
                   (lambda (_rest80179_ _hd80180_)
                     (_f80143_ _hd80180_ (_recur80147_ _rest80179_))))
                  (_K8015580173_ (lambda () _iv80144_)))
              (let ((_try-match8015280176_
                     (lambda ()
                       (if (##null? _g8015080160_)
                           (_K8015580173_)
                           (_else8015380168_)))))
                (if (##pair? _g8015080160_)
                    (let ((_tl8015880187_ (##cdr _g8015080160_))
                          (_hd8015780185_ (##car _g8015080160_)))
                      (let ((_hd80190_ _hd8015780185_)
                            (_rest80192_ _tl8015880187_))
                        (_K8015680182_ _rest80192_ _hd80190_)))
                    (_try-match8015280176_))))))))
    (define gx#stx-reverse
      (lambda (_stx80141_) (gx#stx-foldl cons '() _stx80141_)))
    (define gx#stx-last
      (lambda (_stx80102_)
        (let _lp80104_ ((_rest80106_ _stx80102_))
          (let* ((_g8010780115_ (gx#syntax-e _rest80106_))
                 (_else8010980123_ (lambda () _rest80106_))
                 (_K8011180129_
                  (lambda (_rest80126_ _hd80127_)
                    (if (gx#stx-null? _rest80126_)
                        _hd80127_
                        (_lp80104_ _rest80126_)))))
            (if (##pair? _g8010780115_)
                (let ((_hd8011280132_ (##car _g8010780115_))
                      (_tl8011380134_ (##cdr _g8010780115_)))
                  (let* ((_hd80137_ _hd8011280132_)
                         (_rest80139_ _tl8011380134_))
                    (_K8011180129_ _rest80139_ _hd80137_)))
                (_else8010980123_))))))
    (define gx#stx-last-pair
      (lambda (_stx80073_)
        (let _lp80075_ ((_hd80077_ _stx80073_))
          (let* ((_g8007880085_ (gx#syntax-e _hd80077_))
                 (_E8008080089_
                  (lambda () (error '"No clause matching" _g8007880085_)))
                 (_K8008180094_
                  (lambda (_rest80092_)
                    (if (gx#stx-pair? _rest80092_)
                        (_lp80075_ _rest80092_)
                        _hd80077_))))
            (if (##pair? _g8007880085_)
                (let* ((_tl8008380097_ (##cdr _g8007880085_))
                       (_rest80100_ _tl8008380097_))
                  (_K8008180094_ _rest80100_))
                (_E8008080089_))))))
    (define gx#stx-list-tail
      (lambda (_stx80042_ _k80043_)
        (let _lp80045_ ((_rest80047_ _stx80042_) (_k80048_ _k80043_))
          (if (fxpositive? _k80048_)
              (let* ((_g8004980056_ (gx#syntax-e _rest80047_))
                     (_E8005180060_
                      (lambda () (error '"No clause matching" _g8004980056_)))
                     (_K8005280065_
                      (lambda (_rest80063_)
                        (_lp80045_ _rest80063_ (fx- _k80048_ '1)))))
                (if (##pair? _g8004980056_)
                    (let* ((_tl8005480068_ (##cdr _g8004980056_))
                           (_rest80071_ _tl8005480068_))
                      (_K8005280065_ _rest80071_))
                    (_E8005180060_)))
              _rest80047_))))
    (define gx#stx-list-ref
      (lambda (_stx80039_ _k80040_)
        (gx#stx-car (gx#stx-list-tail _stx80039_ _k80040_))))
    (define gx#stx-plist?__%
      (lambda (_stx79951_ _key?79952_)
        (if (procedure? _key?79952_)
            '#!void
            (error '"expected procedure" _key?79952_))
        (let _lp79954_ ((_rest79956_ _stx79951_))
          (let* ((_g7995779967_ (gx#stx-e _rest79956_))
                 (_else7996079975_ (lambda () '#f)))
            (let ((_K7996380017_
                   (lambda (_rest79986_ _hd79987_)
                     (if (_key?79952_ _hd79987_)
                         (let* ((_g7998879996_ (gx#stx-e _rest79986_))
                                (_else7999080004_ (lambda () '#f))
                                (_K7999280009_
                                 (lambda (_rest80007_)
                                   (_lp79954_ _rest80007_))))
                           (if (##pair? _g7998879996_)
                               (let* ((_tl7999480012_ (##cdr _g7998879996_))
                                      (_rest80015_ _tl7999480012_))
                                 (_lp79954_ _rest80015_))
                               (_else7999080004_)))
                         '#f)))
                  (_K7996279980_ (lambda () '#t)))
              (let ((_try-match7995979983_
                     (lambda ()
                       (if (##null? _g7995779967_)
                           (_K7996279980_)
                           (_else7996079975_)))))
                (if (##pair? _g7995779967_)
                    (let ((_tl7996580022_ (##cdr _g7995779967_))
                          (_hd7996480020_ (##car _g7995779967_)))
                      (let ((_hd80025_ _hd7996480020_)
                            (_rest80027_ _tl7996580022_))
                        (_K7996380017_ _rest80027_ _hd80025_)))
                    (_try-match7995979983_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80032_)
        (let ((_key?80034_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80032_ _key?80034_))))
    (define gx#stx-plist?
      (lambda _g81140_
        (let ((_g81139_ (##length _g81140_)))
          (cond ((##fx= _g81139_ 1)
                 (apply (lambda (_stx80032_) (gx#stx-plist?__0 _stx80032_))
                        _g81140_))
                ((##fx= _g81139_ 2)
                 (apply (lambda (_stx80036_ _key?80037_)
                          (gx#stx-plist?__% _stx80036_ _key?80037_))
                        _g81140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81140_))))))
    (define gx#stx-getq__%
      (lambda (_key79869_ _stx79870_ _key=?79871_)
        (if (procedure? _key=?79871_)
            '#!void
            (error '"expected procedure" _key=?79871_))
        (let _lp79873_ ((_rest79875_ _stx79870_))
          (let* ((_g7987679884_ (gx#syntax-e _rest79875_))
                 (_else7987879892_ (lambda () '#f))
                 (_K7988079926_
                  (lambda (_rest79895_ _hd79896_)
                    (let* ((_g7989779904_ (gx#syntax-e _rest79895_))
                           (_E7989979908_
                            (lambda ()
                              (error '"No clause matching" _g7989779904_)))
                           (_K7990079914_
                            (lambda (_rest79911_ _val79912_)
                              (if (_key=?79871_ _hd79896_ _key79869_)
                                  _val79912_
                                  (_lp79873_ _rest79911_)))))
                      (if (##pair? _g7989779904_)
                          (let ((_hd7990179917_ (##car _g7989779904_))
                                (_tl7990279919_ (##cdr _g7989779904_)))
                            (let* ((_val79922_ _hd7990179917_)
                                   (_rest79924_ _tl7990279919_))
                              (_K7990079914_ _rest79924_ _val79922_)))
                          (_E7989979908_))))))
            (if (##pair? _g7987679884_)
                (let ((_hd7988179929_ (##car _g7987679884_))
                      (_tl7988279931_ (##cdr _g7987679884_)))
                  (let* ((_hd79934_ _hd7988179929_)
                         (_rest79936_ _tl7988279931_))
                    (_K7988079926_ _rest79936_ _hd79934_)))
                (_else7987879892_))))))
    (define gx#stx-getq__0
      (lambda (_key79941_ _stx79942_)
        (let ((_key=?79944_ gx#stx-eq?))
          (gx#stx-getq__% _key79941_ _stx79942_ _key=?79944_))))
    (define gx#stx-getq
      (lambda _g81142_
        (let ((_g81141_ (##length _g81142_)))
          (cond ((##fx= _g81141_ 2)
                 (apply (lambda (_key79941_ _stx79942_)
                          (gx#stx-getq__0 _key79941_ _stx79942_))
                        _g81142_))
                ((##fx= _g81141_ 3)
                 (apply (lambda (_key79946_ _stx79947_ _key=?79948_)
                          (gx#stx-getq__% _key79946_ _stx79947_ _key=?79948_))
                        _g81142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81142_))))))))
