(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#core-expand-begin%
    (lambda (_stx35342_)
      (let ((_expand-special35344_
             (lambda (_hd35346_ _K35347_ _rest35348_ _r35349_)
               (_K35347_
                _rest35348_
                (cons (gx#core-expand-top _hd35346_) _r35349_)))))
        (gx#core-expand-block _stx35342_ _expand-special35344_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx35095_)
      (let ((_expand-special35097_
             (lambda (_hd35217_ _K35218_ _rest35219_ _r35220_)
               (let ((_K35224_
                      (lambda (_e35222_)
                        (_K35218_ _rest35219_ (cons _e35222_ _r35220_)))))
                 (let ((_e3522535254_ _hd35217_))
                   (let ((_E3524935258_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e3522535254_))))
                     (let ((_E3524535270_
                            (lambda ()
                              (if (gx#stx-pair? _e3522535254_)
                                  (let ((_e3525035262_
                                         (gx#syntax-e _e3522535254_)))
                                    (let ((_hd3525135265_
                                           (##car _e3525035262_))
                                          (_tl3525235267_
                                           (##cdr _e3525035262_)))
                                      (if (if (gx#identifier? _hd3525135265_)
                                              (gx#core-identifier=?
                                               _hd3525135265_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K35224_
                                               (gx#core-expand-define-runtime%
                                                _hd35217_))
                                              (_E3524935258_))
                                          (_E3524935258_))))
                                  (_E3524935258_)))))
                       (let ((_E3524135282_
                              (lambda ()
                                (if (gx#stx-pair? _e3522535254_)
                                    (let ((_e3524635274_
                                           (gx#syntax-e _e3522535254_)))
                                      (let ((_hd3524735277_
                                             (##car _e3524635274_))
                                            (_tl3524835279_
                                             (##cdr _e3524635274_)))
                                        (if (if (gx#identifier? _hd3524735277_)
                                                (gx#core-identifier=?
                                                 _hd3524735277_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K35224_
                                                 (gx#core-expand-define-alias%
                                                  _hd35217_))
                                                (_E3524535270_))
                                            (_E3524535270_))))
                                    (_E3524535270_)))))
                         (let ((_E3523135294_
                                (lambda ()
                                  (if (gx#stx-pair? _e3522535254_)
                                      (let ((_e3524235286_
                                             (gx#syntax-e _e3522535254_)))
                                        (let ((_hd3524335289_
                                               (##car _e3524235286_))
                                              (_tl3524435291_
                                               (##cdr _e3524235286_)))
                                          (if (if (gx#identifier?
                                                   _hd3524335289_)
                                                  (gx#core-identifier=?
                                                   _hd3524335289_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K35224_
                                                   (gx#core-expand-define-syntax%
                                                    _hd35217_))
                                                  (_E3524135282_))
                                              (_E3524135282_))))
                                      (_E3524135282_)))))
                           (let ((_E3522735326_
                                  (lambda ()
                                    (if (gx#stx-pair? _e3522535254_)
                                        (let ((_e3523235298_
                                               (gx#syntax-e _e3522535254_)))
                                          (let ((_hd3523335301_
                                                 (##car _e3523235298_))
                                                (_tl3523435303_
                                                 (##cdr _e3523235298_)))
                                            (if (if (gx#identifier?
                                                     _hd3523335301_)
                                                    (gx#core-identifier=?
                                                     _hd3523335301_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair?
                                                     _tl3523435303_)
                                                    (let ((_e3523535306_
                                                           (gx#syntax-e
                                                            _tl3523435303_)))
                                                      (let ((_hd3523635309_
                                                             (##car _e3523535306_))
                                                            (_tl3523735311_
                                                             (##cdr _e3523535306_)))
                                                        (let ((_hd-bind35314_
                                                               _hd3523635309_))
                                                          (if (gx#stx-pair?
                                                               _tl3523735311_)
                                                              (let ((_e3523835316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3523735311_)))
                        (let ((_hd3523935319_ (##car _e3523835316_))
                              (_tl3524035321_ (##cdr _e3523835316_)))
                          (let ((_expr35324_ _hd3523935319_))
                            (if (gx#stx-null? _tl3524035321_)
                                (if (gx#core-bind-values? _hd-bind35314_)
                                    (begin
                                      (gx#core-bind-values! _hd-bind35314_)
                                      (_K35224_ _hd35217_))
                                    (_E3523135294_))
                                (_E3523135294_)))))
                      (_E3523135294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3523135294_))
                                                (_E3523135294_))))
                                        (_E3523135294_)))))
                             (let ((_E3522635338_
                                    (lambda ()
                                      (if (gx#stx-pair? _e3522535254_)
                                          (let ((_e3522835330_
                                                 (gx#syntax-e _e3522535254_)))
                                            (let ((_hd3522935333_
                                                   (##car _e3522835330_))
                                                  (_tl3523035335_
                                                   (##cdr _e3522835330_)))
                                              (if (if (gx#identifier?
                                                       _hd3522935333_)
                                                      (gx#core-identifier=?
                                                       _hd3522935333_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K35224_
                                                       (gx#core-expand-begin-syntax%
                                                        _hd35217_))
                                                      (_E3522735326_))
                                                  (_E3522735326_))))
                                          (_E3522735326_)))))
                               (let () (_E3522635338_)))))))))))))
        (let ((_eval-body35098_
               (lambda (_rbody35106_)
                 ((letrec ((_lp35108_
                            (lambda (_rest35110_ _body35111_ _ebody35112_)
                              (let ((_rest3511335121_ _rest35110_))
                                (let ((_E3511635125_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest3511335121_))))
                                  (let ((_else3511535129_
                                         (lambda ()
                                           (values _body35111_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody35112_)
                                                     (gx#stx-source
                                                      _stx35095_)))))))
                                    (let ((_K3511735205_
                                           (lambda (_rest35132_ _hd35133_)
                                             (let ((_e3513435151_ _hd35133_))
                                               (let ((_E3514635155_
                                                      (lambda ()
                                                        (_lp35108_
                                                         _rest35132_
                                                         (cons _hd35133_
                                                               _body35111_)
                                                         (cons _hd35133_
                                                               _ebody35112_)))))
                                                 (let ((_E3513635167_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e3513435151_)
                                                              (let ((_e3514735159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e3513435151_)))
                        (let ((_hd3514835162_ (##car _e3514735159_))
                              (_tl3514935164_ (##cdr _e3514735159_)))
                          (if (if (gx#identifier? _hd3514835162_)
                                  (gx#core-identifier=?
                                   _hd3514835162_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp35108_
                                   _rest35132_
                                   (cons _hd35133_ _body35111_)
                                   _ebody35112_)
                                  (_E3514635155_))
                              (_E3514635155_))))
                      (_E3514635155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E3513535201_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e3513435151_)
                        (let ((_e3513735171_ (gx#syntax-e _e3513435151_)))
                          (let ((_hd3513835174_ (##car _e3513735171_))
                                (_tl3513935176_ (##cdr _e3513735171_)))
                            (if (if (gx#identifier? _hd3513835174_)
                                    (gx#core-identifier=?
                                     _hd3513835174_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl3513935176_)
                                    (let ((_e3514035179_
                                           (gx#syntax-e _tl3513935176_)))
                                      (let ((_hd3514135182_
                                             (##car _e3514035179_))
                                            (_tl3514235184_
                                             (##cdr _e3514035179_)))
                                        (let ((_hd-bind35187_ _hd3514135182_))
                                          (if (gx#stx-pair? _tl3514235184_)
                                              (let ((_e3514335189_
                                                     (gx#syntax-e
                                                      _tl3514235184_)))
                                                (let ((_hd3514435192_
                                                       (##car _e3514335189_))
                                                      (_tl3514535194_
                                                       (##cdr _e3514335189_)))
                                                  (let ((_expr35197_
                                                         _hd3514435192_))
                                                    (if (gx#stx-null?
                                                         _tl3514535194_)
                                                        (if '#t
                                                            (let ((_ehd35199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax
                            (cons (gx#core-quote-syntax '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind35187_)
                                        (cons (gx#core-expand-expression
                                               _expr35197_)
                                              '())))
                            (gx#stx-source _hd35133_))))
                      (_lp35108_
                       _rest35132_
                       (cons _ehd35199_ _body35111_)
                       (cons _ehd35199_ _ebody35112_)))
                    (_E3513635167_))
                (_E3513635167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E3513635167_)))))
                                    (_E3513635167_))
                                (_E3513635167_))))
                        (_E3513635167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E3513535201_)))))))))
                                      (if (##pair? _rest3511335121_)
                                          (let ((_hd3511835208_
                                                 (##car _rest3511335121_))
                                                (_tl3511935210_
                                                 (##cdr _rest3511335121_)))
                                            (let ((_hd35213_ _hd3511835208_))
                                              (let ((_rest35215_
                                                     _tl3511935210_))
                                                (_K3511735205_
                                                 _rest35215_
                                                 _hd35213_))))
                                          (_else3511535129_)))))))))
                    _lp35108_)
                  _rbody35106_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody35101_
                    (gx#core-expand-block
                     _stx35095_
                     _expand-special35097_
                     '#f)))
               (let ((_g40585_ (_eval-body35098_ _rbody35101_)))
                 (begin
                   (let ((_g40586_ (values-count _g40585_)))
                     (if (not (fx= _g40586_ 2))
                         (error "Context expects 2 values" _g40586_)))
                   (let ((_expanded-body35103_ (values-ref _g40585_ 0))
                         (_value35104_ (values-ref _g40585_ 1)))
                     (gx#core-quote-syntax
                      (if (gx#module-context? (gx#current-expander-context))
                          (gx#core-cons '%#begin-syntax _expanded-body35103_)
                          (cons (gx#core-quote-syntax '%#quote)
                                (cons _value35104_ '())))
                      (gx#stx-source _stx35095_)))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi)))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx35065_)
      (let ((_e3506635073_ _stx35065_))
        (let ((_E3506835077_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3506635073_))))
          (let ((_E3506735091_
                 (lambda ()
                   (if (gx#stx-pair? _e3506635073_)
                       (let ((_e3506935081_ (gx#syntax-e _e3506635073_)))
                         (let ((_hd3507035084_ (##car _e3506935081_))
                               (_tl3507135086_ (##cdr _e3506935081_)))
                           (let ((_body35089_ _tl3507135086_))
                             (if (gx#stx-list? _body35089_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons '%#begin-foreign _body35089_)
                                  (gx#stx-source _stx35065_))
                                 (_E3506835077_)))))
                       (_E3506835077_)))))
            (let () (_E3506735091_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx35053_)
      (let ((_e3505435057_ _stx35053_))
        (let ((_E3505535061_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3505435057_))))
          (let () (_E3505535061_))))))
  (define gx#core-expand-local-block
    (lambda (_stx34777_ _body34778_)
      (let ((_expand-internal-special34782_
             (lambda (_hd34939_ _K34940_ _rest34941_ _r34942_)
               (let ((_e3494334968_ _hd34939_))
                 (let ((_E3496334972_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e3494334968_))))
                   (let ((_E3495934984_
                          (lambda ()
                            (if (gx#stx-pair? _e3494334968_)
                                (let ((_e3496434976_
                                       (gx#syntax-e _e3494334968_)))
                                  (let ((_hd3496534979_ (##car _e3496434976_))
                                        (_tl3496634981_ (##cdr _e3496434976_)))
                                    (if (if (gx#identifier? _hd3496534979_)
                                            (gx#core-identifier=?
                                             _hd3496534979_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K34940_
                                             _rest34941_
                                             (cons (gx#core-expand-declare%
                                                    _hd34939_)
                                                   _r34942_))
                                            (_E3496334972_))
                                        (_E3496334972_))))
                                (_E3496334972_)))))
                     (let ((_E3495534996_
                            (lambda ()
                              (if (gx#stx-pair? _e3494334968_)
                                  (let ((_e3496034988_
                                         (gx#syntax-e _e3494334968_)))
                                    (let ((_hd3496134991_
                                           (##car _e3496034988_))
                                          (_tl3496234993_
                                           (##cdr _e3496034988_)))
                                      (if (if (gx#identifier? _hd3496134991_)
                                              (gx#core-identifier=?
                                               _hd3496134991_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd34939_)
                                                (_K34940_
                                                 _rest34941_
                                                 _r34942_))
                                              (_E3495934984_))
                                          (_E3495934984_))))
                                  (_E3495934984_)))))
                       (let ((_E3494535008_
                              (lambda ()
                                (if (gx#stx-pair? _e3494334968_)
                                    (let ((_e3495635000_
                                           (gx#syntax-e _e3494334968_)))
                                      (let ((_hd3495735003_
                                             (##car _e3495635000_))
                                            (_tl3495835005_
                                             (##cdr _e3495635000_)))
                                        (if (if (gx#identifier? _hd3495735003_)
                                                (gx#core-identifier=?
                                                 _hd3495735003_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd34939_)
                                                  (_K34940_
                                                   _rest34941_
                                                   _r34942_))
                                                (_E3495534996_))
                                            (_E3495534996_))))
                                    (_E3495534996_)))))
                         (let ((_E3494435040_
                                (lambda ()
                                  (if (gx#stx-pair? _e3494334968_)
                                      (let ((_e3494635012_
                                             (gx#syntax-e _e3494334968_)))
                                        (let ((_hd3494735015_
                                               (##car _e3494635012_))
                                              (_tl3494835017_
                                               (##cdr _e3494635012_)))
                                          (if (if (gx#identifier?
                                                   _hd3494735015_)
                                                  (gx#core-identifier=?
                                                   _hd3494735015_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl3494835017_)
                                                  (let ((_e3494935020_
                                                         (gx#syntax-e
                                                          _tl3494835017_)))
                                                    (let ((_hd3495035023_
                                                           (##car _e3494935020_))
                                                          (_tl3495135025_
                                                           (##cdr _e3494935020_)))
                                                      (let ((_hd-bind35028_
                                                             _hd3495035023_))
                                                        (if (gx#stx-pair?
                                                             _tl3495135025_)
                                                            (let ((_e3495235030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3495135025_)))
                      (let ((_hd3495335033_ (##car _e3495235030_))
                            (_tl3495435035_ (##cdr _e3495235030_)))
                        (let ((_expr35038_ _hd3495335033_))
                          (if (gx#stx-null? _tl3495435035_)
                              (if (gx#core-bind-values? _hd-bind35028_)
                                  (begin
                                    (gx#core-bind-values! _hd-bind35028_)
                                    (_K34940_
                                     _rest34941_
                                     (cons _hd34939_ _r34942_)))
                                  (_E3494535008_))
                              (_E3494535008_)))))
                    (_E3494535008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E3494535008_))
                                              (_E3494535008_))))
                                      (_E3494535008_)))))
                           (let () (_E3494435040_)))))))))))
        (let ((_wrap-internal34783_
               (lambda (_rbody34785_)
                 ((letrec ((_lp34787_
                            (lambda (_rest34789_
                                     _decls34790_
                                     _bind34791_
                                     _body34792_)
                              (let ((_e3479334800_ _rest34789_))
                                (let ((_E3479534849_
                                       (lambda ()
                                         (let ((_body34844_
                                                (let ((_body3480334813_
                                                       _body34792_))
                                                  (let ((_E3480734817_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body3480334813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else3480634821_
                                                           (lambda ()
                                                             (gx#core-quote-syntax
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body34792_)
                                                              (gx#stx-source
                                                               _stx34777_)))))
                                                      (let ((_try-match3480534837_
                                                             (lambda ()
                                                               (let ((_K3480834827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr34825_) _expr34825_)))
                         (if (##pair? _body3480334813_)
                             (let ((_hd3480934830_ (##car _body3480334813_))
                                   (_tl3481034832_ (##cdr _body3480334813_)))
                               (let ((_expr34835_ _hd3480934830_))
                                 (if (##null? _tl3481034832_)
                                     (_K3480834827_ _expr34835_)
                                     (_else3480634821_))))
                             (_else3480634821_))))))
                (let ((_K3481134841_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx34777_))))
                  (if (##null? _body3480334813_)
                      (_K3481134841_)
                      (_try-match3480534837_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body34846_
                                                  (if (null? _bind34791_)
                                                      _body34844_
                                                      (gx#core-quote-syntax
                                                       (cons (gx#core-quote-syntax
                                                              '%#letrec*-values)
                                                             (cons _bind34791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body34844_ '())))
               (gx#stx-source _stx34777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls34790_)
                                                   _body34846_
                                                   (gx#core-quote-syntax
                                                    (cons (gx#core-quote-syntax
                                                           '%#begin-annotation)
                                                          (cons _decls34790_
                                                                (cons _body34846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx34777_)))))))))
                                  (let ((_E3479434935_
                                         (lambda ()
                                           (if (gx#stx-pair? _e3479334800_)
                                               (let ((_e3479634853_
                                                      (gx#syntax-e
                                                       _e3479334800_)))
                                                 (let ((_hd3479734856_
                                                        (##car _e3479634853_))
                                                       (_tl3479834858_
                                                        (##cdr _e3479634853_)))
                                                   (let ((_hd34861_
                                                          _hd3479734856_))
                                                     (let ((_rest34863_
                                                            _tl3479834858_))
                                                       (if '#t
                                                           (let ((_e3486434881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd34861_))
                     (let ((_E3487634885_
                            (lambda ()
                              (if (null? _bind34791_)
                                  (_lp34787_
                                   _rest34863_
                                   _decls34790_
                                   _bind34791_
                                   (cons _hd34861_ _body34792_))
                                  (_lp34787_
                                   _rest34863_
                                   _decls34790_
                                   (cons (cons '#f (cons _hd34861_ '()))
                                         _bind34791_)
                                   _body34792_)))))
                       (let ((_E3486634899_
                              (lambda ()
                                (if (gx#stx-pair? _e3486434881_)
                                    (let ((_e3487734889_
                                           (gx#syntax-e _e3486434881_)))
                                      (let ((_hd3487834892_
                                             (##car _e3487734889_))
                                            (_tl3487934894_
                                             (##cdr _e3487734889_)))
                                        (if (if (gx#identifier? _hd3487834892_)
                                                (gx#core-identifier=?
                                                 _hd3487834892_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls34897_
                                                   _tl3487934894_))
                                              (if '#t
                                                  (_lp34787_
                                                   _rest34863_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls34790_
                                                    _xdecls34897_)
                                                   _bind34791_
                                                   _body34792_)
                                                  (_E3487634885_)))
                                            (_E3487634885_))))
                                    (_E3487634885_)))))
                         (let ((_E3486534931_
                                (lambda ()
                                  (if (gx#stx-pair? _e3486434881_)
                                      (let ((_e3486734903_
                                             (gx#syntax-e _e3486434881_)))
                                        (let ((_hd3486834906_
                                               (##car _e3486734903_))
                                              (_tl3486934908_
                                               (##cdr _e3486734903_)))
                                          (if (if (gx#identifier?
                                                   _hd3486834906_)
                                                  (gx#core-identifier=?
                                                   _hd3486834906_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl3486934908_)
                                                  (let ((_e3487034911_
                                                         (gx#syntax-e
                                                          _tl3486934908_)))
                                                    (let ((_hd3487134914_
                                                           (##car _e3487034911_))
                                                          (_tl3487234916_
                                                           (##cdr _e3487034911_)))
                                                      (let ((_hd-bind34919_
                                                             _hd3487134914_))
                                                        (if (gx#stx-pair?
                                                             _tl3487234916_)
                                                            (let ((_e3487334921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3487234916_)))
                      (let ((_hd3487434924_ (##car _e3487334921_))
                            (_tl3487534926_ (##cdr _e3487334921_)))
                        (let ((_expr34929_ _hd3487434924_))
                          (if (gx#stx-null? _tl3487534926_)
                              (if '#t
                                  (_lp34787_
                                   _rest34863_
                                   _decls34790_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind34919_)
                                               (cons (gx#core-expand-expression
                                                      _expr34929_)
                                                     '()))
                                         _bind34791_)
                                   _body34792_)
                                  (_E3486634899_))
                              (_E3486634899_)))))
                    (_E3486634899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E3486634899_))
                                              (_E3486634899_))))
                                      (_E3486634899_)))))
                           (let () (_E3486534931_))))))
                   (_E3479534849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E3479534849_)))))
                                    (let () (_E3479434935_))))))))
                    _lp34787_)
                  _rbody34785_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal34781_
                 (lambda (_hd35044_ _rest35045_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal34783_
                       (gx#core-expand-block
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd35044_ _rest35045_)
                         (gx#stx-source _stx34777_))
                        _expand-internal-special34782_
                        '#f)))
                    gx#current-expander-context
                    (gx#make-local-context)))))
            (let ((_expand-special34780_
                   (lambda (_hd35048_ _K35049_ _rest35050_ _r35051_)
                     (_K35049_
                      '()
                      (cons (_expand-internal34781_ _hd35048_ _rest35050_)
                            _r35051_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body34778_)
                (gx#stx-source _stx34777_))
               _expand-special34780_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx34715_)
      (let ((_e3471634723_ _stx34715_))
        (let ((_E3471834727_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3471634723_))))
          (let ((_E3471734773_
                 (lambda ()
                   (if (gx#stx-pair? _e3471634723_)
                       (let ((_e3471934731_ (gx#syntax-e _e3471634723_)))
                         (let ((_hd3472034734_ (##car _e3471934731_))
                               (_tl3472134736_ (##cdr _e3471934731_)))
                           (let ((_body34739_ _tl3472134736_))
                             (if (gx#stx-list? _body34739_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map
                                    (lambda (_decl34741_)
                                      (let ((_e3474234749_ _decl34741_))
                                        (let ((_E3474434753_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e3474234749_))))
                                          (let ((_E3474334769_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e3474234749_)
                                                       (let ((_e3474534757_
                                                              (gx#syntax-e
                                                               _e3474234749_)))
                                                         (let ((_hd3474634760_
                                                                (##car _e3474534757_))
                                                               (_tl3474734762_
                                                                (##cdr _e3474534757_)))
                                                           (let ((_head34765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3474634760_))
                     (let ((_args34767_ _tl3474734762_))
                       (if (gx#stx-list? _args34767_)
                           (gx#stx-map gx#core-quote-syntax _decl34741_)
                           (_E3474434753_))))))
               (_E3474434753_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E3474334769_))))))
                                    _body34739_))
                                  (gx#stx-source _stx34715_))
                                 (_E3471834727_)))))
                       (_E3471834727_)))))
            (let () (_E3471734773_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx34599_)
      (let ((_e3460034607_ _stx34599_))
        (let ((_E3460234611_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3460034607_))))
          (let ((_E3460134711_
                 (lambda ()
                   (if (gx#stx-pair? _e3460034607_)
                       (let ((_e3460334615_ (gx#syntax-e _e3460034607_)))
                         (let ((_hd3460434618_ (##car _e3460334615_))
                               (_tl3460534620_ (##cdr _e3460334615_)))
                           (let ((_body34623_ _tl3460534620_))
                             (if (gx#stx-list? _body34623_)
                                 (begin
                                   (gx#stx-for-each
                                    (lambda (_bind34625_)
                                      (let ((_e3462634636_ _bind34625_))
                                        (let ((_E3462834640_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e3462634636_))))
                                          (let ((_E3462734664_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e3462634636_)
                                                       (let ((_e3462934644_
                                                              (gx#syntax-e
                                                               _e3462634636_)))
                                                         (let ((_hd3463034647_
                                                                (##car _e3462934644_))
                                                               (_tl3463134649_
                                                                (##cdr _e3462934644_)))
                                                           (let ((_id34652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3463034647_))
                     (if (gx#stx-pair? _tl3463134649_)
                         (let ((_e3463234654_ (gx#syntax-e _tl3463134649_)))
                           (let ((_hd3463334657_ (##car _e3463234654_))
                                 (_tl3463434659_ (##cdr _e3463234654_)))
                             (let ((_eid34662_ _hd3463334657_))
                               (if (gx#stx-null? _tl3463434659_)
                                   (if (if (gx#identifier? _id34652_)
                                           (gx#identifier? _eid34662_)
                                           '#f)
                                       (gx#core-bind-extern!
                                        _id34652_
                                        (gx#stx-e _eid34662_))
                                       (_E3462834640_))
                                   (_E3462834640_)))))
                         (_E3462834640_)))))
               (_E3462834640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E3462734664_))))))
                                    _body34623_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map
                                      (lambda (_bind34668_)
                                        (let ((_e3466934679_ _bind34668_))
                                          (let ((_E3467134683_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e3466934679_))))
                                            (let ((_E3467034707_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e3466934679_)
                                                         (let ((_e3467234687_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e3466934679_)))
                   (let ((_hd3467334690_ (##car _e3467234687_))
                         (_tl3467434692_ (##cdr _e3467234687_)))
                     (let ((_id34695_ _hd3467334690_))
                       (if (gx#stx-pair? _tl3467434692_)
                           (let ((_e3467534697_ (gx#syntax-e _tl3467434692_)))
                             (let ((_hd3467634700_ (##car _e3467534697_))
                                   (_tl3467734702_ (##cdr _e3467534697_)))
                               (let ((_eid34705_ _hd3467634700_))
                                 (if (gx#stx-null? _tl3467734702_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax _id34695_)
                                               (cons (gx#stx-e _eid34705_)
                                                     '()))
                                         (_E3467134683_))
                                     (_E3467134683_)))))
                           (_E3467134683_)))))
                 (_E3467134683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E3467034707_))))))
                                      _body34623_))
                                    (gx#stx-source _stx34599_)))
                                 (_E3460234611_)))))
                       (_E3460234611_)))))
            (let () (_E3460134711_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx34545_)
      (let ((_e3454634559_ _stx34545_))
        (let ((_E3454834563_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3454634559_))))
          (let ((_E3454734595_
                 (lambda ()
                   (if (gx#stx-pair? _e3454634559_)
                       (let ((_e3454934567_ (gx#syntax-e _e3454634559_)))
                         (let ((_hd3455034570_ (##car _e3454934567_))
                               (_tl3455134572_ (##cdr _e3454934567_)))
                           (if (gx#stx-pair? _tl3455134572_)
                               (let ((_e3455234575_
                                      (gx#syntax-e _tl3455134572_)))
                                 (let ((_hd3455334578_ (##car _e3455234575_))
                                       (_tl3455434580_ (##cdr _e3455234575_)))
                                   (let ((_hd34583_ _hd3455334578_))
                                     (if (gx#stx-pair? _tl3455434580_)
                                         (let ((_e3455534585_
                                                (gx#syntax-e _tl3455434580_)))
                                           (let ((_hd3455634588_
                                                  (##car _e3455534585_))
                                                 (_tl3455734590_
                                                  (##cdr _e3455534585_)))
                                             (let ((_expr34593_
                                                    _hd3455634588_))
                                               (if (gx#stx-null?
                                                    _tl3455734590_)
                                                   (if (gx#core-bind-values?
                                                        _hd34583_)
                                                       (begin
                                                         (gx#core-bind-values!
                                                          _hd34583_)
                                                         (gx#core-quote-syntax
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd34583_)
                              (cons (gx#core-expand-expression _expr34593_)
                                    '())))
                  (gx#stx-source _stx34545_)))
               (_E3454834563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3454834563_)))))
                                         (_E3454834563_)))))
                               (_E3454834563_))))
                       (_E3454834563_)))))
            (let () (_E3454734595_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx34491_)
      (let ((_e3449234505_ _stx34491_))
        (let ((_E3449434509_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3449234505_))))
          (let ((_E3449334541_
                 (lambda ()
                   (if (gx#stx-pair? _e3449234505_)
                       (let ((_e3449534513_ (gx#syntax-e _e3449234505_)))
                         (let ((_hd3449634516_ (##car _e3449534513_))
                               (_tl3449734518_ (##cdr _e3449534513_)))
                           (if (gx#stx-pair? _tl3449734518_)
                               (let ((_e3449834521_
                                      (gx#syntax-e _tl3449734518_)))
                                 (let ((_hd3449934524_ (##car _e3449834521_))
                                       (_tl3450034526_ (##cdr _e3449834521_)))
                                   (let ((_id34529_ _hd3449934524_))
                                     (if (gx#stx-pair? _tl3450034526_)
                                         (let ((_e3450134531_
                                                (gx#syntax-e _tl3450034526_)))
                                           (let ((_hd3450234534_
                                                  (##car _e3450134531_))
                                                 (_tl3450334536_
                                                  (##cdr _e3450134531_)))
                                             (let ((_binding-id34539_
                                                    _hd3450234534_))
                                               (if (gx#stx-null?
                                                    _tl3450334536_)
                                                   (if (if (gx#identifier?
                                                            _id34529_)
                                                           (gx#identifier?
                                                            _binding-id34539_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!
                                                          _id34529_
                                                          (gx#stx-e
                                                           _binding-id34539_))
                                                         (gx#core-quote-syntax
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax _id34529_)
                              (cons (gx#core-quote-syntax _binding-id34539_)
                                    '())))))
               (_E3449434509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3449434509_)))))
                                         (_E3449434509_)))))
                               (_E3449434509_))))
                       (_E3449434509_)))))
            (let () (_E3449334541_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx34434_)
      (let ((_e3443534448_ _stx34434_))
        (let ((_E3443734452_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3443534448_))))
          (let ((_E3443634487_
                 (lambda ()
                   (if (gx#stx-pair? _e3443534448_)
                       (let ((_e3443834456_ (gx#syntax-e _e3443534448_)))
                         (let ((_hd3443934459_ (##car _e3443834456_))
                               (_tl3444034461_ (##cdr _e3443834456_)))
                           (if (gx#stx-pair? _tl3444034461_)
                               (let ((_e3444134464_
                                      (gx#syntax-e _tl3444034461_)))
                                 (let ((_hd3444234467_ (##car _e3444134464_))
                                       (_tl3444334469_ (##cdr _e3444134464_)))
                                   (let ((_id34472_ _hd3444234467_))
                                     (if (gx#stx-pair? _tl3444334469_)
                                         (let ((_e3444434474_
                                                (gx#syntax-e _tl3444334469_)))
                                           (let ((_hd3444534477_
                                                  (##car _e3444434474_))
                                                 (_tl3444634479_
                                                  (##cdr _e3444434474_)))
                                             (let ((_expr34482_
                                                    _hd3444534477_))
                                               (if (gx#stx-null?
                                                    _tl3444634479_)
                                                   (if (gx#identifier?
                                                        _id34472_)
                                                       (let ((_g40587_
                                                              (gx#core-expand-expression+1
                                                               _expr34482_)))
                                                         (begin
                                                           (let ((_g40588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g40587_)))
                     (if (not (fx= _g40588_ 2))
                         (error "Context expects 2 values" _g40588_)))
                   (let ((_e-stx34484_ (values-ref _g40587_ 0))
                         (_e34485_ (values-ref _g40587_ 1)))
                     (begin
                       (gx#core-bind-syntax! _id34472_ _e34485_)
                       (gx#core-quote-syntax
                        (cons (gx#core-quote-syntax '%#define-syntax)
                              (cons (gx#core-quote-syntax _id34472_)
                                    (cons _e-stx34484_ '())))
                        (gx#stx-source _stx34434_))))))
               (_E3443734452_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3443734452_)))))
                                         (_E3443734452_)))))
                               (_E3443734452_))))
                       (_E3443734452_)))))
            (let () (_E3443634487_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx34378_)
      (let ((_e3437934392_ _stx34378_))
        (let ((_E3438134396_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3437934392_))))
          (let ((_E3438034430_
                 (lambda ()
                   (if (gx#stx-pair? _e3437934392_)
                       (let ((_e3438234400_ (gx#syntax-e _e3437934392_)))
                         (let ((_hd3438334403_ (##car _e3438234400_))
                               (_tl3438434405_ (##cdr _e3438234400_)))
                           (if (gx#stx-pair? _tl3438434405_)
                               (let ((_e3438534408_
                                      (gx#syntax-e _tl3438434405_)))
                                 (let ((_hd3438634411_ (##car _e3438534408_))
                                       (_tl3438734413_ (##cdr _e3438534408_)))
                                   (let ((_id34416_ _hd3438634411_))
                                     (if (gx#stx-pair? _tl3438734413_)
                                         (let ((_e3438834418_
                                                (gx#syntax-e _tl3438734413_)))
                                           (let ((_hd3438934421_
                                                  (##car _e3438834418_))
                                                 (_tl3439034423_
                                                  (##cdr _e3438834418_)))
                                             (let ((_alias-id34426_
                                                    _hd3438934421_))
                                               (if (gx#stx-null?
                                                    _tl3439034423_)
                                                   (if (if (gx#identifier?
                                                            _id34416_)
                                                           (gx#identifier?
                                                            _alias-id34426_)
                                                           '#f)
                                                       (let ((_alias-id34428_
                                                              (gx#core-quote-syntax
                                                               _alias-id34426_)))
                                                         (begin
                                                           (gx#core-bind-alias!
                                                            _id34416_
                                                            _alias-id34428_)
                                                           (gx#core-quote-syntax
                                                            (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax _id34416_)
                                (cons _alias-id34428_ '()))))))
               (_E3438134396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3438134396_)))))
                                         (_E3438134396_)))))
                               (_E3438134396_))))
                       (_E3438134396_)))))
            (let () (_E3438034430_)))))))
  (define gx#core-expand-lambda%
    (let ((_opt-lambda3431934368_
           (lambda (_stx34321_ _wrap?34322_)
             (let ((_e3432334333_ _stx34321_))
               (let ((_E3432534337_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e3432334333_))))
                 (let ((_E3432434364_
                        (lambda ()
                          (if (gx#stx-pair? _e3432334333_)
                              (let ((_e3432634341_
                                     (gx#syntax-e _e3432334333_)))
                                (let ((_hd3432734344_ (##car _e3432634341_))
                                      (_tl3432834346_ (##cdr _e3432634341_)))
                                  (if (gx#stx-pair? _tl3432834346_)
                                      (let ((_e3432934349_
                                             (gx#syntax-e _tl3432834346_)))
                                        (let ((_hd3433034352_
                                               (##car _e3432934349_))
                                              (_tl3433134354_
                                               (##cdr _e3432934349_)))
                                          (let ((_hd34357_ _hd3433034352_))
                                            (let ((_body34359_ _tl3433134354_))
                                              (if (gx#core-bind-values?
                                                   _hd34357_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (begin
                                                       (gx#core-bind-values!
                                                        _hd34357_)
                                                       (let ((_body34362_
                                                              (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd34357_)
                            (cons (gx#core-expand-local-block
                                   _stx34321_
                                   _body34359_)
                                  '()))))
                 (if _wrap?34322_
                     (gx#core-quote-syntax
                      (gx#core-cons '%#lambda _body34362_)
                      (gx#stx-source _stx34321_))
                     _body34362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   gx#current-expander-context
                                                   (gx#make-local-context))
                                                  (_E3432534337_))))))
                                      (_E3432534337_))))
                              (_E3432534337_)))))
                   (let () (_E3432434364_))))))))
      (lambda _g40590_
        (let ((_g40589_ (length _g40590_)))
          (cond ((fx= _g40589_ 1)
                 (apply (lambda (_stx34371_)
                          (let ((_wrap?34373_ '#t))
                            (_opt-lambda3431934368_ _stx34371_ _wrap?34373_)))
                        _g40590_))
                ((fx= _g40589_ 2)
                 (apply (lambda (_stx34375_ _wrap?34376_)
                          (_opt-lambda3431934368_ _stx34375_ _wrap?34376_))
                        _g40590_))
                (else (error "No clause matching arguments" _g40590_)))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx34285_)
      (let ((_e3428634293_ _stx34285_))
        (let ((_E3428834297_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3428634293_))))
          (let ((_E3428734316_
                 (lambda ()
                   (if (gx#stx-pair? _e3428634293_)
                       (let ((_e3428934301_ (gx#syntax-e _e3428634293_)))
                         (let ((_hd3429034304_ (##car _e3428934301_))
                               (_tl3429134306_ (##cdr _e3428934301_)))
                           (let ((_clauses34309_ _tl3429134306_))
                             (if (gx#stx-list? _clauses34309_)
                                 (gx#core-quote-syntax
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map
                                    (lambda (_clause34311_)
                                      (gx#core-expand-lambda%
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause34311_)
                                        (let ((_$e34313_
                                               (gx#stx-source _clause34311_)))
                                          (if _$e34313_
                                              _$e34313_
                                              (gx#stx-source _stx34285_))))
                                       '#f))
                                    _clauses34309_))
                                  (gx#stx-source _stx34285_))
                                 (_E3428834297_)))))
                       (_E3428834297_)))))
            (let () (_E3428734316_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx34239_)
      (let ((_e3424034250_ _stx34239_))
        (let ((_E3424234254_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3424034250_))))
          (let ((_E3424134281_
                 (lambda ()
                   (if (gx#stx-pair? _e3424034250_)
                       (let ((_e3424334258_ (gx#syntax-e _e3424034250_)))
                         (let ((_hd3424434261_ (##car _e3424334258_))
                               (_tl3424534263_ (##cdr _e3424334258_)))
                           (if (gx#stx-pair? _tl3424534263_)
                               (let ((_e3424634266_
                                      (gx#syntax-e _tl3424534263_)))
                                 (let ((_hd3424734269_ (##car _e3424634266_))
                                       (_tl3424834271_ (##cdr _e3424634266_)))
                                   (let ((_hd34274_ _hd3424734269_))
                                     (let ((_body34276_ _tl3424834271_))
                                       (if (gx#core-expand-let-bind? _hd34274_)
                                           (let ((_expressions34278_
                                                  (gx#stx-map
                                                   gx#core-expand-let-bind-expression
                                                   _hd34274_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-values!
                                                   _hd34274_)
                                                  (gx#core-quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          '%#let-values)
                                                         (cons (gx#stx-map
                                                                gx#core-expand-let-bind-quote
                                                                _hd34274_
                                                                _expressions34278_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx34239_
                              _body34276_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx34239_))))
                                              gx#current-expander-context
                                              (gx#make-local-context)))
                                           (_E3424234254_))))))
                               (_E3424234254_))))
                       (_E3424234254_)))))
            (let () (_E3424134281_)))))))
  (define gx#core-expand-letrec-values%
    (let ((_opt-lambda3418234229_
           (lambda (_stx34184_ _form34185_)
             (let ((_e3418634196_ _stx34184_))
               (let ((_E3418834200_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e3418634196_))))
                 (let ((_E3418734225_
                        (lambda ()
                          (if (gx#stx-pair? _e3418634196_)
                              (let ((_e3418934204_
                                     (gx#syntax-e _e3418634196_)))
                                (let ((_hd3419034207_ (##car _e3418934204_))
                                      (_tl3419134209_ (##cdr _e3418934204_)))
                                  (if (gx#stx-pair? _tl3419134209_)
                                      (let ((_e3419234212_
                                             (gx#syntax-e _tl3419134209_)))
                                        (let ((_hd3419334215_
                                               (##car _e3419234212_))
                                              (_tl3419434217_
                                               (##cdr _e3419234212_)))
                                          (let ((_hd34220_ _hd3419334215_))
                                            (let ((_body34222_ _tl3419434217_))
                                              (if (gx#core-expand-let-bind?
                                                   _hd34220_)
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (begin
                                                       (gx#stx-for-each
                                                        gx#core-expand-let-bind-values!
                                                        _hd34220_)
                                                       (gx#core-quote-syntax
                                                        (cons (gx#core-quote-syntax
                                                               _form34185_)
                                                              (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#core-expand-let-bind-quote
                             _hd34220_
                             (gx#stx-map
                              gx#core-expand-let-bind-expression
                              _hd34220_))
                            (cons (gx#core-expand-local-block
                                   _stx34184_
                                   _body34222_)
                                  '())))
                (gx#stx-source _stx34184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   gx#current-expander-context
                                                   (gx#make-local-context))
                                                  (_E3418834200_))))))
                                      (_E3418834200_))))
                              (_E3418834200_)))))
                   (let () (_E3418734225_))))))))
      (lambda _g40592_
        (let ((_g40591_ (length _g40592_)))
          (cond ((fx= _g40591_ 1)
                 (apply (lambda (_stx34232_)
                          (let ((_form34234_ '%#letrec-values))
                            (_opt-lambda3418234229_ _stx34232_ _form34234_)))
                        _g40592_))
                ((fx= _g40591_ 2)
                 (apply (lambda (_stx34236_ _form34237_)
                          (_opt-lambda3418234229_ _stx34236_ _form34237_))
                        _g40592_))
                (else (error "No clause matching arguments" _g40592_)))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx34181_)
      (gx#core-expand-letrec-values% _stx34181_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx34138_)
      (if (gx#stx-list? _stx34138_)
          (gx#stx-andmap
           (lambda (_bind34140_)
             (let ((_e3414134151_ _bind34140_))
               (let ((_E3414334155_ (lambda () '#f)))
                 (let ((_E3414234177_
                        (lambda ()
                          (if (gx#stx-pair? _e3414134151_)
                              (let ((_e3414434159_
                                     (gx#syntax-e _e3414134151_)))
                                (let ((_hd3414534162_ (##car _e3414434159_))
                                      (_tl3414634164_ (##cdr _e3414434159_)))
                                  (let ((_hd34167_ _hd3414534162_))
                                    (if (gx#stx-pair? _tl3414634164_)
                                        (let ((_e3414734169_
                                               (gx#syntax-e _tl3414634164_)))
                                          (let ((_hd3414834172_
                                                 (##car _e3414734169_))
                                                (_tl3414934174_
                                                 (##cdr _e3414734169_)))
                                            (if (gx#stx-null? _tl3414934174_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd34167_)
                                                    (_E3414334155_))
                                                (_E3414334155_))))
                                        (_E3414334155_)))))
                              (_E3414334155_)))))
                   (let () (_E3414234177_))))))
           _stx34138_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind34097_)
      (let ((_e3409834108_ _bind34097_))
        (let ((_E3410034112_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3409834108_))))
          (let ((_E3409934134_
                 (lambda ()
                   (if (gx#stx-pair? _e3409834108_)
                       (let ((_e3410134116_ (gx#syntax-e _e3409834108_)))
                         (let ((_hd3410234119_ (##car _e3410134116_))
                               (_tl3410334121_ (##cdr _e3410134116_)))
                           (if (gx#stx-pair? _tl3410334121_)
                               (let ((_e3410434124_
                                      (gx#syntax-e _tl3410334121_)))
                                 (let ((_hd3410534127_ (##car _e3410434124_))
                                       (_tl3410634129_ (##cdr _e3410434124_)))
                                   (let ((_expr34132_ _hd3410534127_))
                                     (if (gx#stx-null? _tl3410634129_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr34132_)
                                             (_E3410034112_))
                                         (_E3410034112_)))))
                               (_E3410034112_))))
                       (_E3410034112_)))))
            (let () (_E3409934134_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind34056_)
      (let ((_e3405734067_ _bind34056_))
        (let ((_E3405934071_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3405734067_))))
          (let ((_E3405834093_
                 (lambda ()
                   (if (gx#stx-pair? _e3405734067_)
                       (let ((_e3406034075_ (gx#syntax-e _e3405734067_)))
                         (let ((_hd3406134078_ (##car _e3406034075_))
                               (_tl3406234080_ (##cdr _e3406034075_)))
                           (let ((_hd34083_ _hd3406134078_))
                             (if (gx#stx-pair? _tl3406234080_)
                                 (let ((_e3406334085_
                                        (gx#syntax-e _tl3406234080_)))
                                   (let ((_hd3406434088_ (##car _e3406334085_))
                                         (_tl3406534090_
                                          (##cdr _e3406334085_)))
                                     (if (gx#stx-null? _tl3406534090_)
                                         (if '#t
                                             (gx#core-bind-values! _hd34083_)
                                             (_E3405934071_))
                                         (_E3405934071_))))
                                 (_E3405934071_)))))
                       (_E3405934071_)))))
            (let () (_E3405834093_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind34014_ _expr34015_)
      (let ((_e3401634026_ _bind34014_))
        (let ((_E3401834030_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3401634026_))))
          (let ((_E3401734052_
                 (lambda ()
                   (if (gx#stx-pair? _e3401634026_)
                       (let ((_e3401934034_ (gx#syntax-e _e3401634026_)))
                         (let ((_hd3402034037_ (##car _e3401934034_))
                               (_tl3402134039_ (##cdr _e3401934034_)))
                           (let ((_hd34042_ _hd3402034037_))
                             (if (gx#stx-pair? _tl3402134039_)
                                 (let ((_e3402234044_
                                        (gx#syntax-e _tl3402134039_)))
                                   (let ((_hd3402334047_ (##car _e3402234044_))
                                         (_tl3402434049_
                                          (##cdr _e3402234044_)))
                                     (if (gx#stx-null? _tl3402434049_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd34042_)
                                                   (cons _expr34015_ '()))
                                             (_E3401834030_))
                                         (_E3401834030_))))
                                 (_E3401834030_)))))
                       (_E3401834030_)))))
            (let () (_E3401734052_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx33968_)
      (let ((_e3396933979_ _stx33968_))
        (let ((_E3397133983_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3396933979_))))
          (let ((_E3397034010_
                 (lambda ()
                   (if (gx#stx-pair? _e3396933979_)
                       (let ((_e3397233987_ (gx#syntax-e _e3396933979_)))
                         (let ((_hd3397333990_ (##car _e3397233987_))
                               (_tl3397433992_ (##cdr _e3397233987_)))
                           (if (gx#stx-pair? _tl3397433992_)
                               (let ((_e3397533995_
                                      (gx#syntax-e _tl3397433992_)))
                                 (let ((_hd3397633998_ (##car _e3397533995_))
                                       (_tl3397734000_ (##cdr _e3397533995_)))
                                   (let ((_hd34003_ _hd3397633998_))
                                     (let ((_body34005_ _tl3397734000_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd34003_)
                                           (let ((_expanders34007_
                                                  (gx#stx-map
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd34003_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd34003_
                                                   _expanders34007_)
                                                  (gx#core-expand-local-block
                                                   _stx33968_
                                                   _body34005_)))
                                              gx#current-expander-context
                                              (gx#make-local-context)))
                                           (_E3397133983_))))))
                               (_E3397133983_))))
                       (_E3397133983_)))))
            (let () (_E3397034010_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx33917_)
      (let ((_e3391833928_ _stx33917_))
        (let ((_E3392033932_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3391833928_))))
          (let ((_E3391933964_
                 (lambda ()
                   (if (gx#stx-pair? _e3391833928_)
                       (let ((_e3392133936_ (gx#syntax-e _e3391833928_)))
                         (let ((_hd3392233939_ (##car _e3392133936_))
                               (_tl3392333941_ (##cdr _e3392133936_)))
                           (if (gx#stx-pair? _tl3392333941_)
                               (let ((_e3392433944_
                                      (gx#syntax-e _tl3392333941_)))
                                 (let ((_hd3392533947_ (##car _e3392433944_))
                                       (_tl3392633949_ (##cdr _e3392433944_)))
                                   (let ((_hd33952_ _hd3392533947_))
                                     (let ((_body33954_ _tl3392633949_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd33952_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd33952_
                                                 (make-list
                                                  (gx#stx-length _hd33952_)
                                                  '#!void))
                                                (gx#stx-for-each
                                                 (lambda (_g3395633959_
                                                          _g3395733961_)
                                                   (gx#core-expand-let-bind-syntax!
                                                    _g3395633959_
                                                    _g3395733961_
                                                    '#t))
                                                 _hd33952_
                                                 (gx#stx-map
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd33952_))
                                                (gx#core-expand-local-block
                                                 _stx33917_
                                                 _body33954_)))
                                            gx#current-expander-context
                                            (gx#make-local-context))
                                           (_E3392033932_))))))
                               (_E3392033932_))))
                       (_E3392033932_)))))
            (let () (_E3391933964_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx33874_)
      (if (gx#stx-list? _stx33874_)
          (gx#stx-andmap
           (lambda (_bind33876_)
             (let ((_e3387733887_ _bind33876_))
               (let ((_E3387933891_ (lambda () '#f)))
                 (let ((_E3387833913_
                        (lambda ()
                          (if (gx#stx-pair? _e3387733887_)
                              (let ((_e3388033895_
                                     (gx#syntax-e _e3387733887_)))
                                (let ((_hd3388133898_ (##car _e3388033895_))
                                      (_tl3388233900_ (##cdr _e3388033895_)))
                                  (let ((_hd33903_ _hd3388133898_))
                                    (if (gx#stx-pair? _tl3388233900_)
                                        (let ((_e3388333905_
                                               (gx#syntax-e _tl3388233900_)))
                                          (let ((_hd3388433908_
                                                 (##car _e3388333905_))
                                                (_tl3388533910_
                                                 (##cdr _e3388333905_)))
                                            (if (gx#stx-null? _tl3388533910_)
                                                (if '#t
                                                    (gx#identifier? _hd33903_)
                                                    (_E3387933891_))
                                                (_E3387933891_))))
                                        (_E3387933891_)))))
                              (_E3387933891_)))))
                   (let () (_E3387833913_))))))
           _stx33874_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind33831_)
      (let ((_e3383233842_ _bind33831_))
        (let ((_E3383433846_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3383233842_))))
          (let ((_E3383333870_
                 (lambda ()
                   (if (gx#stx-pair? _e3383233842_)
                       (let ((_e3383533850_ (gx#syntax-e _e3383233842_)))
                         (let ((_hd3383633853_ (##car _e3383533850_))
                               (_tl3383733855_ (##cdr _e3383533850_)))
                           (if (gx#stx-pair? _tl3383733855_)
                               (let ((_e3383833858_
                                      (gx#syntax-e _tl3383733855_)))
                                 (let ((_hd3383933861_ (##car _e3383833858_))
                                       (_tl3384033863_ (##cdr _e3383833858_)))
                                   (let ((_expr33866_ _hd3383933861_))
                                     (if (gx#stx-null? _tl3384033863_)
                                         (if '#t
                                             (let ((_g40593_
                                                    (gx#core-expand-expression+1
                                                     _expr33866_)))
                                               (begin
                                                 (let ((_g40594_
                                                        (values-count
                                                         _g40593_)))
                                                   (if (not (fx= _g40594_ 2))
                                                       (error "Context expects 2 values"
                                                              _g40594_)))
                                                 (let ((_e33868_
                                                        (values-ref
                                                         _g40593_
                                                         1)))
                                                   _e33868_)))
                                             (_E3383433846_))
                                         (_E3383433846_)))))
                               (_E3383433846_))))
                       (_E3383433846_)))))
            (let () (_E3383333870_)))))))
  (define gx#core-expand-let-bind-syntax!
    (let ((_opt-lambda3377433819_
           (lambda (_bind33776_ _e33777_ _rebind?33778_)
             (let ((_e3377933789_ _bind33776_))
               (let ((_E3378133793_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e3377933789_))))
                 (let ((_E3378033815_
                        (lambda ()
                          (if (gx#stx-pair? _e3377933789_)
                              (let ((_e3378233797_
                                     (gx#syntax-e _e3377933789_)))
                                (let ((_hd3378333800_ (##car _e3378233797_))
                                      (_tl3378433802_ (##cdr _e3378233797_)))
                                  (let ((_id33805_ _hd3378333800_))
                                    (if (gx#stx-pair? _tl3378433802_)
                                        (let ((_e3378533807_
                                               (gx#syntax-e _tl3378433802_)))
                                          (let ((_hd3378633810_
                                                 (##car _e3378533807_))
                                                (_tl3378733812_
                                                 (##cdr _e3378533807_)))
                                            (if (gx#stx-null? _tl3378733812_)
                                                (if '#t
                                                    (gx#core-bind-syntax!
                                                     _id33805_
                                                     _e33777_
                                                     _rebind?33778_)
                                                    (_E3378133793_))
                                                (_E3378133793_))))
                                        (_E3378133793_)))))
                              (_E3378133793_)))))
                   (let () (_E3378033815_))))))))
      (lambda _g40596_
        (let ((_g40595_ (length _g40596_)))
          (cond ((fx= _g40595_ 2)
                 (apply (lambda (_bind33822_ _e33823_)
                          (let ((_rebind?33825_ '#f))
                            (_opt-lambda3377433819_
                             _bind33822_
                             _e33823_
                             _rebind?33825_)))
                        _g40596_))
                ((fx= _g40595_ 3)
                 (apply (lambda (_bind33827_ _e33828_ _rebind?33829_)
                          (_opt-lambda3377433819_
                           _bind33827_
                           _e33828_
                           _rebind?33829_))
                        _g40596_))
                (else (error "No clause matching arguments" _g40596_)))))))
  (define gx#core-expand-expression%
    (lambda (_stx33734_)
      (let ((_e3373533745_ _stx33734_))
        (let ((_E3373733749_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3373533745_))))
          (let ((_E3373633771_
                 (lambda ()
                   (if (gx#stx-pair? _e3373533745_)
                       (let ((_e3373833753_ (gx#syntax-e _e3373533745_)))
                         (let ((_hd3373933756_ (##car _e3373833753_))
                               (_tl3374033758_ (##cdr _e3373833753_)))
                           (if (gx#stx-pair? _tl3374033758_)
                               (let ((_e3374133761_
                                      (gx#syntax-e _tl3374033758_)))
                                 (let ((_hd3374233764_ (##car _e3374133761_))
                                       (_tl3374333766_ (##cdr _e3374133761_)))
                                   (let ((_expr33769_ _hd3374233764_))
                                     (if (gx#stx-null? _tl3374333766_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr33769_)
                                             (_E3373733749_))
                                         (_E3373733749_)))))
                               (_E3373733749_))))
                       (_E3373733749_)))))
            (let () (_E3373633771_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx33693_)
      (let ((_e3369433704_ _stx33693_))
        (let ((_E3369633708_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3369433704_))))
          (let ((_E3369533730_
                 (lambda ()
                   (if (gx#stx-pair? _e3369433704_)
                       (let ((_e3369733712_ (gx#syntax-e _e3369433704_)))
                         (let ((_hd3369833715_ (##car _e3369733712_))
                               (_tl3369933717_ (##cdr _e3369733712_)))
                           (if (gx#stx-pair? _tl3369933717_)
                               (let ((_e3370033720_
                                      (gx#syntax-e _tl3369933717_)))
                                 (let ((_hd3370133723_ (##car _e3370033720_))
                                       (_tl3370233725_ (##cdr _e3370033720_)))
                                   (let ((_e33728_ _hd3370133723_))
                                     (if (gx#stx-null? _tl3370233725_)
                                         (if '#t
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e33728_)
                                                          '()))
                                              (gx#stx-source _stx33693_))
                                             (_E3369633708_))
                                         (_E3369633708_)))))
                               (_E3369633708_))))
                       (_E3369633708_)))))
            (let () (_E3369533730_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx33652_)
      (let ((_e3365333663_ _stx33652_))
        (let ((_E3365533667_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3365333663_))))
          (let ((_E3365433689_
                 (lambda ()
                   (if (gx#stx-pair? _e3365333663_)
                       (let ((_e3365633671_ (gx#syntax-e _e3365333663_)))
                         (let ((_hd3365733674_ (##car _e3365633671_))
                               (_tl3365833676_ (##cdr _e3365633671_)))
                           (if (gx#stx-pair? _tl3365833676_)
                               (let ((_e3365933679_
                                      (gx#syntax-e _tl3365833676_)))
                                 (let ((_hd3366033682_ (##car _e3365933679_))
                                       (_tl3366133684_ (##cdr _e3365933679_)))
                                   (let ((_e33687_ _hd3366033682_))
                                     (if (gx#stx-null? _tl3366133684_)
                                         (if '#t
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax
                                                           _e33687_)
                                                          '()))
                                              (gx#stx-source _stx33652_))
                                             (_E3365533667_))
                                         (_E3365533667_)))))
                               (_E3365533667_))))
                       (_E3365533667_)))))
            (let () (_E3365433689_)))))))
  (define gx#core-expand-call%
    (lambda (_stx33609_)
      (let ((_e3361033620_ _stx33609_))
        (let ((_E3361233624_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3361033620_))))
          (let ((_E3361133648_
                 (lambda ()
                   (if (gx#stx-pair? _e3361033620_)
                       (let ((_e3361333628_ (gx#syntax-e _e3361033620_)))
                         (let ((_hd3361433631_ (##car _e3361333628_))
                               (_tl3361533633_ (##cdr _e3361333628_)))
                           (if (gx#stx-pair? _tl3361533633_)
                               (let ((_e3361633636_
                                      (gx#syntax-e _tl3361533633_)))
                                 (let ((_hd3361733639_ (##car _e3361633636_))
                                       (_tl3361833641_ (##cdr _e3361633636_)))
                                   (let ((_rator33644_ _hd3361733639_))
                                     (let ((_args33646_ _tl3361833641_))
                                       (if (gx#stx-list? _args33646_)
                                           (gx#core-quote-syntax
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator33644_)
                                             (gx#stx-map
                                              gx#core-expand-expression
                                              _args33646_))
                                            (gx#stx-source _stx33609_))
                                           (_E3361233624_))))))
                               (_E3361233624_))))
                       (_E3361233624_)))))
            (let () (_E3361133648_)))))))
  (define gx#core-expand-if%
    (lambda (_stx33542_)
      (let ((_e3354333559_ _stx33542_))
        (let ((_E3354533563_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3354333559_))))
          (let ((_E3354433605_
                 (lambda ()
                   (if (gx#stx-pair? _e3354333559_)
                       (let ((_e3354633567_ (gx#syntax-e _e3354333559_)))
                         (let ((_hd3354733570_ (##car _e3354633567_))
                               (_tl3354833572_ (##cdr _e3354633567_)))
                           (if (gx#stx-pair? _tl3354833572_)
                               (let ((_e3354933575_
                                      (gx#syntax-e _tl3354833572_)))
                                 (let ((_hd3355033578_ (##car _e3354933575_))
                                       (_tl3355133580_ (##cdr _e3354933575_)))
                                   (let ((_test33583_ _hd3355033578_))
                                     (if (gx#stx-pair? _tl3355133580_)
                                         (let ((_e3355233585_
                                                (gx#syntax-e _tl3355133580_)))
                                           (let ((_hd3355333588_
                                                  (##car _e3355233585_))
                                                 (_tl3355433590_
                                                  (##cdr _e3355233585_)))
                                             (let ((_K33593_ _hd3355333588_))
                                               (if (gx#stx-pair?
                                                    _tl3355433590_)
                                                   (let ((_e3355533595_
                                                          (gx#syntax-e
                                                           _tl3355433590_)))
                                                     (let ((_hd3355633598_
                                                            (##car _e3355533595_))
                                                           (_tl3355733600_
                                                            (##cdr _e3355533595_)))
                                                       (let ((_E33603_
                                                              _hd3355633598_))
                                                         (if (gx#stx-null?
                                                              _tl3355733600_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax
                          (cons (gx#core-quote-syntax '%#if)
                                (cons (gx#core-expand-expression _test33583_)
                                      (cons (gx#core-expand-expression
                                             _K33593_)
                                            (cons (gx#core-expand-expression
                                                   _E33603_)
                                                  '()))))
                          (gx#stx-source _stx33542_))
                         (_E3354533563_))
                     (_E3354533563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3354533563_)))))
                                         (_E3354533563_)))))
                               (_E3354533563_))))
                       (_E3354533563_)))))
            (let () (_E3354433605_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx33501_)
      (let ((_e3350233512_ _stx33501_))
        (let ((_E3350433516_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3350233512_))))
          (let ((_E3350333538_
                 (lambda ()
                   (if (gx#stx-pair? _e3350233512_)
                       (let ((_e3350533520_ (gx#syntax-e _e3350233512_)))
                         (let ((_hd3350633523_ (##car _e3350533520_))
                               (_tl3350733525_ (##cdr _e3350533520_)))
                           (if (gx#stx-pair? _tl3350733525_)
                               (let ((_e3350833528_
                                      (gx#syntax-e _tl3350733525_)))
                                 (let ((_hd3350933531_ (##car _e3350833528_))
                                       (_tl3351033533_ (##cdr _e3350833528_)))
                                   (let ((_id33536_ _hd3350933531_))
                                     (if (gx#stx-null? _tl3351033533_)
                                         (if (gx#core-runtime-ref? _id33536_)
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id33536_
                                                           _stx33501_)
                                                          '()))
                                              (gx#stx-source _stx33501_))
                                             (_E3350433516_))
                                         (_E3350433516_)))))
                               (_E3350433516_))))
                       (_E3350433516_)))))
            (let () (_E3350333538_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx33447_)
      (let ((_e3344833461_ _stx33447_))
        (let ((_E3345033465_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3344833461_))))
          (let ((_E3344933497_
                 (lambda ()
                   (if (gx#stx-pair? _e3344833461_)
                       (let ((_e3345133469_ (gx#syntax-e _e3344833461_)))
                         (let ((_hd3345233472_ (##car _e3345133469_))
                               (_tl3345333474_ (##cdr _e3345133469_)))
                           (if (gx#stx-pair? _tl3345333474_)
                               (let ((_e3345433477_
                                      (gx#syntax-e _tl3345333474_)))
                                 (let ((_hd3345533480_ (##car _e3345433477_))
                                       (_tl3345633482_ (##cdr _e3345433477_)))
                                   (let ((_id33485_ _hd3345533480_))
                                     (if (gx#stx-pair? _tl3345633482_)
                                         (let ((_e3345733487_
                                                (gx#syntax-e _tl3345633482_)))
                                           (let ((_hd3345833490_
                                                  (##car _e3345733487_))
                                                 (_tl3345933492_
                                                  (##cdr _e3345733487_)))
                                             (let ((_expr33495_
                                                    _hd3345833490_))
                                               (if (gx#stx-null?
                                                    _tl3345933492_)
                                                   (if (gx#core-runtime-ref?
                                                        _id33485_)
                                                       (gx#core-quote-syntax
                                                        (cons (gx#core-quote-syntax
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id33485_
                             _stx33447_)
                            (cons (gx#core-expand-expression _expr33495_)
                                  '())))
                (gx#stx-source _stx33447_))
               (_E3345033465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3345033465_)))))
                                         (_E3345033465_)))))
                               (_E3345033465_))))
                       (_E3345033465_)))))
            (let () (_E3344933497_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx33295_)
      (let ((_generate33297_
             (lambda (_body33327_)
               ((letrec ((_lp33329_
                          (lambda (_rest33331_ _ns33332_ _r33333_)
                            (let ((_e3333433349_ _rest33331_))
                              (let ((_E3334733353_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e3333433349_))))
                                (let ((_E3334333357_
                                       (lambda ()
                                         (if (gx#stx-null? _e3333433349_)
                                             (if '#t
                                                 (reverse _r33333_)
                                                 (_E3334733353_))
                                             (_E3334733353_)))))
                                  (let ((_E3333633414_
                                         (lambda ()
                                           (if (gx#stx-pair? _e3333433349_)
                                               (let ((_e3334433361_
                                                      (gx#syntax-e
                                                       _e3333433349_)))
                                                 (let ((_hd3334533364_
                                                        (##car _e3334433361_))
                                                       (_tl3334633366_
                                                        (##cdr _e3334433361_)))
                                                   (let ((_hd33369_
                                                          _hd3334533364_))
                                                     (let ((_rest33371_
                                                            _tl3334633366_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd33369_)
                                                               (_lp33329_
                                                                _rest33371_
                                                                _ns33332_
                                                                (cons (cons _hd33369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns33332_
                                              (gx#stx-identifier
                                               _hd33369_
                                               _ns33332_
                                               '"#"
                                               _hd33369_)
                                              _hd33369_)
                                          '()))
                              _r33333_))
                       (let ((_e3337233382_ _hd33369_))
                         (let ((_E3337433386_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e3337233382_))))
                           (let ((_E3337333410_
                                  (lambda ()
                                    (if (gx#stx-pair? _e3337233382_)
                                        (let ((_e3337533390_
                                               (gx#syntax-e _e3337233382_)))
                                          (let ((_hd3337633393_
                                                 (##car _e3337533390_))
                                                (_tl3337733395_
                                                 (##cdr _e3337533390_)))
                                            (let ((_id33398_ _hd3337633393_))
                                              (if (gx#stx-pair? _tl3337733395_)
                                                  (let ((_e3337833400_
                                                         (gx#syntax-e
                                                          _tl3337733395_)))
                                                    (let ((_hd3337933403_
                                                           (##car _e3337833400_))
                                                          (_tl3338033405_
                                                           (##cdr _e3337833400_)))
                                                      (let ((_eid33408_
                                                             _hd3337933403_))
                                                        (if (gx#stx-null?
                                                             _tl3338033405_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id33398_)
                            (gx#identifier? _eid33408_)
                            '#f)
                        (_lp33329_
                         _rest33371_
                         _ns33332_
                         (cons (cons _id33398_ (cons _eid33408_ '()))
                               _r33333_))
                        (_E3337433386_))
                    (_E3337433386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E3337433386_)))))
                                        (_E3337433386_)))))
                             (let () (_E3337333410_))))))
                   (_E3334333357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E3334333357_)))))
                                    (let ((_E3333533443_
                                           (lambda ()
                                             (if (gx#stx-pair? _e3333433349_)
                                                 (let ((_e3333733418_
                                                        (gx#syntax-e
                                                         _e3333433349_)))
                                                   (let ((_hd3333833421_
                                                          (##car _e3333733418_))
                                                         (_tl3333933423_
                                                          (##cdr _e3333733418_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd3333833421_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl3333933423_)
                                                             (let ((_e3334033426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl3333933423_)))
                       (let ((_hd3334133429_ (##car _e3334033426_))
                             (_tl3334233431_ (##cdr _e3334033426_)))
                         (let ((_ns33434_ _hd3334133429_))
                           (let ((_rest33436_ _tl3334233431_))
                             (if '#t
                                 (let ((_ns33441_
                                        (if (gx#identifier? _ns33434_)
                                            (symbol->string
                                             (gx#stx-e _ns33434_))
                                            (if (let ((_$e33438_
                                                       (gx#stx-string?
                                                        _ns33434_)))
                                                  (if _$e33438_
                                                      _$e33438_
                                                      (gx#stx-false?
                                                       _ns33434_)))
                                                (gx#stx-e _ns33434_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx33295_
                                                 _ns33434_)))))
                                   (_lp33329_ _rest33436_ _ns33441_ _r33333_))
                                 (_E3333633414_))))))
                     (_E3333633414_))
                 (_E3333633414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3333633414_)))))
                                      (let () (_E3333533443_))))))))))
                  _lp33329_)
                _body33327_
                (gx#core-context-namespace)
                '()))))
        (let ((_e3329833305_ _stx33295_))
          (let ((_E3330033309_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e3329833305_))))
            (let ((_E3329933323_
                   (lambda ()
                     (if (gx#stx-pair? _e3329833305_)
                         (let ((_e3330133313_ (gx#syntax-e _e3329833305_)))
                           (let ((_hd3330233316_ (##car _e3330133313_))
                                 (_tl3330333318_ (##cdr _e3330133313_)))
                             (let ((_body33321_ _tl3330333318_))
                               (if (gx#stx-list? _body33321_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate33297_ _body33321_))
                                   (_E3330033309_)))))
                         (_E3330033309_)))))
              (let () (_E3329933323_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx33241_)
      (let ((_e3324233255_ _stx33241_))
        (let ((_E3324433259_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3324233255_))))
          (let ((_E3324333291_
                 (lambda ()
                   (if (gx#stx-pair? _e3324233255_)
                       (let ((_e3324533263_ (gx#syntax-e _e3324233255_)))
                         (let ((_hd3324633266_ (##car _e3324533263_))
                               (_tl3324733268_ (##cdr _e3324533263_)))
                           (if (gx#stx-pair? _tl3324733268_)
                               (let ((_e3324833271_
                                      (gx#syntax-e _tl3324733268_)))
                                 (let ((_hd3324933274_ (##car _e3324833271_))
                                       (_tl3325033276_ (##cdr _e3324833271_)))
                                   (let ((_hd33279_ _hd3324933274_))
                                     (if (gx#stx-pair? _tl3325033276_)
                                         (let ((_e3325133281_
                                                (gx#syntax-e _tl3325033276_)))
                                           (let ((_hd3325233284_
                                                  (##car _e3325133281_))
                                                 (_tl3325333286_
                                                  (##cdr _e3325133281_)))
                                             (let ((_expr33289_
                                                    _hd3325233284_))
                                               (if (gx#stx-null?
                                                    _tl3325333286_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd33279_)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-values)
                                                             (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd33279_)
                           (cons _expr33289_ '())))
               (_E3324433259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3324433259_)))))
                                         (_E3324433259_)))))
                               (_E3324433259_))))
                       (_E3324433259_)))))
            (let () (_E3324333291_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx33187_)
      (let ((_e3318833201_ _stx33187_))
        (let ((_E3319033205_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3318833201_))))
          (let ((_E3318933237_
                 (lambda ()
                   (if (gx#stx-pair? _e3318833201_)
                       (let ((_e3319133209_ (gx#syntax-e _e3318833201_)))
                         (let ((_hd3319233212_ (##car _e3319133209_))
                               (_tl3319333214_ (##cdr _e3319133209_)))
                           (if (gx#stx-pair? _tl3319333214_)
                               (let ((_e3319433217_
                                      (gx#syntax-e _tl3319333214_)))
                                 (let ((_hd3319533220_ (##car _e3319433217_))
                                       (_tl3319633222_ (##cdr _e3319433217_)))
                                   (let ((_hd33225_ _hd3319533220_))
                                     (if (gx#stx-pair? _tl3319633222_)
                                         (let ((_e3319733227_
                                                (gx#syntax-e _tl3319633222_)))
                                           (let ((_hd3319833230_
                                                  (##car _e3319733227_))
                                                 (_tl3319933232_
                                                  (##cdr _e3319733227_)))
                                             (let ((_expr33235_
                                                    _hd3319833230_))
                                               (if (gx#stx-null?
                                                    _tl3319933232_)
                                                   (if (gx#identifier?
                                                        _hd33225_)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-syntax)
                                                             (cons _hd33225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr33235_ '())))
               (_E3319033205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3319033205_)))))
                                         (_E3319033205_)))))
                               (_E3319033205_))))
                       (_E3319033205_)))))
            (let () (_E3318933237_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx33133_)
      (let ((_e3313433147_ _stx33133_))
        (let ((_E3313633151_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3313433147_))))
          (let ((_E3313533183_
                 (lambda ()
                   (if (gx#stx-pair? _e3313433147_)
                       (let ((_e3313733155_ (gx#syntax-e _e3313433147_)))
                         (let ((_hd3313833158_ (##car _e3313733155_))
                               (_tl3313933160_ (##cdr _e3313733155_)))
                           (if (gx#stx-pair? _tl3313933160_)
                               (let ((_e3314033163_
                                      (gx#syntax-e _tl3313933160_)))
                                 (let ((_hd3314133166_ (##car _e3314033163_))
                                       (_tl3314233168_ (##cdr _e3314033163_)))
                                   (let ((_id33171_ _hd3314133166_))
                                     (if (gx#stx-pair? _tl3314233168_)
                                         (let ((_e3314333173_
                                                (gx#syntax-e _tl3314233168_)))
                                           (let ((_hd3314433176_
                                                  (##car _e3314333173_))
                                                 (_tl3314533178_
                                                  (##cdr _e3314333173_)))
                                             (let ((_alias-id33181_
                                                    _hd3314433176_))
                                               (if (gx#stx-null?
                                                    _tl3314533178_)
                                                   (if (if (gx#identifier?
                                                            _id33171_)
                                                           (gx#identifier?
                                                            _alias-id33181_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax
                                                              '%#define-alias)
                                                             (cons _id33171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id33181_ '())))
               (_E3313633151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3313633151_)))))
                                         (_E3313633151_)))))
                               (_E3313633151_))))
                       (_E3313633151_)))))
            (let () (_E3313533183_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx33090_)
      (let ((_e3309133101_ _stx33090_))
        (let ((_E3309333105_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3309133101_))))
          (let ((_E3309233129_
                 (lambda ()
                   (if (gx#stx-pair? _e3309133101_)
                       (let ((_e3309433109_ (gx#syntax-e _e3309133101_)))
                         (let ((_hd3309533112_ (##car _e3309433109_))
                               (_tl3309633114_ (##cdr _e3309433109_)))
                           (if (gx#stx-pair? _tl3309633114_)
                               (let ((_e3309733117_
                                      (gx#syntax-e _tl3309633114_)))
                                 (let ((_hd3309833120_ (##car _e3309733117_))
                                       (_tl3309933122_ (##cdr _e3309733117_)))
                                   (let ((_hd33125_ _hd3309833120_))
                                     (let ((_body33127_ _tl3309933122_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd33125_)
                                               (if (gx#stx-list? _body33127_)
                                                   (not (gx#stx-null?
                                                         _body33127_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map
                                             gx#user-binding-identifier
                                             _hd33125_)
                                            _body33127_)
                                           (_E3309333105_))))))
                               (_E3309333105_))))
                       (_E3309333105_)))))
            (let () (_E3309233129_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx33026_)
      (let ((_generate33028_
             (lambda (_clause33058_)
               (let ((_e3305933066_ _clause33058_))
                 (let ((_E3306133070_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx33026_
                           _clause33058_))))
                   (let ((_E3306033086_
                          (lambda ()
                            (if (gx#stx-pair? _e3305933066_)
                                (let ((_e3306233074_
                                       (gx#syntax-e _e3305933066_)))
                                  (let ((_hd3306333077_ (##car _e3306233074_))
                                        (_tl3306433079_ (##cdr _e3306233074_)))
                                    (let ((_hd33082_ _hd3306333077_))
                                      (let ((_body33084_ _tl3306433079_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd33082_)
                                                (if (gx#stx-list? _body33084_)
                                                    (not (gx#stx-null?
                                                          _body33084_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map
                                                    gx#user-binding-identifier
                                                    _hd33082_)
                                                   _body33084_)
                                             (gx#stx-source _clause33058_))
                                            (_E3306133070_))))))
                                (_E3306133070_)))))
                     (let () (_E3306033086_))))))))
        (let ((_e3302933036_ _stx33026_))
          (let ((_E3303133040_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e3302933036_))))
            (let ((_E3303033054_
                   (lambda ()
                     (if (gx#stx-pair? _e3302933036_)
                         (let ((_e3303233044_ (gx#syntax-e _e3302933036_)))
                           (let ((_hd3303333047_ (##car _e3303233044_))
                                 (_tl3303433049_ (##cdr _e3303233044_)))
                             (let ((_clauses33052_ _tl3303433049_))
                               (if (gx#stx-list? _clauses33052_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map
                                     _generate33028_
                                     _clauses33052_))
                                   (_E3303133040_)))))
                         (_E3303133040_)))))
              (let () (_E3303033054_))))))))
  (define gx#macro-expand-let-values
    (let ((_opt-lambda3292533016_
           (lambda (_stx32927_ _form32928_)
             (let ((_generate32930_
                    (lambda (_bind32973_)
                      (let ((_e3297432984_ _bind32973_))
                        (let ((_E3297632988_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; malformed binding"
                                  _stx32927_
                                  _bind32973_))))
                          (let ((_E3297533012_
                                 (lambda ()
                                   (if (gx#stx-pair? _e3297432984_)
                                       (let ((_e3297732992_
                                              (gx#syntax-e _e3297432984_)))
                                         (let ((_hd3297832995_
                                                (##car _e3297732992_))
                                               (_tl3297932997_
                                                (##cdr _e3297732992_)))
                                           (let ((_ids33000_ _hd3297832995_))
                                             (if (gx#stx-pair? _tl3297932997_)
                                                 (let ((_e3298033002_
                                                        (gx#syntax-e
                                                         _tl3297932997_)))
                                                   (let ((_hd3298133005_
                                                          (##car _e3298033002_))
                                                         (_tl3298233007_
                                                          (##cdr _e3298033002_)))
                                                     (let ((_expr33010_
                                                            _hd3298133005_))
                                                       (if (gx#stx-null?
                                                            _tl3298233007_)
                                                           (if (gx#stx-andmap
                                                                gx#identifier?
                                                                _ids33000_)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#user-binding-identifier
                              _ids33000_)
                             (cons _expr33010_ '()))
                       (_E3297632988_))
                   (_E3297632988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3297632988_)))))
                                       (_E3297632988_)))))
                            (let () (_E3297533012_))))))))
               (let ((_e3293132941_ _stx32927_))
                 (let ((_E3293332945_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e3293132941_))))
                   (let ((_E3293232969_
                          (lambda ()
                            (if (gx#stx-pair? _e3293132941_)
                                (let ((_e3293432949_
                                       (gx#syntax-e _e3293132941_)))
                                  (let ((_hd3293532952_ (##car _e3293432949_))
                                        (_tl3293632954_ (##cdr _e3293432949_)))
                                    (if (gx#stx-pair? _tl3293632954_)
                                        (let ((_e3293732957_
                                               (gx#syntax-e _tl3293632954_)))
                                          (let ((_hd3293832960_
                                                 (##car _e3293732957_))
                                                (_tl3293932962_
                                                 (##cdr _e3293732957_)))
                                            (let ((_hd32965_ _hd3293832960_))
                                              (let ((_body32967_
                                                     _tl3293932962_))
                                                (if (if (gx#stx-list?
                                                         _hd32965_)
                                                        (if (gx#stx-list?
                                                             _body32967_)
                                                            (not (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body32967_))
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-cons*
                                                     _form32928_
                                                     (gx#stx-map
                                                      _generate32930_
                                                      _hd32965_)
                                                     _body32967_)
                                                    (_E3293332945_))))))
                                        (_E3293332945_))))
                                (_E3293332945_)))))
                     (let () (_E3293232969_)))))))))
      (lambda _g40598_
        (let ((_g40597_ (length _g40598_)))
          (cond ((fx= _g40597_ 1)
                 (apply (lambda (_stx33019_)
                          (let ((_form33021_ '%#let-values))
                            (_opt-lambda3292533016_ _stx33019_ _form33021_)))
                        _g40598_))
                ((fx= _g40597_ 2)
                 (apply (lambda (_stx33023_ _form33024_)
                          (_opt-lambda3292533016_ _stx33023_ _form33024_))
                        _g40598_))
                (else (error "No clause matching arguments" _g40598_)))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx32924_)
      (gx#macro-expand-let-values _stx32924_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx32922_)
      (gx#macro-expand-let-values _stx32922_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx32813_)
      (let ((_e3281432840_ _stx32813_))
        (let ((_E3282632844_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3281432840_))))
          (let ((_E3281632886_
                 (lambda ()
                   (if (gx#stx-pair? _e3281432840_)
                       (let ((_e3282732848_ (gx#syntax-e _e3281432840_)))
                         (let ((_hd3282832851_ (##car _e3282732848_))
                               (_tl3282932853_ (##cdr _e3282732848_)))
                           (if (gx#stx-pair? _tl3282932853_)
                               (let ((_e3283032856_
                                      (gx#syntax-e _tl3282932853_)))
                                 (let ((_hd3283132859_ (##car _e3283032856_))
                                       (_tl3283232861_ (##cdr _e3283032856_)))
                                   (let ((_test32864_ _hd3283132859_))
                                     (if (gx#stx-pair? _tl3283232861_)
                                         (let ((_e3283332866_
                                                (gx#syntax-e _tl3283232861_)))
                                           (let ((_hd3283432869_
                                                  (##car _e3283332866_))
                                                 (_tl3283532871_
                                                  (##cdr _e3283332866_)))
                                             (let ((_K32874_ _hd3283432869_))
                                               (if (gx#stx-pair?
                                                    _tl3283532871_)
                                                   (let ((_e3283632876_
                                                          (gx#syntax-e
                                                           _tl3283532871_)))
                                                     (let ((_hd3283732879_
                                                            (##car _e3283632876_))
                                                           (_tl3283832881_
                                                            (##cdr _e3283632876_)))
                                                       (let ((_E32884_
                                                              _hd3283732879_))
                                                         (if (gx#stx-null?
                                                              _tl3283832881_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test32864_ _K32874_ _E32884_)
                         (_E3282632844_))
                     (_E3282632844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3282632844_)))))
                                         (_E3282632844_)))))
                               (_E3282632844_))))
                       (_E3282632844_)))))
            (let ((_E3281532918_
                   (lambda ()
                     (if (gx#stx-pair? _e3281432840_)
                         (let ((_e3281732890_ (gx#syntax-e _e3281432840_)))
                           (let ((_hd3281832893_ (##car _e3281732890_))
                                 (_tl3281932895_ (##cdr _e3281732890_)))
                             (if (gx#stx-pair? _tl3281932895_)
                                 (let ((_e3282032898_
                                        (gx#syntax-e _tl3281932895_)))
                                   (let ((_hd3282132901_ (##car _e3282032898_))
                                         (_tl3282232903_
                                          (##cdr _e3282032898_)))
                                     (let ((_test32906_ _hd3282132901_))
                                       (if (gx#stx-pair? _tl3282232903_)
                                           (let ((_e3282332908_
                                                  (gx#syntax-e
                                                   _tl3282232903_)))
                                             (let ((_hd3282432911_
                                                    (##car _e3282332908_))
                                                   (_tl3282532913_
                                                    (##cdr _e3282332908_)))
                                               (let ((_K32916_ _hd3282432911_))
                                                 (if (gx#stx-null?
                                                      _tl3282532913_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test32906_
                                                          _K32916_
                                                          '#!void)
                                                         (_E3281632886_))
                                                     (_E3281632886_)))))
                                           (_E3281632886_)))))
                                 (_E3281632886_))))
                         (_E3281632886_)))))
              (let () (_E3281532918_))))))))
  (define gx#free-identifier=?
    (lambda (_xid32801_ _yid32802_)
      (let ((_xe32804_ (gx#resolve-identifier _xid32801_))
            (_ye32805_ (gx#resolve-identifier _yid32802_)))
        (if (if _xe32804_ _ye32805_ '#f)
            (let ((_$e32807_ (eq? _xe32804_ _ye32805_)))
              (if _$e32807_
                  _$e32807_
                  (if (gx#binding? _xe32804_)
                      (if (gx#binding? _ye32805_)
                          (eq? (gx#binding-id _xe32804_)
                               (gx#binding-id _ye32805_))
                          '#f)
                      '#f)))
            (if (let ((_$e32810_ _xe32804_))
                  (if _$e32810_ _$e32810_ _ye32805_))
                '#f
                (gx#stx-eq? _xid32801_ _yid32802_))))))
  (define gx#bound-identifier=?
    (lambda (_xid32785_ _yid32786_)
      (let ((_context32788_
             (lambda (_e32799_)
               (if (gx#syntax-quote? _e32799_)
                   (gx#syntax-quote-context _e32799_)
                   (gx#current-expander-context)))))
        (let ((_marks32789_
               (lambda (_e32797_)
                 (if (symbol? _e32797_)
                     '()
                     (if (gx#identifier-wrap? _e32797_)
                         (gx#identifier-wrap-marks _e32797_)
                         (gx#syntax-quote-marks _e32797_))))))
          (let ((_unwrap32790_
                 (lambda (_e32795_)
                   (if (symbol? _e32795_)
                       _e32795_
                       (gx#syntax-local-unwrap _e32795_)))))
            (let ((_x32792_ (_unwrap32790_ _xid32785_))
                  (_y32793_ (_unwrap32790_ _yid32786_)))
              (if (gx#stx-eq? _x32792_ _y32793_)
                  (if (eq? (_context32788_ _x32792_) (_context32788_ _y32793_))
                      (andmap eq?
                              (_marks32789_ _x32792_)
                              (_marks32789_ _y32793_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx32783_)
      (if (gx#identifier? _stx32783_)
          (gx#core-identifier=? _stx32783_ '_)
          '#f)))
  (define gx#ellipsis?
    (lambda (_stx32781_)
      (if (gx#identifier? _stx32781_)
          (gx#core-identifier=? _stx32781_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x32779_)
      (if (gx#identifier? _x32779_)
          (if (not (gx#underscore? _x32779_)) _x32779_ '#f)
          '#f)))
  (define gx#check-duplicate-identifiers
    (let ((_opt-lambda3272332769_
           (lambda (_stx32725_ _where32726_)
             ((letrec ((_lp32728_
                        (lambda (_rest32730_)
                          (let ((_rest3273132739_ _rest32730_))
                            (let ((_E3273432743_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest3273132739_))))
                              (let ((_else3273332747_ (lambda () '#t)))
                                (let ((_K3273532757_
                                       (lambda (_rest32750_ _hd32751_)
                                         (if (not (gx#identifier? _hd32751_))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad identifier"
                                              _where32726_
                                              _hd32751_)
                                             (if (find (lambda (_g3275232754_)
                                                         (gx#bound-identifier=?
                                                          _g3275232754_
                                                          _hd32751_))
                                                       _rest32750_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Duplicate identifier"
                                                  _where32726_
                                                  _hd32751_)
                                                 (_lp32728_ _rest32750_))))))
                                  (if (##pair? _rest3273132739_)
                                      (let ((_hd3273632760_
                                             (##car _rest3273132739_))
                                            (_tl3273732762_
                                             (##cdr _rest3273132739_)))
                                        (let ((_hd32765_ _hd3273632760_))
                                          (let ((_rest32767_ _tl3273732762_))
                                            (_K3273532757_
                                             _rest32767_
                                             _hd32765_))))
                                      (_else3273332747_)))))))))
                _lp32728_)
              (gx#syntax->list _stx32725_)))))
      (lambda _g40600_
        (let ((_g40599_ (length _g40600_)))
          (cond ((fx= _g40599_ 1)
                 (apply (lambda (_stx32772_)
                          (let ((_where32774_ _stx32772_))
                            (_opt-lambda3272332769_ _stx32772_ _where32774_)))
                        _g40600_))
                ((fx= _g40599_ 2)
                 (apply (lambda (_stx32776_ _where32777_)
                          (_opt-lambda3272332769_ _stx32776_ _where32777_))
                        _g40600_))
                (else (error "No clause matching arguments" _g40600_)))))))
  (define gx#core-bind-values?
    (lambda (_stx32717_)
      (gx#stx-andmap
       (lambda (_x32719_)
         (let ((_$e32721_ (gx#identifier? _x32719_)))
           (if _$e32721_ _$e32721_ (gx#stx-false? _x32719_))))
       _stx32717_)))
  (define gx#core-bind-values!
    (let ((_opt-lambda3267932688_
           (lambda (_stx32681_ _rebind?32682_ _phi32683_ _ctx32684_)
             (gx#stx-for-each
              (lambda (_id32686_)
                (if (gx#identifier? _id32686_)
                    (gx#core-bind-runtime!
                     _id32686_
                     _rebind?32682_
                     _phi32683_
                     _ctx32684_)
                    '#!void))
              _stx32681_))))
      (lambda _g40602_
        (let ((_g40601_ (length _g40602_)))
          (cond ((fx= _g40601_ 1)
                 (apply (lambda (_stx32691_)
                          (let ((_rebind?32693_ '#f))
                            (let ((_phi32695_ (gx#current-expander-phi)))
                              (let ((_ctx32697_ (gx#current-expander-context)))
                                (_opt-lambda3267932688_
                                 _stx32691_
                                 _rebind?32693_
                                 _phi32695_
                                 _ctx32697_)))))
                        _g40602_))
                ((fx= _g40601_ 2)
                 (apply (lambda (_stx32699_ _rebind?32700_)
                          (let ((_phi32702_ (gx#current-expander-phi)))
                            (let ((_ctx32704_ (gx#current-expander-context)))
                              (_opt-lambda3267932688_
                               _stx32699_
                               _rebind?32700_
                               _phi32702_
                               _ctx32704_))))
                        _g40602_))
                ((fx= _g40601_ 3)
                 (apply (lambda (_stx32706_ _rebind?32707_ _phi32708_)
                          (let ((_ctx32710_ (gx#current-expander-context)))
                            (_opt-lambda3267932688_
                             _stx32706_
                             _rebind?32707_
                             _phi32708_
                             _ctx32710_)))
                        _g40602_))
                ((fx= _g40601_ 4)
                 (apply (lambda (_stx32712_
                                 _rebind?32713_
                                 _phi32714_
                                 _ctx32715_)
                          (_opt-lambda3267932688_
                           _stx32712_
                           _rebind?32713_
                           _phi32714_
                           _ctx32715_))
                        _g40602_))
                (else (error "No clause matching arguments" _g40602_)))))))
  (define gx#core-quote-bind-values
    (lambda (_stx32676_)
      (gx#stx-map
       (lambda (_x32678_)
         (if (gx#identifier? _x32678_) (gx#core-quote-syntax _x32678_) '#f))
       _stx32676_)))
  (define gx#core-runtime-ref?
    (lambda (_stx32669_)
      (if (gx#identifier? _stx32669_)
          (let ((_bind32671_ (gx#resolve-identifier _stx32669_)))
            (let ((_$e32673_ (not _bind32671_)))
              (if _$e32673_ _$e32673_ (gx#runtime-binding? _bind32671_))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id32658_ _form32659_)
      (let ((_bind32661_ (gx#resolve-identifier _id32658_)))
        (if (gx#runtime-binding? _bind32661_)
            (gx#core-quote-syntax _id32658_)
            (if (not _bind32661_)
                (if (let ((_$e32663_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e32663_
                          _$e32663_
                          (let ((_$e32666_
                                 (gx#core-context-rebind?
                                  (gx#core-context-top))))
                            (if _$e32666_
                                _$e32666_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id32658_))))))
                    (gx#core-quote-syntax _id32658_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form32659_
                     _id32658_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form32659_
                 _id32658_))))))
  (define gx#core-bind-runtime!
    (let ((_opt-lambda3261532629_
           (lambda (_id32617_ _rebind?32618_ _phi32619_ _ctx32620_)
             (let ((_key32622_ (gx#core-identifier-key _id32617_)))
               (let ((_eid32624_
                      (gx#make-binding-id
                       _key32622_
                       '#f
                       _phi32619_
                       _ctx32620_)))
                 (let ((_bind32626_
                        (if (gx#module-context? _ctx32620_)
                            (gx#make-module-binding
                             _eid32624_
                             _key32622_
                             _phi32619_
                             _ctx32620_)
                            (if (gx#top-context? _ctx32620_)
                                (gx#make-top-binding
                                 _eid32624_
                                 _key32622_
                                 _phi32619_)
                                (if (gx#local-context? _ctx32620_)
                                    (gx#make-local-binding
                                     _eid32624_
                                     _key32622_
                                     _phi32619_)
                                    (gx#make-runtime-binding
                                     _eid32624_
                                     _key32622_
                                     _phi32619_))))))
                   (let ()
                     (gx#bind-identifier!
                      _id32617_
                      _bind32626_
                      _rebind?32618_
                      _phi32619_
                      _ctx32620_))))))))
      (lambda _g40604_
        (let ((_g40603_ (length _g40604_)))
          (cond ((fx= _g40603_ 1)
                 (apply (lambda (_id32632_)
                          (let ((_rebind?32634_ '#f))
                            (let ((_phi32636_ (gx#current-expander-phi)))
                              (let ((_ctx32638_ (gx#current-expander-context)))
                                (_opt-lambda3261532629_
                                 _id32632_
                                 _rebind?32634_
                                 _phi32636_
                                 _ctx32638_)))))
                        _g40604_))
                ((fx= _g40603_ 2)
                 (apply (lambda (_id32640_ _rebind?32641_)
                          (let ((_phi32643_ (gx#current-expander-phi)))
                            (let ((_ctx32645_ (gx#current-expander-context)))
                              (_opt-lambda3261532629_
                               _id32640_
                               _rebind?32641_
                               _phi32643_
                               _ctx32645_))))
                        _g40604_))
                ((fx= _g40603_ 3)
                 (apply (lambda (_id32647_ _rebind?32648_ _phi32649_)
                          (let ((_ctx32651_ (gx#current-expander-context)))
                            (_opt-lambda3261532629_
                             _id32647_
                             _rebind?32648_
                             _phi32649_
                             _ctx32651_)))
                        _g40604_))
                ((fx= _g40603_ 4)
                 (apply (lambda (_id32653_
                                 _rebind?32654_
                                 _phi32655_
                                 _ctx32656_)
                          (_opt-lambda3261532629_
                           _id32653_
                           _rebind?32654_
                           _phi32655_
                           _ctx32656_))
                        _g40604_))
                (else (error "No clause matching arguments" _g40604_)))))))
  (define gx#core-bind-runtime-reference!
    (let ((_opt-lambda3257032583_
           (lambda (_id32572_ _eid32573_ _rebind?32574_ _phi32575_ _ctx32576_)
             (let ((_key32578_ (gx#core-identifier-key _id32572_)))
               (let ((_bind32580_
                      (if (gx#module-context? _ctx32576_)
                          (gx#make-module-binding
                           _eid32573_
                           _key32578_
                           _phi32575_
                           _ctx32576_)
                          (if (gx#top-context? _ctx32576_)
                              (gx#make-top-binding
                               _eid32573_
                               _key32578_
                               _phi32575_)
                              (gx#make-runtime-binding
                               _eid32573_
                               _key32578_
                               _phi32575_)))))
                 (let ()
                   (gx#bind-identifier!
                    _id32572_
                    _bind32580_
                    _rebind?32574_
                    _phi32575_
                    _ctx32576_)))))))
      (lambda _g40606_
        (let ((_g40605_ (length _g40606_)))
          (cond ((fx= _g40605_ 2)
                 (apply (lambda (_id32586_ _eid32587_)
                          (let ((_rebind?32589_ '#f))
                            (let ((_phi32591_ (gx#current-expander-phi)))
                              (let ((_ctx32593_ (gx#current-expander-context)))
                                (_opt-lambda3257032583_
                                 _id32586_
                                 _eid32587_
                                 _rebind?32589_
                                 _phi32591_
                                 _ctx32593_)))))
                        _g40606_))
                ((fx= _g40605_ 3)
                 (apply (lambda (_id32595_ _eid32596_ _rebind?32597_)
                          (let ((_phi32599_ (gx#current-expander-phi)))
                            (let ((_ctx32601_ (gx#current-expander-context)))
                              (_opt-lambda3257032583_
                               _id32595_
                               _eid32596_
                               _rebind?32597_
                               _phi32599_
                               _ctx32601_))))
                        _g40606_))
                ((fx= _g40605_ 4)
                 (apply (lambda (_id32603_
                                 _eid32604_
                                 _rebind?32605_
                                 _phi32606_)
                          (let ((_ctx32608_ (gx#current-expander-context)))
                            (_opt-lambda3257032583_
                             _id32603_
                             _eid32604_
                             _rebind?32605_
                             _phi32606_
                             _ctx32608_)))
                        _g40606_))
                ((fx= _g40605_ 5)
                 (apply (lambda (_id32610_
                                 _eid32611_
                                 _rebind?32612_
                                 _phi32613_
                                 _ctx32614_)
                          (_opt-lambda3257032583_
                           _id32610_
                           _eid32611_
                           _rebind?32612_
                           _phi32613_
                           _ctx32614_))
                        _g40606_))
                (else (error "No clause matching arguments" _g40606_)))))))
  (define gx#core-bind-extern!
    (let ((_opt-lambda3253032538_
           (lambda (_id32532_ _eid32533_ _rebind?32534_ _phi32535_ _ctx32536_)
             (gx#bind-identifier!
              _id32532_
              (gx#make-extern-binding
               _eid32533_
               (gx#core-identifier-key _id32532_)
               _phi32535_)
              _rebind?32534_
              _phi32535_
              _ctx32536_))))
      (lambda _g40608_
        (let ((_g40607_ (length _g40608_)))
          (cond ((fx= _g40607_ 2)
                 (apply (lambda (_id32541_ _eid32542_)
                          (let ((_rebind?32544_ '#f))
                            (let ((_phi32546_ (gx#current-expander-phi)))
                              (let ((_ctx32548_ (gx#current-expander-context)))
                                (_opt-lambda3253032538_
                                 _id32541_
                                 _eid32542_
                                 _rebind?32544_
                                 _phi32546_
                                 _ctx32548_)))))
                        _g40608_))
                ((fx= _g40607_ 3)
                 (apply (lambda (_id32550_ _eid32551_ _rebind?32552_)
                          (let ((_phi32554_ (gx#current-expander-phi)))
                            (let ((_ctx32556_ (gx#current-expander-context)))
                              (_opt-lambda3253032538_
                               _id32550_
                               _eid32551_
                               _rebind?32552_
                               _phi32554_
                               _ctx32556_))))
                        _g40608_))
                ((fx= _g40607_ 4)
                 (apply (lambda (_id32558_
                                 _eid32559_
                                 _rebind?32560_
                                 _phi32561_)
                          (let ((_ctx32563_ (gx#current-expander-context)))
                            (_opt-lambda3253032538_
                             _id32558_
                             _eid32559_
                             _rebind?32560_
                             _phi32561_
                             _ctx32563_)))
                        _g40608_))
                ((fx= _g40607_ 5)
                 (apply (lambda (_id32565_
                                 _eid32566_
                                 _rebind?32567_
                                 _phi32568_
                                 _ctx32569_)
                          (_opt-lambda3253032538_
                           _id32565_
                           _eid32566_
                           _rebind?32567_
                           _phi32568_
                           _ctx32569_))
                        _g40608_))
                (else (error "No clause matching arguments" _g40608_)))))))
  (define gx#core-bind-syntax!
    (let ((_opt-lambda3248432498_
           (lambda (_id32486_ _e32487_ _rebind?32488_ _phi32489_ _ctx32490_)
             (gx#bind-identifier!
              _id32486_
              (let ((_key32495_ (gx#core-identifier-key _id32486_))
                    (_e32496_
                     (if (let ((_$e32492_ (gx#expander? _e32487_)))
                           (if _$e32492_
                               _$e32492_
                               (gx#expander-context? _e32487_)))
                         _e32487_
                         (gx#make-user-expander
                          _e32487_
                          _ctx32490_
                          _phi32489_))))
                (gx#make-syntax-binding
                 (gx#make-binding-id _key32495_ '#t _phi32489_ _ctx32490_)
                 _key32495_
                 _phi32489_
                 _e32496_))
              _rebind?32488_
              _phi32489_
              _ctx32490_))))
      (lambda _g40610_
        (let ((_g40609_ (length _g40610_)))
          (cond ((fx= _g40609_ 2)
                 (apply (lambda (_id32501_ _e32502_)
                          (let ((_rebind?32504_ '#f))
                            (let ((_phi32506_ (gx#current-expander-phi)))
                              (let ((_ctx32508_ (gx#current-expander-context)))
                                (_opt-lambda3248432498_
                                 _id32501_
                                 _e32502_
                                 _rebind?32504_
                                 _phi32506_
                                 _ctx32508_)))))
                        _g40610_))
                ((fx= _g40609_ 3)
                 (apply (lambda (_id32510_ _e32511_ _rebind?32512_)
                          (let ((_phi32514_ (gx#current-expander-phi)))
                            (let ((_ctx32516_ (gx#current-expander-context)))
                              (_opt-lambda3248432498_
                               _id32510_
                               _e32511_
                               _rebind?32512_
                               _phi32514_
                               _ctx32516_))))
                        _g40610_))
                ((fx= _g40609_ 4)
                 (apply (lambda (_id32518_ _e32519_ _rebind?32520_ _phi32521_)
                          (let ((_ctx32523_ (gx#current-expander-context)))
                            (_opt-lambda3248432498_
                             _id32518_
                             _e32519_
                             _rebind?32520_
                             _phi32521_
                             _ctx32523_)))
                        _g40610_))
                ((fx= _g40609_ 5)
                 (apply (lambda (_id32525_
                                 _e32526_
                                 _rebind?32527_
                                 _phi32528_
                                 _ctx32529_)
                          (_opt-lambda3248432498_
                           _id32525_
                           _e32526_
                           _rebind?32527_
                           _phi32528_
                           _ctx32529_))
                        _g40610_))
                (else (error "No clause matching arguments" _g40610_)))))))
  (define gx#core-bind-root-syntax!
    (let ((_opt-lambda3246732473_
           (lambda (_id32469_ _e32470_ _rebind?32471_)
             (gx#core-bind-syntax!
              _id32469_
              _e32470_
              _rebind?32471_
              '0
              (gx#core-context-root)))))
      (lambda _g40612_
        (let ((_g40611_ (length _g40612_)))
          (cond ((fx= _g40611_ 2)
                 (apply (lambda (_id32476_ _e32477_)
                          (let ((_rebind?32479_ '#f))
                            (_opt-lambda3246732473_
                             _id32476_
                             _e32477_
                             _rebind?32479_)))
                        _g40612_))
                ((fx= _g40611_ 3)
                 (apply (lambda (_id32481_ _e32482_ _rebind?32483_)
                          (_opt-lambda3246732473_
                           _id32481_
                           _e32482_
                           _rebind?32483_))
                        _g40612_))
                (else (error "No clause matching arguments" _g40612_)))))))
  (define gx#core-bind-alias!
    (let ((_opt-lambda3242532435_
           (lambda (_id32427_
                    _alias-id32428_
                    _rebind?32429_
                    _phi32430_
                    _ctx32431_)
             (gx#bind-identifier!
              _id32427_
              (let ((_key32433_ (gx#core-identifier-key _id32427_)))
                (gx#make-alias-binding
                 (gx#make-binding-id _key32433_ '#t _phi32430_ _ctx32431_)
                 _key32433_
                 _phi32430_
                 _alias-id32428_))
              _rebind?32429_
              _phi32430_
              _ctx32431_))))
      (lambda _g40614_
        (let ((_g40613_ (length _g40614_)))
          (cond ((fx= _g40613_ 2)
                 (apply (lambda (_id32438_ _alias-id32439_)
                          (let ((_rebind?32441_ '#f))
                            (let ((_phi32443_ (gx#current-expander-phi)))
                              (let ((_ctx32445_ (gx#current-expander-context)))
                                (_opt-lambda3242532435_
                                 _id32438_
                                 _alias-id32439_
                                 _rebind?32441_
                                 _phi32443_
                                 _ctx32445_)))))
                        _g40614_))
                ((fx= _g40613_ 3)
                 (apply (lambda (_id32447_ _alias-id32448_ _rebind?32449_)
                          (let ((_phi32451_ (gx#current-expander-phi)))
                            (let ((_ctx32453_ (gx#current-expander-context)))
                              (_opt-lambda3242532435_
                               _id32447_
                               _alias-id32448_
                               _rebind?32449_
                               _phi32451_
                               _ctx32453_))))
                        _g40614_))
                ((fx= _g40613_ 4)
                 (apply (lambda (_id32455_
                                 _alias-id32456_
                                 _rebind?32457_
                                 _phi32458_)
                          (let ((_ctx32460_ (gx#current-expander-context)))
                            (_opt-lambda3242532435_
                             _id32455_
                             _alias-id32456_
                             _rebind?32457_
                             _phi32458_
                             _ctx32460_)))
                        _g40614_))
                ((fx= _g40613_ 5)
                 (apply (lambda (_id32462_
                                 _alias-id32463_
                                 _rebind?32464_
                                 _phi32465_
                                 _ctx32466_)
                          (_opt-lambda3242532435_
                           _id32462_
                           _alias-id32463_
                           _rebind?32464_
                           _phi32465_
                           _ctx32466_))
                        _g40614_))
                (else (error "No clause matching arguments" _g40614_)))))))
  (define gx#make-binding-id
    (let ((_opt-lambda3238232397_
           (lambda (_key32384_ _syntax?32385_ _phi32386_ _ctx32387_)
             (if (uninterned-symbol? _key32384_)
                 (gensym 'L)
                 (if (pair? _key32384_)
                     (gensym (car _key32384_))
                     (if (gx#top-context? _ctx32387_)
                         (let ((_ns32389_
                                (gx#core-context-namespace _ctx32387_)))
                           (if (if (fxzero? _phi32386_)
                                   (not _syntax?32385_)
                                   '#f)
                               (if _ns32389_
                                   (make-symbol _ns32389_ '"#" _key32384_)
                                   _key32384_)
                               (if _syntax?32385_
                                   (make-symbol
                                    (let ((_$e32391_ _ns32389_))
                                      (if _$e32391_ _$e32391_ '""))
                                    '"[:"
                                    (number->string _phi32386_)
                                    '":]#"
                                    _key32384_)
                                   (make-symbol
                                    (let ((_$e32394_ _ns32389_))
                                      (if _$e32394_ _$e32394_ '""))
                                    '"["
                                    (number->string _phi32386_)
                                    '"]#"
                                    _key32384_))))
                         (gensym _key32384_)))))))
      (lambda _g40616_
        (let ((_g40615_ (length _g40616_)))
          (cond ((fx= _g40615_ 1)
                 (apply (lambda (_key32400_)
                          (let ((_syntax?32402_ '#f))
                            (let ((_phi32404_ (gx#current-expander-phi)))
                              (let ((_ctx32406_ (gx#current-expander-context)))
                                (_opt-lambda3238232397_
                                 _key32400_
                                 _syntax?32402_
                                 _phi32404_
                                 _ctx32406_)))))
                        _g40616_))
                ((fx= _g40615_ 2)
                 (apply (lambda (_key32408_ _syntax?32409_)
                          (let ((_phi32411_ (gx#current-expander-phi)))
                            (let ((_ctx32413_ (gx#current-expander-context)))
                              (_opt-lambda3238232397_
                               _key32408_
                               _syntax?32409_
                               _phi32411_
                               _ctx32413_))))
                        _g40616_))
                ((fx= _g40615_ 3)
                 (apply (lambda (_key32415_ _syntax?32416_ _phi32417_)
                          (let ((_ctx32419_ (gx#current-expander-context)))
                            (_opt-lambda3238232397_
                             _key32415_
                             _syntax?32416_
                             _phi32417_
                             _ctx32419_)))
                        _g40616_))
                ((fx= _g40615_ 4)
                 (apply (lambda (_key32421_
                                 _syntax?32422_
                                 _phi32423_
                                 _ctx32424_)
                          (_opt-lambda3238232397_
                           _key32421_
                           _syntax?32422_
                           _phi32423_
                           _ctx32424_))
                        _g40616_))
                (else (error "No clause matching arguments" _g40616_))))))))
