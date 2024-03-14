(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1710440199)
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
      (lambda _$args81075_
        (apply make-instance gx#identifier-wrap::t _$args81075_)))
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
      (lambda _$args81072_
        (apply make-instance gx#syntax-wrap::t _$args81072_)))
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
      (lambda _$args81069_
        (apply make-instance gx#syntax-quote::t _$args81069_)))
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
      (lambda (_stx81067_) (symbol? (gx#stx-e _stx81067_))))
    (define gx#identifier-quote?
      (lambda (_stx81065_)
        (if (##structure-direct-instance-of? _stx81065_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx81065_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx81063_)
        (if (##structure-direct-instance-of? _stx81063_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx81063_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx81063_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx81061_)
        (if (##structure-direct-instance-of? _stx81061_ 'gx#syntax-quote::t)
            _stx81061_
            (if (##structure-direct-instance-of? _stx81061_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx81061_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx81044_)
        (if (##structure-direct-instance-of? _stx81044_ 'gx#syntax-wrap::t)
            (let _lp81046_ ((_e81048_
                             (##unchecked-structure-ref
                              _stx81044_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks81049_
                             (cons (##unchecked-structure-ref
                                    _stx81044_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e81048_)
                  (let ((_$e81051_ (##type-id (##structure-type _e81048_))))
                    (if (eq? 'gx#syntax-wrap::t _$e81051_)
                        (_lp81046_
                         (##unchecked-structure-ref _e81048_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e81048_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks81049_))
                        (if (or (eq? 'gx#syntax-quote::t _$e81051_)
                                (eq? 'gx#identifier-wrap::t _$e81051_))
                            (##unchecked-structure-ref
                             _e81048_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e81051_)
                                (_lp81046_
                                 (##unchecked-structure-ref
                                  _e81048_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks81049_)
                                _e81048_))))
                  (if (null? _marks81049_)
                      _e81048_
                      (if (pair? _e81048_)
                          (cons (gx#stx-wrap (car _e81048_) _marks81049_)
                                (gx#stx-wrap (cdr _e81048_) _marks81049_))
                          (if (vector? _e81048_)
                              (vector-map
                               (lambda (_g8105681058_)
                                 (gx#stx-wrap _g8105681058_ _marks81049_))
                               _e81048_)
                              (if (box? _e81048_)
                                  (box (gx#stx-wrap
                                        (unbox _e81048_)
                                        _marks81049_))
                                  _e81048_))))))
            (if (##structure-instance-of? _stx81044_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx81044_ '1 gx#AST::t '#f)
                _stx81044_))))
    (define gx#syntax->datum
      (lambda (_stx81042_)
        (if (##structure-instance-of? _stx81042_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx81042_ '1 gx#AST::t '#f))
            (if (pair? _stx81042_)
                (cons (gx#syntax->datum (car _stx81042_))
                      (gx#syntax->datum (cdr _stx81042_)))
                (if (vector? _stx81042_)
                    (vector-map gx#syntax->datum _stx81042_)
                    (if (box? _stx81042_)
                        (box (gx#syntax->datum (unbox _stx81042_)))
                        _stx81042_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80985_ _datum80986_ _src80987_ _quote?80988_)
        (letrec ((_wrap-datum80990_
                  (lambda (_e81014_ _marks81015_)
                    (_wrap-inner80992_
                     _e81014_
                     (lambda (_g8101681018_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8101681018_
                        _src80987_
                        _marks81015_)))))
                 (_wrap-quote80991_
                  (lambda (_e81006_ _ctx81007_ _marks81008_)
                    (_wrap-inner80992_
                     _e81006_
                     (lambda (_g8100981011_)
                       (##structure
                        gx#syntax-quote::t
                        _g8100981011_
                        _src80987_
                        _ctx81007_
                        _marks81008_)))))
                 (_wrap-inner80992_
                  (lambda (_e80999_ _wrap-e81000_)
                    (let _recur81002_ ((_e81004_ _e80999_))
                      (if (symbol? _e81004_)
                          (_wrap-e81000_ _e81004_)
                          (if (pair? _e81004_)
                              (cons (_recur81002_ (car _e81004_))
                                    (_recur81002_ (cdr _e81004_)))
                              (if (vector? _e81004_)
                                  (vector-map _recur81002_ _e81004_)
                                  (if (box? _e81004_)
                                      (box (_recur81002_ (unbox _e81004_)))
                                      _e81004_)))))))
                 (_wrap-outer80993_
                  (lambda (_e80997_)
                    (if (##structure-instance-of? _e80997_ 'gerbil#AST::t)
                        _e80997_
                        (##structure gx#AST::t _e80997_ _src80987_)))))
          (if (##structure-instance-of? _datum80986_ 'gerbil#AST::t)
              _datum80986_
              (if (not _stx80985_)
                  (##structure gx#AST::t _datum80986_ _src80987_)
                  (if (gx#identifier? _stx80985_)
                      (let ((_stx80995_ (gx#stx-unwrap__0 _stx80985_)))
                        (_wrap-outer80993_
                         (if (##structure-direct-instance-of?
                              _stx80995_
                              'gx#syntax-quote::t)
                             (if _quote?80988_
                                 (_wrap-quote80991_
                                  _datum80986_
                                  (##unchecked-structure-ref
                                   _stx80995_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80995_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80990_
                                  _datum80986_
                                  (##unchecked-structure-ref
                                   _stx80995_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80990_
                              _datum80986_
                              (##unchecked-structure-ref
                               _stx80995_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80985_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx81024_ _datum81025_)
        (let* ((_src81027_ '#f) (_quote?81029_ '#t))
          (gx#datum->syntax__%
           _stx81024_
           _datum81025_
           _src81027_
           _quote?81029_))))
    (define gx#datum->syntax__1
      (lambda (_stx81031_ _datum81032_ _src81033_)
        (let ((_quote?81035_ '#t))
          (gx#datum->syntax__%
           _stx81031_
           _datum81032_
           _src81033_
           _quote?81035_))))
    (define gx#datum->syntax
      (lambda _g81156_
        (let ((_g81155_ (##length _g81156_)))
          (cond ((##fx= _g81155_ 2)
                 (apply (lambda (_stx81024_ _datum81025_)
                          (gx#datum->syntax__0 _stx81024_ _datum81025_))
                        _g81156_))
                ((##fx= _g81155_ 3)
                 (apply (lambda (_stx81031_ _datum81032_ _src81033_)
                          (gx#datum->syntax__1
                           _stx81031_
                           _datum81032_
                           _src81033_))
                        _g81156_))
                ((##fx= _g81155_ 4)
                 (apply (lambda (_stx81037_
                                 _datum81038_
                                 _src81039_
                                 _quote?81040_)
                          (gx#datum->syntax__%
                           _stx81037_
                           _datum81038_
                           _src81039_
                           _quote?81040_))
                        _g81156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g81156_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80961_ _marks80962_)
        (let _lp80964_ ((_e80966_ _stx80961_)
                        (_marks80967_ _marks80962_)
                        (_src80968_ (gx#stx-source _stx80961_)))
          (if (##structure-direct-instance-of? _e80966_ 'gx#syntax-wrap::t)
              (_lp80964_
               (##unchecked-structure-ref _e80966_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80966_ '3 gx#syntax-wrap::t '#f)
                _marks80967_)
               (##unchecked-structure-ref _e80966_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80966_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80967_)
                      _e80966_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80966_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80966_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80966_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80967_)))
                  (if (##structure-direct-instance-of?
                       _e80966_
                       'gx#syntax-quote::t)
                      _e80966_
                      (if (##structure-instance-of? _e80966_ 'gerbil#AST::t)
                          (_lp80964_
                           (##unchecked-structure-ref
                            _e80966_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80967_
                           (##unchecked-structure-ref
                            _e80966_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80966_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80966_
                               _src80968_
                               (reverse _marks80967_))
                              (if (null? _marks80967_)
                                  _e80966_
                                  (if (pair? _e80966_)
                                      (cons (gx#stx-wrap
                                             (car _e80966_)
                                             _marks80967_)
                                            (gx#stx-wrap
                                             (cdr _e80966_)
                                             _marks80967_))
                                      (if (vector? _e80966_)
                                          (vector-map
                                           (lambda (_g8096980971_)
                                             (gx#stx-wrap
                                              _g8096980971_
                                              _marks80967_))
                                           _e80966_)
                                          (if (box? _e80966_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80966_)
                                                    _marks80967_))
                                              _e80966_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80977_)
        (let ((_marks80979_ '())) (gx#stx-unwrap__% _stx80977_ _marks80979_))))
    (define gx#stx-unwrap
      (lambda _g81158_
        (let ((_g81157_ (##length _g81158_)))
          (cond ((##fx= _g81157_ 1)
                 (apply (lambda (_stx80977_) (gx#stx-unwrap__0 _stx80977_))
                        _g81158_))
                ((##fx= _g81157_ 2)
                 (apply (lambda (_stx80981_ _marks80982_)
                          (gx#stx-unwrap__% _stx80981_ _marks80982_))
                        _g81158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g81158_))))))
    (define gx#stx-wrap
      (lambda (_stx80954_ _marks80955_)
        (foldl1 (lambda (_mark80957_ _stx80958_)
                  (gx#stx-apply-mark _stx80958_ _mark80957_))
                _stx80954_
                _marks80955_)))
    (define gx#stx-rewrap
      (lambda (_stx80948_ _marks80949_)
        (foldr1 (lambda (_mark80951_ _stx80952_)
                  (gx#stx-apply-mark _stx80952_ _mark80951_))
                _stx80948_
                _marks80949_)))
    (define gx#stx-apply-mark
      (lambda (_stx80945_ _mark80946_)
        (if (##structure-direct-instance-of? _stx80945_ 'gx#syntax-quote::t)
            _stx80945_
            (if (and (##structure-direct-instance-of?
                      _stx80945_
                      'gx#syntax-wrap::t)
                     (eq? _mark80946_
                          (##unchecked-structure-ref
                           _stx80945_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80945_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80945_
                 (gx#stx-source _stx80945_)
                 _mark80946_)))))
    (define gx#apply-mark
      (lambda (_mark80909_ _marks80910_)
        (let* ((_marks8091180919_ _marks80910_)
               (_else8091380927_ (lambda () (cons _mark80909_ _marks80910_)))
               (_K8091580933_
                (lambda (_rest80930_ _hd80931_)
                  (if (eq? _mark80909_ _hd80931_)
                      _rest80930_
                      (cons _mark80909_ _marks80910_)))))
          (if (##pair? _marks8091180919_)
              (let ((_hd8091680936_ (##car _marks8091180919_))
                    (_tl8091780938_ (##cdr _marks8091180919_)))
                (let* ((_hd80941_ _hd8091680936_) (_rest80943_ _tl8091780938_))
                  (_K8091580933_ _rest80943_ _hd80941_)))
              (_else8091380927_)))))
    (define gx#stx-e
      (lambda (_stx80907_)
        (if (##structure-direct-instance-of? _stx80907_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80907_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80907_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80907_ '1 gx#AST::t '#f)
                _stx80907_))))
    (define gx#stx-source
      (lambda (_stx80905_)
        (if (##structure-instance-of? _stx80905_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80905_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80899_ _src80900_)
        (if (or (##structure-instance-of? _stx80899_ 'gerbil#AST::t)
                (not _src80900_))
            _stx80899_
            (##structure gx#AST::t _stx80899_ _src80900_))))
    (define gx#stx-datum?
      (lambda (_stx80897_) (gx#self-quoting? (gx#stx-e _stx80897_))))
    (define gx#self-quoting?
      (lambda (_x80880_)
        (let ((_$e80882_ (immediate? _x80880_)))
          (if _$e80882_
              _$e80882_
              (let ((_$e80885_ (number? _x80880_)))
                (if _$e80885_
                    _$e80885_
                    (let ((_$e80888_ (keyword? _x80880_)))
                      (if _$e80888_
                          _$e80888_
                          (let ((_$e80891_ (string? _x80880_)))
                            (if _$e80891_
                                _$e80891_
                                (let ((_$e80894_ (vector? _x80880_)))
                                  (if _$e80894_
                                      _$e80894_
                                      (u8vector? _x80880_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80878_) (boolean? (gx#stx-e _e80878_))))
    (define gx#stx-keyword? (lambda (_e80876_) (keyword? (gx#stx-e _e80876_))))
    (define gx#stx-char? (lambda (_e80874_) (char? (gx#stx-e _e80874_))))
    (define gx#stx-number? (lambda (_e80872_) (number? (gx#stx-e _e80872_))))
    (define gx#stx-fixnum? (lambda (_e80870_) (fixnum? (gx#stx-e _e80870_))))
    (define gx#stx-string? (lambda (_e80868_) (string? (gx#stx-e _e80868_))))
    (define gx#stx-null? (lambda (_e80866_) (null? (gx#stx-e _e80866_))))
    (define gx#stx-pair? (lambda (_e80864_) (pair? (gx#stx-e _e80864_))))
    (define gx#stx-list?
      (lambda (_e80826_)
        (let* ((_g8082780836_ (gx#stx-e _e80826_))
               (_E8083080840_
                (lambda () (error '"No clause matching" _g8082780836_))))
          (let ((_K8083280856_
                 (lambda (_rest80854_) (gx#stx-list? _rest80854_)))
                (_K8083180846_ (lambda (_tail80844_) (null? _tail80844_))))
            (if (##pair? _g8082780836_)
                (let* ((_tl8083480859_ (##cdr _g8082780836_))
                       (_rest80862_ _tl8083480859_))
                  (gx#stx-list? _rest80862_))
                (let ((_tail80849_ _g8082780836_)) (null? _tail80849_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80819_)
        (let* ((_e80821_ (gx#stx-e _e80819_)) (_$e80823_ (pair? _e80821_)))
          (if _$e80823_ _$e80823_ (null? _e80821_)))))
    (define gx#stx-vector? (lambda (_e80817_) (vector? (gx#stx-e _e80817_))))
    (define gx#stx-box? (lambda (_e80815_) (box? (gx#stx-e _e80815_))))
    (define gx#stx-eq?
      (lambda (_x80812_ _y80813_)
        (eq? (gx#stx-e _x80812_) (gx#stx-e _y80813_))))
    (define gx#stx-eqv?
      (lambda (_x80809_ _y80810_)
        (eqv? (gx#stx-e _x80809_) (gx#stx-e _y80810_))))
    (define gx#stx-equal?
      (lambda (_x80806_ _y80807_)
        (equal? (gx#stx-e _x80806_) (gx#stx-e _y80807_))))
    (define gx#stx-false? (lambda (_x80804_) (not (gx#stx-e _x80804_))))
    (define gx#stx-identifier
      (lambda (_template80801_ . _args80802_)
        (gx#datum->syntax__1
         _template80801_
         (apply make-symbol (gx#syntax->datum _args80802_))
         (gx#stx-source _template80801_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80799_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80799_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80797_)
        (if (##structure-direct-instance-of? _stx80797_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80797_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80797_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80797_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80797_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80793_)
        (let ((_stx80795_ (gx#stx-unwrap__0 _stx80793_)))
          (if (gx#identifier-quote? _stx80795_)
              (##unchecked-structure-ref _stx80795_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80748_)
        (let* ((_g8074980759_ (gx#stx-e _stx80748_))
               (_else8075280767_ (lambda () '#f)))
          (let ((_K8075580781_
                 (lambda (_rest80778_ _hd80779_)
                   (if (gx#identifier? _hd80779_)
                       (gx#identifier-list? _rest80778_)
                       '#f)))
                (_K8075480772_ (lambda () '#t)))
            (let ((_try-match8075180775_
                   (lambda ()
                     (if (##null? _g8074980759_)
                         (_K8075480772_)
                         (_else8075280767_)))))
              (if (##pair? _g8074980759_)
                  (let ((_tl8075780786_ (##cdr _g8074980759_))
                        (_hd8075680784_ (##car _g8074980759_)))
                    (let ((_hd80789_ _hd8075680784_)
                          (_rest80791_ _tl8075780786_))
                      (_K8075580781_ _rest80791_ _hd80789_)))
                  (_try-match8075180775_)))))))
    (define gx#genident__%
      (lambda (_e80725_ _src80726_)
        (gx#stx-wrap-source
         (gensym (let ((_e80728_ (gx#stx-e _e80725_)))
                   (if (interned-symbol? _e80728_) _e80728_ 'g)))
         (let ((_$e80730_ (gx#stx-source _e80725_)))
           (if _$e80730_ _$e80730_ _src80726_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80737_ 'g) (_src80739_ '#f))
          (gx#genident__% _e80737_ _src80739_))))
    (define gx#genident__1
      (lambda (_e80741_)
        (let ((_src80743_ '#f)) (gx#genident__% _e80741_ _src80743_))))
    (define gx#genident
      (lambda _g81160_
        (let ((_g81159_ (##length _g81160_)))
          (cond ((##fx= _g81159_ 0)
                 (apply (lambda () (gx#genident__0)) _g81160_))
                ((##fx= _g81159_ 1)
                 (apply (lambda (_e80741_) (gx#genident__1 _e80741_))
                        _g81160_))
                ((##fx= _g81159_ 2)
                 (apply (lambda (_e80745_ _src80746_)
                          (gx#genident__% _e80745_ _src80746_))
                        _g81160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g81160_))))))
    (define gx#gentemps
      (lambda (_stx-lst80722_) (gx#stx-map1 gx#genident _stx-lst80722_)))
    (define gx#syntax->list
      (lambda (_stx80720_) (gx#stx-map1 values _stx80720_)))
    (define gx#stx-car
      (lambda (_stx80717_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80717_)))))
    (define gx#stx-cdr
      (lambda (_stx80714_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80714_)))))
    (define gx#stx-length
      (lambda (_stx80679_)
        (let _lp80681_ ((_rest80683_ _stx80679_) (_n80684_ '0))
          (let* ((_g8068580693_ (gx#stx-e _rest80683_))
                 (_else8068780701_ (lambda () _n80684_))
                 (_K8068980706_
                  (lambda (_rest80704_)
                    (_lp80681_ _rest80704_ (fx+ _n80684_ '1)))))
            (if (##pair? _g8068580693_)
                (let* ((_tl8069180709_ (##cdr _g8068580693_))
                       (_rest80712_ _tl8069180709_))
                  (_K8068980706_ _rest80712_))
                (_else8068780701_))))))
    (define gx#stx-for-each
      (lambda _g81162_
        (let ((_g81161_ (##length _g81162_)))
          (cond ((##fx= _g81161_ 2)
                 (apply (lambda (_f80672_ _stx80673_)
                          (gx#stx-for-each1 _f80672_ _stx80673_))
                        _g81162_))
                ((##fx= _g81161_ 3)
                 (apply (lambda (_f80675_ _xstx80676_ _ystx80677_)
                          (gx#stx-for-each2 _f80675_ _xstx80676_ _ystx80677_))
                        _g81162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g81162_))))))
    (define gx#stx-for-each1
      (lambda (_f80622_ _stx80623_)
        (if (procedure? _f80622_)
            '#!void
            (error '"expected procedure" _f80622_))
        (let _lp80625_ ((_rest80627_ _stx80623_))
          (let* ((_g8062880638_ (gx#syntax-e _rest80627_))
                 (_else8063180646_ (lambda () (_f80622_ _rest80627_))))
            (let ((_K8063480660_
                   (lambda (_rest80657_ _hd80658_)
                     (_f80622_ _hd80658_)
                     (_lp80625_ _rest80657_)))
                  (_K8063380651_ (lambda () '#!void)))
              (let ((_try-match8063080654_
                     (lambda ()
                       (if (##null? _g8062880638_)
                           (_K8063380651_)
                           (_else8063180646_)))))
                (if (##pair? _g8062880638_)
                    (let ((_tl8063680665_ (##cdr _g8062880638_))
                          (_hd8063580663_ (##car _g8062880638_)))
                      (let ((_hd80668_ _hd8063580663_)
                            (_rest80670_ _tl8063680665_))
                        (_K8063480660_ _rest80670_ _hd80668_)))
                    (_try-match8063080654_))))))))
    (define gx#stx-for-each2
      (lambda (_f80527_ _xstx80528_ _ystx80529_)
        (if (procedure? _f80527_)
            '#!void
            (error '"expected procedure" _f80527_))
        (let _lp80531_ ((_xrest80533_ _xstx80528_) (_yrest80534_ _ystx80529_))
          (let* ((_g8053580545_ (gx#syntax-e _xrest80533_))
                 (_else8053880553_ (lambda () '#!void)))
            (let ((_K8054180610_
                   (lambda (_xrest80579_ _xhd80580_)
                     (let* ((_g8058180588_ (gx#syntax-e _yrest80534_))
                            (_E8058380592_
                             (lambda ()
                               (error '"No clause matching" _g8058180588_)))
                            (_K8058480598_
                             (lambda (_yrest80595_ _yhd80596_)
                               (_f80527_ _xhd80580_ _yhd80596_)
                               (_lp80531_ _xrest80579_ _yrest80595_))))
                       (if (##pair? _g8058180588_)
                           (let ((_hd8058580601_ (##car _g8058180588_))
                                 (_tl8058680603_ (##cdr _g8058180588_)))
                             (let* ((_yhd80606_ _hd8058580601_)
                                    (_yrest80608_ _tl8058680603_))
                               (_K8058480598_ _yrest80608_ _yhd80606_)))
                           (_E8058380592_)))))
                  (_K8054080573_
                   (lambda ()
                     (let* ((_yrest8055780562_ _yrest80534_)
                            (_E8055980566_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8055780562_)))
                            (_K8056080570_
                             (lambda () (_f80527_ _xrest80533_ _yrest80534_))))
                       (if (not (gx#stx-null? _yrest8055780562_))
                           (_K8056080570_)
                           (_E8055980566_))))))
              (let ((_try-match8053780576_
                     (lambda ()
                       (if (not (null? _g8053580545_))
                           (_K8054080573_)
                           (_else8053880553_)))))
                (if (##pair? _g8053580545_)
                    (let ((_tl8054380615_ (##cdr _g8053580545_))
                          (_hd8054280613_ (##car _g8053580545_)))
                      (let ((_xhd80618_ _hd8054280613_)
                            (_xrest80620_ _tl8054380615_))
                        (_K8054180610_ _xrest80620_ _xhd80618_)))
                    (_try-match8053780576_))))))))
    (define gx#stx-map
      (lambda _g81164_
        (let ((_g81163_ (##length _g81164_)))
          (cond ((##fx= _g81163_ 2)
                 (apply (lambda (_f80520_ _stx80521_)
                          (gx#stx-map1 _f80520_ _stx80521_))
                        _g81164_))
                ((##fx= _g81163_ 3)
                 (apply (lambda (_f80523_ _xstx80524_ _ystx80525_)
                          (gx#stx-map2 _f80523_ _xstx80524_ _ystx80525_))
                        _g81164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g81164_))))))
    (define gx#stx-map1
      (lambda (_f80470_ _stx80471_)
        (if (procedure? _f80470_)
            '#!void
            (error '"expected procedure" _f80470_))
        (let _recur80473_ ((_rest80475_ _stx80471_))
          (let* ((_g8047680486_ (gx#syntax-e _rest80475_))
                 (_else8047980494_ (lambda () (_f80470_ _rest80475_))))
            (let ((_K8048280508_
                   (lambda (_rest80505_ _hd80506_)
                     (cons (_f80470_ _hd80506_) (_recur80473_ _rest80505_))))
                  (_K8048180499_ (lambda () '())))
              (let ((_try-match8047880502_
                     (lambda ()
                       (if (##null? _g8047680486_)
                           (_K8048180499_)
                           (_else8047980494_)))))
                (if (##pair? _g8047680486_)
                    (let ((_tl8048480513_ (##cdr _g8047680486_))
                          (_hd8048380511_ (##car _g8047680486_)))
                      (let ((_hd80516_ _hd8048380511_)
                            (_rest80518_ _tl8048480513_))
                        (_K8048280508_ _rest80518_ _hd80516_)))
                    (_try-match8047880502_))))))))
    (define gx#stx-map2
      (lambda (_f80375_ _xstx80376_ _ystx80377_)
        (if (procedure? _f80375_)
            '#!void
            (error '"expected procedure" _f80375_))
        (let _recur80379_ ((_xrest80381_ _xstx80376_)
                           (_yrest80382_ _ystx80377_))
          (let* ((_g8038380393_ (gx#syntax-e _xrest80381_))
                 (_else8038680401_ (lambda () '())))
            (let ((_K8038980458_
                   (lambda (_xrest80427_ _xhd80428_)
                     (let* ((_g8042980436_ (gx#syntax-e _yrest80382_))
                            (_E8043180440_
                             (lambda ()
                               (error '"No clause matching" _g8042980436_)))
                            (_K8043280446_
                             (lambda (_yrest80443_ _yhd80444_)
                               (cons (_f80375_ _xhd80428_ _yhd80444_)
                                     (_recur80379_
                                      _xrest80427_
                                      _yrest80443_)))))
                       (if (##pair? _g8042980436_)
                           (let ((_hd8043380449_ (##car _g8042980436_))
                                 (_tl8043480451_ (##cdr _g8042980436_)))
                             (let* ((_yhd80454_ _hd8043380449_)
                                    (_yrest80456_ _tl8043480451_))
                               (_K8043280446_ _yrest80456_ _yhd80454_)))
                           (_E8043180440_)))))
                  (_K8038880421_
                   (lambda ()
                     (let* ((_yrest8040580410_ _yrest80382_)
                            (_E8040780414_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8040580410_)))
                            (_K8040880418_
                             (lambda () (_f80375_ _xrest80381_ _yrest80382_))))
                       (if (not (gx#stx-null? _yrest8040580410_))
                           (_K8040880418_)
                           (_E8040780414_))))))
              (let ((_try-match8038580424_
                     (lambda ()
                       (if (not (null? _g8038380393_))
                           (_K8038880421_)
                           (_else8038680401_)))))
                (if (##pair? _g8038380393_)
                    (let ((_tl8039180463_ (##cdr _g8038380393_))
                          (_hd8039080461_ (##car _g8038380393_)))
                      (let ((_xhd80466_ _hd8039080461_)
                            (_xrest80468_ _tl8039180463_))
                        (_K8038980458_ _xrest80468_ _xhd80466_)))
                    (_try-match8038580424_))))))))
    (define gx#stx-andmap
      (lambda (_f80325_ _stx80326_)
        (if (procedure? _f80325_)
            '#!void
            (error '"expected procedure" _f80325_))
        (let _lp80328_ ((_rest80330_ _stx80326_))
          (let* ((_g8033180341_ (gx#syntax-e _rest80330_))
                 (_else8033480349_ (lambda () (_f80325_ _rest80330_))))
            (let ((_K8033780363_
                   (lambda (_rest80360_ _hd80361_)
                     (if (_f80325_ _hd80361_) (_lp80328_ _rest80360_) '#f)))
                  (_K8033680354_ (lambda () '#t)))
              (let ((_try-match8033380357_
                     (lambda ()
                       (if (##null? _g8033180341_)
                           (_K8033680354_)
                           (_else8033480349_)))))
                (if (##pair? _g8033180341_)
                    (let ((_tl8033980368_ (##cdr _g8033180341_))
                          (_hd8033880366_ (##car _g8033180341_)))
                      (let ((_hd80371_ _hd8033880366_)
                            (_rest80373_ _tl8033980368_))
                        (_K8033780363_ _rest80373_ _hd80371_)))
                    (_try-match8033380357_))))))))
    (define gx#stx-ormap
      (lambda (_f80272_ _stx80273_)
        (if (procedure? _f80272_)
            '#!void
            (error '"expected procedure" _f80272_))
        (let _lp80275_ ((_rest80277_ _stx80273_))
          (let* ((_g8027880288_ (gx#syntax-e _rest80277_))
                 (_else8028180296_ (lambda () (_f80272_ _rest80277_))))
            (let ((_K8028480313_
                   (lambda (_rest80307_ _hd80308_)
                     (let ((_$e80310_ (_f80272_ _hd80308_)))
                       (if _$e80310_ _$e80310_ (_lp80275_ _rest80307_)))))
                  (_K8028380301_ (lambda () '#f)))
              (let ((_try-match8028080304_
                     (lambda ()
                       (if (##null? _g8027880288_)
                           (_K8028380301_)
                           (_else8028180296_)))))
                (if (##pair? _g8027880288_)
                    (let ((_tl8028680318_ (##cdr _g8027880288_))
                          (_hd8028580316_ (##car _g8027880288_)))
                      (let ((_hd80321_ _hd8028580316_)
                            (_rest80323_ _tl8028680318_))
                        (_K8028480313_ _rest80323_ _hd80321_)))
                    (_try-match8028080304_))))))))
    (define gx#stx-foldl
      (lambda (_f80220_ _iv80221_ _stx80222_)
        (if (procedure? _f80220_)
            '#!void
            (error '"expected procedure" _f80220_))
        (let _lp80224_ ((_r80226_ _iv80221_) (_rest80227_ _stx80222_))
          (let* ((_g8022880238_ (gx#syntax-e _rest80227_))
                 (_else8023180246_
                  (lambda () (_f80220_ _rest80227_ _r80226_))))
            (let ((_K8023480260_
                   (lambda (_rest80257_ _hd80258_)
                     (_lp80224_ (_f80220_ _hd80258_ _r80226_) _rest80257_)))
                  (_K8023380251_ (lambda () _r80226_)))
              (let ((_try-match8023080254_
                     (lambda ()
                       (if (##null? _g8022880238_)
                           (_K8023380251_)
                           (_else8023180246_)))))
                (if (##pair? _g8022880238_)
                    (let ((_tl8023680265_ (##cdr _g8022880238_))
                          (_hd8023580263_ (##car _g8022880238_)))
                      (let ((_hd80268_ _hd8023580263_)
                            (_rest80270_ _tl8023680265_))
                        (_K8023480260_ _rest80270_ _hd80268_)))
                    (_try-match8023080254_))))))))
    (define gx#stx-foldr
      (lambda (_f80169_ _iv80170_ _stx80171_)
        (if (procedure? _f80169_)
            '#!void
            (error '"expected procedure" _f80169_))
        (let _recur80173_ ((_rest80175_ _stx80171_))
          (let* ((_g8017680186_ (gx#syntax-e _rest80175_))
                 (_else8017980194_
                  (lambda () (_f80169_ _rest80175_ _iv80170_))))
            (let ((_K8018280208_
                   (lambda (_rest80205_ _hd80206_)
                     (_f80169_ _hd80206_ (_recur80173_ _rest80205_))))
                  (_K8018180199_ (lambda () _iv80170_)))
              (let ((_try-match8017880202_
                     (lambda ()
                       (if (##null? _g8017680186_)
                           (_K8018180199_)
                           (_else8017980194_)))))
                (if (##pair? _g8017680186_)
                    (let ((_tl8018480213_ (##cdr _g8017680186_))
                          (_hd8018380211_ (##car _g8017680186_)))
                      (let ((_hd80216_ _hd8018380211_)
                            (_rest80218_ _tl8018480213_))
                        (_K8018280208_ _rest80218_ _hd80216_)))
                    (_try-match8017880202_))))))))
    (define gx#stx-reverse
      (lambda (_stx80167_) (gx#stx-foldl cons '() _stx80167_)))
    (define gx#stx-last
      (lambda (_stx80128_)
        (let _lp80130_ ((_rest80132_ _stx80128_))
          (let* ((_g8013380141_ (gx#syntax-e _rest80132_))
                 (_else8013580149_ (lambda () _rest80132_))
                 (_K8013780155_
                  (lambda (_rest80152_ _hd80153_)
                    (if (gx#stx-null? _rest80152_)
                        _hd80153_
                        (_lp80130_ _rest80152_)))))
            (if (##pair? _g8013380141_)
                (let ((_hd8013880158_ (##car _g8013380141_))
                      (_tl8013980160_ (##cdr _g8013380141_)))
                  (let* ((_hd80163_ _hd8013880158_)
                         (_rest80165_ _tl8013980160_))
                    (_K8013780155_ _rest80165_ _hd80163_)))
                (_else8013580149_))))))
    (define gx#stx-last-pair
      (lambda (_stx80099_)
        (let _lp80101_ ((_hd80103_ _stx80099_))
          (let* ((_g8010480111_ (gx#syntax-e _hd80103_))
                 (_E8010680115_
                  (lambda () (error '"No clause matching" _g8010480111_)))
                 (_K8010780120_
                  (lambda (_rest80118_)
                    (if (gx#stx-pair? _rest80118_)
                        (_lp80101_ _rest80118_)
                        _hd80103_))))
            (if (##pair? _g8010480111_)
                (let* ((_tl8010980123_ (##cdr _g8010480111_))
                       (_rest80126_ _tl8010980123_))
                  (_K8010780120_ _rest80126_))
                (_E8010680115_))))))
    (define gx#stx-list-tail
      (lambda (_stx80068_ _k80069_)
        (let _lp80071_ ((_rest80073_ _stx80068_) (_k80074_ _k80069_))
          (if (fxpositive? _k80074_)
              (let* ((_g8007580082_ (gx#syntax-e _rest80073_))
                     (_E8007780086_
                      (lambda () (error '"No clause matching" _g8007580082_)))
                     (_K8007880091_
                      (lambda (_rest80089_)
                        (_lp80071_ _rest80089_ (fx- _k80074_ '1)))))
                (if (##pair? _g8007580082_)
                    (let* ((_tl8008080094_ (##cdr _g8007580082_))
                           (_rest80097_ _tl8008080094_))
                      (_K8007880091_ _rest80097_))
                    (_E8007780086_)))
              _rest80073_))))
    (define gx#stx-list-ref
      (lambda (_stx80065_ _k80066_)
        (gx#stx-car (gx#stx-list-tail _stx80065_ _k80066_))))
    (define gx#stx-plist?__%
      (lambda (_stx79977_ _key?79978_)
        (if (procedure? _key?79978_)
            '#!void
            (error '"expected procedure" _key?79978_))
        (let _lp79980_ ((_rest79982_ _stx79977_))
          (let* ((_g7998379993_ (gx#stx-e _rest79982_))
                 (_else7998680001_ (lambda () '#f)))
            (let ((_K7998980043_
                   (lambda (_rest80012_ _hd80013_)
                     (if (_key?79978_ _hd80013_)
                         (let* ((_g8001480022_ (gx#stx-e _rest80012_))
                                (_else8001680030_ (lambda () '#f))
                                (_K8001880035_
                                 (lambda (_rest80033_)
                                   (_lp79980_ _rest80033_))))
                           (if (##pair? _g8001480022_)
                               (let* ((_tl8002080038_ (##cdr _g8001480022_))
                                      (_rest80041_ _tl8002080038_))
                                 (_lp79980_ _rest80041_))
                               (_else8001680030_)))
                         '#f)))
                  (_K7998880006_ (lambda () '#t)))
              (let ((_try-match7998580009_
                     (lambda ()
                       (if (##null? _g7998379993_)
                           (_K7998880006_)
                           (_else7998680001_)))))
                (if (##pair? _g7998379993_)
                    (let ((_tl7999180048_ (##cdr _g7998379993_))
                          (_hd7999080046_ (##car _g7998379993_)))
                      (let ((_hd80051_ _hd7999080046_)
                            (_rest80053_ _tl7999180048_))
                        (_K7998980043_ _rest80053_ _hd80051_)))
                    (_try-match7998580009_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx80058_)
        (let ((_key?80060_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx80058_ _key?80060_))))
    (define gx#stx-plist?
      (lambda _g81166_
        (let ((_g81165_ (##length _g81166_)))
          (cond ((##fx= _g81165_ 1)
                 (apply (lambda (_stx80058_) (gx#stx-plist?__0 _stx80058_))
                        _g81166_))
                ((##fx= _g81165_ 2)
                 (apply (lambda (_stx80062_ _key?80063_)
                          (gx#stx-plist?__% _stx80062_ _key?80063_))
                        _g81166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g81166_))))))
    (define gx#stx-getq__%
      (lambda (_key79895_ _stx79896_ _key=?79897_)
        (if (procedure? _key=?79897_)
            '#!void
            (error '"expected procedure" _key=?79897_))
        (let _lp79899_ ((_rest79901_ _stx79896_))
          (let* ((_g7990279910_ (gx#syntax-e _rest79901_))
                 (_else7990479918_ (lambda () '#f))
                 (_K7990679952_
                  (lambda (_rest79921_ _hd79922_)
                    (let* ((_g7992379930_ (gx#syntax-e _rest79921_))
                           (_E7992579934_
                            (lambda ()
                              (error '"No clause matching" _g7992379930_)))
                           (_K7992679940_
                            (lambda (_rest79937_ _val79938_)
                              (if (_key=?79897_ _hd79922_ _key79895_)
                                  _val79938_
                                  (_lp79899_ _rest79937_)))))
                      (if (##pair? _g7992379930_)
                          (let ((_hd7992779943_ (##car _g7992379930_))
                                (_tl7992879945_ (##cdr _g7992379930_)))
                            (let* ((_val79948_ _hd7992779943_)
                                   (_rest79950_ _tl7992879945_))
                              (_K7992679940_ _rest79950_ _val79948_)))
                          (_E7992579934_))))))
            (if (##pair? _g7990279910_)
                (let ((_hd7990779955_ (##car _g7990279910_))
                      (_tl7990879957_ (##cdr _g7990279910_)))
                  (let* ((_hd79960_ _hd7990779955_)
                         (_rest79962_ _tl7990879957_))
                    (_K7990679952_ _rest79962_ _hd79960_)))
                (_else7990479918_))))))
    (define gx#stx-getq__0
      (lambda (_key79967_ _stx79968_)
        (let ((_key=?79970_ gx#stx-eq?))
          (gx#stx-getq__% _key79967_ _stx79968_ _key=?79970_))))
    (define gx#stx-getq
      (lambda _g81168_
        (let ((_g81167_ (##length _g81168_)))
          (cond ((##fx= _g81167_ 2)
                 (apply (lambda (_key79967_ _stx79968_)
                          (gx#stx-getq__0 _key79967_ _stx79968_))
                        _g81168_))
                ((##fx= _g81167_ 3)
                 (apply (lambda (_key79972_ _stx79973_ _key=?79974_)
                          (gx#stx-getq__% _key79972_ _stx79973_ _key=?79974_))
                        _g81168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g81168_))))))))
