(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-expand-begin%
    (lambda (_stx12520_)
      (letrec ((_expand-special12522_
                (lambda (_hd12524_ _K12525_ _rest12526_ _r12527_)
                  (_K12525_
                   _rest12526_
                   (cons (gx#core-expand-top _hd12524_) _r12527_)))))
        (gx#core-expand-block__0 _stx12520_ _expand-special12522_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12273_)
      (letrec ((_expand-special12275_
                (lambda (_hd12395_ _K12396_ _rest12397_ _r12398_)
                  (let* ((_K12402_
                          (lambda (_e12400_)
                            (_K12396_ _rest12397_ (cons _e12400_ _r12398_))))
                         (_e1240312432_ _hd12395_)
                         (_E1242712436_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1240312432_)))
                         (_E1242312448_
                          (lambda ()
                            (if (gx#stx-pair? _e1240312432_)
                                (let ((_e1242812440_
                                       (gx#syntax-e _e1240312432_)))
                                  (let ((_hd1242912443_ (##car _e1242812440_))
                                        (_tl1243012445_ (##cdr _e1242812440_)))
                                    (if (and (gx#identifier? _hd1242912443_)
                                             (gx#core-identifier=?
                                              _hd1242912443_
                                              '%#define-runtime))
                                        (if '#t
                                            (_K12402_
                                             (gx#core-expand-define-runtime%
                                              _hd12395_))
                                            (_E1242712436_))
                                        (_E1242712436_))))
                                (_E1242712436_))))
                         (_E1241912460_
                          (lambda ()
                            (if (gx#stx-pair? _e1240312432_)
                                (let ((_e1242412452_
                                       (gx#syntax-e _e1240312432_)))
                                  (let ((_hd1242512455_ (##car _e1242412452_))
                                        (_tl1242612457_ (##cdr _e1242412452_)))
                                    (if (and (gx#identifier? _hd1242512455_)
                                             (gx#core-identifier=?
                                              _hd1242512455_
                                              '%#define-alias))
                                        (if '#t
                                            (_K12402_
                                             (gx#core-expand-define-alias%
                                              _hd12395_))
                                            (_E1242312448_))
                                        (_E1242312448_))))
                                (_E1242312448_))))
                         (_E1240912472_
                          (lambda ()
                            (if (gx#stx-pair? _e1240312432_)
                                (let ((_e1242012464_
                                       (gx#syntax-e _e1240312432_)))
                                  (let ((_hd1242112467_ (##car _e1242012464_))
                                        (_tl1242212469_ (##cdr _e1242012464_)))
                                    (if (and (gx#identifier? _hd1242112467_)
                                             (gx#core-identifier=?
                                              _hd1242112467_
                                              '%#define-syntax))
                                        (if '#t
                                            (_K12402_
                                             (gx#core-expand-define-syntax%
                                              _hd12395_))
                                            (_E1241912460_))
                                        (_E1241912460_))))
                                (_E1241912460_))))
                         (_E1240512504_
                          (lambda ()
                            (if (gx#stx-pair? _e1240312432_)
                                (let ((_e1241012476_
                                       (gx#syntax-e _e1240312432_)))
                                  (let ((_hd1241112479_ (##car _e1241012476_))
                                        (_tl1241212481_ (##cdr _e1241012476_)))
                                    (if (and (gx#identifier? _hd1241112479_)
                                             (gx#core-identifier=?
                                              _hd1241112479_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1241212481_)
                                            (let ((_e1241312484_
                                                   (gx#syntax-e
                                                    _tl1241212481_)))
                                              (let ((_hd1241412487_
                                                     (##car _e1241312484_))
                                                    (_tl1241512489_
                                                     (##cdr _e1241312484_)))
                                                (let ((_hd-bind12492_
                                                       _hd1241412487_))
                                                  (if (gx#stx-pair?
                                                       _tl1241512489_)
                                                      (let ((_e1241612494_
                                                             (gx#syntax-e
                                                              _tl1241512489_)))
                                                        (let ((_hd1241712497_
                                                               (##car _e1241612494_))
                                                              (_tl1241812499_
                                                               (##cdr _e1241612494_)))
                                                          (let ((_expr12502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1241712497_))
                    (if (gx#stx-null? _tl1241812499_)
                        (if (gx#core-bind-values? _hd-bind12492_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12492_)
                              (_K12402_ _hd12395_))
                            (_E1240912472_))
                        (_E1240912472_)))))
              (_E1240912472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1240912472_))
                                        (_E1240912472_))))
                                (_E1240912472_))))
                         (_E1240412516_
                          (lambda ()
                            (if (gx#stx-pair? _e1240312432_)
                                (let ((_e1240612508_
                                       (gx#syntax-e _e1240312432_)))
                                  (let ((_hd1240712511_ (##car _e1240612508_))
                                        (_tl1240812513_ (##cdr _e1240612508_)))
                                    (if (and (gx#identifier? _hd1240712511_)
                                             (gx#core-identifier=?
                                              _hd1240712511_
                                              '%#begin-syntax))
                                        (if '#t
                                            (_K12402_
                                             (gx#core-expand-begin-syntax%
                                              _hd12395_))
                                            (_E1240512504_))
                                        (_E1240512504_))))
                                (_E1240512504_)))))
                    (_E1240412516_))))
               (_eval-body12276_
                (lambda (_rbody12284_)
                  (let _lp12286_ ((_rest12288_ _rbody12284_)
                                  (_body12289_ '())
                                  (_ebody12290_ '()))
                    (let* ((_rest1229112299_ _rest12288_)
                           (_else1229312307_
                            (lambda ()
                              (values _body12289_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12290_)
                                        (gx#stx-source _stx12273_))))))
                           (_K1229512383_
                            (lambda (_rest12310_ _hd12311_)
                              (let* ((_e1231212329_ _hd12311_)
                                     (_E1232412333_
                                      (lambda ()
                                        (_lp12286_
                                         _rest12310_
                                         (cons _hd12311_ _body12289_)
                                         (cons _hd12311_ _ebody12290_))))
                                     (_E1231412345_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1231212329_)
                                            (let ((_e1232512337_
                                                   (gx#syntax-e
                                                    _e1231212329_)))
                                              (let ((_hd1232612340_
                                                     (##car _e1232512337_))
                                                    (_tl1232712342_
                                                     (##cdr _e1232512337_)))
                                                (if (and (gx#identifier?
                                                          _hd1232612340_)
                                                         (gx#core-identifier=?
                                                          _hd1232612340_
                                                          '%#begin-syntax))
                                                    (if '#t
                                                        (_lp12286_
                                                         _rest12310_
                                                         (cons _hd12311_
                                                               _body12289_)
                                                         _ebody12290_)
                                                        (_E1232412333_))
                                                    (_E1232412333_))))
                                            (_E1232412333_))))
                                     (_E1231312379_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1231212329_)
                                            (let ((_e1231512349_
                                                   (gx#syntax-e
                                                    _e1231212329_)))
                                              (let ((_hd1231612352_
                                                     (##car _e1231512349_))
                                                    (_tl1231712354_
                                                     (##cdr _e1231512349_)))
                                                (if (and (gx#identifier?
                                                          _hd1231612352_)
                                                         (gx#core-identifier=?
                                                          _hd1231612352_
                                                          '%#define-values))
                                                    (if (gx#stx-pair?
                                                         _tl1231712354_)
                                                        (let ((_e1231812357_
                                                               (gx#syntax-e
                                                                _tl1231712354_)))
                                                          (let ((_hd1231912360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1231812357_))
                        (_tl1232012362_ (##cdr _e1231812357_)))
                    (let ((_hd-bind12365_ _hd1231912360_))
                      (if (gx#stx-pair? _tl1232012362_)
                          (let ((_e1232112367_ (gx#syntax-e _tl1232012362_)))
                            (let ((_hd1232212370_ (##car _e1232112367_))
                                  (_tl1232312372_ (##cdr _e1232112367_)))
                              (let ((_expr12375_ _hd1232212370_))
                                (if (gx#stx-null? _tl1232312372_)
                                    (if '#t
                                        (let ((_ehd12377_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12365_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12375_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12311_))))
                                          (_lp12286_
                                           _rest12310_
                                           (cons _ehd12377_ _body12289_)
                                           (cons _ehd12377_ _ebody12290_)))
                                        (_E1231412345_))
                                    (_E1231412345_)))))
                          (_E1231412345_)))))
                (_E1231412345_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1231412345_))))
                                            (_E1231412345_)))))
                                (_E1231312379_)))))
                      (if (##pair? _rest1229112299_)
                          (let ((_hd1229612386_ (##car _rest1229112299_))
                                (_tl1229712388_ (##cdr _rest1229112299_)))
                            (let* ((_hd12391_ _hd1229612386_)
                                   (_rest12393_ _tl1229712388_))
                              (_K1229512383_ _rest12393_ _hd12391_)))
                          (_else1229312307_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12279_
                   (gx#core-expand-block__1
                    _stx12273_
                    _expand-special12275_
                    '#f))
                  (_g12543_ (_eval-body12276_ _rbody12279_)))
             (begin
               (let ((_g12544_
                      (if (##values? _g12543_) (##vector-length _g12543_) 1)))
                 (if (not (##fx= _g12544_ 2))
                     (error "Context expects 2 values" _g12544_)))
               (let ((_expanded-body12281_ (##vector-ref _g12543_ 0))
                     (_value12282_ (##vector-ref _g12543_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12281_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12282_ '())))
                  (gx#stx-source _stx12273_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12243_)
      (let* ((_e1224412251_ _stx12243_)
             (_E1224612255_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1224412251_)))
             (_E1224512269_
              (lambda ()
                (if (gx#stx-pair? _e1224412251_)
                    (let ((_e1224712259_ (gx#syntax-e _e1224412251_)))
                      (let ((_hd1224812262_ (##car _e1224712259_))
                            (_tl1224912264_ (##cdr _e1224712259_)))
                        (let ((_body12267_ _tl1224912264_))
                          (if (gx#stx-list? _body12267_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12267_)
                               (gx#stx-source _stx12243_))
                              (_E1224612255_)))))
                    (_E1224612255_)))))
        (_E1224512269_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12241_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12241_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12187_)
      (let* ((_e1218812201_ _stx12187_)
             (_E1219012205_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1218812201_)))
             (_E1218912237_
              (lambda ()
                (if (gx#stx-pair? _e1218812201_)
                    (let ((_e1219112209_ (gx#syntax-e _e1218812201_)))
                      (let ((_hd1219212212_ (##car _e1219112209_))
                            (_tl1219312214_ (##cdr _e1219112209_)))
                        (if (gx#stx-pair? _tl1219312214_)
                            (let ((_e1219412217_ (gx#syntax-e _tl1219312214_)))
                              (let ((_hd1219512220_ (##car _e1219412217_))
                                    (_tl1219612222_ (##cdr _e1219412217_)))
                                (let ((_ann12225_ _hd1219512220_))
                                  (if (gx#stx-pair? _tl1219612222_)
                                      (let ((_e1219712227_
                                             (gx#syntax-e _tl1219612222_)))
                                        (let ((_hd1219812230_
                                               (##car _e1219712227_))
                                              (_tl1219912232_
                                               (##cdr _e1219712227_)))
                                          (let ((_expr12235_ _hd1219812230_))
                                            (if (gx#stx-null? _tl1219912232_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12235_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12187_))
                                                    (_E1219012205_))
                                                (_E1219012205_)))))
                                      (_E1219012205_)))))
                            (_E1219012205_))))
                    (_E1219012205_)))))
        (_E1218912237_))))
  (define gx#core-expand-local-block
    (lambda (_stx11911_ _body11912_)
      (letrec ((_expand-special11914_
                (lambda (_hd12182_ _K12183_ _rest12184_ _r12185_)
                  (_K12183_
                   '()
                   (cons (_expand-internal11915_ _hd12182_ _rest12184_)
                         _r12185_))))
               (_expand-internal11915_
                (lambda (_hd12178_ _rest12179_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11917_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12178_ _rest12179_))
                        (gx#stx-source _stx11911_))
                       _expand-internal-special11916_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12537 (make-object gx#local-context::t '5)))
                     (gx#local-context:::init!__0 __obj12537)
                     __obj12537))))
               (_expand-internal-special11916_
                (lambda (_hd12073_ _K12074_ _rest12075_ _r12076_)
                  (let* ((_e1207712102_ _hd12073_)
                         (_E1209712106_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1207712102_)))
                         (_E1209312118_
                          (lambda ()
                            (if (gx#stx-pair? _e1207712102_)
                                (let ((_e1209812110_
                                       (gx#syntax-e _e1207712102_)))
                                  (let ((_hd1209912113_ (##car _e1209812110_))
                                        (_tl1210012115_ (##cdr _e1209812110_)))
                                    (if (and (gx#identifier? _hd1209912113_)
                                             (gx#core-identifier=?
                                              _hd1209912113_
                                              '%#declare))
                                        (if '#t
                                            (_K12074_
                                             _rest12075_
                                             (cons (gx#core-expand-declare%
                                                    _hd12073_)
                                                   _r12076_))
                                            (_E1209712106_))
                                        (_E1209712106_))))
                                (_E1209712106_))))
                         (_E1208912130_
                          (lambda ()
                            (if (gx#stx-pair? _e1207712102_)
                                (let ((_e1209412122_
                                       (gx#syntax-e _e1207712102_)))
                                  (let ((_hd1209512125_ (##car _e1209412122_))
                                        (_tl1209612127_ (##cdr _e1209412122_)))
                                    (if (and (gx#identifier? _hd1209512125_)
                                             (gx#core-identifier=?
                                              _hd1209512125_
                                              '%#define-alias))
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd12073_)
                                              (_K12074_ _rest12075_ _r12076_))
                                            (_E1209312118_))
                                        (_E1209312118_))))
                                (_E1209312118_))))
                         (_E1207912142_
                          (lambda ()
                            (if (gx#stx-pair? _e1207712102_)
                                (let ((_e1209012134_
                                       (gx#syntax-e _e1207712102_)))
                                  (let ((_hd1209112137_ (##car _e1209012134_))
                                        (_tl1209212139_ (##cdr _e1209012134_)))
                                    (if (and (gx#identifier? _hd1209112137_)
                                             (gx#core-identifier=?
                                              _hd1209112137_
                                              '%#define-syntax))
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd12073_)
                                              (_K12074_ _rest12075_ _r12076_))
                                            (_E1208912130_))
                                        (_E1208912130_))))
                                (_E1208912130_))))
                         (_E1207812174_
                          (lambda ()
                            (if (gx#stx-pair? _e1207712102_)
                                (let ((_e1208012146_
                                       (gx#syntax-e _e1207712102_)))
                                  (let ((_hd1208112149_ (##car _e1208012146_))
                                        (_tl1208212151_ (##cdr _e1208012146_)))
                                    (if (and (gx#identifier? _hd1208112149_)
                                             (gx#core-identifier=?
                                              _hd1208112149_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1208212151_)
                                            (let ((_e1208312154_
                                                   (gx#syntax-e
                                                    _tl1208212151_)))
                                              (let ((_hd1208412157_
                                                     (##car _e1208312154_))
                                                    (_tl1208512159_
                                                     (##cdr _e1208312154_)))
                                                (let ((_hd-bind12162_
                                                       _hd1208412157_))
                                                  (if (gx#stx-pair?
                                                       _tl1208512159_)
                                                      (let ((_e1208612164_
                                                             (gx#syntax-e
                                                              _tl1208512159_)))
                                                        (let ((_hd1208712167_
                                                               (##car _e1208612164_))
                                                              (_tl1208812169_
                                                               (##cdr _e1208612164_)))
                                                          (let ((_expr12172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1208712167_))
                    (if (gx#stx-null? _tl1208812169_)
                        (if (gx#core-bind-values? _hd-bind12162_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12162_)
                              (_K12074_ _rest12075_ (cons _hd12073_ _r12076_)))
                            (_E1207912142_))
                        (_E1207912142_)))))
              (_E1207912142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1207912142_))
                                        (_E1207912142_))))
                                (_E1207912142_)))))
                    (_E1207812174_))))
               (_wrap-internal11917_
                (lambda (_rbody11919_)
                  (let _lp11921_ ((_rest11923_ _rbody11919_)
                                  (_decls11924_ '())
                                  (_bind11925_ '())
                                  (_body11926_ '()))
                    (let* ((_e1192711934_ _rest11923_)
                           (_E1192911983_
                            (lambda ()
                              (let* ((_body11978_
                                      (let* ((_body1193711947_ _body11926_)
                                             (_else1194011955_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11926_)
                                                 (gx#stx-source _stx11911_)))))
                                        (let ((_K1194511975_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11911_)))
                                              (_K1194211961_
                                               (lambda (_expr11959_)
                                                 _expr11959_)))
                                          (let ((_try-match1193911971_
                                                 (lambda ()
                                                   (if (##pair? _body1193711947_)
                                                       (let ((_tl1194411966_
                                                              (##cdr _body1193711947_))
                                                             (_hd1194311964_
                                                              (##car _body1193711947_)))
                                                         (if (##null? _tl1194411966_)
                                                             (let ((_expr11969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1194311964_))
                       (_K1194211961_ _expr11969_))
                     (_else1194011955_)))
               (_else1194011955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1193711947_)
                                                (_K1194511975_)
                                                (_try-match1193911971_))))))
                                     (_body11980_
                                      (if (null? _bind11925_)
                                          _body11978_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11925_
                                                       (cons _body11978_ '())))
                                           (gx#stx-source _stx11911_)))))
                                (if (null? _decls11924_)
                                    _body11980_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11924_
                                                 (cons _body11980_ '())))
                                     (gx#stx-source _stx11911_))))))
                           (_E1192812069_
                            (lambda ()
                              (if (gx#stx-pair? _e1192711934_)
                                  (let ((_e1193011987_
                                         (gx#syntax-e _e1192711934_)))
                                    (let ((_hd1193111990_
                                           (##car _e1193011987_))
                                          (_tl1193211992_
                                           (##cdr _e1193011987_)))
                                      (let* ((_hd11995_ _hd1193111990_)
                                             (_rest11997_ _tl1193211992_))
                                        (if '#t
                                            (let* ((_e1199812015_ _hd11995_)
                                                   (_E1201012019_
                                                    (lambda ()
                                                      (if (null? _bind11925_)
                                                          (_lp11921_
                                                           _rest11997_
                                                           _decls11924_
                                                           _bind11925_
                                                           (cons _hd11995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11926_))
                  (_lp11921_
                   _rest11997_
                   _decls11924_
                   (cons (cons '#f (cons _hd11995_ '())) _bind11925_)
                   _body11926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1200012033_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1199812015_)
                                                          (let ((_e1201112023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1199812015_)))
                    (let ((_hd1201212026_ (##car _e1201112023_))
                          (_tl1201312028_ (##cdr _e1201112023_)))
                      (if (and (gx#identifier? _hd1201212026_)
                               (gx#core-identifier=?
                                _hd1201212026_
                                '%#declare))
                          (let ((_xdecls12031_ _tl1201312028_))
                            (if '#t
                                (_lp11921_
                                 _rest11997_
                                 (gx#stx-foldr cons _decls11924_ _xdecls12031_)
                                 _bind11925_
                                 _body11926_)
                                (_E1201012019_)))
                          (_E1201012019_))))
                  (_E1201012019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1199912065_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1199812015_)
                                                          (let ((_e1200112037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1199812015_)))
                    (let ((_hd1200212040_ (##car _e1200112037_))
                          (_tl1200312042_ (##cdr _e1200112037_)))
                      (if (and (gx#identifier? _hd1200212040_)
                               (gx#core-identifier=?
                                _hd1200212040_
                                '%#define-values))
                          (if (gx#stx-pair? _tl1200312042_)
                              (let ((_e1200412045_
                                     (gx#syntax-e _tl1200312042_)))
                                (let ((_hd1200512048_ (##car _e1200412045_))
                                      (_tl1200612050_ (##cdr _e1200412045_)))
                                  (let ((_hd-bind12053_ _hd1200512048_))
                                    (if (gx#stx-pair? _tl1200612050_)
                                        (let ((_e1200712055_
                                               (gx#syntax-e _tl1200612050_)))
                                          (let ((_hd1200812058_
                                                 (##car _e1200712055_))
                                                (_tl1200912060_
                                                 (##cdr _e1200712055_)))
                                            (let ((_expr12063_ _hd1200812058_))
                                              (if (gx#stx-null? _tl1200912060_)
                                                  (if '#t
                                                      (_lp11921_
                                                       _rest11997_
                                                       _decls11924_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind12053_)
                           (cons (gx#core-expand-expression _expr12063_) '()))
                     _bind11925_)
               _body11926_)
              (_E1200012033_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1200012033_)))))
                                        (_E1200012033_)))))
                              (_E1200012033_))
                          (_E1200012033_))))
                  (_E1200012033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1199912065_))
                                            (_E1192911983_)))))
                                  (_E1192911983_)))))
                      (_E1192812069_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11912_)
          (gx#stx-source _stx11911_))
         _expand-special11914_))))
  (define gx#core-expand-declare%
    (lambda (_stx11849_)
      (let* ((_e1185011857_ _stx11849_)
             (_E1185211861_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1185011857_)))
             (_E1185111907_
              (lambda ()
                (if (gx#stx-pair? _e1185011857_)
                    (let ((_e1185311865_ (gx#syntax-e _e1185011857_)))
                      (let ((_hd1185411868_ (##car _e1185311865_))
                            (_tl1185511870_ (##cdr _e1185311865_)))
                        (let ((_body11873_ _tl1185511870_))
                          (if (gx#stx-list? _body11873_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11875_)
                                   (let* ((_e1187611883_ _decl11875_)
                                          (_E1187811887_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1187611883_)))
                                          (_E1187711903_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1187611883_)
                                                 (let ((_e1187911891_
                                                        (gx#syntax-e
                                                         _e1187611883_)))
                                                   (let ((_hd1188011894_
                                                          (##car _e1187911891_))
                                                         (_tl1188111896_
                                                          (##cdr _e1187911891_)))
                                                     (let* ((_head11899_
                                                             _hd1188011894_)
                                                            (_args11901_
                                                             _tl1188111896_))
                                                       (if (gx#stx-list?
                                                            _args11901_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11875_)
                                                           (_E1187811887_)))))
                                                 (_E1187811887_)))))
                                     (_E1187711903_)))
                                 _body11873_))
                               (gx#stx-source _stx11849_))
                              (_E1185211861_)))))
                    (_E1185211861_)))))
        (_E1185111907_))))
  (define gx#core-expand-extern%
    (lambda (_stx11753_)
      (let* ((_e1175411761_ _stx11753_)
             (_E1175611765_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1175411761_)))
             (_E1175511845_
              (lambda ()
                (if (gx#stx-pair? _e1175411761_)
                    (let ((_e1175711769_ (gx#syntax-e _e1175411761_)))
                      (let ((_hd1175811772_ (##car _e1175711769_))
                            (_tl1175911774_ (##cdr _e1175711769_)))
                        (let ((_body11777_ _tl1175911774_))
                          (if '#t
                              (let _lp11779_ ((_rest11781_ _body11777_)
                                              (_r11782_ '()))
                                (let* ((_e1178311797_ _rest11781_)
                                       (_E1179511801_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx11753_)))
                                       (_E1178511805_
                                        (lambda ()
                                          (if (gx#stx-null? _e1178311797_)
                                              (if '#t
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#extern
                                                    (reverse _r11782_))
                                                   (gx#stx-source _stx11753_))
                                                  (_E1179511801_))
                                              (_E1179511801_))))
                                       (_E1178411841_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1178311797_)
                                              (let ((_e1178611809_
                                                     (gx#syntax-e
                                                      _e1178311797_)))
                                                (let ((_hd1178711812_
                                                       (##car _e1178611809_))
                                                      (_tl1178811814_
                                                       (##cdr _e1178611809_)))
                                                  (if (gx#stx-pair?
                                                       _hd1178711812_)
                                                      (let ((_e1178911817_
                                                             (gx#syntax-e
                                                              _hd1178711812_)))
                                                        (let ((_hd1179011820_
                                                               (##car _e1178911817_))
                                                              (_tl1179111822_
                                                               (##cdr _e1178911817_)))
                                                          (let ((_id11825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1179011820_))
                    (if (gx#stx-pair? _tl1179111822_)
                        (let ((_e1179211827_ (gx#syntax-e _tl1179111822_)))
                          (let ((_hd1179311830_ (##car _e1179211827_))
                                (_tl1179411832_ (##cdr _e1179211827_)))
                            (let ((_eid11835_ _hd1179311830_))
                              (if (gx#stx-null? _tl1179411832_)
                                  (let ((_rest11837_ _tl1178811814_))
                                    (if (and (gx#identifier? _id11825_)
                                             (gx#identifier? _eid11835_))
                                        (let ((_eid11839_
                                               (gx#stx-e _eid11835_)))
                                          (gx#core-bind-extern!__0
                                           _id11825_
                                           _eid11839_)
                                          (_lp11779_
                                           _rest11837_
                                           (cons (cons (gx#core-quote-syntax__0
                                                        _id11825_)
                                                       (cons _eid11839_ '()))
                                                 _r11782_)))
                                        (_E1178511805_)))
                                  (_E1178511805_)))))
                        (_E1178511805_)))))
              (_E1178511805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1178511805_)))))
                                  (_E1178411841_)))
                              (_E1175611765_)))))
                    (_E1175611765_)))))
        (_E1175511845_))))
  (define gx#core-expand-define-values%
    (lambda (_stx11699_)
      (let* ((_e1170011713_ _stx11699_)
             (_E1170211717_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1170011713_)))
             (_E1170111749_
              (lambda ()
                (if (gx#stx-pair? _e1170011713_)
                    (let ((_e1170311721_ (gx#syntax-e _e1170011713_)))
                      (let ((_hd1170411724_ (##car _e1170311721_))
                            (_tl1170511726_ (##cdr _e1170311721_)))
                        (if (gx#stx-pair? _tl1170511726_)
                            (let ((_e1170611729_ (gx#syntax-e _tl1170511726_)))
                              (let ((_hd1170711732_ (##car _e1170611729_))
                                    (_tl1170811734_ (##cdr _e1170611729_)))
                                (let ((_hd11737_ _hd1170711732_))
                                  (if (gx#stx-pair? _tl1170811734_)
                                      (let ((_e1170911739_
                                             (gx#syntax-e _tl1170811734_)))
                                        (let ((_hd1171011742_
                                               (##car _e1170911739_))
                                              (_tl1171111744_
                                               (##cdr _e1170911739_)))
                                          (let ((_expr11747_ _hd1171011742_))
                                            (if (gx#stx-null? _tl1171111744_)
                                                (if (gx#core-bind-values?
                                                     _hd11737_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11737_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11737_)
                           (cons (gx#core-expand-expression _expr11747_) '())))
               (gx#stx-source _stx11699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1170211717_))
                                                (_E1170211717_)))))
                                      (_E1170211717_)))))
                            (_E1170211717_))))
                    (_E1170211717_)))))
        (_E1170111749_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11643_)
      (let* ((_e1164411657_ _stx11643_)
             (_E1164611661_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1164411657_)))
             (_E1164511695_
              (lambda ()
                (if (gx#stx-pair? _e1164411657_)
                    (let ((_e1164711665_ (gx#syntax-e _e1164411657_)))
                      (let ((_hd1164811668_ (##car _e1164711665_))
                            (_tl1164911670_ (##cdr _e1164711665_)))
                        (if (gx#stx-pair? _tl1164911670_)
                            (let ((_e1165011673_ (gx#syntax-e _tl1164911670_)))
                              (let ((_hd1165111676_ (##car _e1165011673_))
                                    (_tl1165211678_ (##cdr _e1165011673_)))
                                (let ((_id11681_ _hd1165111676_))
                                  (if (gx#stx-pair? _tl1165211678_)
                                      (let ((_e1165311683_
                                             (gx#syntax-e _tl1165211678_)))
                                        (let ((_hd1165411686_
                                               (##car _e1165311683_))
                                              (_tl1165511688_
                                               (##cdr _e1165311683_)))
                                          (let ((_binding-id11691_
                                                 _hd1165411686_))
                                            (if (gx#stx-null? _tl1165511688_)
                                                (if (and (gx#identifier?
                                                          _id11681_)
                                                         (gx#identifier?
                                                          _binding-id11691_))
                                                    (let ((_eid11693_
                                                           (gx#stx-e
                                                            _binding-id11691_)))
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11681_
                                                       _eid11693_)
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11681_)
                           (cons _eid11693_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1164611661_))
                                                (_E1164611661_)))))
                                      (_E1164611661_)))))
                            (_E1164611661_))))
                    (_E1164611661_)))))
        (_E1164511695_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11586_)
      (let* ((_e1158711600_ _stx11586_)
             (_E1158911604_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1158711600_)))
             (_E1158811639_
              (lambda ()
                (if (gx#stx-pair? _e1158711600_)
                    (let ((_e1159011608_ (gx#syntax-e _e1158711600_)))
                      (let ((_hd1159111611_ (##car _e1159011608_))
                            (_tl1159211613_ (##cdr _e1159011608_)))
                        (if (gx#stx-pair? _tl1159211613_)
                            (let ((_e1159311616_ (gx#syntax-e _tl1159211613_)))
                              (let ((_hd1159411619_ (##car _e1159311616_))
                                    (_tl1159511621_ (##cdr _e1159311616_)))
                                (let ((_id11624_ _hd1159411619_))
                                  (if (gx#stx-pair? _tl1159511621_)
                                      (let ((_e1159611626_
                                             (gx#syntax-e _tl1159511621_)))
                                        (let ((_hd1159711629_
                                               (##car _e1159611626_))
                                              (_tl1159811631_
                                               (##cdr _e1159611626_)))
                                          (let ((_expr11634_ _hd1159711629_))
                                            (if (gx#stx-null? _tl1159811631_)
                                                (if (gx#identifier? _id11624_)
                                                    (let ((_g12545_
                                                           (gx#core-expand-expression+1
                                                            _expr11634_)))
                                                      (begin
                                                        (let ((_g12546_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12545_)
                           (##vector-length _g12545_)
                           1)))
                  (if (not (##fx= _g12546_ 2))
                      (error "Context expects 2 values" _g12546_)))
                (let ((_e-stx11636_ (##vector-ref _g12545_ 0))
                      (_e11637_ (##vector-ref _g12545_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11624_ _e11637_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11624_)
                                 (cons _e-stx11636_ '())))
                     (gx#stx-source _stx11586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1158911604_))
                                                (_E1158911604_)))))
                                      (_E1158911604_)))))
                            (_E1158911604_))))
                    (_E1158911604_)))))
        (_E1158811639_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11530_)
      (let* ((_e1153111544_ _stx11530_)
             (_E1153311548_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1153111544_)))
             (_E1153211582_
              (lambda ()
                (if (gx#stx-pair? _e1153111544_)
                    (let ((_e1153411552_ (gx#syntax-e _e1153111544_)))
                      (let ((_hd1153511555_ (##car _e1153411552_))
                            (_tl1153611557_ (##cdr _e1153411552_)))
                        (if (gx#stx-pair? _tl1153611557_)
                            (let ((_e1153711560_ (gx#syntax-e _tl1153611557_)))
                              (let ((_hd1153811563_ (##car _e1153711560_))
                                    (_tl1153911565_ (##cdr _e1153711560_)))
                                (let ((_id11568_ _hd1153811563_))
                                  (if (gx#stx-pair? _tl1153911565_)
                                      (let ((_e1154011570_
                                             (gx#syntax-e _tl1153911565_)))
                                        (let ((_hd1154111573_
                                               (##car _e1154011570_))
                                              (_tl1154211575_
                                               (##cdr _e1154011570_)))
                                          (let ((_alias-id11578_
                                                 _hd1154111573_))
                                            (if (gx#stx-null? _tl1154211575_)
                                                (if (and (gx#identifier?
                                                          _id11568_)
                                                         (gx#identifier?
                                                          _alias-id11578_))
                                                    (let ((_alias-id11580_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11578_)))
                                                      (gx#core-bind-alias!__0
                                                       _id11568_
                                                       _alias-id11580_)
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11568_)
                           (cons _alias-id11580_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1153311548_))
                                                (_E1153311548_)))))
                                      (_E1153311548_)))))
                            (_E1153311548_))))
                    (_E1153311548_)))))
        (_E1153211582_))))
  (define gx#core-expand-lambda%__%
    (lambda (_stx11473_ _wrap?11474_)
      (let* ((_e1147511485_ _stx11473_)
             (_E1147711489_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1147511485_)))
             (_E1147611516_
              (lambda ()
                (if (gx#stx-pair? _e1147511485_)
                    (let ((_e1147811493_ (gx#syntax-e _e1147511485_)))
                      (let ((_hd1147911496_ (##car _e1147811493_))
                            (_tl1148011498_ (##cdr _e1147811493_)))
                        (if (gx#stx-pair? _tl1148011498_)
                            (let ((_e1148111501_ (gx#syntax-e _tl1148011498_)))
                              (let ((_hd1148211504_ (##car _e1148111501_))
                                    (_tl1148311506_ (##cdr _e1148111501_)))
                                (let* ((_hd11509_ _hd1148211504_)
                                       (_body11511_ _tl1148311506_))
                                  (if (gx#core-bind-values? _hd11509_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#core-bind-values!__0 _hd11509_)
                                         (let ((_body11514_
                                                (cons (gx#core-quote-bind-values
                                                       _hd11509_)
                                                      (cons (gx#core-expand-local-block
                                                             _stx11473_
                                                             _body11511_)
                                                            '()))))
                                           (if _wrap?11474_
                                               (gx#core-quote-syntax__1
                                                (gx#core-cons
                                                 '%#lambda
                                                 _body11514_)
                                                (gx#stx-source _stx11473_))
                                               _body11514_)))
                                       gx#current-expander-context
                                       (let ((__obj12538
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12538)
                                         __obj12538))
                                      (_E1147711489_)))))
                            (_E1147711489_))))
                    (_E1147711489_)))))
        (_E1147611516_))))
  (define gx#core-expand-lambda%__0
    (lambda (_stx11523_)
      (let ((_wrap?11525_ '#t))
        (gx#core-expand-lambda%__% _stx11523_ _wrap?11525_))))
  (define gx#core-expand-lambda%
    (lambda _g12548_
      (let ((_g12547_ (length _g12548_)))
        (cond ((##fx= _g12547_ 1) (apply gx#core-expand-lambda%__0 _g12548_))
              ((##fx= _g12547_ 2) (apply gx#core-expand-lambda%__% _g12548_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-lambda%
                _g12548_))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11437_)
      (let* ((_e1143811445_ _stx11437_)
             (_E1144011449_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1143811445_)))
             (_E1143911468_
              (lambda ()
                (if (gx#stx-pair? _e1143811445_)
                    (let ((_e1144111453_ (gx#syntax-e _e1143811445_)))
                      (let ((_hd1144211456_ (##car _e1144111453_))
                            (_tl1144311458_ (##cdr _e1144111453_)))
                        (let ((_clauses11461_ _tl1144311458_))
                          (if (gx#stx-list? _clauses11461_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11463_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11463_)
                                     (let ((_$e11465_
                                            (gx#stx-source _clause11463_)))
                                       (if _$e11465_
                                           _$e11465_
                                           (gx#stx-source _stx11437_))))
                                    '#f))
                                 _clauses11461_))
                               (gx#stx-source _stx11437_))
                              (_E1144011449_)))))
                    (_E1144011449_)))))
        (_E1143911468_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11391_)
      (let* ((_e1139211402_ _stx11391_)
             (_E1139411406_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1139211402_)))
             (_E1139311433_
              (lambda ()
                (if (gx#stx-pair? _e1139211402_)
                    (let ((_e1139511410_ (gx#syntax-e _e1139211402_)))
                      (let ((_hd1139611413_ (##car _e1139511410_))
                            (_tl1139711415_ (##cdr _e1139511410_)))
                        (if (gx#stx-pair? _tl1139711415_)
                            (let ((_e1139811418_ (gx#syntax-e _tl1139711415_)))
                              (let ((_hd1139911421_ (##car _e1139811418_))
                                    (_tl1140011423_ (##cdr _e1139811418_)))
                                (let* ((_hd11426_ _hd1139911421_)
                                       (_body11428_ _tl1140011423_))
                                  (if (gx#core-expand-let-bind? _hd11426_)
                                      (let ((_expressions11430_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11426_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd11426_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   '%#let-values)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd11426_
                                                         _expressions11430_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx11391_
                                                               _body11428_)
                                                              '())))
                                            (gx#stx-source _stx11391_)))
                                         gx#current-expander-context
                                         (let ((__obj12539
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12539)
                                           __obj12539)))
                                      (_E1139411406_)))))
                            (_E1139411406_))))
                    (_E1139411406_)))))
        (_E1139311433_))))
  (define gx#core-expand-letrec-values%__%
    (lambda (_stx11336_ _form11337_)
      (let* ((_e1133811348_ _stx11336_)
             (_E1134011352_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1133811348_)))
             (_E1133911377_
              (lambda ()
                (if (gx#stx-pair? _e1133811348_)
                    (let ((_e1134111356_ (gx#syntax-e _e1133811348_)))
                      (let ((_hd1134211359_ (##car _e1134111356_))
                            (_tl1134311361_ (##cdr _e1134111356_)))
                        (if (gx#stx-pair? _tl1134311361_)
                            (let ((_e1134411364_ (gx#syntax-e _tl1134311361_)))
                              (let ((_hd1134511367_ (##car _e1134411364_))
                                    (_tl1134611369_ (##cdr _e1134411364_)))
                                (let* ((_hd11372_ _hd1134511367_)
                                       (_body11374_ _tl1134611369_))
                                  (if (gx#core-expand-let-bind? _hd11372_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-for-each1
                                          gx#core-expand-let-bind-values!
                                          _hd11372_)
                                         (gx#core-quote-syntax__1
                                          (cons (gx#core-quote-syntax__0
                                                 _form11337_)
                                                (cons (gx#stx-map2
                                                       gx#core-expand-let-bind-quote
                                                       _hd11372_
                                                       (gx#stx-map1
                                                        gx#core-expand-let-bind-expression
                                                        _hd11372_))
                                                      (cons (gx#core-expand-local-block
                                                             _stx11336_
                                                             _body11374_)
                                                            '())))
                                          (gx#stx-source _stx11336_)))
                                       gx#current-expander-context
                                       (let ((__obj12540
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12540)
                                         __obj12540))
                                      (_E1134011352_)))))
                            (_E1134011352_))))
                    (_E1134011352_)))))
        (_E1133911377_))))
  (define gx#core-expand-letrec-values%__0
    (lambda (_stx11384_)
      (let ((_form11386_ '%#letrec-values))
        (gx#core-expand-letrec-values%__% _stx11384_ _form11386_))))
  (define gx#core-expand-letrec-values%
    (lambda _g12550_
      (let ((_g12549_ (length _g12550_)))
        (cond ((##fx= _g12549_ 1)
               (apply gx#core-expand-letrec-values%__0 _g12550_))
              ((##fx= _g12549_ 2)
               (apply gx#core-expand-letrec-values%__% _g12550_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-letrec-values%
                _g12550_))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11333_)
      (gx#core-expand-letrec-values%__% _stx11333_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11290_)
      (if (gx#stx-list? _stx11290_)
          (gx#stx-andmap
           (lambda (_bind11292_)
             (let* ((_e1129311303_ _bind11292_)
                    (_E1129511307_ (lambda () '#f))
                    (_E1129411329_
                     (lambda ()
                       (if (gx#stx-pair? _e1129311303_)
                           (let ((_e1129611311_ (gx#syntax-e _e1129311303_)))
                             (let ((_hd1129711314_ (##car _e1129611311_))
                                   (_tl1129811316_ (##cdr _e1129611311_)))
                               (let ((_hd11319_ _hd1129711314_))
                                 (if (gx#stx-pair? _tl1129811316_)
                                     (let ((_e1129911321_
                                            (gx#syntax-e _tl1129811316_)))
                                       (let ((_hd1130011324_
                                              (##car _e1129911321_))
                                             (_tl1130111326_
                                              (##cdr _e1129911321_)))
                                         (if (gx#stx-null? _tl1130111326_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11319_)
                                                 (_E1129511307_))
                                             (_E1129511307_))))
                                     (_E1129511307_)))))
                           (_E1129511307_)))))
               (_E1129411329_)))
           _stx11290_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11249_)
      (let* ((_e1125011260_ _bind11249_)
             (_E1125211264_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1125011260_)))
             (_E1125111286_
              (lambda ()
                (if (gx#stx-pair? _e1125011260_)
                    (let ((_e1125311268_ (gx#syntax-e _e1125011260_)))
                      (let ((_hd1125411271_ (##car _e1125311268_))
                            (_tl1125511273_ (##cdr _e1125311268_)))
                        (if (gx#stx-pair? _tl1125511273_)
                            (let ((_e1125611276_ (gx#syntax-e _tl1125511273_)))
                              (let ((_hd1125711279_ (##car _e1125611276_))
                                    (_tl1125811281_ (##cdr _e1125611276_)))
                                (let ((_expr11284_ _hd1125711279_))
                                  (if (gx#stx-null? _tl1125811281_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11284_)
                                          (_E1125211264_))
                                      (_E1125211264_)))))
                            (_E1125211264_))))
                    (_E1125211264_)))))
        (_E1125111286_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11208_)
      (let* ((_e1120911219_ _bind11208_)
             (_E1121111223_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1120911219_)))
             (_E1121011245_
              (lambda ()
                (if (gx#stx-pair? _e1120911219_)
                    (let ((_e1121211227_ (gx#syntax-e _e1120911219_)))
                      (let ((_hd1121311230_ (##car _e1121211227_))
                            (_tl1121411232_ (##cdr _e1121211227_)))
                        (let ((_hd11235_ _hd1121311230_))
                          (if (gx#stx-pair? _tl1121411232_)
                              (let ((_e1121511237_
                                     (gx#syntax-e _tl1121411232_)))
                                (let ((_hd1121611240_ (##car _e1121511237_))
                                      (_tl1121711242_ (##cdr _e1121511237_)))
                                  (if (gx#stx-null? _tl1121711242_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11235_)
                                          (_E1121111223_))
                                      (_E1121111223_))))
                              (_E1121111223_)))))
                    (_E1121111223_)))))
        (_E1121011245_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11166_ _expr11167_)
      (let* ((_e1116811178_ _bind11166_)
             (_E1117011182_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1116811178_)))
             (_E1116911204_
              (lambda ()
                (if (gx#stx-pair? _e1116811178_)
                    (let ((_e1117111186_ (gx#syntax-e _e1116811178_)))
                      (let ((_hd1117211189_ (##car _e1117111186_))
                            (_tl1117311191_ (##cdr _e1117111186_)))
                        (let ((_hd11194_ _hd1117211189_))
                          (if (gx#stx-pair? _tl1117311191_)
                              (let ((_e1117411196_
                                     (gx#syntax-e _tl1117311191_)))
                                (let ((_hd1117511199_ (##car _e1117411196_))
                                      (_tl1117611201_ (##cdr _e1117411196_)))
                                  (if (gx#stx-null? _tl1117611201_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11194_)
                                                (cons _expr11167_ '()))
                                          (_E1117011182_))
                                      (_E1117011182_))))
                              (_E1117011182_)))))
                    (_E1117011182_)))))
        (_E1116911204_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11120_)
      (let* ((_e1112111131_ _stx11120_)
             (_E1112311135_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1112111131_)))
             (_E1112211162_
              (lambda ()
                (if (gx#stx-pair? _e1112111131_)
                    (let ((_e1112411139_ (gx#syntax-e _e1112111131_)))
                      (let ((_hd1112511142_ (##car _e1112411139_))
                            (_tl1112611144_ (##cdr _e1112411139_)))
                        (if (gx#stx-pair? _tl1112611144_)
                            (let ((_e1112711147_ (gx#syntax-e _tl1112611144_)))
                              (let ((_hd1112811150_ (##car _e1112711147_))
                                    (_tl1112911152_ (##cdr _e1112711147_)))
                                (let* ((_hd11155_ _hd1112811150_)
                                       (_body11157_ _tl1112911152_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11155_)
                                      (let ((_expanders11159_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11155_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11155_
                                            _expanders11159_)
                                           (gx#core-expand-local-block
                                            _stx11120_
                                            _body11157_))
                                         gx#current-expander-context
                                         (let ((__obj12541
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12541)
                                           __obj12541)))
                                      (_E1112311135_)))))
                            (_E1112311135_))))
                    (_E1112311135_)))))
        (_E1112211162_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx11069_)
      (let* ((_e1107011080_ _stx11069_)
             (_E1107211084_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1107011080_)))
             (_E1107111116_
              (lambda ()
                (if (gx#stx-pair? _e1107011080_)
                    (let ((_e1107311088_ (gx#syntax-e _e1107011080_)))
                      (let ((_hd1107411091_ (##car _e1107311088_))
                            (_tl1107511093_ (##cdr _e1107311088_)))
                        (if (gx#stx-pair? _tl1107511093_)
                            (let ((_e1107611096_ (gx#syntax-e _tl1107511093_)))
                              (let ((_hd1107711099_ (##car _e1107611096_))
                                    (_tl1107811101_ (##cdr _e1107611096_)))
                                (let* ((_hd11104_ _hd1107711099_)
                                       (_body11106_ _tl1107811101_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11104_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-for-each2
                                          gx#core-expand-let-bind-syntax!
                                          _hd11104_
                                          (make-list
                                           (gx#stx-length _hd11104_)
                                           '#!void))
                                         (gx#stx-for-each2
                                          (lambda (_g1110811111_ _g1110911113_)
                                            (gx#core-expand-let-bind-syntax!__%
                                             _g1110811111_
                                             _g1110911113_
                                             '#t))
                                          _hd11104_
                                          (gx#stx-map1
                                           gx#core-expand-let-bind-syntax-expression
                                           _hd11104_))
                                         (gx#core-expand-local-block
                                          _stx11069_
                                          _body11106_))
                                       gx#current-expander-context
                                       (let ((__obj12542
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12542)
                                         __obj12542))
                                      (_E1107211084_)))))
                            (_E1107211084_))))
                    (_E1107211084_)))))
        (_E1107111116_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx11026_)
      (if (gx#stx-list? _stx11026_)
          (gx#stx-andmap
           (lambda (_bind11028_)
             (let* ((_e1102911039_ _bind11028_)
                    (_E1103111043_ (lambda () '#f))
                    (_E1103011065_
                     (lambda ()
                       (if (gx#stx-pair? _e1102911039_)
                           (let ((_e1103211047_ (gx#syntax-e _e1102911039_)))
                             (let ((_hd1103311050_ (##car _e1103211047_))
                                   (_tl1103411052_ (##cdr _e1103211047_)))
                               (let ((_hd11055_ _hd1103311050_))
                                 (if (gx#stx-pair? _tl1103411052_)
                                     (let ((_e1103511057_
                                            (gx#syntax-e _tl1103411052_)))
                                       (let ((_hd1103611060_
                                              (##car _e1103511057_))
                                             (_tl1103711062_
                                              (##cdr _e1103511057_)))
                                         (if (gx#stx-null? _tl1103711062_)
                                             (if '#t
                                                 (gx#identifier? _hd11055_)
                                                 (_E1103111043_))
                                             (_E1103111043_))))
                                     (_E1103111043_)))))
                           (_E1103111043_)))))
               (_E1103011065_)))
           _stx11026_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind10983_)
      (let* ((_e1098410994_ _bind10983_)
             (_E1098610998_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1098410994_)))
             (_E1098511022_
              (lambda ()
                (if (gx#stx-pair? _e1098410994_)
                    (let ((_e1098711002_ (gx#syntax-e _e1098410994_)))
                      (let ((_hd1098811005_ (##car _e1098711002_))
                            (_tl1098911007_ (##cdr _e1098711002_)))
                        (if (gx#stx-pair? _tl1098911007_)
                            (let ((_e1099011010_ (gx#syntax-e _tl1098911007_)))
                              (let ((_hd1099111013_ (##car _e1099011010_))
                                    (_tl1099211015_ (##cdr _e1099011010_)))
                                (let ((_expr11018_ _hd1099111013_))
                                  (if (gx#stx-null? _tl1099211015_)
                                      (if '#t
                                          (let ((_g12551_
                                                 (gx#core-expand-expression+1
                                                  _expr11018_)))
                                            (begin
                                              (let ((_g12552_
                                                     (if (##values? _g12551_)
                                                         (##vector-length
                                                          _g12551_)
                                                         1)))
                                                (if (not (##fx= _g12552_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12552_)))
                                              (let ((_e11020_
                                                     (##vector-ref
                                                      _g12551_
                                                      1)))
                                                _e11020_)))
                                          (_E1098610998_))
                                      (_E1098610998_)))))
                            (_E1098610998_))))
                    (_E1098610998_)))))
        (_E1098511022_))))
  (define gx#core-expand-let-bind-syntax!__%
    (lambda (_bind10928_ _e10929_ _rebind?10930_)
      (let* ((_e1093110941_ _bind10928_)
             (_E1093310945_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1093110941_)))
             (_E1093210967_
              (lambda ()
                (if (gx#stx-pair? _e1093110941_)
                    (let ((_e1093410949_ (gx#syntax-e _e1093110941_)))
                      (let ((_hd1093510952_ (##car _e1093410949_))
                            (_tl1093610954_ (##cdr _e1093410949_)))
                        (let ((_id10957_ _hd1093510952_))
                          (if (gx#stx-pair? _tl1093610954_)
                              (let ((_e1093710959_
                                     (gx#syntax-e _tl1093610954_)))
                                (let ((_hd1093810962_ (##car _e1093710959_))
                                      (_tl1093910964_ (##cdr _e1093710959_)))
                                  (if (gx#stx-null? _tl1093910964_)
                                      (if '#t
                                          (gx#core-bind-syntax!__1
                                           _id10957_
                                           _e10929_
                                           _rebind?10930_)
                                          (_E1093310945_))
                                      (_E1093310945_))))
                              (_E1093310945_)))))
                    (_E1093310945_)))))
        (_E1093210967_))))
  (define gx#core-expand-let-bind-syntax!__0
    (lambda (_bind10974_ _e10975_)
      (let ((_rebind?10977_ '#f))
        (gx#core-expand-let-bind-syntax!__%
         _bind10974_
         _e10975_
         _rebind?10977_))))
  (define gx#core-expand-let-bind-syntax!
    (lambda _g12554_
      (let ((_g12553_ (length _g12554_)))
        (cond ((##fx= _g12553_ 2)
               (apply gx#core-expand-let-bind-syntax!__0 _g12554_))
              ((##fx= _g12553_ 3)
               (apply gx#core-expand-let-bind-syntax!__% _g12554_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-let-bind-syntax!
                _g12554_))))))
  (define gx#core-expand-expression%
    (lambda (_stx10886_)
      (let* ((_e1088710897_ _stx10886_)
             (_E1088910901_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1088710897_)))
             (_E1088810923_
              (lambda ()
                (if (gx#stx-pair? _e1088710897_)
                    (let ((_e1089010905_ (gx#syntax-e _e1088710897_)))
                      (let ((_hd1089110908_ (##car _e1089010905_))
                            (_tl1089210910_ (##cdr _e1089010905_)))
                        (if (gx#stx-pair? _tl1089210910_)
                            (let ((_e1089310913_ (gx#syntax-e _tl1089210910_)))
                              (let ((_hd1089410916_ (##car _e1089310913_))
                                    (_tl1089510918_ (##cdr _e1089310913_)))
                                (let ((_expr10921_ _hd1089410916_))
                                  (if (gx#stx-null? _tl1089510918_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10921_)
                                          (_E1088910901_))
                                      (_E1088910901_)))))
                            (_E1088910901_))))
                    (_E1088910901_)))))
        (_E1088810923_))))
  (define gx#core-expand-quote%
    (lambda (_stx10845_)
      (let* ((_e1084610856_ _stx10845_)
             (_E1084810860_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1084610856_)))
             (_E1084710882_
              (lambda ()
                (if (gx#stx-pair? _e1084610856_)
                    (let ((_e1084910864_ (gx#syntax-e _e1084610856_)))
                      (let ((_hd1085010867_ (##car _e1084910864_))
                            (_tl1085110869_ (##cdr _e1084910864_)))
                        (if (gx#stx-pair? _tl1085110869_)
                            (let ((_e1085210872_ (gx#syntax-e _tl1085110869_)))
                              (let ((_hd1085310875_ (##car _e1085210872_))
                                    (_tl1085410877_ (##cdr _e1085210872_)))
                                (let ((_e10880_ _hd1085310875_))
                                  (if (gx#stx-null? _tl1085410877_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10880_)
                                                       '()))
                                           (gx#stx-source _stx10845_))
                                          (_E1084810860_))
                                      (_E1084810860_)))))
                            (_E1084810860_))))
                    (_E1084810860_)))))
        (_E1084710882_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10804_)
      (let* ((_e1080510815_ _stx10804_)
             (_E1080710819_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1080510815_)))
             (_E1080610841_
              (lambda ()
                (if (gx#stx-pair? _e1080510815_)
                    (let ((_e1080810823_ (gx#syntax-e _e1080510815_)))
                      (let ((_hd1080910826_ (##car _e1080810823_))
                            (_tl1081010828_ (##cdr _e1080810823_)))
                        (if (gx#stx-pair? _tl1081010828_)
                            (let ((_e1081110831_ (gx#syntax-e _tl1081010828_)))
                              (let ((_hd1081210834_ (##car _e1081110831_))
                                    (_tl1081310836_ (##cdr _e1081110831_)))
                                (let ((_e10839_ _hd1081210834_))
                                  (if (gx#stx-null? _tl1081310836_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10839_)
                                                       '()))
                                           (gx#stx-source _stx10804_))
                                          (_E1080710819_))
                                      (_E1080710819_)))))
                            (_E1080710819_))))
                    (_E1080710819_)))))
        (_E1080610841_))))
  (define gx#core-expand-call%
    (lambda (_stx10761_)
      (let* ((_e1076210772_ _stx10761_)
             (_E1076410776_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1076210772_)))
             (_E1076310800_
              (lambda ()
                (if (gx#stx-pair? _e1076210772_)
                    (let ((_e1076510780_ (gx#syntax-e _e1076210772_)))
                      (let ((_hd1076610783_ (##car _e1076510780_))
                            (_tl1076710785_ (##cdr _e1076510780_)))
                        (if (gx#stx-pair? _tl1076710785_)
                            (let ((_e1076810788_ (gx#syntax-e _tl1076710785_)))
                              (let ((_hd1076910791_ (##car _e1076810788_))
                                    (_tl1077010793_ (##cdr _e1076810788_)))
                                (let* ((_rator10796_ _hd1076910791_)
                                       (_args10798_ _tl1077010793_))
                                  (if (gx#stx-list? _args10798_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10796_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10798_))
                                       (gx#stx-source _stx10761_))
                                      (_E1076410776_)))))
                            (_E1076410776_))))
                    (_E1076410776_)))))
        (_E1076310800_))))
  (define gx#core-expand-if%
    (lambda (_stx10694_)
      (let* ((_e1069510711_ _stx10694_)
             (_E1069710715_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1069510711_)))
             (_E1069610757_
              (lambda ()
                (if (gx#stx-pair? _e1069510711_)
                    (let ((_e1069810719_ (gx#syntax-e _e1069510711_)))
                      (let ((_hd1069910722_ (##car _e1069810719_))
                            (_tl1070010724_ (##cdr _e1069810719_)))
                        (if (gx#stx-pair? _tl1070010724_)
                            (let ((_e1070110727_ (gx#syntax-e _tl1070010724_)))
                              (let ((_hd1070210730_ (##car _e1070110727_))
                                    (_tl1070310732_ (##cdr _e1070110727_)))
                                (let ((_test10735_ _hd1070210730_))
                                  (if (gx#stx-pair? _tl1070310732_)
                                      (let ((_e1070410737_
                                             (gx#syntax-e _tl1070310732_)))
                                        (let ((_hd1070510740_
                                               (##car _e1070410737_))
                                              (_tl1070610742_
                                               (##cdr _e1070410737_)))
                                          (let ((_K10745_ _hd1070510740_))
                                            (if (gx#stx-pair? _tl1070610742_)
                                                (let ((_e1070710747_
                                                       (gx#syntax-e
                                                        _tl1070610742_)))
                                                  (let ((_hd1070810750_
                                                         (##car _e1070710747_))
                                                        (_tl1070910752_
                                                         (##cdr _e1070710747_)))
                                                    (let ((_E10755_
                                                           _hd1070810750_))
                                                      (if (gx#stx-null?
                                                           _tl1070910752_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10735_)
                                   (cons (gx#core-expand-expression _K10745_)
                                         (cons (gx#core-expand-expression
                                                _E10755_)
                                               '()))))
                       (gx#stx-source _stx10694_))
                      (_E1069710715_))
                  (_E1069710715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1069710715_)))))
                                      (_E1069710715_)))))
                            (_E1069710715_))))
                    (_E1069710715_)))))
        (_E1069610757_))))
  (define gx#core-expand-ref%
    (lambda (_stx10653_)
      (let* ((_e1065410664_ _stx10653_)
             (_E1065610668_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1065410664_)))
             (_E1065510690_
              (lambda ()
                (if (gx#stx-pair? _e1065410664_)
                    (let ((_e1065710672_ (gx#syntax-e _e1065410664_)))
                      (let ((_hd1065810675_ (##car _e1065710672_))
                            (_tl1065910677_ (##cdr _e1065710672_)))
                        (if (gx#stx-pair? _tl1065910677_)
                            (let ((_e1066010680_ (gx#syntax-e _tl1065910677_)))
                              (let ((_hd1066110683_ (##car _e1066010680_))
                                    (_tl1066210685_ (##cdr _e1066010680_)))
                                (let ((_id10688_ _hd1066110683_))
                                  (if (gx#stx-null? _tl1066210685_)
                                      (if (gx#identifier? _id10688_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10688_
                                                        _stx10653_)
                                                       '()))
                                           (gx#stx-source _stx10653_))
                                          (_E1065610668_))
                                      (_E1065610668_)))))
                            (_E1065610668_))))
                    (_E1065610668_)))))
        (_E1065510690_))))
  (define gx#core-expand-setq%
    (lambda (_stx10599_)
      (let* ((_e1060010613_ _stx10599_)
             (_E1060210617_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1060010613_)))
             (_E1060110649_
              (lambda ()
                (if (gx#stx-pair? _e1060010613_)
                    (let ((_e1060310621_ (gx#syntax-e _e1060010613_)))
                      (let ((_hd1060410624_ (##car _e1060310621_))
                            (_tl1060510626_ (##cdr _e1060310621_)))
                        (if (gx#stx-pair? _tl1060510626_)
                            (let ((_e1060610629_ (gx#syntax-e _tl1060510626_)))
                              (let ((_hd1060710632_ (##car _e1060610629_))
                                    (_tl1060810634_ (##cdr _e1060610629_)))
                                (let ((_id10637_ _hd1060710632_))
                                  (if (gx#stx-pair? _tl1060810634_)
                                      (let ((_e1060910639_
                                             (gx#syntax-e _tl1060810634_)))
                                        (let ((_hd1061010642_
                                               (##car _e1060910639_))
                                              (_tl1061110644_
                                               (##cdr _e1060910639_)))
                                          (let ((_expr10647_ _hd1061010642_))
                                            (if (gx#stx-null? _tl1061110644_)
                                                (if (gx#identifier? _id10637_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10637_
                          _stx10599_)
                         (cons (gx#core-expand-expression _expr10647_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10599_))
                                                    (_E1060210617_))
                                                (_E1060210617_)))))
                                      (_E1060210617_)))))
                            (_E1060210617_))))
                    (_E1060210617_)))))
        (_E1060110649_))))
  (define gx#macro-expand-extern
    (lambda (_stx10447_)
      (letrec ((_generate10449_
                (lambda (_body10479_)
                  (let _lp10481_ ((_rest10483_ _body10479_)
                                  (_ns10484_ (gx#core-context-namespace__0))
                                  (_r10485_ '()))
                    (let* ((_e1048610501_ _rest10483_)
                           (_E1049910505_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1048610501_)))
                           (_E1049510509_
                            (lambda ()
                              (if (gx#stx-null? _e1048610501_)
                                  (if '#t (reverse _r10485_) (_E1049910505_))
                                  (_E1049910505_))))
                           (_E1048810566_
                            (lambda ()
                              (if (gx#stx-pair? _e1048610501_)
                                  (let ((_e1049610513_
                                         (gx#syntax-e _e1048610501_)))
                                    (let ((_hd1049710516_
                                           (##car _e1049610513_))
                                          (_tl1049810518_
                                           (##cdr _e1049610513_)))
                                      (let* ((_hd10521_ _hd1049710516_)
                                             (_rest10523_ _tl1049810518_))
                                        (if '#t
                                            (if (gx#identifier? _hd10521_)
                                                (_lp10481_
                                                 _rest10523_
                                                 _ns10484_
                                                 (cons (cons _hd10521_
                                                             (cons (if _ns10484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10521_
                                _ns10484_
                                '"#"
                                _hd10521_)
                               _hd10521_)
                           '()))
               _r10485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1052410534_
                                                        _hd10521_)
                                                       (_E1052610538_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1052410534_)))
                                                       (_E1052510562_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1052410534_)
                                                              (let ((_e1052710542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1052410534_)))
                        (let ((_hd1052810545_ (##car _e1052710542_))
                              (_tl1052910547_ (##cdr _e1052710542_)))
                          (let ((_id10550_ _hd1052810545_))
                            (if (gx#stx-pair? _tl1052910547_)
                                (let ((_e1053010552_
                                       (gx#syntax-e _tl1052910547_)))
                                  (let ((_hd1053110555_ (##car _e1053010552_))
                                        (_tl1053210557_ (##cdr _e1053010552_)))
                                    (let ((_eid10560_ _hd1053110555_))
                                      (if (gx#stx-null? _tl1053210557_)
                                          (if (and (gx#identifier? _id10550_)
                                                   (gx#identifier? _eid10560_))
                                              (_lp10481_
                                               _rest10523_
                                               _ns10484_
                                               (cons (cons _id10550_
                                                           (cons _eid10560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10485_))
                                              (_E1052610538_))
                                          (_E1052610538_)))))
                                (_E1052610538_)))))
                      (_E1052610538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1052510562_)))
                                            (_E1049510509_)))))
                                  (_E1049510509_))))
                           (_E1048710595_
                            (lambda ()
                              (if (gx#stx-pair? _e1048610501_)
                                  (let ((_e1048910570_
                                         (gx#syntax-e _e1048610501_)))
                                    (let ((_hd1049010573_
                                           (##car _e1048910570_))
                                          (_tl1049110575_
                                           (##cdr _e1048910570_)))
                                      (if (eq? (gx#stx-e _hd1049010573_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1049110575_)
                                              (let ((_e1049210578_
                                                     (gx#syntax-e
                                                      _tl1049110575_)))
                                                (let ((_hd1049310581_
                                                       (##car _e1049210578_))
                                                      (_tl1049410583_
                                                       (##cdr _e1049210578_)))
                                                  (let* ((_ns10586_
                                                          _hd1049310581_)
                                                         (_rest10588_
                                                          _tl1049410583_))
                                                    (if '#t
                                                        (let ((_ns10593_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10586_)
                           (symbol->string (gx#stx-e _ns10586_))
                           (if (or (gx#stx-string? _ns10586_)
                                   (gx#stx-false? _ns10586_))
                               (gx#stx-e _ns10586_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10447_
                                _ns10586_)))))
                  (_lp10481_ _rest10588_ _ns10593_ _r10485_))
                (_E1048810566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1048810566_))
                                          (_E1048810566_))))
                                  (_E1048810566_)))))
                      (_E1048710595_))))))
        (let* ((_e1045010457_ _stx10447_)
               (_E1045210461_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1045010457_)))
               (_E1045110475_
                (lambda ()
                  (if (gx#stx-pair? _e1045010457_)
                      (let ((_e1045310465_ (gx#syntax-e _e1045010457_)))
                        (let ((_hd1045410468_ (##car _e1045310465_))
                              (_tl1045510470_ (##cdr _e1045310465_)))
                          (let ((_body10473_ _tl1045510470_))
                            (if (gx#stx-list? _body10473_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10449_ _body10473_))
                                (_E1045210461_)))))
                      (_E1045210461_)))))
          (_E1045110475_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10393_)
      (let* ((_e1039410407_ _stx10393_)
             (_E1039610411_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1039410407_)))
             (_E1039510443_
              (lambda ()
                (if (gx#stx-pair? _e1039410407_)
                    (let ((_e1039710415_ (gx#syntax-e _e1039410407_)))
                      (let ((_hd1039810418_ (##car _e1039710415_))
                            (_tl1039910420_ (##cdr _e1039710415_)))
                        (if (gx#stx-pair? _tl1039910420_)
                            (let ((_e1040010423_ (gx#syntax-e _tl1039910420_)))
                              (let ((_hd1040110426_ (##car _e1040010423_))
                                    (_tl1040210428_ (##cdr _e1040010423_)))
                                (let ((_hd10431_ _hd1040110426_))
                                  (if (gx#stx-pair? _tl1040210428_)
                                      (let ((_e1040310433_
                                             (gx#syntax-e _tl1040210428_)))
                                        (let ((_hd1040410436_
                                               (##car _e1040310433_))
                                              (_tl1040510438_
                                               (##cdr _e1040310433_)))
                                          (let ((_expr10441_ _hd1040410436_))
                                            (if (gx#stx-null? _tl1040510438_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10431_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10431_)
                        (cons _expr10441_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1039610411_))
                                                (_E1039610411_)))))
                                      (_E1039610411_)))))
                            (_E1039610411_))))
                    (_E1039610411_)))))
        (_E1039510443_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10339_)
      (let* ((_e1034010353_ _stx10339_)
             (_E1034210357_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1034010353_)))
             (_E1034110389_
              (lambda ()
                (if (gx#stx-pair? _e1034010353_)
                    (let ((_e1034310361_ (gx#syntax-e _e1034010353_)))
                      (let ((_hd1034410364_ (##car _e1034310361_))
                            (_tl1034510366_ (##cdr _e1034310361_)))
                        (if (gx#stx-pair? _tl1034510366_)
                            (let ((_e1034610369_ (gx#syntax-e _tl1034510366_)))
                              (let ((_hd1034710372_ (##car _e1034610369_))
                                    (_tl1034810374_ (##cdr _e1034610369_)))
                                (let ((_hd10377_ _hd1034710372_))
                                  (if (gx#stx-pair? _tl1034810374_)
                                      (let ((_e1034910379_
                                             (gx#syntax-e _tl1034810374_)))
                                        (let ((_hd1035010382_
                                               (##car _e1034910379_))
                                              (_tl1035110384_
                                               (##cdr _e1034910379_)))
                                          (let ((_expr10387_ _hd1035010382_))
                                            (if (gx#stx-null? _tl1035110384_)
                                                (if (gx#identifier? _hd10377_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10377_
                                                                (cons _expr10387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1034210357_))
                                                (_E1034210357_)))))
                                      (_E1034210357_)))))
                            (_E1034210357_))))
                    (_E1034210357_)))))
        (_E1034110389_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10285_)
      (let* ((_e1028610299_ _stx10285_)
             (_E1028810303_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1028610299_)))
             (_E1028710335_
              (lambda ()
                (if (gx#stx-pair? _e1028610299_)
                    (let ((_e1028910307_ (gx#syntax-e _e1028610299_)))
                      (let ((_hd1029010310_ (##car _e1028910307_))
                            (_tl1029110312_ (##cdr _e1028910307_)))
                        (if (gx#stx-pair? _tl1029110312_)
                            (let ((_e1029210315_ (gx#syntax-e _tl1029110312_)))
                              (let ((_hd1029310318_ (##car _e1029210315_))
                                    (_tl1029410320_ (##cdr _e1029210315_)))
                                (let ((_id10323_ _hd1029310318_))
                                  (if (gx#stx-pair? _tl1029410320_)
                                      (let ((_e1029510325_
                                             (gx#syntax-e _tl1029410320_)))
                                        (let ((_hd1029610328_
                                               (##car _e1029510325_))
                                              (_tl1029710330_
                                               (##cdr _e1029510325_)))
                                          (let ((_alias-id10333_
                                                 _hd1029610328_))
                                            (if (gx#stx-null? _tl1029710330_)
                                                (if (and (gx#identifier?
                                                          _id10323_)
                                                         (gx#identifier?
                                                          _alias-id10333_))
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10323_
                                                                (cons _alias-id10333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1028810303_))
                                                (_E1028810303_)))))
                                      (_E1028810303_)))))
                            (_E1028810303_))))
                    (_E1028810303_)))))
        (_E1028710335_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10242_)
      (let* ((_e1024310253_ _stx10242_)
             (_E1024510257_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1024310253_)))
             (_E1024410281_
              (lambda ()
                (if (gx#stx-pair? _e1024310253_)
                    (let ((_e1024610261_ (gx#syntax-e _e1024310253_)))
                      (let ((_hd1024710264_ (##car _e1024610261_))
                            (_tl1024810266_ (##cdr _e1024610261_)))
                        (if (gx#stx-pair? _tl1024810266_)
                            (let ((_e1024910269_ (gx#syntax-e _tl1024810266_)))
                              (let ((_hd1025010272_ (##car _e1024910269_))
                                    (_tl1025110274_ (##cdr _e1024910269_)))
                                (let* ((_hd10277_ _hd1025010272_)
                                       (_body10279_ _tl1025110274_))
                                  (if (and (gx#stx-andmap
                                            gx#identifier?
                                            _hd10277_)
                                           (gx#stx-list? _body10279_)
                                           (not (gx#stx-null? _body10279_)))
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10277_)
                                       _body10279_)
                                      (_E1024510257_)))))
                            (_E1024510257_))))
                    (_E1024510257_)))))
        (_E1024410281_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10178_)
      (letrec ((_generate10180_
                (lambda (_clause10210_)
                  (let* ((_e1021110218_ _clause10210_)
                         (_E1021310222_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10178_
                             _clause10210_)))
                         (_E1021210238_
                          (lambda ()
                            (if (gx#stx-pair? _e1021110218_)
                                (let ((_e1021410226_
                                       (gx#syntax-e _e1021110218_)))
                                  (let ((_hd1021510229_ (##car _e1021410226_))
                                        (_tl1021610231_ (##cdr _e1021410226_)))
                                    (let* ((_hd10234_ _hd1021510229_)
                                           (_body10236_ _tl1021610231_))
                                      (if (and (gx#stx-andmap
                                                gx#identifier?
                                                _hd10234_)
                                               (gx#stx-list? _body10236_)
                                               (not (gx#stx-null?
                                                     _body10236_)))
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10234_)
                                                 _body10236_)
                                           (gx#stx-source _clause10210_))
                                          (_E1021310222_)))))
                                (_E1021310222_)))))
                    (_E1021210238_)))))
        (let* ((_e1018110188_ _stx10178_)
               (_E1018310192_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1018110188_)))
               (_E1018210206_
                (lambda ()
                  (if (gx#stx-pair? _e1018110188_)
                      (let ((_e1018410196_ (gx#syntax-e _e1018110188_)))
                        (let ((_hd1018510199_ (##car _e1018410196_))
                              (_tl1018610201_ (##cdr _e1018410196_)))
                          (let ((_clauses10204_ _tl1018610201_))
                            (if (gx#stx-list? _clauses10204_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10180_ _clauses10204_))
                                (_E1018310192_)))))
                      (_E1018310192_)))))
          (_E1018210206_)))))
  (define gx#macro-expand-let-values__%
    (lambda (_stx10079_ _form10080_)
      (letrec ((_generate10082_
                (lambda (_bind10125_)
                  (let* ((_e1012610136_ _bind10125_)
                         (_E1012810140_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx10079_
                             _bind10125_)))
                         (_E1012710164_
                          (lambda ()
                            (if (gx#stx-pair? _e1012610136_)
                                (let ((_e1012910144_
                                       (gx#syntax-e _e1012610136_)))
                                  (let ((_hd1013010147_ (##car _e1012910144_))
                                        (_tl1013110149_ (##cdr _e1012910144_)))
                                    (let ((_ids10152_ _hd1013010147_))
                                      (if (gx#stx-pair? _tl1013110149_)
                                          (let ((_e1013210154_
                                                 (gx#syntax-e _tl1013110149_)))
                                            (let ((_hd1013310157_
                                                   (##car _e1013210154_))
                                                  (_tl1013410159_
                                                   (##cdr _e1013210154_)))
                                              (let ((_expr10162_
                                                     _hd1013310157_))
                                                (if (gx#stx-null?
                                                     _tl1013410159_)
                                                    (if (gx#stx-andmap
                                                         gx#identifier?
                                                         _ids10152_)
                                                        (cons (gx#stx-map1
                                                               gx#user-binding-identifier
                                                               _ids10152_)
                                                              (cons _expr10162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (_E1012810140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1012810140_)))))
                                          (_E1012810140_)))))
                                (_E1012810140_)))))
                    (_E1012710164_)))))
        (let* ((_e1008310093_ _stx10079_)
               (_E1008510097_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1008310093_)))
               (_E1008410121_
                (lambda ()
                  (if (gx#stx-pair? _e1008310093_)
                      (let ((_e1008610101_ (gx#syntax-e _e1008310093_)))
                        (let ((_hd1008710104_ (##car _e1008610101_))
                              (_tl1008810106_ (##cdr _e1008610101_)))
                          (if (gx#stx-pair? _tl1008810106_)
                              (let ((_e1008910109_
                                     (gx#syntax-e _tl1008810106_)))
                                (let ((_hd1009010112_ (##car _e1008910109_))
                                      (_tl1009110114_ (##cdr _e1008910109_)))
                                  (let* ((_hd10117_ _hd1009010112_)
                                         (_body10119_ _tl1009110114_))
                                    (if (and (gx#stx-list? _hd10117_)
                                             (gx#stx-list? _body10119_)
                                             (not (gx#stx-null? _body10119_)))
                                        (gx#core-cons*
                                         _form10080_
                                         (gx#stx-map1
                                          _generate10082_
                                          _hd10117_)
                                         _body10119_)
                                        (_E1008510097_)))))
                              (_E1008510097_))))
                      (_E1008510097_)))))
          (_E1008410121_)))))
  (define gx#macro-expand-let-values__0
    (lambda (_stx10171_)
      (let ((_form10173_ '%#let-values))
        (gx#macro-expand-let-values__% _stx10171_ _form10173_))))
  (define gx#macro-expand-let-values
    (lambda _g12556_
      (let ((_g12555_ (length _g12556_)))
        (cond ((##fx= _g12555_ 1)
               (apply gx#macro-expand-let-values__0 _g12556_))
              ((##fx= _g12555_ 2)
               (apply gx#macro-expand-let-values__% _g12556_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-let-values
                _g12556_))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx10076_)
      (gx#macro-expand-let-values__% _stx10076_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx10074_)
      (gx#macro-expand-let-values__% _stx10074_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9965_)
      (let* ((_e99669992_ _stx9965_)
             (_E99789996_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99669992_)))
             (_E996810038_
              (lambda ()
                (if (gx#stx-pair? _e99669992_)
                    (let ((_e997910000_ (gx#syntax-e _e99669992_)))
                      (let ((_hd998010003_ (##car _e997910000_))
                            (_tl998110005_ (##cdr _e997910000_)))
                        (if (gx#stx-pair? _tl998110005_)
                            (let ((_e998210008_ (gx#syntax-e _tl998110005_)))
                              (let ((_hd998310011_ (##car _e998210008_))
                                    (_tl998410013_ (##cdr _e998210008_)))
                                (let ((_test10016_ _hd998310011_))
                                  (if (gx#stx-pair? _tl998410013_)
                                      (let ((_e998510018_
                                             (gx#syntax-e _tl998410013_)))
                                        (let ((_hd998610021_
                                               (##car _e998510018_))
                                              (_tl998710023_
                                               (##cdr _e998510018_)))
                                          (let ((_K10026_ _hd998610021_))
                                            (if (gx#stx-pair? _tl998710023_)
                                                (let ((_e998810028_
                                                       (gx#syntax-e
                                                        _tl998710023_)))
                                                  (let ((_hd998910031_
                                                         (##car _e998810028_))
                                                        (_tl999010033_
                                                         (##cdr _e998810028_)))
                                                    (let ((_E10036_
                                                           _hd998910031_))
                                                      (if (gx#stx-null?
                                                           _tl999010033_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test10016_
                                                               _K10026_
                                                               _E10036_)
                                                              (_E99789996_))
                                                          (_E99789996_)))))
                                                (_E99789996_)))))
                                      (_E99789996_)))))
                            (_E99789996_))))
                    (_E99789996_))))
             (_E996710070_
              (lambda ()
                (if (gx#stx-pair? _e99669992_)
                    (let ((_e996910042_ (gx#syntax-e _e99669992_)))
                      (let ((_hd997010045_ (##car _e996910042_))
                            (_tl997110047_ (##cdr _e996910042_)))
                        (if (gx#stx-pair? _tl997110047_)
                            (let ((_e997210050_ (gx#syntax-e _tl997110047_)))
                              (let ((_hd997310053_ (##car _e997210050_))
                                    (_tl997410055_ (##cdr _e997210050_)))
                                (let ((_test10058_ _hd997310053_))
                                  (if (gx#stx-pair? _tl997410055_)
                                      (let ((_e997510060_
                                             (gx#syntax-e _tl997410055_)))
                                        (let ((_hd997610063_
                                               (##car _e997510060_))
                                              (_tl997710065_
                                               (##cdr _e997510060_)))
                                          (let ((_K10068_ _hd997610063_))
                                            (if (gx#stx-null? _tl997710065_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test10058_
                                                     _K10068_
                                                     '#!void)
                                                    (_E996810038_))
                                                (_E996810038_)))))
                                      (_E996810038_)))))
                            (_E996810038_))))
                    (_E996810038_)))))
        (_E996710070_))))
  (define gx#free-identifier=?
    (lambda (_xid9953_ _yid9954_)
      (let ((_xe9956_ (gx#resolve-identifier__0 _xid9953_))
            (_ye9957_ (gx#resolve-identifier__0 _yid9954_)))
        (if (and _xe9956_ _ye9957_)
            (let ((_$e9959_ (eq? _xe9956_ _ye9957_)))
              (if _$e9959_
                  _$e9959_
                  (if (##structure-instance-of? _xe9956_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9957_ 'gx#binding::t)
                          (eq? (##unchecked-structure-ref
                                _xe9956_
                                '1
                                gx#binding::t
                                '#f)
                               (##unchecked-structure-ref
                                _ye9957_
                                '1
                                gx#binding::t
                                '#f))
                          '#f)
                      '#f)))
            (if (or _xe9956_ _ye9957_)
                '#f
                (gx#stx-eq? _xid9953_ _yid9954_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9937_ _yid9938_)
      (letrec ((_context9940_
                (lambda (_e9951_)
                  (if (##structure-direct-instance-of?
                       _e9951_
                       'gx#syntax-quote::t)
                      (##unchecked-structure-ref
                       _e9951_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9941_
                (lambda (_e9949_)
                  (if (symbol? _e9949_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9949_
                           'gx#identifier-wrap::t)
                          (##unchecked-structure-ref
                           _e9949_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##unchecked-structure-ref
                           _e9949_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9942_
                (lambda (_e9947_)
                  (if (symbol? _e9947_)
                      _e9947_
                      (gx#syntax-local-unwrap _e9947_)))))
        (let ((_x9944_ (_unwrap9942_ _xid9937_))
              (_y9945_ (_unwrap9942_ _yid9938_)))
          (if (gx#stx-eq? _x9944_ _y9945_)
              (if (eq? (_context9940_ _x9944_) (_context9940_ _y9945_))
                  (equal? (_marks9941_ _x9944_) (_marks9941_ _y9945_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9935_)
      (if (gx#identifier? _stx9935_) (gx#core-identifier=? _stx9935_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9933_)
      (if (gx#identifier? _stx9933_)
          (gx#core-identifier=? _stx9933_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9931_)
      (if (gx#identifier? _x9931_)
          (if (not (gx#underscore? _x9931_)) _x9931_ '#f)
          '#f)))
  (define gx#check-duplicate-identifiers__%
    (lambda (_stx9877_ _where9878_)
      (let _lp9880_ ((_rest9882_ (gx#syntax->list _stx9877_)))
        (let* ((_rest98839891_ _rest9882_)
               (_else98859899_ (lambda () '#t))
               (_K98879909_
                (lambda (_rest9902_ _hd9903_)
                  (if (not (gx#identifier? _hd9903_))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad identifier"
                       _where9878_
                       _hd9903_)
                      (if (find (lambda (_g99049906_)
                                  (gx#bound-identifier=? _g99049906_ _hd9903_))
                                _rest9902_)
                          (gx#raise-syntax-error
                           '#f
                           '"Duplicate identifier"
                           _where9878_
                           _hd9903_)
                          (_lp9880_ _rest9902_))))))
          (if (##pair? _rest98839891_)
              (let ((_hd98889912_ (##car _rest98839891_))
                    (_tl98899914_ (##cdr _rest98839891_)))
                (let* ((_hd9917_ _hd98889912_) (_rest9919_ _tl98899914_))
                  (_K98879909_ _rest9919_ _hd9917_)))
              (_else98859899_))))))
  (define gx#check-duplicate-identifiers__0
    (lambda (_stx9924_)
      (let ((_where9926_ _stx9924_))
        (gx#check-duplicate-identifiers__% _stx9924_ _where9926_))))
  (define gx#check-duplicate-identifiers
    (lambda _g12558_
      (let ((_g12557_ (length _g12558_)))
        (cond ((##fx= _g12557_ 1)
               (apply gx#check-duplicate-identifiers__0 _g12558_))
              ((##fx= _g12557_ 2)
               (apply gx#check-duplicate-identifiers__% _g12558_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#check-duplicate-identifiers
                _g12558_))))))
  (define gx#core-bind-values?
    (lambda (_stx9869_)
      (gx#stx-andmap
       (lambda (_x9871_)
         (let ((_$e9873_ (gx#identifier? _x9871_)))
           (if _$e9873_ _$e9873_ (gx#stx-false? _x9871_))))
       _stx9869_)))
  (define gx#core-bind-values!__%
    (lambda (_stx9833_ _rebind?9834_ _phi9835_ _ctx9836_)
      (gx#stx-for-each1
       (lambda (_id9838_)
         (if (gx#identifier? _id9838_)
             (gx#core-bind-runtime!__%
              _id9838_
              _rebind?9834_
              _phi9835_
              _ctx9836_)
             '#!void))
       _stx9833_)))
  (define gx#core-bind-values!__0
    (lambda (_stx9843_)
      (let* ((_rebind?9845_ '#f)
             (_phi9847_ (gx#current-expander-phi))
             (_ctx9849_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9843_
         _rebind?9845_
         _phi9847_
         _ctx9849_))))
  (define gx#core-bind-values!__1
    (lambda (_stx9851_ _rebind?9852_)
      (let* ((_phi9854_ (gx#current-expander-phi))
             (_ctx9856_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9851_
         _rebind?9852_
         _phi9854_
         _ctx9856_))))
  (define gx#core-bind-values!__2
    (lambda (_stx9858_ _rebind?9859_ _phi9860_)
      (let ((_ctx9862_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9858_
         _rebind?9859_
         _phi9860_
         _ctx9862_))))
  (define gx#core-bind-values!
    (lambda _g12560_
      (let ((_g12559_ (length _g12560_)))
        (cond ((##fx= _g12559_ 1) (apply gx#core-bind-values!__0 _g12560_))
              ((##fx= _g12559_ 2) (apply gx#core-bind-values!__1 _g12560_))
              ((##fx= _g12559_ 3) (apply gx#core-bind-values!__2 _g12560_))
              ((##fx= _g12559_ 4) (apply gx#core-bind-values!__% _g12560_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-values!
                _g12560_))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9828_)
      (gx#stx-map1
       (lambda (_x9830_)
         (if (gx#identifier? _x9830_) (gx#core-quote-syntax__0 _x9830_) '#f))
       _stx9828_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9821_)
      (if (gx#identifier? _stx9821_)
          (let* ((_bind9823_ (gx#resolve-identifier__0 _stx9821_))
                 (_$e9825_ (not _bind9823_)))
            (if _$e9825_
                _$e9825_
                (##structure-instance-of? _bind9823_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9813_ _form9814_)
      (let ((_bind9816_ (gx#resolve-identifier__0 _id9813_)))
        (if (##structure-instance-of? _bind9816_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9813_)
            (if (not _bind9816_)
                (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                        (gx#core-extern-symbol? (gx#stx-e _id9813_)))
                    (gx#core-quote-syntax__0 _id9813_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9814_
                     _id9813_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9814_
                 _id9813_))))))
  (define gx#core-bind-runtime!__%
    (lambda (_id9772_ _rebind?9773_ _phi9774_ _ctx9775_)
      (let* ((_key9777_ (gx#core-identifier-key _id9772_))
             (_eid9779_
              (gx#make-binding-id__% _key9777_ '#f _phi9774_ _ctx9775_))
             (_bind9781_
              (if (##structure-instance-of? _ctx9775_ 'gx#module-context::t)
                  (##structure
                   gx#module-binding::t
                   _eid9779_
                   _key9777_
                   _phi9774_
                   _ctx9775_)
                  (if (##structure-instance-of? _ctx9775_ 'gx#top-context::t)
                      (##structure
                       gx#top-binding::t
                       _eid9779_
                       _key9777_
                       _phi9774_)
                      (if (##structure-instance-of?
                           _ctx9775_
                           'gx#local-context::t)
                          (##structure
                           gx#local-binding::t
                           _eid9779_
                           _key9777_
                           _phi9774_)
                          (##structure
                           gx#runtime-binding::t
                           _eid9779_
                           _key9777_
                           _phi9774_))))))
        (gx#bind-identifier!__%
         _id9772_
         _bind9781_
         _rebind?9773_
         _phi9774_
         _ctx9775_))))
  (define gx#core-bind-runtime!__0
    (lambda (_id9787_)
      (let* ((_rebind?9789_ '#f)
             (_phi9791_ (gx#current-expander-phi))
             (_ctx9793_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9787_
         _rebind?9789_
         _phi9791_
         _ctx9793_))))
  (define gx#core-bind-runtime!__1
    (lambda (_id9795_ _rebind?9796_)
      (let* ((_phi9798_ (gx#current-expander-phi))
             (_ctx9800_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9795_
         _rebind?9796_
         _phi9798_
         _ctx9800_))))
  (define gx#core-bind-runtime!__2
    (lambda (_id9802_ _rebind?9803_ _phi9804_)
      (let ((_ctx9806_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9802_
         _rebind?9803_
         _phi9804_
         _ctx9806_))))
  (define gx#core-bind-runtime!
    (lambda _g12562_
      (let ((_g12561_ (length _g12562_)))
        (cond ((##fx= _g12561_ 1) (apply gx#core-bind-runtime!__0 _g12562_))
              ((##fx= _g12561_ 2) (apply gx#core-bind-runtime!__1 _g12562_))
              ((##fx= _g12561_ 3) (apply gx#core-bind-runtime!__2 _g12562_))
              ((##fx= _g12561_ 4) (apply gx#core-bind-runtime!__% _g12562_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-runtime!
                _g12562_))))))
  (define gx#core-bind-runtime-reference!__%
    (lambda (_id9727_ _eid9728_ _rebind?9729_ _phi9730_ _ctx9731_)
      (let* ((_key9733_ (gx#core-identifier-key _id9727_))
             (_bind9735_
              (if (##structure-instance-of? _ctx9731_ 'gx#module-context::t)
                  (##structure
                   gx#module-binding::t
                   _eid9728_
                   _key9733_
                   _phi9730_
                   _ctx9731_)
                  (if (##structure-instance-of? _ctx9731_ 'gx#top-context::t)
                      (##structure
                       gx#top-binding::t
                       _eid9728_
                       _key9733_
                       _phi9730_)
                      (##structure
                       gx#runtime-binding::t
                       _eid9728_
                       _key9733_
                       _phi9730_)))))
        (gx#bind-identifier!__%
         _id9727_
         _bind9735_
         _rebind?9729_
         _phi9730_
         _ctx9731_))))
  (define gx#core-bind-runtime-reference!__0
    (lambda (_id9741_ _eid9742_)
      (let* ((_rebind?9744_ '#f)
             (_phi9746_ (gx#current-expander-phi))
             (_ctx9748_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9741_
         _eid9742_
         _rebind?9744_
         _phi9746_
         _ctx9748_))))
  (define gx#core-bind-runtime-reference!__1
    (lambda (_id9750_ _eid9751_ _rebind?9752_)
      (let* ((_phi9754_ (gx#current-expander-phi))
             (_ctx9756_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9750_
         _eid9751_
         _rebind?9752_
         _phi9754_
         _ctx9756_))))
  (define gx#core-bind-runtime-reference!__2
    (lambda (_id9758_ _eid9759_ _rebind?9760_ _phi9761_)
      (let ((_ctx9763_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9758_
         _eid9759_
         _rebind?9760_
         _phi9761_
         _ctx9763_))))
  (define gx#core-bind-runtime-reference!
    (lambda _g12564_
      (let ((_g12563_ (length _g12564_)))
        (cond ((##fx= _g12563_ 2)
               (apply gx#core-bind-runtime-reference!__0 _g12564_))
              ((##fx= _g12563_ 3)
               (apply gx#core-bind-runtime-reference!__1 _g12564_))
              ((##fx= _g12563_ 4)
               (apply gx#core-bind-runtime-reference!__2 _g12564_))
              ((##fx= _g12563_ 5)
               (apply gx#core-bind-runtime-reference!__% _g12564_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-runtime-reference!
                _g12564_))))))
  (define gx#core-bind-extern!__%
    (lambda (_id9687_ _eid9688_ _rebind?9689_ _phi9690_ _ctx9691_)
      (gx#bind-identifier!__%
       _id9687_
       (##structure
        gx#extern-binding::t
        _eid9688_
        (gx#core-identifier-key _id9687_)
        _phi9690_)
       _rebind?9689_
       _phi9690_
       _ctx9691_)))
  (define gx#core-bind-extern!__0
    (lambda (_id9696_ _eid9697_)
      (let* ((_rebind?9699_ '#f)
             (_phi9701_ (gx#current-expander-phi))
             (_ctx9703_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9696_
         _eid9697_
         _rebind?9699_
         _phi9701_
         _ctx9703_))))
  (define gx#core-bind-extern!__1
    (lambda (_id9705_ _eid9706_ _rebind?9707_)
      (let* ((_phi9709_ (gx#current-expander-phi))
             (_ctx9711_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9705_
         _eid9706_
         _rebind?9707_
         _phi9709_
         _ctx9711_))))
  (define gx#core-bind-extern!__2
    (lambda (_id9713_ _eid9714_ _rebind?9715_ _phi9716_)
      (let ((_ctx9718_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9713_
         _eid9714_
         _rebind?9715_
         _phi9716_
         _ctx9718_))))
  (define gx#core-bind-extern!
    (lambda _g12566_
      (let ((_g12565_ (length _g12566_)))
        (cond ((##fx= _g12565_ 2) (apply gx#core-bind-extern!__0 _g12566_))
              ((##fx= _g12565_ 3) (apply gx#core-bind-extern!__1 _g12566_))
              ((##fx= _g12565_ 4) (apply gx#core-bind-extern!__2 _g12566_))
              ((##fx= _g12565_ 5) (apply gx#core-bind-extern!__% _g12566_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-extern!
                _g12566_))))))
  (define gx#core-bind-syntax!__%
    (lambda (_id9641_ _e9642_ _rebind?9643_ _phi9644_ _ctx9645_)
      (gx#bind-identifier!__%
       _id9641_
       (let ((_key9650_ (gx#core-identifier-key _id9641_))
             (_e9651_ (if (or (##structure-instance-of?
                               _e9642_
                               'gx#expander::t)
                              (##structure-instance-of?
                               _e9642_
                               'gx#expander-context::t))
                          _e9642_
                          (##structure
                           gx#user-expander::t
                           _e9642_
                           _ctx9645_
                           _phi9644_))))
         (##structure
          gx#syntax-binding::t
          (gx#make-binding-id__% _key9650_ '#t _phi9644_ _ctx9645_)
          _key9650_
          _phi9644_
          _e9651_))
       _rebind?9643_
       _phi9644_
       _ctx9645_)))
  (define gx#core-bind-syntax!__0
    (lambda (_id9656_ _e9657_)
      (let* ((_rebind?9659_ '#f)
             (_phi9661_ (gx#current-expander-phi))
             (_ctx9663_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9656_
         _e9657_
         _rebind?9659_
         _phi9661_
         _ctx9663_))))
  (define gx#core-bind-syntax!__1
    (lambda (_id9665_ _e9666_ _rebind?9667_)
      (let* ((_phi9669_ (gx#current-expander-phi))
             (_ctx9671_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9665_
         _e9666_
         _rebind?9667_
         _phi9669_
         _ctx9671_))))
  (define gx#core-bind-syntax!__2
    (lambda (_id9673_ _e9674_ _rebind?9675_ _phi9676_)
      (let ((_ctx9678_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9673_
         _e9674_
         _rebind?9675_
         _phi9676_
         _ctx9678_))))
  (define gx#core-bind-syntax!
    (lambda _g12568_
      (let ((_g12567_ (length _g12568_)))
        (cond ((##fx= _g12567_ 2) (apply gx#core-bind-syntax!__0 _g12568_))
              ((##fx= _g12567_ 3) (apply gx#core-bind-syntax!__1 _g12568_))
              ((##fx= _g12567_ 4) (apply gx#core-bind-syntax!__2 _g12568_))
              ((##fx= _g12567_ 5) (apply gx#core-bind-syntax!__% _g12568_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-syntax!
                _g12568_))))))
  (define gx#core-bind-root-syntax!__%
    (lambda (_id9624_ _e9625_ _rebind?9626_)
      (gx#core-bind-syntax!__%
       _id9624_
       _e9625_
       _rebind?9626_
       '0
       (gx#core-context-root__0))))
  (define gx#core-bind-root-syntax!__0
    (lambda (_id9631_ _e9632_)
      (let ((_rebind?9634_ '#f))
        (gx#core-bind-root-syntax!__% _id9631_ _e9632_ _rebind?9634_))))
  (define gx#core-bind-root-syntax!
    (lambda _g12570_
      (let ((_g12569_ (length _g12570_)))
        (cond ((##fx= _g12569_ 2)
               (apply gx#core-bind-root-syntax!__0 _g12570_))
              ((##fx= _g12569_ 3)
               (apply gx#core-bind-root-syntax!__% _g12570_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-root-syntax!
                _g12570_))))))
  (define gx#core-bind-alias!__%
    (lambda (_id9582_ _alias-id9583_ _rebind?9584_ _phi9585_ _ctx9586_)
      (gx#bind-identifier!__%
       _id9582_
       (let ((_key9588_ (gx#core-identifier-key _id9582_)))
         (##structure
          gx#alias-binding::t
          (gx#make-binding-id__% _key9588_ '#t _phi9585_ _ctx9586_)
          _key9588_
          _phi9585_
          _alias-id9583_))
       _rebind?9584_
       _phi9585_
       _ctx9586_)))
  (define gx#core-bind-alias!__0
    (lambda (_id9593_ _alias-id9594_)
      (let* ((_rebind?9596_ '#f)
             (_phi9598_ (gx#current-expander-phi))
             (_ctx9600_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9593_
         _alias-id9594_
         _rebind?9596_
         _phi9598_
         _ctx9600_))))
  (define gx#core-bind-alias!__1
    (lambda (_id9602_ _alias-id9603_ _rebind?9604_)
      (let* ((_phi9606_ (gx#current-expander-phi))
             (_ctx9608_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9602_
         _alias-id9603_
         _rebind?9604_
         _phi9606_
         _ctx9608_))))
  (define gx#core-bind-alias!__2
    (lambda (_id9610_ _alias-id9611_ _rebind?9612_ _phi9613_)
      (let ((_ctx9615_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9610_
         _alias-id9611_
         _rebind?9612_
         _phi9613_
         _ctx9615_))))
  (define gx#core-bind-alias!
    (lambda _g12572_
      (let ((_g12571_ (length _g12572_)))
        (cond ((##fx= _g12571_ 2) (apply gx#core-bind-alias!__0 _g12572_))
              ((##fx= _g12571_ 3) (apply gx#core-bind-alias!__1 _g12572_))
              ((##fx= _g12571_ 4) (apply gx#core-bind-alias!__2 _g12572_))
              ((##fx= _g12571_ 5) (apply gx#core-bind-alias!__% _g12572_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-alias!
                _g12572_))))))
  (define gx#make-binding-id__%
    (lambda (_key9539_ _syntax?9540_ _phi9541_ _ctx9542_)
      (if (uninterned-symbol? _key9539_)
          (gensym 'L)
          (if (pair? _key9539_)
              (gensym (car _key9539_))
              (if (##structure-instance-of? _ctx9542_ 'gx#top-context::t)
                  (let ((_ns9544_ (gx#core-context-namespace__% _ctx9542_)))
                    (if (and (fxzero? _phi9541_) (not _syntax?9540_))
                        (if _ns9544_
                            (make-symbol _ns9544_ '"#" _key9539_)
                            _key9539_)
                        (if _syntax?9540_
                            (make-symbol
                             (let ((_$e9546_ _ns9544_))
                               (if _$e9546_ _$e9546_ '""))
                             '"[:"
                             (number->string _phi9541_)
                             '":]#"
                             _key9539_)
                            (make-symbol
                             (let ((_$e9549_ _ns9544_))
                               (if _$e9549_ _$e9549_ '""))
                             '"["
                             (number->string _phi9541_)
                             '"]#"
                             _key9539_))))
                  (gensym _key9539_))))))
  (define gx#make-binding-id__0
    (lambda (_key9555_)
      (let* ((_syntax?9557_ '#f)
             (_phi9559_ (gx#current-expander-phi))
             (_ctx9561_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9555_ _syntax?9557_ _phi9559_ _ctx9561_))))
  (define gx#make-binding-id__1
    (lambda (_key9563_ _syntax?9564_)
      (let* ((_phi9566_ (gx#current-expander-phi))
             (_ctx9568_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9563_ _syntax?9564_ _phi9566_ _ctx9568_))))
  (define gx#make-binding-id__2
    (lambda (_key9570_ _syntax?9571_ _phi9572_)
      (let ((_ctx9574_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9570_ _syntax?9571_ _phi9572_ _ctx9574_))))
  (define gx#make-binding-id
    (lambda _g12574_
      (let ((_g12573_ (length _g12574_)))
        (cond ((##fx= _g12573_ 1) (apply gx#make-binding-id__0 _g12574_))
              ((##fx= _g12573_ 2) (apply gx#make-binding-id__1 _g12574_))
              ((##fx= _g12573_ 3) (apply gx#make-binding-id__2 _g12574_))
              ((##fx= _g12573_ 4) (apply gx#make-binding-id__% _g12574_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#make-binding-id
                _g12574_)))))))
