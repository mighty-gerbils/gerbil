(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708451993)
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
      (lambda _$args78045_
        (apply make-instance gx#identifier-wrap::t _$args78045_)))
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
      (lambda _$args78042_
        (apply make-instance gx#syntax-wrap::t _$args78042_)))
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
      (lambda _$args78039_
        (apply make-instance gx#syntax-quote::t _$args78039_)))
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
      (lambda (_stx78037_) (symbol? (gx#stx-e _stx78037_))))
    (define gx#identifier-quote?
      (lambda (_stx78035_)
        (if (##structure-direct-instance-of? _stx78035_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx78035_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx78033_)
        (if (##structure-direct-instance-of? _stx78033_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx78033_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx78033_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx78031_)
        (if (##structure-direct-instance-of? _stx78031_ 'gx#syntax-quote::t)
            _stx78031_
            (if (##structure-direct-instance-of? _stx78031_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx78031_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx78014_)
        (if (##structure-direct-instance-of? _stx78014_ 'gx#syntax-wrap::t)
            (let _lp78016_ ((_e78018_
                             (##unchecked-structure-ref
                              _stx78014_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks78019_
                             (cons (##unchecked-structure-ref
                                    _stx78014_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e78018_)
                  (let ((_$e78021_ (##type-id (##structure-type _e78018_))))
                    (if (eq? 'gx#syntax-wrap::t _$e78021_)
                        (_lp78016_
                         (##unchecked-structure-ref _e78018_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e78018_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks78019_))
                        (if (or (eq? 'gx#syntax-quote::t _$e78021_)
                                (eq? 'gx#identifier-wrap::t _$e78021_))
                            (##unchecked-structure-ref
                             _e78018_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e78021_)
                                (_lp78016_
                                 (##unchecked-structure-ref
                                  _e78018_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks78019_)
                                _e78018_))))
                  (if (null? _marks78019_)
                      _e78018_
                      (if (pair? _e78018_)
                          (cons (gx#stx-wrap (car _e78018_) _marks78019_)
                                (gx#stx-wrap (cdr _e78018_) _marks78019_))
                          (if (vector? _e78018_)
                              (vector-map
                               (lambda (_g7802678028_)
                                 (gx#stx-wrap _g7802678028_ _marks78019_))
                               _e78018_)
                              (if (box? _e78018_)
                                  (box (gx#stx-wrap
                                        (unbox _e78018_)
                                        _marks78019_))
                                  _e78018_))))))
            (if (##structure-instance-of? _stx78014_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx78014_ '1 gx#AST::t '#f)
                _stx78014_))))
    (define gx#syntax->datum
      (lambda (_stx78012_)
        (if (##structure-instance-of? _stx78012_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx78012_ '1 gx#AST::t '#f))
            (if (pair? _stx78012_)
                (cons (gx#syntax->datum (car _stx78012_))
                      (gx#syntax->datum (cdr _stx78012_)))
                (if (vector? _stx78012_)
                    (vector-map gx#syntax->datum _stx78012_)
                    (if (box? _stx78012_)
                        (box (gx#syntax->datum (unbox _stx78012_)))
                        _stx78012_))))))
    (define gx#datum->syntax__%
      (lambda (_stx77955_ _datum77956_ _src77957_ _quote?77958_)
        (letrec ((_wrap-datum77960_
                  (lambda (_e77984_ _marks77985_)
                    (_wrap-inner77962_
                     _e77984_
                     (lambda (_g7798677988_)
                       (##structure
                        gx#identifier-wrap::t
                        _g7798677988_
                        _src77957_
                        _marks77985_)))))
                 (_wrap-quote77961_
                  (lambda (_e77976_ _ctx77977_ _marks77978_)
                    (_wrap-inner77962_
                     _e77976_
                     (lambda (_g7797977981_)
                       (##structure
                        gx#syntax-quote::t
                        _g7797977981_
                        _src77957_
                        _ctx77977_
                        _marks77978_)))))
                 (_wrap-inner77962_
                  (lambda (_e77969_ _wrap-e77970_)
                    (let _recur77972_ ((_e77974_ _e77969_))
                      (if (symbol? _e77974_)
                          (_wrap-e77970_ _e77974_)
                          (if (pair? _e77974_)
                              (cons (_recur77972_ (car _e77974_))
                                    (_recur77972_ (cdr _e77974_)))
                              (if (vector? _e77974_)
                                  (vector-map _recur77972_ _e77974_)
                                  (if (box? _e77974_)
                                      (box (_recur77972_ (unbox _e77974_)))
                                      _e77974_)))))))
                 (_wrap-outer77963_
                  (lambda (_e77967_)
                    (if (##structure-instance-of? _e77967_ 'gerbil#AST::t)
                        _e77967_
                        (##structure gx#AST::t _e77967_ _src77957_)))))
          (if (##structure-instance-of? _datum77956_ 'gerbil#AST::t)
              _datum77956_
              (if (not _stx77955_)
                  (##structure gx#AST::t _datum77956_ _src77957_)
                  (if (gx#identifier? _stx77955_)
                      (let ((_stx77965_ (gx#stx-unwrap__0 _stx77955_)))
                        (_wrap-outer77963_
                         (if (##structure-direct-instance-of?
                              _stx77965_
                              'gx#syntax-quote::t)
                             (if _quote?77958_
                                 (_wrap-quote77961_
                                  _datum77956_
                                  (##unchecked-structure-ref
                                   _stx77965_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx77965_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum77960_
                                  _datum77956_
                                  (##unchecked-structure-ref
                                   _stx77965_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum77960_
                              _datum77956_
                              (##unchecked-structure-ref
                               _stx77965_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx77955_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx77994_ _datum77995_)
        (let* ((_src77997_ '#f) (_quote?77999_ '#t))
          (gx#datum->syntax__%
           _stx77994_
           _datum77995_
           _src77997_
           _quote?77999_))))
    (define gx#datum->syntax__1
      (lambda (_stx78001_ _datum78002_ _src78003_)
        (let ((_quote?78005_ '#t))
          (gx#datum->syntax__%
           _stx78001_
           _datum78002_
           _src78003_
           _quote?78005_))))
    (define gx#datum->syntax
      (lambda _g78126_
        (let ((_g78125_ (##length _g78126_)))
          (cond ((##fx= _g78125_ 2)
                 (apply (lambda (_stx77994_ _datum77995_)
                          (gx#datum->syntax__0 _stx77994_ _datum77995_))
                        _g78126_))
                ((##fx= _g78125_ 3)
                 (apply (lambda (_stx78001_ _datum78002_ _src78003_)
                          (gx#datum->syntax__1
                           _stx78001_
                           _datum78002_
                           _src78003_))
                        _g78126_))
                ((##fx= _g78125_ 4)
                 (apply (lambda (_stx78007_
                                 _datum78008_
                                 _src78009_
                                 _quote?78010_)
                          (gx#datum->syntax__%
                           _stx78007_
                           _datum78008_
                           _src78009_
                           _quote?78010_))
                        _g78126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g78126_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx77931_ _marks77932_)
        (let _lp77934_ ((_e77936_ _stx77931_)
                        (_marks77937_ _marks77932_)
                        (_src77938_ (gx#stx-source _stx77931_)))
          (if (##structure-direct-instance-of? _e77936_ 'gx#syntax-wrap::t)
              (_lp77934_
               (##unchecked-structure-ref _e77936_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e77936_ '3 gx#syntax-wrap::t '#f)
                _marks77937_)
               (##unchecked-structure-ref _e77936_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e77936_
                   'gx#identifier-wrap::t)
                  (if (null? _marks77937_)
                      _e77936_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e77936_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e77936_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e77936_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks77937_)))
                  (if (##structure-direct-instance-of?
                       _e77936_
                       'gx#syntax-quote::t)
                      _e77936_
                      (if (##structure-instance-of? _e77936_ 'gerbil#AST::t)
                          (_lp77934_
                           (##unchecked-structure-ref
                            _e77936_
                            '1
                            gx#AST::t
                            '#f)
                           _marks77937_
                           (##unchecked-structure-ref
                            _e77936_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e77936_)
                              (##structure
                               gx#identifier-wrap::t
                               _e77936_
                               _src77938_
                               (reverse _marks77937_))
                              (if (null? _marks77937_)
                                  _e77936_
                                  (if (pair? _e77936_)
                                      (cons (gx#stx-wrap
                                             (car _e77936_)
                                             _marks77937_)
                                            (gx#stx-wrap
                                             (cdr _e77936_)
                                             _marks77937_))
                                      (if (vector? _e77936_)
                                          (vector-map
                                           (lambda (_g7793977941_)
                                             (gx#stx-wrap
                                              _g7793977941_
                                              _marks77937_))
                                           _e77936_)
                                          (if (box? _e77936_)
                                              (box (gx#stx-wrap
                                                    (unbox _e77936_)
                                                    _marks77937_))
                                              _e77936_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx77947_)
        (let ((_marks77949_ '())) (gx#stx-unwrap__% _stx77947_ _marks77949_))))
    (define gx#stx-unwrap
      (lambda _g78128_
        (let ((_g78127_ (##length _g78128_)))
          (cond ((##fx= _g78127_ 1)
                 (apply (lambda (_stx77947_) (gx#stx-unwrap__0 _stx77947_))
                        _g78128_))
                ((##fx= _g78127_ 2)
                 (apply (lambda (_stx77951_ _marks77952_)
                          (gx#stx-unwrap__% _stx77951_ _marks77952_))
                        _g78128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g78128_))))))
    (define gx#stx-wrap
      (lambda (_stx77924_ _marks77925_)
        (foldl1 (lambda (_mark77927_ _stx77928_)
                  (gx#stx-apply-mark _stx77928_ _mark77927_))
                _stx77924_
                _marks77925_)))
    (define gx#stx-rewrap
      (lambda (_stx77918_ _marks77919_)
        (foldr1 (lambda (_mark77921_ _stx77922_)
                  (gx#stx-apply-mark _stx77922_ _mark77921_))
                _stx77918_
                _marks77919_)))
    (define gx#stx-apply-mark
      (lambda (_stx77915_ _mark77916_)
        (if (##structure-direct-instance-of? _stx77915_ 'gx#syntax-quote::t)
            _stx77915_
            (if (and (##structure-direct-instance-of?
                      _stx77915_
                      'gx#syntax-wrap::t)
                     (eq? _mark77916_
                          (##unchecked-structure-ref
                           _stx77915_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx77915_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx77915_
                 (gx#stx-source _stx77915_)
                 _mark77916_)))))
    (define gx#apply-mark
      (lambda (_mark77879_ _marks77880_)
        (let* ((_marks7788177889_ _marks77880_)
               (_else7788377897_ (lambda () (cons _mark77879_ _marks77880_)))
               (_K7788577903_
                (lambda (_rest77900_ _hd77901_)
                  (if (eq? _mark77879_ _hd77901_)
                      _rest77900_
                      (cons _mark77879_ _marks77880_)))))
          (if (##pair? _marks7788177889_)
              (let ((_hd7788677906_ (##car _marks7788177889_))
                    (_tl7788777908_ (##cdr _marks7788177889_)))
                (let* ((_hd77911_ _hd7788677906_) (_rest77913_ _tl7788777908_))
                  (_K7788577903_ _rest77913_ _hd77911_)))
              (_else7788377897_)))))
    (define gx#stx-e
      (lambda (_stx77877_)
        (if (##structure-direct-instance-of? _stx77877_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx77877_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx77877_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx77877_ '1 gx#AST::t '#f)
                _stx77877_))))
    (define gx#stx-source
      (lambda (_stx77875_)
        (if (##structure-instance-of? _stx77875_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx77875_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx77869_ _src77870_)
        (if (or (##structure-instance-of? _stx77869_ 'gerbil#AST::t)
                (not _src77870_))
            _stx77869_
            (##structure gx#AST::t _stx77869_ _src77870_))))
    (define gx#stx-datum?
      (lambda (_stx77867_) (gx#self-quoting? (gx#stx-e _stx77867_))))
    (define gx#self-quoting?
      (lambda (_x77850_)
        (let ((_$e77852_ (immediate? _x77850_)))
          (if _$e77852_
              _$e77852_
              (let ((_$e77855_ (number? _x77850_)))
                (if _$e77855_
                    _$e77855_
                    (let ((_$e77858_ (keyword? _x77850_)))
                      (if _$e77858_
                          _$e77858_
                          (let ((_$e77861_ (string? _x77850_)))
                            (if _$e77861_
                                _$e77861_
                                (let ((_$e77864_ (vector? _x77850_)))
                                  (if _$e77864_
                                      _$e77864_
                                      (u8vector? _x77850_)))))))))))))
    (define gx#stx-boolean? (lambda (_e77848_) (boolean? (gx#stx-e _e77848_))))
    (define gx#stx-keyword? (lambda (_e77846_) (keyword? (gx#stx-e _e77846_))))
    (define gx#stx-char? (lambda (_e77844_) (char? (gx#stx-e _e77844_))))
    (define gx#stx-number? (lambda (_e77842_) (number? (gx#stx-e _e77842_))))
    (define gx#stx-fixnum? (lambda (_e77840_) (fixnum? (gx#stx-e _e77840_))))
    (define gx#stx-string? (lambda (_e77838_) (string? (gx#stx-e _e77838_))))
    (define gx#stx-null? (lambda (_e77836_) (null? (gx#stx-e _e77836_))))
    (define gx#stx-pair? (lambda (_e77834_) (pair? (gx#stx-e _e77834_))))
    (define gx#stx-list?
      (lambda (_e77796_)
        (let* ((_g7779777806_ (gx#stx-e _e77796_))
               (_E7780077810_
                (lambda () (error '"No clause matching" _g7779777806_))))
          (let ((_K7780277826_
                 (lambda (_rest77824_) (gx#stx-list? _rest77824_)))
                (_K7780177816_ (lambda (_tail77814_) (null? _tail77814_))))
            (if (##pair? _g7779777806_)
                (let* ((_tl7780477829_ (##cdr _g7779777806_))
                       (_rest77832_ _tl7780477829_))
                  (gx#stx-list? _rest77832_))
                (let ((_tail77819_ _g7779777806_)) (null? _tail77819_)))))))
    (define gx#stx-pair/null?
      (lambda (_e77789_)
        (let* ((_e77791_ (gx#stx-e _e77789_)) (_$e77793_ (pair? _e77791_)))
          (if _$e77793_ _$e77793_ (null? _e77791_)))))
    (define gx#stx-vector? (lambda (_e77787_) (vector? (gx#stx-e _e77787_))))
    (define gx#stx-box? (lambda (_e77785_) (box? (gx#stx-e _e77785_))))
    (define gx#stx-eq?
      (lambda (_x77782_ _y77783_)
        (eq? (gx#stx-e _x77782_) (gx#stx-e _y77783_))))
    (define gx#stx-eqv?
      (lambda (_x77779_ _y77780_)
        (eqv? (gx#stx-e _x77779_) (gx#stx-e _y77780_))))
    (define gx#stx-equal?
      (lambda (_x77776_ _y77777_)
        (equal? (gx#stx-e _x77776_) (gx#stx-e _y77777_))))
    (define gx#stx-false? (lambda (_x77774_) (not (gx#stx-e _x77774_))))
    (define gx#stx-identifier
      (lambda (_template77771_ . _args77772_)
        (gx#datum->syntax__1
         _template77771_
         (apply make-symbol (gx#syntax->datum _args77772_))
         (gx#stx-source _template77771_))))
    (define gx#stx-identifier-marks
      (lambda (_stx77769_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx77769_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx77767_)
        (if (##structure-direct-instance-of? _stx77767_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx77767_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx77767_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx77767_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx77767_)))))
    (define gx#stx-identifier-context
      (lambda (_stx77763_)
        (let ((_stx77765_ (gx#stx-unwrap__0 _stx77763_)))
          (if (gx#identifier-quote? _stx77765_)
              (##unchecked-structure-ref _stx77765_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx77718_)
        (let* ((_g7771977729_ (gx#stx-e _stx77718_))
               (_else7772277737_ (lambda () '#f)))
          (let ((_K7772577751_
                 (lambda (_rest77748_ _hd77749_)
                   (if (gx#identifier? _hd77749_)
                       (gx#identifier-list? _rest77748_)
                       '#f)))
                (_K7772477742_ (lambda () '#t)))
            (let ((_try-match7772177745_
                   (lambda ()
                     (if (##null? _g7771977729_)
                         (_K7772477742_)
                         (_else7772277737_)))))
              (if (##pair? _g7771977729_)
                  (let ((_tl7772777756_ (##cdr _g7771977729_))
                        (_hd7772677754_ (##car _g7771977729_)))
                    (let ((_hd77759_ _hd7772677754_)
                          (_rest77761_ _tl7772777756_))
                      (_K7772577751_ _rest77761_ _hd77759_)))
                  (_try-match7772177745_)))))))
    (define gx#genident__%
      (lambda (_e77695_ _src77696_)
        (gx#stx-wrap-source
         (gensym (let ((_e77698_ (gx#stx-e _e77695_)))
                   (if (interned-symbol? _e77698_) _e77698_ 'g)))
         (let ((_$e77700_ (gx#stx-source _e77695_)))
           (if _$e77700_ _$e77700_ _src77696_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e77707_ 'g) (_src77709_ '#f))
          (gx#genident__% _e77707_ _src77709_))))
    (define gx#genident__1
      (lambda (_e77711_)
        (let ((_src77713_ '#f)) (gx#genident__% _e77711_ _src77713_))))
    (define gx#genident
      (lambda _g78130_
        (let ((_g78129_ (##length _g78130_)))
          (cond ((##fx= _g78129_ 0)
                 (apply (lambda () (gx#genident__0)) _g78130_))
                ((##fx= _g78129_ 1)
                 (apply (lambda (_e77711_) (gx#genident__1 _e77711_))
                        _g78130_))
                ((##fx= _g78129_ 2)
                 (apply (lambda (_e77715_ _src77716_)
                          (gx#genident__% _e77715_ _src77716_))
                        _g78130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g78130_))))))
    (define gx#gentemps
      (lambda (_stx-lst77692_) (gx#stx-map1 gx#genident _stx-lst77692_)))
    (define gx#syntax->list
      (lambda (_stx77690_) (gx#stx-map1 values _stx77690_)))
    (define gx#stx-car
      (lambda (_stx77687_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx77687_)))))
    (define gx#stx-cdr
      (lambda (_stx77684_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx77684_)))))
    (define gx#stx-length
      (lambda (_stx77649_)
        (let _lp77651_ ((_rest77653_ _stx77649_) (_n77654_ '0))
          (let* ((_g7765577663_ (gx#stx-e _rest77653_))
                 (_else7765777671_ (lambda () _n77654_))
                 (_K7765977676_
                  (lambda (_rest77674_)
                    (_lp77651_ _rest77674_ (fx+ _n77654_ '1)))))
            (if (##pair? _g7765577663_)
                (let* ((_tl7766177679_ (##cdr _g7765577663_))
                       (_rest77682_ _tl7766177679_))
                  (_K7765977676_ _rest77682_))
                (_else7765777671_))))))
    (define gx#stx-for-each
      (lambda _g78132_
        (let ((_g78131_ (##length _g78132_)))
          (cond ((##fx= _g78131_ 2)
                 (apply (lambda (_f77642_ _stx77643_)
                          (gx#stx-for-each1 _f77642_ _stx77643_))
                        _g78132_))
                ((##fx= _g78131_ 3)
                 (apply (lambda (_f77645_ _xstx77646_ _ystx77647_)
                          (gx#stx-for-each2 _f77645_ _xstx77646_ _ystx77647_))
                        _g78132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g78132_))))))
    (define gx#stx-for-each1
      (lambda (_f77592_ _stx77593_)
        (if (procedure? _f77592_)
            '#!void
            (error '"expected procedure" _f77592_))
        (let _lp77595_ ((_rest77597_ _stx77593_))
          (let* ((_g7759877608_ (gx#syntax-e _rest77597_))
                 (_else7760177616_ (lambda () (_f77592_ _rest77597_))))
            (let ((_K7760477630_
                   (lambda (_rest77627_ _hd77628_)
                     (_f77592_ _hd77628_)
                     (_lp77595_ _rest77627_)))
                  (_K7760377621_ (lambda () '#!void)))
              (let ((_try-match7760077624_
                     (lambda ()
                       (if (##null? _g7759877608_)
                           (_K7760377621_)
                           (_else7760177616_)))))
                (if (##pair? _g7759877608_)
                    (let ((_tl7760677635_ (##cdr _g7759877608_))
                          (_hd7760577633_ (##car _g7759877608_)))
                      (let ((_hd77638_ _hd7760577633_)
                            (_rest77640_ _tl7760677635_))
                        (_K7760477630_ _rest77640_ _hd77638_)))
                    (_try-match7760077624_))))))))
    (define gx#stx-for-each2
      (lambda (_f77497_ _xstx77498_ _ystx77499_)
        (if (procedure? _f77497_)
            '#!void
            (error '"expected procedure" _f77497_))
        (let _lp77501_ ((_xrest77503_ _xstx77498_) (_yrest77504_ _ystx77499_))
          (let* ((_g7750577515_ (gx#syntax-e _xrest77503_))
                 (_else7750877523_ (lambda () '#!void)))
            (let ((_K7751177580_
                   (lambda (_xrest77549_ _xhd77550_)
                     (let* ((_g7755177558_ (gx#syntax-e _yrest77504_))
                            (_E7755377562_
                             (lambda ()
                               (error '"No clause matching" _g7755177558_)))
                            (_K7755477568_
                             (lambda (_yrest77565_ _yhd77566_)
                               (_f77497_ _xhd77550_ _yhd77566_)
                               (_lp77501_ _xrest77549_ _yrest77565_))))
                       (if (##pair? _g7755177558_)
                           (let ((_hd7755577571_ (##car _g7755177558_))
                                 (_tl7755677573_ (##cdr _g7755177558_)))
                             (let* ((_yhd77576_ _hd7755577571_)
                                    (_yrest77578_ _tl7755677573_))
                               (_K7755477568_ _yrest77578_ _yhd77576_)))
                           (_E7755377562_)))))
                  (_K7751077543_
                   (lambda ()
                     (let* ((_yrest7752777532_ _yrest77504_)
                            (_E7752977536_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7752777532_)))
                            (_K7753077540_
                             (lambda () (_f77497_ _xrest77503_ _yrest77504_))))
                       (if (not (gx#stx-null? _yrest7752777532_))
                           (_K7753077540_)
                           (_E7752977536_))))))
              (let ((_try-match7750777546_
                     (lambda ()
                       (if (not (null? _g7750577515_))
                           (_K7751077543_)
                           (_else7750877523_)))))
                (if (##pair? _g7750577515_)
                    (let ((_tl7751377585_ (##cdr _g7750577515_))
                          (_hd7751277583_ (##car _g7750577515_)))
                      (let ((_xhd77588_ _hd7751277583_)
                            (_xrest77590_ _tl7751377585_))
                        (_K7751177580_ _xrest77590_ _xhd77588_)))
                    (_try-match7750777546_))))))))
    (define gx#stx-map
      (lambda _g78134_
        (let ((_g78133_ (##length _g78134_)))
          (cond ((##fx= _g78133_ 2)
                 (apply (lambda (_f77490_ _stx77491_)
                          (gx#stx-map1 _f77490_ _stx77491_))
                        _g78134_))
                ((##fx= _g78133_ 3)
                 (apply (lambda (_f77493_ _xstx77494_ _ystx77495_)
                          (gx#stx-map2 _f77493_ _xstx77494_ _ystx77495_))
                        _g78134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g78134_))))))
    (define gx#stx-map1
      (lambda (_f77440_ _stx77441_)
        (if (procedure? _f77440_)
            '#!void
            (error '"expected procedure" _f77440_))
        (let _recur77443_ ((_rest77445_ _stx77441_))
          (let* ((_g7744677456_ (gx#syntax-e _rest77445_))
                 (_else7744977464_ (lambda () (_f77440_ _rest77445_))))
            (let ((_K7745277478_
                   (lambda (_rest77475_ _hd77476_)
                     (cons (_f77440_ _hd77476_) (_recur77443_ _rest77475_))))
                  (_K7745177469_ (lambda () '())))
              (let ((_try-match7744877472_
                     (lambda ()
                       (if (##null? _g7744677456_)
                           (_K7745177469_)
                           (_else7744977464_)))))
                (if (##pair? _g7744677456_)
                    (let ((_tl7745477483_ (##cdr _g7744677456_))
                          (_hd7745377481_ (##car _g7744677456_)))
                      (let ((_hd77486_ _hd7745377481_)
                            (_rest77488_ _tl7745477483_))
                        (_K7745277478_ _rest77488_ _hd77486_)))
                    (_try-match7744877472_))))))))
    (define gx#stx-map2
      (lambda (_f77345_ _xstx77346_ _ystx77347_)
        (if (procedure? _f77345_)
            '#!void
            (error '"expected procedure" _f77345_))
        (let _recur77349_ ((_xrest77351_ _xstx77346_)
                           (_yrest77352_ _ystx77347_))
          (let* ((_g7735377363_ (gx#syntax-e _xrest77351_))
                 (_else7735677371_ (lambda () '())))
            (let ((_K7735977428_
                   (lambda (_xrest77397_ _xhd77398_)
                     (let* ((_g7739977406_ (gx#syntax-e _yrest77352_))
                            (_E7740177410_
                             (lambda ()
                               (error '"No clause matching" _g7739977406_)))
                            (_K7740277416_
                             (lambda (_yrest77413_ _yhd77414_)
                               (cons (_f77345_ _xhd77398_ _yhd77414_)
                                     (_recur77349_
                                      _xrest77397_
                                      _yrest77413_)))))
                       (if (##pair? _g7739977406_)
                           (let ((_hd7740377419_ (##car _g7739977406_))
                                 (_tl7740477421_ (##cdr _g7739977406_)))
                             (let* ((_yhd77424_ _hd7740377419_)
                                    (_yrest77426_ _tl7740477421_))
                               (_K7740277416_ _yrest77426_ _yhd77424_)))
                           (_E7740177410_)))))
                  (_K7735877391_
                   (lambda ()
                     (let* ((_yrest7737577380_ _yrest77352_)
                            (_E7737777384_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest7737577380_)))
                            (_K7737877388_
                             (lambda () (_f77345_ _xrest77351_ _yrest77352_))))
                       (if (not (gx#stx-null? _yrest7737577380_))
                           (_K7737877388_)
                           (_E7737777384_))))))
              (let ((_try-match7735577394_
                     (lambda ()
                       (if (not (null? _g7735377363_))
                           (_K7735877391_)
                           (_else7735677371_)))))
                (if (##pair? _g7735377363_)
                    (let ((_tl7736177433_ (##cdr _g7735377363_))
                          (_hd7736077431_ (##car _g7735377363_)))
                      (let ((_xhd77436_ _hd7736077431_)
                            (_xrest77438_ _tl7736177433_))
                        (_K7735977428_ _xrest77438_ _xhd77436_)))
                    (_try-match7735577394_))))))))
    (define gx#stx-andmap
      (lambda (_f77295_ _stx77296_)
        (if (procedure? _f77295_)
            '#!void
            (error '"expected procedure" _f77295_))
        (let _lp77298_ ((_rest77300_ _stx77296_))
          (let* ((_g7730177311_ (gx#syntax-e _rest77300_))
                 (_else7730477319_ (lambda () (_f77295_ _rest77300_))))
            (let ((_K7730777333_
                   (lambda (_rest77330_ _hd77331_)
                     (if (_f77295_ _hd77331_) (_lp77298_ _rest77330_) '#f)))
                  (_K7730677324_ (lambda () '#t)))
              (let ((_try-match7730377327_
                     (lambda ()
                       (if (##null? _g7730177311_)
                           (_K7730677324_)
                           (_else7730477319_)))))
                (if (##pair? _g7730177311_)
                    (let ((_tl7730977338_ (##cdr _g7730177311_))
                          (_hd7730877336_ (##car _g7730177311_)))
                      (let ((_hd77341_ _hd7730877336_)
                            (_rest77343_ _tl7730977338_))
                        (_K7730777333_ _rest77343_ _hd77341_)))
                    (_try-match7730377327_))))))))
    (define gx#stx-ormap
      (lambda (_f77242_ _stx77243_)
        (if (procedure? _f77242_)
            '#!void
            (error '"expected procedure" _f77242_))
        (let _lp77245_ ((_rest77247_ _stx77243_))
          (let* ((_g7724877258_ (gx#syntax-e _rest77247_))
                 (_else7725177266_ (lambda () (_f77242_ _rest77247_))))
            (let ((_K7725477283_
                   (lambda (_rest77277_ _hd77278_)
                     (let ((_$e77280_ (_f77242_ _hd77278_)))
                       (if _$e77280_ _$e77280_ (_lp77245_ _rest77277_)))))
                  (_K7725377271_ (lambda () '#f)))
              (let ((_try-match7725077274_
                     (lambda ()
                       (if (##null? _g7724877258_)
                           (_K7725377271_)
                           (_else7725177266_)))))
                (if (##pair? _g7724877258_)
                    (let ((_tl7725677288_ (##cdr _g7724877258_))
                          (_hd7725577286_ (##car _g7724877258_)))
                      (let ((_hd77291_ _hd7725577286_)
                            (_rest77293_ _tl7725677288_))
                        (_K7725477283_ _rest77293_ _hd77291_)))
                    (_try-match7725077274_))))))))
    (define gx#stx-foldl
      (lambda (_f77190_ _iv77191_ _stx77192_)
        (if (procedure? _f77190_)
            '#!void
            (error '"expected procedure" _f77190_))
        (let _lp77194_ ((_r77196_ _iv77191_) (_rest77197_ _stx77192_))
          (let* ((_g7719877208_ (gx#syntax-e _rest77197_))
                 (_else7720177216_
                  (lambda () (_f77190_ _rest77197_ _r77196_))))
            (let ((_K7720477230_
                   (lambda (_rest77227_ _hd77228_)
                     (_lp77194_ (_f77190_ _hd77228_ _r77196_) _rest77227_)))
                  (_K7720377221_ (lambda () _r77196_)))
              (let ((_try-match7720077224_
                     (lambda ()
                       (if (##null? _g7719877208_)
                           (_K7720377221_)
                           (_else7720177216_)))))
                (if (##pair? _g7719877208_)
                    (let ((_tl7720677235_ (##cdr _g7719877208_))
                          (_hd7720577233_ (##car _g7719877208_)))
                      (let ((_hd77238_ _hd7720577233_)
                            (_rest77240_ _tl7720677235_))
                        (_K7720477230_ _rest77240_ _hd77238_)))
                    (_try-match7720077224_))))))))
    (define gx#stx-foldr
      (lambda (_f77139_ _iv77140_ _stx77141_)
        (if (procedure? _f77139_)
            '#!void
            (error '"expected procedure" _f77139_))
        (let _recur77143_ ((_rest77145_ _stx77141_))
          (let* ((_g7714677156_ (gx#syntax-e _rest77145_))
                 (_else7714977164_
                  (lambda () (_f77139_ _rest77145_ _iv77140_))))
            (let ((_K7715277178_
                   (lambda (_rest77175_ _hd77176_)
                     (_f77139_ _hd77176_ (_recur77143_ _rest77175_))))
                  (_K7715177169_ (lambda () _iv77140_)))
              (let ((_try-match7714877172_
                     (lambda ()
                       (if (##null? _g7714677156_)
                           (_K7715177169_)
                           (_else7714977164_)))))
                (if (##pair? _g7714677156_)
                    (let ((_tl7715477183_ (##cdr _g7714677156_))
                          (_hd7715377181_ (##car _g7714677156_)))
                      (let ((_hd77186_ _hd7715377181_)
                            (_rest77188_ _tl7715477183_))
                        (_K7715277178_ _rest77188_ _hd77186_)))
                    (_try-match7714877172_))))))))
    (define gx#stx-reverse
      (lambda (_stx77137_) (gx#stx-foldl cons '() _stx77137_)))
    (define gx#stx-last
      (lambda (_stx77098_)
        (let _lp77100_ ((_rest77102_ _stx77098_))
          (let* ((_g7710377111_ (gx#syntax-e _rest77102_))
                 (_else7710577119_ (lambda () _rest77102_))
                 (_K7710777125_
                  (lambda (_rest77122_ _hd77123_)
                    (if (gx#stx-null? _rest77122_)
                        _hd77123_
                        (_lp77100_ _rest77122_)))))
            (if (##pair? _g7710377111_)
                (let ((_hd7710877128_ (##car _g7710377111_))
                      (_tl7710977130_ (##cdr _g7710377111_)))
                  (let* ((_hd77133_ _hd7710877128_)
                         (_rest77135_ _tl7710977130_))
                    (_K7710777125_ _rest77135_ _hd77133_)))
                (_else7710577119_))))))
    (define gx#stx-last-pair
      (lambda (_stx77069_)
        (let _lp77071_ ((_hd77073_ _stx77069_))
          (let* ((_g7707477081_ (gx#syntax-e _hd77073_))
                 (_E7707677085_
                  (lambda () (error '"No clause matching" _g7707477081_)))
                 (_K7707777090_
                  (lambda (_rest77088_)
                    (if (gx#stx-pair? _rest77088_)
                        (_lp77071_ _rest77088_)
                        _hd77073_))))
            (if (##pair? _g7707477081_)
                (let* ((_tl7707977093_ (##cdr _g7707477081_))
                       (_rest77096_ _tl7707977093_))
                  (_K7707777090_ _rest77096_))
                (_E7707677085_))))))
    (define gx#stx-list-tail
      (lambda (_stx77038_ _k77039_)
        (let _lp77041_ ((_rest77043_ _stx77038_) (_k77044_ _k77039_))
          (if (fxpositive? _k77044_)
              (let* ((_g7704577052_ (gx#syntax-e _rest77043_))
                     (_E7704777056_
                      (lambda () (error '"No clause matching" _g7704577052_)))
                     (_K7704877061_
                      (lambda (_rest77059_)
                        (_lp77041_ _rest77059_ (fx- _k77044_ '1)))))
                (if (##pair? _g7704577052_)
                    (let* ((_tl7705077064_ (##cdr _g7704577052_))
                           (_rest77067_ _tl7705077064_))
                      (_K7704877061_ _rest77067_))
                    (_E7704777056_)))
              _rest77043_))))
    (define gx#stx-list-ref
      (lambda (_stx77035_ _k77036_)
        (gx#stx-car (gx#stx-list-tail _stx77035_ _k77036_))))
    (define gx#stx-plist?__%
      (lambda (_stx76947_ _key?76948_)
        (if (procedure? _key?76948_)
            '#!void
            (error '"expected procedure" _key?76948_))
        (let _lp76950_ ((_rest76952_ _stx76947_))
          (let* ((_g7695376963_ (gx#stx-e _rest76952_))
                 (_else7695676971_ (lambda () '#f)))
            (let ((_K7695977013_
                   (lambda (_rest76982_ _hd76983_)
                     (if (_key?76948_ _hd76983_)
                         (let* ((_g7698476992_ (gx#stx-e _rest76982_))
                                (_else7698677000_ (lambda () '#f))
                                (_K7698877005_
                                 (lambda (_rest77003_)
                                   (_lp76950_ _rest77003_))))
                           (if (##pair? _g7698476992_)
                               (let* ((_tl7699077008_ (##cdr _g7698476992_))
                                      (_rest77011_ _tl7699077008_))
                                 (_lp76950_ _rest77011_))
                               (_else7698677000_)))
                         '#f)))
                  (_K7695876976_ (lambda () '#t)))
              (let ((_try-match7695576979_
                     (lambda ()
                       (if (##null? _g7695376963_)
                           (_K7695876976_)
                           (_else7695676971_)))))
                (if (##pair? _g7695376963_)
                    (let ((_tl7696177018_ (##cdr _g7695376963_))
                          (_hd7696077016_ (##car _g7695376963_)))
                      (let ((_hd77021_ _hd7696077016_)
                            (_rest77023_ _tl7696177018_))
                        (_K7695977013_ _rest77023_ _hd77021_)))
                    (_try-match7695576979_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx77028_)
        (let ((_key?77030_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx77028_ _key?77030_))))
    (define gx#stx-plist?
      (lambda _g78136_
        (let ((_g78135_ (##length _g78136_)))
          (cond ((##fx= _g78135_ 1)
                 (apply (lambda (_stx77028_) (gx#stx-plist?__0 _stx77028_))
                        _g78136_))
                ((##fx= _g78135_ 2)
                 (apply (lambda (_stx77032_ _key?77033_)
                          (gx#stx-plist?__% _stx77032_ _key?77033_))
                        _g78136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g78136_))))))
    (define gx#stx-getq__%
      (lambda (_key76865_ _stx76866_ _key=?76867_)
        (if (procedure? _key=?76867_)
            '#!void
            (error '"expected procedure" _key=?76867_))
        (let _lp76869_ ((_rest76871_ _stx76866_))
          (let* ((_g7687276880_ (gx#syntax-e _rest76871_))
                 (_else7687476888_ (lambda () '#f))
                 (_K7687676922_
                  (lambda (_rest76891_ _hd76892_)
                    (let* ((_g7689376900_ (gx#syntax-e _rest76891_))
                           (_E7689576904_
                            (lambda ()
                              (error '"No clause matching" _g7689376900_)))
                           (_K7689676910_
                            (lambda (_rest76907_ _val76908_)
                              (if (_key=?76867_ _hd76892_ _key76865_)
                                  _val76908_
                                  (_lp76869_ _rest76907_)))))
                      (if (##pair? _g7689376900_)
                          (let ((_hd7689776913_ (##car _g7689376900_))
                                (_tl7689876915_ (##cdr _g7689376900_)))
                            (let* ((_val76918_ _hd7689776913_)
                                   (_rest76920_ _tl7689876915_))
                              (_K7689676910_ _rest76920_ _val76918_)))
                          (_E7689576904_))))))
            (if (##pair? _g7687276880_)
                (let ((_hd7687776925_ (##car _g7687276880_))
                      (_tl7687876927_ (##cdr _g7687276880_)))
                  (let* ((_hd76930_ _hd7687776925_)
                         (_rest76932_ _tl7687876927_))
                    (_K7687676922_ _rest76932_ _hd76930_)))
                (_else7687476888_))))))
    (define gx#stx-getq__0
      (lambda (_key76937_ _stx76938_)
        (let ((_key=?76940_ gx#stx-eq?))
          (gx#stx-getq__% _key76937_ _stx76938_ _key=?76940_))))
    (define gx#stx-getq
      (lambda _g78138_
        (let ((_g78137_ (##length _g78138_)))
          (cond ((##fx= _g78137_ 2)
                 (apply (lambda (_key76937_ _stx76938_)
                          (gx#stx-getq__0 _key76937_ _stx76938_))
                        _g78138_))
                ((##fx= _g78137_ 3)
                 (apply (lambda (_key76942_ _stx76943_ _key=?76944_)
                          (gx#stx-getq__% _key76942_ _stx76943_ _key=?76944_))
                        _g78138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g78138_))))))))
