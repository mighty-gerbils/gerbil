(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1693679894)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx12536_)
        (letrec ((_expand-special12538_
                  (lambda (_hd12540_ _K12541_ _rest12542_ _r12543_)
                    (_K12541_
                     _rest12542_
                     (cons (gx#core-expand-top _hd12540_) _r12543_)))))
          (gx#core-expand-block__0 _stx12536_ _expand-special12538_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx12289_)
        (letrec ((_expand-special12291_
                  (lambda (_hd12411_ _K12412_ _rest12413_ _r12414_)
                    (let* ((_K12418_
                            (lambda (_e12416_)
                              (_K12412_ _rest12413_ (cons _e12416_ _r12414_))))
                           (_e1241912448_ _hd12411_)
                           (_E1244312452_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1241912448_)))
                           (_E1243912464_
                            (lambda ()
                              (if (gx#stx-pair? _e1241912448_)
                                  (let ((_e1244412456_
                                         (gx#syntax-e _e1241912448_)))
                                    (let ((_hd1244512459_
                                           (##car _e1244412456_))
                                          (_tl1244612461_
                                           (##cdr _e1244412456_)))
                                      (if (and (gx#identifier? _hd1244512459_)
                                               (gx#core-identifier=?
                                                _hd1244512459_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K12418_
                                               (gx#core-expand-define-runtime%
                                                _hd12411_))
                                              (_E1244312452_))
                                          (_E1244312452_))))
                                  (_E1244312452_))))
                           (_E1243512476_
                            (lambda ()
                              (if (gx#stx-pair? _e1241912448_)
                                  (let ((_e1244012468_
                                         (gx#syntax-e _e1241912448_)))
                                    (let ((_hd1244112471_
                                           (##car _e1244012468_))
                                          (_tl1244212473_
                                           (##cdr _e1244012468_)))
                                      (if (and (gx#identifier? _hd1244112471_)
                                               (gx#core-identifier=?
                                                _hd1244112471_
                                                '%#define-alias))
                                          (if '#t
                                              (_K12418_
                                               (gx#core-expand-define-alias%
                                                _hd12411_))
                                              (_E1243912464_))
                                          (_E1243912464_))))
                                  (_E1243912464_))))
                           (_E1242512488_
                            (lambda ()
                              (if (gx#stx-pair? _e1241912448_)
                                  (let ((_e1243612480_
                                         (gx#syntax-e _e1241912448_)))
                                    (let ((_hd1243712483_
                                           (##car _e1243612480_))
                                          (_tl1243812485_
                                           (##cdr _e1243612480_)))
                                      (if (and (gx#identifier? _hd1243712483_)
                                               (gx#core-identifier=?
                                                _hd1243712483_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K12418_
                                               (gx#core-expand-define-syntax%
                                                _hd12411_))
                                              (_E1243512476_))
                                          (_E1243512476_))))
                                  (_E1243512476_))))
                           (_E1242112520_
                            (lambda ()
                              (if (gx#stx-pair? _e1241912448_)
                                  (let ((_e1242612492_
                                         (gx#syntax-e _e1241912448_)))
                                    (let ((_hd1242712495_
                                           (##car _e1242612492_))
                                          (_tl1242812497_
                                           (##cdr _e1242612492_)))
                                      (if (and (gx#identifier? _hd1242712495_)
                                               (gx#core-identifier=?
                                                _hd1242712495_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1242812497_)
                                              (let ((_e1242912500_
                                                     (gx#syntax-e
                                                      _tl1242812497_)))
                                                (let ((_hd1243012503_
                                                       (##car _e1242912500_))
                                                      (_tl1243112505_
                                                       (##cdr _e1242912500_)))
                                                  (let ((_hd-bind12508_
                                                         _hd1243012503_))
                                                    (if (gx#stx-pair?
                                                         _tl1243112505_)
                                                        (let ((_e1243212510_
                                                               (gx#syntax-e
                                                                _tl1243112505_)))
                                                          (let ((_hd1243312513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1243212510_))
                        (_tl1243412515_ (##cdr _e1243212510_)))
                    (let ((_expr12518_ _hd1243312513_))
                      (if (gx#stx-null? _tl1243412515_)
                          (if (gx#core-bind-values? _hd-bind12508_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind12508_)
                                (_K12418_ _hd12411_))
                              (_E1242512488_))
                          (_E1242512488_)))))
                (_E1242512488_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1242512488_))
                                          (_E1242512488_))))
                                  (_E1242512488_))))
                           (_E1242012532_
                            (lambda ()
                              (if (gx#stx-pair? _e1241912448_)
                                  (let ((_e1242212524_
                                         (gx#syntax-e _e1241912448_)))
                                    (let ((_hd1242312527_
                                           (##car _e1242212524_))
                                          (_tl1242412529_
                                           (##cdr _e1242212524_)))
                                      (if (and (gx#identifier? _hd1242312527_)
                                               (gx#core-identifier=?
                                                _hd1242312527_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K12418_
                                               (gx#core-expand-begin-syntax%
                                                _hd12411_))
                                              (_E1242112520_))
                                          (_E1242112520_))))
                                  (_E1242112520_)))))
                      (_E1242012532_))))
                 (_eval-body12292_
                  (lambda (_rbody12300_)
                    (let _lp12302_ ((_rest12304_ _rbody12300_)
                                    (_body12305_ '())
                                    (_ebody12306_ '()))
                      (let* ((_rest1230712315_ _rest12304_)
                             (_else1230912323_
                              (lambda ()
                                (values _body12305_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody12306_)
                                          (gx#stx-source _stx12289_))))))
                             (_K1231112399_
                              (lambda (_rest12326_ _hd12327_)
                                (let* ((_e1232812345_ _hd12327_)
                                       (_E1234012349_
                                        (lambda ()
                                          (_lp12302_
                                           _rest12326_
                                           (cons _hd12327_ _body12305_)
                                           (cons _hd12327_ _ebody12306_))))
                                       (_E1233012361_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1232812345_)
                                              (let ((_e1234112353_
                                                     (gx#syntax-e
                                                      _e1232812345_)))
                                                (let ((_hd1234212356_
                                                       (##car _e1234112353_))
                                                      (_tl1234312358_
                                                       (##cdr _e1234112353_)))
                                                  (if (and (gx#identifier?
                                                            _hd1234212356_)
                                                           (gx#core-identifier=?
                                                            _hd1234212356_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp12302_
                                                           _rest12326_
                                                           (cons _hd12327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12305_)
                   _ebody12306_)
                  (_E1234012349_))
              (_E1234012349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1234012349_))))
                                       (_E1232912395_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1232812345_)
                                              (let ((_e1233112365_
                                                     (gx#syntax-e
                                                      _e1232812345_)))
                                                (let ((_hd1233212368_
                                                       (##car _e1233112365_))
                                                      (_tl1233312370_
                                                       (##cdr _e1233112365_)))
                                                  (if (and (gx#identifier?
                                                            _hd1233212368_)
                                                           (gx#core-identifier=?
                                                            _hd1233212368_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1233312370_)
                                                          (let ((_e1233412373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1233312370_)))
                    (let ((_hd1233512376_ (##car _e1233412373_))
                          (_tl1233612378_ (##cdr _e1233412373_)))
                      (let ((_hd-bind12381_ _hd1233512376_))
                        (if (gx#stx-pair? _tl1233612378_)
                            (let ((_e1233712383_ (gx#syntax-e _tl1233612378_)))
                              (let ((_hd1233812386_ (##car _e1233712383_))
                                    (_tl1233912388_ (##cdr _e1233712383_)))
                                (let ((_expr12391_ _hd1233812386_))
                                  (if (gx#stx-null? _tl1233912388_)
                                      (if '#t
                                          (let ((_ehd12393_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind12381_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr12391_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd12327_))))
                                            (_lp12302_
                                             _rest12326_
                                             (cons _ehd12393_ _body12305_)
                                             (cons _ehd12393_ _ebody12306_)))
                                          (_E1233012361_))
                                      (_E1233012361_)))))
                            (_E1233012361_)))))
                  (_E1233012361_))
              (_E1233012361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1233012361_)))))
                                  (_E1232912395_)))))
                        (if (##pair? _rest1230712315_)
                            (let ((_hd1231212402_ (##car _rest1230712315_))
                                  (_tl1231312404_ (##cdr _rest1230712315_)))
                              (let* ((_hd12407_ _hd1231212402_)
                                     (_rest12409_ _tl1231312404_))
                                (_K1231112399_ _rest12409_ _hd12407_)))
                            (_else1230912323_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody12295_
                     (gx#core-expand-block__1
                      _stx12289_
                      _expand-special12291_
                      '#f))
                    (_g12559_ (_eval-body12292_ _rbody12295_)))
               (begin
                 (let ((_g12560_
                        (if (##values? _g12559_)
                            (##vector-length _g12559_)
                            1)))
                   (if (not (##fx= _g12560_ 2))
                       (error "Context expects 2 values" _g12560_)))
                 (let ((_expanded-body12297_ (##vector-ref _g12559_ 0))
                       (_value12298_ (##vector-ref _g12559_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body12297_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value12298_ '())))
                    (gx#stx-source _stx12289_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx12259_)
        (let* ((_e1226012267_ _stx12259_)
               (_E1226212271_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1226012267_)))
               (_E1226112285_
                (lambda ()
                  (if (gx#stx-pair? _e1226012267_)
                      (let ((_e1226312275_ (gx#syntax-e _e1226012267_)))
                        (let ((_hd1226412278_ (##car _e1226312275_))
                              (_tl1226512280_ (##cdr _e1226312275_)))
                          (let ((_body12283_ _tl1226512280_))
                            (if (gx#stx-list? _body12283_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body12283_)
                                 (gx#stx-source _stx12259_))
                                (_E1226212271_)))))
                      (_E1226212271_)))))
          (_E1226112285_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx12257_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx12257_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx12203_)
        (let* ((_e1220412217_ _stx12203_)
               (_E1220612221_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1220412217_)))
               (_E1220512253_
                (lambda ()
                  (if (gx#stx-pair? _e1220412217_)
                      (let ((_e1220712225_ (gx#syntax-e _e1220412217_)))
                        (let ((_hd1220812228_ (##car _e1220712225_))
                              (_tl1220912230_ (##cdr _e1220712225_)))
                          (if (gx#stx-pair? _tl1220912230_)
                              (let ((_e1221012233_
                                     (gx#syntax-e _tl1220912230_)))
                                (let ((_hd1221112236_ (##car _e1221012233_))
                                      (_tl1221212238_ (##cdr _e1221012233_)))
                                  (let ((_ann12241_ _hd1221112236_))
                                    (if (gx#stx-pair? _tl1221212238_)
                                        (let ((_e1221312243_
                                               (gx#syntax-e _tl1221212238_)))
                                          (let ((_hd1221412246_
                                                 (##car _e1221312243_))
                                                (_tl1221512248_
                                                 (##cdr _e1221312243_)))
                                            (let ((_expr12251_ _hd1221412246_))
                                              (if (gx#stx-null? _tl1221512248_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann12241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr12251_) '())))
               (gx#stx-source _stx12203_))
              (_E1220612221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1220612221_)))))
                                        (_E1220612221_)))))
                              (_E1220612221_))))
                      (_E1220612221_)))))
          (_E1220512253_))))
    (define gx#core-expand-local-block
      (lambda (_stx11927_ _body11928_)
        (letrec ((_expand-special11930_
                  (lambda (_hd12198_ _K12199_ _rest12200_ _r12201_)
                    (_K12199_
                     '()
                     (cons (_expand-internal11931_ _hd12198_ _rest12200_)
                           _r12201_))))
                 (_expand-internal11931_
                  (lambda (_hd12194_ _rest12195_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal11933_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd12194_ _rest12195_))
                          (gx#stx-source _stx11927_))
                         _expand-internal-special11932_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj12553 (make-object gx#local-context::t '5)))
                       (gx#local-context:::init!__0 __obj12553)
                       __obj12553))))
                 (_expand-internal-special11932_
                  (lambda (_hd12089_ _K12090_ _rest12091_ _r12092_)
                    (let* ((_e1209312118_ _hd12089_)
                           (_E1211312122_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1209312118_)))
                           (_E1210912134_
                            (lambda ()
                              (if (gx#stx-pair? _e1209312118_)
                                  (let ((_e1211412126_
                                         (gx#syntax-e _e1209312118_)))
                                    (let ((_hd1211512129_
                                           (##car _e1211412126_))
                                          (_tl1211612131_
                                           (##cdr _e1211412126_)))
                                      (if (and (gx#identifier? _hd1211512129_)
                                               (gx#core-identifier=?
                                                _hd1211512129_
                                                '%#declare))
                                          (if '#t
                                              (_K12090_
                                               _rest12091_
                                               (cons (gx#core-expand-declare%
                                                      _hd12089_)
                                                     _r12092_))
                                              (_E1211312122_))
                                          (_E1211312122_))))
                                  (_E1211312122_))))
                           (_E1210512146_
                            (lambda ()
                              (if (gx#stx-pair? _e1209312118_)
                                  (let ((_e1211012138_
                                         (gx#syntax-e _e1209312118_)))
                                    (let ((_hd1211112141_
                                           (##car _e1211012138_))
                                          (_tl1211212143_
                                           (##cdr _e1211012138_)))
                                      (if (and (gx#identifier? _hd1211112141_)
                                               (gx#core-identifier=?
                                                _hd1211112141_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd12089_)
                                                (_K12090_
                                                 _rest12091_
                                                 _r12092_))
                                              (_E1210912134_))
                                          (_E1210912134_))))
                                  (_E1210912134_))))
                           (_E1209512158_
                            (lambda ()
                              (if (gx#stx-pair? _e1209312118_)
                                  (let ((_e1210612150_
                                         (gx#syntax-e _e1209312118_)))
                                    (let ((_hd1210712153_
                                           (##car _e1210612150_))
                                          (_tl1210812155_
                                           (##cdr _e1210612150_)))
                                      (if (and (gx#identifier? _hd1210712153_)
                                               (gx#core-identifier=?
                                                _hd1210712153_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd12089_)
                                                (_K12090_
                                                 _rest12091_
                                                 _r12092_))
                                              (_E1210512146_))
                                          (_E1210512146_))))
                                  (_E1210512146_))))
                           (_E1209412190_
                            (lambda ()
                              (if (gx#stx-pair? _e1209312118_)
                                  (let ((_e1209612162_
                                         (gx#syntax-e _e1209312118_)))
                                    (let ((_hd1209712165_
                                           (##car _e1209612162_))
                                          (_tl1209812167_
                                           (##cdr _e1209612162_)))
                                      (if (and (gx#identifier? _hd1209712165_)
                                               (gx#core-identifier=?
                                                _hd1209712165_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1209812167_)
                                              (let ((_e1209912170_
                                                     (gx#syntax-e
                                                      _tl1209812167_)))
                                                (let ((_hd1210012173_
                                                       (##car _e1209912170_))
                                                      (_tl1210112175_
                                                       (##cdr _e1209912170_)))
                                                  (let ((_hd-bind12178_
                                                         _hd1210012173_))
                                                    (if (gx#stx-pair?
                                                         _tl1210112175_)
                                                        (let ((_e1210212180_
                                                               (gx#syntax-e
                                                                _tl1210112175_)))
                                                          (let ((_hd1210312183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1210212180_))
                        (_tl1210412185_ (##cdr _e1210212180_)))
                    (let ((_expr12188_ _hd1210312183_))
                      (if (gx#stx-null? _tl1210412185_)
                          (if (gx#core-bind-values? _hd-bind12178_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind12178_)
                                (_K12090_
                                 _rest12091_
                                 (cons _hd12089_ _r12092_)))
                              (_E1209512158_))
                          (_E1209512158_)))))
                (_E1209512158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1209512158_))
                                          (_E1209512158_))))
                                  (_E1209512158_)))))
                      (_E1209412190_))))
                 (_wrap-internal11933_
                  (lambda (_rbody11935_)
                    (let _lp11937_ ((_rest11939_ _rbody11935_)
                                    (_decls11940_ '())
                                    (_bind11941_ '())
                                    (_body11942_ '()))
                      (let* ((_e1194311950_ _rest11939_)
                             (_E1194511999_
                              (lambda ()
                                (let* ((_body11994_
                                        (let* ((_body1195311963_ _body11942_)
                                               (_else1195611971_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body11942_)
                                                   (gx#stx-source
                                                    _stx11927_)))))
                                          (let ((_K1196111991_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _stx11927_)))
                                                (_K1195811977_
                                                 (lambda (_expr11975_)
                                                   _expr11975_)))
                                            (let ((_try-match1195511987_
                                                   (lambda ()
                                                     (if (##pair? _body1195311963_)
                                                         (let ((_tl1196011982_
                                                                (##cdr _body1195311963_))
                                                               (_hd1195911980_
                                                                (##car _body1195311963_)))
                                                           (if (##null? _tl1196011982_)
                                                               (let ((_expr11985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1195911980_))
                         (_K1195811977_ _expr11985_))
                       (_else1195611971_)))
                 (_else1195611971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body1195311963_)
                                                  (_K1196111991_)
                                                  (_try-match1195511987_))))))
                                       (_body11996_
                                        (if (null? _bind11941_)
                                            _body11994_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind11941_
                                                         (cons _body11994_
                                                               '())))
                                             (gx#stx-source _stx11927_)))))
                                  (if (null? _decls11940_)
                                      _body11996_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls11940_
                                                   (cons _body11996_ '())))
                                       (gx#stx-source _stx11927_))))))
                             (_E1194412085_
                              (lambda ()
                                (if (gx#stx-pair? _e1194311950_)
                                    (let ((_e1194612003_
                                           (gx#syntax-e _e1194311950_)))
                                      (let ((_hd1194712006_
                                             (##car _e1194612003_))
                                            (_tl1194812008_
                                             (##cdr _e1194612003_)))
                                        (let* ((_hd12011_ _hd1194712006_)
                                               (_rest12013_ _tl1194812008_))
                                          (if '#t
                                              (let* ((_e1201412031_ _hd12011_)
                                                     (_E1202612035_
                                                      (lambda ()
                                                        (if (null? _bind11941_)
                                                            (_lp11937_
                                                             _rest12013_
                                                             _decls11940_
                                                             _bind11941_
                                                             (cons _hd12011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body11942_))
                    (_lp11937_
                     _rest12013_
                     _decls11940_
                     (cons (cons '#f (cons _hd12011_ '())) _bind11941_)
                     _body11942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1201612049_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1201412031_)
                                                            (let ((_e1202712039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1201412031_)))
                      (let ((_hd1202812042_ (##car _e1202712039_))
                            (_tl1202912044_ (##cdr _e1202712039_)))
                        (if (and (gx#identifier? _hd1202812042_)
                                 (gx#core-identifier=?
                                  _hd1202812042_
                                  '%#declare))
                            (let ((_xdecls12047_ _tl1202912044_))
                              (if '#t
                                  (_lp11937_
                                   _rest12013_
                                   (gx#stx-foldr
                                    cons
                                    _decls11940_
                                    _xdecls12047_)
                                   _bind11941_
                                   _body11942_)
                                  (_E1202612035_)))
                            (_E1202612035_))))
                    (_E1202612035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1201512081_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1201412031_)
                                                            (let ((_e1201712053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1201412031_)))
                      (let ((_hd1201812056_ (##car _e1201712053_))
                            (_tl1201912058_ (##cdr _e1201712053_)))
                        (if (and (gx#identifier? _hd1201812056_)
                                 (gx#core-identifier=?
                                  _hd1201812056_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl1201912058_)
                                (let ((_e1202012061_
                                       (gx#syntax-e _tl1201912058_)))
                                  (let ((_hd1202112064_ (##car _e1202012061_))
                                        (_tl1202212066_ (##cdr _e1202012061_)))
                                    (let ((_hd-bind12069_ _hd1202112064_))
                                      (if (gx#stx-pair? _tl1202212066_)
                                          (let ((_e1202312071_
                                                 (gx#syntax-e _tl1202212066_)))
                                            (let ((_hd1202412074_
                                                   (##car _e1202312071_))
                                                  (_tl1202512076_
                                                   (##cdr _e1202312071_)))
                                              (let ((_expr12079_
                                                     _hd1202412074_))
                                                (if (gx#stx-null?
                                                     _tl1202512076_)
                                                    (if '#t
                                                        (_lp11937_
                                                         _rest12013_
                                                         _decls11940_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind12069_)
                             (cons (gx#core-expand-expression _expr12079_)
                                   '()))
                       _bind11941_)
                 _body11942_)
                (_E1201612049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1201612049_)))))
                                          (_E1201612049_)))))
                                (_E1201612049_))
                            (_E1201612049_))))
                    (_E1201612049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1201512081_))
                                              (_E1194511999_)))))
                                    (_E1194511999_)))))
                        (_E1194412085_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body11928_)
            (gx#stx-source _stx11927_))
           _expand-special11930_))))
    (define gx#core-expand-declare%
      (lambda (_stx11865_)
        (let* ((_e1186611873_ _stx11865_)
               (_E1186811877_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1186611873_)))
               (_E1186711923_
                (lambda ()
                  (if (gx#stx-pair? _e1186611873_)
                      (let ((_e1186911881_ (gx#syntax-e _e1186611873_)))
                        (let ((_hd1187011884_ (##car _e1186911881_))
                              (_tl1187111886_ (##cdr _e1186911881_)))
                          (let ((_body11889_ _tl1187111886_))
                            (if (gx#stx-list? _body11889_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl11891_)
                                     (let* ((_e1189211899_ _decl11891_)
                                            (_E1189411903_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1189211899_)))
                                            (_E1189311919_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1189211899_)
                                                   (let ((_e1189511907_
                                                          (gx#syntax-e
                                                           _e1189211899_)))
                                                     (let ((_hd1189611910_
                                                            (##car _e1189511907_))
                                                           (_tl1189711912_
                                                            (##cdr _e1189511907_)))
                                                       (let* ((_head11915_
                                                               _hd1189611910_)
                                                              (_args11917_
                                                               _tl1189711912_))
                                                         (if (gx#stx-list?
                                                              _args11917_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl11891_)
                                                             (_E1189411903_)))))
                                                   (_E1189411903_)))))
                                       (_E1189311919_)))
                                   _body11889_))
                                 (gx#stx-source _stx11865_))
                                (_E1186811877_)))))
                      (_E1186811877_)))))
          (_E1186711923_))))
    (define gx#core-expand-extern%
      (lambda (_stx11769_)
        (let* ((_e1177011777_ _stx11769_)
               (_E1177211781_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1177011777_)))
               (_E1177111861_
                (lambda ()
                  (if (gx#stx-pair? _e1177011777_)
                      (let ((_e1177311785_ (gx#syntax-e _e1177011777_)))
                        (let ((_hd1177411788_ (##car _e1177311785_))
                              (_tl1177511790_ (##cdr _e1177311785_)))
                          (let ((_body11793_ _tl1177511790_))
                            (if '#t
                                (let _lp11795_ ((_rest11797_ _body11793_)
                                                (_r11798_ '()))
                                  (let* ((_e1179911813_ _rest11797_)
                                         (_E1181111817_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _stx11769_)))
                                         (_E1180111821_
                                          (lambda ()
                                            (if (gx#stx-null? _e1179911813_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r11798_))
                                                     (gx#stx-source
                                                      _stx11769_))
                                                    (_E1181111817_))
                                                (_E1181111817_))))
                                         (_E1180011857_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1179911813_)
                                                (let ((_e1180211825_
                                                       (gx#syntax-e
                                                        _e1179911813_)))
                                                  (let ((_hd1180311828_
                                                         (##car _e1180211825_))
                                                        (_tl1180411830_
                                                         (##cdr _e1180211825_)))
                                                    (if (gx#stx-pair?
                                                         _hd1180311828_)
                                                        (let ((_e1180511833_
                                                               (gx#syntax-e
                                                                _hd1180311828_)))
                                                          (let ((_hd1180611836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1180511833_))
                        (_tl1180711838_ (##cdr _e1180511833_)))
                    (let ((_id11841_ _hd1180611836_))
                      (if (gx#stx-pair? _tl1180711838_)
                          (let ((_e1180811843_ (gx#syntax-e _tl1180711838_)))
                            (let ((_hd1180911846_ (##car _e1180811843_))
                                  (_tl1181011848_ (##cdr _e1180811843_)))
                              (let ((_eid11851_ _hd1180911846_))
                                (if (gx#stx-null? _tl1181011848_)
                                    (let ((_rest11853_ _tl1180411830_))
                                      (if (and (gx#identifier? _id11841_)
                                               (gx#identifier? _eid11851_))
                                          (let ((_eid11855_
                                                 (gx#stx-e _eid11851_)))
                                            (gx#core-bind-extern!__0
                                             _id11841_
                                             _eid11855_)
                                            (_lp11795_
                                             _rest11853_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id11841_)
                                                         (cons _eid11855_ '()))
                                                   _r11798_)))
                                          (_E1180111821_)))
                                    (_E1180111821_)))))
                          (_E1180111821_)))))
                (_E1180111821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1180111821_)))))
                                    (_E1180011857_)))
                                (_E1177211781_)))))
                      (_E1177211781_)))))
          (_E1177111861_))))
    (define gx#core-expand-define-values%
      (lambda (_stx11715_)
        (let* ((_e1171611729_ _stx11715_)
               (_E1171811733_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1171611729_)))
               (_E1171711765_
                (lambda ()
                  (if (gx#stx-pair? _e1171611729_)
                      (let ((_e1171911737_ (gx#syntax-e _e1171611729_)))
                        (let ((_hd1172011740_ (##car _e1171911737_))
                              (_tl1172111742_ (##cdr _e1171911737_)))
                          (if (gx#stx-pair? _tl1172111742_)
                              (let ((_e1172211745_
                                     (gx#syntax-e _tl1172111742_)))
                                (let ((_hd1172311748_ (##car _e1172211745_))
                                      (_tl1172411750_ (##cdr _e1172211745_)))
                                  (let ((_hd11753_ _hd1172311748_))
                                    (if (gx#stx-pair? _tl1172411750_)
                                        (let ((_e1172511755_
                                               (gx#syntax-e _tl1172411750_)))
                                          (let ((_hd1172611758_
                                                 (##car _e1172511755_))
                                                (_tl1172711760_
                                                 (##cdr _e1172511755_)))
                                            (let ((_expr11763_ _hd1172611758_))
                                              (if (gx#stx-null? _tl1172711760_)
                                                  (if (gx#core-bind-values?
                                                       _hd11753_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd11753_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd11753_)
                             (cons (gx#core-expand-expression _expr11763_)
                                   '())))
                 (gx#stx-source _stx11715_)))
              (_E1171811733_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1171811733_)))))
                                        (_E1171811733_)))))
                              (_E1171811733_))))
                      (_E1171811733_)))))
          (_E1171711765_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx11659_)
        (let* ((_e1166011673_ _stx11659_)
               (_E1166211677_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1166011673_)))
               (_E1166111711_
                (lambda ()
                  (if (gx#stx-pair? _e1166011673_)
                      (let ((_e1166311681_ (gx#syntax-e _e1166011673_)))
                        (let ((_hd1166411684_ (##car _e1166311681_))
                              (_tl1166511686_ (##cdr _e1166311681_)))
                          (if (gx#stx-pair? _tl1166511686_)
                              (let ((_e1166611689_
                                     (gx#syntax-e _tl1166511686_)))
                                (let ((_hd1166711692_ (##car _e1166611689_))
                                      (_tl1166811694_ (##cdr _e1166611689_)))
                                  (let ((_id11697_ _hd1166711692_))
                                    (if (gx#stx-pair? _tl1166811694_)
                                        (let ((_e1166911699_
                                               (gx#syntax-e _tl1166811694_)))
                                          (let ((_hd1167011702_
                                                 (##car _e1166911699_))
                                                (_tl1167111704_
                                                 (##cdr _e1166911699_)))
                                            (let ((_binding-id11707_
                                                   _hd1167011702_))
                                              (if (gx#stx-null? _tl1167111704_)
                                                  (if (and (gx#identifier?
                                                            _id11697_)
                                                           (gx#identifier?
                                                            _binding-id11707_))
                                                      (let ((_eid11709_
                                                             (gx#stx-e
                                                              _binding-id11707_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id11697_
                                                         _eid11709_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11697_)
                             (cons _eid11709_ '())))))
              (_E1166211677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1166211677_)))))
                                        (_E1166211677_)))))
                              (_E1166211677_))))
                      (_E1166211677_)))))
          (_E1166111711_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx11602_)
        (let* ((_e1160311616_ _stx11602_)
               (_E1160511620_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1160311616_)))
               (_E1160411655_
                (lambda ()
                  (if (gx#stx-pair? _e1160311616_)
                      (let ((_e1160611624_ (gx#syntax-e _e1160311616_)))
                        (let ((_hd1160711627_ (##car _e1160611624_))
                              (_tl1160811629_ (##cdr _e1160611624_)))
                          (if (gx#stx-pair? _tl1160811629_)
                              (let ((_e1160911632_
                                     (gx#syntax-e _tl1160811629_)))
                                (let ((_hd1161011635_ (##car _e1160911632_))
                                      (_tl1161111637_ (##cdr _e1160911632_)))
                                  (let ((_id11640_ _hd1161011635_))
                                    (if (gx#stx-pair? _tl1161111637_)
                                        (let ((_e1161211642_
                                               (gx#syntax-e _tl1161111637_)))
                                          (let ((_hd1161311645_
                                                 (##car _e1161211642_))
                                                (_tl1161411647_
                                                 (##cdr _e1161211642_)))
                                            (let ((_expr11650_ _hd1161311645_))
                                              (if (gx#stx-null? _tl1161411647_)
                                                  (if (gx#identifier?
                                                       _id11640_)
                                                      (let ((_g12561_
                                                             (gx#core-expand-expression+1
                                                              _expr11650_)))
                                                        (begin
                                                          (let ((_g12562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g12561_)
                             (##vector-length _g12561_)
                             1)))
                    (if (not (##fx= _g12562_ 2))
                        (error "Context expects 2 values" _g12562_)))
                  (let ((_e-stx11652_ (##vector-ref _g12561_ 0))
                        (_e11653_ (##vector-ref _g12561_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id11640_ _e11653_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id11640_)
                                   (cons _e-stx11652_ '())))
                       (gx#stx-source _stx11602_))))))
              (_E1160511620_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1160511620_)))))
                                        (_E1160511620_)))))
                              (_E1160511620_))))
                      (_E1160511620_)))))
          (_E1160411655_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx11546_)
        (let* ((_e1154711560_ _stx11546_)
               (_E1154911564_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1154711560_)))
               (_E1154811598_
                (lambda ()
                  (if (gx#stx-pair? _e1154711560_)
                      (let ((_e1155011568_ (gx#syntax-e _e1154711560_)))
                        (let ((_hd1155111571_ (##car _e1155011568_))
                              (_tl1155211573_ (##cdr _e1155011568_)))
                          (if (gx#stx-pair? _tl1155211573_)
                              (let ((_e1155311576_
                                     (gx#syntax-e _tl1155211573_)))
                                (let ((_hd1155411579_ (##car _e1155311576_))
                                      (_tl1155511581_ (##cdr _e1155311576_)))
                                  (let ((_id11584_ _hd1155411579_))
                                    (if (gx#stx-pair? _tl1155511581_)
                                        (let ((_e1155611586_
                                               (gx#syntax-e _tl1155511581_)))
                                          (let ((_hd1155711589_
                                                 (##car _e1155611586_))
                                                (_tl1155811591_
                                                 (##cdr _e1155611586_)))
                                            (let ((_alias-id11594_
                                                   _hd1155711589_))
                                              (if (gx#stx-null? _tl1155811591_)
                                                  (if (and (gx#identifier?
                                                            _id11584_)
                                                           (gx#identifier?
                                                            _alias-id11594_))
                                                      (let ((_alias-id11596_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id11594_)))
                                                        (gx#core-bind-alias!__0
                                                         _id11584_
                                                         _alias-id11596_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11584_)
                             (cons _alias-id11596_ '())))))
              (_E1154911564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1154911564_)))))
                                        (_E1154911564_)))))
                              (_E1154911564_))))
                      (_E1154911564_)))))
          (_E1154811598_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx11489_ _wrap?11490_)
        (let* ((_e1149111501_ _stx11489_)
               (_E1149311505_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1149111501_)))
               (_E1149211532_
                (lambda ()
                  (if (gx#stx-pair? _e1149111501_)
                      (let ((_e1149411509_ (gx#syntax-e _e1149111501_)))
                        (let ((_hd1149511512_ (##car _e1149411509_))
                              (_tl1149611514_ (##cdr _e1149411509_)))
                          (if (gx#stx-pair? _tl1149611514_)
                              (let ((_e1149711517_
                                     (gx#syntax-e _tl1149611514_)))
                                (let ((_hd1149811520_ (##car _e1149711517_))
                                      (_tl1149911522_ (##cdr _e1149711517_)))
                                  (let* ((_hd11525_ _hd1149811520_)
                                         (_body11527_ _tl1149911522_))
                                    (if (gx#core-bind-values? _hd11525_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd11525_)
                                           (let ((_body11530_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd11525_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx11489_
                                                               _body11527_)
                                                              '()))))
                                             (if _wrap?11490_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body11530_)
                                                  (gx#stx-source _stx11489_))
                                                 _body11530_)))
                                         gx#current-expander-context
                                         (let ((__obj12554
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12554)
                                           __obj12554))
                                        (_E1149311505_)))))
                              (_E1149311505_))))
                      (_E1149311505_)))))
          (_E1149211532_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx11539_)
        (let ((_wrap?11541_ '#t))
          (gx#core-expand-lambda%__% _stx11539_ _wrap?11541_))))
    (define gx#core-expand-lambda%
      (lambda _g12564_
        (let ((_g12563_ (##length _g12564_)))
          (cond ((##fx= _g12563_ 1) (apply gx#core-expand-lambda%__0 _g12564_))
                ((##fx= _g12563_ 2) (apply gx#core-expand-lambda%__% _g12564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g12564_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx11453_)
        (let* ((_e1145411461_ _stx11453_)
               (_E1145611465_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1145411461_)))
               (_E1145511484_
                (lambda ()
                  (if (gx#stx-pair? _e1145411461_)
                      (let ((_e1145711469_ (gx#syntax-e _e1145411461_)))
                        (let ((_hd1145811472_ (##car _e1145711469_))
                              (_tl1145911474_ (##cdr _e1145711469_)))
                          (let ((_clauses11477_ _tl1145911474_))
                            (if (gx#stx-list? _clauses11477_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause11479_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause11479_)
                                       (let ((_$e11481_
                                              (gx#stx-source _clause11479_)))
                                         (if _$e11481_
                                             _$e11481_
                                             (gx#stx-source _stx11453_))))
                                      '#f))
                                   _clauses11477_))
                                 (gx#stx-source _stx11453_))
                                (_E1145611465_)))))
                      (_E1145611465_)))))
          (_E1145511484_))))
    (define gx#core-expand-let-values%
      (lambda (_stx11407_)
        (let* ((_e1140811418_ _stx11407_)
               (_E1141011422_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1140811418_)))
               (_E1140911449_
                (lambda ()
                  (if (gx#stx-pair? _e1140811418_)
                      (let ((_e1141111426_ (gx#syntax-e _e1140811418_)))
                        (let ((_hd1141211429_ (##car _e1141111426_))
                              (_tl1141311431_ (##cdr _e1141111426_)))
                          (if (gx#stx-pair? _tl1141311431_)
                              (let ((_e1141411434_
                                     (gx#syntax-e _tl1141311431_)))
                                (let ((_hd1141511437_ (##car _e1141411434_))
                                      (_tl1141611439_ (##cdr _e1141411434_)))
                                  (let* ((_hd11442_ _hd1141511437_)
                                         (_body11444_ _tl1141611439_))
                                    (if (gx#core-expand-let-bind? _hd11442_)
                                        (let ((_expressions11446_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd11442_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11442_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11442_
                                                           _expressions11446_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11407_
                         _body11444_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11407_)))
                                           gx#current-expander-context
                                           (let ((__obj12555
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj12555)
                                             __obj12555)))
                                        (_E1141011422_)))))
                              (_E1141011422_))))
                      (_E1141011422_)))))
          (_E1140911449_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11352_ _form11353_)
        (let* ((_e1135411364_ _stx11352_)
               (_E1135611368_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1135411364_)))
               (_E1135511393_
                (lambda ()
                  (if (gx#stx-pair? _e1135411364_)
                      (let ((_e1135711372_ (gx#syntax-e _e1135411364_)))
                        (let ((_hd1135811375_ (##car _e1135711372_))
                              (_tl1135911377_ (##cdr _e1135711372_)))
                          (if (gx#stx-pair? _tl1135911377_)
                              (let ((_e1136011380_
                                     (gx#syntax-e _tl1135911377_)))
                                (let ((_hd1136111383_ (##car _e1136011380_))
                                      (_tl1136211385_ (##cdr _e1136011380_)))
                                  (let* ((_hd11388_ _hd1136111383_)
                                         (_body11390_ _tl1136211385_))
                                    (if (gx#core-expand-let-bind? _hd11388_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd11388_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form11353_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd11388_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd11388_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx11352_
                                                               _body11390_)
                                                              '())))
                                            (gx#stx-source _stx11352_)))
                                         gx#current-expander-context
                                         (let ((__obj12556
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12556)
                                           __obj12556))
                                        (_E1135611368_)))))
                              (_E1135611368_))))
                      (_E1135611368_)))))
          (_E1135511393_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx11400_)
        (let ((_form11402_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx11400_ _form11402_))))
    (define gx#core-expand-letrec-values%
      (lambda _g12566_
        (let ((_g12565_ (##length _g12566_)))
          (cond ((##fx= _g12565_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g12566_))
                ((##fx= _g12565_ 2)
                 (apply gx#core-expand-letrec-values%__% _g12566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g12566_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx11349_)
        (gx#core-expand-letrec-values%__% _stx11349_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx11306_)
        (if (gx#stx-list? _stx11306_)
            (gx#stx-andmap
             (lambda (_bind11308_)
               (let* ((_e1130911319_ _bind11308_)
                      (_E1131111323_ (lambda () '#f))
                      (_E1131011345_
                       (lambda ()
                         (if (gx#stx-pair? _e1130911319_)
                             (let ((_e1131211327_ (gx#syntax-e _e1130911319_)))
                               (let ((_hd1131311330_ (##car _e1131211327_))
                                     (_tl1131411332_ (##cdr _e1131211327_)))
                                 (let ((_hd11335_ _hd1131311330_))
                                   (if (gx#stx-pair? _tl1131411332_)
                                       (let ((_e1131511337_
                                              (gx#syntax-e _tl1131411332_)))
                                         (let ((_hd1131611340_
                                                (##car _e1131511337_))
                                               (_tl1131711342_
                                                (##cdr _e1131511337_)))
                                           (if (gx#stx-null? _tl1131711342_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd11335_)
                                                   (_E1131111323_))
                                               (_E1131111323_))))
                                       (_E1131111323_)))))
                             (_E1131111323_)))))
                 (_E1131011345_)))
             _stx11306_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind11265_)
        (let* ((_e1126611276_ _bind11265_)
               (_E1126811280_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1126611276_)))
               (_E1126711302_
                (lambda ()
                  (if (gx#stx-pair? _e1126611276_)
                      (let ((_e1126911284_ (gx#syntax-e _e1126611276_)))
                        (let ((_hd1127011287_ (##car _e1126911284_))
                              (_tl1127111289_ (##cdr _e1126911284_)))
                          (if (gx#stx-pair? _tl1127111289_)
                              (let ((_e1127211292_
                                     (gx#syntax-e _tl1127111289_)))
                                (let ((_hd1127311295_ (##car _e1127211292_))
                                      (_tl1127411297_ (##cdr _e1127211292_)))
                                  (let ((_expr11300_ _hd1127311295_))
                                    (if (gx#stx-null? _tl1127411297_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr11300_)
                                            (_E1126811280_))
                                        (_E1126811280_)))))
                              (_E1126811280_))))
                      (_E1126811280_)))))
          (_E1126711302_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind11224_)
        (let* ((_e1122511235_ _bind11224_)
               (_E1122711239_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1122511235_)))
               (_E1122611261_
                (lambda ()
                  (if (gx#stx-pair? _e1122511235_)
                      (let ((_e1122811243_ (gx#syntax-e _e1122511235_)))
                        (let ((_hd1122911246_ (##car _e1122811243_))
                              (_tl1123011248_ (##cdr _e1122811243_)))
                          (let ((_hd11251_ _hd1122911246_))
                            (if (gx#stx-pair? _tl1123011248_)
                                (let ((_e1123111253_
                                       (gx#syntax-e _tl1123011248_)))
                                  (let ((_hd1123211256_ (##car _e1123111253_))
                                        (_tl1123311258_ (##cdr _e1123111253_)))
                                    (if (gx#stx-null? _tl1123311258_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd11251_)
                                            (_E1122711239_))
                                        (_E1122711239_))))
                                (_E1122711239_)))))
                      (_E1122711239_)))))
          (_E1122611261_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind11182_ _expr11183_)
        (let* ((_e1118411194_ _bind11182_)
               (_E1118611198_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1118411194_)))
               (_E1118511220_
                (lambda ()
                  (if (gx#stx-pair? _e1118411194_)
                      (let ((_e1118711202_ (gx#syntax-e _e1118411194_)))
                        (let ((_hd1118811205_ (##car _e1118711202_))
                              (_tl1118911207_ (##cdr _e1118711202_)))
                          (let ((_hd11210_ _hd1118811205_))
                            (if (gx#stx-pair? _tl1118911207_)
                                (let ((_e1119011212_
                                       (gx#syntax-e _tl1118911207_)))
                                  (let ((_hd1119111215_ (##car _e1119011212_))
                                        (_tl1119211217_ (##cdr _e1119011212_)))
                                    (if (gx#stx-null? _tl1119211217_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd11210_)
                                                  (cons _expr11183_ '()))
                                            (_E1118611198_))
                                        (_E1118611198_))))
                                (_E1118611198_)))))
                      (_E1118611198_)))))
          (_E1118511220_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx11136_)
        (let* ((_e1113711147_ _stx11136_)
               (_E1113911151_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1113711147_)))
               (_E1113811178_
                (lambda ()
                  (if (gx#stx-pair? _e1113711147_)
                      (let ((_e1114011155_ (gx#syntax-e _e1113711147_)))
                        (let ((_hd1114111158_ (##car _e1114011155_))
                              (_tl1114211160_ (##cdr _e1114011155_)))
                          (if (gx#stx-pair? _tl1114211160_)
                              (let ((_e1114311163_
                                     (gx#syntax-e _tl1114211160_)))
                                (let ((_hd1114411166_ (##car _e1114311163_))
                                      (_tl1114511168_ (##cdr _e1114311163_)))
                                  (let* ((_hd11171_ _hd1114411166_)
                                         (_body11173_ _tl1114511168_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd11171_)
                                        (let ((_expanders11175_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd11171_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11171_
                                              _expanders11175_)
                                             (gx#core-expand-local-block
                                              _stx11136_
                                              _body11173_))
                                           gx#current-expander-context
                                           (let ((__obj12557
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj12557)
                                             __obj12557)))
                                        (_E1113911151_)))))
                              (_E1113911151_))))
                      (_E1113911151_)))))
          (_E1113811178_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx11085_)
        (let* ((_e1108611096_ _stx11085_)
               (_E1108811100_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1108611096_)))
               (_E1108711132_
                (lambda ()
                  (if (gx#stx-pair? _e1108611096_)
                      (let ((_e1108911104_ (gx#syntax-e _e1108611096_)))
                        (let ((_hd1109011107_ (##car _e1108911104_))
                              (_tl1109111109_ (##cdr _e1108911104_)))
                          (if (gx#stx-pair? _tl1109111109_)
                              (let ((_e1109211112_
                                     (gx#syntax-e _tl1109111109_)))
                                (let ((_hd1109311115_ (##car _e1109211112_))
                                      (_tl1109411117_ (##cdr _e1109211112_)))
                                  (let* ((_hd11120_ _hd1109311115_)
                                         (_body11122_ _tl1109411117_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd11120_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11120_
                                            (make-list
                                             (gx#stx-length _hd11120_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1112411127_
                                                     _g1112511129_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1112411127_
                                               _g1112511129_
                                               '#t))
                                            _hd11120_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd11120_))
                                           (gx#core-expand-local-block
                                            _stx11085_
                                            _body11122_))
                                         gx#current-expander-context
                                         (let ((__obj12558
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12558)
                                           __obj12558))
                                        (_E1108811100_)))))
                              (_E1108811100_))))
                      (_E1108811100_)))))
          (_E1108711132_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx11042_)
        (if (gx#stx-list? _stx11042_)
            (gx#stx-andmap
             (lambda (_bind11044_)
               (let* ((_e1104511055_ _bind11044_)
                      (_E1104711059_ (lambda () '#f))
                      (_E1104611081_
                       (lambda ()
                         (if (gx#stx-pair? _e1104511055_)
                             (let ((_e1104811063_ (gx#syntax-e _e1104511055_)))
                               (let ((_hd1104911066_ (##car _e1104811063_))
                                     (_tl1105011068_ (##cdr _e1104811063_)))
                                 (let ((_hd11071_ _hd1104911066_))
                                   (if (gx#stx-pair? _tl1105011068_)
                                       (let ((_e1105111073_
                                              (gx#syntax-e _tl1105011068_)))
                                         (let ((_hd1105211076_
                                                (##car _e1105111073_))
                                               (_tl1105311078_
                                                (##cdr _e1105111073_)))
                                           (if (gx#stx-null? _tl1105311078_)
                                               (if '#t
                                                   (gx#identifier? _hd11071_)
                                                   (_E1104711059_))
                                               (_E1104711059_))))
                                       (_E1104711059_)))))
                             (_E1104711059_)))))
                 (_E1104611081_)))
             _stx11042_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind10999_)
        (let* ((_e1100011010_ _bind10999_)
               (_E1100211014_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1100011010_)))
               (_E1100111038_
                (lambda ()
                  (if (gx#stx-pair? _e1100011010_)
                      (let ((_e1100311018_ (gx#syntax-e _e1100011010_)))
                        (let ((_hd1100411021_ (##car _e1100311018_))
                              (_tl1100511023_ (##cdr _e1100311018_)))
                          (if (gx#stx-pair? _tl1100511023_)
                              (let ((_e1100611026_
                                     (gx#syntax-e _tl1100511023_)))
                                (let ((_hd1100711029_ (##car _e1100611026_))
                                      (_tl1100811031_ (##cdr _e1100611026_)))
                                  (let ((_expr11034_ _hd1100711029_))
                                    (if (gx#stx-null? _tl1100811031_)
                                        (if '#t
                                            (let ((_g12567_
                                                   (gx#core-expand-expression+1
                                                    _expr11034_)))
                                              (begin
                                                (let ((_g12568_
                                                       (if (##values? _g12567_)
                                                           (##vector-length
                                                            _g12567_)
                                                           1)))
                                                  (if (not (##fx= _g12568_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12568_)))
                                                (let ((_e11036_
                                                       (##vector-ref
                                                        _g12567_
                                                        1)))
                                                  _e11036_)))
                                            (_E1100211014_))
                                        (_E1100211014_)))))
                              (_E1100211014_))))
                      (_E1100211014_)))))
          (_E1100111038_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind10944_ _e10945_ _rebind?10946_)
        (let* ((_e1094710957_ _bind10944_)
               (_E1094910961_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1094710957_)))
               (_E1094810983_
                (lambda ()
                  (if (gx#stx-pair? _e1094710957_)
                      (let ((_e1095010965_ (gx#syntax-e _e1094710957_)))
                        (let ((_hd1095110968_ (##car _e1095010965_))
                              (_tl1095210970_ (##cdr _e1095010965_)))
                          (let ((_id10973_ _hd1095110968_))
                            (if (gx#stx-pair? _tl1095210970_)
                                (let ((_e1095310975_
                                       (gx#syntax-e _tl1095210970_)))
                                  (let ((_hd1095410978_ (##car _e1095310975_))
                                        (_tl1095510980_ (##cdr _e1095310975_)))
                                    (if (gx#stx-null? _tl1095510980_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id10973_
                                             _e10945_
                                             _rebind?10946_)
                                            (_E1094910961_))
                                        (_E1094910961_))))
                                (_E1094910961_)))))
                      (_E1094910961_)))))
          (_E1094810983_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind10990_ _e10991_)
        (let ((_rebind?10993_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind10990_
           _e10991_
           _rebind?10993_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g12570_
        (let ((_g12569_ (##length _g12570_)))
          (cond ((##fx= _g12569_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g12570_))
                ((##fx= _g12569_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g12570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g12570_))))))
    (define gx#core-expand-expression%
      (lambda (_stx10902_)
        (let* ((_e1090310913_ _stx10902_)
               (_E1090510917_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1090310913_)))
               (_E1090410939_
                (lambda ()
                  (if (gx#stx-pair? _e1090310913_)
                      (let ((_e1090610921_ (gx#syntax-e _e1090310913_)))
                        (let ((_hd1090710924_ (##car _e1090610921_))
                              (_tl1090810926_ (##cdr _e1090610921_)))
                          (if (gx#stx-pair? _tl1090810926_)
                              (let ((_e1090910929_
                                     (gx#syntax-e _tl1090810926_)))
                                (let ((_hd1091010932_ (##car _e1090910929_))
                                      (_tl1091110934_ (##cdr _e1090910929_)))
                                  (let ((_expr10937_ _hd1091010932_))
                                    (if (gx#stx-null? _tl1091110934_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr10937_)
                                            (_E1090510917_))
                                        (_E1090510917_)))))
                              (_E1090510917_))))
                      (_E1090510917_)))))
          (_E1090410939_))))
    (define gx#core-expand-quote%
      (lambda (_stx10861_)
        (let* ((_e1086210872_ _stx10861_)
               (_E1086410876_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1086210872_)))
               (_E1086310898_
                (lambda ()
                  (if (gx#stx-pair? _e1086210872_)
                      (let ((_e1086510880_ (gx#syntax-e _e1086210872_)))
                        (let ((_hd1086610883_ (##car _e1086510880_))
                              (_tl1086710885_ (##cdr _e1086510880_)))
                          (if (gx#stx-pair? _tl1086710885_)
                              (let ((_e1086810888_
                                     (gx#syntax-e _tl1086710885_)))
                                (let ((_hd1086910891_ (##car _e1086810888_))
                                      (_tl1087010893_ (##cdr _e1086810888_)))
                                  (let ((_e10896_ _hd1086910891_))
                                    (if (gx#stx-null? _tl1087010893_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e10896_)
                                                         '()))
                                             (gx#stx-source _stx10861_))
                                            (_E1086410876_))
                                        (_E1086410876_)))))
                              (_E1086410876_))))
                      (_E1086410876_)))))
          (_E1086310898_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx10820_)
        (let* ((_e1082110831_ _stx10820_)
               (_E1082310835_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1082110831_)))
               (_E1082210857_
                (lambda ()
                  (if (gx#stx-pair? _e1082110831_)
                      (let ((_e1082410839_ (gx#syntax-e _e1082110831_)))
                        (let ((_hd1082510842_ (##car _e1082410839_))
                              (_tl1082610844_ (##cdr _e1082410839_)))
                          (if (gx#stx-pair? _tl1082610844_)
                              (let ((_e1082710847_
                                     (gx#syntax-e _tl1082610844_)))
                                (let ((_hd1082810850_ (##car _e1082710847_))
                                      (_tl1082910852_ (##cdr _e1082710847_)))
                                  (let ((_e10855_ _hd1082810850_))
                                    (if (gx#stx-null? _tl1082910852_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e10855_)
                                                         '()))
                                             (gx#stx-source _stx10820_))
                                            (_E1082310835_))
                                        (_E1082310835_)))))
                              (_E1082310835_))))
                      (_E1082310835_)))))
          (_E1082210857_))))
    (define gx#core-expand-call%
      (lambda (_stx10777_)
        (let* ((_e1077810788_ _stx10777_)
               (_E1078010792_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1077810788_)))
               (_E1077910816_
                (lambda ()
                  (if (gx#stx-pair? _e1077810788_)
                      (let ((_e1078110796_ (gx#syntax-e _e1077810788_)))
                        (let ((_hd1078210799_ (##car _e1078110796_))
                              (_tl1078310801_ (##cdr _e1078110796_)))
                          (if (gx#stx-pair? _tl1078310801_)
                              (let ((_e1078410804_
                                     (gx#syntax-e _tl1078310801_)))
                                (let ((_hd1078510807_ (##car _e1078410804_))
                                      (_tl1078610809_ (##cdr _e1078410804_)))
                                  (let* ((_rator10812_ _hd1078510807_)
                                         (_args10814_ _tl1078610809_))
                                    (if (gx#stx-list? _args10814_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator10812_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args10814_))
                                         (gx#stx-source _stx10777_))
                                        (_E1078010792_)))))
                              (_E1078010792_))))
                      (_E1078010792_)))))
          (_E1077910816_))))
    (define gx#core-expand-if%
      (lambda (_stx10710_)
        (let* ((_e1071110727_ _stx10710_)
               (_E1071310731_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1071110727_)))
               (_E1071210773_
                (lambda ()
                  (if (gx#stx-pair? _e1071110727_)
                      (let ((_e1071410735_ (gx#syntax-e _e1071110727_)))
                        (let ((_hd1071510738_ (##car _e1071410735_))
                              (_tl1071610740_ (##cdr _e1071410735_)))
                          (if (gx#stx-pair? _tl1071610740_)
                              (let ((_e1071710743_
                                     (gx#syntax-e _tl1071610740_)))
                                (let ((_hd1071810746_ (##car _e1071710743_))
                                      (_tl1071910748_ (##cdr _e1071710743_)))
                                  (let ((_test10751_ _hd1071810746_))
                                    (if (gx#stx-pair? _tl1071910748_)
                                        (let ((_e1072010753_
                                               (gx#syntax-e _tl1071910748_)))
                                          (let ((_hd1072110756_
                                                 (##car _e1072010753_))
                                                (_tl1072210758_
                                                 (##cdr _e1072010753_)))
                                            (let ((_K10761_ _hd1072110756_))
                                              (if (gx#stx-pair? _tl1072210758_)
                                                  (let ((_e1072310763_
                                                         (gx#syntax-e
                                                          _tl1072210758_)))
                                                    (let ((_hd1072410766_
                                                           (##car _e1072310763_))
                                                          (_tl1072510768_
                                                           (##cdr _e1072310763_)))
                                                      (let ((_E10771_
                                                             _hd1072410766_))
                                                        (if (gx#stx-null?
                                                             _tl1072510768_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test10751_)
                                     (cons (gx#core-expand-expression _K10761_)
                                           (cons (gx#core-expand-expression
                                                  _E10771_)
                                                 '()))))
                         (gx#stx-source _stx10710_))
                        (_E1071310731_))
                    (_E1071310731_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1071310731_)))))
                                        (_E1071310731_)))))
                              (_E1071310731_))))
                      (_E1071310731_)))))
          (_E1071210773_))))
    (define gx#core-expand-ref%
      (lambda (_stx10669_)
        (let* ((_e1067010680_ _stx10669_)
               (_E1067210684_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1067010680_)))
               (_E1067110706_
                (lambda ()
                  (if (gx#stx-pair? _e1067010680_)
                      (let ((_e1067310688_ (gx#syntax-e _e1067010680_)))
                        (let ((_hd1067410691_ (##car _e1067310688_))
                              (_tl1067510693_ (##cdr _e1067310688_)))
                          (if (gx#stx-pair? _tl1067510693_)
                              (let ((_e1067610696_
                                     (gx#syntax-e _tl1067510693_)))
                                (let ((_hd1067710699_ (##car _e1067610696_))
                                      (_tl1067810701_ (##cdr _e1067610696_)))
                                  (let ((_id10704_ _hd1067710699_))
                                    (if (gx#stx-null? _tl1067810701_)
                                        (if (gx#identifier? _id10704_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id10704_
                                                          _stx10669_)
                                                         '()))
                                             (gx#stx-source _stx10669_))
                                            (_E1067210684_))
                                        (_E1067210684_)))))
                              (_E1067210684_))))
                      (_E1067210684_)))))
          (_E1067110706_))))
    (define gx#core-expand-setq%
      (lambda (_stx10615_)
        (let* ((_e1061610629_ _stx10615_)
               (_E1061810633_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1061610629_)))
               (_E1061710665_
                (lambda ()
                  (if (gx#stx-pair? _e1061610629_)
                      (let ((_e1061910637_ (gx#syntax-e _e1061610629_)))
                        (let ((_hd1062010640_ (##car _e1061910637_))
                              (_tl1062110642_ (##cdr _e1061910637_)))
                          (if (gx#stx-pair? _tl1062110642_)
                              (let ((_e1062210645_
                                     (gx#syntax-e _tl1062110642_)))
                                (let ((_hd1062310648_ (##car _e1062210645_))
                                      (_tl1062410650_ (##cdr _e1062210645_)))
                                  (let ((_id10653_ _hd1062310648_))
                                    (if (gx#stx-pair? _tl1062410650_)
                                        (let ((_e1062510655_
                                               (gx#syntax-e _tl1062410650_)))
                                          (let ((_hd1062610658_
                                                 (##car _e1062510655_))
                                                (_tl1062710660_
                                                 (##cdr _e1062510655_)))
                                            (let ((_expr10663_ _hd1062610658_))
                                              (if (gx#stx-null? _tl1062710660_)
                                                  (if (gx#identifier?
                                                       _id10653_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10653_
                            _stx10615_)
                           (cons (gx#core-expand-expression _expr10663_) '())))
               (gx#stx-source _stx10615_))
              (_E1061810633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1061810633_)))))
                                        (_E1061810633_)))))
                              (_E1061810633_))))
                      (_E1061810633_)))))
          (_E1061710665_))))
    (define gx#macro-expand-extern
      (lambda (_stx10463_)
        (letrec ((_generate10465_
                  (lambda (_body10495_)
                    (let _lp10497_ ((_rest10499_ _body10495_)
                                    (_ns10500_ (gx#core-context-namespace__0))
                                    (_r10501_ '()))
                      (let* ((_e1050210517_ _rest10499_)
                             (_E1051510521_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1050210517_)))
                             (_E1051110525_
                              (lambda ()
                                (if (gx#stx-null? _e1050210517_)
                                    (if '#t (reverse _r10501_) (_E1051510521_))
                                    (_E1051510521_))))
                             (_E1050410582_
                              (lambda ()
                                (if (gx#stx-pair? _e1050210517_)
                                    (let ((_e1051210529_
                                           (gx#syntax-e _e1050210517_)))
                                      (let ((_hd1051310532_
                                             (##car _e1051210529_))
                                            (_tl1051410534_
                                             (##cdr _e1051210529_)))
                                        (let* ((_hd10537_ _hd1051310532_)
                                               (_rest10539_ _tl1051410534_))
                                          (if '#t
                                              (if (gx#identifier? _hd10537_)
                                                  (_lp10497_
                                                   _rest10539_
                                                   _ns10500_
                                                   (cons (cons _hd10537_
                                                               (cons (if _ns10500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd10537_
                                  _ns10500_
                                  '"#"
                                  _hd10537_)
                                 _hd10537_)
                             '()))
                 _r10501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e1054010550_
                                                          _hd10537_)
                                                         (_E1054210554_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1054010550_)))
                                                         (_E1054110578_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1054010550_)
                        (let ((_e1054310558_ (gx#syntax-e _e1054010550_)))
                          (let ((_hd1054410561_ (##car _e1054310558_))
                                (_tl1054510563_ (##cdr _e1054310558_)))
                            (let ((_id10566_ _hd1054410561_))
                              (if (gx#stx-pair? _tl1054510563_)
                                  (let ((_e1054610568_
                                         (gx#syntax-e _tl1054510563_)))
                                    (let ((_hd1054710571_
                                           (##car _e1054610568_))
                                          (_tl1054810573_
                                           (##cdr _e1054610568_)))
                                      (let ((_eid10576_ _hd1054710571_))
                                        (if (gx#stx-null? _tl1054810573_)
                                            (if (and (gx#identifier? _id10566_)
                                                     (gx#identifier?
                                                      _eid10576_))
                                                (_lp10497_
                                                 _rest10539_
                                                 _ns10500_
                                                 (cons (cons _id10566_
                                                             (cons _eid10576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r10501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1054210554_))
                                            (_E1054210554_)))))
                                  (_E1054210554_)))))
                        (_E1054210554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1054110578_)))
                                              (_E1051110525_)))))
                                    (_E1051110525_))))
                             (_E1050310611_
                              (lambda ()
                                (if (gx#stx-pair? _e1050210517_)
                                    (let ((_e1050510586_
                                           (gx#syntax-e _e1050210517_)))
                                      (let ((_hd1050610589_
                                             (##car _e1050510586_))
                                            (_tl1050710591_
                                             (##cdr _e1050510586_)))
                                        (if (eq? (gx#stx-e _hd1050610589_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl1050710591_)
                                                (let ((_e1050810594_
                                                       (gx#syntax-e
                                                        _tl1050710591_)))
                                                  (let ((_hd1050910597_
                                                         (##car _e1050810594_))
                                                        (_tl1051010599_
                                                         (##cdr _e1050810594_)))
                                                    (let* ((_ns10602_
                                                            _hd1050910597_)
                                                           (_rest10604_
                                                            _tl1051010599_))
                                                      (if '#t
                                                          (let ((_ns10609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns10602_)
                             (symbol->string (gx#stx-e _ns10602_))
                             (if (or (gx#stx-string? _ns10602_)
                                     (gx#stx-false? _ns10602_))
                                 (gx#stx-e _ns10602_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx10463_
                                  _ns10602_)))))
                    (_lp10497_ _rest10604_ _ns10609_ _r10501_))
                  (_E1050410582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1050410582_))
                                            (_E1050410582_))))
                                    (_E1050410582_)))))
                        (_E1050310611_))))))
          (let* ((_e1046610473_ _stx10463_)
                 (_E1046810477_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1046610473_)))
                 (_E1046710491_
                  (lambda ()
                    (if (gx#stx-pair? _e1046610473_)
                        (let ((_e1046910481_ (gx#syntax-e _e1046610473_)))
                          (let ((_hd1047010484_ (##car _e1046910481_))
                                (_tl1047110486_ (##cdr _e1046910481_)))
                            (let ((_body10489_ _tl1047110486_))
                              (if (gx#stx-list? _body10489_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate10465_ _body10489_))
                                  (_E1046810477_)))))
                        (_E1046810477_)))))
            (_E1046710491_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx10409_)
        (let* ((_e1041010423_ _stx10409_)
               (_E1041210427_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1041010423_)))
               (_E1041110459_
                (lambda ()
                  (if (gx#stx-pair? _e1041010423_)
                      (let ((_e1041310431_ (gx#syntax-e _e1041010423_)))
                        (let ((_hd1041410434_ (##car _e1041310431_))
                              (_tl1041510436_ (##cdr _e1041310431_)))
                          (if (gx#stx-pair? _tl1041510436_)
                              (let ((_e1041610439_
                                     (gx#syntax-e _tl1041510436_)))
                                (let ((_hd1041710442_ (##car _e1041610439_))
                                      (_tl1041810444_ (##cdr _e1041610439_)))
                                  (let ((_hd10447_ _hd1041710442_))
                                    (if (gx#stx-pair? _tl1041810444_)
                                        (let ((_e1041910449_
                                               (gx#syntax-e _tl1041810444_)))
                                          (let ((_hd1042010452_
                                                 (##car _e1041910449_))
                                                (_tl1042110454_
                                                 (##cdr _e1041910449_)))
                                            (let ((_expr10457_ _hd1042010452_))
                                              (if (gx#stx-null? _tl1042110454_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd10447_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd10447_)
                          (cons _expr10457_ '())))
              (_E1041210427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1041210427_)))))
                                        (_E1041210427_)))))
                              (_E1041210427_))))
                      (_E1041210427_)))))
          (_E1041110459_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx10355_)
        (let* ((_e1035610369_ _stx10355_)
               (_E1035810373_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1035610369_)))
               (_E1035710405_
                (lambda ()
                  (if (gx#stx-pair? _e1035610369_)
                      (let ((_e1035910377_ (gx#syntax-e _e1035610369_)))
                        (let ((_hd1036010380_ (##car _e1035910377_))
                              (_tl1036110382_ (##cdr _e1035910377_)))
                          (if (gx#stx-pair? _tl1036110382_)
                              (let ((_e1036210385_
                                     (gx#syntax-e _tl1036110382_)))
                                (let ((_hd1036310388_ (##car _e1036210385_))
                                      (_tl1036410390_ (##cdr _e1036210385_)))
                                  (let ((_hd10393_ _hd1036310388_))
                                    (if (gx#stx-pair? _tl1036410390_)
                                        (let ((_e1036510395_
                                               (gx#syntax-e _tl1036410390_)))
                                          (let ((_hd1036610398_
                                                 (##car _e1036510395_))
                                                (_tl1036710400_
                                                 (##cdr _e1036510395_)))
                                            (let ((_expr10403_ _hd1036610398_))
                                              (if (gx#stx-null? _tl1036710400_)
                                                  (if (gx#identifier?
                                                       _hd10393_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd10393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr10403_ '())))
              (_E1035810373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1035810373_)))))
                                        (_E1035810373_)))))
                              (_E1035810373_))))
                      (_E1035810373_)))))
          (_E1035710405_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx10301_)
        (let* ((_e1030210315_ _stx10301_)
               (_E1030410319_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1030210315_)))
               (_E1030310351_
                (lambda ()
                  (if (gx#stx-pair? _e1030210315_)
                      (let ((_e1030510323_ (gx#syntax-e _e1030210315_)))
                        (let ((_hd1030610326_ (##car _e1030510323_))
                              (_tl1030710328_ (##cdr _e1030510323_)))
                          (if (gx#stx-pair? _tl1030710328_)
                              (let ((_e1030810331_
                                     (gx#syntax-e _tl1030710328_)))
                                (let ((_hd1030910334_ (##car _e1030810331_))
                                      (_tl1031010336_ (##cdr _e1030810331_)))
                                  (let ((_id10339_ _hd1030910334_))
                                    (if (gx#stx-pair? _tl1031010336_)
                                        (let ((_e1031110341_
                                               (gx#syntax-e _tl1031010336_)))
                                          (let ((_hd1031210344_
                                                 (##car _e1031110341_))
                                                (_tl1031310346_
                                                 (##cdr _e1031110341_)))
                                            (let ((_alias-id10349_
                                                   _hd1031210344_))
                                              (if (gx#stx-null? _tl1031310346_)
                                                  (if (and (gx#identifier?
                                                            _id10339_)
                                                           (gx#identifier?
                                                            _alias-id10349_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id10339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id10349_ '())))
              (_E1030410319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1030410319_)))))
                                        (_E1030410319_)))))
                              (_E1030410319_))))
                      (_E1030410319_)))))
          (_E1030310351_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx10258_)
        (let* ((_e1025910269_ _stx10258_)
               (_E1026110273_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1025910269_)))
               (_E1026010297_
                (lambda ()
                  (if (gx#stx-pair? _e1025910269_)
                      (let ((_e1026210277_ (gx#syntax-e _e1025910269_)))
                        (let ((_hd1026310280_ (##car _e1026210277_))
                              (_tl1026410282_ (##cdr _e1026210277_)))
                          (if (gx#stx-pair? _tl1026410282_)
                              (let ((_e1026510285_
                                     (gx#syntax-e _tl1026410282_)))
                                (let ((_hd1026610288_ (##car _e1026510285_))
                                      (_tl1026710290_ (##cdr _e1026510285_)))
                                  (let* ((_hd10293_ _hd1026610288_)
                                         (_body10295_ _tl1026710290_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd10293_)
                                             (gx#stx-list? _body10295_)
                                             (not (gx#stx-null? _body10295_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd10293_)
                                         _body10295_)
                                        (_E1026110273_)))))
                              (_E1026110273_))))
                      (_E1026110273_)))))
          (_E1026010297_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx10194_)
        (letrec ((_generate10196_
                  (lambda (_clause10226_)
                    (let* ((_e1022710234_ _clause10226_)
                           (_E1022910238_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx10194_
                               _clause10226_)))
                           (_E1022810254_
                            (lambda ()
                              (if (gx#stx-pair? _e1022710234_)
                                  (let ((_e1023010242_
                                         (gx#syntax-e _e1022710234_)))
                                    (let ((_hd1023110245_
                                           (##car _e1023010242_))
                                          (_tl1023210247_
                                           (##cdr _e1023010242_)))
                                      (let* ((_hd10250_ _hd1023110245_)
                                             (_body10252_ _tl1023210247_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd10250_)
                                                 (gx#stx-list? _body10252_)
                                                 (not (gx#stx-null?
                                                       _body10252_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd10250_)
                                                   _body10252_)
                                             (gx#stx-source _clause10226_))
                                            (_E1022910238_)))))
                                  (_E1022910238_)))))
                      (_E1022810254_)))))
          (let* ((_e1019710204_ _stx10194_)
                 (_E1019910208_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1019710204_)))
                 (_E1019810222_
                  (lambda ()
                    (if (gx#stx-pair? _e1019710204_)
                        (let ((_e1020010212_ (gx#syntax-e _e1019710204_)))
                          (let ((_hd1020110215_ (##car _e1020010212_))
                                (_tl1020210217_ (##cdr _e1020010212_)))
                            (let ((_clauses10220_ _tl1020210217_))
                              (if (gx#stx-list? _clauses10220_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate10196_
                                    _clauses10220_))
                                  (_E1019910208_)))))
                        (_E1019910208_)))))
            (_E1019810222_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx10095_ _form10096_)
        (letrec ((_generate10098_
                  (lambda (_bind10141_)
                    (let* ((_e1014210152_ _bind10141_)
                           (_E1014410156_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx10095_
                               _bind10141_)))
                           (_E1014310180_
                            (lambda ()
                              (if (gx#stx-pair? _e1014210152_)
                                  (let ((_e1014510160_
                                         (gx#syntax-e _e1014210152_)))
                                    (let ((_hd1014610163_
                                           (##car _e1014510160_))
                                          (_tl1014710165_
                                           (##cdr _e1014510160_)))
                                      (let ((_ids10168_ _hd1014610163_))
                                        (if (gx#stx-pair? _tl1014710165_)
                                            (let ((_e1014810170_
                                                   (gx#syntax-e
                                                    _tl1014710165_)))
                                              (let ((_hd1014910173_
                                                     (##car _e1014810170_))
                                                    (_tl1015010175_
                                                     (##cdr _e1014810170_)))
                                                (let ((_expr10178_
                                                       _hd1014910173_))
                                                  (if (gx#stx-null?
                                                       _tl1015010175_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10168_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10168_)
                        (cons _expr10178_ '()))
                  (_E1014410156_))
              (_E1014410156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1014410156_)))))
                                  (_E1014410156_)))))
                      (_E1014310180_)))))
          (let* ((_e1009910109_ _stx10095_)
                 (_E1010110113_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1009910109_)))
                 (_E1010010137_
                  (lambda ()
                    (if (gx#stx-pair? _e1009910109_)
                        (let ((_e1010210117_ (gx#syntax-e _e1009910109_)))
                          (let ((_hd1010310120_ (##car _e1010210117_))
                                (_tl1010410122_ (##cdr _e1010210117_)))
                            (if (gx#stx-pair? _tl1010410122_)
                                (let ((_e1010510125_
                                       (gx#syntax-e _tl1010410122_)))
                                  (let ((_hd1010610128_ (##car _e1010510125_))
                                        (_tl1010710130_ (##cdr _e1010510125_)))
                                    (let* ((_hd10133_ _hd1010610128_)
                                           (_body10135_ _tl1010710130_))
                                      (if (and (gx#stx-list? _hd10133_)
                                               (gx#stx-list? _body10135_)
                                               (not (gx#stx-null?
                                                     _body10135_)))
                                          (gx#core-cons*
                                           _form10096_
                                           (gx#stx-map1
                                            _generate10098_
                                            _hd10133_)
                                           _body10135_)
                                          (_E1010110113_)))))
                                (_E1010110113_))))
                        (_E1010110113_)))))
            (_E1010010137_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx10187_)
        (let ((_form10189_ '%#let-values))
          (gx#macro-expand-let-values__% _stx10187_ _form10189_))))
    (define gx#macro-expand-let-values
      (lambda _g12572_
        (let ((_g12571_ (##length _g12572_)))
          (cond ((##fx= _g12571_ 1)
                 (apply gx#macro-expand-let-values__0 _g12572_))
                ((##fx= _g12571_ 2)
                 (apply gx#macro-expand-let-values__% _g12572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g12572_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx10092_)
        (gx#macro-expand-let-values__% _stx10092_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx10090_)
        (gx#macro-expand-let-values__% _stx10090_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx9981_)
        (let* ((_e998210008_ _stx9981_)
               (_E999410012_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e998210008_)))
               (_E998410054_
                (lambda ()
                  (if (gx#stx-pair? _e998210008_)
                      (let ((_e999510016_ (gx#syntax-e _e998210008_)))
                        (let ((_hd999610019_ (##car _e999510016_))
                              (_tl999710021_ (##cdr _e999510016_)))
                          (if (gx#stx-pair? _tl999710021_)
                              (let ((_e999810024_ (gx#syntax-e _tl999710021_)))
                                (let ((_hd999910027_ (##car _e999810024_))
                                      (_tl1000010029_ (##cdr _e999810024_)))
                                  (let ((_test10032_ _hd999910027_))
                                    (if (gx#stx-pair? _tl1000010029_)
                                        (let ((_e1000110034_
                                               (gx#syntax-e _tl1000010029_)))
                                          (let ((_hd1000210037_
                                                 (##car _e1000110034_))
                                                (_tl1000310039_
                                                 (##cdr _e1000110034_)))
                                            (let ((_K10042_ _hd1000210037_))
                                              (if (gx#stx-pair? _tl1000310039_)
                                                  (let ((_e1000410044_
                                                         (gx#syntax-e
                                                          _tl1000310039_)))
                                                    (let ((_hd1000510047_
                                                           (##car _e1000410044_))
                                                          (_tl1000610049_
                                                           (##cdr _e1000410044_)))
                                                      (let ((_E10052_
                                                             _hd1000510047_))
                                                        (if (gx#stx-null?
                                                             _tl1000610049_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test10032_
                         _K10042_
                         _E10052_)
                        (_E999410012_))
                    (_E999410012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E999410012_)))))
                                        (_E999410012_)))))
                              (_E999410012_))))
                      (_E999410012_))))
               (_E998310086_
                (lambda ()
                  (if (gx#stx-pair? _e998210008_)
                      (let ((_e998510058_ (gx#syntax-e _e998210008_)))
                        (let ((_hd998610061_ (##car _e998510058_))
                              (_tl998710063_ (##cdr _e998510058_)))
                          (if (gx#stx-pair? _tl998710063_)
                              (let ((_e998810066_ (gx#syntax-e _tl998710063_)))
                                (let ((_hd998910069_ (##car _e998810066_))
                                      (_tl999010071_ (##cdr _e998810066_)))
                                  (let ((_test10074_ _hd998910069_))
                                    (if (gx#stx-pair? _tl999010071_)
                                        (let ((_e999110076_
                                               (gx#syntax-e _tl999010071_)))
                                          (let ((_hd999210079_
                                                 (##car _e999110076_))
                                                (_tl999310081_
                                                 (##cdr _e999110076_)))
                                            (let ((_K10084_ _hd999210079_))
                                              (if (gx#stx-null? _tl999310081_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test10074_
                                                       _K10084_
                                                       '#!void)
                                                      (_E998410054_))
                                                  (_E998410054_)))))
                                        (_E998410054_)))))
                              (_E998410054_))))
                      (_E998410054_)))))
          (_E998310086_))))
    (define gx#free-identifier=?
      (lambda (_xid9969_ _yid9970_)
        (let ((_xe9972_ (gx#resolve-identifier__0 _xid9969_))
              (_ye9973_ (gx#resolve-identifier__0 _yid9970_)))
          (if (and _xe9972_ _ye9973_)
              (let ((_$e9975_ (eq? _xe9972_ _ye9973_)))
                (if _$e9975_
                    _$e9975_
                    (if (##structure-instance-of? _xe9972_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye9973_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe9972_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye9973_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe9972_ _ye9973_)
                  '#f
                  (gx#stx-eq? _xid9969_ _yid9970_))))))
    (define gx#bound-identifier=?
      (lambda (_xid9953_ _yid9954_)
        (letrec ((_context9956_
                  (lambda (_e9967_)
                    (if (##structure-direct-instance-of?
                         _e9967_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e9967_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks9957_
                  (lambda (_e9965_)
                    (if (symbol? _e9965_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e9965_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e9965_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e9965_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap9958_
                  (lambda (_e9963_)
                    (if (symbol? _e9963_)
                        _e9963_
                        (gx#syntax-local-unwrap _e9963_)))))
          (let ((_x9960_ (_unwrap9958_ _xid9953_))
                (_y9961_ (_unwrap9958_ _yid9954_)))
            (if (gx#stx-eq? _x9960_ _y9961_)
                (if (eq? (_context9956_ _x9960_) (_context9956_ _y9961_))
                    (equal? (_marks9957_ _x9960_) (_marks9957_ _y9961_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx9951_)
        (if (gx#identifier? _stx9951_)
            (gx#core-identifier=? _stx9951_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx9949_)
        (if (gx#identifier? _stx9949_)
            (gx#core-identifier=? _stx9949_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x9947_)
        (if (gx#identifier? _x9947_)
            (if (not (gx#underscore? _x9947_)) _x9947_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx9893_ _where9894_)
        (let _lp9896_ ((_rest9898_ (gx#syntax->list _stx9893_)))
          (let* ((_rest98999907_ _rest9898_)
                 (_else99019915_ (lambda () '#t))
                 (_K99039925_
                  (lambda (_rest9918_ _hd9919_)
                    (if (not (gx#identifier? _hd9919_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where9894_
                         _hd9919_)
                        (if (find (lambda (_g99209922_)
                                    (gx#bound-identifier=?
                                     _g99209922_
                                     _hd9919_))
                                  _rest9918_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where9894_
                             _hd9919_)
                            (_lp9896_ _rest9918_))))))
            (if (##pair? _rest98999907_)
                (let ((_hd99049928_ (##car _rest98999907_))
                      (_tl99059930_ (##cdr _rest98999907_)))
                  (let* ((_hd9933_ _hd99049928_) (_rest9935_ _tl99059930_))
                    (_K99039925_ _rest9935_ _hd9933_)))
                (_else99019915_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx9940_)
        (let ((_where9942_ _stx9940_))
          (gx#check-duplicate-identifiers__% _stx9940_ _where9942_))))
    (define gx#check-duplicate-identifiers
      (lambda _g12574_
        (let ((_g12573_ (##length _g12574_)))
          (cond ((##fx= _g12573_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g12574_))
                ((##fx= _g12573_ 2)
                 (apply gx#check-duplicate-identifiers__% _g12574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g12574_))))))
    (define gx#core-bind-values?
      (lambda (_stx9885_)
        (gx#stx-andmap
         (lambda (_x9887_)
           (let ((_$e9889_ (gx#identifier? _x9887_)))
             (if _$e9889_ _$e9889_ (gx#stx-false? _x9887_))))
         _stx9885_)))
    (define gx#core-bind-values!__%
      (lambda (_stx9849_ _rebind?9850_ _phi9851_ _ctx9852_)
        (gx#stx-for-each1
         (lambda (_id9854_)
           (if (gx#identifier? _id9854_)
               (gx#core-bind-runtime!__%
                _id9854_
                _rebind?9850_
                _phi9851_
                _ctx9852_)
               '#!void))
         _stx9849_)))
    (define gx#core-bind-values!__0
      (lambda (_stx9859_)
        (let* ((_rebind?9861_ '#f)
               (_phi9863_ (gx#current-expander-phi))
               (_ctx9865_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx9859_
           _rebind?9861_
           _phi9863_
           _ctx9865_))))
    (define gx#core-bind-values!__1
      (lambda (_stx9867_ _rebind?9868_)
        (let* ((_phi9870_ (gx#current-expander-phi))
               (_ctx9872_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx9867_
           _rebind?9868_
           _phi9870_
           _ctx9872_))))
    (define gx#core-bind-values!__2
      (lambda (_stx9874_ _rebind?9875_ _phi9876_)
        (let ((_ctx9878_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx9874_
           _rebind?9875_
           _phi9876_
           _ctx9878_))))
    (define gx#core-bind-values!
      (lambda _g12576_
        (let ((_g12575_ (##length _g12576_)))
          (cond ((##fx= _g12575_ 1) (apply gx#core-bind-values!__0 _g12576_))
                ((##fx= _g12575_ 2) (apply gx#core-bind-values!__1 _g12576_))
                ((##fx= _g12575_ 3) (apply gx#core-bind-values!__2 _g12576_))
                ((##fx= _g12575_ 4) (apply gx#core-bind-values!__% _g12576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g12576_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx9844_)
        (gx#stx-map1
         (lambda (_x9846_)
           (if (gx#identifier? _x9846_) (gx#core-quote-syntax__0 _x9846_) '#f))
         _stx9844_)))
    (define gx#core-runtime-ref?
      (lambda (_stx9837_)
        (if (gx#identifier? _stx9837_)
            (let* ((_bind9839_ (gx#resolve-identifier__0 _stx9837_))
                   (_$e9841_ (not _bind9839_)))
              (if _$e9841_
                  _$e9841_
                  (##structure-instance-of?
                   _bind9839_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id9829_ _form9830_)
        (let ((_bind9832_ (gx#resolve-identifier__0 _id9829_)))
          (if (##structure-instance-of? _bind9832_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id9829_)
              (if (not _bind9832_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id9829_)))
                      (gx#core-quote-syntax__0 _id9829_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form9830_
                       _id9829_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form9830_
                   _id9829_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id9788_ _rebind?9789_ _phi9790_ _ctx9791_)
        (let* ((_key9793_ (gx#core-identifier-key _id9788_))
               (_eid9795_
                (gx#make-binding-id__% _key9793_ '#f _phi9790_ _ctx9791_))
               (_bind9797_
                (if (##structure-instance-of? _ctx9791_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9795_
                     _key9793_
                     _phi9790_
                     _ctx9791_)
                    (if (##structure-instance-of? _ctx9791_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9795_
                         _key9793_
                         _phi9790_)
                        (if (##structure-instance-of?
                             _ctx9791_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid9795_
                             _key9793_
                             _phi9790_)
                            (##structure
                             gx#runtime-binding::t
                             _eid9795_
                             _key9793_
                             _phi9790_))))))
          (gx#bind-identifier!__%
           _id9788_
           _bind9797_
           _rebind?9789_
           _phi9790_
           _ctx9791_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id9803_)
        (let* ((_rebind?9805_ '#f)
               (_phi9807_ (gx#current-expander-phi))
               (_ctx9809_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id9803_
           _rebind?9805_
           _phi9807_
           _ctx9809_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id9811_ _rebind?9812_)
        (let* ((_phi9814_ (gx#current-expander-phi))
               (_ctx9816_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id9811_
           _rebind?9812_
           _phi9814_
           _ctx9816_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id9818_ _rebind?9819_ _phi9820_)
        (let ((_ctx9822_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id9818_
           _rebind?9819_
           _phi9820_
           _ctx9822_))))
    (define gx#core-bind-runtime!
      (lambda _g12578_
        (let ((_g12577_ (##length _g12578_)))
          (cond ((##fx= _g12577_ 1) (apply gx#core-bind-runtime!__0 _g12578_))
                ((##fx= _g12577_ 2) (apply gx#core-bind-runtime!__1 _g12578_))
                ((##fx= _g12577_ 3) (apply gx#core-bind-runtime!__2 _g12578_))
                ((##fx= _g12577_ 4) (apply gx#core-bind-runtime!__% _g12578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g12578_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id9743_ _eid9744_ _rebind?9745_ _phi9746_ _ctx9747_)
        (let* ((_key9749_ (gx#core-identifier-key _id9743_))
               (_bind9751_
                (if (##structure-instance-of? _ctx9747_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9744_
                     _key9749_
                     _phi9746_
                     _ctx9747_)
                    (if (##structure-instance-of? _ctx9747_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9744_
                         _key9749_
                         _phi9746_)
                        (##structure
                         gx#runtime-binding::t
                         _eid9744_
                         _key9749_
                         _phi9746_)))))
          (gx#bind-identifier!__%
           _id9743_
           _bind9751_
           _rebind?9745_
           _phi9746_
           _ctx9747_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id9757_ _eid9758_)
        (let* ((_rebind?9760_ '#f)
               (_phi9762_ (gx#current-expander-phi))
               (_ctx9764_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id9757_
           _eid9758_
           _rebind?9760_
           _phi9762_
           _ctx9764_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id9766_ _eid9767_ _rebind?9768_)
        (let* ((_phi9770_ (gx#current-expander-phi))
               (_ctx9772_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id9766_
           _eid9767_
           _rebind?9768_
           _phi9770_
           _ctx9772_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id9774_ _eid9775_ _rebind?9776_ _phi9777_)
        (let ((_ctx9779_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id9774_
           _eid9775_
           _rebind?9776_
           _phi9777_
           _ctx9779_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g12580_
        (let ((_g12579_ (##length _g12580_)))
          (cond ((##fx= _g12579_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g12580_))
                ((##fx= _g12579_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g12580_))
                ((##fx= _g12579_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g12580_))
                ((##fx= _g12579_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g12580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g12580_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id9703_ _eid9704_ _rebind?9705_ _phi9706_ _ctx9707_)
        (gx#bind-identifier!__%
         _id9703_
         (##structure
          gx#extern-binding::t
          _eid9704_
          (gx#core-identifier-key _id9703_)
          _phi9706_)
         _rebind?9705_
         _phi9706_
         _ctx9707_)))
    (define gx#core-bind-extern!__0
      (lambda (_id9712_ _eid9713_)
        (let* ((_rebind?9715_ '#f)
               (_phi9717_ (gx#current-expander-phi))
               (_ctx9719_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id9712_
           _eid9713_
           _rebind?9715_
           _phi9717_
           _ctx9719_))))
    (define gx#core-bind-extern!__1
      (lambda (_id9721_ _eid9722_ _rebind?9723_)
        (let* ((_phi9725_ (gx#current-expander-phi))
               (_ctx9727_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id9721_
           _eid9722_
           _rebind?9723_
           _phi9725_
           _ctx9727_))))
    (define gx#core-bind-extern!__2
      (lambda (_id9729_ _eid9730_ _rebind?9731_ _phi9732_)
        (let ((_ctx9734_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id9729_
           _eid9730_
           _rebind?9731_
           _phi9732_
           _ctx9734_))))
    (define gx#core-bind-extern!
      (lambda _g12582_
        (let ((_g12581_ (##length _g12582_)))
          (cond ((##fx= _g12581_ 2) (apply gx#core-bind-extern!__0 _g12582_))
                ((##fx= _g12581_ 3) (apply gx#core-bind-extern!__1 _g12582_))
                ((##fx= _g12581_ 4) (apply gx#core-bind-extern!__2 _g12582_))
                ((##fx= _g12581_ 5) (apply gx#core-bind-extern!__% _g12582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g12582_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id9657_ _e9658_ _rebind?9659_ _phi9660_ _ctx9661_)
        (gx#bind-identifier!__%
         _id9657_
         (let ((_key9666_ (gx#core-identifier-key _id9657_))
               (_e9667_ (if (or (##structure-instance-of?
                                 _e9658_
                                 'gx#expander::t)
                                (##structure-instance-of?
                                 _e9658_
                                 'gx#expander-context::t))
                            _e9658_
                            (##structure
                             gx#user-expander::t
                             _e9658_
                             _ctx9661_
                             _phi9660_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key9666_ '#t _phi9660_ _ctx9661_)
            _key9666_
            _phi9660_
            _e9667_))
         _rebind?9659_
         _phi9660_
         _ctx9661_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id9672_ _e9673_)
        (let* ((_rebind?9675_ '#f)
               (_phi9677_ (gx#current-expander-phi))
               (_ctx9679_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id9672_
           _e9673_
           _rebind?9675_
           _phi9677_
           _ctx9679_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id9681_ _e9682_ _rebind?9683_)
        (let* ((_phi9685_ (gx#current-expander-phi))
               (_ctx9687_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id9681_
           _e9682_
           _rebind?9683_
           _phi9685_
           _ctx9687_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id9689_ _e9690_ _rebind?9691_ _phi9692_)
        (let ((_ctx9694_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id9689_
           _e9690_
           _rebind?9691_
           _phi9692_
           _ctx9694_))))
    (define gx#core-bind-syntax!
      (lambda _g12584_
        (let ((_g12583_ (##length _g12584_)))
          (cond ((##fx= _g12583_ 2) (apply gx#core-bind-syntax!__0 _g12584_))
                ((##fx= _g12583_ 3) (apply gx#core-bind-syntax!__1 _g12584_))
                ((##fx= _g12583_ 4) (apply gx#core-bind-syntax!__2 _g12584_))
                ((##fx= _g12583_ 5) (apply gx#core-bind-syntax!__% _g12584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g12584_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id9640_ _e9641_ _rebind?9642_)
        (gx#core-bind-syntax!__%
         _id9640_
         _e9641_
         _rebind?9642_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id9647_ _e9648_)
        (let ((_rebind?9650_ '#f))
          (gx#core-bind-root-syntax!__% _id9647_ _e9648_ _rebind?9650_))))
    (define gx#core-bind-root-syntax!
      (lambda _g12586_
        (let ((_g12585_ (##length _g12586_)))
          (cond ((##fx= _g12585_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g12586_))
                ((##fx= _g12585_ 3)
                 (apply gx#core-bind-root-syntax!__% _g12586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g12586_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id9598_ _alias-id9599_ _rebind?9600_ _phi9601_ _ctx9602_)
        (gx#bind-identifier!__%
         _id9598_
         (let ((_key9604_ (gx#core-identifier-key _id9598_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key9604_ '#t _phi9601_ _ctx9602_)
            _key9604_
            _phi9601_
            _alias-id9599_))
         _rebind?9600_
         _phi9601_
         _ctx9602_)))
    (define gx#core-bind-alias!__0
      (lambda (_id9609_ _alias-id9610_)
        (let* ((_rebind?9612_ '#f)
               (_phi9614_ (gx#current-expander-phi))
               (_ctx9616_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id9609_
           _alias-id9610_
           _rebind?9612_
           _phi9614_
           _ctx9616_))))
    (define gx#core-bind-alias!__1
      (lambda (_id9618_ _alias-id9619_ _rebind?9620_)
        (let* ((_phi9622_ (gx#current-expander-phi))
               (_ctx9624_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id9618_
           _alias-id9619_
           _rebind?9620_
           _phi9622_
           _ctx9624_))))
    (define gx#core-bind-alias!__2
      (lambda (_id9626_ _alias-id9627_ _rebind?9628_ _phi9629_)
        (let ((_ctx9631_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id9626_
           _alias-id9627_
           _rebind?9628_
           _phi9629_
           _ctx9631_))))
    (define gx#core-bind-alias!
      (lambda _g12588_
        (let ((_g12587_ (##length _g12588_)))
          (cond ((##fx= _g12587_ 2) (apply gx#core-bind-alias!__0 _g12588_))
                ((##fx= _g12587_ 3) (apply gx#core-bind-alias!__1 _g12588_))
                ((##fx= _g12587_ 4) (apply gx#core-bind-alias!__2 _g12588_))
                ((##fx= _g12587_ 5) (apply gx#core-bind-alias!__% _g12588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g12588_))))))
    (define gx#make-binding-id__%
      (lambda (_key9555_ _syntax?9556_ _phi9557_ _ctx9558_)
        (if (uninterned-symbol? _key9555_)
            (gensym 'L)
            (if (pair? _key9555_)
                (gensym (car _key9555_))
                (if (##structure-instance-of? _ctx9558_ 'gx#top-context::t)
                    (let ((_ns9560_ (gx#core-context-namespace__% _ctx9558_)))
                      (if (and (fxzero? _phi9557_) (not _syntax?9556_))
                          (if _ns9560_
                              (make-symbol _ns9560_ '"#" _key9555_)
                              _key9555_)
                          (if _syntax?9556_
                              (make-symbol
                               (let ((_$e9562_ _ns9560_))
                                 (if _$e9562_ _$e9562_ '""))
                               '"[:"
                               (number->string _phi9557_)
                               '":]#"
                               _key9555_)
                              (make-symbol
                               (let ((_$e9565_ _ns9560_))
                                 (if _$e9565_ _$e9565_ '""))
                               '"["
                               (number->string _phi9557_)
                               '"]#"
                               _key9555_))))
                    (gensym _key9555_))))))
    (define gx#make-binding-id__0
      (lambda (_key9571_)
        (let* ((_syntax?9573_ '#f)
               (_phi9575_ (gx#current-expander-phi))
               (_ctx9577_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key9571_
           _syntax?9573_
           _phi9575_
           _ctx9577_))))
    (define gx#make-binding-id__1
      (lambda (_key9579_ _syntax?9580_)
        (let* ((_phi9582_ (gx#current-expander-phi))
               (_ctx9584_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key9579_
           _syntax?9580_
           _phi9582_
           _ctx9584_))))
    (define gx#make-binding-id__2
      (lambda (_key9586_ _syntax?9587_ _phi9588_)
        (let ((_ctx9590_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key9586_
           _syntax?9587_
           _phi9588_
           _ctx9590_))))
    (define gx#make-binding-id
      (lambda _g12590_
        (let ((_g12589_ (##length _g12590_)))
          (cond ((##fx= _g12589_ 1) (apply gx#make-binding-id__0 _g12590_))
                ((##fx= _g12589_ 2) (apply gx#make-binding-id__1 _g12590_))
                ((##fx= _g12589_ 3) (apply gx#make-binding-id__2 _g12590_))
                ((##fx= _g12589_ 4) (apply gx#make-binding-id__% _g12590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g12590_))))))))
