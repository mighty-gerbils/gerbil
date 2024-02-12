(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1707740667)
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
      (lambda _$args136962_
        (apply make-instance gx#identifier-wrap::t _$args136962_)))
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
      (lambda _$args136959_
        (apply make-instance gx#syntax-wrap::t _$args136959_)))
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
      (lambda _$args136956_
        (apply make-instance gx#syntax-quote::t _$args136956_)))
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
      (lambda (_stx136954_) (symbol? (gx#stx-e _stx136954_))))
    (define gx#identifier-quote?
      (lambda (_stx136952_)
        (if (##structure-direct-instance-of? _stx136952_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx136952_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx136950_)
        (if (##structure-direct-instance-of? _stx136950_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx136950_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx136950_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx136948_)
        (if (##structure-direct-instance-of? _stx136948_ 'gx#syntax-quote::t)
            _stx136948_
            (if (##structure-direct-instance-of?
                 _stx136948_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx136948_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx136931_)
        (if (##structure-direct-instance-of? _stx136931_ 'gx#syntax-wrap::t)
            (let _lp136933_ ((_e136935_
                              (##unchecked-structure-ref
                               _stx136931_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks136936_
                              (cons (##unchecked-structure-ref
                                     _stx136931_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e136935_)
                  (let ((_$e136938_ (##type-id (##structure-type _e136935_))))
                    (if (eq? 'gx#syntax-wrap::t _$e136938_)
                        (_lp136933_
                         (##unchecked-structure-ref _e136935_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e136935_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks136936_))
                        (if (or (eq? 'gx#syntax-quote::t _$e136938_)
                                (eq? 'gx#identifier-wrap::t _$e136938_))
                            (##unchecked-structure-ref
                             _e136935_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e136938_)
                                (_lp136933_
                                 (##unchecked-structure-ref
                                  _e136935_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks136936_)
                                _e136935_))))
                  (if (null? _marks136936_)
                      _e136935_
                      (if (pair? _e136935_)
                          (cons (gx#stx-wrap (car _e136935_) _marks136936_)
                                (gx#stx-wrap (cdr _e136935_) _marks136936_))
                          (if (vector? _e136935_)
                              (vector-map
                               (lambda (_g136943136945_)
                                 (gx#stx-wrap _g136943136945_ _marks136936_))
                               _e136935_)
                              (if (box? _e136935_)
                                  (box (gx#stx-wrap
                                        (unbox _e136935_)
                                        _marks136936_))
                                  _e136935_))))))
            (if (##structure-instance-of? _stx136931_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136931_ '1 gx#AST::t '#f)
                _stx136931_))))
    (define gx#syntax->datum
      (lambda (_stx136929_)
        (if (##structure-instance-of? _stx136929_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx136929_ '1 gx#AST::t '#f))
            (if (pair? _stx136929_)
                (cons (gx#syntax->datum (car _stx136929_))
                      (gx#syntax->datum (cdr _stx136929_)))
                (if (vector? _stx136929_)
                    (vector-map gx#syntax->datum _stx136929_)
                    (if (box? _stx136929_)
                        (box (gx#syntax->datum (unbox _stx136929_)))
                        _stx136929_))))))
    (define gx#datum->syntax__%
      (lambda (_stx136872_ _datum136873_ _src136874_ _quote?136875_)
        (letrec ((_wrap-datum136877_
                  (lambda (_e136901_ _marks136902_)
                    (_wrap-inner136879_
                     _e136901_
                     (lambda (_g136903136905_)
                       (##structure
                        gx#identifier-wrap::t
                        _g136903136905_
                        _src136874_
                        _marks136902_)))))
                 (_wrap-quote136878_
                  (lambda (_e136893_ _ctx136894_ _marks136895_)
                    (_wrap-inner136879_
                     _e136893_
                     (lambda (_g136896136898_)
                       (##structure
                        gx#syntax-quote::t
                        _g136896136898_
                        _src136874_
                        _ctx136894_
                        _marks136895_)))))
                 (_wrap-inner136879_
                  (lambda (_e136886_ _wrap-e136887_)
                    (let _recur136889_ ((_e136891_ _e136886_))
                      (if (symbol? _e136891_)
                          (_wrap-e136887_ _e136891_)
                          (if (pair? _e136891_)
                              (cons (_recur136889_ (car _e136891_))
                                    (_recur136889_ (cdr _e136891_)))
                              (if (vector? _e136891_)
                                  (vector-map _recur136889_ _e136891_)
                                  (if (box? _e136891_)
                                      (box (_recur136889_ (unbox _e136891_)))
                                      _e136891_)))))))
                 (_wrap-outer136880_
                  (lambda (_e136884_)
                    (if (##structure-instance-of? _e136884_ 'gerbil#AST::t)
                        _e136884_
                        (##structure gx#AST::t _e136884_ _src136874_)))))
          (if (##structure-instance-of? _datum136873_ 'gerbil#AST::t)
              _datum136873_
              (if (not _stx136872_)
                  (##structure gx#AST::t _datum136873_ _src136874_)
                  (if (gx#identifier? _stx136872_)
                      (let ((_stx136882_ (gx#stx-unwrap__0 _stx136872_)))
                        (_wrap-outer136880_
                         (if (##structure-direct-instance-of?
                              _stx136882_
                              'gx#syntax-quote::t)
                             (if _quote?136875_
                                 (_wrap-quote136878_
                                  _datum136873_
                                  (##unchecked-structure-ref
                                   _stx136882_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx136882_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum136877_
                                  _datum136873_
                                  (##unchecked-structure-ref
                                   _stx136882_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum136877_
                              _datum136873_
                              (##unchecked-structure-ref
                               _stx136882_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx136872_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx136911_ _datum136912_)
        (let* ((_src136914_ '#f) (_quote?136916_ '#t))
          (gx#datum->syntax__%
           _stx136911_
           _datum136912_
           _src136914_
           _quote?136916_))))
    (define gx#datum->syntax__1
      (lambda (_stx136918_ _datum136919_ _src136920_)
        (let ((_quote?136922_ '#t))
          (gx#datum->syntax__%
           _stx136918_
           _datum136919_
           _src136920_
           _quote?136922_))))
    (define gx#datum->syntax
      (lambda _g141611_
        (let ((_g141610_ (##length _g141611_)))
          (cond ((##fx= _g141610_ 2)
                 (apply (lambda (_stx136911_ _datum136912_)
                          (gx#datum->syntax__0 _stx136911_ _datum136912_))
                        _g141611_))
                ((##fx= _g141610_ 3)
                 (apply (lambda (_stx136918_ _datum136919_ _src136920_)
                          (gx#datum->syntax__1
                           _stx136918_
                           _datum136919_
                           _src136920_))
                        _g141611_))
                ((##fx= _g141610_ 4)
                 (apply (lambda (_stx136924_
                                 _datum136925_
                                 _src136926_
                                 _quote?136927_)
                          (gx#datum->syntax__%
                           _stx136924_
                           _datum136925_
                           _src136926_
                           _quote?136927_))
                        _g141611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g141611_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx136848_ _marks136849_)
        (let _lp136851_ ((_e136853_ _stx136848_)
                         (_marks136854_ _marks136849_)
                         (_src136855_ (gx#stx-source _stx136848_)))
          (if (##structure-direct-instance-of? _e136853_ 'gx#syntax-wrap::t)
              (_lp136851_
               (##unchecked-structure-ref _e136853_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e136853_ '3 gx#syntax-wrap::t '#f)
                _marks136854_)
               (##unchecked-structure-ref _e136853_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e136853_
                   'gx#identifier-wrap::t)
                  (if (null? _marks136854_)
                      _e136853_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e136853_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e136853_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e136853_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks136854_)))
                  (if (##structure-direct-instance-of?
                       _e136853_
                       'gx#syntax-quote::t)
                      _e136853_
                      (if (##structure-instance-of? _e136853_ 'gerbil#AST::t)
                          (_lp136851_
                           (##unchecked-structure-ref
                            _e136853_
                            '1
                            gx#AST::t
                            '#f)
                           _marks136854_
                           (##unchecked-structure-ref
                            _e136853_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e136853_)
                              (##structure
                               gx#identifier-wrap::t
                               _e136853_
                               _src136855_
                               (reverse _marks136854_))
                              (if (null? _marks136854_)
                                  _e136853_
                                  (if (pair? _e136853_)
                                      (cons (gx#stx-wrap
                                             (car _e136853_)
                                             _marks136854_)
                                            (gx#stx-wrap
                                             (cdr _e136853_)
                                             _marks136854_))
                                      (if (vector? _e136853_)
                                          (vector-map
                                           (lambda (_g136856136858_)
                                             (gx#stx-wrap
                                              _g136856136858_
                                              _marks136854_))
                                           _e136853_)
                                          (if (box? _e136853_)
                                              (box (gx#stx-wrap
                                                    (unbox _e136853_)
                                                    _marks136854_))
                                              _e136853_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx136864_)
        (let ((_marks136866_ '()))
          (gx#stx-unwrap__% _stx136864_ _marks136866_))))
    (define gx#stx-unwrap
      (lambda _g141613_
        (let ((_g141612_ (##length _g141613_)))
          (cond ((##fx= _g141612_ 1)
                 (apply (lambda (_stx136864_) (gx#stx-unwrap__0 _stx136864_))
                        _g141613_))
                ((##fx= _g141612_ 2)
                 (apply (lambda (_stx136868_ _marks136869_)
                          (gx#stx-unwrap__% _stx136868_ _marks136869_))
                        _g141613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g141613_))))))
    (define gx#stx-wrap
      (lambda (_stx136841_ _marks136842_)
        (foldl1 (lambda (_mark136844_ _stx136845_)
                  (gx#stx-apply-mark _stx136845_ _mark136844_))
                _stx136841_
                _marks136842_)))
    (define gx#stx-rewrap
      (lambda (_stx136835_ _marks136836_)
        (foldr1 (lambda (_mark136838_ _stx136839_)
                  (gx#stx-apply-mark _stx136839_ _mark136838_))
                _stx136835_
                _marks136836_)))
    (define gx#stx-apply-mark
      (lambda (_stx136832_ _mark136833_)
        (if (##structure-direct-instance-of? _stx136832_ 'gx#syntax-quote::t)
            _stx136832_
            (if (and (##structure-direct-instance-of?
                      _stx136832_
                      'gx#syntax-wrap::t)
                     (eq? _mark136833_
                          (##unchecked-structure-ref
                           _stx136832_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx136832_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx136832_
                 (gx#stx-source _stx136832_)
                 _mark136833_)))))
    (define gx#apply-mark
      (lambda (_mark136796_ _marks136797_)
        (let* ((_marks136798136806_ _marks136797_)
               (_else136800136814_
                (lambda () (cons _mark136796_ _marks136797_)))
               (_K136802136820_
                (lambda (_rest136817_ _hd136818_)
                  (if (eq? _mark136796_ _hd136818_)
                      _rest136817_
                      (cons _mark136796_ _marks136797_)))))
          (if (##pair? _marks136798136806_)
              (let ((_hd136803136823_ (##car _marks136798136806_))
                    (_tl136804136825_ (##cdr _marks136798136806_)))
                (let* ((_hd136828_ _hd136803136823_)
                       (_rest136830_ _tl136804136825_))
                  (_K136802136820_ _rest136830_ _hd136828_)))
              (_else136800136814_)))))
    (define gx#stx-e
      (lambda (_stx136794_)
        (if (##structure-direct-instance-of? _stx136794_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx136794_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx136794_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx136794_ '1 gx#AST::t '#f)
                _stx136794_))))
    (define gx#stx-source
      (lambda (_stx136792_)
        (if (##structure-instance-of? _stx136792_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx136792_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx136786_ _src136787_)
        (if (or (##structure-instance-of? _stx136786_ 'gerbil#AST::t)
                (not _src136787_))
            _stx136786_
            (##structure gx#AST::t _stx136786_ _src136787_))))
    (define gx#stx-datum?
      (lambda (_stx136784_) (gx#self-quoting? (gx#stx-e _stx136784_))))
    (define gx#self-quoting?
      (lambda (_x136767_)
        (let ((_$e136769_ (immediate? _x136767_)))
          (if _$e136769_
              _$e136769_
              (let ((_$e136772_ (number? _x136767_)))
                (if _$e136772_
                    _$e136772_
                    (let ((_$e136775_ (keyword? _x136767_)))
                      (if _$e136775_
                          _$e136775_
                          (let ((_$e136778_ (string? _x136767_)))
                            (if _$e136778_
                                _$e136778_
                                (let ((_$e136781_ (vector? _x136767_)))
                                  (if _$e136781_
                                      _$e136781_
                                      (u8vector? _x136767_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e136765_) (boolean? (gx#stx-e _e136765_))))
    (define gx#stx-keyword?
      (lambda (_e136763_) (keyword? (gx#stx-e _e136763_))))
    (define gx#stx-char? (lambda (_e136761_) (char? (gx#stx-e _e136761_))))
    (define gx#stx-number? (lambda (_e136759_) (number? (gx#stx-e _e136759_))))
    (define gx#stx-fixnum? (lambda (_e136757_) (fixnum? (gx#stx-e _e136757_))))
    (define gx#stx-string? (lambda (_e136755_) (string? (gx#stx-e _e136755_))))
    (define gx#stx-null? (lambda (_e136753_) (null? (gx#stx-e _e136753_))))
    (define gx#stx-pair? (lambda (_e136751_) (pair? (gx#stx-e _e136751_))))
    (define gx#stx-list?
      (lambda (_e136713_)
        (let* ((_g136714136723_ (gx#stx-e _e136713_))
               (_E136717136727_
                (lambda () (error '"No clause matching" _g136714136723_))))
          (let ((_K136719136743_
                 (lambda (_rest136741_) (gx#stx-list? _rest136741_)))
                (_K136718136733_ (lambda (_tail136731_) (null? _tail136731_))))
            (if (##pair? _g136714136723_)
                (let* ((_tl136721136746_ (##cdr _g136714136723_))
                       (_rest136749_ _tl136721136746_))
                  (gx#stx-list? _rest136749_))
                (let ((_tail136736_ _g136714136723_))
                  (null? _tail136736_)))))))
    (define gx#stx-pair/null?
      (lambda (_e136706_)
        (let* ((_e136708_ (gx#stx-e _e136706_)) (_$e136710_ (pair? _e136708_)))
          (if _$e136710_ _$e136710_ (null? _e136708_)))))
    (define gx#stx-vector? (lambda (_e136704_) (vector? (gx#stx-e _e136704_))))
    (define gx#stx-box? (lambda (_e136702_) (box? (gx#stx-e _e136702_))))
    (define gx#stx-eq?
      (lambda (_x136699_ _y136700_)
        (eq? (gx#stx-e _x136699_) (gx#stx-e _y136700_))))
    (define gx#stx-eqv?
      (lambda (_x136696_ _y136697_)
        (eqv? (gx#stx-e _x136696_) (gx#stx-e _y136697_))))
    (define gx#stx-equal?
      (lambda (_x136693_ _y136694_)
        (equal? (gx#stx-e _x136693_) (gx#stx-e _y136694_))))
    (define gx#stx-false? (lambda (_x136691_) (not (gx#stx-e _x136691_))))
    (define gx#stx-identifier
      (lambda (_template136688_ . _args136689_)
        (gx#datum->syntax__1
         _template136688_
         (apply make-symbol (gx#syntax->datum _args136689_))
         (gx#stx-source _template136688_))))
    (define gx#stx-identifier-marks
      (lambda (_stx136686_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx136686_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx136684_)
        (if (##structure-direct-instance-of?
             _stx136684_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx136684_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx136684_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx136684_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx136684_)))))
    (define gx#stx-identifier-context
      (lambda (_stx136680_)
        (let ((_stx136682_ (gx#stx-unwrap__0 _stx136680_)))
          (if (gx#identifier-quote? _stx136682_)
              (##unchecked-structure-ref _stx136682_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx136635_)
        (let* ((_g136636136646_ (gx#stx-e _stx136635_))
               (_else136639136654_ (lambda () '#f)))
          (let ((_K136642136668_
                 (lambda (_rest136665_ _hd136666_)
                   (if (gx#identifier? _hd136666_)
                       (gx#identifier-list? _rest136665_)
                       '#f)))
                (_K136641136659_ (lambda () '#t)))
            (let ((_try-match136638136662_
                   (lambda ()
                     (if (##null? _g136636136646_)
                         (_K136641136659_)
                         (_else136639136654_)))))
              (if (##pair? _g136636136646_)
                  (let ((_tl136644136673_ (##cdr _g136636136646_))
                        (_hd136643136671_ (##car _g136636136646_)))
                    (let ((_hd136676_ _hd136643136671_)
                          (_rest136678_ _tl136644136673_))
                      (_K136642136668_ _rest136678_ _hd136676_)))
                  (_try-match136638136662_)))))))
    (define gx#genident__%
      (lambda (_e136612_ _src136613_)
        (gx#stx-wrap-source
         (gensym (let ((_e136615_ (gx#stx-e _e136612_)))
                   (if (interned-symbol? _e136615_) _e136615_ 'g)))
         (let ((_$e136617_ (gx#stx-source _e136612_)))
           (if _$e136617_ _$e136617_ _src136613_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e136624_ 'g) (_src136626_ '#f))
          (gx#genident__% _e136624_ _src136626_))))
    (define gx#genident__1
      (lambda (_e136628_)
        (let ((_src136630_ '#f)) (gx#genident__% _e136628_ _src136630_))))
    (define gx#genident
      (lambda _g141615_
        (let ((_g141614_ (##length _g141615_)))
          (cond ((##fx= _g141614_ 0)
                 (apply (lambda () (gx#genident__0)) _g141615_))
                ((##fx= _g141614_ 1)
                 (apply (lambda (_e136628_) (gx#genident__1 _e136628_))
                        _g141615_))
                ((##fx= _g141614_ 2)
                 (apply (lambda (_e136632_ _src136633_)
                          (gx#genident__% _e136632_ _src136633_))
                        _g141615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g141615_))))))
    (define gx#gentemps
      (lambda (_stx-lst136609_) (gx#stx-map1 gx#genident _stx-lst136609_)))
    (define gx#syntax->list
      (lambda (_stx136607_) (gx#stx-map1 values _stx136607_)))
    (define gx#stx-car
      (lambda (_stx136604_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx136604_)))))
    (define gx#stx-cdr
      (lambda (_stx136601_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx136601_)))))
    (define gx#stx-length
      (lambda (_stx136566_)
        (let _lp136568_ ((_rest136570_ _stx136566_) (_n136571_ '0))
          (let* ((_g136572136580_ (gx#stx-e _rest136570_))
                 (_else136574136588_ (lambda () _n136571_))
                 (_K136576136593_
                  (lambda (_rest136591_)
                    (_lp136568_ _rest136591_ (fx+ _n136571_ '1)))))
            (if (##pair? _g136572136580_)
                (let* ((_tl136578136596_ (##cdr _g136572136580_))
                       (_rest136599_ _tl136578136596_))
                  (_K136576136593_ _rest136599_))
                (_else136574136588_))))))
    (define gx#stx-for-each
      (lambda _g141617_
        (let ((_g141616_ (##length _g141617_)))
          (cond ((##fx= _g141616_ 2)
                 (apply (lambda (_f136559_ _stx136560_)
                          (gx#stx-for-each1 _f136559_ _stx136560_))
                        _g141617_))
                ((##fx= _g141616_ 3)
                 (apply (lambda (_f136562_ _xstx136563_ _ystx136564_)
                          (gx#stx-for-each2
                           _f136562_
                           _xstx136563_
                           _ystx136564_))
                        _g141617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g141617_))))))
    (define gx#stx-for-each1
      (lambda (_f136509_ _stx136510_)
        (if (procedure? _f136509_)
            '#!void
            (error '"expected procedure" _f136509_))
        (let _lp136512_ ((_rest136514_ _stx136510_))
          (let* ((_g136515136525_ (gx#syntax-e _rest136514_))
                 (_else136518136533_ (lambda () (_f136509_ _rest136514_))))
            (let ((_K136521136547_
                   (lambda (_rest136544_ _hd136545_)
                     (_f136509_ _hd136545_)
                     (_lp136512_ _rest136544_)))
                  (_K136520136538_ (lambda () '#!void)))
              (let ((_try-match136517136541_
                     (lambda ()
                       (if (##null? _g136515136525_)
                           (_K136520136538_)
                           (_else136518136533_)))))
                (if (##pair? _g136515136525_)
                    (let ((_tl136523136552_ (##cdr _g136515136525_))
                          (_hd136522136550_ (##car _g136515136525_)))
                      (let ((_hd136555_ _hd136522136550_)
                            (_rest136557_ _tl136523136552_))
                        (_K136521136547_ _rest136557_ _hd136555_)))
                    (_try-match136517136541_))))))))
    (define gx#stx-for-each2
      (lambda (_f136414_ _xstx136415_ _ystx136416_)
        (if (procedure? _f136414_)
            '#!void
            (error '"expected procedure" _f136414_))
        (let _lp136418_ ((_xrest136420_ _xstx136415_)
                         (_yrest136421_ _ystx136416_))
          (let* ((_g136422136432_ (gx#syntax-e _xrest136420_))
                 (_else136425136440_ (lambda () '#!void)))
            (let ((_K136428136497_
                   (lambda (_xrest136466_ _xhd136467_)
                     (let* ((_g136468136475_ (gx#syntax-e _yrest136421_))
                            (_E136470136479_
                             (lambda ()
                               (error '"No clause matching" _g136468136475_)))
                            (_K136471136485_
                             (lambda (_yrest136482_ _yhd136483_)
                               (_f136414_ _xhd136467_ _yhd136483_)
                               (_lp136418_ _xrest136466_ _yrest136482_))))
                       (if (##pair? _g136468136475_)
                           (let ((_hd136472136488_ (##car _g136468136475_))
                                 (_tl136473136490_ (##cdr _g136468136475_)))
                             (let* ((_yhd136493_ _hd136472136488_)
                                    (_yrest136495_ _tl136473136490_))
                               (_K136471136485_ _yrest136495_ _yhd136493_)))
                           (_E136470136479_)))))
                  (_K136427136460_
                   (lambda ()
                     (let* ((_yrest136444136449_ _yrest136421_)
                            (_E136446136453_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136444136449_)))
                            (_K136447136457_
                             (lambda ()
                               (_f136414_ _xrest136420_ _yrest136421_))))
                       (if (not (gx#stx-null? _yrest136444136449_))
                           (_K136447136457_)
                           (_E136446136453_))))))
              (let ((_try-match136424136463_
                     (lambda ()
                       (if (not (null? _g136422136432_))
                           (_K136427136460_)
                           (_else136425136440_)))))
                (if (##pair? _g136422136432_)
                    (let ((_tl136430136502_ (##cdr _g136422136432_))
                          (_hd136429136500_ (##car _g136422136432_)))
                      (let ((_xhd136505_ _hd136429136500_)
                            (_xrest136507_ _tl136430136502_))
                        (_K136428136497_ _xrest136507_ _xhd136505_)))
                    (_try-match136424136463_))))))))
    (define gx#stx-map
      (lambda _g141619_
        (let ((_g141618_ (##length _g141619_)))
          (cond ((##fx= _g141618_ 2)
                 (apply (lambda (_f136407_ _stx136408_)
                          (gx#stx-map1 _f136407_ _stx136408_))
                        _g141619_))
                ((##fx= _g141618_ 3)
                 (apply (lambda (_f136410_ _xstx136411_ _ystx136412_)
                          (gx#stx-map2 _f136410_ _xstx136411_ _ystx136412_))
                        _g141619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g141619_))))))
    (define gx#stx-map1
      (lambda (_f136357_ _stx136358_)
        (if (procedure? _f136357_)
            '#!void
            (error '"expected procedure" _f136357_))
        (let _recur136360_ ((_rest136362_ _stx136358_))
          (let* ((_g136363136373_ (gx#syntax-e _rest136362_))
                 (_else136366136381_ (lambda () (_f136357_ _rest136362_))))
            (let ((_K136369136395_
                   (lambda (_rest136392_ _hd136393_)
                     (cons (_f136357_ _hd136393_)
                           (_recur136360_ _rest136392_))))
                  (_K136368136386_ (lambda () '())))
              (let ((_try-match136365136389_
                     (lambda ()
                       (if (##null? _g136363136373_)
                           (_K136368136386_)
                           (_else136366136381_)))))
                (if (##pair? _g136363136373_)
                    (let ((_tl136371136400_ (##cdr _g136363136373_))
                          (_hd136370136398_ (##car _g136363136373_)))
                      (let ((_hd136403_ _hd136370136398_)
                            (_rest136405_ _tl136371136400_))
                        (_K136369136395_ _rest136405_ _hd136403_)))
                    (_try-match136365136389_))))))))
    (define gx#stx-map2
      (lambda (_f136262_ _xstx136263_ _ystx136264_)
        (if (procedure? _f136262_)
            '#!void
            (error '"expected procedure" _f136262_))
        (let _recur136266_ ((_xrest136268_ _xstx136263_)
                            (_yrest136269_ _ystx136264_))
          (let* ((_g136270136280_ (gx#syntax-e _xrest136268_))
                 (_else136273136288_ (lambda () '())))
            (let ((_K136276136345_
                   (lambda (_xrest136314_ _xhd136315_)
                     (let* ((_g136316136323_ (gx#syntax-e _yrest136269_))
                            (_E136318136327_
                             (lambda ()
                               (error '"No clause matching" _g136316136323_)))
                            (_K136319136333_
                             (lambda (_yrest136330_ _yhd136331_)
                               (cons (_f136262_ _xhd136315_ _yhd136331_)
                                     (_recur136266_
                                      _xrest136314_
                                      _yrest136330_)))))
                       (if (##pair? _g136316136323_)
                           (let ((_hd136320136336_ (##car _g136316136323_))
                                 (_tl136321136338_ (##cdr _g136316136323_)))
                             (let* ((_yhd136341_ _hd136320136336_)
                                    (_yrest136343_ _tl136321136338_))
                               (_K136319136333_ _yrest136343_ _yhd136341_)))
                           (_E136318136327_)))))
                  (_K136275136308_
                   (lambda ()
                     (let* ((_yrest136292136297_ _yrest136269_)
                            (_E136294136301_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest136292136297_)))
                            (_K136295136305_
                             (lambda ()
                               (_f136262_ _xrest136268_ _yrest136269_))))
                       (if (not (gx#stx-null? _yrest136292136297_))
                           (_K136295136305_)
                           (_E136294136301_))))))
              (let ((_try-match136272136311_
                     (lambda ()
                       (if (not (null? _g136270136280_))
                           (_K136275136308_)
                           (_else136273136288_)))))
                (if (##pair? _g136270136280_)
                    (let ((_tl136278136350_ (##cdr _g136270136280_))
                          (_hd136277136348_ (##car _g136270136280_)))
                      (let ((_xhd136353_ _hd136277136348_)
                            (_xrest136355_ _tl136278136350_))
                        (_K136276136345_ _xrest136355_ _xhd136353_)))
                    (_try-match136272136311_))))))))
    (define gx#stx-andmap
      (lambda (_f136212_ _stx136213_)
        (if (procedure? _f136212_)
            '#!void
            (error '"expected procedure" _f136212_))
        (let _lp136215_ ((_rest136217_ _stx136213_))
          (let* ((_g136218136228_ (gx#syntax-e _rest136217_))
                 (_else136221136236_ (lambda () (_f136212_ _rest136217_))))
            (let ((_K136224136250_
                   (lambda (_rest136247_ _hd136248_)
                     (if (_f136212_ _hd136248_)
                         (_lp136215_ _rest136247_)
                         '#f)))
                  (_K136223136241_ (lambda () '#t)))
              (let ((_try-match136220136244_
                     (lambda ()
                       (if (##null? _g136218136228_)
                           (_K136223136241_)
                           (_else136221136236_)))))
                (if (##pair? _g136218136228_)
                    (let ((_tl136226136255_ (##cdr _g136218136228_))
                          (_hd136225136253_ (##car _g136218136228_)))
                      (let ((_hd136258_ _hd136225136253_)
                            (_rest136260_ _tl136226136255_))
                        (_K136224136250_ _rest136260_ _hd136258_)))
                    (_try-match136220136244_))))))))
    (define gx#stx-ormap
      (lambda (_f136159_ _stx136160_)
        (if (procedure? _f136159_)
            '#!void
            (error '"expected procedure" _f136159_))
        (let _lp136162_ ((_rest136164_ _stx136160_))
          (let* ((_g136165136175_ (gx#syntax-e _rest136164_))
                 (_else136168136183_ (lambda () (_f136159_ _rest136164_))))
            (let ((_K136171136200_
                   (lambda (_rest136194_ _hd136195_)
                     (let ((_$e136197_ (_f136159_ _hd136195_)))
                       (if _$e136197_ _$e136197_ (_lp136162_ _rest136194_)))))
                  (_K136170136188_ (lambda () '#f)))
              (let ((_try-match136167136191_
                     (lambda ()
                       (if (##null? _g136165136175_)
                           (_K136170136188_)
                           (_else136168136183_)))))
                (if (##pair? _g136165136175_)
                    (let ((_tl136173136205_ (##cdr _g136165136175_))
                          (_hd136172136203_ (##car _g136165136175_)))
                      (let ((_hd136208_ _hd136172136203_)
                            (_rest136210_ _tl136173136205_))
                        (_K136171136200_ _rest136210_ _hd136208_)))
                    (_try-match136167136191_))))))))
    (define gx#stx-foldl
      (lambda (_f136107_ _iv136108_ _stx136109_)
        (if (procedure? _f136107_)
            '#!void
            (error '"expected procedure" _f136107_))
        (let _lp136111_ ((_r136113_ _iv136108_) (_rest136114_ _stx136109_))
          (let* ((_g136115136125_ (gx#syntax-e _rest136114_))
                 (_else136118136133_
                  (lambda () (_f136107_ _rest136114_ _r136113_))))
            (let ((_K136121136147_
                   (lambda (_rest136144_ _hd136145_)
                     (_lp136111_
                      (_f136107_ _hd136145_ _r136113_)
                      _rest136144_)))
                  (_K136120136138_ (lambda () _r136113_)))
              (let ((_try-match136117136141_
                     (lambda ()
                       (if (##null? _g136115136125_)
                           (_K136120136138_)
                           (_else136118136133_)))))
                (if (##pair? _g136115136125_)
                    (let ((_tl136123136152_ (##cdr _g136115136125_))
                          (_hd136122136150_ (##car _g136115136125_)))
                      (let ((_hd136155_ _hd136122136150_)
                            (_rest136157_ _tl136123136152_))
                        (_K136121136147_ _rest136157_ _hd136155_)))
                    (_try-match136117136141_))))))))
    (define gx#stx-foldr
      (lambda (_f136056_ _iv136057_ _stx136058_)
        (if (procedure? _f136056_)
            '#!void
            (error '"expected procedure" _f136056_))
        (let _recur136060_ ((_rest136062_ _stx136058_))
          (let* ((_g136063136073_ (gx#syntax-e _rest136062_))
                 (_else136066136081_
                  (lambda () (_f136056_ _rest136062_ _iv136057_))))
            (let ((_K136069136095_
                   (lambda (_rest136092_ _hd136093_)
                     (_f136056_ _hd136093_ (_recur136060_ _rest136092_))))
                  (_K136068136086_ (lambda () _iv136057_)))
              (let ((_try-match136065136089_
                     (lambda ()
                       (if (##null? _g136063136073_)
                           (_K136068136086_)
                           (_else136066136081_)))))
                (if (##pair? _g136063136073_)
                    (let ((_tl136071136100_ (##cdr _g136063136073_))
                          (_hd136070136098_ (##car _g136063136073_)))
                      (let ((_hd136103_ _hd136070136098_)
                            (_rest136105_ _tl136071136100_))
                        (_K136069136095_ _rest136105_ _hd136103_)))
                    (_try-match136065136089_))))))))
    (define gx#stx-reverse
      (lambda (_stx136054_) (gx#stx-foldl cons '() _stx136054_)))
    (define gx#stx-last
      (lambda (_stx136015_)
        (let _lp136017_ ((_rest136019_ _stx136015_))
          (let* ((_g136020136028_ (gx#syntax-e _rest136019_))
                 (_else136022136036_ (lambda () _rest136019_))
                 (_K136024136042_
                  (lambda (_rest136039_ _hd136040_)
                    (if (gx#stx-null? _rest136039_)
                        _hd136040_
                        (_lp136017_ _rest136039_)))))
            (if (##pair? _g136020136028_)
                (let ((_hd136025136045_ (##car _g136020136028_))
                      (_tl136026136047_ (##cdr _g136020136028_)))
                  (let* ((_hd136050_ _hd136025136045_)
                         (_rest136052_ _tl136026136047_))
                    (_K136024136042_ _rest136052_ _hd136050_)))
                (_else136022136036_))))))
    (define gx#stx-last-pair
      (lambda (_stx135986_)
        (let _lp135988_ ((_hd135990_ _stx135986_))
          (let* ((_g135991135998_ (gx#syntax-e _hd135990_))
                 (_E135993136002_
                  (lambda () (error '"No clause matching" _g135991135998_)))
                 (_K135994136007_
                  (lambda (_rest136005_)
                    (if (gx#stx-pair? _rest136005_)
                        (_lp135988_ _rest136005_)
                        _hd135990_))))
            (if (##pair? _g135991135998_)
                (let* ((_tl135996136010_ (##cdr _g135991135998_))
                       (_rest136013_ _tl135996136010_))
                  (_K135994136007_ _rest136013_))
                (_E135993136002_))))))
    (define gx#stx-list-tail
      (lambda (_stx135955_ _k135956_)
        (let _lp135958_ ((_rest135960_ _stx135955_) (_k135961_ _k135956_))
          (if (fxpositive? _k135961_)
              (let* ((_g135962135969_ (gx#syntax-e _rest135960_))
                     (_E135964135973_
                      (lambda ()
                        (error '"No clause matching" _g135962135969_)))
                     (_K135965135978_
                      (lambda (_rest135976_)
                        (_lp135958_ _rest135976_ (fx- _k135961_ '1)))))
                (if (##pair? _g135962135969_)
                    (let* ((_tl135967135981_ (##cdr _g135962135969_))
                           (_rest135984_ _tl135967135981_))
                      (_K135965135978_ _rest135984_))
                    (_E135964135973_)))
              _rest135960_))))
    (define gx#stx-list-ref
      (lambda (_stx135952_ _k135953_)
        (gx#stx-car (gx#stx-list-tail _stx135952_ _k135953_))))
    (define gx#stx-plist?__%
      (lambda (_stx135864_ _key?135865_)
        (if (procedure? _key?135865_)
            '#!void
            (error '"expected procedure" _key?135865_))
        (let _lp135867_ ((_rest135869_ _stx135864_))
          (let* ((_g135870135880_ (gx#stx-e _rest135869_))
                 (_else135873135888_ (lambda () '#f)))
            (let ((_K135876135930_
                   (lambda (_rest135899_ _hd135900_)
                     (if (_key?135865_ _hd135900_)
                         (let* ((_g135901135909_ (gx#stx-e _rest135899_))
                                (_else135903135917_ (lambda () '#f))
                                (_K135905135922_
                                 (lambda (_rest135920_)
                                   (_lp135867_ _rest135920_))))
                           (if (##pair? _g135901135909_)
                               (let* ((_tl135907135925_
                                       (##cdr _g135901135909_))
                                      (_rest135928_ _tl135907135925_))
                                 (_lp135867_ _rest135928_))
                               (_else135903135917_)))
                         '#f)))
                  (_K135875135893_ (lambda () '#t)))
              (let ((_try-match135872135896_
                     (lambda ()
                       (if (##null? _g135870135880_)
                           (_K135875135893_)
                           (_else135873135888_)))))
                (if (##pair? _g135870135880_)
                    (let ((_tl135878135935_ (##cdr _g135870135880_))
                          (_hd135877135933_ (##car _g135870135880_)))
                      (let ((_hd135938_ _hd135877135933_)
                            (_rest135940_ _tl135878135935_))
                        (_K135876135930_ _rest135940_ _hd135938_)))
                    (_try-match135872135896_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx135945_)
        (let ((_key?135947_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx135945_ _key?135947_))))
    (define gx#stx-plist?
      (lambda _g141621_
        (let ((_g141620_ (##length _g141621_)))
          (cond ((##fx= _g141620_ 1)
                 (apply (lambda (_stx135945_) (gx#stx-plist?__0 _stx135945_))
                        _g141621_))
                ((##fx= _g141620_ 2)
                 (apply (lambda (_stx135949_ _key?135950_)
                          (gx#stx-plist?__% _stx135949_ _key?135950_))
                        _g141621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g141621_))))))
    (define gx#stx-getq__%
      (lambda (_key135782_ _stx135783_ _key=?135784_)
        (if (procedure? _key=?135784_)
            '#!void
            (error '"expected procedure" _key=?135784_))
        (let _lp135786_ ((_rest135788_ _stx135783_))
          (let* ((_g135789135797_ (gx#syntax-e _rest135788_))
                 (_else135791135805_ (lambda () '#f))
                 (_K135793135839_
                  (lambda (_rest135808_ _hd135809_)
                    (let* ((_g135810135817_ (gx#syntax-e _rest135808_))
                           (_E135812135821_
                            (lambda ()
                              (error '"No clause matching" _g135810135817_)))
                           (_K135813135827_
                            (lambda (_rest135824_ _val135825_)
                              (if (_key=?135784_ _hd135809_ _key135782_)
                                  _val135825_
                                  (_lp135786_ _rest135824_)))))
                      (if (##pair? _g135810135817_)
                          (let ((_hd135814135830_ (##car _g135810135817_))
                                (_tl135815135832_ (##cdr _g135810135817_)))
                            (let* ((_val135835_ _hd135814135830_)
                                   (_rest135837_ _tl135815135832_))
                              (_K135813135827_ _rest135837_ _val135835_)))
                          (_E135812135821_))))))
            (if (##pair? _g135789135797_)
                (let ((_hd135794135842_ (##car _g135789135797_))
                      (_tl135795135844_ (##cdr _g135789135797_)))
                  (let* ((_hd135847_ _hd135794135842_)
                         (_rest135849_ _tl135795135844_))
                    (_K135793135839_ _rest135849_ _hd135847_)))
                (_else135791135805_))))))
    (define gx#stx-getq__0
      (lambda (_key135854_ _stx135855_)
        (let ((_key=?135857_ gx#stx-eq?))
          (gx#stx-getq__% _key135854_ _stx135855_ _key=?135857_))))
    (define gx#stx-getq
      (lambda _g141623_
        (let ((_g141622_ (##length _g141623_)))
          (cond ((##fx= _g141622_ 2)
                 (apply (lambda (_key135854_ _stx135855_)
                          (gx#stx-getq__0 _key135854_ _stx135855_))
                        _g141623_))
                ((##fx= _g141622_ 3)
                 (apply (lambda (_key135859_ _stx135860_ _key=?135861_)
                          (gx#stx-getq__%
                           _key135859_
                           _stx135860_
                           _key=?135861_))
                        _g141623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g141623_))))))))
