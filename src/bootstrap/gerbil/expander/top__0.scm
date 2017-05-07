(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#core-expand-begin%
    (lambda (_stx7286_)
      (let ((_expand-special7288_
             (lambda (_hd7290_ _K7291_ _rest7292_ _r7293_)
               (_K7291_ _rest7292_
                        (cons (gx#core-expand-top _hd7290_) _r7293_)))))
        (gx#core-expand-block _stx7286_ _expand-special7288_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx7039_)
      (let ((_expand-special7041_
             (lambda (_hd7161_ _K7162_ _rest7163_ _r7164_)
               (let ((_K7168_ (lambda (_e7166_)
                                (_K7162_ _rest7163_ (cons _e7166_ _r7164_)))))
                 (let ((_e71697198_ _hd7161_))
                   (let ((_E71937202_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e71697198_))))
                     (let ((_E71897214_
                            (lambda ()
                              (if (gx#stx-pair? _e71697198_)
                                  (let ((_e71947206_
                                         (gx#syntax-e _e71697198_)))
                                    (let ((_hd71957209_ (##car _e71947206_))
                                          (_tl71967211_ (##cdr _e71947206_)))
                                      (if (if (gx#identifier? _hd71957209_)
                                              (gx#core-identifier=?
                                               _hd71957209_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K7168_ (gx#core-expand-define-runtime%
                                                        _hd7161_))
                                              (_E71937202_))
                                          (_E71937202_))))
                                  (_E71937202_)))))
                       (let ((_E71857226_
                              (lambda ()
                                (if (gx#stx-pair? _e71697198_)
                                    (let ((_e71907218_
                                           (gx#syntax-e _e71697198_)))
                                      (let ((_hd71917221_ (##car _e71907218_))
                                            (_tl71927223_ (##cdr _e71907218_)))
                                        (if (if (gx#identifier? _hd71917221_)
                                                (gx#core-identifier=?
                                                 _hd71917221_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K7168_ (gx#core-expand-define-alias%
                                                          _hd7161_))
                                                (_E71897214_))
                                            (_E71897214_))))
                                    (_E71897214_)))))
                         (let ((_E71757238_
                                (lambda ()
                                  (if (gx#stx-pair? _e71697198_)
                                      (let ((_e71867230_
                                             (gx#syntax-e _e71697198_)))
                                        (let ((_hd71877233_
                                               (##car _e71867230_))
                                              (_tl71887235_
                                               (##cdr _e71867230_)))
                                          (if (if (gx#identifier? _hd71877233_)
                                                  (gx#core-identifier=?
                                                   _hd71877233_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K7168_ (gx#core-expand-define-syntax%
                                                            _hd7161_))
                                                  (_E71857226_))
                                              (_E71857226_))))
                                      (_E71857226_)))))
                           (let ((_E71717270_
                                  (lambda ()
                                    (if (gx#stx-pair? _e71697198_)
                                        (let ((_e71767242_
                                               (gx#syntax-e _e71697198_)))
                                          (let ((_hd71777245_
                                                 (##car _e71767242_))
                                                (_tl71787247_
                                                 (##cdr _e71767242_)))
                                            (if (if (gx#identifier?
                                                     _hd71777245_)
                                                    (gx#core-identifier=?
                                                     _hd71777245_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl71787247_)
                                                    (let ((_e71797250_
                                                           (gx#syntax-e
                                                            _tl71787247_)))
                                                      (let ((_hd71807253_
                                                             (##car _e71797250_))
                                                            (_tl71817255_
                                                             (##cdr _e71797250_)))
                                                        (let ((_hd-bind7258_
                                                               _hd71807253_))
                                                          (if (gx#stx-pair?
                                                               _tl71817255_)
                                                              (let ((_e71827260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl71817255_)))
                        (let ((_hd71837263_ (##car _e71827260_))
                              (_tl71847265_ (##cdr _e71827260_)))
                          (let ((_expr7268_ _hd71837263_))
                            (if (gx#stx-null? _tl71847265_)
                                (if (gx#core-bind-values? _hd-bind7258_)
                                    (begin
                                      (gx#core-bind-values! _hd-bind7258_)
                                      (_K7168_ _hd7161_))
                                    (_E71757238_))
                                (_E71757238_)))))
                      (_E71757238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E71757238_))
                                                (_E71757238_))))
                                        (_E71757238_)))))
                             (let ((_E71707282_
                                    (lambda ()
                                      (if (gx#stx-pair? _e71697198_)
                                          (let ((_e71727274_
                                                 (gx#syntax-e _e71697198_)))
                                            (let ((_hd71737277_
                                                   (##car _e71727274_))
                                                  (_tl71747279_
                                                   (##cdr _e71727274_)))
                                              (if (if (gx#identifier?
                                                       _hd71737277_)
                                                      (gx#core-identifier=?
                                                       _hd71737277_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K7168_ (gx#core-expand-begin-syntax%
                                                                _hd7161_))
                                                      (_E71717270_))
                                                  (_E71717270_))))
                                          (_E71717270_)))))
                               (let () (_E71707282_)))))))))))))
        (let ((_eval-body7042_
               (lambda (_rbody7050_)
                 ((letrec ((_lp7052_
                            (lambda (_rest7054_ _body7055_ _ebody7056_)
                              (let ((_rest70577065_ _rest7054_))
                                (let ((_E70607069_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest70577065_))))
                                  (let ((_else70597073_
                                         (lambda ()
                                           (values _body7055_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody7056_)
                                                     (gx#stx-source
                                                      _stx7039_)))))))
                                    (let ((_K70617149_
                                           (lambda (_rest7076_ _hd7077_)
                                             (let ((_e70787095_ _hd7077_))
                                               (let ((_E70907099_
                                                      (lambda ()
                                                        (_lp7052_
                                                         _rest7076_
                                                         (cons _hd7077_
                                                               _body7055_)
                                                         (cons _hd7077_
                                                               _ebody7056_)))))
                                                 (let ((_E70807111_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e70787095_)
                                                              (let ((_e70917103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e70787095_)))
                        (let ((_hd70927106_ (##car _e70917103_))
                              (_tl70937108_ (##cdr _e70917103_)))
                          (if (if (gx#identifier? _hd70927106_)
                                  (gx#core-identifier=?
                                   _hd70927106_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp7052_
                                   _rest7076_
                                   (cons _hd7077_ _body7055_)
                                   _ebody7056_)
                                  (_E70907099_))
                              (_E70907099_))))
                      (_E70907099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E70797145_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e70787095_)
                        (let ((_e70817115_ (gx#syntax-e _e70787095_)))
                          (let ((_hd70827118_ (##car _e70817115_))
                                (_tl70837120_ (##cdr _e70817115_)))
                            (if (if (gx#identifier? _hd70827118_)
                                    (gx#core-identifier=?
                                     _hd70827118_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl70837120_)
                                    (let ((_e70847123_
                                           (gx#syntax-e _tl70837120_)))
                                      (let ((_hd70857126_ (##car _e70847123_))
                                            (_tl70867128_ (##cdr _e70847123_)))
                                        (let ((_hd-bind7131_ _hd70857126_))
                                          (if (gx#stx-pair? _tl70867128_)
                                              (let ((_e70877133_
                                                     (gx#syntax-e
                                                      _tl70867128_)))
                                                (let ((_hd70887136_
                                                       (##car _e70877133_))
                                                      (_tl70897138_
                                                       (##cdr _e70877133_)))
                                                  (let ((_expr7141_
                                                         _hd70887136_))
                                                    (if (gx#stx-null?
                                                         _tl70897138_)
                                                        (if '#t
                                                            (let ((_ehd7143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax
                            (cons (gx#core-quote-syntax '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind7131_)
                                        (cons (gx#core-expand-expression
                                               _expr7141_)
                                              '())))
                            (gx#stx-source _hd7077_))))
                      (_lp7052_
                       _rest7076_
                       (cons _ehd7143_ _body7055_)
                       (cons _ehd7143_ _ebody7056_)))
                    (_E70807111_))
                (_E70807111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E70807111_)))))
                                    (_E70807111_))
                                (_E70807111_))))
                        (_E70807111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E70797145_)))))))))
                                      (if (##pair? _rest70577065_)
                                          (let ((_hd70627152_
                                                 (##car _rest70577065_))
                                                (_tl70637154_
                                                 (##cdr _rest70577065_)))
                                            (let ((_hd7157_ _hd70627152_))
                                              (let ((_rest7159_ _tl70637154_))
                                                (_K70617149_
                                                 _rest7159_
                                                 _hd7157_))))
                                          (_else70597073_)))))))))
                    _lp7052_)
                  _rbody7050_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody7045_
                    (gx#core-expand-block _stx7039_ _expand-special7041_ '#f)))
               (let ((_g12529_ (_eval-body7042_ _rbody7045_)))
                 (begin
                   (let ((_g12530_ (values-count _g12529_)))
                     (if (not (fx= _g12530_ 2))
                         (error "Context expects 2 values" _g12530_)))
                   (let ((_expanded-body7047_ (values-ref _g12529_ 0))
                         (_value7048_ (values-ref _g12529_ 1)))
                     (gx#core-quote-syntax
                      (if (gx#module-context? (gx#current-expander-context))
                          (gx#core-cons '%#begin-syntax _expanded-body7047_)
                          (cons (gx#core-quote-syntax '%#quote)
                                (cons _value7048_ '())))
                      (gx#stx-source _stx7039_)))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi)))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx7009_)
      (let ((_e70107017_ _stx7009_))
        (let ((_E70127021_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70107017_))))
          (let ((_E70117035_
                 (lambda ()
                   (if (gx#stx-pair? _e70107017_)
                       (let ((_e70137025_ (gx#syntax-e _e70107017_)))
                         (let ((_hd70147028_ (##car _e70137025_))
                               (_tl70157030_ (##cdr _e70137025_)))
                           (let ((_body7033_ _tl70157030_))
                             (if (gx#stx-list? _body7033_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons '%#begin-foreign _body7033_)
                                  (gx#stx-source _stx7009_))
                                 (_E70127021_)))))
                       (_E70127021_)))))
            (let () (_E70117035_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx6997_)
      (let ((_e69987001_ _stx6997_))
        (let ((_E69997005_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69987001_))))
          (let () (_E69997005_))))))
  (define gx#core-expand-local-block
    (lambda (_stx6721_ _body6722_)
      (let ((_expand-internal-special6726_
             (lambda (_hd6883_ _K6884_ _rest6885_ _r6886_)
               (let ((_e68876912_ _hd6883_))
                 (let ((_E69076916_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e68876912_))))
                   (let ((_E69036928_
                          (lambda ()
                            (if (gx#stx-pair? _e68876912_)
                                (let ((_e69086920_ (gx#syntax-e _e68876912_)))
                                  (let ((_hd69096923_ (##car _e69086920_))
                                        (_tl69106925_ (##cdr _e69086920_)))
                                    (if (if (gx#identifier? _hd69096923_)
                                            (gx#core-identifier=?
                                             _hd69096923_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K6884_ _rest6885_
                                                     (cons (gx#core-expand-declare%
                                                            _hd6883_)
                                                           _r6886_))
                                            (_E69076916_))
                                        (_E69076916_))))
                                (_E69076916_)))))
                     (let ((_E68996940_
                            (lambda ()
                              (if (gx#stx-pair? _e68876912_)
                                  (let ((_e69046932_
                                         (gx#syntax-e _e68876912_)))
                                    (let ((_hd69056935_ (##car _e69046932_))
                                          (_tl69066937_ (##cdr _e69046932_)))
                                      (if (if (gx#identifier? _hd69056935_)
                                              (gx#core-identifier=?
                                               _hd69056935_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd6883_)
                                                (_K6884_ _rest6885_ _r6886_))
                                              (_E69036928_))
                                          (_E69036928_))))
                                  (_E69036928_)))))
                       (let ((_E68896952_
                              (lambda ()
                                (if (gx#stx-pair? _e68876912_)
                                    (let ((_e69006944_
                                           (gx#syntax-e _e68876912_)))
                                      (let ((_hd69016947_ (##car _e69006944_))
                                            (_tl69026949_ (##cdr _e69006944_)))
                                        (if (if (gx#identifier? _hd69016947_)
                                                (gx#core-identifier=?
                                                 _hd69016947_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd6883_)
                                                  (_K6884_ _rest6885_ _r6886_))
                                                (_E68996940_))
                                            (_E68996940_))))
                                    (_E68996940_)))))
                         (let ((_E68886984_
                                (lambda ()
                                  (if (gx#stx-pair? _e68876912_)
                                      (let ((_e68906956_
                                             (gx#syntax-e _e68876912_)))
                                        (let ((_hd68916959_
                                               (##car _e68906956_))
                                              (_tl68926961_
                                               (##cdr _e68906956_)))
                                          (if (if (gx#identifier? _hd68916959_)
                                                  (gx#core-identifier=?
                                                   _hd68916959_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl68926961_)
                                                  (let ((_e68936964_
                                                         (gx#syntax-e
                                                          _tl68926961_)))
                                                    (let ((_hd68946967_
                                                           (##car _e68936964_))
                                                          (_tl68956969_
                                                           (##cdr _e68936964_)))
                                                      (let ((_hd-bind6972_
                                                             _hd68946967_))
                                                        (if (gx#stx-pair?
                                                             _tl68956969_)
                                                            (let ((_e68966974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl68956969_)))
                      (let ((_hd68976977_ (##car _e68966974_))
                            (_tl68986979_ (##cdr _e68966974_)))
                        (let ((_expr6982_ _hd68976977_))
                          (if (gx#stx-null? _tl68986979_)
                              (if (gx#core-bind-values? _hd-bind6972_)
                                  (begin
                                    (gx#core-bind-values! _hd-bind6972_)
                                    (_K6884_ _rest6885_
                                             (cons _hd6883_ _r6886_)))
                                  (_E68896952_))
                              (_E68896952_)))))
                    (_E68896952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E68896952_))
                                              (_E68896952_))))
                                      (_E68896952_)))))
                           (let () (_E68886984_)))))))))))
        (let ((_wrap-internal6727_
               (lambda (_rbody6729_)
                 ((letrec ((_lp6731_
                            (lambda (_rest6733_
                                     _decls6734_
                                     _bind6735_
                                     _body6736_)
                              (let ((_e67376744_ _rest6733_))
                                (let ((_E67396793_
                                       (lambda ()
                                         (let ((_body6788_
                                                (let ((_body67476757_
                                                       _body6736_))
                                                  (let ((_E67516761_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body67476757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else67506765_
                                                           (lambda ()
                                                             (gx#core-quote-syntax
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body6736_)
                                                              (gx#stx-source
                                                               _stx6721_)))))
                                                      (let ((_try-match67496781_
                                                             (lambda ()
                                                               (let ((_K67526771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr6769_) _expr6769_)))
                         (if (##pair? _body67476757_)
                             (let ((_hd67536774_ (##car _body67476757_))
                                   (_tl67546776_ (##cdr _body67476757_)))
                               (let ((_expr6779_ _hd67536774_))
                                 (if (##null? _tl67546776_)
                                     (_K67526771_ _expr6779_)
                                     (_else67506765_))))
                             (_else67506765_))))))
                (let ((_K67556785_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx6721_))))
                  (if (##null? _body67476757_)
                      (_K67556785_)
                      (_try-match67496781_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body6790_
                                                  (if (null? _bind6735_)
                                                      _body6788_
                                                      (gx#core-quote-syntax
                                                       (cons (gx#core-quote-syntax
                                                              '%#letrec*-values)
                                                             (cons _bind6735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body6788_ '())))
               (gx#stx-source _stx6721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls6734_)
                                                   _body6790_
                                                   (gx#core-quote-syntax
                                                    (cons (gx#core-quote-syntax
                                                           '%#begin-annotation)
                                                          (cons _decls6734_
                                                                (cons _body6790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx6721_)))))))))
                                  (let ((_E67386879_
                                         (lambda ()
                                           (if (gx#stx-pair? _e67376744_)
                                               (let ((_e67406797_
                                                      (gx#syntax-e
                                                       _e67376744_)))
                                                 (let ((_hd67416800_
                                                        (##car _e67406797_))
                                                       (_tl67426802_
                                                        (##cdr _e67406797_)))
                                                   (let ((_hd6805_
                                                          _hd67416800_))
                                                     (let ((_rest6807_
                                                            _tl67426802_))
                                                       (if '#t
                                                           (let ((_e68086825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd6805_))
                     (let ((_E68206829_
                            (lambda ()
                              (if (null? _bind6735_)
                                  (_lp6731_
                                   _rest6807_
                                   _decls6734_
                                   _bind6735_
                                   (cons _hd6805_ _body6736_))
                                  (_lp6731_
                                   _rest6807_
                                   _decls6734_
                                   (cons (cons '#f (cons _hd6805_ '()))
                                         _bind6735_)
                                   _body6736_)))))
                       (let ((_E68106843_
                              (lambda ()
                                (if (gx#stx-pair? _e68086825_)
                                    (let ((_e68216833_
                                           (gx#syntax-e _e68086825_)))
                                      (let ((_hd68226836_ (##car _e68216833_))
                                            (_tl68236838_ (##cdr _e68216833_)))
                                        (if (if (gx#identifier? _hd68226836_)
                                                (gx#core-identifier=?
                                                 _hd68226836_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls6841_ _tl68236838_))
                                              (if '#t
                                                  (_lp6731_
                                                   _rest6807_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls6734_
                                                    _xdecls6841_)
                                                   _bind6735_
                                                   _body6736_)
                                                  (_E68206829_)))
                                            (_E68206829_))))
                                    (_E68206829_)))))
                         (let ((_E68096875_
                                (lambda ()
                                  (if (gx#stx-pair? _e68086825_)
                                      (let ((_e68116847_
                                             (gx#syntax-e _e68086825_)))
                                        (let ((_hd68126850_
                                               (##car _e68116847_))
                                              (_tl68136852_
                                               (##cdr _e68116847_)))
                                          (if (if (gx#identifier? _hd68126850_)
                                                  (gx#core-identifier=?
                                                   _hd68126850_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl68136852_)
                                                  (let ((_e68146855_
                                                         (gx#syntax-e
                                                          _tl68136852_)))
                                                    (let ((_hd68156858_
                                                           (##car _e68146855_))
                                                          (_tl68166860_
                                                           (##cdr _e68146855_)))
                                                      (let ((_hd-bind6863_
                                                             _hd68156858_))
                                                        (if (gx#stx-pair?
                                                             _tl68166860_)
                                                            (let ((_e68176865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl68166860_)))
                      (let ((_hd68186868_ (##car _e68176865_))
                            (_tl68196870_ (##cdr _e68176865_)))
                        (let ((_expr6873_ _hd68186868_))
                          (if (gx#stx-null? _tl68196870_)
                              (if '#t
                                  (_lp6731_
                                   _rest6807_
                                   _decls6734_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind6863_)
                                               (cons (gx#core-expand-expression
                                                      _expr6873_)
                                                     '()))
                                         _bind6735_)
                                   _body6736_)
                                  (_E68106843_))
                              (_E68106843_)))))
                    (_E68106843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E68106843_))
                                              (_E68106843_))))
                                      (_E68106843_)))))
                           (let () (_E68096875_))))))
                   (_E67396793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E67396793_)))))
                                    (let () (_E67386879_))))))))
                    _lp6731_)
                  _rbody6729_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal6725_
                 (lambda (_hd6988_ _rest6989_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal6727_
                       (gx#core-expand-block
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd6988_ _rest6989_)
                         (gx#stx-source _stx6721_))
                        _expand-internal-special6726_
                        '#f)))
                    gx#current-expander-context
                    (gx#make-local-context)))))
            (let ((_expand-special6724_
                   (lambda (_hd6992_ _K6993_ _rest6994_ _r6995_)
                     (_K6993_ '()
                              (cons (_expand-internal6725_ _hd6992_ _rest6994_)
                                    _r6995_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body6722_)
                (gx#stx-source _stx6721_))
               _expand-special6724_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx6659_)
      (let ((_e66606667_ _stx6659_))
        (let ((_E66626671_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66606667_))))
          (let ((_E66616717_
                 (lambda ()
                   (if (gx#stx-pair? _e66606667_)
                       (let ((_e66636675_ (gx#syntax-e _e66606667_)))
                         (let ((_hd66646678_ (##car _e66636675_))
                               (_tl66656680_ (##cdr _e66636675_)))
                           (let ((_body6683_ _tl66656680_))
                             (if (gx#stx-list? _body6683_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map
                                    (lambda (_decl6685_)
                                      (let ((_e66866693_ _decl6685_))
                                        (let ((_E66886697_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e66866693_))))
                                          (let ((_E66876713_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e66866693_)
                                                       (let ((_e66896701_
                                                              (gx#syntax-e
                                                               _e66866693_)))
                                                         (let ((_hd66906704_
                                                                (##car _e66896701_))
                                                               (_tl66916706_
                                                                (##cdr _e66896701_)))
                                                           (let ((_head6709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd66906704_))
                     (let ((_args6711_ _tl66916706_))
                       (if (gx#stx-list? _args6711_)
                           (gx#stx-map gx#core-quote-syntax _decl6685_)
                           (_E66886697_))))))
               (_E66886697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E66876713_))))))
                                    _body6683_))
                                  (gx#stx-source _stx6659_))
                                 (_E66626671_)))))
                       (_E66626671_)))))
            (let () (_E66616717_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx6543_)
      (let ((_e65446551_ _stx6543_))
        (let ((_E65466555_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65446551_))))
          (let ((_E65456655_
                 (lambda ()
                   (if (gx#stx-pair? _e65446551_)
                       (let ((_e65476559_ (gx#syntax-e _e65446551_)))
                         (let ((_hd65486562_ (##car _e65476559_))
                               (_tl65496564_ (##cdr _e65476559_)))
                           (let ((_body6567_ _tl65496564_))
                             (if (gx#stx-list? _body6567_)
                                 (begin
                                   (gx#stx-for-each
                                    (lambda (_bind6569_)
                                      (let ((_e65706580_ _bind6569_))
                                        (let ((_E65726584_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e65706580_))))
                                          (let ((_E65716608_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e65706580_)
                                                       (let ((_e65736588_
                                                              (gx#syntax-e
                                                               _e65706580_)))
                                                         (let ((_hd65746591_
                                                                (##car _e65736588_))
                                                               (_tl65756593_
                                                                (##cdr _e65736588_)))
                                                           (let ((_id6596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd65746591_))
                     (if (gx#stx-pair? _tl65756593_)
                         (let ((_e65766598_ (gx#syntax-e _tl65756593_)))
                           (let ((_hd65776601_ (##car _e65766598_))
                                 (_tl65786603_ (##cdr _e65766598_)))
                             (let ((_eid6606_ _hd65776601_))
                               (if (gx#stx-null? _tl65786603_)
                                   (if (if (gx#identifier? _id6596_)
                                           (gx#identifier? _eid6606_)
                                           '#f)
                                       (gx#core-bind-extern!
                                        _id6596_
                                        (gx#stx-e _eid6606_))
                                       (_E65726584_))
                                   (_E65726584_)))))
                         (_E65726584_)))))
               (_E65726584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E65716608_))))))
                                    _body6567_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map
                                      (lambda (_bind6612_)
                                        (let ((_e66136623_ _bind6612_))
                                          (let ((_E66156627_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e66136623_))))
                                            (let ((_E66146651_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e66136623_)
                                                         (let ((_e66166631_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e66136623_)))
                   (let ((_hd66176634_ (##car _e66166631_))
                         (_tl66186636_ (##cdr _e66166631_)))
                     (let ((_id6639_ _hd66176634_))
                       (if (gx#stx-pair? _tl66186636_)
                           (let ((_e66196641_ (gx#syntax-e _tl66186636_)))
                             (let ((_hd66206644_ (##car _e66196641_))
                                   (_tl66216646_ (##cdr _e66196641_)))
                               (let ((_eid6649_ _hd66206644_))
                                 (if (gx#stx-null? _tl66216646_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax _id6639_)
                                               (cons (gx#stx-e _eid6649_) '()))
                                         (_E66156627_))
                                     (_E66156627_)))))
                           (_E66156627_)))))
                 (_E66156627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E66146651_))))))
                                      _body6567_))
                                    (gx#stx-source _stx6543_)))
                                 (_E65466555_)))))
                       (_E65466555_)))))
            (let () (_E65456655_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx6489_)
      (let ((_e64906503_ _stx6489_))
        (let ((_E64926507_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64906503_))))
          (let ((_E64916539_
                 (lambda ()
                   (if (gx#stx-pair? _e64906503_)
                       (let ((_e64936511_ (gx#syntax-e _e64906503_)))
                         (let ((_hd64946514_ (##car _e64936511_))
                               (_tl64956516_ (##cdr _e64936511_)))
                           (if (gx#stx-pair? _tl64956516_)
                               (let ((_e64966519_ (gx#syntax-e _tl64956516_)))
                                 (let ((_hd64976522_ (##car _e64966519_))
                                       (_tl64986524_ (##cdr _e64966519_)))
                                   (let ((_hd6527_ _hd64976522_))
                                     (if (gx#stx-pair? _tl64986524_)
                                         (let ((_e64996529_
                                                (gx#syntax-e _tl64986524_)))
                                           (let ((_hd65006532_
                                                  (##car _e64996529_))
                                                 (_tl65016534_
                                                  (##cdr _e64996529_)))
                                             (let ((_expr6537_ _hd65006532_))
                                               (if (gx#stx-null? _tl65016534_)
                                                   (if (gx#core-bind-values?
                                                        _hd6527_)
                                                       (begin
                                                         (gx#core-bind-values!
                                                          _hd6527_)
                                                         (gx#core-quote-syntax
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd6527_)
                              (cons (gx#core-expand-expression _expr6537_)
                                    '())))
                  (gx#stx-source _stx6489_)))
               (_E64926507_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E64926507_)))))
                                         (_E64926507_)))))
                               (_E64926507_))))
                       (_E64926507_)))))
            (let () (_E64916539_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx6435_)
      (let ((_e64366449_ _stx6435_))
        (let ((_E64386453_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64366449_))))
          (let ((_E64376485_
                 (lambda ()
                   (if (gx#stx-pair? _e64366449_)
                       (let ((_e64396457_ (gx#syntax-e _e64366449_)))
                         (let ((_hd64406460_ (##car _e64396457_))
                               (_tl64416462_ (##cdr _e64396457_)))
                           (if (gx#stx-pair? _tl64416462_)
                               (let ((_e64426465_ (gx#syntax-e _tl64416462_)))
                                 (let ((_hd64436468_ (##car _e64426465_))
                                       (_tl64446470_ (##cdr _e64426465_)))
                                   (let ((_id6473_ _hd64436468_))
                                     (if (gx#stx-pair? _tl64446470_)
                                         (let ((_e64456475_
                                                (gx#syntax-e _tl64446470_)))
                                           (let ((_hd64466478_
                                                  (##car _e64456475_))
                                                 (_tl64476480_
                                                  (##cdr _e64456475_)))
                                             (let ((_binding-id6483_
                                                    _hd64466478_))
                                               (if (gx#stx-null? _tl64476480_)
                                                   (if (if (gx#identifier?
                                                            _id6473_)
                                                           (gx#identifier?
                                                            _binding-id6483_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!
                                                          _id6473_
                                                          (gx#stx-e
                                                           _binding-id6483_))
                                                         (gx#core-quote-syntax
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax _id6473_)
                              (cons (gx#core-quote-syntax _binding-id6483_)
                                    '())))))
               (_E64386453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E64386453_)))))
                                         (_E64386453_)))))
                               (_E64386453_))))
                       (_E64386453_)))))
            (let () (_E64376485_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx6378_)
      (let ((_e63796392_ _stx6378_))
        (let ((_E63816396_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63796392_))))
          (let ((_E63806431_
                 (lambda ()
                   (if (gx#stx-pair? _e63796392_)
                       (let ((_e63826400_ (gx#syntax-e _e63796392_)))
                         (let ((_hd63836403_ (##car _e63826400_))
                               (_tl63846405_ (##cdr _e63826400_)))
                           (if (gx#stx-pair? _tl63846405_)
                               (let ((_e63856408_ (gx#syntax-e _tl63846405_)))
                                 (let ((_hd63866411_ (##car _e63856408_))
                                       (_tl63876413_ (##cdr _e63856408_)))
                                   (let ((_id6416_ _hd63866411_))
                                     (if (gx#stx-pair? _tl63876413_)
                                         (let ((_e63886418_
                                                (gx#syntax-e _tl63876413_)))
                                           (let ((_hd63896421_
                                                  (##car _e63886418_))
                                                 (_tl63906423_
                                                  (##cdr _e63886418_)))
                                             (let ((_expr6426_ _hd63896421_))
                                               (if (gx#stx-null? _tl63906423_)
                                                   (if (gx#identifier?
                                                        _id6416_)
                                                       (let ((_g12531_
                                                              (gx#core-expand-expression+1
                                                               _expr6426_)))
                                                         (begin
                                                           (let ((_g12532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g12531_)))
                     (if (not (fx= _g12532_ 2))
                         (error "Context expects 2 values" _g12532_)))
                   (let ((_e-stx6428_ (values-ref _g12531_ 0))
                         (_e6429_ (values-ref _g12531_ 1)))
                     (begin
                       (gx#core-bind-syntax! _id6416_ _e6429_)
                       (gx#core-quote-syntax
                        (cons (gx#core-quote-syntax '%#define-syntax)
                              (cons (gx#core-quote-syntax _id6416_)
                                    (cons _e-stx6428_ '())))
                        (gx#stx-source _stx6378_))))))
               (_E63816396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63816396_)))))
                                         (_E63816396_)))))
                               (_E63816396_))))
                       (_E63816396_)))))
            (let () (_E63806431_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx6322_)
      (let ((_e63236336_ _stx6322_))
        (let ((_E63256340_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63236336_))))
          (let ((_E63246374_
                 (lambda ()
                   (if (gx#stx-pair? _e63236336_)
                       (let ((_e63266344_ (gx#syntax-e _e63236336_)))
                         (let ((_hd63276347_ (##car _e63266344_))
                               (_tl63286349_ (##cdr _e63266344_)))
                           (if (gx#stx-pair? _tl63286349_)
                               (let ((_e63296352_ (gx#syntax-e _tl63286349_)))
                                 (let ((_hd63306355_ (##car _e63296352_))
                                       (_tl63316357_ (##cdr _e63296352_)))
                                   (let ((_id6360_ _hd63306355_))
                                     (if (gx#stx-pair? _tl63316357_)
                                         (let ((_e63326362_
                                                (gx#syntax-e _tl63316357_)))
                                           (let ((_hd63336365_
                                                  (##car _e63326362_))
                                                 (_tl63346367_
                                                  (##cdr _e63326362_)))
                                             (let ((_alias-id6370_
                                                    _hd63336365_))
                                               (if (gx#stx-null? _tl63346367_)
                                                   (if (if (gx#identifier?
                                                            _id6360_)
                                                           (gx#identifier?
                                                            _alias-id6370_)
                                                           '#f)
                                                       (let ((_alias-id6372_
                                                              (gx#core-quote-syntax
                                                               _alias-id6370_)))
                                                         (begin
                                                           (gx#core-bind-alias!
                                                            _id6360_
                                                            _alias-id6372_)
                                                           (gx#core-quote-syntax
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax _id6360_)
                                (cons _alias-id6372_ '()))))))
               (_E63256340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63256340_)))))
                                         (_E63256340_)))))
                               (_E63256340_))))
                       (_E63256340_)))))
            (let () (_E63246374_)))))))
  (define gx#core-expand-lambda%
    (let ((_opt-lambda62636312_
           (lambda (_stx6265_ _wrap?6266_)
             (let ((_e62676277_ _stx6265_))
               (let ((_E62696281_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e62676277_))))
                 (let ((_E62686308_
                        (lambda ()
                          (if (gx#stx-pair? _e62676277_)
                              (let ((_e62706285_ (gx#syntax-e _e62676277_)))
                                (let ((_hd62716288_ (##car _e62706285_))
                                      (_tl62726290_ (##cdr _e62706285_)))
                                  (if (gx#stx-pair? _tl62726290_)
                                      (let ((_e62736293_
                                             (gx#syntax-e _tl62726290_)))
                                        (let ((_hd62746296_
                                               (##car _e62736293_))
                                              (_tl62756298_
                                               (##cdr _e62736293_)))
                                          (let ((_hd6301_ _hd62746296_))
                                            (let ((_body6303_ _tl62756298_))
                                              (if (gx#core-bind-values?
                                                   _hd6301_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (begin
                                                       (gx#core-bind-values!
                                                        _hd6301_)
                                                       (let ((_body6306_
                                                              (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd6301_)
                            (cons (gx#core-expand-local-block
                                   _stx6265_
                                   _body6303_)
                                  '()))))
                 (if _wrap?6266_
                     (gx#core-quote-syntax
                      (gx#core-cons '%#lambda _body6306_)
                      (gx#stx-source _stx6265_))
                     _body6306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   gx#current-expander-context
                                                   (gx#make-local-context))
                                                  (_E62696281_))))))
                                      (_E62696281_))))
                              (_E62696281_)))))
                   (let () (_E62686308_))))))))
      (lambda _g12534_
        (let ((_g12533_ (length _g12534_)))
          (cond ((fx= _g12533_ 1)
                 (apply (lambda (_stx6315_)
                          (let ((_wrap?6317_ '#t))
                            (_opt-lambda62636312_ _stx6315_ _wrap?6317_)))
                        _g12534_))
                ((fx= _g12533_ 2)
                 (apply (lambda (_stx6319_ _wrap?6320_)
                          (_opt-lambda62636312_ _stx6319_ _wrap?6320_))
                        _g12534_))
                (else (error "No clause matching arguments" _g12534_)))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx6229_)
      (let ((_e62306237_ _stx6229_))
        (let ((_E62326241_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62306237_))))
          (let ((_E62316260_
                 (lambda ()
                   (if (gx#stx-pair? _e62306237_)
                       (let ((_e62336245_ (gx#syntax-e _e62306237_)))
                         (let ((_hd62346248_ (##car _e62336245_))
                               (_tl62356250_ (##cdr _e62336245_)))
                           (let ((_clauses6253_ _tl62356250_))
                             (if (gx#stx-list? _clauses6253_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map
                                    (lambda (_clause6255_)
                                      (gx#core-expand-lambda%
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause6255_)
                                        (let ((_$e6257_
                                               (gx#stx-source _clause6255_)))
                                          (if _$e6257_
                                              _$e6257_
                                              (gx#stx-source _stx6229_))))
                                       '#f))
                                    _clauses6253_))
                                  (gx#stx-source _stx6229_))
                                 (_E62326241_)))))
                       (_E62326241_)))))
            (let () (_E62316260_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx6183_)
      (let ((_e61846194_ _stx6183_))
        (let ((_E61866198_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e61846194_))))
          (let ((_E61856225_
                 (lambda ()
                   (if (gx#stx-pair? _e61846194_)
                       (let ((_e61876202_ (gx#syntax-e _e61846194_)))
                         (let ((_hd61886205_ (##car _e61876202_))
                               (_tl61896207_ (##cdr _e61876202_)))
                           (if (gx#stx-pair? _tl61896207_)
                               (let ((_e61906210_ (gx#syntax-e _tl61896207_)))
                                 (let ((_hd61916213_ (##car _e61906210_))
                                       (_tl61926215_ (##cdr _e61906210_)))
                                   (let ((_hd6218_ _hd61916213_))
                                     (let ((_body6220_ _tl61926215_))
                                       (if (gx#core-expand-let-bind? _hd6218_)
                                           (let ((_expressions6222_
                                                  (gx#stx-map
                                                   gx#core-expand-let-bind-expression
                                                   _hd6218_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-values!
                                                   _hd6218_)
                                                  (gx#core-quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          '%#let-values)
                                                         (cons (gx#stx-map
                                                                gx#core-expand-let-bind-quote
                                                                _hd6218_
                                                                _expressions6222_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6183_
                              _body6220_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6183_))))
                                              gx#current-expander-context
                                              (gx#make-local-context)))
                                           (_E61866198_))))))
                               (_E61866198_))))
                       (_E61866198_)))))
            (let () (_E61856225_)))))))
  (define gx#core-expand-letrec-values%
    (let ((_opt-lambda61266173_
           (lambda (_stx6128_ _form6129_)
             (let ((_e61306140_ _stx6128_))
               (let ((_E61326144_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e61306140_))))
                 (let ((_E61316169_
                        (lambda ()
                          (if (gx#stx-pair? _e61306140_)
                              (let ((_e61336148_ (gx#syntax-e _e61306140_)))
                                (let ((_hd61346151_ (##car _e61336148_))
                                      (_tl61356153_ (##cdr _e61336148_)))
                                  (if (gx#stx-pair? _tl61356153_)
                                      (let ((_e61366156_
                                             (gx#syntax-e _tl61356153_)))
                                        (let ((_hd61376159_
                                               (##car _e61366156_))
                                              (_tl61386161_
                                               (##cdr _e61366156_)))
                                          (let ((_hd6164_ _hd61376159_))
                                            (let ((_body6166_ _tl61386161_))
                                              (if (gx#core-expand-let-bind?
                                                   _hd6164_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (begin
                                                       (gx#stx-for-each
                                                        gx#core-expand-let-bind-values!
                                                        _hd6164_)
                                                       (gx#core-quote-syntax
                                                        (cons (gx#core-quote-syntax
                                                               _form6129_)
                                                              (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#core-expand-let-bind-quote
                             _hd6164_
                             (gx#stx-map
                              gx#core-expand-let-bind-expression
                              _hd6164_))
                            (cons (gx#core-expand-local-block
                                   _stx6128_
                                   _body6166_)
                                  '())))
                (gx#stx-source _stx6128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   gx#current-expander-context
                                                   (gx#make-local-context))
                                                  (_E61326144_))))))
                                      (_E61326144_))))
                              (_E61326144_)))))
                   (let () (_E61316169_))))))))
      (lambda _g12536_
        (let ((_g12535_ (length _g12536_)))
          (cond ((fx= _g12535_ 1)
                 (apply (lambda (_stx6176_)
                          (let ((_form6178_ '%#letrec-values))
                            (_opt-lambda61266173_ _stx6176_ _form6178_)))
                        _g12536_))
                ((fx= _g12535_ 2)
                 (apply (lambda (_stx6180_ _form6181_)
                          (_opt-lambda61266173_ _stx6180_ _form6181_))
                        _g12536_))
                (else (error "No clause matching arguments" _g12536_)))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx6125_)
      (gx#core-expand-letrec-values% _stx6125_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx6082_)
      (if (gx#stx-list? _stx6082_)
          (gx#stx-andmap
           (lambda (_bind6084_)
             (let ((_e60856095_ _bind6084_))
               (let ((_E60876099_ (lambda () '#f)))
                 (let ((_E60866121_
                        (lambda ()
                          (if (gx#stx-pair? _e60856095_)
                              (let ((_e60886103_ (gx#syntax-e _e60856095_)))
                                (let ((_hd60896106_ (##car _e60886103_))
                                      (_tl60906108_ (##cdr _e60886103_)))
                                  (let ((_hd6111_ _hd60896106_))
                                    (if (gx#stx-pair? _tl60906108_)
                                        (let ((_e60916113_
                                               (gx#syntax-e _tl60906108_)))
                                          (let ((_hd60926116_
                                                 (##car _e60916113_))
                                                (_tl60936118_
                                                 (##cdr _e60916113_)))
                                            (if (gx#stx-null? _tl60936118_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd6111_)
                                                    (_E60876099_))
                                                (_E60876099_))))
                                        (_E60876099_)))))
                              (_E60876099_)))))
                   (let () (_E60866121_))))))
           _stx6082_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind6041_)
      (let ((_e60426052_ _bind6041_))
        (let ((_E60446056_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60426052_))))
          (let ((_E60436078_
                 (lambda ()
                   (if (gx#stx-pair? _e60426052_)
                       (let ((_e60456060_ (gx#syntax-e _e60426052_)))
                         (let ((_hd60466063_ (##car _e60456060_))
                               (_tl60476065_ (##cdr _e60456060_)))
                           (if (gx#stx-pair? _tl60476065_)
                               (let ((_e60486068_ (gx#syntax-e _tl60476065_)))
                                 (let ((_hd60496071_ (##car _e60486068_))
                                       (_tl60506073_ (##cdr _e60486068_)))
                                   (let ((_expr6076_ _hd60496071_))
                                     (if (gx#stx-null? _tl60506073_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6076_)
                                             (_E60446056_))
                                         (_E60446056_)))))
                               (_E60446056_))))
                       (_E60446056_)))))
            (let () (_E60436078_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind6000_)
      (let ((_e60016011_ _bind6000_))
        (let ((_E60036015_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60016011_))))
          (let ((_E60026037_
                 (lambda ()
                   (if (gx#stx-pair? _e60016011_)
                       (let ((_e60046019_ (gx#syntax-e _e60016011_)))
                         (let ((_hd60056022_ (##car _e60046019_))
                               (_tl60066024_ (##cdr _e60046019_)))
                           (let ((_hd6027_ _hd60056022_))
                             (if (gx#stx-pair? _tl60066024_)
                                 (let ((_e60076029_
                                        (gx#syntax-e _tl60066024_)))
                                   (let ((_hd60086032_ (##car _e60076029_))
                                         (_tl60096034_ (##cdr _e60076029_)))
                                     (if (gx#stx-null? _tl60096034_)
                                         (if '#t
                                             (gx#core-bind-values! _hd6027_)
                                             (_E60036015_))
                                         (_E60036015_))))
                                 (_E60036015_)))))
                       (_E60036015_)))))
            (let () (_E60026037_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind5958_ _expr5959_)
      (let ((_e59605970_ _bind5958_))
        (let ((_E59625974_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59605970_))))
          (let ((_E59615996_
                 (lambda ()
                   (if (gx#stx-pair? _e59605970_)
                       (let ((_e59635978_ (gx#syntax-e _e59605970_)))
                         (let ((_hd59645981_ (##car _e59635978_))
                               (_tl59655983_ (##cdr _e59635978_)))
                           (let ((_hd5986_ _hd59645981_))
                             (if (gx#stx-pair? _tl59655983_)
                                 (let ((_e59665988_
                                        (gx#syntax-e _tl59655983_)))
                                   (let ((_hd59675991_ (##car _e59665988_))
                                         (_tl59685993_ (##cdr _e59665988_)))
                                     (if (gx#stx-null? _tl59685993_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd5986_)
                                                   (cons _expr5959_ '()))
                                             (_E59625974_))
                                         (_E59625974_))))
                                 (_E59625974_)))))
                       (_E59625974_)))))
            (let () (_E59615996_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx5912_)
      (let ((_e59135923_ _stx5912_))
        (let ((_E59155927_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59135923_))))
          (let ((_E59145954_
                 (lambda ()
                   (if (gx#stx-pair? _e59135923_)
                       (let ((_e59165931_ (gx#syntax-e _e59135923_)))
                         (let ((_hd59175934_ (##car _e59165931_))
                               (_tl59185936_ (##cdr _e59165931_)))
                           (if (gx#stx-pair? _tl59185936_)
                               (let ((_e59195939_ (gx#syntax-e _tl59185936_)))
                                 (let ((_hd59205942_ (##car _e59195939_))
                                       (_tl59215944_ (##cdr _e59195939_)))
                                   (let ((_hd5947_ _hd59205942_))
                                     (let ((_body5949_ _tl59215944_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd5947_)
                                           (let ((_expanders5951_
                                                  (gx#stx-map
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd5947_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd5947_
                                                   _expanders5951_)
                                                  (gx#core-expand-local-block
                                                   _stx5912_
                                                   _body5949_)))
                                              gx#current-expander-context
                                              (gx#make-local-context)))
                                           (_E59155927_))))))
                               (_E59155927_))))
                       (_E59155927_)))))
            (let () (_E59145954_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx5861_)
      (let ((_e58625872_ _stx5861_))
        (let ((_E58645876_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58625872_))))
          (let ((_E58635908_
                 (lambda ()
                   (if (gx#stx-pair? _e58625872_)
                       (let ((_e58655880_ (gx#syntax-e _e58625872_)))
                         (let ((_hd58665883_ (##car _e58655880_))
                               (_tl58675885_ (##cdr _e58655880_)))
                           (if (gx#stx-pair? _tl58675885_)
                               (let ((_e58685888_ (gx#syntax-e _tl58675885_)))
                                 (let ((_hd58695891_ (##car _e58685888_))
                                       (_tl58705893_ (##cdr _e58685888_)))
                                   (let ((_hd5896_ _hd58695891_))
                                     (let ((_body5898_ _tl58705893_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd5896_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd5896_
                                                 (make-list
                                                  (gx#stx-length _hd5896_)
                                                  '#!void))
                                                (gx#stx-for-each
                                                 (lambda (_g59005903_
                                                          _g59015905_)
                                                   (gx#core-expand-let-bind-syntax!
                                                    _g59005903_
                                                    _g59015905_
                                                    '#t))
                                                 _hd5896_
                                                 (gx#stx-map
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd5896_))
                                                (gx#core-expand-local-block
                                                 _stx5861_
                                                 _body5898_)))
                                            gx#current-expander-context
                                            (gx#make-local-context))
                                           (_E58645876_))))))
                               (_E58645876_))))
                       (_E58645876_)))))
            (let () (_E58635908_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx5818_)
      (if (gx#stx-list? _stx5818_)
          (gx#stx-andmap
           (lambda (_bind5820_)
             (let ((_e58215831_ _bind5820_))
               (let ((_E58235835_ (lambda () '#f)))
                 (let ((_E58225857_
                        (lambda ()
                          (if (gx#stx-pair? _e58215831_)
                              (let ((_e58245839_ (gx#syntax-e _e58215831_)))
                                (let ((_hd58255842_ (##car _e58245839_))
                                      (_tl58265844_ (##cdr _e58245839_)))
                                  (let ((_hd5847_ _hd58255842_))
                                    (if (gx#stx-pair? _tl58265844_)
                                        (let ((_e58275849_
                                               (gx#syntax-e _tl58265844_)))
                                          (let ((_hd58285852_
                                                 (##car _e58275849_))
                                                (_tl58295854_
                                                 (##cdr _e58275849_)))
                                            (if (gx#stx-null? _tl58295854_)
                                                (if '#t
                                                    (gx#identifier? _hd5847_)
                                                    (_E58235835_))
                                                (_E58235835_))))
                                        (_E58235835_)))))
                              (_E58235835_)))))
                   (let () (_E58225857_))))))
           _stx5818_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind5775_)
      (let ((_e57765786_ _bind5775_))
        (let ((_E57785790_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57765786_))))
          (let ((_E57775814_
                 (lambda ()
                   (if (gx#stx-pair? _e57765786_)
                       (let ((_e57795794_ (gx#syntax-e _e57765786_)))
                         (let ((_hd57805797_ (##car _e57795794_))
                               (_tl57815799_ (##cdr _e57795794_)))
                           (if (gx#stx-pair? _tl57815799_)
                               (let ((_e57825802_ (gx#syntax-e _tl57815799_)))
                                 (let ((_hd57835805_ (##car _e57825802_))
                                       (_tl57845807_ (##cdr _e57825802_)))
                                   (let ((_expr5810_ _hd57835805_))
                                     (if (gx#stx-null? _tl57845807_)
                                         (if '#t
                                             (let ((_g12537_
                                                    (gx#core-expand-expression+1
                                                     _expr5810_)))
                                               (begin
                                                 (let ((_g12538_
                                                        (values-count
                                                         _g12537_)))
                                                   (if (not (fx= _g12538_ 2))
                                                       (error "Context expects 2 values"
                                                              _g12538_)))
                                                 (let ((_e5812_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12537_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e5812_)))
                                             (_E57785790_))
                                         (_E57785790_)))))
                               (_E57785790_))))
                       (_E57785790_)))))
            (let () (_E57775814_)))))))
  (define gx#core-expand-let-bind-syntax!
    (let ((_opt-lambda57185763_
           (lambda (_bind5720_ _e5721_ _rebind?5722_)
             (let ((_e57235733_ _bind5720_))
               (let ((_E57255737_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e57235733_))))
                 (let ((_E57245759_
                        (lambda ()
                          (if (gx#stx-pair? _e57235733_)
                              (let ((_e57265741_ (gx#syntax-e _e57235733_)))
                                (let ((_hd57275744_ (##car _e57265741_))
                                      (_tl57285746_ (##cdr _e57265741_)))
                                  (let ((_id5749_ _hd57275744_))
                                    (if (gx#stx-pair? _tl57285746_)
                                        (let ((_e57295751_
                                               (gx#syntax-e _tl57285746_)))
                                          (let ((_hd57305754_
                                                 (##car _e57295751_))
                                                (_tl57315756_
                                                 (##cdr _e57295751_)))
                                            (if (gx#stx-null? _tl57315756_)
                                                (if '#t
                                                    (gx#core-bind-syntax!
                                                     _id5749_
                                                     _e5721_
                                                     _rebind?5722_)
                                                    (_E57255737_))
                                                (_E57255737_))))
                                        (_E57255737_)))))
                              (_E57255737_)))))
                   (let () (_E57245759_))))))))
      (lambda _g12540_
        (let ((_g12539_ (length _g12540_)))
          (cond ((fx= _g12539_ 2)
                 (apply (lambda (_bind5766_ _e5767_)
                          (let ((_rebind?5769_ '#f))
                            (_opt-lambda57185763_
                             _bind5766_
                             _e5767_
                             _rebind?5769_)))
                        _g12540_))
                ((fx= _g12539_ 3)
                 (apply (lambda (_bind5771_ _e5772_ _rebind?5773_)
                          (_opt-lambda57185763_
                           _bind5771_
                           _e5772_
                           _rebind?5773_))
                        _g12540_))
                (else (error "No clause matching arguments" _g12540_)))))))
  (define gx#core-expand-expression%
    (lambda (_stx5678_)
      (let ((_e56795689_ _stx5678_))
        (let ((_E56815693_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e56795689_))))
          (let ((_E56805715_
                 (lambda ()
                   (if (gx#stx-pair? _e56795689_)
                       (let ((_e56825697_ (gx#syntax-e _e56795689_)))
                         (let ((_hd56835700_ (##car _e56825697_))
                               (_tl56845702_ (##cdr _e56825697_)))
                           (if (gx#stx-pair? _tl56845702_)
                               (let ((_e56855705_ (gx#syntax-e _tl56845702_)))
                                 (let ((_hd56865708_ (##car _e56855705_))
                                       (_tl56875710_ (##cdr _e56855705_)))
                                   (let ((_expr5713_ _hd56865708_))
                                     (if (gx#stx-null? _tl56875710_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr5713_)
                                             (_E56815693_))
                                         (_E56815693_)))))
                               (_E56815693_))))
                       (_E56815693_)))))
            (let () (_E56805715_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx5637_)
      (let ((_e56385648_ _stx5637_))
        (let ((_E56405652_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e56385648_))))
          (let ((_E56395674_
                 (lambda ()
                   (if (gx#stx-pair? _e56385648_)
                       (let ((_e56415656_ (gx#syntax-e _e56385648_)))
                         (let ((_hd56425659_ (##car _e56415656_))
                               (_tl56435661_ (##cdr _e56415656_)))
                           (if (gx#stx-pair? _tl56435661_)
                               (let ((_e56445664_ (gx#syntax-e _tl56435661_)))
                                 (let ((_hd56455667_ (##car _e56445664_))
                                       (_tl56465669_ (##cdr _e56445664_)))
                                   (let ((_e5672_ _hd56455667_))
                                     (if (gx#stx-null? _tl56465669_)
                                         (if '#t
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e5672_)
                                                          '()))
                                              (gx#stx-source _stx5637_))
                                             (_E56405652_))
                                         (_E56405652_)))))
                               (_E56405652_))))
                       (_E56405652_)))))
            (let () (_E56395674_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx5596_)
      (let ((_e55975607_ _stx5596_))
        (let ((_E55995611_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55975607_))))
          (let ((_E55985633_
                 (lambda ()
                   (if (gx#stx-pair? _e55975607_)
                       (let ((_e56005615_ (gx#syntax-e _e55975607_)))
                         (let ((_hd56015618_ (##car _e56005615_))
                               (_tl56025620_ (##cdr _e56005615_)))
                           (if (gx#stx-pair? _tl56025620_)
                               (let ((_e56035623_ (gx#syntax-e _tl56025620_)))
                                 (let ((_hd56045626_ (##car _e56035623_))
                                       (_tl56055628_ (##cdr _e56035623_)))
                                   (let ((_e5631_ _hd56045626_))
                                     (if (gx#stx-null? _tl56055628_)
                                         (if '#t
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax
                                                           _e5631_)
                                                          '()))
                                              (gx#stx-source _stx5596_))
                                             (_E55995611_))
                                         (_E55995611_)))))
                               (_E55995611_))))
                       (_E55995611_)))))
            (let () (_E55985633_)))))))
  (define gx#core-expand-call%
    (lambda (_stx5553_)
      (let ((_e55545564_ _stx5553_))
        (let ((_E55565568_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55545564_))))
          (let ((_E55555592_
                 (lambda ()
                   (if (gx#stx-pair? _e55545564_)
                       (let ((_e55575572_ (gx#syntax-e _e55545564_)))
                         (let ((_hd55585575_ (##car _e55575572_))
                               (_tl55595577_ (##cdr _e55575572_)))
                           (if (gx#stx-pair? _tl55595577_)
                               (let ((_e55605580_ (gx#syntax-e _tl55595577_)))
                                 (let ((_hd55615583_ (##car _e55605580_))
                                       (_tl55625585_ (##cdr _e55605580_)))
                                   (let ((_rator5588_ _hd55615583_))
                                     (let ((_args5590_ _tl55625585_))
                                       (if (gx#stx-list? _args5590_)
                                           (gx#core-quote-syntax
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator5588_)
                                             (gx#stx-map
                                              gx#core-expand-expression
                                              _args5590_))
                                            (gx#stx-source _stx5553_))
                                           (_E55565568_))))))
                               (_E55565568_))))
                       (_E55565568_)))))
            (let () (_E55555592_)))))))
  (define gx#core-expand-if%
    (lambda (_stx5486_)
      (let ((_e54875503_ _stx5486_))
        (let ((_E54895507_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54875503_))))
          (let ((_E54885549_
                 (lambda ()
                   (if (gx#stx-pair? _e54875503_)
                       (let ((_e54905511_ (gx#syntax-e _e54875503_)))
                         (let ((_hd54915514_ (##car _e54905511_))
                               (_tl54925516_ (##cdr _e54905511_)))
                           (if (gx#stx-pair? _tl54925516_)
                               (let ((_e54935519_ (gx#syntax-e _tl54925516_)))
                                 (let ((_hd54945522_ (##car _e54935519_))
                                       (_tl54955524_ (##cdr _e54935519_)))
                                   (let ((_test5527_ _hd54945522_))
                                     (if (gx#stx-pair? _tl54955524_)
                                         (let ((_e54965529_
                                                (gx#syntax-e _tl54955524_)))
                                           (let ((_hd54975532_
                                                  (##car _e54965529_))
                                                 (_tl54985534_
                                                  (##cdr _e54965529_)))
                                             (let ((_K5537_ _hd54975532_))
                                               (if (gx#stx-pair? _tl54985534_)
                                                   (let ((_e54995539_
                                                          (gx#syntax-e
                                                           _tl54985534_)))
                                                     (let ((_hd55005542_
                                                            (##car _e54995539_))
                                                           (_tl55015544_
                                                            (##cdr _e54995539_)))
                                                       (let ((_E5547_ _hd55005542_))
                                                         (if (gx#stx-null?
                                                              _tl55015544_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax
                          (cons (gx#core-quote-syntax '%#if)
                                (cons (gx#core-expand-expression _test5527_)
                                      (cons (gx#core-expand-expression _K5537_)
                                            (cons (gx#core-expand-expression
                                                   _E5547_)
                                                  '()))))
                          (gx#stx-source _stx5486_))
                         (_E54895507_))
                     (_E54895507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E54895507_)))))
                                         (_E54895507_)))))
                               (_E54895507_))))
                       (_E54895507_)))))
            (let () (_E54885549_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx5445_)
      (let ((_e54465456_ _stx5445_))
        (let ((_E54485460_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54465456_))))
          (let ((_E54475482_
                 (lambda ()
                   (if (gx#stx-pair? _e54465456_)
                       (let ((_e54495464_ (gx#syntax-e _e54465456_)))
                         (let ((_hd54505467_ (##car _e54495464_))
                               (_tl54515469_ (##cdr _e54495464_)))
                           (if (gx#stx-pair? _tl54515469_)
                               (let ((_e54525472_ (gx#syntax-e _tl54515469_)))
                                 (let ((_hd54535475_ (##car _e54525472_))
                                       (_tl54545477_ (##cdr _e54525472_)))
                                   (let ((_id5480_ _hd54535475_))
                                     (if (gx#stx-null? _tl54545477_)
                                         (if (gx#core-runtime-ref? _id5480_)
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id5480_
                                                           _stx5445_)
                                                          '()))
                                              (gx#stx-source _stx5445_))
                                             (_E54485460_))
                                         (_E54485460_)))))
                               (_E54485460_))))
                       (_E54485460_)))))
            (let () (_E54475482_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx5391_)
      (let ((_e53925405_ _stx5391_))
        (let ((_E53945409_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e53925405_))))
          (let ((_E53935441_
                 (lambda ()
                   (if (gx#stx-pair? _e53925405_)
                       (let ((_e53955413_ (gx#syntax-e _e53925405_)))
                         (let ((_hd53965416_ (##car _e53955413_))
                               (_tl53975418_ (##cdr _e53955413_)))
                           (if (gx#stx-pair? _tl53975418_)
                               (let ((_e53985421_ (gx#syntax-e _tl53975418_)))
                                 (let ((_hd53995424_ (##car _e53985421_))
                                       (_tl54005426_ (##cdr _e53985421_)))
                                   (let ((_id5429_ _hd53995424_))
                                     (if (gx#stx-pair? _tl54005426_)
                                         (let ((_e54015431_
                                                (gx#syntax-e _tl54005426_)))
                                           (let ((_hd54025434_
                                                  (##car _e54015431_))
                                                 (_tl54035436_
                                                  (##cdr _e54015431_)))
                                             (let ((_expr5439_ _hd54025434_))
                                               (if (gx#stx-null? _tl54035436_)
                                                   (if (gx#core-runtime-ref?
                                                        _id5429_)
                                                       (gx#core-quote-syntax
                                                        (cons (gx#core-quote-syntax
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5429_
                             _stx5391_)
                            (cons (gx#core-expand-expression _expr5439_) '())))
                (gx#stx-source _stx5391_))
               (_E53945409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E53945409_)))))
                                         (_E53945409_)))))
                               (_E53945409_))))
                       (_E53945409_)))))
            (let () (_E53935441_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx5239_)
      (let ((_generate5241_
             (lambda (_body5271_)
               ((letrec ((_lp5273_
                          (lambda (_rest5275_ _ns5276_ _r5277_)
                            (let ((_e52785293_ _rest5275_))
                              (let ((_E52915297_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e52785293_))))
                                (let ((_E52875301_
                                       (lambda ()
                                         (if (gx#stx-null? _e52785293_)
                                             (if '#t
                                                 (reverse _r5277_)
                                                 (_E52915297_))
                                             (_E52915297_)))))
                                  (let ((_E52805358_
                                         (lambda ()
                                           (if (gx#stx-pair? _e52785293_)
                                               (let ((_e52885305_
                                                      (gx#syntax-e
                                                       _e52785293_)))
                                                 (let ((_hd52895308_
                                                        (##car _e52885305_))
                                                       (_tl52905310_
                                                        (##cdr _e52885305_)))
                                                   (let ((_hd5313_
                                                          _hd52895308_))
                                                     (let ((_rest5315_
                                                            _tl52905310_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd5313_)
                                                               (_lp5273_
                                                                _rest5315_
                                                                _ns5276_
                                                                (cons (cons _hd5313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns5276_
                                              (gx#stx-identifier
                                               _hd5313_
                                               _ns5276_
                                               '"#"
                                               _hd5313_)
                                              _hd5313_)
                                          '()))
                              _r5277_))
                       (let ((_e53165326_ _hd5313_))
                         (let ((_E53185330_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e53165326_))))
                           (let ((_E53175354_
                                  (lambda ()
                                    (if (gx#stx-pair? _e53165326_)
                                        (let ((_e53195334_
                                               (gx#syntax-e _e53165326_)))
                                          (let ((_hd53205337_
                                                 (##car _e53195334_))
                                                (_tl53215339_
                                                 (##cdr _e53195334_)))
                                            (let ((_id5342_ _hd53205337_))
                                              (if (gx#stx-pair? _tl53215339_)
                                                  (let ((_e53225344_
                                                         (gx#syntax-e
                                                          _tl53215339_)))
                                                    (let ((_hd53235347_
                                                           (##car _e53225344_))
                                                          (_tl53245349_
                                                           (##cdr _e53225344_)))
                                                      (let ((_eid5352_
                                                             _hd53235347_))
                                                        (if (gx#stx-null?
                                                             _tl53245349_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5342_)
                            (gx#identifier? _eid5352_)
                            '#f)
                        (_lp5273_
                         _rest5315_
                         _ns5276_
                         (cons (cons _id5342_ (cons _eid5352_ '())) _r5277_))
                        (_E53185330_))
                    (_E53185330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E53185330_)))))
                                        (_E53185330_)))))
                             (let () (_E53175354_))))))
                   (_E52875301_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E52875301_)))))
                                    (let ((_E52795387_
                                           (lambda ()
                                             (if (gx#stx-pair? _e52785293_)
                                                 (let ((_e52815362_
                                                        (gx#syntax-e
                                                         _e52785293_)))
                                                   (let ((_hd52825365_
                                                          (##car _e52815362_))
                                                         (_tl52835367_
                                                          (##cdr _e52815362_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd52825365_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl52835367_)
                                                             (let ((_e52845370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl52835367_)))
                       (let ((_hd52855373_ (##car _e52845370_))
                             (_tl52865375_ (##cdr _e52845370_)))
                         (let ((_ns5378_ _hd52855373_))
                           (let ((_rest5380_ _tl52865375_))
                             (if '#t
                                 (let ((_ns5385_
                                        (if (gx#identifier? _ns5378_)
                                            (symbol->string
                                             (gx#stx-e _ns5378_))
                                            (if (let ((_$e5382_
                                                       (gx#stx-string?
                                                        _ns5378_)))
                                                  (if _$e5382_
                                                      _$e5382_
                                                      (gx#stx-false?
                                                       _ns5378_)))
                                                (gx#stx-e _ns5378_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx5239_
                                                 _ns5378_)))))
                                   (_lp5273_ _rest5380_ _ns5385_ _r5277_))
                                 (_E52805358_))))))
                     (_E52805358_))
                 (_E52805358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E52805358_)))))
                                      (let () (_E52795387_))))))))))
                  _lp5273_)
                _body5271_
                (gx#core-context-namespace)
                '()))))
        (let ((_e52425249_ _stx5239_))
          (let ((_E52445253_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e52425249_))))
            (let ((_E52435267_
                   (lambda ()
                     (if (gx#stx-pair? _e52425249_)
                         (let ((_e52455257_ (gx#syntax-e _e52425249_)))
                           (let ((_hd52465260_ (##car _e52455257_))
                                 (_tl52475262_ (##cdr _e52455257_)))
                             (let ((_body5265_ _tl52475262_))
                               (if (gx#stx-list? _body5265_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate5241_ _body5265_))
                                   (_E52445253_)))))
                         (_E52445253_)))))
              (let () (_E52435267_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx5185_)
      (let ((_e51865199_ _stx5185_))
        (let ((_E51885203_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51865199_))))
          (let ((_E51875235_
                 (lambda ()
                   (if (gx#stx-pair? _e51865199_)
                       (let ((_e51895207_ (gx#syntax-e _e51865199_)))
                         (let ((_hd51905210_ (##car _e51895207_))
                               (_tl51915212_ (##cdr _e51895207_)))
                           (if (gx#stx-pair? _tl51915212_)
                               (let ((_e51925215_ (gx#syntax-e _tl51915212_)))
                                 (let ((_hd51935218_ (##car _e51925215_))
                                       (_tl51945220_ (##cdr _e51925215_)))
                                   (let ((_hd5223_ _hd51935218_))
                                     (if (gx#stx-pair? _tl51945220_)
                                         (let ((_e51955225_
                                                (gx#syntax-e _tl51945220_)))
                                           (let ((_hd51965228_
                                                  (##car _e51955225_))
                                                 (_tl51975230_
                                                  (##cdr _e51955225_)))
                                             (let ((_expr5233_ _hd51965228_))
                                               (if (gx#stx-null? _tl51975230_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd5223_)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-values)
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd5223_)
                           (cons _expr5233_ '())))
               (_E51885203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E51885203_)))))
                                         (_E51885203_)))))
                               (_E51885203_))))
                       (_E51885203_)))))
            (let () (_E51875235_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx5131_)
      (let ((_e51325145_ _stx5131_))
        (let ((_E51345149_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51325145_))))
          (let ((_E51335181_
                 (lambda ()
                   (if (gx#stx-pair? _e51325145_)
                       (let ((_e51355153_ (gx#syntax-e _e51325145_)))
                         (let ((_hd51365156_ (##car _e51355153_))
                               (_tl51375158_ (##cdr _e51355153_)))
                           (if (gx#stx-pair? _tl51375158_)
                               (let ((_e51385161_ (gx#syntax-e _tl51375158_)))
                                 (let ((_hd51395164_ (##car _e51385161_))
                                       (_tl51405166_ (##cdr _e51385161_)))
                                   (let ((_hd5169_ _hd51395164_))
                                     (if (gx#stx-pair? _tl51405166_)
                                         (let ((_e51415171_
                                                (gx#syntax-e _tl51405166_)))
                                           (let ((_hd51425174_
                                                  (##car _e51415171_))
                                                 (_tl51435176_
                                                  (##cdr _e51415171_)))
                                             (let ((_expr5179_ _hd51425174_))
                                               (if (gx#stx-null? _tl51435176_)
                                                   (if (gx#identifier?
                                                        _hd5169_)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-syntax)
                                                             (cons _hd5169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr5179_ '())))
               (_E51345149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E51345149_)))))
                                         (_E51345149_)))))
                               (_E51345149_))))
                       (_E51345149_)))))
            (let () (_E51335181_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx5077_)
      (let ((_e50785091_ _stx5077_))
        (let ((_E50805095_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e50785091_))))
          (let ((_E50795127_
                 (lambda ()
                   (if (gx#stx-pair? _e50785091_)
                       (let ((_e50815099_ (gx#syntax-e _e50785091_)))
                         (let ((_hd50825102_ (##car _e50815099_))
                               (_tl50835104_ (##cdr _e50815099_)))
                           (if (gx#stx-pair? _tl50835104_)
                               (let ((_e50845107_ (gx#syntax-e _tl50835104_)))
                                 (let ((_hd50855110_ (##car _e50845107_))
                                       (_tl50865112_ (##cdr _e50845107_)))
                                   (let ((_id5115_ _hd50855110_))
                                     (if (gx#stx-pair? _tl50865112_)
                                         (let ((_e50875117_
                                                (gx#syntax-e _tl50865112_)))
                                           (let ((_hd50885120_
                                                  (##car _e50875117_))
                                                 (_tl50895122_
                                                  (##cdr _e50875117_)))
                                             (let ((_alias-id5125_
                                                    _hd50885120_))
                                               (if (gx#stx-null? _tl50895122_)
                                                   (if (if (gx#identifier?
                                                            _id5115_)
                                                           (gx#identifier?
                                                            _alias-id5125_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-alias)
                                                             (cons _id5115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id5125_ '())))
               (_E50805095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E50805095_)))))
                                         (_E50805095_)))))
                               (_E50805095_))))
                       (_E50805095_)))))
            (let () (_E50795127_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx5034_)
      (let ((_e50355045_ _stx5034_))
        (let ((_E50375049_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e50355045_))))
          (let ((_E50365073_
                 (lambda ()
                   (if (gx#stx-pair? _e50355045_)
                       (let ((_e50385053_ (gx#syntax-e _e50355045_)))
                         (let ((_hd50395056_ (##car _e50385053_))
                               (_tl50405058_ (##cdr _e50385053_)))
                           (if (gx#stx-pair? _tl50405058_)
                               (let ((_e50415061_ (gx#syntax-e _tl50405058_)))
                                 (let ((_hd50425064_ (##car _e50415061_))
                                       (_tl50435066_ (##cdr _e50415061_)))
                                   (let ((_hd5069_ _hd50425064_))
                                     (let ((_body5071_ _tl50435066_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd5069_)
                                               (if (gx#stx-list? _body5071_)
                                                   (not (gx#stx-null?
                                                         _body5071_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map
                                             gx#user-binding-identifier
                                             _hd5069_)
                                            _body5071_)
                                           (_E50375049_))))))
                               (_E50375049_))))
                       (_E50375049_)))))
            (let () (_E50365073_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx4970_)
      (let ((_generate4972_
             (lambda (_clause5002_)
               (let ((_e50035010_ _clause5002_))
                 (let ((_E50055014_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx4970_
                           _clause5002_))))
                   (let ((_E50045030_
                          (lambda ()
                            (if (gx#stx-pair? _e50035010_)
                                (let ((_e50065018_ (gx#syntax-e _e50035010_)))
                                  (let ((_hd50075021_ (##car _e50065018_))
                                        (_tl50085023_ (##cdr _e50065018_)))
                                    (let ((_hd5026_ _hd50075021_))
                                      (let ((_body5028_ _tl50085023_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd5026_)
                                                (if (gx#stx-list? _body5028_)
                                                    (not (gx#stx-null?
                                                          _body5028_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map
                                                    gx#user-binding-identifier
                                                    _hd5026_)
                                                   _body5028_)
                                             (gx#stx-source _clause5002_))
                                            (_E50055014_))))))
                                (_E50055014_)))))
                     (let () (_E50045030_))))))))
        (let ((_e49734980_ _stx4970_))
          (let ((_E49754984_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e49734980_))))
            (let ((_E49744998_
                   (lambda ()
                     (if (gx#stx-pair? _e49734980_)
                         (let ((_e49764988_ (gx#syntax-e _e49734980_)))
                           (let ((_hd49774991_ (##car _e49764988_))
                                 (_tl49784993_ (##cdr _e49764988_)))
                             (let ((_clauses4996_ _tl49784993_))
                               (if (gx#stx-list? _clauses4996_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map _generate4972_ _clauses4996_))
                                   (_E49754984_)))))
                         (_E49754984_)))))
              (let () (_E49744998_))))))))
  (define gx#macro-expand-let-values
    (let ((_opt-lambda48694960_
           (lambda (_stx4871_ _form4872_)
             (let ((_generate4874_
                    (lambda (_bind4917_)
                      (let ((_e49184928_ _bind4917_))
                        (let ((_E49204932_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; malformed binding"
                                  _stx4871_
                                  _bind4917_))))
                          (let ((_E49194956_
                                 (lambda ()
                                   (if (gx#stx-pair? _e49184928_)
                                       (let ((_e49214936_
                                              (gx#syntax-e _e49184928_)))
                                         (let ((_hd49224939_
                                                (##car _e49214936_))
                                               (_tl49234941_
                                                (##cdr _e49214936_)))
                                           (let ((_ids4944_ _hd49224939_))
                                             (if (gx#stx-pair? _tl49234941_)
                                                 (let ((_e49244946_
                                                        (gx#syntax-e
                                                         _tl49234941_)))
                                                   (let ((_hd49254949_
                                                          (##car _e49244946_))
                                                         (_tl49264951_
                                                          (##cdr _e49244946_)))
                                                     (let ((_expr4954_
                                                            _hd49254949_))
                                                       (if (gx#stx-null?
                                                            _tl49264951_)
                                                           (if (gx#stx-andmap
                                                                gx#identifier?
                                                                _ids4944_)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#user-binding-identifier
                              _ids4944_)
                             (cons _expr4954_ '()))
                       (_E49204932_))
                   (_E49204932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E49204932_)))))
                                       (_E49204932_)))))
                            (let () (_E49194956_))))))))
               (let ((_e48754885_ _stx4871_))
                 (let ((_E48774889_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e48754885_))))
                   (let ((_E48764913_
                          (lambda ()
                            (if (gx#stx-pair? _e48754885_)
                                (let ((_e48784893_ (gx#syntax-e _e48754885_)))
                                  (let ((_hd48794896_ (##car _e48784893_))
                                        (_tl48804898_ (##cdr _e48784893_)))
                                    (if (gx#stx-pair? _tl48804898_)
                                        (let ((_e48814901_
                                               (gx#syntax-e _tl48804898_)))
                                          (let ((_hd48824904_
                                                 (##car _e48814901_))
                                                (_tl48834906_
                                                 (##cdr _e48814901_)))
                                            (let ((_hd4909_ _hd48824904_))
                                              (let ((_body4911_ _tl48834906_))
                                                (if (if (gx#stx-list? _hd4909_)
                                                        (if (gx#stx-list?
                                                             _body4911_)
                                                            (not (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4911_))
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-cons*
                                                     _form4872_
                                                     (gx#stx-map
                                                      _generate4874_
                                                      _hd4909_)
                                                     _body4911_)
                                                    (_E48774889_))))))
                                        (_E48774889_))))
                                (_E48774889_)))))
                     (let () (_E48764913_)))))))))
      (lambda _g12542_
        (let ((_g12541_ (length _g12542_)))
          (cond ((fx= _g12541_ 1)
                 (apply (lambda (_stx4963_)
                          (let ((_form4965_ '%#let-values))
                            (_opt-lambda48694960_ _stx4963_ _form4965_)))
                        _g12542_))
                ((fx= _g12541_ 2)
                 (apply (lambda (_stx4967_ _form4968_)
                          (_opt-lambda48694960_ _stx4967_ _form4968_))
                        _g12542_))
                (else (error "No clause matching arguments" _g12542_)))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx4868_)
      (gx#macro-expand-let-values _stx4868_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx4866_)
      (gx#macro-expand-let-values _stx4866_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx4757_)
      (let ((_e47584784_ _stx4757_))
        (let ((_E47704788_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e47584784_))))
          (let ((_E47604830_
                 (lambda ()
                   (if (gx#stx-pair? _e47584784_)
                       (let ((_e47714792_ (gx#syntax-e _e47584784_)))
                         (let ((_hd47724795_ (##car _e47714792_))
                               (_tl47734797_ (##cdr _e47714792_)))
                           (if (gx#stx-pair? _tl47734797_)
                               (let ((_e47744800_ (gx#syntax-e _tl47734797_)))
                                 (let ((_hd47754803_ (##car _e47744800_))
                                       (_tl47764805_ (##cdr _e47744800_)))
                                   (let ((_test4808_ _hd47754803_))
                                     (if (gx#stx-pair? _tl47764805_)
                                         (let ((_e47774810_
                                                (gx#syntax-e _tl47764805_)))
                                           (let ((_hd47784813_
                                                  (##car _e47774810_))
                                                 (_tl47794815_
                                                  (##cdr _e47774810_)))
                                             (let ((_K4818_ _hd47784813_))
                                               (if (gx#stx-pair? _tl47794815_)
                                                   (let ((_e47804820_
                                                          (gx#syntax-e
                                                           _tl47794815_)))
                                                     (let ((_hd47814823_
                                                            (##car _e47804820_))
                                                           (_tl47824825_
                                                            (##cdr _e47804820_)))
                                                       (let ((_E4828_ _hd47814823_))
                                                         (if (gx#stx-null?
                                                              _tl47824825_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test4808_ _K4818_ _E4828_)
                         (_E47704788_))
                     (_E47704788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E47704788_)))))
                                         (_E47704788_)))))
                               (_E47704788_))))
                       (_E47704788_)))))
            (let ((_E47594862_
                   (lambda ()
                     (if (gx#stx-pair? _e47584784_)
                         (let ((_e47614834_ (gx#syntax-e _e47584784_)))
                           (let ((_hd47624837_ (##car _e47614834_))
                                 (_tl47634839_ (##cdr _e47614834_)))
                             (if (gx#stx-pair? _tl47634839_)
                                 (let ((_e47644842_
                                        (gx#syntax-e _tl47634839_)))
                                   (let ((_hd47654845_ (##car _e47644842_))
                                         (_tl47664847_ (##cdr _e47644842_)))
                                     (let ((_test4850_ _hd47654845_))
                                       (if (gx#stx-pair? _tl47664847_)
                                           (let ((_e47674852_
                                                  (gx#syntax-e _tl47664847_)))
                                             (let ((_hd47684855_
                                                    (##car _e47674852_))
                                                   (_tl47694857_
                                                    (##cdr _e47674852_)))
                                               (let ((_K4860_ _hd47684855_))
                                                 (if (gx#stx-null?
                                                      _tl47694857_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test4850_
                                                          _K4860_
                                                          '#!void)
                                                         (_E47604830_))
                                                     (_E47604830_)))))
                                           (_E47604830_)))))
                                 (_E47604830_))))
                         (_E47604830_)))))
              (let () (_E47594862_))))))))
  (define gx#free-identifier=?
    (lambda (_xid4745_ _yid4746_)
      (let ((_xe4748_ (gx#resolve-identifier _xid4745_))
            (_ye4749_ (gx#resolve-identifier _yid4746_)))
        (if (if _xe4748_ _ye4749_ '#f)
            (let ((_$e4751_ (eq? _xe4748_ _ye4749_)))
              (if _$e4751_
                  _$e4751_
                  (if (gx#binding? _xe4748_)
                      (if (gx#binding? _ye4749_)
                          (eq? (gx#binding-id _xe4748_)
                               (gx#binding-id _ye4749_))
                          '#f)
                      '#f)))
            (if (let ((_$e4754_ _xe4748_)) (if _$e4754_ _$e4754_ _ye4749_))
                '#f
                (gx#stx-eq? _xid4745_ _yid4746_))))))
  (define gx#bound-identifier=?
    (lambda (_xid4729_ _yid4730_)
      (let ((_context4732_
             (lambda (_e4743_)
               (if (gx#syntax-quote? _e4743_)
                   (gx#syntax-quote-context _e4743_)
                   (gx#current-expander-context)))))
        (let ((_marks4733_
               (lambda (_e4741_)
                 (if (symbol? _e4741_)
                     '()
                     (if (gx#identifier-wrap? _e4741_)
                         (gx#identifier-wrap-marks _e4741_)
                         (gx#syntax-quote-marks _e4741_))))))
          (let ((_unwrap4734_
                 (lambda (_e4739_)
                   (if (symbol? _e4739_)
                       _e4739_
                       (gx#syntax-local-unwrap _e4739_)))))
            (let ((_x4736_ (_unwrap4734_ _xid4729_))
                  (_y4737_ (_unwrap4734_ _yid4730_)))
              (if (gx#stx-eq? _x4736_ _y4737_)
                  (if (eq? (_context4732_ _x4736_) (_context4732_ _y4737_))
                      (andmap eq? (_marks4733_ _x4736_) (_marks4733_ _y4737_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx4727_)
      (if (gx#identifier? _stx4727_) (gx#core-identifier=? _stx4727_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx4725_)
      (if (gx#identifier? _stx4725_)
          (gx#core-identifier=? _stx4725_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x4723_)
      (if (gx#identifier? _x4723_)
          (if (not (gx#underscore? _x4723_)) _x4723_ '#f)
          '#f)))
  (define gx#check-duplicate-identifiers
    (let ((_opt-lambda46674713_
           (lambda (_stx4669_ _where4670_)
             ((letrec ((_lp4672_
                        (lambda (_rest4674_)
                          (let ((_rest46754683_ _rest4674_))
                            (let ((_E46784687_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest46754683_))))
                              (let ((_else46774691_ (lambda () '#t)))
                                (let ((_K46794701_
                                       (lambda (_rest4694_ _hd4695_)
                                         (if (not (gx#identifier? _hd4695_))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad identifier"
                                              _where4670_
                                              _hd4695_)
                                             (if (find (lambda (_g46964698_)
                                                         (gx#bound-identifier=?
                                                          _g46964698_
                                                          _hd4695_))
                                                       _rest4694_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Duplicate identifier"
                                                  _where4670_
                                                  _hd4695_)
                                                 (_lp4672_ _rest4694_))))))
                                  (if (##pair? _rest46754683_)
                                      (let ((_hd46804704_
                                             (##car _rest46754683_))
                                            (_tl46814706_
                                             (##cdr _rest46754683_)))
                                        (let ((_hd4709_ _hd46804704_))
                                          (let ((_rest4711_ _tl46814706_))
                                            (_K46794701_
                                             _rest4711_
                                             _hd4709_))))
                                      (_else46774691_)))))))))
                _lp4672_)
              (gx#syntax->list _stx4669_)))))
      (lambda _g12544_
        (let ((_g12543_ (length _g12544_)))
          (cond ((fx= _g12543_ 1)
                 (apply (lambda (_stx4716_)
                          (let ((_where4718_ _stx4716_))
                            (_opt-lambda46674713_ _stx4716_ _where4718_)))
                        _g12544_))
                ((fx= _g12543_ 2)
                 (apply (lambda (_stx4720_ _where4721_)
                          (_opt-lambda46674713_ _stx4720_ _where4721_))
                        _g12544_))
                (else (error "No clause matching arguments" _g12544_)))))))
  (define gx#core-bind-values?
    (lambda (_stx4661_)
      (gx#stx-andmap
       (lambda (_x4663_)
         (let ((_$e4665_ (gx#identifier? _x4663_)))
           (if _$e4665_ _$e4665_ (gx#stx-false? _x4663_))))
       _stx4661_)))
  (define gx#core-bind-values!
    (let ((_opt-lambda46234632_
           (lambda (_stx4625_ _rebind?4626_ _phi4627_ _ctx4628_)
             (gx#stx-for-each
              (lambda (_id4630_)
                (if (gx#identifier? _id4630_)
                    (gx#core-bind-runtime!
                     _id4630_
                     _rebind?4626_
                     _phi4627_
                     _ctx4628_)
                    '#!void))
              _stx4625_))))
      (lambda _g12546_
        (let ((_g12545_ (length _g12546_)))
          (cond ((fx= _g12545_ 1)
                 (apply (lambda (_stx4635_)
                          (let ((_rebind?4637_ '#f))
                            (let ((_phi4639_ (gx#current-expander-phi)))
                              (let ((_ctx4641_ (gx#current-expander-context)))
                                (_opt-lambda46234632_
                                 _stx4635_
                                 _rebind?4637_
                                 _phi4639_
                                 _ctx4641_)))))
                        _g12546_))
                ((fx= _g12545_ 2)
                 (apply (lambda (_stx4643_ _rebind?4644_)
                          (let ((_phi4646_ (gx#current-expander-phi)))
                            (let ((_ctx4648_ (gx#current-expander-context)))
                              (_opt-lambda46234632_
                               _stx4643_
                               _rebind?4644_
                               _phi4646_
                               _ctx4648_))))
                        _g12546_))
                ((fx= _g12545_ 3)
                 (apply (lambda (_stx4650_ _rebind?4651_ _phi4652_)
                          (let ((_ctx4654_ (gx#current-expander-context)))
                            (_opt-lambda46234632_
                             _stx4650_
                             _rebind?4651_
                             _phi4652_
                             _ctx4654_)))
                        _g12546_))
                ((fx= _g12545_ 4)
                 (apply (lambda (_stx4656_ _rebind?4657_ _phi4658_ _ctx4659_)
                          (_opt-lambda46234632_
                           _stx4656_
                           _rebind?4657_
                           _phi4658_
                           _ctx4659_))
                        _g12546_))
                (else (error "No clause matching arguments" _g12546_)))))))
  (define gx#core-quote-bind-values
    (lambda (_stx4620_)
      (gx#stx-map
       (lambda (_x4622_)
         (if (gx#identifier? _x4622_) (gx#core-quote-syntax _x4622_) '#f))
       _stx4620_)))
  (define gx#core-runtime-ref?
    (lambda (_stx4613_)
      (if (gx#identifier? _stx4613_)
          (let ((_bind4615_ (gx#resolve-identifier _stx4613_)))
            (let ((_$e4617_ (not _bind4615_)))
              (if _$e4617_ _$e4617_ (gx#runtime-binding? _bind4615_))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id4602_ _form4603_)
      (let ((_bind4605_ (gx#resolve-identifier _id4602_)))
        (if (gx#runtime-binding? _bind4605_)
            (gx#core-quote-syntax _id4602_)
            (if (not _bind4605_)
                (if (let ((_$e4607_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e4607_
                          _$e4607_
                          (let ((_$e4610_
                                 (gx#core-context-rebind?
                                  (gx#core-context-top))))
                            (if _$e4610_
                                _$e4610_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id4602_))))))
                    (gx#core-quote-syntax _id4602_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form4603_
                     _id4602_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form4603_
                 _id4602_))))))
  (define gx#core-bind-runtime!
    (let ((_opt-lambda45594573_
           (lambda (_id4561_ _rebind?4562_ _phi4563_ _ctx4564_)
             (let ((_key4566_ (gx#core-identifier-key _id4561_)))
               (let ((_eid4568_
                      (gx#make-binding-id _key4566_ '#f _phi4563_ _ctx4564_)))
                 (let ((_bind4570_
                        (if (gx#module-context? _ctx4564_)
                            (gx#make-module-binding
                             _eid4568_
                             _key4566_
                             _phi4563_
                             _ctx4564_)
                            (if (gx#top-context? _ctx4564_)
                                (gx#make-top-binding
                                 _eid4568_
                                 _key4566_
                                 _phi4563_)
                                (if (gx#local-context? _ctx4564_)
                                    (gx#make-local-binding
                                     _eid4568_
                                     _key4566_
                                     _phi4563_)
                                    (gx#make-runtime-binding
                                     _eid4568_
                                     _key4566_
                                     _phi4563_))))))
                   (let ()
                     (gx#bind-identifier!
                      _id4561_
                      _bind4570_
                      _rebind?4562_
                      _phi4563_
                      _ctx4564_))))))))
      (lambda _g12548_
        (let ((_g12547_ (length _g12548_)))
          (cond ((fx= _g12547_ 1)
                 (apply (lambda (_id4576_)
                          (let ((_rebind?4578_ '#f))
                            (let ((_phi4580_ (gx#current-expander-phi)))
                              (let ((_ctx4582_ (gx#current-expander-context)))
                                (_opt-lambda45594573_
                                 _id4576_
                                 _rebind?4578_
                                 _phi4580_
                                 _ctx4582_)))))
                        _g12548_))
                ((fx= _g12547_ 2)
                 (apply (lambda (_id4584_ _rebind?4585_)
                          (let ((_phi4587_ (gx#current-expander-phi)))
                            (let ((_ctx4589_ (gx#current-expander-context)))
                              (_opt-lambda45594573_
                               _id4584_
                               _rebind?4585_
                               _phi4587_
                               _ctx4589_))))
                        _g12548_))
                ((fx= _g12547_ 3)
                 (apply (lambda (_id4591_ _rebind?4592_ _phi4593_)
                          (let ((_ctx4595_ (gx#current-expander-context)))
                            (_opt-lambda45594573_
                             _id4591_
                             _rebind?4592_
                             _phi4593_
                             _ctx4595_)))
                        _g12548_))
                ((fx= _g12547_ 4)
                 (apply (lambda (_id4597_ _rebind?4598_ _phi4599_ _ctx4600_)
                          (_opt-lambda45594573_
                           _id4597_
                           _rebind?4598_
                           _phi4599_
                           _ctx4600_))
                        _g12548_))
                (else (error "No clause matching arguments" _g12548_)))))))
  (define gx#core-bind-runtime-reference!
    (let ((_opt-lambda45144527_
           (lambda (_id4516_ _eid4517_ _rebind?4518_ _phi4519_ _ctx4520_)
             (let ((_key4522_ (gx#core-identifier-key _id4516_)))
               (let ((_bind4524_
                      (if (gx#module-context? _ctx4520_)
                          (gx#make-module-binding
                           _eid4517_
                           _key4522_
                           _phi4519_
                           _ctx4520_)
                          (if (gx#top-context? _ctx4520_)
                              (gx#make-top-binding
                               _eid4517_
                               _key4522_
                               _phi4519_)
                              (gx#make-runtime-binding
                               _eid4517_
                               _key4522_
                               _phi4519_)))))
                 (let ()
                   (gx#bind-identifier!
                    _id4516_
                    _bind4524_
                    _rebind?4518_
                    _phi4519_
                    _ctx4520_)))))))
      (lambda _g12550_
        (let ((_g12549_ (length _g12550_)))
          (cond ((fx= _g12549_ 2)
                 (apply (lambda (_id4530_ _eid4531_)
                          (let ((_rebind?4533_ '#f))
                            (let ((_phi4535_ (gx#current-expander-phi)))
                              (let ((_ctx4537_ (gx#current-expander-context)))
                                (_opt-lambda45144527_
                                 _id4530_
                                 _eid4531_
                                 _rebind?4533_
                                 _phi4535_
                                 _ctx4537_)))))
                        _g12550_))
                ((fx= _g12549_ 3)
                 (apply (lambda (_id4539_ _eid4540_ _rebind?4541_)
                          (let ((_phi4543_ (gx#current-expander-phi)))
                            (let ((_ctx4545_ (gx#current-expander-context)))
                              (_opt-lambda45144527_
                               _id4539_
                               _eid4540_
                               _rebind?4541_
                               _phi4543_
                               _ctx4545_))))
                        _g12550_))
                ((fx= _g12549_ 4)
                 (apply (lambda (_id4547_ _eid4548_ _rebind?4549_ _phi4550_)
                          (let ((_ctx4552_ (gx#current-expander-context)))
                            (_opt-lambda45144527_
                             _id4547_
                             _eid4548_
                             _rebind?4549_
                             _phi4550_
                             _ctx4552_)))
                        _g12550_))
                ((fx= _g12549_ 5)
                 (apply (lambda (_id4554_
                                 _eid4555_
                                 _rebind?4556_
                                 _phi4557_
                                 _ctx4558_)
                          (_opt-lambda45144527_
                           _id4554_
                           _eid4555_
                           _rebind?4556_
                           _phi4557_
                           _ctx4558_))
                        _g12550_))
                (else (error "No clause matching arguments" _g12550_)))))))
  (define gx#core-bind-extern!
    (let ((_opt-lambda44744482_
           (lambda (_id4476_ _eid4477_ _rebind?4478_ _phi4479_ _ctx4480_)
             (gx#bind-identifier!
              _id4476_
              (gx#make-extern-binding
               _eid4477_
               (gx#core-identifier-key _id4476_)
               _phi4479_)
              _rebind?4478_
              _phi4479_
              _ctx4480_))))
      (lambda _g12552_
        (let ((_g12551_ (length _g12552_)))
          (cond ((fx= _g12551_ 2)
                 (apply (lambda (_id4485_ _eid4486_)
                          (let ((_rebind?4488_ '#f))
                            (let ((_phi4490_ (gx#current-expander-phi)))
                              (let ((_ctx4492_ (gx#current-expander-context)))
                                (_opt-lambda44744482_
                                 _id4485_
                                 _eid4486_
                                 _rebind?4488_
                                 _phi4490_
                                 _ctx4492_)))))
                        _g12552_))
                ((fx= _g12551_ 3)
                 (apply (lambda (_id4494_ _eid4495_ _rebind?4496_)
                          (let ((_phi4498_ (gx#current-expander-phi)))
                            (let ((_ctx4500_ (gx#current-expander-context)))
                              (_opt-lambda44744482_
                               _id4494_
                               _eid4495_
                               _rebind?4496_
                               _phi4498_
                               _ctx4500_))))
                        _g12552_))
                ((fx= _g12551_ 4)
                 (apply (lambda (_id4502_ _eid4503_ _rebind?4504_ _phi4505_)
                          (let ((_ctx4507_ (gx#current-expander-context)))
                            (_opt-lambda44744482_
                             _id4502_
                             _eid4503_
                             _rebind?4504_
                             _phi4505_
                             _ctx4507_)))
                        _g12552_))
                ((fx= _g12551_ 5)
                 (apply (lambda (_id4509_
                                 _eid4510_
                                 _rebind?4511_
                                 _phi4512_
                                 _ctx4513_)
                          (_opt-lambda44744482_
                           _id4509_
                           _eid4510_
                           _rebind?4511_
                           _phi4512_
                           _ctx4513_))
                        _g12552_))
                (else (error "No clause matching arguments" _g12552_)))))))
  (define gx#core-bind-syntax!
    (let ((_opt-lambda44284442_
           (lambda (_id4430_ _e4431_ _rebind?4432_ _phi4433_ _ctx4434_)
             (gx#bind-identifier!
              _id4430_
              (let ((_key4439_ (gx#core-identifier-key _id4430_))
                    (_e4440_ (if (let ((_$e4436_ (gx#expander? _e4431_)))
                                   (if _$e4436_
                                       _$e4436_
                                       (gx#expander-context? _e4431_)))
                                 _e4431_
                                 (gx#make-user-expander
                                  _e4431_
                                  _ctx4434_
                                  _phi4433_))))
                (gx#make-syntax-binding
                 (gx#make-binding-id _key4439_ '#t _phi4433_ _ctx4434_)
                 _key4439_
                 _phi4433_
                 _e4440_))
              _rebind?4432_
              _phi4433_
              _ctx4434_))))
      (lambda _g12554_
        (let ((_g12553_ (length _g12554_)))
          (cond ((fx= _g12553_ 2)
                 (apply (lambda (_id4445_ _e4446_)
                          (let ((_rebind?4448_ '#f))
                            (let ((_phi4450_ (gx#current-expander-phi)))
                              (let ((_ctx4452_ (gx#current-expander-context)))
                                (_opt-lambda44284442_
                                 _id4445_
                                 _e4446_
                                 _rebind?4448_
                                 _phi4450_
                                 _ctx4452_)))))
                        _g12554_))
                ((fx= _g12553_ 3)
                 (apply (lambda (_id4454_ _e4455_ _rebind?4456_)
                          (let ((_phi4458_ (gx#current-expander-phi)))
                            (let ((_ctx4460_ (gx#current-expander-context)))
                              (_opt-lambda44284442_
                               _id4454_
                               _e4455_
                               _rebind?4456_
                               _phi4458_
                               _ctx4460_))))
                        _g12554_))
                ((fx= _g12553_ 4)
                 (apply (lambda (_id4462_ _e4463_ _rebind?4464_ _phi4465_)
                          (let ((_ctx4467_ (gx#current-expander-context)))
                            (_opt-lambda44284442_
                             _id4462_
                             _e4463_
                             _rebind?4464_
                             _phi4465_
                             _ctx4467_)))
                        _g12554_))
                ((fx= _g12553_ 5)
                 (apply (lambda (_id4469_
                                 _e4470_
                                 _rebind?4471_
                                 _phi4472_
                                 _ctx4473_)
                          (_opt-lambda44284442_
                           _id4469_
                           _e4470_
                           _rebind?4471_
                           _phi4472_
                           _ctx4473_))
                        _g12554_))
                (else (error "No clause matching arguments" _g12554_)))))))
  (define gx#core-bind-root-syntax!
    (let ((_opt-lambda44114417_
           (lambda (_id4413_ _e4414_ _rebind?4415_)
             (gx#core-bind-syntax!
              _id4413_
              _e4414_
              _rebind?4415_
              '0
              (gx#core-context-root)))))
      (lambda _g12556_
        (let ((_g12555_ (length _g12556_)))
          (cond ((fx= _g12555_ 2)
                 (apply (lambda (_id4420_ _e4421_)
                          (let ((_rebind?4423_ '#f))
                            (_opt-lambda44114417_
                             _id4420_
                             _e4421_
                             _rebind?4423_)))
                        _g12556_))
                ((fx= _g12555_ 3)
                 (apply (lambda (_id4425_ _e4426_ _rebind?4427_)
                          (_opt-lambda44114417_
                           _id4425_
                           _e4426_
                           _rebind?4427_))
                        _g12556_))
                (else (error "No clause matching arguments" _g12556_)))))))
  (define gx#core-bind-alias!
    (let ((_opt-lambda43694379_
           (lambda (_id4371_ _alias-id4372_ _rebind?4373_ _phi4374_ _ctx4375_)
             (gx#bind-identifier!
              _id4371_
              (let ((_key4377_ (gx#core-identifier-key _id4371_)))
                (gx#make-alias-binding
                 (gx#make-binding-id _key4377_ '#t _phi4374_ _ctx4375_)
                 _key4377_
                 _phi4374_
                 _alias-id4372_))
              _rebind?4373_
              _phi4374_
              _ctx4375_))))
      (lambda _g12558_
        (let ((_g12557_ (length _g12558_)))
          (cond ((fx= _g12557_ 2)
                 (apply (lambda (_id4382_ _alias-id4383_)
                          (let ((_rebind?4385_ '#f))
                            (let ((_phi4387_ (gx#current-expander-phi)))
                              (let ((_ctx4389_ (gx#current-expander-context)))
                                (_opt-lambda43694379_
                                 _id4382_
                                 _alias-id4383_
                                 _rebind?4385_
                                 _phi4387_
                                 _ctx4389_)))))
                        _g12558_))
                ((fx= _g12557_ 3)
                 (apply (lambda (_id4391_ _alias-id4392_ _rebind?4393_)
                          (let ((_phi4395_ (gx#current-expander-phi)))
                            (let ((_ctx4397_ (gx#current-expander-context)))
                              (_opt-lambda43694379_
                               _id4391_
                               _alias-id4392_
                               _rebind?4393_
                               _phi4395_
                               _ctx4397_))))
                        _g12558_))
                ((fx= _g12557_ 4)
                 (apply (lambda (_id4399_
                                 _alias-id4400_
                                 _rebind?4401_
                                 _phi4402_)
                          (let ((_ctx4404_ (gx#current-expander-context)))
                            (_opt-lambda43694379_
                             _id4399_
                             _alias-id4400_
                             _rebind?4401_
                             _phi4402_
                             _ctx4404_)))
                        _g12558_))
                ((fx= _g12557_ 5)
                 (apply (lambda (_id4406_
                                 _alias-id4407_
                                 _rebind?4408_
                                 _phi4409_
                                 _ctx4410_)
                          (_opt-lambda43694379_
                           _id4406_
                           _alias-id4407_
                           _rebind?4408_
                           _phi4409_
                           _ctx4410_))
                        _g12558_))
                (else (error "No clause matching arguments" _g12558_)))))))
  (define gx#make-binding-id
    (let ((_opt-lambda43264341_
           (lambda (_key4328_ _syntax?4329_ _phi4330_ _ctx4331_)
             (if (uninterned-symbol? _key4328_)
                 (gensym 'L)
                 (if (pair? _key4328_)
                     (gensym (car _key4328_))
                     (if (gx#top-context? _ctx4331_)
                         (let ((_ns4333_
                                (gx#core-context-namespace _ctx4331_)))
                           (if (if (fxzero? _phi4330_) (not _syntax?4329_) '#f)
                               (if _ns4333_
                                   (make-symbol _ns4333_ '"#" _key4328_)
                                   _key4328_)
                               (if _syntax?4329_
                                   (make-symbol
                                    (let ((_$e4335_ _ns4333_))
                                      (if _$e4335_ _$e4335_ '""))
                                    '"[:"
                                    (number->string _phi4330_)
                                    '":]#"
                                    _key4328_)
                                   (make-symbol
                                    (let ((_$e4338_ _ns4333_))
                                      (if _$e4338_ _$e4338_ '""))
                                    '"["
                                    (number->string _phi4330_)
                                    '"]#"
                                    _key4328_))))
                         (gensym _key4328_)))))))
      (lambda _g12560_
        (let ((_g12559_ (length _g12560_)))
          (cond ((fx= _g12559_ 1)
                 (apply (lambda (_key4344_)
                          (let ((_syntax?4346_ '#f))
                            (let ((_phi4348_ (gx#current-expander-phi)))
                              (let ((_ctx4350_ (gx#current-expander-context)))
                                (_opt-lambda43264341_
                                 _key4344_
                                 _syntax?4346_
                                 _phi4348_
                                 _ctx4350_)))))
                        _g12560_))
                ((fx= _g12559_ 2)
                 (apply (lambda (_key4352_ _syntax?4353_)
                          (let ((_phi4355_ (gx#current-expander-phi)))
                            (let ((_ctx4357_ (gx#current-expander-context)))
                              (_opt-lambda43264341_
                               _key4352_
                               _syntax?4353_
                               _phi4355_
                               _ctx4357_))))
                        _g12560_))
                ((fx= _g12559_ 3)
                 (apply (lambda (_key4359_ _syntax?4360_ _phi4361_)
                          (let ((_ctx4363_ (gx#current-expander-context)))
                            (_opt-lambda43264341_
                             _key4359_
                             _syntax?4360_
                             _phi4361_
                             _ctx4363_)))
                        _g12560_))
                ((fx= _g12559_ 4)
                 (apply (lambda (_key4365_ _syntax?4366_ _phi4367_ _ctx4368_)
                          (_opt-lambda43264341_
                           _key4365_
                           _syntax?4366_
                           _phi4367_
                           _ctx4368_))
                        _g12560_))
                (else (error "No clause matching arguments" _g12560_))))))))
