(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#core-expand-begin%
    (lambda (_stx7354_)
      (let ((_expand-special7356_
             (lambda (_hd7358_ _K7359_ _rest7360_ _r7361_)
               (_K7359_ _rest7360_
                        (cons (gx#core-expand-top _hd7358_) _r7361_)))))
        (gx#core-expand-block _stx7354_ _expand-special7356_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx7107_)
      (let ((_expand-special7109_
             (lambda (_hd7229_ _K7230_ _rest7231_ _r7232_)
               (let ((_K7236_ (lambda (_e7234_)
                                (_K7230_ _rest7231_ (cons _e7234_ _r7232_)))))
                 (let ((_e72377266_ _hd7229_))
                   (let ((_E72617270_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e72377266_))))
                     (let ((_E72577282_
                            (lambda ()
                              (if (gx#stx-pair? _e72377266_)
                                  (let ((_e72627274_
                                         (gx#syntax-e _e72377266_)))
                                    (let ((_hd72637277_ (##car _e72627274_))
                                          (_tl72647279_ (##cdr _e72627274_)))
                                      (if (if (gx#identifier? _hd72637277_)
                                              (gx#core-identifier=?
                                               _hd72637277_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K7236_ (gx#core-expand-define-runtime%
                                                        _hd7229_))
                                              (_E72617270_))
                                          (_E72617270_))))
                                  (_E72617270_)))))
                       (let ((_E72537294_
                              (lambda ()
                                (if (gx#stx-pair? _e72377266_)
                                    (let ((_e72587286_
                                           (gx#syntax-e _e72377266_)))
                                      (let ((_hd72597289_ (##car _e72587286_))
                                            (_tl72607291_ (##cdr _e72587286_)))
                                        (if (if (gx#identifier? _hd72597289_)
                                                (gx#core-identifier=?
                                                 _hd72597289_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K7236_ (gx#core-expand-define-alias%
                                                          _hd7229_))
                                                (_E72577282_))
                                            (_E72577282_))))
                                    (_E72577282_)))))
                         (let ((_E72437306_
                                (lambda ()
                                  (if (gx#stx-pair? _e72377266_)
                                      (let ((_e72547298_
                                             (gx#syntax-e _e72377266_)))
                                        (let ((_hd72557301_
                                               (##car _e72547298_))
                                              (_tl72567303_
                                               (##cdr _e72547298_)))
                                          (if (if (gx#identifier? _hd72557301_)
                                                  (gx#core-identifier=?
                                                   _hd72557301_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K7236_ (gx#core-expand-define-syntax%
                                                            _hd7229_))
                                                  (_E72537294_))
                                              (_E72537294_))))
                                      (_E72537294_)))))
                           (let ((_E72397338_
                                  (lambda ()
                                    (if (gx#stx-pair? _e72377266_)
                                        (let ((_e72447310_
                                               (gx#syntax-e _e72377266_)))
                                          (let ((_hd72457313_
                                                 (##car _e72447310_))
                                                (_tl72467315_
                                                 (##cdr _e72447310_)))
                                            (if (if (gx#identifier?
                                                     _hd72457313_)
                                                    (gx#core-identifier=?
                                                     _hd72457313_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl72467315_)
                                                    (let ((_e72477318_
                                                           (gx#syntax-e
                                                            _tl72467315_)))
                                                      (let ((_hd72487321_
                                                             (##car _e72477318_))
                                                            (_tl72497323_
                                                             (##cdr _e72477318_)))
                                                        (let ((_hd-bind7326_
                                                               _hd72487321_))
                                                          (if (gx#stx-pair?
                                                               _tl72497323_)
                                                              (let ((_e72507328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl72497323_)))
                        (let ((_hd72517331_ (##car _e72507328_))
                              (_tl72527333_ (##cdr _e72507328_)))
                          (let ((_expr7336_ _hd72517331_))
                            (if (gx#stx-null? _tl72527333_)
                                (if (gx#core-bind-values? _hd-bind7326_)
                                    (begin
                                      (gx#core-bind-values! _hd-bind7326_)
                                      (_K7236_ _hd7229_))
                                    (_E72437306_))
                                (_E72437306_)))))
                      (_E72437306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E72437306_))
                                                (_E72437306_))))
                                        (_E72437306_)))))
                             (let ((_E72387350_
                                    (lambda ()
                                      (if (gx#stx-pair? _e72377266_)
                                          (let ((_e72407342_
                                                 (gx#syntax-e _e72377266_)))
                                            (let ((_hd72417345_
                                                   (##car _e72407342_))
                                                  (_tl72427347_
                                                   (##cdr _e72407342_)))
                                              (if (if (gx#identifier?
                                                       _hd72417345_)
                                                      (gx#core-identifier=?
                                                       _hd72417345_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K7236_ (gx#core-expand-begin-syntax%
                                                                _hd7229_))
                                                      (_E72397338_))
                                                  (_E72397338_))))
                                          (_E72397338_)))))
                               (let () (_E72387350_)))))))))))))
        (let ((_eval-body7110_
               (lambda (_rbody7118_)
                 ((letrec ((_lp7120_
                            (lambda (_rest7122_ _body7123_ _ebody7124_)
                              (let ((_rest71257133_ _rest7122_))
                                (let ((_E71287137_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest71257133_))))
                                  (let ((_else71277141_
                                         (lambda ()
                                           (values _body7123_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody7124_)
                                                     (gx#stx-source
                                                      _stx7107_)))))))
                                    (let ((_K71297217_
                                           (lambda (_rest7144_ _hd7145_)
                                             (let ((_e71467163_ _hd7145_))
                                               (let ((_E71587167_
                                                      (lambda ()
                                                        (_lp7120_
                                                         _rest7144_
                                                         (cons _hd7145_
                                                               _body7123_)
                                                         (cons _hd7145_
                                                               _ebody7124_)))))
                                                 (let ((_E71487179_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e71467163_)
                                                              (let ((_e71597171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e71467163_)))
                        (let ((_hd71607174_ (##car _e71597171_))
                              (_tl71617176_ (##cdr _e71597171_)))
                          (if (if (gx#identifier? _hd71607174_)
                                  (gx#core-identifier=?
                                   _hd71607174_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp7120_
                                   _rest7144_
                                   (cons _hd7145_ _body7123_)
                                   _ebody7124_)
                                  (_E71587167_))
                              (_E71587167_))))
                      (_E71587167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E71477213_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e71467163_)
                        (let ((_e71497183_ (gx#syntax-e _e71467163_)))
                          (let ((_hd71507186_ (##car _e71497183_))
                                (_tl71517188_ (##cdr _e71497183_)))
                            (if (if (gx#identifier? _hd71507186_)
                                    (gx#core-identifier=?
                                     _hd71507186_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl71517188_)
                                    (let ((_e71527191_
                                           (gx#syntax-e _tl71517188_)))
                                      (let ((_hd71537194_ (##car _e71527191_))
                                            (_tl71547196_ (##cdr _e71527191_)))
                                        (let ((_hd-bind7199_ _hd71537194_))
                                          (if (gx#stx-pair? _tl71547196_)
                                              (let ((_e71557201_
                                                     (gx#syntax-e
                                                      _tl71547196_)))
                                                (let ((_hd71567204_
                                                       (##car _e71557201_))
                                                      (_tl71577206_
                                                       (##cdr _e71557201_)))
                                                  (let ((_expr7209_
                                                         _hd71567204_))
                                                    (if (gx#stx-null?
                                                         _tl71577206_)
                                                        (if '#t
                                                            (let ((_ehd7211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax
                            (cons (gx#core-quote-syntax '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind7199_)
                                        (cons (gx#core-expand-expression
                                               _expr7209_)
                                              '())))
                            (gx#stx-source _hd7145_))))
                      (_lp7120_
                       _rest7144_
                       (cons _ehd7211_ _body7123_)
                       (cons _ehd7211_ _ebody7124_)))
                    (_E71487179_))
                (_E71487179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E71487179_)))))
                                    (_E71487179_))
                                (_E71487179_))))
                        (_E71487179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E71477213_)))))))))
                                      (if (##pair? _rest71257133_)
                                          (let ((_hd71307220_
                                                 (##car _rest71257133_))
                                                (_tl71317222_
                                                 (##cdr _rest71257133_)))
                                            (let ((_hd7225_ _hd71307220_))
                                              (let ((_rest7227_ _tl71317222_))
                                                (_K71297217_
                                                 _rest7227_
                                                 _hd7225_))))
                                          (_else71277141_)))))))))
                    _lp7120_)
                  _rbody7118_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody7113_
                    (gx#core-expand-block _stx7107_ _expand-special7109_ '#f)))
               (let ((_g12692_ (_eval-body7110_ _rbody7113_)))
                 (begin
                   (let ((_g12693_ (values-count _g12692_)))
                     (if (not (fx= _g12693_ 2))
                         (error "Context expects 2 values" _g12693_)))
                   (let ((_expanded-body7115_ (values-ref _g12692_ 0))
                         (_value7116_ (values-ref _g12692_ 1)))
                     (gx#core-quote-syntax
                      (if (gx#module-context? (gx#current-expander-context))
                          (gx#core-cons '%#begin-syntax _expanded-body7115_)
                          (cons (gx#core-quote-syntax '%#quote)
                                (cons _value7116_ '())))
                      (gx#stx-source _stx7107_)))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi)))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx7077_)
      (let ((_e70787085_ _stx7077_))
        (let ((_E70807089_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70787085_))))
          (let ((_E70797103_
                 (lambda ()
                   (if (gx#stx-pair? _e70787085_)
                       (let ((_e70817093_ (gx#syntax-e _e70787085_)))
                         (let ((_hd70827096_ (##car _e70817093_))
                               (_tl70837098_ (##cdr _e70817093_)))
                           (let ((_body7101_ _tl70837098_))
                             (if (gx#stx-list? _body7101_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons '%#begin-foreign _body7101_)
                                  (gx#stx-source _stx7077_))
                                 (_E70807089_)))))
                       (_E70807089_)))))
            (let () (_E70797103_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx7065_)
      (let ((_e70667069_ _stx7065_))
        (let ((_E70677073_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70667069_))))
          (let () (_E70677073_))))))
  (define gx#core-expand-local-block
    (lambda (_stx6789_ _body6790_)
      (let ((_expand-internal-special6794_
             (lambda (_hd6951_ _K6952_ _rest6953_ _r6954_)
               (let ((_e69556980_ _hd6951_))
                 (let ((_E69756984_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e69556980_))))
                   (let ((_E69716996_
                          (lambda ()
                            (if (gx#stx-pair? _e69556980_)
                                (let ((_e69766988_ (gx#syntax-e _e69556980_)))
                                  (let ((_hd69776991_ (##car _e69766988_))
                                        (_tl69786993_ (##cdr _e69766988_)))
                                    (if (if (gx#identifier? _hd69776991_)
                                            (gx#core-identifier=?
                                             _hd69776991_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K6952_ _rest6953_
                                                     (cons (gx#core-expand-declare%
                                                            _hd6951_)
                                                           _r6954_))
                                            (_E69756984_))
                                        (_E69756984_))))
                                (_E69756984_)))))
                     (let ((_E69677008_
                            (lambda ()
                              (if (gx#stx-pair? _e69556980_)
                                  (let ((_e69727000_
                                         (gx#syntax-e _e69556980_)))
                                    (let ((_hd69737003_ (##car _e69727000_))
                                          (_tl69747005_ (##cdr _e69727000_)))
                                      (if (if (gx#identifier? _hd69737003_)
                                              (gx#core-identifier=?
                                               _hd69737003_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd6951_)
                                                (_K6952_ _rest6953_ _r6954_))
                                              (_E69716996_))
                                          (_E69716996_))))
                                  (_E69716996_)))))
                       (let ((_E69577020_
                              (lambda ()
                                (if (gx#stx-pair? _e69556980_)
                                    (let ((_e69687012_
                                           (gx#syntax-e _e69556980_)))
                                      (let ((_hd69697015_ (##car _e69687012_))
                                            (_tl69707017_ (##cdr _e69687012_)))
                                        (if (if (gx#identifier? _hd69697015_)
                                                (gx#core-identifier=?
                                                 _hd69697015_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd6951_)
                                                  (_K6952_ _rest6953_ _r6954_))
                                                (_E69677008_))
                                            (_E69677008_))))
                                    (_E69677008_)))))
                         (let ((_E69567052_
                                (lambda ()
                                  (if (gx#stx-pair? _e69556980_)
                                      (let ((_e69587024_
                                             (gx#syntax-e _e69556980_)))
                                        (let ((_hd69597027_
                                               (##car _e69587024_))
                                              (_tl69607029_
                                               (##cdr _e69587024_)))
                                          (if (if (gx#identifier? _hd69597027_)
                                                  (gx#core-identifier=?
                                                   _hd69597027_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl69607029_)
                                                  (let ((_e69617032_
                                                         (gx#syntax-e
                                                          _tl69607029_)))
                                                    (let ((_hd69627035_
                                                           (##car _e69617032_))
                                                          (_tl69637037_
                                                           (##cdr _e69617032_)))
                                                      (let ((_hd-bind7040_
                                                             _hd69627035_))
                                                        (if (gx#stx-pair?
                                                             _tl69637037_)
                                                            (let ((_e69647042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl69637037_)))
                      (let ((_hd69657045_ (##car _e69647042_))
                            (_tl69667047_ (##cdr _e69647042_)))
                        (let ((_expr7050_ _hd69657045_))
                          (if (gx#stx-null? _tl69667047_)
                              (if (gx#core-bind-values? _hd-bind7040_)
                                  (begin
                                    (gx#core-bind-values! _hd-bind7040_)
                                    (_K6952_ _rest6953_
                                             (cons _hd6951_ _r6954_)))
                                  (_E69577020_))
                              (_E69577020_)))))
                    (_E69577020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E69577020_))
                                              (_E69577020_))))
                                      (_E69577020_)))))
                           (let () (_E69567052_)))))))))))
        (let ((_wrap-internal6795_
               (lambda (_rbody6797_)
                 ((letrec ((_lp6799_
                            (lambda (_rest6801_
                                     _decls6802_
                                     _bind6803_
                                     _body6804_)
                              (let ((_e68056812_ _rest6801_))
                                (let ((_E68076861_
                                       (lambda ()
                                         (let ((_body6856_
                                                (let ((_body68156825_
                                                       _body6804_))
                                                  (let ((_E68196829_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body68156825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else68186833_
                                                           (lambda ()
                                                             (gx#core-quote-syntax
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body6804_)
                                                              (gx#stx-source
                                                               _stx6789_)))))
                                                      (let ((_try-match68176849_
                                                             (lambda ()
                                                               (let ((_K68206839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr6837_) _expr6837_)))
                         (if (##pair? _body68156825_)
                             (let ((_hd68216842_ (##car _body68156825_))
                                   (_tl68226844_ (##cdr _body68156825_)))
                               (let ((_expr6847_ _hd68216842_))
                                 (if (##null? _tl68226844_)
                                     (_K68206839_ _expr6847_)
                                     (_else68186833_))))
                             (_else68186833_))))))
                (let ((_K68236853_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx6789_))))
                  (if (##null? _body68156825_)
                      (_K68236853_)
                      (_try-match68176849_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body6858_
                                                  (if (null? _bind6803_)
                                                      _body6856_
                                                      (gx#core-quote-syntax
                                                       (cons (gx#core-quote-syntax
                                                              '%#letrec*-values)
                                                             (cons _bind6803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body6856_ '())))
               (gx#stx-source _stx6789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls6802_)
                                                   _body6858_
                                                   (gx#core-quote-syntax
                                                    (cons (gx#core-quote-syntax
                                                           '%#begin-annotation)
                                                          (cons _decls6802_
                                                                (cons _body6858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx6789_)))))))))
                                  (let ((_E68066947_
                                         (lambda ()
                                           (if (gx#stx-pair? _e68056812_)
                                               (let ((_e68086865_
                                                      (gx#syntax-e
                                                       _e68056812_)))
                                                 (let ((_hd68096868_
                                                        (##car _e68086865_))
                                                       (_tl68106870_
                                                        (##cdr _e68086865_)))
                                                   (let ((_hd6873_
                                                          _hd68096868_))
                                                     (let ((_rest6875_
                                                            _tl68106870_))
                                                       (if '#t
                                                           (let ((_e68766893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd6873_))
                     (let ((_E68886897_
                            (lambda ()
                              (if (null? _bind6803_)
                                  (_lp6799_
                                   _rest6875_
                                   _decls6802_
                                   _bind6803_
                                   (cons _hd6873_ _body6804_))
                                  (_lp6799_
                                   _rest6875_
                                   _decls6802_
                                   (cons (cons '#f (cons _hd6873_ '()))
                                         _bind6803_)
                                   _body6804_)))))
                       (let ((_E68786911_
                              (lambda ()
                                (if (gx#stx-pair? _e68766893_)
                                    (let ((_e68896901_
                                           (gx#syntax-e _e68766893_)))
                                      (let ((_hd68906904_ (##car _e68896901_))
                                            (_tl68916906_ (##cdr _e68896901_)))
                                        (if (if (gx#identifier? _hd68906904_)
                                                (gx#core-identifier=?
                                                 _hd68906904_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls6909_ _tl68916906_))
                                              (if '#t
                                                  (_lp6799_
                                                   _rest6875_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls6802_
                                                    _xdecls6909_)
                                                   _bind6803_
                                                   _body6804_)
                                                  (_E68886897_)))
                                            (_E68886897_))))
                                    (_E68886897_)))))
                         (let ((_E68776943_
                                (lambda ()
                                  (if (gx#stx-pair? _e68766893_)
                                      (let ((_e68796915_
                                             (gx#syntax-e _e68766893_)))
                                        (let ((_hd68806918_
                                               (##car _e68796915_))
                                              (_tl68816920_
                                               (##cdr _e68796915_)))
                                          (if (if (gx#identifier? _hd68806918_)
                                                  (gx#core-identifier=?
                                                   _hd68806918_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl68816920_)
                                                  (let ((_e68826923_
                                                         (gx#syntax-e
                                                          _tl68816920_)))
                                                    (let ((_hd68836926_
                                                           (##car _e68826923_))
                                                          (_tl68846928_
                                                           (##cdr _e68826923_)))
                                                      (let ((_hd-bind6931_
                                                             _hd68836926_))
                                                        (if (gx#stx-pair?
                                                             _tl68846928_)
                                                            (let ((_e68856933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl68846928_)))
                      (let ((_hd68866936_ (##car _e68856933_))
                            (_tl68876938_ (##cdr _e68856933_)))
                        (let ((_expr6941_ _hd68866936_))
                          (if (gx#stx-null? _tl68876938_)
                              (if '#t
                                  (_lp6799_
                                   _rest6875_
                                   _decls6802_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind6931_)
                                               (cons (gx#core-expand-expression
                                                      _expr6941_)
                                                     '()))
                                         _bind6803_)
                                   _body6804_)
                                  (_E68786911_))
                              (_E68786911_)))))
                    (_E68786911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E68786911_))
                                              (_E68786911_))))
                                      (_E68786911_)))))
                           (let () (_E68776943_))))))
                   (_E68076861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E68076861_)))))
                                    (let () (_E68066947_))))))))
                    _lp6799_)
                  _rbody6797_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal6793_
                 (lambda (_hd7056_ _rest7057_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal6795_
                       (gx#core-expand-block
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd7056_ _rest7057_)
                         (gx#stx-source _stx6789_))
                        _expand-internal-special6794_
                        '#f)))
                    gx#current-expander-context
                    (gx#make-local-context)))))
            (let ((_expand-special6792_
                   (lambda (_hd7060_ _K7061_ _rest7062_ _r7063_)
                     (_K7061_ '()
                              (cons (_expand-internal6793_ _hd7060_ _rest7062_)
                                    _r7063_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body6790_)
                (gx#stx-source _stx6789_))
               _expand-special6792_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx6727_)
      (let ((_e67286735_ _stx6727_))
        (let ((_E67306739_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67286735_))))
          (let ((_E67296785_
                 (lambda ()
                   (if (gx#stx-pair? _e67286735_)
                       (let ((_e67316743_ (gx#syntax-e _e67286735_)))
                         (let ((_hd67326746_ (##car _e67316743_))
                               (_tl67336748_ (##cdr _e67316743_)))
                           (let ((_body6751_ _tl67336748_))
                             (if (gx#stx-list? _body6751_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map
                                    (lambda (_decl6753_)
                                      (let ((_e67546761_ _decl6753_))
                                        (let ((_E67566765_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e67546761_))))
                                          (let ((_E67556781_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e67546761_)
                                                       (let ((_e67576769_
                                                              (gx#syntax-e
                                                               _e67546761_)))
                                                         (let ((_hd67586772_
                                                                (##car _e67576769_))
                                                               (_tl67596774_
                                                                (##cdr _e67576769_)))
                                                           (let ((_head6777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd67586772_))
                     (let ((_args6779_ _tl67596774_))
                       (if (gx#stx-list? _args6779_)
                           (gx#stx-map gx#core-quote-syntax _decl6753_)
                           (_E67566765_))))))
               (_E67566765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E67556781_))))))
                                    _body6751_))
                                  (gx#stx-source _stx6727_))
                                 (_E67306739_)))))
                       (_E67306739_)))))
            (let () (_E67296785_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx6611_)
      (let ((_e66126619_ _stx6611_))
        (let ((_E66146623_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66126619_))))
          (let ((_E66136723_
                 (lambda ()
                   (if (gx#stx-pair? _e66126619_)
                       (let ((_e66156627_ (gx#syntax-e _e66126619_)))
                         (let ((_hd66166630_ (##car _e66156627_))
                               (_tl66176632_ (##cdr _e66156627_)))
                           (let ((_body6635_ _tl66176632_))
                             (if (gx#stx-list? _body6635_)
                                 (begin
                                   (gx#stx-for-each
                                    (lambda (_bind6637_)
                                      (let ((_e66386648_ _bind6637_))
                                        (let ((_E66406652_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e66386648_))))
                                          (let ((_E66396676_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e66386648_)
                                                       (let ((_e66416656_
                                                              (gx#syntax-e
                                                               _e66386648_)))
                                                         (let ((_hd66426659_
                                                                (##car _e66416656_))
                                                               (_tl66436661_
                                                                (##cdr _e66416656_)))
                                                           (let ((_id6664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd66426659_))
                     (if (gx#stx-pair? _tl66436661_)
                         (let ((_e66446666_ (gx#syntax-e _tl66436661_)))
                           (let ((_hd66456669_ (##car _e66446666_))
                                 (_tl66466671_ (##cdr _e66446666_)))
                             (let ((_eid6674_ _hd66456669_))
                               (if (gx#stx-null? _tl66466671_)
                                   (if (if (gx#identifier? _id6664_)
                                           (gx#identifier? _eid6674_)
                                           '#f)
                                       (gx#core-bind-extern!
                                        _id6664_
                                        (gx#stx-e _eid6674_))
                                       (_E66406652_))
                                   (_E66406652_)))))
                         (_E66406652_)))))
               (_E66406652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E66396676_))))))
                                    _body6635_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map
                                      (lambda (_bind6680_)
                                        (let ((_e66816691_ _bind6680_))
                                          (let ((_E66836695_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e66816691_))))
                                            (let ((_E66826719_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e66816691_)
                                                         (let ((_e66846699_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e66816691_)))
                   (let ((_hd66856702_ (##car _e66846699_))
                         (_tl66866704_ (##cdr _e66846699_)))
                     (let ((_id6707_ _hd66856702_))
                       (if (gx#stx-pair? _tl66866704_)
                           (let ((_e66876709_ (gx#syntax-e _tl66866704_)))
                             (let ((_hd66886712_ (##car _e66876709_))
                                   (_tl66896714_ (##cdr _e66876709_)))
                               (let ((_eid6717_ _hd66886712_))
                                 (if (gx#stx-null? _tl66896714_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax _id6707_)
                                               (cons (gx#stx-e _eid6717_) '()))
                                         (_E66836695_))
                                     (_E66836695_)))))
                           (_E66836695_)))))
                 (_E66836695_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E66826719_))))))
                                      _body6635_))
                                    (gx#stx-source _stx6611_)))
                                 (_E66146623_)))))
                       (_E66146623_)))))
            (let () (_E66136723_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx6557_)
      (let ((_e65586571_ _stx6557_))
        (let ((_E65606575_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65586571_))))
          (let ((_E65596607_
                 (lambda ()
                   (if (gx#stx-pair? _e65586571_)
                       (let ((_e65616579_ (gx#syntax-e _e65586571_)))
                         (let ((_hd65626582_ (##car _e65616579_))
                               (_tl65636584_ (##cdr _e65616579_)))
                           (if (gx#stx-pair? _tl65636584_)
                               (let ((_e65646587_ (gx#syntax-e _tl65636584_)))
                                 (let ((_hd65656590_ (##car _e65646587_))
                                       (_tl65666592_ (##cdr _e65646587_)))
                                   (let ((_hd6595_ _hd65656590_))
                                     (if (gx#stx-pair? _tl65666592_)
                                         (let ((_e65676597_
                                                (gx#syntax-e _tl65666592_)))
                                           (let ((_hd65686600_
                                                  (##car _e65676597_))
                                                 (_tl65696602_
                                                  (##cdr _e65676597_)))
                                             (let ((_expr6605_ _hd65686600_))
                                               (if (gx#stx-null? _tl65696602_)
                                                   (if (gx#core-bind-values?
                                                        _hd6595_)
                                                       (begin
                                                         (gx#core-bind-values!
                                                          _hd6595_)
                                                         (gx#core-quote-syntax
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd6595_)
                              (cons (gx#core-expand-expression _expr6605_)
                                    '())))
                  (gx#stx-source _stx6557_)))
               (_E65606575_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65606575_)))))
                                         (_E65606575_)))))
                               (_E65606575_))))
                       (_E65606575_)))))
            (let () (_E65596607_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx6503_)
      (let ((_e65046517_ _stx6503_))
        (let ((_E65066521_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65046517_))))
          (let ((_E65056553_
                 (lambda ()
                   (if (gx#stx-pair? _e65046517_)
                       (let ((_e65076525_ (gx#syntax-e _e65046517_)))
                         (let ((_hd65086528_ (##car _e65076525_))
                               (_tl65096530_ (##cdr _e65076525_)))
                           (if (gx#stx-pair? _tl65096530_)
                               (let ((_e65106533_ (gx#syntax-e _tl65096530_)))
                                 (let ((_hd65116536_ (##car _e65106533_))
                                       (_tl65126538_ (##cdr _e65106533_)))
                                   (let ((_id6541_ _hd65116536_))
                                     (if (gx#stx-pair? _tl65126538_)
                                         (let ((_e65136543_
                                                (gx#syntax-e _tl65126538_)))
                                           (let ((_hd65146546_
                                                  (##car _e65136543_))
                                                 (_tl65156548_
                                                  (##cdr _e65136543_)))
                                             (let ((_binding-id6551_
                                                    _hd65146546_))
                                               (if (gx#stx-null? _tl65156548_)
                                                   (if (if (gx#identifier?
                                                            _id6541_)
                                                           (gx#identifier?
                                                            _binding-id6551_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!
                                                          _id6541_
                                                          (gx#stx-e
                                                           _binding-id6551_))
                                                         (gx#core-quote-syntax
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax _id6541_)
                              (cons (gx#core-quote-syntax _binding-id6551_)
                                    '())))))
               (_E65066521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65066521_)))))
                                         (_E65066521_)))))
                               (_E65066521_))))
                       (_E65066521_)))))
            (let () (_E65056553_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx6446_)
      (let ((_e64476460_ _stx6446_))
        (let ((_E64496464_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64476460_))))
          (let ((_E64486499_
                 (lambda ()
                   (if (gx#stx-pair? _e64476460_)
                       (let ((_e64506468_ (gx#syntax-e _e64476460_)))
                         (let ((_hd64516471_ (##car _e64506468_))
                               (_tl64526473_ (##cdr _e64506468_)))
                           (if (gx#stx-pair? _tl64526473_)
                               (let ((_e64536476_ (gx#syntax-e _tl64526473_)))
                                 (let ((_hd64546479_ (##car _e64536476_))
                                       (_tl64556481_ (##cdr _e64536476_)))
                                   (let ((_id6484_ _hd64546479_))
                                     (if (gx#stx-pair? _tl64556481_)
                                         (let ((_e64566486_
                                                (gx#syntax-e _tl64556481_)))
                                           (let ((_hd64576489_
                                                  (##car _e64566486_))
                                                 (_tl64586491_
                                                  (##cdr _e64566486_)))
                                             (let ((_expr6494_ _hd64576489_))
                                               (if (gx#stx-null? _tl64586491_)
                                                   (if (gx#identifier?
                                                        _id6484_)
                                                       (let ((_g12694_
                                                              (gx#core-expand-expression+1
                                                               _expr6494_)))
                                                         (begin
                                                           (let ((_g12695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g12694_)))
                     (if (not (fx= _g12695_ 2))
                         (error "Context expects 2 values" _g12695_)))
                   (let ((_e-stx6496_ (values-ref _g12694_ 0))
                         (_e6497_ (values-ref _g12694_ 1)))
                     (begin
                       (gx#core-bind-syntax! _id6484_ _e6497_)
                       (gx#core-quote-syntax
                        (cons (gx#core-quote-syntax '%#define-syntax)
                              (cons (gx#core-quote-syntax _id6484_)
                                    (cons _e-stx6496_ '())))
                        (gx#stx-source _stx6446_))))))
               (_E64496464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E64496464_)))))
                                         (_E64496464_)))))
                               (_E64496464_))))
                       (_E64496464_)))))
            (let () (_E64486499_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx6390_)
      (let ((_e63916404_ _stx6390_))
        (let ((_E63936408_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63916404_))))
          (let ((_E63926442_
                 (lambda ()
                   (if (gx#stx-pair? _e63916404_)
                       (let ((_e63946412_ (gx#syntax-e _e63916404_)))
                         (let ((_hd63956415_ (##car _e63946412_))
                               (_tl63966417_ (##cdr _e63946412_)))
                           (if (gx#stx-pair? _tl63966417_)
                               (let ((_e63976420_ (gx#syntax-e _tl63966417_)))
                                 (let ((_hd63986423_ (##car _e63976420_))
                                       (_tl63996425_ (##cdr _e63976420_)))
                                   (let ((_id6428_ _hd63986423_))
                                     (if (gx#stx-pair? _tl63996425_)
                                         (let ((_e64006430_
                                                (gx#syntax-e _tl63996425_)))
                                           (let ((_hd64016433_
                                                  (##car _e64006430_))
                                                 (_tl64026435_
                                                  (##cdr _e64006430_)))
                                             (let ((_alias-id6438_
                                                    _hd64016433_))
                                               (if (gx#stx-null? _tl64026435_)
                                                   (if (if (gx#identifier?
                                                            _id6428_)
                                                           (gx#identifier?
                                                            _alias-id6438_)
                                                           '#f)
                                                       (let ((_alias-id6440_
                                                              (gx#core-quote-syntax
                                                               _alias-id6438_)))
                                                         (begin
                                                           (gx#core-bind-alias!
                                                            _id6428_
                                                            _alias-id6440_)
                                                           (gx#core-quote-syntax
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax _id6428_)
                                (cons _alias-id6440_ '()))))))
               (_E63936408_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63936408_)))))
                                         (_E63936408_)))))
                               (_E63936408_))))
                       (_E63936408_)))))
            (let () (_E63926442_)))))))
  (define gx#core-expand-lambda%
    (let ((_opt-lambda63316380_
           (lambda (_stx6333_ _wrap?6334_)
             (let ((_e63356345_ _stx6333_))
               (let ((_E63376349_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e63356345_))))
                 (let ((_E63366376_
                        (lambda ()
                          (if (gx#stx-pair? _e63356345_)
                              (let ((_e63386353_ (gx#syntax-e _e63356345_)))
                                (let ((_hd63396356_ (##car _e63386353_))
                                      (_tl63406358_ (##cdr _e63386353_)))
                                  (if (gx#stx-pair? _tl63406358_)
                                      (let ((_e63416361_
                                             (gx#syntax-e _tl63406358_)))
                                        (let ((_hd63426364_
                                               (##car _e63416361_))
                                              (_tl63436366_
                                               (##cdr _e63416361_)))
                                          (let ((_hd6369_ _hd63426364_))
                                            (let ((_body6371_ _tl63436366_))
                                              (if (gx#core-bind-values?
                                                   _hd6369_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (begin
                                                       (gx#core-bind-values!
                                                        _hd6369_)
                                                       (let ((_body6374_
                                                              (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd6369_)
                            (cons (gx#core-expand-local-block
                                   _stx6333_
                                   _body6371_)
                                  '()))))
                 (if _wrap?6334_
                     (gx#core-quote-syntax
                      (gx#core-cons '%#lambda _body6374_)
                      (gx#stx-source _stx6333_))
                     _body6374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   gx#current-expander-context
                                                   (gx#make-local-context))
                                                  (_E63376349_))))))
                                      (_E63376349_))))
                              (_E63376349_)))))
                   (let () (_E63366376_))))))))
      (lambda _g12697_
        (let ((_g12696_ (length _g12697_)))
          (cond ((fx= _g12696_ 1)
                 (apply (lambda (_stx6383_)
                          (let ((_wrap?6385_ '#t))
                            (_opt-lambda63316380_ _stx6383_ _wrap?6385_)))
                        _g12697_))
                ((fx= _g12696_ 2)
                 (apply (lambda (_stx6387_ _wrap?6388_)
                          (_opt-lambda63316380_ _stx6387_ _wrap?6388_))
                        _g12697_))
                (else (error "No clause matching arguments" _g12697_)))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx6297_)
      (let ((_e62986305_ _stx6297_))
        (let ((_E63006309_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62986305_))))
          (let ((_E62996328_
                 (lambda ()
                   (if (gx#stx-pair? _e62986305_)
                       (let ((_e63016313_ (gx#syntax-e _e62986305_)))
                         (let ((_hd63026316_ (##car _e63016313_))
                               (_tl63036318_ (##cdr _e63016313_)))
                           (let ((_clauses6321_ _tl63036318_))
                             (if (gx#stx-list? _clauses6321_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map
                                    (lambda (_clause6323_)
                                      (gx#core-expand-lambda%
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause6323_)
                                        (let ((_$e6325_
                                               (gx#stx-source _clause6323_)))
                                          (if _$e6325_
                                              _$e6325_
                                              (gx#stx-source _stx6297_))))
                                       '#f))
                                    _clauses6321_))
                                  (gx#stx-source _stx6297_))
                                 (_E63006309_)))))
                       (_E63006309_)))))
            (let () (_E62996328_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx6251_)
      (let ((_e62526262_ _stx6251_))
        (let ((_E62546266_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62526262_))))
          (let ((_E62536293_
                 (lambda ()
                   (if (gx#stx-pair? _e62526262_)
                       (let ((_e62556270_ (gx#syntax-e _e62526262_)))
                         (let ((_hd62566273_ (##car _e62556270_))
                               (_tl62576275_ (##cdr _e62556270_)))
                           (if (gx#stx-pair? _tl62576275_)
                               (let ((_e62586278_ (gx#syntax-e _tl62576275_)))
                                 (let ((_hd62596281_ (##car _e62586278_))
                                       (_tl62606283_ (##cdr _e62586278_)))
                                   (let ((_hd6286_ _hd62596281_))
                                     (let ((_body6288_ _tl62606283_))
                                       (if (gx#core-expand-let-bind? _hd6286_)
                                           (let ((_expressions6290_
                                                  (gx#stx-map
                                                   gx#core-expand-let-bind-expression
                                                   _hd6286_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-values!
                                                   _hd6286_)
                                                  (gx#core-quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          '%#let-values)
                                                         (cons (gx#stx-map
                                                                gx#core-expand-let-bind-quote
                                                                _hd6286_
                                                                _expressions6290_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6251_
                              _body6288_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6251_))))
                                              gx#current-expander-context
                                              (gx#make-local-context)))
                                           (_E62546266_))))))
                               (_E62546266_))))
                       (_E62546266_)))))
            (let () (_E62536293_)))))))
  (define gx#core-expand-letrec-values%
    (let ((_opt-lambda61946241_
           (lambda (_stx6196_ _form6197_)
             (let ((_e61986208_ _stx6196_))
               (let ((_E62006212_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e61986208_))))
                 (let ((_E61996237_
                        (lambda ()
                          (if (gx#stx-pair? _e61986208_)
                              (let ((_e62016216_ (gx#syntax-e _e61986208_)))
                                (let ((_hd62026219_ (##car _e62016216_))
                                      (_tl62036221_ (##cdr _e62016216_)))
                                  (if (gx#stx-pair? _tl62036221_)
                                      (let ((_e62046224_
                                             (gx#syntax-e _tl62036221_)))
                                        (let ((_hd62056227_
                                               (##car _e62046224_))
                                              (_tl62066229_
                                               (##cdr _e62046224_)))
                                          (let ((_hd6232_ _hd62056227_))
                                            (let ((_body6234_ _tl62066229_))
                                              (if (gx#core-expand-let-bind?
                                                   _hd6232_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (begin
                                                       (gx#stx-for-each
                                                        gx#core-expand-let-bind-values!
                                                        _hd6232_)
                                                       (gx#core-quote-syntax
                                                        (cons (gx#core-quote-syntax
                                                               _form6197_)
                                                              (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#core-expand-let-bind-quote
                             _hd6232_
                             (gx#stx-map
                              gx#core-expand-let-bind-expression
                              _hd6232_))
                            (cons (gx#core-expand-local-block
                                   _stx6196_
                                   _body6234_)
                                  '())))
                (gx#stx-source _stx6196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   gx#current-expander-context
                                                   (gx#make-local-context))
                                                  (_E62006212_))))))
                                      (_E62006212_))))
                              (_E62006212_)))))
                   (let () (_E61996237_))))))))
      (lambda _g12699_
        (let ((_g12698_ (length _g12699_)))
          (cond ((fx= _g12698_ 1)
                 (apply (lambda (_stx6244_)
                          (let ((_form6246_ '%#letrec-values))
                            (_opt-lambda61946241_ _stx6244_ _form6246_)))
                        _g12699_))
                ((fx= _g12698_ 2)
                 (apply (lambda (_stx6248_ _form6249_)
                          (_opt-lambda61946241_ _stx6248_ _form6249_))
                        _g12699_))
                (else (error "No clause matching arguments" _g12699_)))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx6193_)
      (gx#core-expand-letrec-values% _stx6193_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx6150_)
      (if (gx#stx-list? _stx6150_)
          (gx#stx-andmap
           (lambda (_bind6152_)
             (let ((_e61536163_ _bind6152_))
               (let ((_E61556167_ (lambda () '#f)))
                 (let ((_E61546189_
                        (lambda ()
                          (if (gx#stx-pair? _e61536163_)
                              (let ((_e61566171_ (gx#syntax-e _e61536163_)))
                                (let ((_hd61576174_ (##car _e61566171_))
                                      (_tl61586176_ (##cdr _e61566171_)))
                                  (let ((_hd6179_ _hd61576174_))
                                    (if (gx#stx-pair? _tl61586176_)
                                        (let ((_e61596181_
                                               (gx#syntax-e _tl61586176_)))
                                          (let ((_hd61606184_
                                                 (##car _e61596181_))
                                                (_tl61616186_
                                                 (##cdr _e61596181_)))
                                            (if (gx#stx-null? _tl61616186_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd6179_)
                                                    (_E61556167_))
                                                (_E61556167_))))
                                        (_E61556167_)))))
                              (_E61556167_)))))
                   (let () (_E61546189_))))))
           _stx6150_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind6109_)
      (let ((_e61106120_ _bind6109_))
        (let ((_E61126124_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e61106120_))))
          (let ((_E61116146_
                 (lambda ()
                   (if (gx#stx-pair? _e61106120_)
                       (let ((_e61136128_ (gx#syntax-e _e61106120_)))
                         (let ((_hd61146131_ (##car _e61136128_))
                               (_tl61156133_ (##cdr _e61136128_)))
                           (if (gx#stx-pair? _tl61156133_)
                               (let ((_e61166136_ (gx#syntax-e _tl61156133_)))
                                 (let ((_hd61176139_ (##car _e61166136_))
                                       (_tl61186141_ (##cdr _e61166136_)))
                                   (let ((_expr6144_ _hd61176139_))
                                     (if (gx#stx-null? _tl61186141_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6144_)
                                             (_E61126124_))
                                         (_E61126124_)))))
                               (_E61126124_))))
                       (_E61126124_)))))
            (let () (_E61116146_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind6068_)
      (let ((_e60696079_ _bind6068_))
        (let ((_E60716083_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60696079_))))
          (let ((_E60706105_
                 (lambda ()
                   (if (gx#stx-pair? _e60696079_)
                       (let ((_e60726087_ (gx#syntax-e _e60696079_)))
                         (let ((_hd60736090_ (##car _e60726087_))
                               (_tl60746092_ (##cdr _e60726087_)))
                           (let ((_hd6095_ _hd60736090_))
                             (if (gx#stx-pair? _tl60746092_)
                                 (let ((_e60756097_
                                        (gx#syntax-e _tl60746092_)))
                                   (let ((_hd60766100_ (##car _e60756097_))
                                         (_tl60776102_ (##cdr _e60756097_)))
                                     (if (gx#stx-null? _tl60776102_)
                                         (if '#t
                                             (gx#core-bind-values! _hd6095_)
                                             (_E60716083_))
                                         (_E60716083_))))
                                 (_E60716083_)))))
                       (_E60716083_)))))
            (let () (_E60706105_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind6026_ _expr6027_)
      (let ((_e60286038_ _bind6026_))
        (let ((_E60306042_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60286038_))))
          (let ((_E60296064_
                 (lambda ()
                   (if (gx#stx-pair? _e60286038_)
                       (let ((_e60316046_ (gx#syntax-e _e60286038_)))
                         (let ((_hd60326049_ (##car _e60316046_))
                               (_tl60336051_ (##cdr _e60316046_)))
                           (let ((_hd6054_ _hd60326049_))
                             (if (gx#stx-pair? _tl60336051_)
                                 (let ((_e60346056_
                                        (gx#syntax-e _tl60336051_)))
                                   (let ((_hd60356059_ (##car _e60346056_))
                                         (_tl60366061_ (##cdr _e60346056_)))
                                     (if (gx#stx-null? _tl60366061_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd6054_)
                                                   (cons _expr6027_ '()))
                                             (_E60306042_))
                                         (_E60306042_))))
                                 (_E60306042_)))))
                       (_E60306042_)))))
            (let () (_E60296064_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx5980_)
      (let ((_e59815991_ _stx5980_))
        (let ((_E59835995_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59815991_))))
          (let ((_E59826022_
                 (lambda ()
                   (if (gx#stx-pair? _e59815991_)
                       (let ((_e59845999_ (gx#syntax-e _e59815991_)))
                         (let ((_hd59856002_ (##car _e59845999_))
                               (_tl59866004_ (##cdr _e59845999_)))
                           (if (gx#stx-pair? _tl59866004_)
                               (let ((_e59876007_ (gx#syntax-e _tl59866004_)))
                                 (let ((_hd59886010_ (##car _e59876007_))
                                       (_tl59896012_ (##cdr _e59876007_)))
                                   (let ((_hd6015_ _hd59886010_))
                                     (let ((_body6017_ _tl59896012_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6015_)
                                           (let ((_expanders6019_
                                                  (gx#stx-map
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd6015_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd6015_
                                                   _expanders6019_)
                                                  (gx#core-expand-local-block
                                                   _stx5980_
                                                   _body6017_)))
                                              gx#current-expander-context
                                              (gx#make-local-context)))
                                           (_E59835995_))))))
                               (_E59835995_))))
                       (_E59835995_)))))
            (let () (_E59826022_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx5929_)
      (let ((_e59305940_ _stx5929_))
        (let ((_E59325944_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59305940_))))
          (let ((_E59315976_
                 (lambda ()
                   (if (gx#stx-pair? _e59305940_)
                       (let ((_e59335948_ (gx#syntax-e _e59305940_)))
                         (let ((_hd59345951_ (##car _e59335948_))
                               (_tl59355953_ (##cdr _e59335948_)))
                           (if (gx#stx-pair? _tl59355953_)
                               (let ((_e59365956_ (gx#syntax-e _tl59355953_)))
                                 (let ((_hd59375959_ (##car _e59365956_))
                                       (_tl59385961_ (##cdr _e59365956_)))
                                   (let ((_hd5964_ _hd59375959_))
                                     (let ((_body5966_ _tl59385961_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd5964_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd5964_
                                                 (make-list
                                                  (gx#stx-length _hd5964_)
                                                  '#!void))
                                                (gx#stx-for-each
                                                 (lambda (_g59685971_
                                                          _g59695973_)
                                                   (gx#core-expand-let-bind-syntax!
                                                    _g59685971_
                                                    _g59695973_
                                                    '#t))
                                                 _hd5964_
                                                 (gx#stx-map
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd5964_))
                                                (gx#core-expand-local-block
                                                 _stx5929_
                                                 _body5966_)))
                                            gx#current-expander-context
                                            (gx#make-local-context))
                                           (_E59325944_))))))
                               (_E59325944_))))
                       (_E59325944_)))))
            (let () (_E59315976_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx5886_)
      (if (gx#stx-list? _stx5886_)
          (gx#stx-andmap
           (lambda (_bind5888_)
             (let ((_e58895899_ _bind5888_))
               (let ((_E58915903_ (lambda () '#f)))
                 (let ((_E58905925_
                        (lambda ()
                          (if (gx#stx-pair? _e58895899_)
                              (let ((_e58925907_ (gx#syntax-e _e58895899_)))
                                (let ((_hd58935910_ (##car _e58925907_))
                                      (_tl58945912_ (##cdr _e58925907_)))
                                  (let ((_hd5915_ _hd58935910_))
                                    (if (gx#stx-pair? _tl58945912_)
                                        (let ((_e58955917_
                                               (gx#syntax-e _tl58945912_)))
                                          (let ((_hd58965920_
                                                 (##car _e58955917_))
                                                (_tl58975922_
                                                 (##cdr _e58955917_)))
                                            (if (gx#stx-null? _tl58975922_)
                                                (if '#t
                                                    (gx#identifier? _hd5915_)
                                                    (_E58915903_))
                                                (_E58915903_))))
                                        (_E58915903_)))))
                              (_E58915903_)))))
                   (let () (_E58905925_))))))
           _stx5886_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind5843_)
      (let ((_e58445854_ _bind5843_))
        (let ((_E58465858_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58445854_))))
          (let ((_E58455882_
                 (lambda ()
                   (if (gx#stx-pair? _e58445854_)
                       (let ((_e58475862_ (gx#syntax-e _e58445854_)))
                         (let ((_hd58485865_ (##car _e58475862_))
                               (_tl58495867_ (##cdr _e58475862_)))
                           (if (gx#stx-pair? _tl58495867_)
                               (let ((_e58505870_ (gx#syntax-e _tl58495867_)))
                                 (let ((_hd58515873_ (##car _e58505870_))
                                       (_tl58525875_ (##cdr _e58505870_)))
                                   (let ((_expr5878_ _hd58515873_))
                                     (if (gx#stx-null? _tl58525875_)
                                         (if '#t
                                             (let ((_g12700_
                                                    (gx#core-expand-expression+1
                                                     _expr5878_)))
                                               (begin
                                                 (let ((_g12701_
                                                        (values-count
                                                         _g12700_)))
                                                   (if (not (fx= _g12701_ 2))
                                                       (error "Context expects 2 values"
                                                              _g12701_)))
                                                 (let ((_e5880_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12700_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e5880_)))
                                             (_E58465858_))
                                         (_E58465858_)))))
                               (_E58465858_))))
                       (_E58465858_)))))
            (let () (_E58455882_)))))))
  (define gx#core-expand-let-bind-syntax!
    (let ((_opt-lambda57865831_
           (lambda (_bind5788_ _e5789_ _rebind?5790_)
             (let ((_e57915801_ _bind5788_))
               (let ((_E57935805_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e57915801_))))
                 (let ((_E57925827_
                        (lambda ()
                          (if (gx#stx-pair? _e57915801_)
                              (let ((_e57945809_ (gx#syntax-e _e57915801_)))
                                (let ((_hd57955812_ (##car _e57945809_))
                                      (_tl57965814_ (##cdr _e57945809_)))
                                  (let ((_id5817_ _hd57955812_))
                                    (if (gx#stx-pair? _tl57965814_)
                                        (let ((_e57975819_
                                               (gx#syntax-e _tl57965814_)))
                                          (let ((_hd57985822_
                                                 (##car _e57975819_))
                                                (_tl57995824_
                                                 (##cdr _e57975819_)))
                                            (if (gx#stx-null? _tl57995824_)
                                                (if '#t
                                                    (gx#core-bind-syntax!
                                                     _id5817_
                                                     _e5789_
                                                     _rebind?5790_)
                                                    (_E57935805_))
                                                (_E57935805_))))
                                        (_E57935805_)))))
                              (_E57935805_)))))
                   (let () (_E57925827_))))))))
      (lambda _g12703_
        (let ((_g12702_ (length _g12703_)))
          (cond ((fx= _g12702_ 2)
                 (apply (lambda (_bind5834_ _e5835_)
                          (let ((_rebind?5837_ '#f))
                            (_opt-lambda57865831_
                             _bind5834_
                             _e5835_
                             _rebind?5837_)))
                        _g12703_))
                ((fx= _g12702_ 3)
                 (apply (lambda (_bind5839_ _e5840_ _rebind?5841_)
                          (_opt-lambda57865831_
                           _bind5839_
                           _e5840_
                           _rebind?5841_))
                        _g12703_))
                (else (error "No clause matching arguments" _g12703_)))))))
  (define gx#core-expand-expression%
    (lambda (_stx5746_)
      (let ((_e57475757_ _stx5746_))
        (let ((_E57495761_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57475757_))))
          (let ((_E57485783_
                 (lambda ()
                   (if (gx#stx-pair? _e57475757_)
                       (let ((_e57505765_ (gx#syntax-e _e57475757_)))
                         (let ((_hd57515768_ (##car _e57505765_))
                               (_tl57525770_ (##cdr _e57505765_)))
                           (if (gx#stx-pair? _tl57525770_)
                               (let ((_e57535773_ (gx#syntax-e _tl57525770_)))
                                 (let ((_hd57545776_ (##car _e57535773_))
                                       (_tl57555778_ (##cdr _e57535773_)))
                                   (let ((_expr5781_ _hd57545776_))
                                     (if (gx#stx-null? _tl57555778_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr5781_)
                                             (_E57495761_))
                                         (_E57495761_)))))
                               (_E57495761_))))
                       (_E57495761_)))))
            (let () (_E57485783_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx5705_)
      (let ((_e57065716_ _stx5705_))
        (let ((_E57085720_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57065716_))))
          (let ((_E57075742_
                 (lambda ()
                   (if (gx#stx-pair? _e57065716_)
                       (let ((_e57095724_ (gx#syntax-e _e57065716_)))
                         (let ((_hd57105727_ (##car _e57095724_))
                               (_tl57115729_ (##cdr _e57095724_)))
                           (if (gx#stx-pair? _tl57115729_)
                               (let ((_e57125732_ (gx#syntax-e _tl57115729_)))
                                 (let ((_hd57135735_ (##car _e57125732_))
                                       (_tl57145737_ (##cdr _e57125732_)))
                                   (let ((_e5740_ _hd57135735_))
                                     (if (gx#stx-null? _tl57145737_)
                                         (if '#t
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e5740_)
                                                          '()))
                                              (gx#stx-source _stx5705_))
                                             (_E57085720_))
                                         (_E57085720_)))))
                               (_E57085720_))))
                       (_E57085720_)))))
            (let () (_E57075742_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx5664_)
      (let ((_e56655675_ _stx5664_))
        (let ((_E56675679_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e56655675_))))
          (let ((_E56665701_
                 (lambda ()
                   (if (gx#stx-pair? _e56655675_)
                       (let ((_e56685683_ (gx#syntax-e _e56655675_)))
                         (let ((_hd56695686_ (##car _e56685683_))
                               (_tl56705688_ (##cdr _e56685683_)))
                           (if (gx#stx-pair? _tl56705688_)
                               (let ((_e56715691_ (gx#syntax-e _tl56705688_)))
                                 (let ((_hd56725694_ (##car _e56715691_))
                                       (_tl56735696_ (##cdr _e56715691_)))
                                   (let ((_e5699_ _hd56725694_))
                                     (if (gx#stx-null? _tl56735696_)
                                         (if '#t
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax
                                                           _e5699_)
                                                          '()))
                                              (gx#stx-source _stx5664_))
                                             (_E56675679_))
                                         (_E56675679_)))))
                               (_E56675679_))))
                       (_E56675679_)))))
            (let () (_E56665701_)))))))
  (define gx#core-expand-call%
    (lambda (_stx5621_)
      (let ((_e56225632_ _stx5621_))
        (let ((_E56245636_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e56225632_))))
          (let ((_E56235660_
                 (lambda ()
                   (if (gx#stx-pair? _e56225632_)
                       (let ((_e56255640_ (gx#syntax-e _e56225632_)))
                         (let ((_hd56265643_ (##car _e56255640_))
                               (_tl56275645_ (##cdr _e56255640_)))
                           (if (gx#stx-pair? _tl56275645_)
                               (let ((_e56285648_ (gx#syntax-e _tl56275645_)))
                                 (let ((_hd56295651_ (##car _e56285648_))
                                       (_tl56305653_ (##cdr _e56285648_)))
                                   (let ((_rator5656_ _hd56295651_))
                                     (let ((_args5658_ _tl56305653_))
                                       (if (gx#stx-list? _args5658_)
                                           (gx#core-quote-syntax
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator5656_)
                                             (gx#stx-map
                                              gx#core-expand-expression
                                              _args5658_))
                                            (gx#stx-source _stx5621_))
                                           (_E56245636_))))))
                               (_E56245636_))))
                       (_E56245636_)))))
            (let () (_E56235660_)))))))
  (define gx#core-expand-if%
    (lambda (_stx5554_)
      (let ((_e55555571_ _stx5554_))
        (let ((_E55575575_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55555571_))))
          (let ((_E55565617_
                 (lambda ()
                   (if (gx#stx-pair? _e55555571_)
                       (let ((_e55585579_ (gx#syntax-e _e55555571_)))
                         (let ((_hd55595582_ (##car _e55585579_))
                               (_tl55605584_ (##cdr _e55585579_)))
                           (if (gx#stx-pair? _tl55605584_)
                               (let ((_e55615587_ (gx#syntax-e _tl55605584_)))
                                 (let ((_hd55625590_ (##car _e55615587_))
                                       (_tl55635592_ (##cdr _e55615587_)))
                                   (let ((_test5595_ _hd55625590_))
                                     (if (gx#stx-pair? _tl55635592_)
                                         (let ((_e55645597_
                                                (gx#syntax-e _tl55635592_)))
                                           (let ((_hd55655600_
                                                  (##car _e55645597_))
                                                 (_tl55665602_
                                                  (##cdr _e55645597_)))
                                             (let ((_K5605_ _hd55655600_))
                                               (if (gx#stx-pair? _tl55665602_)
                                                   (let ((_e55675607_
                                                          (gx#syntax-e
                                                           _tl55665602_)))
                                                     (let ((_hd55685610_
                                                            (##car _e55675607_))
                                                           (_tl55695612_
                                                            (##cdr _e55675607_)))
                                                       (let ((_E5615_ _hd55685610_))
                                                         (if (gx#stx-null?
                                                              _tl55695612_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax
                          (cons (gx#core-quote-syntax '%#if)
                                (cons (gx#core-expand-expression _test5595_)
                                      (cons (gx#core-expand-expression _K5605_)
                                            (cons (gx#core-expand-expression
                                                   _E5615_)
                                                  '()))))
                          (gx#stx-source _stx5554_))
                         (_E55575575_))
                     (_E55575575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E55575575_)))))
                                         (_E55575575_)))))
                               (_E55575575_))))
                       (_E55575575_)))))
            (let () (_E55565617_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx5513_)
      (let ((_e55145524_ _stx5513_))
        (let ((_E55165528_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55145524_))))
          (let ((_E55155550_
                 (lambda ()
                   (if (gx#stx-pair? _e55145524_)
                       (let ((_e55175532_ (gx#syntax-e _e55145524_)))
                         (let ((_hd55185535_ (##car _e55175532_))
                               (_tl55195537_ (##cdr _e55175532_)))
                           (if (gx#stx-pair? _tl55195537_)
                               (let ((_e55205540_ (gx#syntax-e _tl55195537_)))
                                 (let ((_hd55215543_ (##car _e55205540_))
                                       (_tl55225545_ (##cdr _e55205540_)))
                                   (let ((_id5548_ _hd55215543_))
                                     (if (gx#stx-null? _tl55225545_)
                                         (if (gx#core-runtime-ref? _id5548_)
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id5548_
                                                           _stx5513_)
                                                          '()))
                                              (gx#stx-source _stx5513_))
                                             (_E55165528_))
                                         (_E55165528_)))))
                               (_E55165528_))))
                       (_E55165528_)))))
            (let () (_E55155550_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx5459_)
      (let ((_e54605473_ _stx5459_))
        (let ((_E54625477_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54605473_))))
          (let ((_E54615509_
                 (lambda ()
                   (if (gx#stx-pair? _e54605473_)
                       (let ((_e54635481_ (gx#syntax-e _e54605473_)))
                         (let ((_hd54645484_ (##car _e54635481_))
                               (_tl54655486_ (##cdr _e54635481_)))
                           (if (gx#stx-pair? _tl54655486_)
                               (let ((_e54665489_ (gx#syntax-e _tl54655486_)))
                                 (let ((_hd54675492_ (##car _e54665489_))
                                       (_tl54685494_ (##cdr _e54665489_)))
                                   (let ((_id5497_ _hd54675492_))
                                     (if (gx#stx-pair? _tl54685494_)
                                         (let ((_e54695499_
                                                (gx#syntax-e _tl54685494_)))
                                           (let ((_hd54705502_
                                                  (##car _e54695499_))
                                                 (_tl54715504_
                                                  (##cdr _e54695499_)))
                                             (let ((_expr5507_ _hd54705502_))
                                               (if (gx#stx-null? _tl54715504_)
                                                   (if (gx#core-runtime-ref?
                                                        _id5497_)
                                                       (gx#core-quote-syntax
                                                        (cons (gx#core-quote-syntax
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5497_
                             _stx5459_)
                            (cons (gx#core-expand-expression _expr5507_) '())))
                (gx#stx-source _stx5459_))
               (_E54625477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E54625477_)))))
                                         (_E54625477_)))))
                               (_E54625477_))))
                       (_E54625477_)))))
            (let () (_E54615509_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx5307_)
      (let ((_generate5309_
             (lambda (_body5339_)
               ((letrec ((_lp5341_
                          (lambda (_rest5343_ _ns5344_ _r5345_)
                            (let ((_e53465361_ _rest5343_))
                              (let ((_E53595365_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e53465361_))))
                                (let ((_E53555369_
                                       (lambda ()
                                         (if (gx#stx-null? _e53465361_)
                                             (if '#t
                                                 (reverse _r5345_)
                                                 (_E53595365_))
                                             (_E53595365_)))))
                                  (let ((_E53485426_
                                         (lambda ()
                                           (if (gx#stx-pair? _e53465361_)
                                               (let ((_e53565373_
                                                      (gx#syntax-e
                                                       _e53465361_)))
                                                 (let ((_hd53575376_
                                                        (##car _e53565373_))
                                                       (_tl53585378_
                                                        (##cdr _e53565373_)))
                                                   (let ((_hd5381_
                                                          _hd53575376_))
                                                     (let ((_rest5383_
                                                            _tl53585378_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd5381_)
                                                               (_lp5341_
                                                                _rest5383_
                                                                _ns5344_
                                                                (cons (cons _hd5381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns5344_
                                              (gx#stx-identifier
                                               _hd5381_
                                               _ns5344_
                                               '"#"
                                               _hd5381_)
                                              _hd5381_)
                                          '()))
                              _r5345_))
                       (let ((_e53845394_ _hd5381_))
                         (let ((_E53865398_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e53845394_))))
                           (let ((_E53855422_
                                  (lambda ()
                                    (if (gx#stx-pair? _e53845394_)
                                        (let ((_e53875402_
                                               (gx#syntax-e _e53845394_)))
                                          (let ((_hd53885405_
                                                 (##car _e53875402_))
                                                (_tl53895407_
                                                 (##cdr _e53875402_)))
                                            (let ((_id5410_ _hd53885405_))
                                              (if (gx#stx-pair? _tl53895407_)
                                                  (let ((_e53905412_
                                                         (gx#syntax-e
                                                          _tl53895407_)))
                                                    (let ((_hd53915415_
                                                           (##car _e53905412_))
                                                          (_tl53925417_
                                                           (##cdr _e53905412_)))
                                                      (let ((_eid5420_
                                                             _hd53915415_))
                                                        (if (gx#stx-null?
                                                             _tl53925417_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5410_)
                            (gx#identifier? _eid5420_)
                            '#f)
                        (_lp5341_
                         _rest5383_
                         _ns5344_
                         (cons (cons _id5410_ (cons _eid5420_ '())) _r5345_))
                        (_E53865398_))
                    (_E53865398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E53865398_)))))
                                        (_E53865398_)))))
                             (let () (_E53855422_))))))
                   (_E53555369_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E53555369_)))))
                                    (let ((_E53475455_
                                           (lambda ()
                                             (if (gx#stx-pair? _e53465361_)
                                                 (let ((_e53495430_
                                                        (gx#syntax-e
                                                         _e53465361_)))
                                                   (let ((_hd53505433_
                                                          (##car _e53495430_))
                                                         (_tl53515435_
                                                          (##cdr _e53495430_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd53505433_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl53515435_)
                                                             (let ((_e53525438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl53515435_)))
                       (let ((_hd53535441_ (##car _e53525438_))
                             (_tl53545443_ (##cdr _e53525438_)))
                         (let ((_ns5446_ _hd53535441_))
                           (let ((_rest5448_ _tl53545443_))
                             (if '#t
                                 (let ((_ns5453_
                                        (if (gx#identifier? _ns5446_)
                                            (symbol->string
                                             (gx#stx-e _ns5446_))
                                            (if (let ((_$e5450_
                                                       (gx#stx-string?
                                                        _ns5446_)))
                                                  (if _$e5450_
                                                      _$e5450_
                                                      (gx#stx-false?
                                                       _ns5446_)))
                                                (gx#stx-e _ns5446_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx5307_
                                                 _ns5446_)))))
                                   (_lp5341_ _rest5448_ _ns5453_ _r5345_))
                                 (_E53485426_))))))
                     (_E53485426_))
                 (_E53485426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E53485426_)))))
                                      (let () (_E53475455_))))))))))
                  _lp5341_)
                _body5339_
                (gx#core-context-namespace)
                '()))))
        (let ((_e53105317_ _stx5307_))
          (let ((_E53125321_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e53105317_))))
            (let ((_E53115335_
                   (lambda ()
                     (if (gx#stx-pair? _e53105317_)
                         (let ((_e53135325_ (gx#syntax-e _e53105317_)))
                           (let ((_hd53145328_ (##car _e53135325_))
                                 (_tl53155330_ (##cdr _e53135325_)))
                             (let ((_body5333_ _tl53155330_))
                               (if (gx#stx-list? _body5333_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate5309_ _body5333_))
                                   (_E53125321_)))))
                         (_E53125321_)))))
              (let () (_E53115335_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx5253_)
      (let ((_e52545267_ _stx5253_))
        (let ((_E52565271_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e52545267_))))
          (let ((_E52555303_
                 (lambda ()
                   (if (gx#stx-pair? _e52545267_)
                       (let ((_e52575275_ (gx#syntax-e _e52545267_)))
                         (let ((_hd52585278_ (##car _e52575275_))
                               (_tl52595280_ (##cdr _e52575275_)))
                           (if (gx#stx-pair? _tl52595280_)
                               (let ((_e52605283_ (gx#syntax-e _tl52595280_)))
                                 (let ((_hd52615286_ (##car _e52605283_))
                                       (_tl52625288_ (##cdr _e52605283_)))
                                   (let ((_hd5291_ _hd52615286_))
                                     (if (gx#stx-pair? _tl52625288_)
                                         (let ((_e52635293_
                                                (gx#syntax-e _tl52625288_)))
                                           (let ((_hd52645296_
                                                  (##car _e52635293_))
                                                 (_tl52655298_
                                                  (##cdr _e52635293_)))
                                             (let ((_expr5301_ _hd52645296_))
                                               (if (gx#stx-null? _tl52655298_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd5291_)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-values)
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd5291_)
                           (cons _expr5301_ '())))
               (_E52565271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E52565271_)))))
                                         (_E52565271_)))))
                               (_E52565271_))))
                       (_E52565271_)))))
            (let () (_E52555303_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx5199_)
      (let ((_e52005213_ _stx5199_))
        (let ((_E52025217_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e52005213_))))
          (let ((_E52015249_
                 (lambda ()
                   (if (gx#stx-pair? _e52005213_)
                       (let ((_e52035221_ (gx#syntax-e _e52005213_)))
                         (let ((_hd52045224_ (##car _e52035221_))
                               (_tl52055226_ (##cdr _e52035221_)))
                           (if (gx#stx-pair? _tl52055226_)
                               (let ((_e52065229_ (gx#syntax-e _tl52055226_)))
                                 (let ((_hd52075232_ (##car _e52065229_))
                                       (_tl52085234_ (##cdr _e52065229_)))
                                   (let ((_hd5237_ _hd52075232_))
                                     (if (gx#stx-pair? _tl52085234_)
                                         (let ((_e52095239_
                                                (gx#syntax-e _tl52085234_)))
                                           (let ((_hd52105242_
                                                  (##car _e52095239_))
                                                 (_tl52115244_
                                                  (##cdr _e52095239_)))
                                             (let ((_expr5247_ _hd52105242_))
                                               (if (gx#stx-null? _tl52115244_)
                                                   (if (gx#identifier?
                                                        _hd5237_)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-syntax)
                                                             (cons _hd5237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr5247_ '())))
               (_E52025217_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E52025217_)))))
                                         (_E52025217_)))))
                               (_E52025217_))))
                       (_E52025217_)))))
            (let () (_E52015249_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx5145_)
      (let ((_e51465159_ _stx5145_))
        (let ((_E51485163_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51465159_))))
          (let ((_E51475195_
                 (lambda ()
                   (if (gx#stx-pair? _e51465159_)
                       (let ((_e51495167_ (gx#syntax-e _e51465159_)))
                         (let ((_hd51505170_ (##car _e51495167_))
                               (_tl51515172_ (##cdr _e51495167_)))
                           (if (gx#stx-pair? _tl51515172_)
                               (let ((_e51525175_ (gx#syntax-e _tl51515172_)))
                                 (let ((_hd51535178_ (##car _e51525175_))
                                       (_tl51545180_ (##cdr _e51525175_)))
                                   (let ((_id5183_ _hd51535178_))
                                     (if (gx#stx-pair? _tl51545180_)
                                         (let ((_e51555185_
                                                (gx#syntax-e _tl51545180_)))
                                           (let ((_hd51565188_
                                                  (##car _e51555185_))
                                                 (_tl51575190_
                                                  (##cdr _e51555185_)))
                                             (let ((_alias-id5193_
                                                    _hd51565188_))
                                               (if (gx#stx-null? _tl51575190_)
                                                   (if (if (gx#identifier?
                                                            _id5183_)
                                                           (gx#identifier?
                                                            _alias-id5193_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-alias)
                                                             (cons _id5183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id5193_ '())))
               (_E51485163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E51485163_)))))
                                         (_E51485163_)))))
                               (_E51485163_))))
                       (_E51485163_)))))
            (let () (_E51475195_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx5102_)
      (let ((_e51035113_ _stx5102_))
        (let ((_E51055117_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51035113_))))
          (let ((_E51045141_
                 (lambda ()
                   (if (gx#stx-pair? _e51035113_)
                       (let ((_e51065121_ (gx#syntax-e _e51035113_)))
                         (let ((_hd51075124_ (##car _e51065121_))
                               (_tl51085126_ (##cdr _e51065121_)))
                           (if (gx#stx-pair? _tl51085126_)
                               (let ((_e51095129_ (gx#syntax-e _tl51085126_)))
                                 (let ((_hd51105132_ (##car _e51095129_))
                                       (_tl51115134_ (##cdr _e51095129_)))
                                   (let ((_hd5137_ _hd51105132_))
                                     (let ((_body5139_ _tl51115134_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd5137_)
                                               (if (gx#stx-list? _body5139_)
                                                   (not (gx#stx-null?
                                                         _body5139_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map
                                             gx#user-binding-identifier
                                             _hd5137_)
                                            _body5139_)
                                           (_E51055117_))))))
                               (_E51055117_))))
                       (_E51055117_)))))
            (let () (_E51045141_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx5038_)
      (let ((_generate5040_
             (lambda (_clause5070_)
               (let ((_e50715078_ _clause5070_))
                 (let ((_E50735082_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx5038_
                           _clause5070_))))
                   (let ((_E50725098_
                          (lambda ()
                            (if (gx#stx-pair? _e50715078_)
                                (let ((_e50745086_ (gx#syntax-e _e50715078_)))
                                  (let ((_hd50755089_ (##car _e50745086_))
                                        (_tl50765091_ (##cdr _e50745086_)))
                                    (let ((_hd5094_ _hd50755089_))
                                      (let ((_body5096_ _tl50765091_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd5094_)
                                                (if (gx#stx-list? _body5096_)
                                                    (not (gx#stx-null?
                                                          _body5096_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map
                                                    gx#user-binding-identifier
                                                    _hd5094_)
                                                   _body5096_)
                                             (gx#stx-source _clause5070_))
                                            (_E50735082_))))))
                                (_E50735082_)))))
                     (let () (_E50725098_))))))))
        (let ((_e50415048_ _stx5038_))
          (let ((_E50435052_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50415048_))))
            (let ((_E50425066_
                   (lambda ()
                     (if (gx#stx-pair? _e50415048_)
                         (let ((_e50445056_ (gx#syntax-e _e50415048_)))
                           (let ((_hd50455059_ (##car _e50445056_))
                                 (_tl50465061_ (##cdr _e50445056_)))
                             (let ((_clauses5064_ _tl50465061_))
                               (if (gx#stx-list? _clauses5064_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map _generate5040_ _clauses5064_))
                                   (_E50435052_)))))
                         (_E50435052_)))))
              (let () (_E50425066_))))))))
  (define gx#macro-expand-let-values
    (let ((_opt-lambda49375028_
           (lambda (_stx4939_ _form4940_)
             (let ((_generate4942_
                    (lambda (_bind4985_)
                      (let ((_e49864996_ _bind4985_))
                        (let ((_E49885000_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; malformed binding"
                                  _stx4939_
                                  _bind4985_))))
                          (let ((_E49875024_
                                 (lambda ()
                                   (if (gx#stx-pair? _e49864996_)
                                       (let ((_e49895004_
                                              (gx#syntax-e _e49864996_)))
                                         (let ((_hd49905007_
                                                (##car _e49895004_))
                                               (_tl49915009_
                                                (##cdr _e49895004_)))
                                           (let ((_ids5012_ _hd49905007_))
                                             (if (gx#stx-pair? _tl49915009_)
                                                 (let ((_e49925014_
                                                        (gx#syntax-e
                                                         _tl49915009_)))
                                                   (let ((_hd49935017_
                                                          (##car _e49925014_))
                                                         (_tl49945019_
                                                          (##cdr _e49925014_)))
                                                     (let ((_expr5022_
                                                            _hd49935017_))
                                                       (if (gx#stx-null?
                                                            _tl49945019_)
                                                           (if (gx#stx-andmap
                                                                gx#identifier?
                                                                _ids5012_)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#user-binding-identifier
                              _ids5012_)
                             (cons _expr5022_ '()))
                       (_E49885000_))
                   (_E49885000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E49885000_)))))
                                       (_E49885000_)))))
                            (let () (_E49875024_))))))))
               (let ((_e49434953_ _stx4939_))
                 (let ((_E49454957_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e49434953_))))
                   (let ((_E49444981_
                          (lambda ()
                            (if (gx#stx-pair? _e49434953_)
                                (let ((_e49464961_ (gx#syntax-e _e49434953_)))
                                  (let ((_hd49474964_ (##car _e49464961_))
                                        (_tl49484966_ (##cdr _e49464961_)))
                                    (if (gx#stx-pair? _tl49484966_)
                                        (let ((_e49494969_
                                               (gx#syntax-e _tl49484966_)))
                                          (let ((_hd49504972_
                                                 (##car _e49494969_))
                                                (_tl49514974_
                                                 (##cdr _e49494969_)))
                                            (let ((_hd4977_ _hd49504972_))
                                              (let ((_body4979_ _tl49514974_))
                                                (if (if (gx#stx-list? _hd4977_)
                                                        (if (gx#stx-list?
                                                             _body4979_)
                                                            (not (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4979_))
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-cons*
                                                     _form4940_
                                                     (gx#stx-map
                                                      _generate4942_
                                                      _hd4977_)
                                                     _body4979_)
                                                    (_E49454957_))))))
                                        (_E49454957_))))
                                (_E49454957_)))))
                     (let () (_E49444981_)))))))))
      (lambda _g12705_
        (let ((_g12704_ (length _g12705_)))
          (cond ((fx= _g12704_ 1)
                 (apply (lambda (_stx5031_)
                          (let ((_form5033_ '%#let-values))
                            (_opt-lambda49375028_ _stx5031_ _form5033_)))
                        _g12705_))
                ((fx= _g12704_ 2)
                 (apply (lambda (_stx5035_ _form5036_)
                          (_opt-lambda49375028_ _stx5035_ _form5036_))
                        _g12705_))
                (else (error "No clause matching arguments" _g12705_)))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx4936_)
      (gx#macro-expand-let-values _stx4936_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx4934_)
      (gx#macro-expand-let-values _stx4934_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx4825_)
      (let ((_e48264852_ _stx4825_))
        (let ((_E48384856_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e48264852_))))
          (let ((_E48284898_
                 (lambda ()
                   (if (gx#stx-pair? _e48264852_)
                       (let ((_e48394860_ (gx#syntax-e _e48264852_)))
                         (let ((_hd48404863_ (##car _e48394860_))
                               (_tl48414865_ (##cdr _e48394860_)))
                           (if (gx#stx-pair? _tl48414865_)
                               (let ((_e48424868_ (gx#syntax-e _tl48414865_)))
                                 (let ((_hd48434871_ (##car _e48424868_))
                                       (_tl48444873_ (##cdr _e48424868_)))
                                   (let ((_test4876_ _hd48434871_))
                                     (if (gx#stx-pair? _tl48444873_)
                                         (let ((_e48454878_
                                                (gx#syntax-e _tl48444873_)))
                                           (let ((_hd48464881_
                                                  (##car _e48454878_))
                                                 (_tl48474883_
                                                  (##cdr _e48454878_)))
                                             (let ((_K4886_ _hd48464881_))
                                               (if (gx#stx-pair? _tl48474883_)
                                                   (let ((_e48484888_
                                                          (gx#syntax-e
                                                           _tl48474883_)))
                                                     (let ((_hd48494891_
                                                            (##car _e48484888_))
                                                           (_tl48504893_
                                                            (##cdr _e48484888_)))
                                                       (let ((_E4896_ _hd48494891_))
                                                         (if (gx#stx-null?
                                                              _tl48504893_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test4876_ _K4886_ _E4896_)
                         (_E48384856_))
                     (_E48384856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E48384856_)))))
                                         (_E48384856_)))))
                               (_E48384856_))))
                       (_E48384856_)))))
            (let ((_E48274930_
                   (lambda ()
                     (if (gx#stx-pair? _e48264852_)
                         (let ((_e48294902_ (gx#syntax-e _e48264852_)))
                           (let ((_hd48304905_ (##car _e48294902_))
                                 (_tl48314907_ (##cdr _e48294902_)))
                             (if (gx#stx-pair? _tl48314907_)
                                 (let ((_e48324910_
                                        (gx#syntax-e _tl48314907_)))
                                   (let ((_hd48334913_ (##car _e48324910_))
                                         (_tl48344915_ (##cdr _e48324910_)))
                                     (let ((_test4918_ _hd48334913_))
                                       (if (gx#stx-pair? _tl48344915_)
                                           (let ((_e48354920_
                                                  (gx#syntax-e _tl48344915_)))
                                             (let ((_hd48364923_
                                                    (##car _e48354920_))
                                                   (_tl48374925_
                                                    (##cdr _e48354920_)))
                                               (let ((_K4928_ _hd48364923_))
                                                 (if (gx#stx-null?
                                                      _tl48374925_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test4918_
                                                          _K4928_
                                                          '#!void)
                                                         (_E48284898_))
                                                     (_E48284898_)))))
                                           (_E48284898_)))))
                                 (_E48284898_))))
                         (_E48284898_)))))
              (let () (_E48274930_))))))))
  (define gx#free-identifier=?
    (lambda (_xid4813_ _yid4814_)
      (let ((_xe4816_ (gx#resolve-identifier _xid4813_))
            (_ye4817_ (gx#resolve-identifier _yid4814_)))
        (if (if _xe4816_ _ye4817_ '#f)
            (let ((_$e4819_ (eq? _xe4816_ _ye4817_)))
              (if _$e4819_
                  _$e4819_
                  (if (gx#binding? _xe4816_)
                      (if (gx#binding? _ye4817_)
                          (eq? (gx#binding-id _xe4816_)
                               (gx#binding-id _ye4817_))
                          '#f)
                      '#f)))
            (if (let ((_$e4822_ _xe4816_)) (if _$e4822_ _$e4822_ _ye4817_))
                '#f
                (gx#stx-eq? _xid4813_ _yid4814_))))))
  (define gx#bound-identifier=?
    (lambda (_xid4797_ _yid4798_)
      (let ((_context4800_
             (lambda (_e4811_)
               (if (gx#syntax-quote? _e4811_)
                   (gx#syntax-quote-context _e4811_)
                   (gx#current-expander-context)))))
        (let ((_marks4801_
               (lambda (_e4809_)
                 (if (symbol? _e4809_)
                     '()
                     (if (gx#identifier-wrap? _e4809_)
                         (gx#identifier-wrap-marks _e4809_)
                         (gx#syntax-quote-marks _e4809_))))))
          (let ((_unwrap4802_
                 (lambda (_e4807_)
                   (if (symbol? _e4807_)
                       _e4807_
                       (gx#syntax-local-unwrap _e4807_)))))
            (let ((_x4804_ (_unwrap4802_ _xid4797_))
                  (_y4805_ (_unwrap4802_ _yid4798_)))
              (if (gx#stx-eq? _x4804_ _y4805_)
                  (if (eq? (_context4800_ _x4804_) (_context4800_ _y4805_))
                      (andmap eq? (_marks4801_ _x4804_) (_marks4801_ _y4805_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx4795_)
      (if (gx#identifier? _stx4795_) (gx#core-identifier=? _stx4795_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx4793_)
      (if (gx#identifier? _stx4793_)
          (gx#core-identifier=? _stx4793_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x4791_)
      (if (gx#identifier? _x4791_)
          (if (not (gx#underscore? _x4791_)) _x4791_ '#f)
          '#f)))
  (define gx#check-duplicate-identifiers
    (let ((_opt-lambda47354781_
           (lambda (_stx4737_ _where4738_)
             ((letrec ((_lp4740_
                        (lambda (_rest4742_)
                          (let ((_rest47434751_ _rest4742_))
                            (let ((_E47464755_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest47434751_))))
                              (let ((_else47454759_ (lambda () '#t)))
                                (let ((_K47474769_
                                       (lambda (_rest4762_ _hd4763_)
                                         (if (not (gx#identifier? _hd4763_))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad identifier"
                                              _where4738_
                                              _hd4763_)
                                             (if (find (lambda (_g47644766_)
                                                         (gx#bound-identifier=?
                                                          _g47644766_
                                                          _hd4763_))
                                                       _rest4762_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Duplicate identifier"
                                                  _where4738_
                                                  _hd4763_)
                                                 (_lp4740_ _rest4762_))))))
                                  (if (##pair? _rest47434751_)
                                      (let ((_hd47484772_
                                             (##car _rest47434751_))
                                            (_tl47494774_
                                             (##cdr _rest47434751_)))
                                        (let ((_hd4777_ _hd47484772_))
                                          (let ((_rest4779_ _tl47494774_))
                                            (_K47474769_
                                             _rest4779_
                                             _hd4777_))))
                                      (_else47454759_)))))))))
                _lp4740_)
              (gx#syntax->list _stx4737_)))))
      (lambda _g12707_
        (let ((_g12706_ (length _g12707_)))
          (cond ((fx= _g12706_ 1)
                 (apply (lambda (_stx4784_)
                          (let ((_where4786_ _stx4784_))
                            (_opt-lambda47354781_ _stx4784_ _where4786_)))
                        _g12707_))
                ((fx= _g12706_ 2)
                 (apply (lambda (_stx4788_ _where4789_)
                          (_opt-lambda47354781_ _stx4788_ _where4789_))
                        _g12707_))
                (else (error "No clause matching arguments" _g12707_)))))))
  (define gx#core-bind-values?
    (lambda (_stx4729_)
      (gx#stx-andmap
       (lambda (_x4731_)
         (let ((_$e4733_ (gx#identifier? _x4731_)))
           (if _$e4733_ _$e4733_ (gx#stx-false? _x4731_))))
       _stx4729_)))
  (define gx#core-bind-values!
    (let ((_opt-lambda46914700_
           (lambda (_stx4693_ _rebind?4694_ _phi4695_ _ctx4696_)
             (gx#stx-for-each
              (lambda (_id4698_)
                (if (gx#identifier? _id4698_)
                    (gx#core-bind-runtime!
                     _id4698_
                     _rebind?4694_
                     _phi4695_
                     _ctx4696_)
                    '#!void))
              _stx4693_))))
      (lambda _g12709_
        (let ((_g12708_ (length _g12709_)))
          (cond ((fx= _g12708_ 1)
                 (apply (lambda (_stx4703_)
                          (let ((_rebind?4705_ '#f))
                            (let ((_phi4707_ (gx#current-expander-phi)))
                              (let ((_ctx4709_ (gx#current-expander-context)))
                                (_opt-lambda46914700_
                                 _stx4703_
                                 _rebind?4705_
                                 _phi4707_
                                 _ctx4709_)))))
                        _g12709_))
                ((fx= _g12708_ 2)
                 (apply (lambda (_stx4711_ _rebind?4712_)
                          (let ((_phi4714_ (gx#current-expander-phi)))
                            (let ((_ctx4716_ (gx#current-expander-context)))
                              (_opt-lambda46914700_
                               _stx4711_
                               _rebind?4712_
                               _phi4714_
                               _ctx4716_))))
                        _g12709_))
                ((fx= _g12708_ 3)
                 (apply (lambda (_stx4718_ _rebind?4719_ _phi4720_)
                          (let ((_ctx4722_ (gx#current-expander-context)))
                            (_opt-lambda46914700_
                             _stx4718_
                             _rebind?4719_
                             _phi4720_
                             _ctx4722_)))
                        _g12709_))
                ((fx= _g12708_ 4)
                 (apply (lambda (_stx4724_ _rebind?4725_ _phi4726_ _ctx4727_)
                          (_opt-lambda46914700_
                           _stx4724_
                           _rebind?4725_
                           _phi4726_
                           _ctx4727_))
                        _g12709_))
                (else (error "No clause matching arguments" _g12709_)))))))
  (define gx#core-quote-bind-values
    (lambda (_stx4688_)
      (gx#stx-map
       (lambda (_x4690_)
         (if (gx#identifier? _x4690_) (gx#core-quote-syntax _x4690_) '#f))
       _stx4688_)))
  (define gx#core-runtime-ref?
    (lambda (_stx4681_)
      (if (gx#identifier? _stx4681_)
          (let ((_bind4683_ (gx#resolve-identifier _stx4681_)))
            (let ((_$e4685_ (not _bind4683_)))
              (if _$e4685_ _$e4685_ (gx#runtime-binding? _bind4683_))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id4670_ _form4671_)
      (let ((_bind4673_ (gx#resolve-identifier _id4670_)))
        (if (gx#runtime-binding? _bind4673_)
            (gx#core-quote-syntax _id4670_)
            (if (not _bind4673_)
                (if (let ((_$e4675_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e4675_
                          _$e4675_
                          (let ((_$e4678_
                                 (gx#core-context-rebind?
                                  (gx#core-context-top))))
                            (if _$e4678_
                                _$e4678_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id4670_))))))
                    (gx#core-quote-syntax _id4670_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form4671_
                     _id4670_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form4671_
                 _id4670_))))))
  (define gx#core-bind-runtime!
    (let ((_opt-lambda46274641_
           (lambda (_id4629_ _rebind?4630_ _phi4631_ _ctx4632_)
             (let ((_key4634_ (gx#core-identifier-key _id4629_)))
               (let ((_eid4636_
                      (gx#make-binding-id _key4634_ '#f _phi4631_ _ctx4632_)))
                 (let ((_bind4638_
                        (if (gx#module-context? _ctx4632_)
                            (gx#make-module-binding
                             _eid4636_
                             _key4634_
                             _phi4631_
                             _ctx4632_)
                            (if (gx#top-context? _ctx4632_)
                                (gx#make-top-binding
                                 _eid4636_
                                 _key4634_
                                 _phi4631_)
                                (if (gx#local-context? _ctx4632_)
                                    (gx#make-local-binding
                                     _eid4636_
                                     _key4634_
                                     _phi4631_)
                                    (gx#make-runtime-binding
                                     _eid4636_
                                     _key4634_
                                     _phi4631_))))))
                   (let ()
                     (gx#bind-identifier!
                      _id4629_
                      _bind4638_
                      _rebind?4630_
                      _phi4631_
                      _ctx4632_))))))))
      (lambda _g12711_
        (let ((_g12710_ (length _g12711_)))
          (cond ((fx= _g12710_ 1)
                 (apply (lambda (_id4644_)
                          (let ((_rebind?4646_ '#f))
                            (let ((_phi4648_ (gx#current-expander-phi)))
                              (let ((_ctx4650_ (gx#current-expander-context)))
                                (_opt-lambda46274641_
                                 _id4644_
                                 _rebind?4646_
                                 _phi4648_
                                 _ctx4650_)))))
                        _g12711_))
                ((fx= _g12710_ 2)
                 (apply (lambda (_id4652_ _rebind?4653_)
                          (let ((_phi4655_ (gx#current-expander-phi)))
                            (let ((_ctx4657_ (gx#current-expander-context)))
                              (_opt-lambda46274641_
                               _id4652_
                               _rebind?4653_
                               _phi4655_
                               _ctx4657_))))
                        _g12711_))
                ((fx= _g12710_ 3)
                 (apply (lambda (_id4659_ _rebind?4660_ _phi4661_)
                          (let ((_ctx4663_ (gx#current-expander-context)))
                            (_opt-lambda46274641_
                             _id4659_
                             _rebind?4660_
                             _phi4661_
                             _ctx4663_)))
                        _g12711_))
                ((fx= _g12710_ 4)
                 (apply (lambda (_id4665_ _rebind?4666_ _phi4667_ _ctx4668_)
                          (_opt-lambda46274641_
                           _id4665_
                           _rebind?4666_
                           _phi4667_
                           _ctx4668_))
                        _g12711_))
                (else (error "No clause matching arguments" _g12711_)))))))
  (define gx#core-bind-runtime-reference!
    (let ((_opt-lambda45824595_
           (lambda (_id4584_ _eid4585_ _rebind?4586_ _phi4587_ _ctx4588_)
             (let ((_key4590_ (gx#core-identifier-key _id4584_)))
               (let ((_bind4592_
                      (if (gx#module-context? _ctx4588_)
                          (gx#make-module-binding
                           _eid4585_
                           _key4590_
                           _phi4587_
                           _ctx4588_)
                          (if (gx#top-context? _ctx4588_)
                              (gx#make-top-binding
                               _eid4585_
                               _key4590_
                               _phi4587_)
                              (gx#make-runtime-binding
                               _eid4585_
                               _key4590_
                               _phi4587_)))))
                 (let ()
                   (gx#bind-identifier!
                    _id4584_
                    _bind4592_
                    _rebind?4586_
                    _phi4587_
                    _ctx4588_)))))))
      (lambda _g12713_
        (let ((_g12712_ (length _g12713_)))
          (cond ((fx= _g12712_ 2)
                 (apply (lambda (_id4598_ _eid4599_)
                          (let ((_rebind?4601_ '#f))
                            (let ((_phi4603_ (gx#current-expander-phi)))
                              (let ((_ctx4605_ (gx#current-expander-context)))
                                (_opt-lambda45824595_
                                 _id4598_
                                 _eid4599_
                                 _rebind?4601_
                                 _phi4603_
                                 _ctx4605_)))))
                        _g12713_))
                ((fx= _g12712_ 3)
                 (apply (lambda (_id4607_ _eid4608_ _rebind?4609_)
                          (let ((_phi4611_ (gx#current-expander-phi)))
                            (let ((_ctx4613_ (gx#current-expander-context)))
                              (_opt-lambda45824595_
                               _id4607_
                               _eid4608_
                               _rebind?4609_
                               _phi4611_
                               _ctx4613_))))
                        _g12713_))
                ((fx= _g12712_ 4)
                 (apply (lambda (_id4615_ _eid4616_ _rebind?4617_ _phi4618_)
                          (let ((_ctx4620_ (gx#current-expander-context)))
                            (_opt-lambda45824595_
                             _id4615_
                             _eid4616_
                             _rebind?4617_
                             _phi4618_
                             _ctx4620_)))
                        _g12713_))
                ((fx= _g12712_ 5)
                 (apply (lambda (_id4622_
                                 _eid4623_
                                 _rebind?4624_
                                 _phi4625_
                                 _ctx4626_)
                          (_opt-lambda45824595_
                           _id4622_
                           _eid4623_
                           _rebind?4624_
                           _phi4625_
                           _ctx4626_))
                        _g12713_))
                (else (error "No clause matching arguments" _g12713_)))))))
  (define gx#core-bind-extern!
    (let ((_opt-lambda45424550_
           (lambda (_id4544_ _eid4545_ _rebind?4546_ _phi4547_ _ctx4548_)
             (gx#bind-identifier!
              _id4544_
              (gx#make-extern-binding
               _eid4545_
               (gx#core-identifier-key _id4544_)
               _phi4547_)
              _rebind?4546_
              _phi4547_
              _ctx4548_))))
      (lambda _g12715_
        (let ((_g12714_ (length _g12715_)))
          (cond ((fx= _g12714_ 2)
                 (apply (lambda (_id4553_ _eid4554_)
                          (let ((_rebind?4556_ '#f))
                            (let ((_phi4558_ (gx#current-expander-phi)))
                              (let ((_ctx4560_ (gx#current-expander-context)))
                                (_opt-lambda45424550_
                                 _id4553_
                                 _eid4554_
                                 _rebind?4556_
                                 _phi4558_
                                 _ctx4560_)))))
                        _g12715_))
                ((fx= _g12714_ 3)
                 (apply (lambda (_id4562_ _eid4563_ _rebind?4564_)
                          (let ((_phi4566_ (gx#current-expander-phi)))
                            (let ((_ctx4568_ (gx#current-expander-context)))
                              (_opt-lambda45424550_
                               _id4562_
                               _eid4563_
                               _rebind?4564_
                               _phi4566_
                               _ctx4568_))))
                        _g12715_))
                ((fx= _g12714_ 4)
                 (apply (lambda (_id4570_ _eid4571_ _rebind?4572_ _phi4573_)
                          (let ((_ctx4575_ (gx#current-expander-context)))
                            (_opt-lambda45424550_
                             _id4570_
                             _eid4571_
                             _rebind?4572_
                             _phi4573_
                             _ctx4575_)))
                        _g12715_))
                ((fx= _g12714_ 5)
                 (apply (lambda (_id4577_
                                 _eid4578_
                                 _rebind?4579_
                                 _phi4580_
                                 _ctx4581_)
                          (_opt-lambda45424550_
                           _id4577_
                           _eid4578_
                           _rebind?4579_
                           _phi4580_
                           _ctx4581_))
                        _g12715_))
                (else (error "No clause matching arguments" _g12715_)))))))
  (define gx#core-bind-syntax!
    (let ((_opt-lambda44964510_
           (lambda (_id4498_ _e4499_ _rebind?4500_ _phi4501_ _ctx4502_)
             (gx#bind-identifier!
              _id4498_
              (let ((_key4507_ (gx#core-identifier-key _id4498_))
                    (_e4508_ (if (let ((_$e4504_ (gx#expander? _e4499_)))
                                   (if _$e4504_
                                       _$e4504_
                                       (gx#expander-context? _e4499_)))
                                 _e4499_
                                 (gx#make-user-expander
                                  _e4499_
                                  _ctx4502_
                                  _phi4501_))))
                (gx#make-syntax-binding
                 (gx#make-binding-id _key4507_ '#t _phi4501_ _ctx4502_)
                 _key4507_
                 _phi4501_
                 _e4508_))
              _rebind?4500_
              _phi4501_
              _ctx4502_))))
      (lambda _g12717_
        (let ((_g12716_ (length _g12717_)))
          (cond ((fx= _g12716_ 2)
                 (apply (lambda (_id4513_ _e4514_)
                          (let ((_rebind?4516_ '#f))
                            (let ((_phi4518_ (gx#current-expander-phi)))
                              (let ((_ctx4520_ (gx#current-expander-context)))
                                (_opt-lambda44964510_
                                 _id4513_
                                 _e4514_
                                 _rebind?4516_
                                 _phi4518_
                                 _ctx4520_)))))
                        _g12717_))
                ((fx= _g12716_ 3)
                 (apply (lambda (_id4522_ _e4523_ _rebind?4524_)
                          (let ((_phi4526_ (gx#current-expander-phi)))
                            (let ((_ctx4528_ (gx#current-expander-context)))
                              (_opt-lambda44964510_
                               _id4522_
                               _e4523_
                               _rebind?4524_
                               _phi4526_
                               _ctx4528_))))
                        _g12717_))
                ((fx= _g12716_ 4)
                 (apply (lambda (_id4530_ _e4531_ _rebind?4532_ _phi4533_)
                          (let ((_ctx4535_ (gx#current-expander-context)))
                            (_opt-lambda44964510_
                             _id4530_
                             _e4531_
                             _rebind?4532_
                             _phi4533_
                             _ctx4535_)))
                        _g12717_))
                ((fx= _g12716_ 5)
                 (apply (lambda (_id4537_
                                 _e4538_
                                 _rebind?4539_
                                 _phi4540_
                                 _ctx4541_)
                          (_opt-lambda44964510_
                           _id4537_
                           _e4538_
                           _rebind?4539_
                           _phi4540_
                           _ctx4541_))
                        _g12717_))
                (else (error "No clause matching arguments" _g12717_)))))))
  (define gx#core-bind-root-syntax!
    (let ((_opt-lambda44794485_
           (lambda (_id4481_ _e4482_ _rebind?4483_)
             (gx#core-bind-syntax!
              _id4481_
              _e4482_
              _rebind?4483_
              '0
              (gx#core-context-root)))))
      (lambda _g12719_
        (let ((_g12718_ (length _g12719_)))
          (cond ((fx= _g12718_ 2)
                 (apply (lambda (_id4488_ _e4489_)
                          (let ((_rebind?4491_ '#f))
                            (_opt-lambda44794485_
                             _id4488_
                             _e4489_
                             _rebind?4491_)))
                        _g12719_))
                ((fx= _g12718_ 3)
                 (apply (lambda (_id4493_ _e4494_ _rebind?4495_)
                          (_opt-lambda44794485_
                           _id4493_
                           _e4494_
                           _rebind?4495_))
                        _g12719_))
                (else (error "No clause matching arguments" _g12719_)))))))
  (define gx#core-bind-alias!
    (let ((_opt-lambda44374447_
           (lambda (_id4439_ _alias-id4440_ _rebind?4441_ _phi4442_ _ctx4443_)
             (gx#bind-identifier!
              _id4439_
              (let ((_key4445_ (gx#core-identifier-key _id4439_)))
                (gx#make-alias-binding
                 (gx#make-binding-id _key4445_ '#t _phi4442_ _ctx4443_)
                 _key4445_
                 _phi4442_
                 _alias-id4440_))
              _rebind?4441_
              _phi4442_
              _ctx4443_))))
      (lambda _g12721_
        (let ((_g12720_ (length _g12721_)))
          (cond ((fx= _g12720_ 2)
                 (apply (lambda (_id4450_ _alias-id4451_)
                          (let ((_rebind?4453_ '#f))
                            (let ((_phi4455_ (gx#current-expander-phi)))
                              (let ((_ctx4457_ (gx#current-expander-context)))
                                (_opt-lambda44374447_
                                 _id4450_
                                 _alias-id4451_
                                 _rebind?4453_
                                 _phi4455_
                                 _ctx4457_)))))
                        _g12721_))
                ((fx= _g12720_ 3)
                 (apply (lambda (_id4459_ _alias-id4460_ _rebind?4461_)
                          (let ((_phi4463_ (gx#current-expander-phi)))
                            (let ((_ctx4465_ (gx#current-expander-context)))
                              (_opt-lambda44374447_
                               _id4459_
                               _alias-id4460_
                               _rebind?4461_
                               _phi4463_
                               _ctx4465_))))
                        _g12721_))
                ((fx= _g12720_ 4)
                 (apply (lambda (_id4467_
                                 _alias-id4468_
                                 _rebind?4469_
                                 _phi4470_)
                          (let ((_ctx4472_ (gx#current-expander-context)))
                            (_opt-lambda44374447_
                             _id4467_
                             _alias-id4468_
                             _rebind?4469_
                             _phi4470_
                             _ctx4472_)))
                        _g12721_))
                ((fx= _g12720_ 5)
                 (apply (lambda (_id4474_
                                 _alias-id4475_
                                 _rebind?4476_
                                 _phi4477_
                                 _ctx4478_)
                          (_opt-lambda44374447_
                           _id4474_
                           _alias-id4475_
                           _rebind?4476_
                           _phi4477_
                           _ctx4478_))
                        _g12721_))
                (else (error "No clause matching arguments" _g12721_)))))))
  (define gx#make-binding-id
    (let ((_opt-lambda43944409_
           (lambda (_key4396_ _syntax?4397_ _phi4398_ _ctx4399_)
             (if (uninterned-symbol? _key4396_)
                 (gensym 'L)
                 (if (pair? _key4396_)
                     (gensym (car _key4396_))
                     (if (gx#top-context? _ctx4399_)
                         (let ((_ns4401_
                                (gx#core-context-namespace _ctx4399_)))
                           (if (if (fxzero? _phi4398_) (not _syntax?4397_) '#f)
                               (if _ns4401_
                                   (make-symbol _ns4401_ '"#" _key4396_)
                                   _key4396_)
                               (if _syntax?4397_
                                   (make-symbol
                                    (let ((_$e4403_ _ns4401_))
                                      (if _$e4403_ _$e4403_ '""))
                                    '"[:"
                                    (number->string _phi4398_)
                                    '":]#"
                                    _key4396_)
                                   (make-symbol
                                    (let ((_$e4406_ _ns4401_))
                                      (if _$e4406_ _$e4406_ '""))
                                    '"["
                                    (number->string _phi4398_)
                                    '"]#"
                                    _key4396_))))
                         (gensym _key4396_)))))))
      (lambda _g12723_
        (let ((_g12722_ (length _g12723_)))
          (cond ((fx= _g12722_ 1)
                 (apply (lambda (_key4412_)
                          (let ((_syntax?4414_ '#f))
                            (let ((_phi4416_ (gx#current-expander-phi)))
                              (let ((_ctx4418_ (gx#current-expander-context)))
                                (_opt-lambda43944409_
                                 _key4412_
                                 _syntax?4414_
                                 _phi4416_
                                 _ctx4418_)))))
                        _g12723_))
                ((fx= _g12722_ 2)
                 (apply (lambda (_key4420_ _syntax?4421_)
                          (let ((_phi4423_ (gx#current-expander-phi)))
                            (let ((_ctx4425_ (gx#current-expander-context)))
                              (_opt-lambda43944409_
                               _key4420_
                               _syntax?4421_
                               _phi4423_
                               _ctx4425_))))
                        _g12723_))
                ((fx= _g12722_ 3)
                 (apply (lambda (_key4427_ _syntax?4428_ _phi4429_)
                          (let ((_ctx4431_ (gx#current-expander-context)))
                            (_opt-lambda43944409_
                             _key4427_
                             _syntax?4428_
                             _phi4429_
                             _ctx4431_)))
                        _g12723_))
                ((fx= _g12722_ 4)
                 (apply (lambda (_key4433_ _syntax?4434_ _phi4435_ _ctx4436_)
                          (_opt-lambda43944409_
                           _key4433_
                           _syntax?4434_
                           _phi4435_
                           _ctx4436_))
                        _g12723_))
                (else (error "No clause matching arguments" _g12723_))))))))
