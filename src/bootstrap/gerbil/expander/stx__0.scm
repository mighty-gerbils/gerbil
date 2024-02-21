(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1708510101)
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
      (lambda _$args80806_
        (apply make-instance gx#identifier-wrap::t _$args80806_)))
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
      (lambda _$args80803_
        (apply make-instance gx#syntax-wrap::t _$args80803_)))
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
      (lambda _$args80800_
        (apply make-instance gx#syntax-quote::t _$args80800_)))
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
      (lambda (_stx80798_) (symbol? (gx#stx-e _stx80798_))))
    (define gx#identifier-quote?
      (lambda (_stx80796_)
        (if (##structure-direct-instance-of? _stx80796_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx80796_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx80794_)
        (if (##structure-direct-instance-of? _stx80794_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx80794_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx80794_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx80792_)
        (if (##structure-direct-instance-of? _stx80792_ 'gx#syntax-quote::t)
            _stx80792_
            (if (##structure-direct-instance-of? _stx80792_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx80792_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx80775_)
        (if (##structure-direct-instance-of? _stx80775_ 'gx#syntax-wrap::t)
            (let _lp80777_ ((_e80779_
                             (##unchecked-structure-ref
                              _stx80775_
                              '1
                              gx#AST::t
                              '#f))
                            (_marks80780_
                             (cons (##unchecked-structure-ref
                                    _stx80775_
                                    '3
                                    gx#syntax-wrap::t
                                    '#f)
                                   '())))
              (if (##structure? _e80779_)
                  (let ((_$e80782_ (##type-id (##structure-type _e80779_))))
                    (if (eq? 'gx#syntax-wrap::t _$e80782_)
                        (_lp80777_
                         (##unchecked-structure-ref _e80779_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e80779_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks80780_))
                        (if (or (eq? 'gx#syntax-quote::t _$e80782_)
                                (eq? 'gx#identifier-wrap::t _$e80782_))
                            (##unchecked-structure-ref
                             _e80779_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e80782_)
                                (_lp80777_
                                 (##unchecked-structure-ref
                                  _e80779_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks80780_)
                                _e80779_))))
                  (if (null? _marks80780_)
                      _e80779_
                      (if (pair? _e80779_)
                          (cons (gx#stx-wrap (car _e80779_) _marks80780_)
                                (gx#stx-wrap (cdr _e80779_) _marks80780_))
                          (if (vector? _e80779_)
                              (vector-map
                               (lambda (_g8078780789_)
                                 (gx#stx-wrap _g8078780789_ _marks80780_))
                               _e80779_)
                              (if (box? _e80779_)
                                  (box (gx#stx-wrap
                                        (unbox _e80779_)
                                        _marks80780_))
                                  _e80779_))))))
            (if (##structure-instance-of? _stx80775_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80775_ '1 gx#AST::t '#f)
                _stx80775_))))
    (define gx#syntax->datum
      (lambda (_stx80773_)
        (if (##structure-instance-of? _stx80773_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx80773_ '1 gx#AST::t '#f))
            (if (pair? _stx80773_)
                (cons (gx#syntax->datum (car _stx80773_))
                      (gx#syntax->datum (cdr _stx80773_)))
                (if (vector? _stx80773_)
                    (vector-map gx#syntax->datum _stx80773_)
                    (if (box? _stx80773_)
                        (box (gx#syntax->datum (unbox _stx80773_)))
                        _stx80773_))))))
    (define gx#datum->syntax__%
      (lambda (_stx80716_ _datum80717_ _src80718_ _quote?80719_)
        (letrec ((_wrap-datum80721_
                  (lambda (_e80745_ _marks80746_)
                    (_wrap-inner80723_
                     _e80745_
                     (lambda (_g8074780749_)
                       (##structure
                        gx#identifier-wrap::t
                        _g8074780749_
                        _src80718_
                        _marks80746_)))))
                 (_wrap-quote80722_
                  (lambda (_e80737_ _ctx80738_ _marks80739_)
                    (_wrap-inner80723_
                     _e80737_
                     (lambda (_g8074080742_)
                       (##structure
                        gx#syntax-quote::t
                        _g8074080742_
                        _src80718_
                        _ctx80738_
                        _marks80739_)))))
                 (_wrap-inner80723_
                  (lambda (_e80730_ _wrap-e80731_)
                    (let _recur80733_ ((_e80735_ _e80730_))
                      (if (symbol? _e80735_)
                          (_wrap-e80731_ _e80735_)
                          (if (pair? _e80735_)
                              (cons (_recur80733_ (car _e80735_))
                                    (_recur80733_ (cdr _e80735_)))
                              (if (vector? _e80735_)
                                  (vector-map _recur80733_ _e80735_)
                                  (if (box? _e80735_)
                                      (box (_recur80733_ (unbox _e80735_)))
                                      _e80735_)))))))
                 (_wrap-outer80724_
                  (lambda (_e80728_)
                    (if (##structure-instance-of? _e80728_ 'gerbil#AST::t)
                        _e80728_
                        (##structure gx#AST::t _e80728_ _src80718_)))))
          (if (##structure-instance-of? _datum80717_ 'gerbil#AST::t)
              _datum80717_
              (if (not _stx80716_)
                  (##structure gx#AST::t _datum80717_ _src80718_)
                  (if (gx#identifier? _stx80716_)
                      (let ((_stx80726_ (gx#stx-unwrap__0 _stx80716_)))
                        (_wrap-outer80724_
                         (if (##structure-direct-instance-of?
                              _stx80726_
                              'gx#syntax-quote::t)
                             (if _quote?80719_
                                 (_wrap-quote80722_
                                  _datum80717_
                                  (##unchecked-structure-ref
                                   _stx80726_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx80726_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum80721_
                                  _datum80717_
                                  (##unchecked-structure-ref
                                   _stx80726_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum80721_
                              _datum80717_
                              (##unchecked-structure-ref
                               _stx80726_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx80716_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx80755_ _datum80756_)
        (let* ((_src80758_ '#f) (_quote?80760_ '#t))
          (gx#datum->syntax__%
           _stx80755_
           _datum80756_
           _src80758_
           _quote?80760_))))
    (define gx#datum->syntax__1
      (lambda (_stx80762_ _datum80763_ _src80764_)
        (let ((_quote?80766_ '#t))
          (gx#datum->syntax__%
           _stx80762_
           _datum80763_
           _src80764_
           _quote?80766_))))
    (define gx#datum->syntax
      (lambda _g80887_
        (let ((_g80886_ (##length _g80887_)))
          (cond ((##fx= _g80886_ 2)
                 (apply (lambda (_stx80755_ _datum80756_)
                          (gx#datum->syntax__0 _stx80755_ _datum80756_))
                        _g80887_))
                ((##fx= _g80886_ 3)
                 (apply (lambda (_stx80762_ _datum80763_ _src80764_)
                          (gx#datum->syntax__1
                           _stx80762_
                           _datum80763_
                           _src80764_))
                        _g80887_))
                ((##fx= _g80886_ 4)
                 (apply (lambda (_stx80768_
                                 _datum80769_
                                 _src80770_
                                 _quote?80771_)
                          (gx#datum->syntax__%
                           _stx80768_
                           _datum80769_
                           _src80770_
                           _quote?80771_))
                        _g80887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g80887_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx80692_ _marks80693_)
        (let _lp80695_ ((_e80697_ _stx80692_)
                        (_marks80698_ _marks80693_)
                        (_src80699_ (gx#stx-source _stx80692_)))
          (if (##structure-direct-instance-of? _e80697_ 'gx#syntax-wrap::t)
              (_lp80695_
               (##unchecked-structure-ref _e80697_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e80697_ '3 gx#syntax-wrap::t '#f)
                _marks80698_)
               (##unchecked-structure-ref _e80697_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e80697_
                   'gx#identifier-wrap::t)
                  (if (null? _marks80698_)
                      _e80697_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e80697_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e80697_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e80697_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks80698_)))
                  (if (##structure-direct-instance-of?
                       _e80697_
                       'gx#syntax-quote::t)
                      _e80697_
                      (if (##structure-instance-of? _e80697_ 'gerbil#AST::t)
                          (_lp80695_
                           (##unchecked-structure-ref
                            _e80697_
                            '1
                            gx#AST::t
                            '#f)
                           _marks80698_
                           (##unchecked-structure-ref
                            _e80697_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e80697_)
                              (##structure
                               gx#identifier-wrap::t
                               _e80697_
                               _src80699_
                               (reverse _marks80698_))
                              (if (null? _marks80698_)
                                  _e80697_
                                  (if (pair? _e80697_)
                                      (cons (gx#stx-wrap
                                             (car _e80697_)
                                             _marks80698_)
                                            (gx#stx-wrap
                                             (cdr _e80697_)
                                             _marks80698_))
                                      (if (vector? _e80697_)
                                          (vector-map
                                           (lambda (_g8070080702_)
                                             (gx#stx-wrap
                                              _g8070080702_
                                              _marks80698_))
                                           _e80697_)
                                          (if (box? _e80697_)
                                              (box (gx#stx-wrap
                                                    (unbox _e80697_)
                                                    _marks80698_))
                                              _e80697_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx80708_)
        (let ((_marks80710_ '())) (gx#stx-unwrap__% _stx80708_ _marks80710_))))
    (define gx#stx-unwrap
      (lambda _g80889_
        (let ((_g80888_ (##length _g80889_)))
          (cond ((##fx= _g80888_ 1)
                 (apply (lambda (_stx80708_) (gx#stx-unwrap__0 _stx80708_))
                        _g80889_))
                ((##fx= _g80888_ 2)
                 (apply (lambda (_stx80712_ _marks80713_)
                          (gx#stx-unwrap__% _stx80712_ _marks80713_))
                        _g80889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g80889_))))))
    (define gx#stx-wrap
      (lambda (_stx80685_ _marks80686_)
        (foldl1 (lambda (_mark80688_ _stx80689_)
                  (gx#stx-apply-mark _stx80689_ _mark80688_))
                _stx80685_
                _marks80686_)))
    (define gx#stx-rewrap
      (lambda (_stx80679_ _marks80680_)
        (foldr1 (lambda (_mark80682_ _stx80683_)
                  (gx#stx-apply-mark _stx80683_ _mark80682_))
                _stx80679_
                _marks80680_)))
    (define gx#stx-apply-mark
      (lambda (_stx80676_ _mark80677_)
        (if (##structure-direct-instance-of? _stx80676_ 'gx#syntax-quote::t)
            _stx80676_
            (if (and (##structure-direct-instance-of?
                      _stx80676_
                      'gx#syntax-wrap::t)
                     (eq? _mark80677_
                          (##unchecked-structure-ref
                           _stx80676_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx80676_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx80676_
                 (gx#stx-source _stx80676_)
                 _mark80677_)))))
    (define gx#apply-mark
      (lambda (_mark80640_ _marks80641_)
        (let* ((_marks8064280650_ _marks80641_)
               (_else8064480658_ (lambda () (cons _mark80640_ _marks80641_)))
               (_K8064680664_
                (lambda (_rest80661_ _hd80662_)
                  (if (eq? _mark80640_ _hd80662_)
                      _rest80661_
                      (cons _mark80640_ _marks80641_)))))
          (if (##pair? _marks8064280650_)
              (let ((_hd8064780667_ (##car _marks8064280650_))
                    (_tl8064880669_ (##cdr _marks8064280650_)))
                (let* ((_hd80672_ _hd8064780667_) (_rest80674_ _tl8064880669_))
                  (_K8064680664_ _rest80674_ _hd80672_)))
              (_else8064480658_)))))
    (define gx#stx-e
      (lambda (_stx80638_)
        (if (##structure-direct-instance-of? _stx80638_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx80638_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx80638_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx80638_ '1 gx#AST::t '#f)
                _stx80638_))))
    (define gx#stx-source
      (lambda (_stx80636_)
        (if (##structure-instance-of? _stx80636_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx80636_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx80630_ _src80631_)
        (if (or (##structure-instance-of? _stx80630_ 'gerbil#AST::t)
                (not _src80631_))
            _stx80630_
            (##structure gx#AST::t _stx80630_ _src80631_))))
    (define gx#stx-datum?
      (lambda (_stx80628_) (gx#self-quoting? (gx#stx-e _stx80628_))))
    (define gx#self-quoting?
      (lambda (_x80611_)
        (let ((_$e80613_ (immediate? _x80611_)))
          (if _$e80613_
              _$e80613_
              (let ((_$e80616_ (number? _x80611_)))
                (if _$e80616_
                    _$e80616_
                    (let ((_$e80619_ (keyword? _x80611_)))
                      (if _$e80619_
                          _$e80619_
                          (let ((_$e80622_ (string? _x80611_)))
                            (if _$e80622_
                                _$e80622_
                                (let ((_$e80625_ (vector? _x80611_)))
                                  (if _$e80625_
                                      _$e80625_
                                      (u8vector? _x80611_)))))))))))))
    (define gx#stx-boolean? (lambda (_e80609_) (boolean? (gx#stx-e _e80609_))))
    (define gx#stx-keyword? (lambda (_e80607_) (keyword? (gx#stx-e _e80607_))))
    (define gx#stx-char? (lambda (_e80605_) (char? (gx#stx-e _e80605_))))
    (define gx#stx-number? (lambda (_e80603_) (number? (gx#stx-e _e80603_))))
    (define gx#stx-fixnum? (lambda (_e80601_) (fixnum? (gx#stx-e _e80601_))))
    (define gx#stx-string? (lambda (_e80599_) (string? (gx#stx-e _e80599_))))
    (define gx#stx-null? (lambda (_e80597_) (null? (gx#stx-e _e80597_))))
    (define gx#stx-pair? (lambda (_e80595_) (pair? (gx#stx-e _e80595_))))
    (define gx#stx-list?
      (lambda (_e80557_)
        (let* ((_g8055880567_ (gx#stx-e _e80557_))
               (_E8056180571_
                (lambda () (error '"No clause matching" _g8055880567_))))
          (let ((_K8056380587_
                 (lambda (_rest80585_) (gx#stx-list? _rest80585_)))
                (_K8056280577_ (lambda (_tail80575_) (null? _tail80575_))))
            (if (##pair? _g8055880567_)
                (let* ((_tl8056580590_ (##cdr _g8055880567_))
                       (_rest80593_ _tl8056580590_))
                  (gx#stx-list? _rest80593_))
                (let ((_tail80580_ _g8055880567_)) (null? _tail80580_)))))))
    (define gx#stx-pair/null?
      (lambda (_e80550_)
        (let* ((_e80552_ (gx#stx-e _e80550_)) (_$e80554_ (pair? _e80552_)))
          (if _$e80554_ _$e80554_ (null? _e80552_)))))
    (define gx#stx-vector? (lambda (_e80548_) (vector? (gx#stx-e _e80548_))))
    (define gx#stx-box? (lambda (_e80546_) (box? (gx#stx-e _e80546_))))
    (define gx#stx-eq?
      (lambda (_x80543_ _y80544_)
        (eq? (gx#stx-e _x80543_) (gx#stx-e _y80544_))))
    (define gx#stx-eqv?
      (lambda (_x80540_ _y80541_)
        (eqv? (gx#stx-e _x80540_) (gx#stx-e _y80541_))))
    (define gx#stx-equal?
      (lambda (_x80537_ _y80538_)
        (equal? (gx#stx-e _x80537_) (gx#stx-e _y80538_))))
    (define gx#stx-false? (lambda (_x80535_) (not (gx#stx-e _x80535_))))
    (define gx#stx-identifier
      (lambda (_template80532_ . _args80533_)
        (gx#datum->syntax__1
         _template80532_
         (apply make-symbol (gx#syntax->datum _args80533_))
         (gx#stx-source _template80532_))))
    (define gx#stx-identifier-marks
      (lambda (_stx80530_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx80530_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx80528_)
        (if (##structure-direct-instance-of? _stx80528_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx80528_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of?
                 _stx80528_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref
                 _stx80528_
                 '4
                 gx#syntax-quote::t
                 '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx80528_)))))
    (define gx#stx-identifier-context
      (lambda (_stx80524_)
        (let ((_stx80526_ (gx#stx-unwrap__0 _stx80524_)))
          (if (gx#identifier-quote? _stx80526_)
              (##unchecked-structure-ref _stx80526_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx80479_)
        (let* ((_g8048080490_ (gx#stx-e _stx80479_))
               (_else8048380498_ (lambda () '#f)))
          (let ((_K8048680512_
                 (lambda (_rest80509_ _hd80510_)
                   (if (gx#identifier? _hd80510_)
                       (gx#identifier-list? _rest80509_)
                       '#f)))
                (_K8048580503_ (lambda () '#t)))
            (let ((_try-match8048280506_
                   (lambda ()
                     (if (##null? _g8048080490_)
                         (_K8048580503_)
                         (_else8048380498_)))))
              (if (##pair? _g8048080490_)
                  (let ((_tl8048880517_ (##cdr _g8048080490_))
                        (_hd8048780515_ (##car _g8048080490_)))
                    (let ((_hd80520_ _hd8048780515_)
                          (_rest80522_ _tl8048880517_))
                      (_K8048680512_ _rest80522_ _hd80520_)))
                  (_try-match8048280506_)))))))
    (define gx#genident__%
      (lambda (_e80456_ _src80457_)
        (gx#stx-wrap-source
         (gensym (let ((_e80459_ (gx#stx-e _e80456_)))
                   (if (interned-symbol? _e80459_) _e80459_ 'g)))
         (let ((_$e80461_ (gx#stx-source _e80456_)))
           (if _$e80461_ _$e80461_ _src80457_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e80468_ 'g) (_src80470_ '#f))
          (gx#genident__% _e80468_ _src80470_))))
    (define gx#genident__1
      (lambda (_e80472_)
        (let ((_src80474_ '#f)) (gx#genident__% _e80472_ _src80474_))))
    (define gx#genident
      (lambda _g80891_
        (let ((_g80890_ (##length _g80891_)))
          (cond ((##fx= _g80890_ 0)
                 (apply (lambda () (gx#genident__0)) _g80891_))
                ((##fx= _g80890_ 1)
                 (apply (lambda (_e80472_) (gx#genident__1 _e80472_))
                        _g80891_))
                ((##fx= _g80890_ 2)
                 (apply (lambda (_e80476_ _src80477_)
                          (gx#genident__% _e80476_ _src80477_))
                        _g80891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g80891_))))))
    (define gx#gentemps
      (lambda (_stx-lst80453_) (gx#stx-map1 gx#genident _stx-lst80453_)))
    (define gx#syntax->list
      (lambda (_stx80451_) (gx#stx-map1 values _stx80451_)))
    (define gx#stx-car
      (lambda (_stx80448_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx80448_)))))
    (define gx#stx-cdr
      (lambda (_stx80445_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx80445_)))))
    (define gx#stx-length
      (lambda (_stx80410_)
        (let _lp80412_ ((_rest80414_ _stx80410_) (_n80415_ '0))
          (let* ((_g8041680424_ (gx#stx-e _rest80414_))
                 (_else8041880432_ (lambda () _n80415_))
                 (_K8042080437_
                  (lambda (_rest80435_)
                    (_lp80412_ _rest80435_ (fx+ _n80415_ '1)))))
            (if (##pair? _g8041680424_)
                (let* ((_tl8042280440_ (##cdr _g8041680424_))
                       (_rest80443_ _tl8042280440_))
                  (_K8042080437_ _rest80443_))
                (_else8041880432_))))))
    (define gx#stx-for-each
      (lambda _g80893_
        (let ((_g80892_ (##length _g80893_)))
          (cond ((##fx= _g80892_ 2)
                 (apply (lambda (_f80403_ _stx80404_)
                          (gx#stx-for-each1 _f80403_ _stx80404_))
                        _g80893_))
                ((##fx= _g80892_ 3)
                 (apply (lambda (_f80406_ _xstx80407_ _ystx80408_)
                          (gx#stx-for-each2 _f80406_ _xstx80407_ _ystx80408_))
                        _g80893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g80893_))))))
    (define gx#stx-for-each1
      (lambda (_f80353_ _stx80354_)
        (if (procedure? _f80353_)
            '#!void
            (error '"expected procedure" _f80353_))
        (let _lp80356_ ((_rest80358_ _stx80354_))
          (let* ((_g8035980369_ (gx#syntax-e _rest80358_))
                 (_else8036280377_ (lambda () (_f80353_ _rest80358_))))
            (let ((_K8036580391_
                   (lambda (_rest80388_ _hd80389_)
                     (_f80353_ _hd80389_)
                     (_lp80356_ _rest80388_)))
                  (_K8036480382_ (lambda () '#!void)))
              (let ((_try-match8036180385_
                     (lambda ()
                       (if (##null? _g8035980369_)
                           (_K8036480382_)
                           (_else8036280377_)))))
                (if (##pair? _g8035980369_)
                    (let ((_tl8036780396_ (##cdr _g8035980369_))
                          (_hd8036680394_ (##car _g8035980369_)))
                      (let ((_hd80399_ _hd8036680394_)
                            (_rest80401_ _tl8036780396_))
                        (_K8036580391_ _rest80401_ _hd80399_)))
                    (_try-match8036180385_))))))))
    (define gx#stx-for-each2
      (lambda (_f80258_ _xstx80259_ _ystx80260_)
        (if (procedure? _f80258_)
            '#!void
            (error '"expected procedure" _f80258_))
        (let _lp80262_ ((_xrest80264_ _xstx80259_) (_yrest80265_ _ystx80260_))
          (let* ((_g8026680276_ (gx#syntax-e _xrest80264_))
                 (_else8026980284_ (lambda () '#!void)))
            (let ((_K8027280341_
                   (lambda (_xrest80310_ _xhd80311_)
                     (let* ((_g8031280319_ (gx#syntax-e _yrest80265_))
                            (_E8031480323_
                             (lambda ()
                               (error '"No clause matching" _g8031280319_)))
                            (_K8031580329_
                             (lambda (_yrest80326_ _yhd80327_)
                               (_f80258_ _xhd80311_ _yhd80327_)
                               (_lp80262_ _xrest80310_ _yrest80326_))))
                       (if (##pair? _g8031280319_)
                           (let ((_hd8031680332_ (##car _g8031280319_))
                                 (_tl8031780334_ (##cdr _g8031280319_)))
                             (let* ((_yhd80337_ _hd8031680332_)
                                    (_yrest80339_ _tl8031780334_))
                               (_K8031580329_ _yrest80339_ _yhd80337_)))
                           (_E8031480323_)))))
                  (_K8027180304_
                   (lambda ()
                     (let* ((_yrest8028880293_ _yrest80265_)
                            (_E8029080297_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8028880293_)))
                            (_K8029180301_
                             (lambda () (_f80258_ _xrest80264_ _yrest80265_))))
                       (if (not (gx#stx-null? _yrest8028880293_))
                           (_K8029180301_)
                           (_E8029080297_))))))
              (let ((_try-match8026880307_
                     (lambda ()
                       (if (not (null? _g8026680276_))
                           (_K8027180304_)
                           (_else8026980284_)))))
                (if (##pair? _g8026680276_)
                    (let ((_tl8027480346_ (##cdr _g8026680276_))
                          (_hd8027380344_ (##car _g8026680276_)))
                      (let ((_xhd80349_ _hd8027380344_)
                            (_xrest80351_ _tl8027480346_))
                        (_K8027280341_ _xrest80351_ _xhd80349_)))
                    (_try-match8026880307_))))))))
    (define gx#stx-map
      (lambda _g80895_
        (let ((_g80894_ (##length _g80895_)))
          (cond ((##fx= _g80894_ 2)
                 (apply (lambda (_f80251_ _stx80252_)
                          (gx#stx-map1 _f80251_ _stx80252_))
                        _g80895_))
                ((##fx= _g80894_ 3)
                 (apply (lambda (_f80254_ _xstx80255_ _ystx80256_)
                          (gx#stx-map2 _f80254_ _xstx80255_ _ystx80256_))
                        _g80895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g80895_))))))
    (define gx#stx-map1
      (lambda (_f80201_ _stx80202_)
        (if (procedure? _f80201_)
            '#!void
            (error '"expected procedure" _f80201_))
        (let _recur80204_ ((_rest80206_ _stx80202_))
          (let* ((_g8020780217_ (gx#syntax-e _rest80206_))
                 (_else8021080225_ (lambda () (_f80201_ _rest80206_))))
            (let ((_K8021380239_
                   (lambda (_rest80236_ _hd80237_)
                     (cons (_f80201_ _hd80237_) (_recur80204_ _rest80236_))))
                  (_K8021280230_ (lambda () '())))
              (let ((_try-match8020980233_
                     (lambda ()
                       (if (##null? _g8020780217_)
                           (_K8021280230_)
                           (_else8021080225_)))))
                (if (##pair? _g8020780217_)
                    (let ((_tl8021580244_ (##cdr _g8020780217_))
                          (_hd8021480242_ (##car _g8020780217_)))
                      (let ((_hd80247_ _hd8021480242_)
                            (_rest80249_ _tl8021580244_))
                        (_K8021380239_ _rest80249_ _hd80247_)))
                    (_try-match8020980233_))))))))
    (define gx#stx-map2
      (lambda (_f80106_ _xstx80107_ _ystx80108_)
        (if (procedure? _f80106_)
            '#!void
            (error '"expected procedure" _f80106_))
        (let _recur80110_ ((_xrest80112_ _xstx80107_)
                           (_yrest80113_ _ystx80108_))
          (let* ((_g8011480124_ (gx#syntax-e _xrest80112_))
                 (_else8011780132_ (lambda () '())))
            (let ((_K8012080189_
                   (lambda (_xrest80158_ _xhd80159_)
                     (let* ((_g8016080167_ (gx#syntax-e _yrest80113_))
                            (_E8016280171_
                             (lambda ()
                               (error '"No clause matching" _g8016080167_)))
                            (_K8016380177_
                             (lambda (_yrest80174_ _yhd80175_)
                               (cons (_f80106_ _xhd80159_ _yhd80175_)
                                     (_recur80110_
                                      _xrest80158_
                                      _yrest80174_)))))
                       (if (##pair? _g8016080167_)
                           (let ((_hd8016480180_ (##car _g8016080167_))
                                 (_tl8016580182_ (##cdr _g8016080167_)))
                             (let* ((_yhd80185_ _hd8016480180_)
                                    (_yrest80187_ _tl8016580182_))
                               (_K8016380177_ _yrest80187_ _yhd80185_)))
                           (_E8016280171_)))))
                  (_K8011980152_
                   (lambda ()
                     (let* ((_yrest8013680141_ _yrest80113_)
                            (_E8013880145_
                             (lambda ()
                               (error '"No clause matching"
                                      _yrest8013680141_)))
                            (_K8013980149_
                             (lambda () (_f80106_ _xrest80112_ _yrest80113_))))
                       (if (not (gx#stx-null? _yrest8013680141_))
                           (_K8013980149_)
                           (_E8013880145_))))))
              (let ((_try-match8011680155_
                     (lambda ()
                       (if (not (null? _g8011480124_))
                           (_K8011980152_)
                           (_else8011780132_)))))
                (if (##pair? _g8011480124_)
                    (let ((_tl8012280194_ (##cdr _g8011480124_))
                          (_hd8012180192_ (##car _g8011480124_)))
                      (let ((_xhd80197_ _hd8012180192_)
                            (_xrest80199_ _tl8012280194_))
                        (_K8012080189_ _xrest80199_ _xhd80197_)))
                    (_try-match8011680155_))))))))
    (define gx#stx-andmap
      (lambda (_f80056_ _stx80057_)
        (if (procedure? _f80056_)
            '#!void
            (error '"expected procedure" _f80056_))
        (let _lp80059_ ((_rest80061_ _stx80057_))
          (let* ((_g8006280072_ (gx#syntax-e _rest80061_))
                 (_else8006580080_ (lambda () (_f80056_ _rest80061_))))
            (let ((_K8006880094_
                   (lambda (_rest80091_ _hd80092_)
                     (if (_f80056_ _hd80092_) (_lp80059_ _rest80091_) '#f)))
                  (_K8006780085_ (lambda () '#t)))
              (let ((_try-match8006480088_
                     (lambda ()
                       (if (##null? _g8006280072_)
                           (_K8006780085_)
                           (_else8006580080_)))))
                (if (##pair? _g8006280072_)
                    (let ((_tl8007080099_ (##cdr _g8006280072_))
                          (_hd8006980097_ (##car _g8006280072_)))
                      (let ((_hd80102_ _hd8006980097_)
                            (_rest80104_ _tl8007080099_))
                        (_K8006880094_ _rest80104_ _hd80102_)))
                    (_try-match8006480088_))))))))
    (define gx#stx-ormap
      (lambda (_f80003_ _stx80004_)
        (if (procedure? _f80003_)
            '#!void
            (error '"expected procedure" _f80003_))
        (let _lp80006_ ((_rest80008_ _stx80004_))
          (let* ((_g8000980019_ (gx#syntax-e _rest80008_))
                 (_else8001280027_ (lambda () (_f80003_ _rest80008_))))
            (let ((_K8001580044_
                   (lambda (_rest80038_ _hd80039_)
                     (let ((_$e80041_ (_f80003_ _hd80039_)))
                       (if _$e80041_ _$e80041_ (_lp80006_ _rest80038_)))))
                  (_K8001480032_ (lambda () '#f)))
              (let ((_try-match8001180035_
                     (lambda ()
                       (if (##null? _g8000980019_)
                           (_K8001480032_)
                           (_else8001280027_)))))
                (if (##pair? _g8000980019_)
                    (let ((_tl8001780049_ (##cdr _g8000980019_))
                          (_hd8001680047_ (##car _g8000980019_)))
                      (let ((_hd80052_ _hd8001680047_)
                            (_rest80054_ _tl8001780049_))
                        (_K8001580044_ _rest80054_ _hd80052_)))
                    (_try-match8001180035_))))))))
    (define gx#stx-foldl
      (lambda (_f79951_ _iv79952_ _stx79953_)
        (if (procedure? _f79951_)
            '#!void
            (error '"expected procedure" _f79951_))
        (let _lp79955_ ((_r79957_ _iv79952_) (_rest79958_ _stx79953_))
          (let* ((_g7995979969_ (gx#syntax-e _rest79958_))
                 (_else7996279977_
                  (lambda () (_f79951_ _rest79958_ _r79957_))))
            (let ((_K7996579991_
                   (lambda (_rest79988_ _hd79989_)
                     (_lp79955_ (_f79951_ _hd79989_ _r79957_) _rest79988_)))
                  (_K7996479982_ (lambda () _r79957_)))
              (let ((_try-match7996179985_
                     (lambda ()
                       (if (##null? _g7995979969_)
                           (_K7996479982_)
                           (_else7996279977_)))))
                (if (##pair? _g7995979969_)
                    (let ((_tl7996779996_ (##cdr _g7995979969_))
                          (_hd7996679994_ (##car _g7995979969_)))
                      (let ((_hd79999_ _hd7996679994_)
                            (_rest80001_ _tl7996779996_))
                        (_K7996579991_ _rest80001_ _hd79999_)))
                    (_try-match7996179985_))))))))
    (define gx#stx-foldr
      (lambda (_f79900_ _iv79901_ _stx79902_)
        (if (procedure? _f79900_)
            '#!void
            (error '"expected procedure" _f79900_))
        (let _recur79904_ ((_rest79906_ _stx79902_))
          (let* ((_g7990779917_ (gx#syntax-e _rest79906_))
                 (_else7991079925_
                  (lambda () (_f79900_ _rest79906_ _iv79901_))))
            (let ((_K7991379939_
                   (lambda (_rest79936_ _hd79937_)
                     (_f79900_ _hd79937_ (_recur79904_ _rest79936_))))
                  (_K7991279930_ (lambda () _iv79901_)))
              (let ((_try-match7990979933_
                     (lambda ()
                       (if (##null? _g7990779917_)
                           (_K7991279930_)
                           (_else7991079925_)))))
                (if (##pair? _g7990779917_)
                    (let ((_tl7991579944_ (##cdr _g7990779917_))
                          (_hd7991479942_ (##car _g7990779917_)))
                      (let ((_hd79947_ _hd7991479942_)
                            (_rest79949_ _tl7991579944_))
                        (_K7991379939_ _rest79949_ _hd79947_)))
                    (_try-match7990979933_))))))))
    (define gx#stx-reverse
      (lambda (_stx79898_) (gx#stx-foldl cons '() _stx79898_)))
    (define gx#stx-last
      (lambda (_stx79859_)
        (let _lp79861_ ((_rest79863_ _stx79859_))
          (let* ((_g7986479872_ (gx#syntax-e _rest79863_))
                 (_else7986679880_ (lambda () _rest79863_))
                 (_K7986879886_
                  (lambda (_rest79883_ _hd79884_)
                    (if (gx#stx-null? _rest79883_)
                        _hd79884_
                        (_lp79861_ _rest79883_)))))
            (if (##pair? _g7986479872_)
                (let ((_hd7986979889_ (##car _g7986479872_))
                      (_tl7987079891_ (##cdr _g7986479872_)))
                  (let* ((_hd79894_ _hd7986979889_)
                         (_rest79896_ _tl7987079891_))
                    (_K7986879886_ _rest79896_ _hd79894_)))
                (_else7986679880_))))))
    (define gx#stx-last-pair
      (lambda (_stx79830_)
        (let _lp79832_ ((_hd79834_ _stx79830_))
          (let* ((_g7983579842_ (gx#syntax-e _hd79834_))
                 (_E7983779846_
                  (lambda () (error '"No clause matching" _g7983579842_)))
                 (_K7983879851_
                  (lambda (_rest79849_)
                    (if (gx#stx-pair? _rest79849_)
                        (_lp79832_ _rest79849_)
                        _hd79834_))))
            (if (##pair? _g7983579842_)
                (let* ((_tl7984079854_ (##cdr _g7983579842_))
                       (_rest79857_ _tl7984079854_))
                  (_K7983879851_ _rest79857_))
                (_E7983779846_))))))
    (define gx#stx-list-tail
      (lambda (_stx79799_ _k79800_)
        (let _lp79802_ ((_rest79804_ _stx79799_) (_k79805_ _k79800_))
          (if (fxpositive? _k79805_)
              (let* ((_g7980679813_ (gx#syntax-e _rest79804_))
                     (_E7980879817_
                      (lambda () (error '"No clause matching" _g7980679813_)))
                     (_K7980979822_
                      (lambda (_rest79820_)
                        (_lp79802_ _rest79820_ (fx- _k79805_ '1)))))
                (if (##pair? _g7980679813_)
                    (let* ((_tl7981179825_ (##cdr _g7980679813_))
                           (_rest79828_ _tl7981179825_))
                      (_K7980979822_ _rest79828_))
                    (_E7980879817_)))
              _rest79804_))))
    (define gx#stx-list-ref
      (lambda (_stx79796_ _k79797_)
        (gx#stx-car (gx#stx-list-tail _stx79796_ _k79797_))))
    (define gx#stx-plist?__%
      (lambda (_stx79708_ _key?79709_)
        (if (procedure? _key?79709_)
            '#!void
            (error '"expected procedure" _key?79709_))
        (let _lp79711_ ((_rest79713_ _stx79708_))
          (let* ((_g7971479724_ (gx#stx-e _rest79713_))
                 (_else7971779732_ (lambda () '#f)))
            (let ((_K7972079774_
                   (lambda (_rest79743_ _hd79744_)
                     (if (_key?79709_ _hd79744_)
                         (let* ((_g7974579753_ (gx#stx-e _rest79743_))
                                (_else7974779761_ (lambda () '#f))
                                (_K7974979766_
                                 (lambda (_rest79764_)
                                   (_lp79711_ _rest79764_))))
                           (if (##pair? _g7974579753_)
                               (let* ((_tl7975179769_ (##cdr _g7974579753_))
                                      (_rest79772_ _tl7975179769_))
                                 (_lp79711_ _rest79772_))
                               (_else7974779761_)))
                         '#f)))
                  (_K7971979737_ (lambda () '#t)))
              (let ((_try-match7971679740_
                     (lambda ()
                       (if (##null? _g7971479724_)
                           (_K7971979737_)
                           (_else7971779732_)))))
                (if (##pair? _g7971479724_)
                    (let ((_tl7972279779_ (##cdr _g7971479724_))
                          (_hd7972179777_ (##car _g7971479724_)))
                      (let ((_hd79782_ _hd7972179777_)
                            (_rest79784_ _tl7972279779_))
                        (_K7972079774_ _rest79784_ _hd79782_)))
                    (_try-match7971679740_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx79789_)
        (let ((_key?79791_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx79789_ _key?79791_))))
    (define gx#stx-plist?
      (lambda _g80897_
        (let ((_g80896_ (##length _g80897_)))
          (cond ((##fx= _g80896_ 1)
                 (apply (lambda (_stx79789_) (gx#stx-plist?__0 _stx79789_))
                        _g80897_))
                ((##fx= _g80896_ 2)
                 (apply (lambda (_stx79793_ _key?79794_)
                          (gx#stx-plist?__% _stx79793_ _key?79794_))
                        _g80897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g80897_))))))
    (define gx#stx-getq__%
      (lambda (_key79626_ _stx79627_ _key=?79628_)
        (if (procedure? _key=?79628_)
            '#!void
            (error '"expected procedure" _key=?79628_))
        (let _lp79630_ ((_rest79632_ _stx79627_))
          (let* ((_g7963379641_ (gx#syntax-e _rest79632_))
                 (_else7963579649_ (lambda () '#f))
                 (_K7963779683_
                  (lambda (_rest79652_ _hd79653_)
                    (let* ((_g7965479661_ (gx#syntax-e _rest79652_))
                           (_E7965679665_
                            (lambda ()
                              (error '"No clause matching" _g7965479661_)))
                           (_K7965779671_
                            (lambda (_rest79668_ _val79669_)
                              (if (_key=?79628_ _hd79653_ _key79626_)
                                  _val79669_
                                  (_lp79630_ _rest79668_)))))
                      (if (##pair? _g7965479661_)
                          (let ((_hd7965879674_ (##car _g7965479661_))
                                (_tl7965979676_ (##cdr _g7965479661_)))
                            (let* ((_val79679_ _hd7965879674_)
                                   (_rest79681_ _tl7965979676_))
                              (_K7965779671_ _rest79681_ _val79679_)))
                          (_E7965679665_))))))
            (if (##pair? _g7963379641_)
                (let ((_hd7963879686_ (##car _g7963379641_))
                      (_tl7963979688_ (##cdr _g7963379641_)))
                  (let* ((_hd79691_ _hd7963879686_)
                         (_rest79693_ _tl7963979688_))
                    (_K7963779683_ _rest79693_ _hd79691_)))
                (_else7963579649_))))))
    (define gx#stx-getq__0
      (lambda (_key79698_ _stx79699_)
        (let ((_key=?79701_ gx#stx-eq?))
          (gx#stx-getq__% _key79698_ _stx79699_ _key=?79701_))))
    (define gx#stx-getq
      (lambda _g80899_
        (let ((_g80898_ (##length _g80899_)))
          (cond ((##fx= _g80898_ 2)
                 (apply (lambda (_key79698_ _stx79699_)
                          (gx#stx-getq__0 _key79698_ _stx79699_))
                        _g80899_))
                ((##fx= _g80898_ 3)
                 (apply (lambda (_key79703_ _stx79704_ _key=?79705_)
                          (gx#stx-getq__% _key79703_ _stx79704_ _key=?79705_))
                        _g80899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g80899_))))))))
