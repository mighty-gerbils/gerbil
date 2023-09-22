(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1695377612)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-struct-type
       'gx#identifier-wrap::t
       gx#AST::t
       '1
       'syntax
       '((final: . #t))
       '#f
       '(marks)))
    (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _$args6966_
        (apply make-struct-instance gx#identifier-wrap::t _$args6966_)))
    (define gx#identifier-wrap-marks
      (make-struct-field-accessor gx#identifier-wrap::t '0))
    (define gx#identifier-wrap-marks-set!
      (make-struct-field-mutator gx#identifier-wrap::t '0))
    (define gx#&identifier-wrap-marks
      (make-struct-field-unchecked-accessor gx#identifier-wrap::t '0))
    (define gx#&identifier-wrap-marks-set!
      (make-struct-field-unchecked-mutator gx#identifier-wrap::t '0))
    (define gx#syntax-wrap::t
      (make-struct-type
       'gx#syntax-wrap::t
       gx#AST::t
       '1
       'syntax
       '((final: . #t))
       '#f
       '(mark)))
    (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _$args6963_
        (apply make-struct-instance gx#syntax-wrap::t _$args6963_)))
    (define gx#syntax-wrap-mark
      (make-struct-field-accessor gx#syntax-wrap::t '0))
    (define gx#syntax-wrap-mark-set!
      (make-struct-field-mutator gx#syntax-wrap::t '0))
    (define gx#&syntax-wrap-mark
      (make-struct-field-unchecked-accessor gx#syntax-wrap::t '0))
    (define gx#&syntax-wrap-mark-set!
      (make-struct-field-unchecked-mutator gx#syntax-wrap::t '0))
    (define gx#syntax-quote::t
      (make-struct-type
       'gx#syntax-quote::t
       gx#AST::t
       '2
       'syntax
       '((final: . #t))
       '#f
       '(context marks)))
    (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _$args6960_
        (apply make-struct-instance gx#syntax-quote::t _$args6960_)))
    (define gx#syntax-quote-context
      (make-struct-field-accessor gx#syntax-quote::t '0))
    (define gx#syntax-quote-marks
      (make-struct-field-accessor gx#syntax-quote::t '1))
    (define gx#syntax-quote-context-set!
      (make-struct-field-mutator gx#syntax-quote::t '0))
    (define gx#syntax-quote-marks-set!
      (make-struct-field-mutator gx#syntax-quote::t '1))
    (define gx#&syntax-quote-context
      (make-struct-field-unchecked-accessor gx#syntax-quote::t '0))
    (define gx#&syntax-quote-marks
      (make-struct-field-unchecked-accessor gx#syntax-quote::t '1))
    (define gx#&syntax-quote-context-set!
      (make-struct-field-unchecked-mutator gx#syntax-quote::t '0))
    (define gx#&syntax-quote-marks-set!
      (make-struct-field-unchecked-mutator gx#syntax-quote::t '1))
    (define gx#identifier? (lambda (_stx6958_) (symbol? (gx#stx-e _stx6958_))))
    (define gx#identifier-quote?
      (lambda (_stx6956_)
        (if (##structure-direct-instance-of? _stx6956_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _stx6956_ '1 gx#AST::t '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_stx6954_)
        (if (##structure-direct-instance-of? _stx6954_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of? _stx6954_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _stx6954_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_stx6952_)
        (if (##structure-direct-instance-of? _stx6952_ 'gx#syntax-quote::t)
            _stx6952_
            (if (##structure-direct-instance-of? _stx6952_ 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _stx6952_ '1 gx#AST::t '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_stx6935_)
        (if (##structure-direct-instance-of? _stx6935_ 'gx#syntax-wrap::t)
            (let _lp6937_ ((_e6939_ (##unchecked-structure-ref
                                     _stx6935_
                                     '1
                                     gx#AST::t
                                     '#f))
                           (_marks6940_
                            (cons (##unchecked-structure-ref
                                   _stx6935_
                                   '3
                                   gx#syntax-wrap::t
                                   '#f)
                                  '())))
              (if (##structure? _e6939_)
                  (let ((_$e6942_ (##type-id (##structure-type _e6939_))))
                    (if (eq? 'gx#syntax-wrap::t _$e6942_)
                        (_lp6937_
                         (##unchecked-structure-ref _e6939_ '1 gx#AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e6939_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks6940_))
                        (if (or (eq? 'gx#syntax-quote::t _$e6942_)
                                (eq? 'gx#identifier-wrap::t _$e6942_))
                            (##unchecked-structure-ref
                             _e6939_
                             '1
                             gx#AST::t
                             '#f)
                            (if (eq? 'gerbil#AST::t _$e6942_)
                                (_lp6937_
                                 (##unchecked-structure-ref
                                  _e6939_
                                  '1
                                  gx#AST::t
                                  '#f)
                                 _marks6940_)
                                _e6939_))))
                  (if (null? _marks6940_)
                      _e6939_
                      (if (pair? _e6939_)
                          (cons (gx#stx-wrap (car _e6939_) _marks6940_)
                                (gx#stx-wrap (cdr _e6939_) _marks6940_))
                          (if (vector? _e6939_)
                              (vector-map
                               (lambda (_g69476949_)
                                 (gx#stx-wrap _g69476949_ _marks6940_))
                               _e6939_)
                              (if (box? _e6939_)
                                  (box (gx#stx-wrap
                                        (unbox _e6939_)
                                        _marks6940_))
                                  _e6939_))))))
            (if (##structure-instance-of? _stx6935_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6935_ '1 gx#AST::t '#f)
                _stx6935_))))
    (define gx#syntax->datum
      (lambda (_stx6933_)
        (if (##structure-instance-of? _stx6933_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _stx6933_ '1 gx#AST::t '#f))
            (if (pair? _stx6933_)
                (cons (gx#syntax->datum (car _stx6933_))
                      (gx#syntax->datum (cdr _stx6933_)))
                (if (vector? _stx6933_)
                    (vector-map gx#syntax->datum _stx6933_)
                    (if (box? _stx6933_)
                        (box (gx#syntax->datum (unbox _stx6933_)))
                        _stx6933_))))))
    (define gx#datum->syntax__%
      (lambda (_stx6876_ _datum6877_ _src6878_ _quote?6879_)
        (letrec ((_wrap-datum6881_
                  (lambda (_e6905_ _marks6906_)
                    (_wrap-inner6883_
                     _e6905_
                     (lambda (_g69076909_)
                       (##structure
                        gx#identifier-wrap::t
                        _g69076909_
                        _src6878_
                        _marks6906_)))))
                 (_wrap-quote6882_
                  (lambda (_e6897_ _ctx6898_ _marks6899_)
                    (_wrap-inner6883_
                     _e6897_
                     (lambda (_g69006902_)
                       (##structure
                        gx#syntax-quote::t
                        _g69006902_
                        _src6878_
                        _ctx6898_
                        _marks6899_)))))
                 (_wrap-inner6883_
                  (lambda (_e6890_ _wrap-e6891_)
                    (let _recur6893_ ((_e6895_ _e6890_))
                      (if (symbol? _e6895_)
                          (_wrap-e6891_ _e6895_)
                          (if (pair? _e6895_)
                              (cons (_recur6893_ (car _e6895_))
                                    (_recur6893_ (cdr _e6895_)))
                              (if (vector? _e6895_)
                                  (vector-map _recur6893_ _e6895_)
                                  (if (box? _e6895_)
                                      (box (_recur6893_ (unbox _e6895_)))
                                      _e6895_)))))))
                 (_wrap-outer6884_
                  (lambda (_e6888_)
                    (if (##structure-instance-of? _e6888_ 'gerbil#AST::t)
                        _e6888_
                        (##structure gx#AST::t _e6888_ _src6878_)))))
          (if (##structure-instance-of? _datum6877_ 'gerbil#AST::t)
              _datum6877_
              (if (not _stx6876_)
                  (##structure gx#AST::t _datum6877_ _src6878_)
                  (if (gx#identifier? _stx6876_)
                      (let ((_stx6886_ (gx#stx-unwrap__0 _stx6876_)))
                        (_wrap-outer6884_
                         (if (##structure-direct-instance-of?
                              _stx6886_
                              'gx#syntax-quote::t)
                             (if _quote?6879_
                                 (_wrap-quote6882_
                                  _datum6877_
                                  (##unchecked-structure-ref
                                   _stx6886_
                                   '3
                                   gx#syntax-quote::t
                                   '#f)
                                  (##unchecked-structure-ref
                                   _stx6886_
                                   '4
                                   gx#syntax-quote::t
                                   '#f))
                                 (_wrap-datum6881_
                                  _datum6877_
                                  (##unchecked-structure-ref
                                   _stx6886_
                                   '4
                                   gx#syntax-quote::t
                                   '#f)))
                             (_wrap-datum6881_
                              _datum6877_
                              (##unchecked-structure-ref
                               _stx6886_
                               '3
                               gx#identifier-wrap::t
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _stx6876_)))))))
    (define gx#datum->syntax__0
      (lambda (_stx6915_ _datum6916_)
        (let* ((_src6918_ '#f) (_quote?6920_ '#t))
          (gx#datum->syntax__% _stx6915_ _datum6916_ _src6918_ _quote?6920_))))
    (define gx#datum->syntax__1
      (lambda (_stx6922_ _datum6923_ _src6924_)
        (let ((_quote?6926_ '#t))
          (gx#datum->syntax__% _stx6922_ _datum6923_ _src6924_ _quote?6926_))))
    (define gx#datum->syntax
      (lambda _g7044_
        (let ((_g7043_ (##length _g7044_)))
          (cond ((##fx= _g7043_ 2)
                 (apply (lambda (_stx6915_ _datum6916_)
                          (gx#datum->syntax__0 _stx6915_ _datum6916_))
                        _g7044_))
                ((##fx= _g7043_ 3)
                 (apply (lambda (_stx6922_ _datum6923_ _src6924_)
                          (gx#datum->syntax__1
                           _stx6922_
                           _datum6923_
                           _src6924_))
                        _g7044_))
                ((##fx= _g7043_ 4)
                 (apply (lambda (_stx6928_ _datum6929_ _src6930_ _quote?6931_)
                          (gx#datum->syntax__%
                           _stx6928_
                           _datum6929_
                           _src6930_
                           _quote?6931_))
                        _g7044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g7044_))))))
    (define gx#stx-unwrap__%
      (lambda (_stx6852_ _marks6853_)
        (let _lp6855_ ((_e6857_ _stx6852_)
                       (_marks6858_ _marks6853_)
                       (_src6859_ (gx#stx-source _stx6852_)))
          (if (##structure-direct-instance-of? _e6857_ 'gx#syntax-wrap::t)
              (_lp6855_
               (##unchecked-structure-ref _e6857_ '1 gx#AST::t '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _e6857_ '3 gx#syntax-wrap::t '#f)
                _marks6858_)
               (##unchecked-structure-ref _e6857_ '2 gx#AST::t '#f))
              (if (##structure-direct-instance-of?
                   _e6857_
                   'gx#identifier-wrap::t)
                  (if (null? _marks6858_)
                      _e6857_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _e6857_ '1 gx#AST::t '#f)
                       (##unchecked-structure-ref _e6857_ '2 gx#AST::t '#f)
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e6857_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6858_)))
                  (if (##structure-direct-instance-of?
                       _e6857_
                       'gx#syntax-quote::t)
                      _e6857_
                      (if (##structure-instance-of? _e6857_ 'gerbil#AST::t)
                          (_lp6855_
                           (##unchecked-structure-ref _e6857_ '1 gx#AST::t '#f)
                           _marks6858_
                           (##unchecked-structure-ref
                            _e6857_
                            '2
                            gx#AST::t
                            '#f))
                          (if (symbol? _e6857_)
                              (##structure
                               gx#identifier-wrap::t
                               _e6857_
                               _src6859_
                               (reverse _marks6858_))
                              (if (null? _marks6858_)
                                  _e6857_
                                  (if (pair? _e6857_)
                                      (cons (gx#stx-wrap
                                             (car _e6857_)
                                             _marks6858_)
                                            (gx#stx-wrap
                                             (cdr _e6857_)
                                             _marks6858_))
                                      (if (vector? _e6857_)
                                          (vector-map
                                           (lambda (_g68606862_)
                                             (gx#stx-wrap
                                              _g68606862_
                                              _marks6858_))
                                           _e6857_)
                                          (if (box? _e6857_)
                                              (box (gx#stx-wrap
                                                    (unbox _e6857_)
                                                    _marks6858_))
                                              _e6857_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_stx6868_)
        (let ((_marks6870_ '())) (gx#stx-unwrap__% _stx6868_ _marks6870_))))
    (define gx#stx-unwrap
      (lambda _g7046_
        (let ((_g7045_ (##length _g7046_)))
          (cond ((##fx= _g7045_ 1)
                 (apply (lambda (_stx6868_) (gx#stx-unwrap__0 _stx6868_))
                        _g7046_))
                ((##fx= _g7045_ 2)
                 (apply (lambda (_stx6872_ _marks6873_)
                          (gx#stx-unwrap__% _stx6872_ _marks6873_))
                        _g7046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g7046_))))))
    (define gx#stx-wrap
      (lambda (_stx6845_ _marks6846_)
        (foldl1 (lambda (_mark6848_ _stx6849_)
                  (gx#stx-apply-mark _stx6849_ _mark6848_))
                _stx6845_
                _marks6846_)))
    (define gx#stx-rewrap
      (lambda (_stx6839_ _marks6840_)
        (foldr1 (lambda (_mark6842_ _stx6843_)
                  (gx#stx-apply-mark _stx6843_ _mark6842_))
                _stx6839_
                _marks6840_)))
    (define gx#stx-apply-mark
      (lambda (_stx6836_ _mark6837_)
        (if (##structure-direct-instance-of? _stx6836_ 'gx#syntax-quote::t)
            _stx6836_
            (if (and (##structure-direct-instance-of?
                      _stx6836_
                      'gx#syntax-wrap::t)
                     (eq? _mark6837_
                          (##unchecked-structure-ref
                           _stx6836_
                           '3
                           gx#syntax-wrap::t
                           '#f)))
                (##unchecked-structure-ref _stx6836_ '1 gx#AST::t '#f)
                (##structure
                 gx#syntax-wrap::t
                 _stx6836_
                 (gx#stx-source _stx6836_)
                 _mark6837_)))))
    (define gx#apply-mark
      (lambda (_mark6800_ _marks6801_)
        (let* ((_marks68026810_ _marks6801_)
               (_else68046818_ (lambda () (cons _mark6800_ _marks6801_)))
               (_K68066824_
                (lambda (_rest6821_ _hd6822_)
                  (if (eq? _mark6800_ _hd6822_)
                      _rest6821_
                      (cons _mark6800_ _marks6801_)))))
          (if (##pair? _marks68026810_)
              (let ((_hd68076827_ (##car _marks68026810_))
                    (_tl68086829_ (##cdr _marks68026810_)))
                (let* ((_hd6832_ _hd68076827_) (_rest6834_ _tl68086829_))
                  (_K68066824_ _rest6834_ _hd6832_)))
              (_else68046818_)))))
    (define gx#stx-e
      (lambda (_stx6798_)
        (if (##structure-direct-instance-of? _stx6798_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _stx6798_ '1 gx#AST::t '#f))
            (if (##structure-instance-of? _stx6798_ 'gerbil#AST::t)
                (##unchecked-structure-ref _stx6798_ '1 gx#AST::t '#f)
                _stx6798_))))
    (define gx#stx-source
      (lambda (_stx6796_)
        (if (##structure-instance-of? _stx6796_ 'gerbil#AST::t)
            (##unchecked-structure-ref _stx6796_ '2 gx#AST::t '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_stx6790_ _src6791_)
        (if (or (##structure-instance-of? _stx6790_ 'gerbil#AST::t)
                (not _src6791_))
            _stx6790_
            (##structure gx#AST::t _stx6790_ _src6791_))))
    (define gx#stx-datum?
      (lambda (_stx6788_) (gx#self-quoting? (gx#stx-e _stx6788_))))
    (define gx#self-quoting?
      (lambda (_x6771_)
        (let ((_$e6773_ (immediate? _x6771_)))
          (if _$e6773_
              _$e6773_
              (let ((_$e6776_ (number? _x6771_)))
                (if _$e6776_
                    _$e6776_
                    (let ((_$e6779_ (keyword? _x6771_)))
                      (if _$e6779_
                          _$e6779_
                          (let ((_$e6782_ (string? _x6771_)))
                            (if _$e6782_
                                _$e6782_
                                (let ((_$e6785_ (vector? _x6771_)))
                                  (if _$e6785_
                                      _$e6785_
                                      (u8vector? _x6771_)))))))))))))
    (define gx#stx-boolean? (lambda (_e6769_) (boolean? (gx#stx-e _e6769_))))
    (define gx#stx-keyword? (lambda (_e6767_) (keyword? (gx#stx-e _e6767_))))
    (define gx#stx-char? (lambda (_e6765_) (char? (gx#stx-e _e6765_))))
    (define gx#stx-number? (lambda (_e6763_) (number? (gx#stx-e _e6763_))))
    (define gx#stx-fixnum? (lambda (_e6761_) (fixnum? (gx#stx-e _e6761_))))
    (define gx#stx-string? (lambda (_e6759_) (string? (gx#stx-e _e6759_))))
    (define gx#stx-null? (lambda (_e6757_) (null? (gx#stx-e _e6757_))))
    (define gx#stx-pair? (lambda (_e6755_) (pair? (gx#stx-e _e6755_))))
    (define gx#stx-list?
      (lambda (_e6717_)
        (let* ((_g67186727_ (gx#stx-e _e6717_))
               (_E67216731_
                (lambda () (error '"No clause matching" _g67186727_))))
          (let ((_K67236747_ (lambda (_rest6745_) (gx#stx-list? _rest6745_)))
                (_K67226737_ (lambda (_tail6735_) (null? _tail6735_))))
            (if (##pair? _g67186727_)
                (let* ((_tl67256750_ (##cdr _g67186727_))
                       (_rest6753_ _tl67256750_))
                  (gx#stx-list? _rest6753_))
                (let ((_tail6740_ _g67186727_)) (null? _tail6740_)))))))
    (define gx#stx-pair/null?
      (lambda (_e6710_)
        (let* ((_e6712_ (gx#stx-e _e6710_)) (_$e6714_ (pair? _e6712_)))
          (if _$e6714_ _$e6714_ (null? _e6712_)))))
    (define gx#stx-vector? (lambda (_e6708_) (vector? (gx#stx-e _e6708_))))
    (define gx#stx-box? (lambda (_e6706_) (box? (gx#stx-e _e6706_))))
    (define gx#stx-eq?
      (lambda (_x6703_ _y6704_) (eq? (gx#stx-e _x6703_) (gx#stx-e _y6704_))))
    (define gx#stx-eqv?
      (lambda (_x6700_ _y6701_) (eqv? (gx#stx-e _x6700_) (gx#stx-e _y6701_))))
    (define gx#stx-equal?
      (lambda (_x6697_ _y6698_)
        (equal? (gx#stx-e _x6697_) (gx#stx-e _y6698_))))
    (define gx#stx-false? (lambda (_x6695_) (not (gx#stx-e _x6695_))))
    (define gx#stx-identifier
      (lambda (_template6692_ . _args6693_)
        (gx#datum->syntax__1
         _template6692_
         (apply make-symbol (map gx#stx-e _args6693_))
         (gx#stx-source _template6692_))))
    (define gx#stx-identifier-marks
      (lambda (_stx6690_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _stx6690_))))
    (define gx#stx-identifier-marks*
      (lambda (_stx6688_)
        (if (##structure-direct-instance-of? _stx6688_ 'gx#identifier-wrap::t)
            (##unchecked-structure-ref _stx6688_ '3 gx#identifier-wrap::t '#f)
            (if (##structure-direct-instance-of? _stx6688_ 'gx#syntax-quote::t)
                (##unchecked-structure-ref _stx6688_ '4 gx#syntax-quote::t '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _stx6688_)))))
    (define gx#stx-identifier-context
      (lambda (_stx6684_)
        (let ((_stx6686_ (gx#stx-unwrap__0 _stx6684_)))
          (if (gx#identifier-quote? _stx6686_)
              (##unchecked-structure-ref _stx6686_ '3 gx#syntax-quote::t '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_stx6639_)
        (let* ((_g66406650_ (gx#stx-e _stx6639_))
               (_else66436658_ (lambda () '#f)))
          (let ((_K66466672_
                 (lambda (_rest6669_ _hd6670_)
                   (if (gx#identifier? _hd6670_)
                       (gx#identifier-list? _rest6669_)
                       '#f)))
                (_K66456663_ (lambda () '#t)))
            (let ((_try-match66426666_
                   (lambda ()
                     (if (##null? _g66406650_)
                         (_K66456663_)
                         (_else66436658_)))))
              (if (##pair? _g66406650_)
                  (let ((_tl66486677_ (##cdr _g66406650_))
                        (_hd66476675_ (##car _g66406650_)))
                    (let ((_hd6680_ _hd66476675_) (_rest6682_ _tl66486677_))
                      (_K66466672_ _rest6682_ _hd6680_)))
                  (_try-match66426666_)))))))
    (define gx#genident__%
      (lambda (_e6616_ _src6617_)
        (gx#stx-wrap-source
         (gensym (let ((_e6619_ (gx#stx-e _e6616_)))
                   (if (interned-symbol? _e6619_) _e6619_ 'g)))
         (let ((_$e6621_ (gx#stx-source _e6616_)))
           (if _$e6621_ _$e6621_ _src6617_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_e6628_ 'g) (_src6630_ '#f))
          (gx#genident__% _e6628_ _src6630_))))
    (define gx#genident__1
      (lambda (_e6632_)
        (let ((_src6634_ '#f)) (gx#genident__% _e6632_ _src6634_))))
    (define gx#genident
      (lambda _g7048_
        (let ((_g7047_ (##length _g7048_)))
          (cond ((##fx= _g7047_ 0)
                 (apply (lambda () (gx#genident__0)) _g7048_))
                ((##fx= _g7047_ 1)
                 (apply (lambda (_e6632_) (gx#genident__1 _e6632_)) _g7048_))
                ((##fx= _g7047_ 2)
                 (apply (lambda (_e6636_ _src6637_)
                          (gx#genident__% _e6636_ _src6637_))
                        _g7048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g7048_))))))
    (define gx#gentemps
      (lambda (_stx-lst6613_) (gx#stx-map1 gx#genident _stx-lst6613_)))
    (define gx#syntax->list
      (lambda (_stx6611_) (gx#stx-map1 values _stx6611_)))
    (define gx#stx-car
      (lambda (_stx6608_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _stx6608_)))))
    (define gx#stx-cdr
      (lambda (_stx6605_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _stx6605_)))))
    (define gx#stx-length
      (lambda (_stx6570_)
        (let _lp6572_ ((_rest6574_ _stx6570_) (_n6575_ '0))
          (let* ((_g65766584_ (gx#stx-e _rest6574_))
                 (_else65786592_ (lambda () _n6575_))
                 (_K65806597_
                  (lambda (_rest6595_)
                    (_lp6572_ _rest6595_ (fx+ _n6575_ '1)))))
            (if (##pair? _g65766584_)
                (let* ((_tl65826600_ (##cdr _g65766584_))
                       (_rest6603_ _tl65826600_))
                  (_K65806597_ _rest6603_))
                (_else65786592_))))))
    (define gx#stx-for-each
      (lambda _g7050_
        (let ((_g7049_ (##length _g7050_)))
          (cond ((##fx= _g7049_ 2)
                 (apply (lambda (_f6563_ _stx6564_)
                          (gx#stx-for-each1 _f6563_ _stx6564_))
                        _g7050_))
                ((##fx= _g7049_ 3)
                 (apply (lambda (_f6566_ _xstx6567_ _ystx6568_)
                          (gx#stx-for-each2 _f6566_ _xstx6567_ _ystx6568_))
                        _g7050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g7050_))))))
    (define gx#stx-for-each1
      (lambda (_f6513_ _stx6514_)
        (if (procedure? _f6513_) '#!void (error '"expected procedure" _f6513_))
        (let _lp6516_ ((_rest6518_ _stx6514_))
          (let* ((_g65196529_ (gx#syntax-e _rest6518_))
                 (_else65226537_ (lambda () (_f6513_ _rest6518_))))
            (let ((_K65256551_
                   (lambda (_rest6548_ _hd6549_)
                     (_f6513_ _hd6549_)
                     (_lp6516_ _rest6548_)))
                  (_K65246542_ (lambda () '#!void)))
              (let ((_try-match65216545_
                     (lambda ()
                       (if (##null? _g65196529_)
                           (_K65246542_)
                           (_else65226537_)))))
                (if (##pair? _g65196529_)
                    (let ((_tl65276556_ (##cdr _g65196529_))
                          (_hd65266554_ (##car _g65196529_)))
                      (let ((_hd6559_ _hd65266554_) (_rest6561_ _tl65276556_))
                        (_K65256551_ _rest6561_ _hd6559_)))
                    (_try-match65216545_))))))))
    (define gx#stx-for-each2
      (lambda (_f6418_ _xstx6419_ _ystx6420_)
        (if (procedure? _f6418_) '#!void (error '"expected procedure" _f6418_))
        (let _lp6422_ ((_xrest6424_ _xstx6419_) (_yrest6425_ _ystx6420_))
          (let* ((_g64266436_ (gx#syntax-e _xrest6424_))
                 (_else64296444_ (lambda () '#!void)))
            (let ((_K64326501_
                   (lambda (_xrest6470_ _xhd6471_)
                     (let* ((_g64726479_ (gx#syntax-e _yrest6425_))
                            (_E64746483_
                             (lambda ()
                               (error '"No clause matching" _g64726479_)))
                            (_K64756489_
                             (lambda (_yrest6486_ _yhd6487_)
                               (_f6418_ _xhd6471_ _yhd6487_)
                               (_lp6422_ _xrest6470_ _yrest6486_))))
                       (if (##pair? _g64726479_)
                           (let ((_hd64766492_ (##car _g64726479_))
                                 (_tl64776494_ (##cdr _g64726479_)))
                             (let* ((_yhd6497_ _hd64766492_)
                                    (_yrest6499_ _tl64776494_))
                               (_K64756489_ _yrest6499_ _yhd6497_)))
                           (_E64746483_)))))
                  (_K64316464_
                   (lambda ()
                     (let* ((_yrest64486453_ _yrest6425_)
                            (_E64506457_
                             (lambda ()
                               (error '"No clause matching" _yrest64486453_)))
                            (_K64516461_
                             (lambda () (_f6418_ _xrest6424_ _yrest6425_))))
                       (if (not (gx#stx-null? _yrest64486453_))
                           (_K64516461_)
                           (_E64506457_))))))
              (let ((_try-match64286467_
                     (lambda ()
                       (if (not (null? _g64266436_))
                           (_K64316464_)
                           (_else64296444_)))))
                (if (##pair? _g64266436_)
                    (let ((_tl64346506_ (##cdr _g64266436_))
                          (_hd64336504_ (##car _g64266436_)))
                      (let ((_xhd6509_ _hd64336504_)
                            (_xrest6511_ _tl64346506_))
                        (_K64326501_ _xrest6511_ _xhd6509_)))
                    (_try-match64286467_))))))))
    (define gx#stx-map
      (lambda _g7052_
        (let ((_g7051_ (##length _g7052_)))
          (cond ((##fx= _g7051_ 2)
                 (apply (lambda (_f6411_ _stx6412_)
                          (gx#stx-map1 _f6411_ _stx6412_))
                        _g7052_))
                ((##fx= _g7051_ 3)
                 (apply (lambda (_f6414_ _xstx6415_ _ystx6416_)
                          (gx#stx-map2 _f6414_ _xstx6415_ _ystx6416_))
                        _g7052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g7052_))))))
    (define gx#stx-map1
      (lambda (_f6361_ _stx6362_)
        (if (procedure? _f6361_) '#!void (error '"expected procedure" _f6361_))
        (let _recur6364_ ((_rest6366_ _stx6362_))
          (let* ((_g63676377_ (gx#syntax-e _rest6366_))
                 (_else63706385_ (lambda () (_f6361_ _rest6366_))))
            (let ((_K63736399_
                   (lambda (_rest6396_ _hd6397_)
                     (cons (_f6361_ _hd6397_) (_recur6364_ _rest6396_))))
                  (_K63726390_ (lambda () '())))
              (let ((_try-match63696393_
                     (lambda ()
                       (if (##null? _g63676377_)
                           (_K63726390_)
                           (_else63706385_)))))
                (if (##pair? _g63676377_)
                    (let ((_tl63756404_ (##cdr _g63676377_))
                          (_hd63746402_ (##car _g63676377_)))
                      (let ((_hd6407_ _hd63746402_) (_rest6409_ _tl63756404_))
                        (_K63736399_ _rest6409_ _hd6407_)))
                    (_try-match63696393_))))))))
    (define gx#stx-map2
      (lambda (_f6266_ _xstx6267_ _ystx6268_)
        (if (procedure? _f6266_) '#!void (error '"expected procedure" _f6266_))
        (let _recur6270_ ((_xrest6272_ _xstx6267_) (_yrest6273_ _ystx6268_))
          (let* ((_g62746284_ (gx#syntax-e _xrest6272_))
                 (_else62776292_ (lambda () '())))
            (let ((_K62806349_
                   (lambda (_xrest6318_ _xhd6319_)
                     (let* ((_g63206327_ (gx#syntax-e _yrest6273_))
                            (_E63226331_
                             (lambda ()
                               (error '"No clause matching" _g63206327_)))
                            (_K63236337_
                             (lambda (_yrest6334_ _yhd6335_)
                               (cons (_f6266_ _xhd6319_ _yhd6335_)
                                     (_recur6270_ _xrest6318_ _yrest6334_)))))
                       (if (##pair? _g63206327_)
                           (let ((_hd63246340_ (##car _g63206327_))
                                 (_tl63256342_ (##cdr _g63206327_)))
                             (let* ((_yhd6345_ _hd63246340_)
                                    (_yrest6347_ _tl63256342_))
                               (_K63236337_ _yrest6347_ _yhd6345_)))
                           (_E63226331_)))))
                  (_K62796312_
                   (lambda ()
                     (let* ((_yrest62966301_ _yrest6273_)
                            (_E62986305_
                             (lambda ()
                               (error '"No clause matching" _yrest62966301_)))
                            (_K62996309_
                             (lambda () (_f6266_ _xrest6272_ _yrest6273_))))
                       (if (not (gx#stx-null? _yrest62966301_))
                           (_K62996309_)
                           (_E62986305_))))))
              (let ((_try-match62766315_
                     (lambda ()
                       (if (not (null? _g62746284_))
                           (_K62796312_)
                           (_else62776292_)))))
                (if (##pair? _g62746284_)
                    (let ((_tl62826354_ (##cdr _g62746284_))
                          (_hd62816352_ (##car _g62746284_)))
                      (let ((_xhd6357_ _hd62816352_)
                            (_xrest6359_ _tl62826354_))
                        (_K62806349_ _xrest6359_ _xhd6357_)))
                    (_try-match62766315_))))))))
    (define gx#stx-andmap
      (lambda (_f6216_ _stx6217_)
        (if (procedure? _f6216_) '#!void (error '"expected procedure" _f6216_))
        (let _lp6219_ ((_rest6221_ _stx6217_))
          (let* ((_g62226232_ (gx#syntax-e _rest6221_))
                 (_else62256240_ (lambda () (_f6216_ _rest6221_))))
            (let ((_K62286254_
                   (lambda (_rest6251_ _hd6252_)
                     (if (_f6216_ _hd6252_) (_lp6219_ _rest6251_) '#f)))
                  (_K62276245_ (lambda () '#t)))
              (let ((_try-match62246248_
                     (lambda ()
                       (if (##null? _g62226232_)
                           (_K62276245_)
                           (_else62256240_)))))
                (if (##pair? _g62226232_)
                    (let ((_tl62306259_ (##cdr _g62226232_))
                          (_hd62296257_ (##car _g62226232_)))
                      (let ((_hd6262_ _hd62296257_) (_rest6264_ _tl62306259_))
                        (_K62286254_ _rest6264_ _hd6262_)))
                    (_try-match62246248_))))))))
    (define gx#stx-ormap
      (lambda (_f6163_ _stx6164_)
        (if (procedure? _f6163_) '#!void (error '"expected procedure" _f6163_))
        (let _lp6166_ ((_rest6168_ _stx6164_))
          (let* ((_g61696179_ (gx#syntax-e _rest6168_))
                 (_else61726187_ (lambda () (_f6163_ _rest6168_))))
            (let ((_K61756204_
                   (lambda (_rest6198_ _hd6199_)
                     (let ((_$e6201_ (_f6163_ _hd6199_)))
                       (if _$e6201_ _$e6201_ (_lp6166_ _rest6198_)))))
                  (_K61746192_ (lambda () '#f)))
              (let ((_try-match61716195_
                     (lambda ()
                       (if (##null? _g61696179_)
                           (_K61746192_)
                           (_else61726187_)))))
                (if (##pair? _g61696179_)
                    (let ((_tl61776209_ (##cdr _g61696179_))
                          (_hd61766207_ (##car _g61696179_)))
                      (let ((_hd6212_ _hd61766207_) (_rest6214_ _tl61776209_))
                        (_K61756204_ _rest6214_ _hd6212_)))
                    (_try-match61716195_))))))))
    (define gx#stx-foldl
      (lambda (_f6111_ _iv6112_ _stx6113_)
        (if (procedure? _f6111_) '#!void (error '"expected procedure" _f6111_))
        (let _lp6115_ ((_r6117_ _iv6112_) (_rest6118_ _stx6113_))
          (let* ((_g61196129_ (gx#syntax-e _rest6118_))
                 (_else61226137_ (lambda () (_f6111_ _rest6118_ _r6117_))))
            (let ((_K61256151_
                   (lambda (_rest6148_ _hd6149_)
                     (_lp6115_ (_f6111_ _hd6149_ _r6117_) _rest6148_)))
                  (_K61246142_ (lambda () _r6117_)))
              (let ((_try-match61216145_
                     (lambda ()
                       (if (##null? _g61196129_)
                           (_K61246142_)
                           (_else61226137_)))))
                (if (##pair? _g61196129_)
                    (let ((_tl61276156_ (##cdr _g61196129_))
                          (_hd61266154_ (##car _g61196129_)))
                      (let ((_hd6159_ _hd61266154_) (_rest6161_ _tl61276156_))
                        (_K61256151_ _rest6161_ _hd6159_)))
                    (_try-match61216145_))))))))
    (define gx#stx-foldr
      (lambda (_f6060_ _iv6061_ _stx6062_)
        (if (procedure? _f6060_) '#!void (error '"expected procedure" _f6060_))
        (let _recur6064_ ((_rest6066_ _stx6062_))
          (let* ((_g60676077_ (gx#syntax-e _rest6066_))
                 (_else60706085_ (lambda () (_f6060_ _rest6066_ _iv6061_))))
            (let ((_K60736099_
                   (lambda (_rest6096_ _hd6097_)
                     (_f6060_ _hd6097_ (_recur6064_ _rest6096_))))
                  (_K60726090_ (lambda () _iv6061_)))
              (let ((_try-match60696093_
                     (lambda ()
                       (if (##null? _g60676077_)
                           (_K60726090_)
                           (_else60706085_)))))
                (if (##pair? _g60676077_)
                    (let ((_tl60756104_ (##cdr _g60676077_))
                          (_hd60746102_ (##car _g60676077_)))
                      (let ((_hd6107_ _hd60746102_) (_rest6109_ _tl60756104_))
                        (_K60736099_ _rest6109_ _hd6107_)))
                    (_try-match60696093_))))))))
    (define gx#stx-reverse
      (lambda (_stx6058_) (gx#stx-foldl cons '() _stx6058_)))
    (define gx#stx-last
      (lambda (_stx6019_)
        (let _lp6021_ ((_rest6023_ _stx6019_))
          (let* ((_g60246032_ (gx#syntax-e _rest6023_))
                 (_else60266040_ (lambda () _rest6023_))
                 (_K60286046_
                  (lambda (_rest6043_ _hd6044_)
                    (if (gx#stx-null? _rest6043_)
                        _hd6044_
                        (_lp6021_ _rest6043_)))))
            (if (##pair? _g60246032_)
                (let ((_hd60296049_ (##car _g60246032_))
                      (_tl60306051_ (##cdr _g60246032_)))
                  (let* ((_hd6054_ _hd60296049_) (_rest6056_ _tl60306051_))
                    (_K60286046_ _rest6056_ _hd6054_)))
                (_else60266040_))))))
    (define gx#stx-last-pair
      (lambda (_stx5990_)
        (let _lp5992_ ((_hd5994_ _stx5990_))
          (let* ((_g59956002_ (gx#syntax-e _hd5994_))
                 (_E59976006_
                  (lambda () (error '"No clause matching" _g59956002_)))
                 (_K59986011_
                  (lambda (_rest6009_)
                    (if (gx#stx-pair? _rest6009_)
                        (_lp5992_ _rest6009_)
                        _hd5994_))))
            (if (##pair? _g59956002_)
                (let* ((_tl60006014_ (##cdr _g59956002_))
                       (_rest6017_ _tl60006014_))
                  (_K59986011_ _rest6017_))
                (_E59976006_))))))
    (define gx#stx-list-tail
      (lambda (_stx5959_ _k5960_)
        (let _lp5962_ ((_rest5964_ _stx5959_) (_k5965_ _k5960_))
          (if (fxpositive? _k5965_)
              (let* ((_g59665973_ (gx#syntax-e _rest5964_))
                     (_E59685977_
                      (lambda () (error '"No clause matching" _g59665973_)))
                     (_K59695982_
                      (lambda (_rest5980_)
                        (_lp5962_ _rest5980_ (fx- _k5965_ '1)))))
                (if (##pair? _g59665973_)
                    (let* ((_tl59715985_ (##cdr _g59665973_))
                           (_rest5988_ _tl59715985_))
                      (_K59695982_ _rest5988_))
                    (_E59685977_)))
              _rest5964_))))
    (define gx#stx-list-ref
      (lambda (_stx5956_ _k5957_)
        (gx#stx-car (gx#stx-list-tail _stx5956_ _k5957_))))
    (define gx#stx-plist?__%
      (lambda (_stx5868_ _key?5869_)
        (if (procedure? _key?5869_)
            '#!void
            (error '"expected procedure" _key?5869_))
        (let _lp5871_ ((_rest5873_ _stx5868_))
          (let* ((_g58745884_ (gx#stx-e _rest5873_))
                 (_else58775892_ (lambda () '#f)))
            (let ((_K58805934_
                   (lambda (_rest5903_ _hd5904_)
                     (if (_key?5869_ _hd5904_)
                         (let* ((_g59055913_ (gx#stx-e _rest5903_))
                                (_else59075921_ (lambda () '#f))
                                (_K59095926_
                                 (lambda (_rest5924_) (_lp5871_ _rest5924_))))
                           (if (##pair? _g59055913_)
                               (let* ((_tl59115929_ (##cdr _g59055913_))
                                      (_rest5932_ _tl59115929_))
                                 (_lp5871_ _rest5932_))
                               (_else59075921_)))
                         '#f)))
                  (_K58795897_ (lambda () '#t)))
              (let ((_try-match58765900_
                     (lambda ()
                       (if (##null? _g58745884_)
                           (_K58795897_)
                           (_else58775892_)))))
                (if (##pair? _g58745884_)
                    (let ((_tl58825939_ (##cdr _g58745884_))
                          (_hd58815937_ (##car _g58745884_)))
                      (let ((_hd5942_ _hd58815937_) (_rest5944_ _tl58825939_))
                        (_K58805934_ _rest5944_ _hd5942_)))
                    (_try-match58765900_))))))))
    (define gx#stx-plist?__0
      (lambda (_stx5949_)
        (let ((_key?5951_ gx#stx-keyword?))
          (gx#stx-plist?__% _stx5949_ _key?5951_))))
    (define gx#stx-plist?
      (lambda _g7054_
        (let ((_g7053_ (##length _g7054_)))
          (cond ((##fx= _g7053_ 1)
                 (apply (lambda (_stx5949_) (gx#stx-plist?__0 _stx5949_))
                        _g7054_))
                ((##fx= _g7053_ 2)
                 (apply (lambda (_stx5953_ _key?5954_)
                          (gx#stx-plist?__% _stx5953_ _key?5954_))
                        _g7054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g7054_))))))
    (define gx#stx-getq__%
      (lambda (_key5786_ _stx5787_ _key=?5788_)
        (if (procedure? _key=?5788_)
            '#!void
            (error '"expected procedure" _key=?5788_))
        (let _lp5790_ ((_rest5792_ _stx5787_))
          (let* ((_g57935801_ (gx#syntax-e _rest5792_))
                 (_else57955809_ (lambda () '#f))
                 (_K57975843_
                  (lambda (_rest5812_ _hd5813_)
                    (let* ((_g58145821_ (gx#syntax-e _rest5812_))
                           (_E58165825_
                            (lambda ()
                              (error '"No clause matching" _g58145821_)))
                           (_K58175831_
                            (lambda (_rest5828_ _val5829_)
                              (if (_key=?5788_ _hd5813_ _key5786_)
                                  _val5829_
                                  (_lp5790_ _rest5828_)))))
                      (if (##pair? _g58145821_)
                          (let ((_hd58185834_ (##car _g58145821_))
                                (_tl58195836_ (##cdr _g58145821_)))
                            (let* ((_val5839_ _hd58185834_)
                                   (_rest5841_ _tl58195836_))
                              (_K58175831_ _rest5841_ _val5839_)))
                          (_E58165825_))))))
            (if (##pair? _g57935801_)
                (let ((_hd57985846_ (##car _g57935801_))
                      (_tl57995848_ (##cdr _g57935801_)))
                  (let* ((_hd5851_ _hd57985846_) (_rest5853_ _tl57995848_))
                    (_K57975843_ _rest5853_ _hd5851_)))
                (_else57955809_))))))
    (define gx#stx-getq__0
      (lambda (_key5858_ _stx5859_)
        (let ((_key=?5861_ gx#stx-eq?))
          (gx#stx-getq__% _key5858_ _stx5859_ _key=?5861_))))
    (define gx#stx-getq
      (lambda _g7056_
        (let ((_g7055_ (##length _g7056_)))
          (cond ((##fx= _g7055_ 2)
                 (apply (lambda (_key5858_ _stx5859_)
                          (gx#stx-getq__0 _key5858_ _stx5859_))
                        _g7056_))
                ((##fx= _g7055_ 3)
                 (apply (lambda (_key5863_ _stx5864_ _key=?5865_)
                          (gx#stx-getq__% _key5863_ _stx5864_ _key=?5865_))
                        _g7056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g7056_))))))))
