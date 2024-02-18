(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708271950)
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
      (lambda _$args149927_
        (apply make-instance gx#identifier-wrap::t _$args149927_)))
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
      (lambda _$args149924_
        (apply make-instance gx#syntax-wrap::t _$args149924_)))
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
      (lambda _$args149921_
        (apply make-instance gx#syntax-quote::t _$args149921_)))
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
      (lambda (_stx149919_) (symbol? (gx#stx-e _stx149919_))))
    (define gx#identifier-quote?
      (lambda (_stx149917_)
        (if (##structure-direct-instance-of? _stx149917_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx149917_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx149915_)
        (if (##structure-direct-instance-of? _stx149915_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _stx149915_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx149915_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx149913_)
        (if (##structure-direct-instance-of? _stx149913_ 'gx#syntax-quote::t)
            _stx149913_
            (if (##structure-direct-instance-of?
                 _stx149913_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx149913_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx149896_)
        (if (##structure-direct-instance-of? _stx149896_ 'gx#syntax-wrap::t)
            (let _lp149898_ ((_e149900_
                              (##unchecked-structure-ref
                               _stx149896_
                               '1
                               gx#AST::t
                               '#f))
                             (_marks149901_
                              (cons (##unchecked-structure-ref
                                     _stx149896_
                                     '3
                                     gx#syntax-wrap::t
                                     '#f)
                                    '())))
              (if (##structure? _e149900_)
                  (let ((_$e149903_ (##type-id (##structure-type _e149900_))))
                    (if (eq? 'gx#syntax-wrap::t _$e149903_)
                        (_lp149898_
                         (##unchecked-structure-ref _e149900_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e149900_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks149901_))
                        (if (or (eq? 'gx#syntax-quote::t _$e149903_)
                                (eq? 'gx#identifier-wrap::t _$e149903_))
                            (##unchecked-structure-ref
                             _e149900_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e149903_)
                                (_lp149898_
                                 (##unchecked-structure-ref
                                  _e149900_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks149901_)
                                _e149900_))))
                  (if (null? _marks149901_)
                      _e149900_
                      (if (pair? _e149900_)
                          (cons (gx#stx-wrap (car _e149900_) _marks149901_)
                                (gx#stx-wrap (cdr _e149900_) _marks149901_))
                          (if (vector? _e149900_)
                              (vector-map
                               (lambda (_g149908149910_)
                                 (gx#stx-wrap _g149908149910_ _marks149901_))
                               _e149900_)
                              (if (box? _e149900_)
                                  (box (gx#stx-wrap
                                        (unbox _e149900_)
                                        _marks149901_))
                                  _e149900_))))))
            (if (##structure-instance-of? _stx149896_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx149896_ '1 gx#AST::t '#f)
                _stx149896_))))
    (define gx#syntax->datum
      (lambda (_stx149894_)
        (if (##structure-instance-of? _stx149894_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx149894_ '1 gx#AST::t '#f))
            (if (pair? _stx149894_)
                (cons (gx#syntax->datum (car _stx149894_))
                      (gx#syntax->datum (cdr _stx149894_)))
                (if (vector? _stx149894_)
                    (vector-map gx#syntax->datum _stx149894_)
                    (if (box? _stx149894_)
                        (box (gx#syntax->datum (unbox _stx149894_)))
                        _stx149894_))))))
    (define gx#datum->syntax__%
      (lambda (_stx149837_ _datum149838_ _src149839_ _quote?149840_)
        (letrec ((_wrap-datum149842_
                  (lambda (_e149866_ _marks149867_)
                    (_wrap-inner149844_
                     _e149866_
                     (lambda (_g149868149870_)
                       (##structure
                        gx#identifier-wrap::t
                        _g149868149870_
                        _src149839_
                        _marks149867_)))))
                 (_wrap-quote149843_
                  (lambda (_e149858_ _ctx149859_ _marks149860_)
                    (_wrap-inner149844_
                     _e149858_
                     (lambda (_g149861149863_)
                       (##structure
                        gx#syntax-quote::t
                        _g149861149863_
                        _src149839_
                        _ctx149859_
                        _marks149860_)))))
                 (_wrap-inner149844_
                  (lambda (_e149851_ _wrap-e149852_)
                    (let _recur149854_ ((_e149856_ _e149851_))
                      (if (symbol? _e149856_)
                          (_wrap-e149852_ _e149856_)
                          (if (pair? _e149856_)
                              (cons (_recur149854_ (car _e149856_))
                                    (_recur149854_ (cdr _e149856_)))
                              (if (vector? _e149856_)
                                  (vector-map _recur149854_ _e149856_)
                                  (if (box? _e149856_)
                                      (box (_recur149854_ (unbox _e149856_)))
                                      _e149856_)))))))
                 (_wrap-outer149845_
                  (lambda (_e149849_)
                    (if (##structure-instance-of? _e149849_ 'gerbil#AST::t)
                        _e149849_
                        (##structure gx#AST::t _e149849_ _src149839_)))))
          (if (##structure-instance-of? _datum149838_ 'gerbil#AST::t)
              _datum149838_
              (if (not _stx149837_)
                  (##structure gx#AST::t _datum149838_ _src149839_)
                  (if (gx#identifier? _stx149837_)
                      (let ((_stx149847_ (gx#stx-unwrap__0 _stx149837_)))
                        (_wrap-outer149845_
                         (if (##structure-direct-instance-of?
                              _stx149847_
                              'gx#syntax-quote::t)
                             (if _quote?149840_
                                 (_wrap-quote149843_
                                  _datum149838_
                                  (##unchecked-structure-ref
                                   _stx149847_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx149847_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum149842_
                                  _datum149838_
                                  (##unchecked-structure-ref
                                   _stx149847_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum149842_
                              _datum149838_
                              (##unchecked-structure-ref
                               _stx149847_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx149837_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx149876_ _datum149877_)
        (let* ((_src149879_ '#f) (_quote?149881_ '#t))
          (gx#datum->syntax__%
           _stx149876_
           _datum149877_
           _src149879_
           _quote?149881_))))
    (define gx#datum->syntax__1
      (lambda (_stx149883_ _datum149884_ _src149885_)
        (let ((_quote?149887_ '#t))
          (gx#datum->syntax__%
           _stx149883_
           _datum149884_
           _src149885_
           _quote?149887_))))
    (define gx#datum->syntax
      (lambda _g154075_
        (let ((_g154074_ (##length _g154075_)))
          (cond ((##fx= _g154074_ 2)
                 (apply (lambda (_stx149876_ _datum149877_)
                          (gx#datum->syntax__0 _stx149876_ _datum149877_))
                        _g154075_))
                ((##fx= _g154074_ 3)
                 (apply (lambda (_stx149883_ _datum149884_ _src149885_)
                          (gx#datum->syntax__1
                           _stx149883_
                           _datum149884_
                           _src149885_))
                        _g154075_))
                ((##fx= _g154074_ 4)
                 (apply (lambda (_stx149889_
                                 _datum149890_
                                 _src149891_
                                 _quote?149892_)
                          (gx#datum->syntax__%
                           _stx149889_
                           _datum149890_
                           _src149891_
                           _quote?149892_))
                        _g154075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g154075_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx149813_ _marks149814_)
        (let _lp149816_ ((_e149818_ _stx149813_)
                         (_marks149819_ _marks149814_)
                         (_src149820_ (gx#stx-source _stx149813_)))
          (if (##structure-direct-instance-of? _e149818_ 'gx#syntax-wrap::t)
              (_lp149816_
               (##unchecked-structure-ref _e149818_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e149818_ '3 gx#syntax-wrap::t '#f)
                _marks149819_)
               (##unchecked-structure-ref _e149818_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e149818_
                   'gx#identifier-wrap::t)
                  (if (null? _marks149819_)
                      _e149818_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e149818_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e149818_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e149818_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks149819_)))
                  (if (##structure-direct-instance-of?
                       _e149818_
                       'gx#syntax-quote::t)
                      _e149818_
                      (if (##structure-instance-of? _e149818_ 'gerbil#AST::t)
                          (_lp149816_
                           (##unchecked-structure-ref
                            _e149818_
                            '1
                            gx#AST::t
                            '#f)
                           _marks149819_
                           (##unchecked-structure-ref
                            _e149818_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e149818_)
                              (##structure
                               gx#identifier-wrap::t
                               _e149818_
                               _src149820_
                               (reverse _marks149819_))
                              (if (null? _marks149819_)
                                  _e149818_
                                  (if (pair? _e149818_)
                                      (cons (gx#stx-wrap
                                             (car _e149818_)
                                             _marks149819_)
                                            (gx#stx-wrap
                                             (cdr _e149818_)
                                             _marks149819_))
                                      (if (vector? _e149818_)
                                          (vector-map
                                           (lambda (_g149821149823_)
                                             (gx#stx-wrap
                                              _g149821149823_
                                              _marks149819_))
                                           _e149818_)
                                          (if (box? _e149818_)
                                              (box (gx#stx-wrap
                                                    (unbox _e149818_)
                                                    _marks149819_))
                                              _e149818_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx149829_)
        (let ((_marks149831_ '()))
          (gx#stx-unwrap__% _stx149829_ _marks149831_))))
    (define gx#stx-unwrap
      (lambda _g154077_
        (let ((_g154076_ (##length _g154077_)))
          (cond ((##fx= _g154076_ 1)
                 (apply (lambda (_stx149829_) (gx#stx-unwrap__0 _stx149829_))
                        _g154077_))
                ((##fx= _g154076_ 2)
                 (apply (lambda (_stx149833_ _marks149834_)
                          (gx#stx-unwrap__% _stx149833_ _marks149834_))
                        _g154077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g154077_))))))
    (define gx#stx-wrap
      (lambda (_stx149806_ _marks149807_)
        (foldl1 (lambda (_mark149809_ _stx149810_)
                  (gx#stx-apply-mark _stx149810_ _mark149809_))
                _stx149806_
                _marks149807_)))
    (define gx#stx-rewrap
      (lambda (_stx149800_ _marks149801_)
        (foldr1 (lambda (_mark149803_ _stx149804_)
                  (gx#stx-apply-mark _stx149804_ _mark149803_))
                _stx149800_
                _marks149801_)))
    (define gx#stx-apply-mark
      (lambda (_stx149797_ _mark149798_)
        (if (##structure-direct-instance-of? _stx149797_ 'gx#syntax-quote::t)
            _stx149797_
            (if (and (##structure-direct-instance-of?
                      _stx149797_
                      'gx#syntax-wrap::t)
                     (eq? _mark149798_
                          (##unchecked-structure-ref
                           _stx149797_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx149797_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx149797_
                 (gx#stx-source _stx149797_)
                 _mark149798_)))))
    (define gx#apply-mark
      (lambda (_mark149761_ _marks149762_)
        (let* ((_marks149763149771_ _marks149762_)
               (_else149765149779_
                (lambda () (cons _mark149761_ _marks149762_)))
               (_K149767149785_
                (lambda (_rest149782_ _hd149783_)
                  (if (eq? _mark149761_ _hd149783_)
                      _rest149782_
                      (cons _mark149761_ _marks149762_)))))
          (if (##pair? _marks149763149771_)
              (let ((_hd149768149788_ (##car _marks149763149771_))
                    (_tl149769149790_ (##cdr _marks149763149771_)))
                (let* ((_hd149793_ _hd149768149788_)
                       (_rest149795_ _tl149769149790_))
                  (_K149767149785_ _rest149795_ _hd149793_)))
              (_else149765149779_)))))
    (define gx#stx-e
      (lambda (_stx149759_)
        (if (##structure-direct-instance-of? _stx149759_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx149759_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx149759_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx149759_ '1 gx#AST::t '#f)
                _stx149759_))))
    (define gx#stx-source
      (lambda (_stx149757_)
        (if (##structure-instance-of? _stx149757_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx149757_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx149751_ _src149752_)
        (if (or (##structure-instance-of? _stx149751_ 'gerbil#AST::t)
                (not _src149752_))
            _stx149751_
            (##structure gx#AST::t _stx149751_ _src149752_))))
    (define gx#stx-datum?
      (lambda (_stx149749_) (gx#self-quoting? (gx#stx-e _stx149749_))))
    (define gx#self-quoting?
      (lambda (_x149732_)
        (let ((_$e149734_ (immediate? _x149732_)))
          (if _$e149734_
              _$e149734_
              (let ((_$e149737_ (number? _x149732_)))
                (if _$e149737_
                    _$e149737_
                    (let ((_$e149740_ (keyword? _x149732_)))
                      (if _$e149740_
                          _$e149740_
                          (let ((_$e149743_ (string? _x149732_)))
                            (if _$e149743_
                                _$e149743_
                                (let ((_$e149746_ (vector? _x149732_)))
                                  (if _$e149746_
                                      _$e149746_
                                      (u8vector? _x149732_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_e149730_) (boolean? (gx#stx-e _e149730_))))
    (define gx#stx-keyword?
      (lambda (_e149728_) (keyword? (gx#stx-e _e149728_))))
    (define gx#stx-char? (lambda (_e149726_) (char? (gx#stx-e _e149726_))))
    (define gx#stx-number? (lambda (_e149724_) (number? (gx#stx-e _e149724_))))
    (define gx#stx-fixnum? (lambda (_e149722_) (fixnum? (gx#stx-e _e149722_))))
    (define gx#stx-string? (lambda (_e149720_) (string? (gx#stx-e _e149720_))))
    (define gx#stx-null? (lambda (_e149718_) (null? (gx#stx-e _e149718_))))
    (define gx#stx-pair? (lambda (_e149716_) (pair? (gx#stx-e _e149716_))))
    (define gx#stx-list?
      (lambda (_e149678_)
        (let* ((_g149679149688_ (gx#stx-e _e149678_))
               (_E149682149692_
                (lambda () (error '"No clause matching" _g149679149688_))))
          (let ((_K149684149708_
                 (lambda (_rest149706_) (gx#stx-list? _rest149706_)))
                (_K149683149698_ (lambda (_tail149696_) (null? _tail149696_))))
            (if (##pair? _g149679149688_)
                (let* ((_tl149686149711_ (##cdr _g149679149688_))
                       (_rest149714_ _tl149686149711_))
                  (gx#stx-list? _rest149714_))
                (let ((_tail149701_ _g149679149688_))
                  (null? _tail149701_)))))))
    (define gx#stx-pair/null?
      (lambda (_e149671_)
        (let* ((_e149673_ (gx#stx-e _e149671_)) (_$e149675_ (pair? _e149673_)))
          (if _$e149675_ _$e149675_ (null? _e149673_)))))
    (define gx#stx-vector? (lambda (_e149669_) (vector? (gx#stx-e _e149669_))))
    (define gx#stx-box? (lambda (_e149667_) (box? (gx#stx-e _e149667_))))
    (define gx#stx-eq?
      (lambda (_x149664_ _y149665_)
        (eq? (gx#stx-e _x149664_) (gx#stx-e _y149665_))))
    (define gx#stx-eqv?
      (lambda (_x149661_ _y149662_)
        (eqv? (gx#stx-e _x149661_) (gx#stx-e _y149662_))))
    (define gx#stx-equal?
      (lambda (_x149658_ _y149659_)
        (equal? (gx#stx-e _x149658_) (gx#stx-e _y149659_))))
    (define gx#stx-false? (lambda (_x149656_) (not (gx#stx-e _x149656_))))
    (define gx#stx-identifier
      (lambda (_template149653_ . _args149654_)
        (gx#datum->syntax__1
         _template149653_
         (apply make-symbol (gx#syntax->datum _args149654_))
         (gx#stx-source _template149653_))))
    (define gx#stx-identifier-marks
      (lambda (_stx149651_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx149651_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx149649_)
        (if (##structure-direct-instance-of?
             _stx149649_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref
             _stx149649_
             '3
             gx#identifier-wrap::t
             '#f)
            (if (##structure-direct-instance-of?
                 _stx149649_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx149649_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx149649_)))))
    (define gx#stx-identifier-context
      (lambda (_stx149645_)
        (let ((_stx149647_ (gx#stx-unwrap__0 _stx149645_)))
          (if (gx#identifier-quote? _stx149647_)
              (##unchecked-structure-ref _stx149647_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx149600_)
        (let* ((_g149601149611_ (gx#stx-e _stx149600_))
               (_else149604149619_ (lambda () '#f)))
          (let ((_K149607149633_
                 (lambda (_rest149630_ _hd149631_)
                   (if (gx#identifier? _hd149631_)
                       (gx#identifier-list? _rest149630_)
                       '#f)))
                (_K149606149624_ (lambda () '#t)))
            (let ((_try-match149603149627_
                   (lambda ()
                     (if (##null? _g149601149611_)
                         (_K149606149624_)
                         (_else149604149619_)))))
              (if (##pair? _g149601149611_)
                  (let ((_tl149609149638_ (##cdr _g149601149611_))
                        (_hd149608149636_ (##car _g149601149611_)))
                    (let ((_hd149641_ _hd149608149636_)
                          (_rest149643_ _tl149609149638_))
                      (_K149607149633_ _rest149643_ _hd149641_)))
                  (_try-match149603149627_)))))))
    (define gx#genident__%
      (lambda (_e149577_ _src149578_)
        (gx#stx-wrap-source
         (gensym (let ((_e149580_ (gx#stx-e _e149577_)))
                   (if (interned-symbol? _e149580_) _e149580_ 'g)))
         (let ((_$e149582_ (gx#stx-source _e149577_)))
           (if _$e149582_ _$e149582_ _src149578_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e149589_ 'g) (_src149591_ '#f))
          (gx#genident__% _e149589_ _src149591_))))
    (define gx#genident__1
      (lambda (_e149593_)
        (let ((_src149595_ '#f)) (gx#genident__% _e149593_ _src149595_))))
    (define gx#genident
      (lambda _g154079_
        (let ((_g154078_ (##length _g154079_)))
          (cond ((##fx= _g154078_ 0)
                 (apply (lambda () (gx#genident__0)) _g154079_))
                ((##fx= _g154078_ 1)
                 (apply (lambda (_e149593_) (gx#genident__1 _e149593_))
                        _g154079_))
                ((##fx= _g154078_ 2)
                 (apply (lambda (_e149597_ _src149598_)
                          (gx#genident__% _e149597_ _src149598_))
                        _g154079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g154079_))))))
    (define gx#gentemps
      (lambda (_stx-lst149574_) (gx#stx-map1 gx#genident _stx-lst149574_)))
    (define gx#syntax->list
      (lambda (_stx149572_) (gx#stx-map1 values _stx149572_)))
    (define gx#stx-car
      (lambda (_stx149569_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx149569_)))))
    (define gx#stx-cdr
      (lambda (_stx149566_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx149566_)))))
    (define gx#stx-length
      (lambda (_stx149531_)
        (let _lp149533_ ((_rest149535_ _stx149531_) (_n149536_ '0))
          (let* ((_g149537149545_ (gx#stx-e _rest149535_))
                 (_else149539149553_ (lambda () _n149536_))
                 (_K149541149558_
                  (lambda (_rest149556_)
                    (_lp149533_ _rest149556_ (fx+ _n149536_ '1)))))
            (if (##pair? _g149537149545_)
                (let* ((_tl149543149561_ (##cdr _g149537149545_))
                       (_rest149564_ _tl149543149561_))
                  (_K149541149558_ _rest149564_))
                (_else149539149553_))))))
    (define gx#stx-for-each
      (lambda _g154081_
        (let ((_g154080_ (##length _g154081_)))
          (cond ((##fx= _g154080_ 2)
                 (apply (lambda (_f149524_ _stx149525_)
                          (gx#stx-for-each1 _f149524_ _stx149525_))
                        _g154081_))
                ((##fx= _g154080_ 3)
                 (apply (lambda (_f149527_ _xstx149528_ _ystx149529_)
                          (gx#stx-for-each2
                           _f149527_
                           _xstx149528_
                           _ystx149529_))
                        _g154081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g154081_))))))
    (define gx#stx-for-each1
      (lambda (_f149474_ _stx149475_)
        (if (procedure? _f149474_)
            '#!void
            (error '"expected procedure" _f149474_))
        (let _lp149477_ ((_rest149479_ _stx149475_))
          (let* ((_g149480149490_ (gx#syntax-e _rest149479_))
                 (_else149483149498_ (lambda () (_f149474_ _rest149479_))))
            (let ((_K149486149512_
                   (lambda (_rest149509_ _hd149510_)
                     (_f149474_ _hd149510_)
                     (_lp149477_ _rest149509_)))
                  (_K149485149503_ (lambda () '#!void)))
              (let ((_try-match149482149506_
                     (lambda ()
                       (if (##null? _g149480149490_)
                           (_K149485149503_)
                           (_else149483149498_)))))
                (if (##pair? _g149480149490_)
                    (let ((_tl149488149517_ (##cdr _g149480149490_))
                          (_hd149487149515_ (##car _g149480149490_)))
                      (let ((_hd149520_ _hd149487149515_)
                            (_rest149522_ _tl149488149517_))
                        (_K149486149512_ _rest149522_ _hd149520_)))
                    (_try-match149482149506_))))))))
    (define gx#stx-for-each2
      (lambda (_f149379_ _xstx149380_ _ystx149381_)
        (if (procedure? _f149379_)
            '#!void
            (error '"expected procedure" _f149379_))
        (let _lp149383_ ((_xrest149385_ _xstx149380_)
                         (_yrest149386_ _ystx149381_))
          (let* ((_g149387149397_ (gx#syntax-e _xrest149385_))
                 (_else149390149405_ (lambda () '#!void)))
            (let ((_K149393149462_
                   (lambda (_xrest149431_ _xhd149432_)
                     (let* ((_g149433149440_ (gx#syntax-e _yrest149386_))
                            (_E149435149444_
                             (lambda ()
                               (error '"No clause matching" _g149433149440_)))
                            (_K149436149450_
                             (lambda (_yrest149447_ _yhd149448_)
                               (_f149379_ _xhd149432_ _yhd149448_)
                               (_lp149383_ _xrest149431_ _yrest149447_))))
                       (if (##pair? _g149433149440_)
                           (let ((_hd149437149453_ (##car _g149433149440_))
                                 (_tl149438149455_ (##cdr _g149433149440_)))
                             (let* ((_yhd149458_ _hd149437149453_)
                                    (_yrest149460_ _tl149438149455_))
                               (_K149436149450_ _yrest149460_ _yhd149458_)))
                           (_E149435149444_)))))
                  (_K149392149425_
                   (lambda ()
                     (let* ((_yrest149409149414_ _yrest149386_)
                            (_E149411149418_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest149409149414_)))
                            (_K149412149422_
                             (lambda ()
                               (_f149379_ _xrest149385_ _yrest149386_))))
                       (if (not (gx#stx-null? _yrest149409149414_))
                           (_K149412149422_)
                           (_E149411149418_))))))
              (let ((_try-match149389149428_
                     (lambda ()
                       (if (not (null? _g149387149397_))
                           (_K149392149425_)
                           (_else149390149405_)))))
                (if (##pair? _g149387149397_)
                    (let ((_tl149395149467_ (##cdr _g149387149397_))
                          (_hd149394149465_ (##car _g149387149397_)))
                      (let ((_xhd149470_ _hd149394149465_)
                            (_xrest149472_ _tl149395149467_))
                        (_K149393149462_ _xrest149472_ _xhd149470_)))
                    (_try-match149389149428_))))))))
    (define gx#stx-map
      (lambda _g154083_
        (let ((_g154082_ (##length _g154083_)))
          (cond ((##fx= _g154082_ 2)
                 (apply (lambda (_f149372_ _stx149373_)
                          (gx#stx-map1 _f149372_ _stx149373_))
                        _g154083_))
                ((##fx= _g154082_ 3)
                 (apply (lambda (_f149375_ _xstx149376_ _ystx149377_)
                          (gx#stx-map2 _f149375_ _xstx149376_ _ystx149377_))
                        _g154083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g154083_))))))
    (define gx#stx-map1
      (lambda (_f149322_ _stx149323_)
        (if (procedure? _f149322_)
            '#!void
            (error '"expected procedure" _f149322_))
        (let _recur149325_ ((_rest149327_ _stx149323_))
          (let* ((_g149328149338_ (gx#syntax-e _rest149327_))
                 (_else149331149346_ (lambda () (_f149322_ _rest149327_))))
            (let ((_K149334149360_
                   (lambda (_rest149357_ _hd149358_)
                     (cons (_f149322_ _hd149358_)
                           (_recur149325_ _rest149357_))))
                  (_K149333149351_ (lambda () '())))
              (let ((_try-match149330149354_
                     (lambda ()
                       (if (##null? _g149328149338_)
                           (_K149333149351_)
                           (_else149331149346_)))))
                (if (##pair? _g149328149338_)
                    (let ((_tl149336149365_ (##cdr _g149328149338_))
                          (_hd149335149363_ (##car _g149328149338_)))
                      (let ((_hd149368_ _hd149335149363_)
                            (_rest149370_ _tl149336149365_))
                        (_K149334149360_ _rest149370_ _hd149368_)))
                    (_try-match149330149354_))))))))
    (define gx#stx-map2
      (lambda (_f149227_ _xstx149228_ _ystx149229_)
        (if (procedure? _f149227_)
            '#!void
            (error '"expected procedure" _f149227_))
        (let _recur149231_ ((_xrest149233_ _xstx149228_)
                            (_yrest149234_ _ystx149229_))
          (let* ((_g149235149245_ (gx#syntax-e _xrest149233_))
                 (_else149238149253_ (lambda () '())))
            (let ((_K149241149310_
                   (lambda (_xrest149279_ _xhd149280_)
                     (let* ((_g149281149288_ (gx#syntax-e _yrest149234_))
                            (_E149283149292_
                             (lambda ()
                               (error '"No clause matching" _g149281149288_)))
                            (_K149284149298_
                             (lambda (_yrest149295_ _yhd149296_)
                               (cons (_f149227_ _xhd149280_ _yhd149296_)
                                     (_recur149231_
                                      _xrest149279_
                                      _yrest149295_)))))
                       (if (##pair? _g149281149288_)
                           (let ((_hd149285149301_ (##car _g149281149288_))
                                 (_tl149286149303_ (##cdr _g149281149288_)))
                             (let* ((_yhd149306_ _hd149285149301_)
                                    (_yrest149308_ _tl149286149303_))
                               (_K149284149298_ _yrest149308_ _yhd149306_)))
                           (_E149283149292_)))))
                  (_K149240149273_
                   (lambda ()
                     (let* ((_yrest149257149262_ _yrest149234_)
                            (_E149259149266_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest149257149262_)))
                            (_K149260149270_
                             (lambda ()
                               (_f149227_ _xrest149233_ _yrest149234_))))
                       (if (not (gx#stx-null? _yrest149257149262_))
                           (_K149260149270_)
                           (_E149259149266_))))))
              (let ((_try-match149237149276_
                     (lambda ()
                       (if (not (null? _g149235149245_))
                           (_K149240149273_)
                           (_else149238149253_)))))
                (if (##pair? _g149235149245_)
                    (let ((_tl149243149315_ (##cdr _g149235149245_))
                          (_hd149242149313_ (##car _g149235149245_)))
                      (let ((_xhd149318_ _hd149242149313_)
                            (_xrest149320_ _tl149243149315_))
                        (_K149241149310_ _xrest149320_ _xhd149318_)))
                    (_try-match149237149276_))))))))
    (define gx#stx-andmap
      (lambda (_f149177_ _stx149178_)
        (if (procedure? _f149177_)
            '#!void
            (error '"expected procedure" _f149177_))
        (let _lp149180_ ((_rest149182_ _stx149178_))
          (let* ((_g149183149193_ (gx#syntax-e _rest149182_))
                 (_else149186149201_ (lambda () (_f149177_ _rest149182_))))
            (let ((_K149189149215_
                   (lambda (_rest149212_ _hd149213_)
                     (if (_f149177_ _hd149213_)
                         (_lp149180_ _rest149212_)
                         '#f)))
                  (_K149188149206_ (lambda () '#t)))
              (let ((_try-match149185149209_
                     (lambda ()
                       (if (##null? _g149183149193_)
                           (_K149188149206_)
                           (_else149186149201_)))))
                (if (##pair? _g149183149193_)
                    (let ((_tl149191149220_ (##cdr _g149183149193_))
                          (_hd149190149218_ (##car _g149183149193_)))
                      (let ((_hd149223_ _hd149190149218_)
                            (_rest149225_ _tl149191149220_))
                        (_K149189149215_ _rest149225_ _hd149223_)))
                    (_try-match149185149209_))))))))
    (define gx#stx-ormap
      (lambda (_f149124_ _stx149125_)
        (if (procedure? _f149124_)
            '#!void
            (error '"expected procedure" _f149124_))
        (let _lp149127_ ((_rest149129_ _stx149125_))
          (let* ((_g149130149140_ (gx#syntax-e _rest149129_))
                 (_else149133149148_ (lambda () (_f149124_ _rest149129_))))
            (let ((_K149136149165_
                   (lambda (_rest149159_ _hd149160_)
                     (let ((_$e149162_ (_f149124_ _hd149160_)))
                       (if _$e149162_ _$e149162_ (_lp149127_ _rest149159_)))))
                  (_K149135149153_ (lambda () '#f)))
              (let ((_try-match149132149156_
                     (lambda ()
                       (if (##null? _g149130149140_)
                           (_K149135149153_)
                           (_else149133149148_)))))
                (if (##pair? _g149130149140_)
                    (let ((_tl149138149170_ (##cdr _g149130149140_))
                          (_hd149137149168_ (##car _g149130149140_)))
                      (let ((_hd149173_ _hd149137149168_)
                            (_rest149175_ _tl149138149170_))
                        (_K149136149165_ _rest149175_ _hd149173_)))
                    (_try-match149132149156_))))))))
    (define gx#stx-foldl
      (lambda (_f149072_ _iv149073_ _stx149074_)
        (if (procedure? _f149072_)
            '#!void
            (error '"expected procedure" _f149072_))
        (let _lp149076_ ((_r149078_ _iv149073_) (_rest149079_ _stx149074_))
          (let* ((_g149080149090_ (gx#syntax-e _rest149079_))
                 (_else149083149098_
                  (lambda () (_f149072_ _rest149079_ _r149078_))))
            (let ((_K149086149112_
                   (lambda (_rest149109_ _hd149110_)
                     (_lp149076_
                      (_f149072_ _hd149110_ _r149078_)
                      _rest149109_)))
                  (_K149085149103_ (lambda () _r149078_)))
              (let ((_try-match149082149106_
                     (lambda ()
                       (if (##null? _g149080149090_)
                           (_K149085149103_)
                           (_else149083149098_)))))
                (if (##pair? _g149080149090_)
                    (let ((_tl149088149117_ (##cdr _g149080149090_))
                          (_hd149087149115_ (##car _g149080149090_)))
                      (let ((_hd149120_ _hd149087149115_)
                            (_rest149122_ _tl149088149117_))
                        (_K149086149112_ _rest149122_ _hd149120_)))
                    (_try-match149082149106_))))))))
    (define gx#stx-foldr
      (lambda (_f149021_ _iv149022_ _stx149023_)
        (if (procedure? _f149021_)
            '#!void
            (error '"expected procedure" _f149021_))
        (let _recur149025_ ((_rest149027_ _stx149023_))
          (let* ((_g149028149038_ (gx#syntax-e _rest149027_))
                 (_else149031149046_
                  (lambda () (_f149021_ _rest149027_ _iv149022_))))
            (let ((_K149034149060_
                   (lambda (_rest149057_ _hd149058_)
                     (_f149021_ _hd149058_ (_recur149025_ _rest149057_))))
                  (_K149033149051_ (lambda () _iv149022_)))
              (let ((_try-match149030149054_
                     (lambda ()
                       (if (##null? _g149028149038_)
                           (_K149033149051_)
                           (_else149031149046_)))))
                (if (##pair? _g149028149038_)
                    (let ((_tl149036149065_ (##cdr _g149028149038_))
                          (_hd149035149063_ (##car _g149028149038_)))
                      (let ((_hd149068_ _hd149035149063_)
                            (_rest149070_ _tl149036149065_))
                        (_K149034149060_ _rest149070_ _hd149068_)))
                    (_try-match149030149054_))))))))
    (define gx#stx-reverse
      (lambda (_stx149019_) (gx#stx-foldl cons '() _stx149019_)))
    (define gx#stx-last
      (lambda (_stx148980_)
        (let _lp148982_ ((_rest148984_ _stx148980_))
          (let* ((_g148985148993_ (gx#syntax-e _rest148984_))
                 (_else148987149001_ (lambda () _rest148984_))
                 (_K148989149007_
                  (lambda (_rest149004_ _hd149005_)
                    (if (gx#stx-null? _rest149004_)
                        _hd149005_
                        (_lp148982_ _rest149004_)))))
            (if (##pair? _g148985148993_)
                (let ((_hd148990149010_ (##car _g148985148993_))
                      (_tl148991149012_ (##cdr _g148985148993_)))
                  (let* ((_hd149015_ _hd148990149010_)
                         (_rest149017_ _tl148991149012_))
                    (_K148989149007_ _rest149017_ _hd149015_)))
                (_else148987149001_))))))
    (define gx#stx-last-pair
      (lambda (_stx148951_)
        (let _lp148953_ ((_hd148955_ _stx148951_))
          (let* ((_g148956148963_ (gx#syntax-e _hd148955_))
                 (_E148958148967_
                  (lambda () (error '"No clause matching" _g148956148963_)))
                 (_K148959148972_
                  (lambda (_rest148970_)
                    (if (gx#stx-pair? _rest148970_)
                        (_lp148953_ _rest148970_)
                        _hd148955_))))
            (if (##pair? _g148956148963_)
                (let* ((_tl148961148975_ (##cdr _g148956148963_))
                       (_rest148978_ _tl148961148975_))
                  (_K148959148972_ _rest148978_))
                (_E148958148967_))))))
    (define gx#stx-list-tail
      (lambda (_stx148920_ _k148921_)
        (let _lp148923_ ((_rest148925_ _stx148920_) (_k148926_ _k148921_))
          (if (fxpositive? _k148926_)
              (let* ((_g148927148934_ (gx#syntax-e _rest148925_))
                     (_E148929148938_
                      (lambda ()
                        (error '"No clause matching" _g148927148934_)))
                     (_K148930148943_
                      (lambda (_rest148941_)
                        (_lp148923_ _rest148941_ (fx- _k148926_ '1)))))
                (if (##pair? _g148927148934_)
                    (let* ((_tl148932148946_ (##cdr _g148927148934_))
                           (_rest148949_ _tl148932148946_))
                      (_K148930148943_ _rest148949_))
                    (_E148929148938_)))
              _rest148925_))))
    (define gx#stx-list-ref
      (lambda (_stx148917_ _k148918_)
        (gx#stx-car (gx#stx-list-tail _stx148917_ _k148918_))))
    (define gx#stx-plist?__%
      (lambda (_stx148829_ _key?148830_)
        (if (procedure? _key?148830_)
            '#!void
            (error '"expected procedure" _key?148830_))
        (let _lp148832_ ((_rest148834_ _stx148829_))
          (let* ((_g148835148845_ (gx#stx-e _rest148834_))
                 (_else148838148853_ (lambda () '#f)))
            (let ((_K148841148895_
                   (lambda (_rest148864_ _hd148865_)
                     (if (_key?148830_ _hd148865_)
                         (let* ((_g148866148874_ (gx#stx-e _rest148864_))
                                (_else148868148882_ (lambda () '#f))
                                (_K148870148887_
                                 (lambda (_rest148885_)
                                   (_lp148832_ _rest148885_))))
                           (if (##pair? _g148866148874_)
                               (let* ((_tl148872148890_
                                       (##cdr _g148866148874_))
                                      (_rest148893_ _tl148872148890_))
                                 (_lp148832_ _rest148893_))
                               (_else148868148882_)))
                         '#f)))
                  (_K148840148858_ (lambda () '#t)))
              (let ((_try-match148837148861_
                     (lambda ()
                       (if (##null? _g148835148845_)
                           (_K148840148858_)
                           (_else148838148853_)))))
                (if (##pair? _g148835148845_)
                    (let ((_tl148843148900_ (##cdr _g148835148845_))
                          (_hd148842148898_ (##car _g148835148845_)))
                      (let ((_hd148903_ _hd148842148898_)
                            (_rest148905_ _tl148843148900_))
                        (_K148841148895_ _rest148905_ _hd148903_)))
                    (_try-match148837148861_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx148910_)
        (let ((_key?148912_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx148910_ _key?148912_))))
    (define gx#stx-plist?
      (lambda _g154085_
        (let ((_g154084_ (##length _g154085_)))
          (cond ((##fx= _g154084_ 1)
                 (apply (lambda (_stx148910_) (gx#stx-plist?__0 _stx148910_))
                        _g154085_))
                ((##fx= _g154084_ 2)
                 (apply (lambda (_stx148914_ _key?148915_)
                          (gx#stx-plist?__% _stx148914_ _key?148915_))
                        _g154085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g154085_))))))
    (define gx#stx-getq__%
      (lambda (_key148747_ _stx148748_ _key=?148749_)
        (if (procedure? _key=?148749_)
            '#!void
            (error '"expected procedure" _key=?148749_))
        (let _lp148751_ ((_rest148753_ _stx148748_))
          (let* ((_g148754148762_ (gx#syntax-e _rest148753_))
                 (_else148756148770_ (lambda () '#f))
                 (_K148758148804_
                  (lambda (_rest148773_ _hd148774_)
                    (let* ((_g148775148782_ (gx#syntax-e _rest148773_))
                           (_E148777148786_
                            (lambda ()
                              (error '"No clause matching" _g148775148782_)))
                           (_K148778148792_
                            (lambda (_rest148789_ _val148790_)
                              (if (_key=?148749_ _hd148774_ _key148747_)
                                  _val148790_
                                  (_lp148751_ _rest148789_)))))
                      (if (##pair? _g148775148782_)
                          (let ((_hd148779148795_ (##car _g148775148782_))
                                (_tl148780148797_ (##cdr _g148775148782_)))
                            (let* ((_val148800_ _hd148779148795_)
                                   (_rest148802_ _tl148780148797_))
                              (_K148778148792_ _rest148802_ _val148800_)))
                          (_E148777148786_))))))
            (if (##pair? _g148754148762_)
                (let ((_hd148759148807_ (##car _g148754148762_))
                      (_tl148760148809_ (##cdr _g148754148762_)))
                  (let* ((_hd148812_ _hd148759148807_)
                         (_rest148814_ _tl148760148809_))
                    (_K148758148804_ _rest148814_ _hd148812_)))
                (_else148756148770_))))))
    (define gx#stx-getq__0
      (lambda (_key148819_ _stx148820_)
        (let ((_key=?148822_ gx#stx-eq?))
          (gx#stx-getq__% _key148819_ _stx148820_ _key=?148822_))))
    (define gx#stx-getq
      (lambda _g154087_
        (let ((_g154086_ (##length _g154087_)))
          (cond ((##fx= _g154086_ 2)
                 (apply (lambda (_key148819_ _stx148820_)
                          (gx#stx-getq__0 _key148819_ _stx148820_))
                        _g154087_))
                ((##fx= _g154086_ 3)
                 (apply (lambda (_key148824_ _stx148825_ _key=?148826_)
                          (gx#stx-getq__%
                           _key148824_
                           _stx148825_
                           _key=?148826_))
                        _g154087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g154087_))))))))
