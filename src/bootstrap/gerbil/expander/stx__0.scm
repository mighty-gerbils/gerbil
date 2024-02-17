(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708168069)
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
      (lambda _$args145037_
        (apply make-instance gx#identifier-wrap::t _$args145037_)))
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
      (lambda _$args145034_
        (apply make-instance gx#syntax-wrap::t _$args145034_)))
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
      (lambda _$args145031_
        (apply make-instance gx#syntax-quote::t _$args145031_)))
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
      (lambda (_stx145029_) (symbol? (gx#stx-e _stx145029_))))
    (define gx#identifier-quote?
      (lambda (_stx145027_)
        (if (##structure-direct-instance-of? _stx145027_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx145027_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx145025_)
        (if (##structure-direct-instance-of? _stx145025_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx145025_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx145025_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx145023_)
        (if (##structure-direct-instance-of? _stx145023_ 'gx#syntax-quote::t)
            _stx145023_
            (if (##structure-direct-instance-of?
                 _stx145023_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx145023_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx145006_)
        (if (##structure-direct-instance-of? _stx145006_ 'gx#syntax-wrap::t)
            (let _lp145008_ ((_e145010_
                              (##unchecked-structure-ref
                               _stx145006_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks145011_
                              (cons (##unchecked-structure-ref
                                     _stx145006_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e145010_)
                  (let ((_$e145013_ (##type-id (##structure-type _e145010_))))
                    (if (eq? 'gx#syntax-wrap::t _$e145013_)
                        (_lp145008_
                         (##unchecked-structure-ref _e145010_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e145010_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks145011_))
                        (if (or (eq? 'gx#syntax-quote::t _$e145013_)
                                (eq? 'gx#identifier-wrap::t _$e145013_))
                            (##unchecked-structure-ref
                             _e145010_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e145013_)
                                (_lp145008_
                                 (##unchecked-structure-ref
                                  _e145010_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks145011_)
                                _e145010_))))
                  (if (null? _marks145011_)
                      _e145010_
                      (if (pair? _e145010_)
                          (cons (gx#stx-wrap (car _e145010_) _marks145011_)
                                (gx#stx-wrap (cdr _e145010_) _marks145011_))
                          (if (vector? _e145010_)
                              (vector-map
                               (lambda (_g145018145020_)
                                 (gx#stx-wrap _g145018145020_ _marks145011_))
                               _e145010_)
                              (if (box? _e145010_)
                                  (box (gx#stx-wrap
                                        (unbox _e145010_)
                                        _marks145011_))
                                  _e145010_))))))
            (if (##structure-instance-of? _stx145006_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx145006_ '1 gx#AST::t '#f)
                _stx145006_))))
    (define gx#syntax->datum
      (lambda (_stx145004_)
        (if (##structure-instance-of? _stx145004_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx145004_ '1 gx#AST::t '#f))
            (if (pair? _stx145004_)
                (cons (gx#syntax->datum (car _stx145004_))
                      (gx#syntax->datum (cdr _stx145004_)))
                (if (vector? _stx145004_)
                    (vector-map gx#syntax->datum _stx145004_)
                    (if (box? _stx145004_)
                        (box (gx#syntax->datum (unbox _stx145004_)))
                        _stx145004_))))))
    (define gx#datum->syntax__%
      (lambda (_stx144947_ _datum144948_ _src144949_ _quote?144950_)
        (letrec ((_wrap-datum144952_
                  (lambda (_e144976_ _marks144977_)
                    (_wrap-inner144954_
                     _e144976_
                     (lambda (_g144978144980_)
                       (##structure
                        gx#identifier-wrap::t
                        _g144978144980_
                        _src144949_
                        _marks144977_)))))
                 (_wrap-quote144953_
                  (lambda (_e144968_ _ctx144969_ _marks144970_)
                    (_wrap-inner144954_
                     _e144968_
                     (lambda (_g144971144973_)
                       (##structure
                        gx#syntax-quote::t
                        _g144971144973_
                        _src144949_
                        _ctx144969_
                        _marks144970_)))))
                 (_wrap-inner144954_
                  (lambda (_e144961_ _wrap-e144962_)
                    (let _recur144964_ ((_e144966_ _e144961_))
                      (if (symbol? _e144966_)
                          (_wrap-e144962_ _e144966_)
                          (if (pair? _e144966_)
                              (cons (_recur144964_ (car _e144966_))
                                    (_recur144964_ (cdr _e144966_)))
                              (if (vector? _e144966_)
                                  (vector-map _recur144964_ _e144966_)
                                  (if (box? _e144966_)
                                      (box (_recur144964_ (unbox _e144966_)))
                                      _e144966_)))))))
                 (_wrap-outer144955_
                  (lambda (_e144959_)
                    (if (##structure-instance-of? _e144959_ 'gerbil#AST::t)
                        _e144959_
                        (##structure gx#AST::t _e144959_ _src144949_)))))
          (if (##structure-instance-of? _datum144948_ 'gerbil#AST::t)
              _datum144948_
              (if (not _stx144947_)
                  (##structure gx#AST::t _datum144948_ _src144949_)
                  (if (gx#identifier? _stx144947_)
                      (let ((_stx144957_ (gx#stx-unwrap__0 _stx144947_)))
                        (_wrap-outer144955_
                         (if (##structure-direct-instance-of?
                              _stx144957_
                              'gx#syntax-quote::t)
                             (if _quote?144950_
                                 (_wrap-quote144953_
                                  _datum144948_
                                  (##unchecked-structure-ref
                                   _stx144957_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx144957_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum144952_
                                  _datum144948_
                                  (##unchecked-structure-ref
                                   _stx144957_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum144952_
                              _datum144948_
                              (##unchecked-structure-ref
                               _stx144957_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx144947_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx144986_ _datum144987_)
        (let* ((_src144989_ '#f) (_quote?144991_ '#t))
          (gx#datum->syntax__%
           _stx144986_
           _datum144987_
           _src144989_
           _quote?144991_))))
    (define gx#datum->syntax__1
      (lambda (_stx144993_ _datum144994_ _src144995_)
        (let ((_quote?144997_ '#t))
          (gx#datum->syntax__%
           _stx144993_
           _datum144994_
           _src144995_
           _quote?144997_))))
    (define gx#datum->syntax
      (lambda _g149686_
        (let ((_g149685_ (##length _g149686_)))
          (cond ((##fx= _g149685_ 2)
                 (apply (lambda (_stx144986_ _datum144987_)
                          (gx#datum->syntax__0 _stx144986_ _datum144987_))
                        _g149686_))
                ((##fx= _g149685_ 3)
                 (apply (lambda (_stx144993_ _datum144994_ _src144995_)
                          (gx#datum->syntax__1
                           _stx144993_
                           _datum144994_
                           _src144995_))
                        _g149686_))
                ((##fx= _g149685_ 4)
                 (apply (lambda (_stx144999_
                                 _datum145000_
                                 _src145001_
                                 _quote?145002_)
                          (gx#datum->syntax__%
                           _stx144999_
                           _datum145000_
                           _src145001_
                           _quote?145002_))
                        _g149686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g149686_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx144923_ _marks144924_)
        (let _lp144926_ ((_e144928_ _stx144923_)
                         (_marks144929_ _marks144924_)
                         (_src144930_ (gx#stx-source _stx144923_)))
          (if (##structure-direct-instance-of? _e144928_ 'gx#syntax-wrap::t)
              (_lp144926_
               (##unchecked-structure-ref _e144928_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e144928_ '3 gx#syntax-wrap::t '#f)
                _marks144929_)
               (##unchecked-structure-ref _e144928_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e144928_
                   'gx#identifier-wrap::t)
                  (if (null? _marks144929_)
                      _e144928_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e144928_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e144928_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e144928_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks144929_)))
                  (if (##structure-direct-instance-of?
                       _e144928_
                       'gx#syntax-quote::t)
                      _e144928_
                      (if (##structure-instance-of? _e144928_ 'gerbil#AST::t)
                          (_lp144926_
                           (##unchecked-structure-ref
                            _e144928_
                            '1
                            gx#AST::t
                            '#f)
                           _marks144929_
                           (##unchecked-structure-ref
                            _e144928_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e144928_)
                              (##structure
                               gx#identifier-wrap::t
                               _e144928_
                               _src144930_
                               (reverse _marks144929_))
                              (if (null? _marks144929_)
                                  _e144928_
                                  (if (pair? _e144928_)
                                      (cons (gx#stx-wrap
                                             (car _e144928_)
                                             _marks144929_)
                                            (gx#stx-wrap
                                             (cdr _e144928_)
                                             _marks144929_))
                                      (if (vector? _e144928_)
                                          (vector-map
                                           (lambda (_g144931144933_)
                                             (gx#stx-wrap
                                              _g144931144933_
                                              _marks144929_))
                                           _e144928_)
                                          (if (box? _e144928_)
                                              (box (gx#stx-wrap
                                                    (unbox _e144928_)
                                                    _marks144929_))
                                              _e144928_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx144939_)
        (let ((_marks144941_ '()))
          (gx#stx-unwrap__% _stx144939_ _marks144941_))))
    (define gx#stx-unwrap
      (lambda _g149688_
        (let ((_g149687_ (##length _g149688_)))
          (cond ((##fx= _g149687_ 1)
                 (apply (lambda (_stx144939_) (gx#stx-unwrap__0 _stx144939_))
                        _g149688_))
                ((##fx= _g149687_ 2)
                 (apply (lambda (_stx144943_ _marks144944_)
                          (gx#stx-unwrap__% _stx144943_ _marks144944_))
                        _g149688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g149688_))))))
    (define gx#stx-wrap
      (lambda (_stx144916_ _marks144917_)
        (foldl1 (lambda (_mark144919_ _stx144920_)
                  (gx#stx-apply-mark _stx144920_ _mark144919_))
                _stx144916_
                _marks144917_)))
    (define gx#stx-rewrap
      (lambda (_stx144910_ _marks144911_)
        (foldr1 (lambda (_mark144913_ _stx144914_)
                  (gx#stx-apply-mark _stx144914_ _mark144913_))
                _stx144910_
                _marks144911_)))
    (define gx#stx-apply-mark
      (lambda (_stx144907_ _mark144908_)
        (if (##structure-direct-instance-of? _stx144907_ 'gx#syntax-quote::t)
            _stx144907_
            (if (and (##structure-direct-instance-of?
                      _stx144907_
                      'gx#syntax-wrap::t)
                     (eq? _mark144908_
                          (##unchecked-structure-ref
                           _stx144907_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx144907_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx144907_
                 (gx#stx-source _stx144907_)
                 _mark144908_)))))
    (define gx#apply-mark
      (lambda (_mark144871_ _marks144872_)
        (let* ((_marks144873144881_ _marks144872_)
               (_else144875144889_
                (lambda () (cons _mark144871_ _marks144872_)))
               (_K144877144895_
                (lambda (_rest144892_ _hd144893_)
                  (if (eq? _mark144871_ _hd144893_)
                      _rest144892_
                      (cons _mark144871_ _marks144872_)))))
          (if (##pair? _marks144873144881_)
              (let ((_hd144878144898_ (##car _marks144873144881_))
                    (_tl144879144900_ (##cdr _marks144873144881_)))
                (let* ((_hd144903_ _hd144878144898_)
                       (_rest144905_ _tl144879144900_))
                  (_K144877144895_ _rest144905_ _hd144903_)))
              (_else144875144889_)))))
    (define gx#stx-e
      (lambda (_stx144869_)
        (if (##structure-direct-instance-of? _stx144869_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx144869_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx144869_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx144869_ '1 gx#AST::t '#f)
                _stx144869_))))
    (define gx#stx-source
      (lambda (_stx144867_)
        (if (##structure-instance-of? _stx144867_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx144867_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx144861_ _src144862_)
        (if (or (##structure-instance-of? _stx144861_ 'gerbil#AST::t)
                (not _src144862_))
            _stx144861_
            (##structure gx#AST::t _stx144861_ _src144862_))))
    (define gx#stx-datum?
      (lambda (_stx144859_) (gx#self-quoting? (gx#stx-e _stx144859_))))
    (define gx#self-quoting?
      (lambda (_x144842_)
        (let ((_$e144844_ (immediate? _x144842_)))
          (if _$e144844_
              _$e144844_
              (let ((_$e144847_ (number? _x144842_)))
                (if _$e144847_
                    _$e144847_
                    (let ((_$e144850_ (keyword? _x144842_)))
                      (if _$e144850_
                          _$e144850_
                          (let ((_$e144853_ (string? _x144842_)))
                            (if _$e144853_
                                _$e144853_
                                (let ((_$e144856_ (vector? _x144842_)))
                                  (if _$e144856_
                                      _$e144856_
                                      (u8vector? _x144842_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e144840_) (boolean? (gx#stx-e _e144840_))))
    (define gx#stx-keyword?
      (lambda (_e144838_) (keyword? (gx#stx-e _e144838_))))
    (define gx#stx-char? (lambda (_e144836_) (char? (gx#stx-e _e144836_))))
    (define gx#stx-number? (lambda (_e144834_) (number? (gx#stx-e _e144834_))))
    (define gx#stx-fixnum? (lambda (_e144832_) (fixnum? (gx#stx-e _e144832_))))
    (define gx#stx-string? (lambda (_e144830_) (string? (gx#stx-e _e144830_))))
    (define gx#stx-null? (lambda (_e144828_) (null? (gx#stx-e _e144828_))))
    (define gx#stx-pair? (lambda (_e144826_) (pair? (gx#stx-e _e144826_))))
    (define gx#stx-list?
      (lambda (_e144788_)
        (let* ((_g144789144798_ (gx#stx-e _e144788_))
               (_E144792144802_
                (lambda () (error '"No clause matching" _g144789144798_))))
          (let ((_K144794144818_
                 (lambda (_rest144816_) (gx#stx-list? _rest144816_)))
                (_K144793144808_ (lambda (_tail144806_) (null? _tail144806_))))
            (if (##pair? _g144789144798_)
                (let* ((_tl144796144821_ (##cdr _g144789144798_))
                       (_rest144824_ _tl144796144821_))
                  (gx#stx-list? _rest144824_))
                (let ((_tail144811_ _g144789144798_))
                  (null? _tail144811_)))))))
    (define gx#stx-pair/null?
      (lambda (_e144781_)
        (let* ((_e144783_ (gx#stx-e _e144781_)) (_$e144785_ (pair? _e144783_)))
          (if _$e144785_ _$e144785_ (null? _e144783_)))))
    (define gx#stx-vector? (lambda (_e144779_) (vector? (gx#stx-e _e144779_))))
    (define gx#stx-box? (lambda (_e144777_) (box? (gx#stx-e _e144777_))))
    (define gx#stx-eq?
      (lambda (_x144774_ _y144775_)
        (eq? (gx#stx-e _x144774_) (gx#stx-e _y144775_))))
    (define gx#stx-eqv?
      (lambda (_x144771_ _y144772_)
        (eqv? (gx#stx-e _x144771_) (gx#stx-e _y144772_))))
    (define gx#stx-equal?
      (lambda (_x144768_ _y144769_)
        (equal? (gx#stx-e _x144768_) (gx#stx-e _y144769_))))
    (define gx#stx-false? (lambda (_x144766_) (not (gx#stx-e _x144766_))))
    (define gx#stx-identifier
      (lambda (_template144763_ . _args144764_)
        (gx#datum->syntax__1
         _template144763_
         (apply make-symbol (gx#syntax->datum _args144764_))
         (gx#stx-source _template144763_))))
    (define gx#stx-identifier-marks
      (lambda (_stx144761_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx144761_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx144759_)
        (if (##structure-direct-instance-of?
             _stx144759_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx144759_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx144759_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx144759_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx144759_)))))
    (define gx#stx-identifier-context
      (lambda (_stx144755_)
        (let ((_stx144757_ (gx#stx-unwrap__0 _stx144755_)))
          (if (gx#identifier-quote? _stx144757_)
              (##unchecked-structure-ref _stx144757_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx144710_)
        (let* ((_g144711144721_ (gx#stx-e _stx144710_))
               (_else144714144729_ (lambda () '#f)))
          (let ((_K144717144743_
                 (lambda (_rest144740_ _hd144741_)
                   (if (gx#identifier? _hd144741_)
                       (gx#identifier-list? _rest144740_)
                       '#f)))
                (_K144716144734_ (lambda () '#t)))
            (let ((_try-match144713144737_
                   (lambda ()
                     (if (##null? _g144711144721_)
                         (_K144716144734_)
                         (_else144714144729_)))))
              (if (##pair? _g144711144721_)
                  (let ((_tl144719144748_ (##cdr _g144711144721_))
                        (_hd144718144746_ (##car _g144711144721_)))
                    (let ((_hd144751_ _hd144718144746_)
                          (_rest144753_ _tl144719144748_))
                      (_K144717144743_ _rest144753_ _hd144751_)))
                  (_try-match144713144737_)))))))
    (define gx#genident__%
      (lambda (_e144687_ _src144688_)
        (gx#stx-wrap-source
         (gensym (let ((_e144690_ (gx#stx-e _e144687_)))
                   (if (interned-symbol? _e144690_) _e144690_ 'g)))
         (let ((_$e144692_ (gx#stx-source _e144687_)))
           (if _$e144692_ _$e144692_ _src144688_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e144699_ 'g) (_src144701_ '#f))
          (gx#genident__% _e144699_ _src144701_))))
    (define gx#genident__1
      (lambda (_e144703_)
        (let ((_src144705_ '#f)) (gx#genident__% _e144703_ _src144705_))))
    (define gx#genident
      (lambda _g149690_
        (let ((_g149689_ (##length _g149690_)))
          (cond ((##fx= _g149689_ 0)
                 (apply (lambda () (gx#genident__0)) _g149690_))
                ((##fx= _g149689_ 1)
                 (apply (lambda (_e144703_) (gx#genident__1 _e144703_))
                        _g149690_))
                ((##fx= _g149689_ 2)
                 (apply (lambda (_e144707_ _src144708_)
                          (gx#genident__% _e144707_ _src144708_))
                        _g149690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g149690_))))))
    (define gx#gentemps
      (lambda (_stx-lst144684_) (gx#stx-map1 gx#genident _stx-lst144684_)))
    (define gx#syntax->list
      (lambda (_stx144682_) (gx#stx-map1 values _stx144682_)))
    (define gx#stx-car
      (lambda (_stx144679_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx144679_)))))
    (define gx#stx-cdr
      (lambda (_stx144676_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx144676_)))))
    (define gx#stx-length
      (lambda (_stx144641_)
        (let _lp144643_ ((_rest144645_ _stx144641_) (_n144646_ '0))
          (let* ((_g144647144655_ (gx#stx-e _rest144645_))
                 (_else144649144663_ (lambda () _n144646_))
                 (_K144651144668_
                  (lambda (_rest144666_)
                    (_lp144643_ _rest144666_ (fx+ _n144646_ '1)))))
            (if (##pair? _g144647144655_)
                (let* ((_tl144653144671_ (##cdr _g144647144655_))
                       (_rest144674_ _tl144653144671_))
                  (_K144651144668_ _rest144674_))
                (_else144649144663_))))))
    (define gx#stx-for-each
      (lambda _g149692_
        (let ((_g149691_ (##length _g149692_)))
          (cond ((##fx= _g149691_ 2)
                 (apply (lambda (_f144634_ _stx144635_)
                          (gx#stx-for-each1 _f144634_ _stx144635_))
                        _g149692_))
                ((##fx= _g149691_ 3)
                 (apply (lambda (_f144637_ _xstx144638_ _ystx144639_)
                          (gx#stx-for-each2
                           _f144637_
                           _xstx144638_
                           _ystx144639_))
                        _g149692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g149692_))))))
    (define gx#stx-for-each1
      (lambda (_f144584_ _stx144585_)
        (if (procedure? _f144584_)
            '#!void
            (error '"expected procedure" _f144584_))
        (let _lp144587_ ((_rest144589_ _stx144585_))
          (let* ((_g144590144600_ (gx#syntax-e _rest144589_))
                 (_else144593144608_ (lambda () (_f144584_ _rest144589_))))
            (let ((_K144596144622_
                   (lambda (_rest144619_ _hd144620_)
                     (_f144584_ _hd144620_)
                     (_lp144587_ _rest144619_)))
                  (_K144595144613_ (lambda () '#!void)))
              (let ((_try-match144592144616_
                     (lambda ()
                       (if (##null? _g144590144600_)
                           (_K144595144613_)
                           (_else144593144608_)))))
                (if (##pair? _g144590144600_)
                    (let ((_tl144598144627_ (##cdr _g144590144600_))
                          (_hd144597144625_ (##car _g144590144600_)))
                      (let ((_hd144630_ _hd144597144625_)
                            (_rest144632_ _tl144598144627_))
                        (_K144596144622_ _rest144632_ _hd144630_)))
                    (_try-match144592144616_))))))))
    (define gx#stx-for-each2
      (lambda (_f144489_ _xstx144490_ _ystx144491_)
        (if (procedure? _f144489_)
            '#!void
            (error '"expected procedure" _f144489_))
        (let _lp144493_ ((_xrest144495_ _xstx144490_)
                         (_yrest144496_ _ystx144491_))
          (let* ((_g144497144507_ (gx#syntax-e _xrest144495_))
                 (_else144500144515_ (lambda () '#!void)))
            (let ((_K144503144572_
                   (lambda (_xrest144541_ _xhd144542_)
                     (let* ((_g144543144550_ (gx#syntax-e _yrest144496_))
                            (_E144545144554_
                             (lambda ()
                               (error '"No clause matching" _g144543144550_)))
                            (_K144546144560_
                             (lambda (_yrest144557_ _yhd144558_)
                               (_f144489_ _xhd144542_ _yhd144558_)
                               (_lp144493_ _xrest144541_ _yrest144557_))))
                       (if (##pair? _g144543144550_)
                           (let ((_hd144547144563_ (##car _g144543144550_))
                                 (_tl144548144565_ (##cdr _g144543144550_)))
                             (let* ((_yhd144568_ _hd144547144563_)
                                    (_yrest144570_ _tl144548144565_))
                               (_K144546144560_ _yrest144570_ _yhd144568_)))
                           (_E144545144554_)))))
                  (_K144502144535_
                   (lambda ()
                     (let* ((_yrest144519144524_ _yrest144496_)
                            (_E144521144528_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest144519144524_)))
                            (_K144522144532_
                             (lambda ()
                               (_f144489_ _xrest144495_ _yrest144496_))))
                       (if (not (gx#stx-null? _yrest144519144524_))
                           (_K144522144532_)
                           (_E144521144528_))))))
              (let ((_try-match144499144538_
                     (lambda ()
                       (if (not (null? _g144497144507_))
                           (_K144502144535_)
                           (_else144500144515_)))))
                (if (##pair? _g144497144507_)
                    (let ((_tl144505144577_ (##cdr _g144497144507_))
                          (_hd144504144575_ (##car _g144497144507_)))
                      (let ((_xhd144580_ _hd144504144575_)
                            (_xrest144582_ _tl144505144577_))
                        (_K144503144572_ _xrest144582_ _xhd144580_)))
                    (_try-match144499144538_))))))))
    (define gx#stx-map
      (lambda _g149694_
        (let ((_g149693_ (##length _g149694_)))
          (cond ((##fx= _g149693_ 2)
                 (apply (lambda (_f144482_ _stx144483_)
                          (gx#stx-map1 _f144482_ _stx144483_))
                        _g149694_))
                ((##fx= _g149693_ 3)
                 (apply (lambda (_f144485_ _xstx144486_ _ystx144487_)
                          (gx#stx-map2 _f144485_ _xstx144486_ _ystx144487_))
                        _g149694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g149694_))))))
    (define gx#stx-map1
      (lambda (_f144432_ _stx144433_)
        (if (procedure? _f144432_)
            '#!void
            (error '"expected procedure" _f144432_))
        (let _recur144435_ ((_rest144437_ _stx144433_))
          (let* ((_g144438144448_ (gx#syntax-e _rest144437_))
                 (_else144441144456_ (lambda () (_f144432_ _rest144437_))))
            (let ((_K144444144470_
                   (lambda (_rest144467_ _hd144468_)
                     (cons (_f144432_ _hd144468_)
                           (_recur144435_ _rest144467_))))
                  (_K144443144461_ (lambda () '())))
              (let ((_try-match144440144464_
                     (lambda ()
                       (if (##null? _g144438144448_)
                           (_K144443144461_)
                           (_else144441144456_)))))
                (if (##pair? _g144438144448_)
                    (let ((_tl144446144475_ (##cdr _g144438144448_))
                          (_hd144445144473_ (##car _g144438144448_)))
                      (let ((_hd144478_ _hd144445144473_)
                            (_rest144480_ _tl144446144475_))
                        (_K144444144470_ _rest144480_ _hd144478_)))
                    (_try-match144440144464_))))))))
    (define gx#stx-map2
      (lambda (_f144337_ _xstx144338_ _ystx144339_)
        (if (procedure? _f144337_)
            '#!void
            (error '"expected procedure" _f144337_))
        (let _recur144341_ ((_xrest144343_ _xstx144338_)
                            (_yrest144344_ _ystx144339_))
          (let* ((_g144345144355_ (gx#syntax-e _xrest144343_))
                 (_else144348144363_ (lambda () '())))
            (let ((_K144351144420_
                   (lambda (_xrest144389_ _xhd144390_)
                     (let* ((_g144391144398_ (gx#syntax-e _yrest144344_))
                            (_E144393144402_
                             (lambda ()
                               (error '"No clause matching" _g144391144398_)))
                            (_K144394144408_
                             (lambda (_yrest144405_ _yhd144406_)
                               (cons (_f144337_ _xhd144390_ _yhd144406_)
                                     (_recur144341_
                                      _xrest144389_
                                      _yrest144405_)))))
                       (if (##pair? _g144391144398_)
                           (let ((_hd144395144411_ (##car _g144391144398_))
                                 (_tl144396144413_ (##cdr _g144391144398_)))
                             (let* ((_yhd144416_ _hd144395144411_)
                                    (_yrest144418_ _tl144396144413_))
                               (_K144394144408_ _yrest144418_ _yhd144416_)))
                           (_E144393144402_)))))
                  (_K144350144383_
                   (lambda ()
                     (let* ((_yrest144367144372_ _yrest144344_)
                            (_E144369144376_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest144367144372_)))
                            (_K144370144380_
                             (lambda ()
                               (_f144337_ _xrest144343_ _yrest144344_))))
                       (if (not (gx#stx-null? _yrest144367144372_))
                           (_K144370144380_)
                           (_E144369144376_))))))
              (let ((_try-match144347144386_
                     (lambda ()
                       (if (not (null? _g144345144355_))
                           (_K144350144383_)
                           (_else144348144363_)))))
                (if (##pair? _g144345144355_)
                    (let ((_tl144353144425_ (##cdr _g144345144355_))
                          (_hd144352144423_ (##car _g144345144355_)))
                      (let ((_xhd144428_ _hd144352144423_)
                            (_xrest144430_ _tl144353144425_))
                        (_K144351144420_ _xrest144430_ _xhd144428_)))
                    (_try-match144347144386_))))))))
    (define gx#stx-andmap
      (lambda (_f144287_ _stx144288_)
        (if (procedure? _f144287_)
            '#!void
            (error '"expected procedure" _f144287_))
        (let _lp144290_ ((_rest144292_ _stx144288_))
          (let* ((_g144293144303_ (gx#syntax-e _rest144292_))
                 (_else144296144311_ (lambda () (_f144287_ _rest144292_))))
            (let ((_K144299144325_
                   (lambda (_rest144322_ _hd144323_)
                     (if (_f144287_ _hd144323_)
                         (_lp144290_ _rest144322_)
                         '#f)))
                  (_K144298144316_ (lambda () '#t)))
              (let ((_try-match144295144319_
                     (lambda ()
                       (if (##null? _g144293144303_)
                           (_K144298144316_)
                           (_else144296144311_)))))
                (if (##pair? _g144293144303_)
                    (let ((_tl144301144330_ (##cdr _g144293144303_))
                          (_hd144300144328_ (##car _g144293144303_)))
                      (let ((_hd144333_ _hd144300144328_)
                            (_rest144335_ _tl144301144330_))
                        (_K144299144325_ _rest144335_ _hd144333_)))
                    (_try-match144295144319_))))))))
    (define gx#stx-ormap
      (lambda (_f144234_ _stx144235_)
        (if (procedure? _f144234_)
            '#!void
            (error '"expected procedure" _f144234_))
        (let _lp144237_ ((_rest144239_ _stx144235_))
          (let* ((_g144240144250_ (gx#syntax-e _rest144239_))
                 (_else144243144258_ (lambda () (_f144234_ _rest144239_))))
            (let ((_K144246144275_
                   (lambda (_rest144269_ _hd144270_)
                     (let ((_$e144272_ (_f144234_ _hd144270_)))
                       (if _$e144272_ _$e144272_ (_lp144237_ _rest144269_)))))
                  (_K144245144263_ (lambda () '#f)))
              (let ((_try-match144242144266_
                     (lambda ()
                       (if (##null? _g144240144250_)
                           (_K144245144263_)
                           (_else144243144258_)))))
                (if (##pair? _g144240144250_)
                    (let ((_tl144248144280_ (##cdr _g144240144250_))
                          (_hd144247144278_ (##car _g144240144250_)))
                      (let ((_hd144283_ _hd144247144278_)
                            (_rest144285_ _tl144248144280_))
                        (_K144246144275_ _rest144285_ _hd144283_)))
                    (_try-match144242144266_))))))))
    (define gx#stx-foldl
      (lambda (_f144182_ _iv144183_ _stx144184_)
        (if (procedure? _f144182_)
            '#!void
            (error '"expected procedure" _f144182_))
        (let _lp144186_ ((_r144188_ _iv144183_) (_rest144189_ _stx144184_))
          (let* ((_g144190144200_ (gx#syntax-e _rest144189_))
                 (_else144193144208_
                  (lambda () (_f144182_ _rest144189_ _r144188_))))
            (let ((_K144196144222_
                   (lambda (_rest144219_ _hd144220_)
                     (_lp144186_
                      (_f144182_ _hd144220_ _r144188_)
                      _rest144219_)))
                  (_K144195144213_ (lambda () _r144188_)))
              (let ((_try-match144192144216_
                     (lambda ()
                       (if (##null? _g144190144200_)
                           (_K144195144213_)
                           (_else144193144208_)))))
                (if (##pair? _g144190144200_)
                    (let ((_tl144198144227_ (##cdr _g144190144200_))
                          (_hd144197144225_ (##car _g144190144200_)))
                      (let ((_hd144230_ _hd144197144225_)
                            (_rest144232_ _tl144198144227_))
                        (_K144196144222_ _rest144232_ _hd144230_)))
                    (_try-match144192144216_))))))))
    (define gx#stx-foldr
      (lambda (_f144131_ _iv144132_ _stx144133_)
        (if (procedure? _f144131_)
            '#!void
            (error '"expected procedure" _f144131_))
        (let _recur144135_ ((_rest144137_ _stx144133_))
          (let* ((_g144138144148_ (gx#syntax-e _rest144137_))
                 (_else144141144156_
                  (lambda () (_f144131_ _rest144137_ _iv144132_))))
            (let ((_K144144144170_
                   (lambda (_rest144167_ _hd144168_)
                     (_f144131_ _hd144168_ (_recur144135_ _rest144167_))))
                  (_K144143144161_ (lambda () _iv144132_)))
              (let ((_try-match144140144164_
                     (lambda ()
                       (if (##null? _g144138144148_)
                           (_K144143144161_)
                           (_else144141144156_)))))
                (if (##pair? _g144138144148_)
                    (let ((_tl144146144175_ (##cdr _g144138144148_))
                          (_hd144145144173_ (##car _g144138144148_)))
                      (let ((_hd144178_ _hd144145144173_)
                            (_rest144180_ _tl144146144175_))
                        (_K144144144170_ _rest144180_ _hd144178_)))
                    (_try-match144140144164_))))))))
    (define gx#stx-reverse
      (lambda (_stx144129_) (gx#stx-foldl cons '() _stx144129_)))
    (define gx#stx-last
      (lambda (_stx144090_)
        (let _lp144092_ ((_rest144094_ _stx144090_))
          (let* ((_g144095144103_ (gx#syntax-e _rest144094_))
                 (_else144097144111_ (lambda () _rest144094_))
                 (_K144099144117_
                  (lambda (_rest144114_ _hd144115_)
                    (if (gx#stx-null? _rest144114_)
                        _hd144115_
                        (_lp144092_ _rest144114_)))))
            (if (##pair? _g144095144103_)
                (let ((_hd144100144120_ (##car _g144095144103_))
                      (_tl144101144122_ (##cdr _g144095144103_)))
                  (let* ((_hd144125_ _hd144100144120_)
                         (_rest144127_ _tl144101144122_))
                    (_K144099144117_ _rest144127_ _hd144125_)))
                (_else144097144111_))))))
    (define gx#stx-last-pair
      (lambda (_stx144061_)
        (let _lp144063_ ((_hd144065_ _stx144061_))
          (let* ((_g144066144073_ (gx#syntax-e _hd144065_))
                 (_E144068144077_
                  (lambda () (error '"No clause matching" _g144066144073_)))
                 (_K144069144082_
                  (lambda (_rest144080_)
                    (if (gx#stx-pair? _rest144080_)
                        (_lp144063_ _rest144080_)
                        _hd144065_))))
            (if (##pair? _g144066144073_)
                (let* ((_tl144071144085_ (##cdr _g144066144073_))
                       (_rest144088_ _tl144071144085_))
                  (_K144069144082_ _rest144088_))
                (_E144068144077_))))))
    (define gx#stx-list-tail
      (lambda (_stx144030_ _k144031_)
        (let _lp144033_ ((_rest144035_ _stx144030_) (_k144036_ _k144031_))
          (if (fxpositive? _k144036_)
              (let* ((_g144037144044_ (gx#syntax-e _rest144035_))
                     (_E144039144048_
                      (lambda ()
                        (error '"No clause matching" _g144037144044_)))
                     (_K144040144053_
                      (lambda (_rest144051_)
                        (_lp144033_ _rest144051_ (fx- _k144036_ '1)))))
                (if (##pair? _g144037144044_)
                    (let* ((_tl144042144056_ (##cdr _g144037144044_))
                           (_rest144059_ _tl144042144056_))
                      (_K144040144053_ _rest144059_))
                    (_E144039144048_)))
              _rest144035_))))
    (define gx#stx-list-ref
      (lambda (_stx144027_ _k144028_)
        (gx#stx-car (gx#stx-list-tail _stx144027_ _k144028_))))
    (define gx#stx-plist?__%
      (lambda (_stx143939_ _key?143940_)
        (if (procedure? _key?143940_)
            '#!void
            (error '"expected procedure" _key?143940_))
        (let _lp143942_ ((_rest143944_ _stx143939_))
          (let* ((_g143945143955_ (gx#stx-e _rest143944_))
                 (_else143948143963_ (lambda () '#f)))
            (let ((_K143951144005_
                   (lambda (_rest143974_ _hd143975_)
                     (if (_key?143940_ _hd143975_)
                         (let* ((_g143976143984_ (gx#stx-e _rest143974_))
                                (_else143978143992_ (lambda () '#f))
                                (_K143980143997_
                                 (lambda (_rest143995_)
                                   (_lp143942_ _rest143995_))))
                           (if (##pair? _g143976143984_)
                               (let* ((_tl143982144000_
                                       (##cdr _g143976143984_))
                                      (_rest144003_ _tl143982144000_))
                                 (_lp143942_ _rest144003_))
                               (_else143978143992_)))
                         '#f)))
                  (_K143950143968_ (lambda () '#t)))
              (let ((_try-match143947143971_
                     (lambda ()
                       (if (##null? _g143945143955_)
                           (_K143950143968_)
                           (_else143948143963_)))))
                (if (##pair? _g143945143955_)
                    (let ((_tl143953144010_ (##cdr _g143945143955_))
                          (_hd143952144008_ (##car _g143945143955_)))
                      (let ((_hd144013_ _hd143952144008_)
                            (_rest144015_ _tl143953144010_))
                        (_K143951144005_ _rest144015_ _hd144013_)))
                    (_try-match143947143971_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx144020_)
        (let ((_key?144022_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx144020_ _key?144022_))))
    (define gx#stx-plist?
      (lambda _g149696_
        (let ((_g149695_ (##length _g149696_)))
          (cond ((##fx= _g149695_ 1)
                 (apply (lambda (_stx144020_) (gx#stx-plist?__0 _stx144020_))
                        _g149696_))
                ((##fx= _g149695_ 2)
                 (apply (lambda (_stx144024_ _key?144025_)
                          (gx#stx-plist?__% _stx144024_ _key?144025_))
                        _g149696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g149696_))))))
    (define gx#stx-getq__%
      (lambda (_key143857_ _stx143858_ _key=?143859_)
        (if (procedure? _key=?143859_)
            '#!void
            (error '"expected procedure" _key=?143859_))
        (let _lp143861_ ((_rest143863_ _stx143858_))
          (let* ((_g143864143872_ (gx#syntax-e _rest143863_))
                 (_else143866143880_ (lambda () '#f))
                 (_K143868143914_
                  (lambda (_rest143883_ _hd143884_)
                    (let* ((_g143885143892_ (gx#syntax-e _rest143883_))
                           (_E143887143896_
                            (lambda ()
                              (error '"No clause matching" _g143885143892_)))
                           (_K143888143902_
                            (lambda (_rest143899_ _val143900_)
                              (if (_key=?143859_ _hd143884_ _key143857_)
                                  _val143900_
                                  (_lp143861_ _rest143899_)))))
                      (if (##pair? _g143885143892_)
                          (let ((_hd143889143905_ (##car _g143885143892_))
                                (_tl143890143907_ (##cdr _g143885143892_)))
                            (let* ((_val143910_ _hd143889143905_)
                                   (_rest143912_ _tl143890143907_))
                              (_K143888143902_ _rest143912_ _val143910_)))
                          (_E143887143896_))))))
            (if (##pair? _g143864143872_)
                (let ((_hd143869143917_ (##car _g143864143872_))
                      (_tl143870143919_ (##cdr _g143864143872_)))
                  (let* ((_hd143922_ _hd143869143917_)
                         (_rest143924_ _tl143870143919_))
                    (_K143868143914_ _rest143924_ _hd143922_)))
                (_else143866143880_))))))
    (define gx#stx-getq__0
      (lambda (_key143929_ _stx143930_)
        (let ((_key=?143932_ gx#stx-eq?))
          (gx#stx-getq__% _key143929_ _stx143930_ _key=?143932_))))
    (define gx#stx-getq
      (lambda _g149698_
        (let ((_g149697_ (##length _g149698_)))
          (cond ((##fx= _g149697_ 2)
                 (apply (lambda (_key143929_ _stx143930_)
                          (gx#stx-getq__0 _key143929_ _stx143930_))
                        _g149698_))
                ((##fx= _g149697_ 3)
                 (apply (lambda (_key143934_ _stx143935_ _key=?143936_)
                          (gx#stx-getq__%
                           _key143934_
                           _stx143935_
                           _key=?143936_))
                        _g149698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g149698_))))))))
