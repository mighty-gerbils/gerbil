(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx12422_)
      (letrec ((_expand-special12424_
                (lambda (_hd12426_ _K12427_ _rest12428_ _r12429_)
                  (_K12427_
                   _rest12428_
                   (cons (gx#core-expand-top _hd12426_) _r12429_)))))
        (gx#core-expand-block__0 _stx12422_ _expand-special12424_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12175_)
      (letrec ((_expand-special12177_
                (lambda (_hd12297_ _K12298_ _rest12299_ _r12300_)
                  (let* ((_K12304_
                          (lambda (_e12302_)
                            (_K12298_ _rest12299_ (cons _e12302_ _r12300_))))
                         (_e1230512334_ _hd12297_)
                         (_E1232912338_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1230512334_)))
                         (_E1232512350_
                          (lambda ()
                            (if (gx#stx-pair? _e1230512334_)
                                (let ((_e1233012342_
                                       (gx#syntax-e _e1230512334_)))
                                  (let ((_hd1233112345_ (##car _e1233012342_))
                                        (_tl1233212347_ (##cdr _e1233012342_)))
                                    (if (if (gx#identifier? _hd1233112345_)
                                            (gx#core-identifier=?
                                             _hd1233112345_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K12304_
                                             (gx#core-expand-define-runtime%
                                              _hd12297_))
                                            (_E1232912338_))
                                        (_E1232912338_))))
                                (_E1232912338_))))
                         (_E1232112362_
                          (lambda ()
                            (if (gx#stx-pair? _e1230512334_)
                                (let ((_e1232612354_
                                       (gx#syntax-e _e1230512334_)))
                                  (let ((_hd1232712357_ (##car _e1232612354_))
                                        (_tl1232812359_ (##cdr _e1232612354_)))
                                    (if (if (gx#identifier? _hd1232712357_)
                                            (gx#core-identifier=?
                                             _hd1232712357_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K12304_
                                             (gx#core-expand-define-alias%
                                              _hd12297_))
                                            (_E1232512350_))
                                        (_E1232512350_))))
                                (_E1232512350_))))
                         (_E1231112374_
                          (lambda ()
                            (if (gx#stx-pair? _e1230512334_)
                                (let ((_e1232212366_
                                       (gx#syntax-e _e1230512334_)))
                                  (let ((_hd1232312369_ (##car _e1232212366_))
                                        (_tl1232412371_ (##cdr _e1232212366_)))
                                    (if (if (gx#identifier? _hd1232312369_)
                                            (gx#core-identifier=?
                                             _hd1232312369_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12304_
                                             (gx#core-expand-define-syntax%
                                              _hd12297_))
                                            (_E1232112362_))
                                        (_E1232112362_))))
                                (_E1232112362_))))
                         (_E1230712406_
                          (lambda ()
                            (if (gx#stx-pair? _e1230512334_)
                                (let ((_e1231212378_
                                       (gx#syntax-e _e1230512334_)))
                                  (let ((_hd1231312381_ (##car _e1231212378_))
                                        (_tl1231412383_ (##cdr _e1231212378_)))
                                    (if (if (gx#identifier? _hd1231312381_)
                                            (gx#core-identifier=?
                                             _hd1231312381_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1231412383_)
                                            (let ((_e1231512386_
                                                   (gx#syntax-e
                                                    _tl1231412383_)))
                                              (let ((_hd1231612389_
                                                     (##car _e1231512386_))
                                                    (_tl1231712391_
                                                     (##cdr _e1231512386_)))
                                                (let ((_hd-bind12394_
                                                       _hd1231612389_))
                                                  (if (gx#stx-pair?
                                                       _tl1231712391_)
                                                      (let ((_e1231812396_
                                                             (gx#syntax-e
                                                              _tl1231712391_)))
                                                        (let ((_hd1231912399_
                                                               (##car _e1231812396_))
                                                              (_tl1232012401_
                                                               (##cdr _e1231812396_)))
                                                          (let ((_expr12404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1231912399_))
                    (if (gx#stx-null? _tl1232012401_)
                        (if (gx#core-bind-values? _hd-bind12394_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12394_)
                              (_K12304_ _hd12297_))
                            (_E1231112374_))
                        (_E1231112374_)))))
              (_E1231112374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1231112374_))
                                        (_E1231112374_))))
                                (_E1231112374_))))
                         (_E1230612418_
                          (lambda ()
                            (if (gx#stx-pair? _e1230512334_)
                                (let ((_e1230812410_
                                       (gx#syntax-e _e1230512334_)))
                                  (let ((_hd1230912413_ (##car _e1230812410_))
                                        (_tl1231012415_ (##cdr _e1230812410_)))
                                    (if (if (gx#identifier? _hd1230912413_)
                                            (gx#core-identifier=?
                                             _hd1230912413_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12304_
                                             (gx#core-expand-begin-syntax%
                                              _hd12297_))
                                            (_E1230712406_))
                                        (_E1230712406_))))
                                (_E1230712406_)))))
                    (_E1230612418_))))
               (_eval-body12178_
                (lambda (_rbody12186_)
                  (let _lp12188_ ((_rest12190_ _rbody12186_)
                                  (_body12191_ '())
                                  (_ebody12192_ '()))
                    (let* ((_rest1219312201_ _rest12190_)
                           (_else1219512209_
                            (lambda ()
                              (values _body12191_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12192_)
                                        (gx#stx-source _stx12175_))))))
                           (_K1219712285_
                            (lambda (_rest12212_ _hd12213_)
                              (let* ((_e1221412231_ _hd12213_)
                                     (_E1222612235_
                                      (lambda ()
                                        (_lp12188_
                                         _rest12212_
                                         (cons _hd12213_ _body12191_)
                                         (cons _hd12213_ _ebody12192_))))
                                     (_E1221612247_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1221412231_)
                                            (let ((_e1222712239_
                                                   (gx#syntax-e
                                                    _e1221412231_)))
                                              (let ((_hd1222812242_
                                                     (##car _e1222712239_))
                                                    (_tl1222912244_
                                                     (##cdr _e1222712239_)))
                                                (if (if (gx#identifier?
                                                         _hd1222812242_)
                                                        (gx#core-identifier=?
                                                         _hd1222812242_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12188_
                                                         _rest12212_
                                                         (cons _hd12213_
                                                               _body12191_)
                                                         _ebody12192_)
                                                        (_E1222612235_))
                                                    (_E1222612235_))))
                                            (_E1222612235_))))
                                     (_E1221512281_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1221412231_)
                                            (let ((_e1221712251_
                                                   (gx#syntax-e
                                                    _e1221412231_)))
                                              (let ((_hd1221812254_
                                                     (##car _e1221712251_))
                                                    (_tl1221912256_
                                                     (##cdr _e1221712251_)))
                                                (if (if (gx#identifier?
                                                         _hd1221812254_)
                                                        (gx#core-identifier=?
                                                         _hd1221812254_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1221912256_)
                                                        (let ((_e1222012259_
                                                               (gx#syntax-e
                                                                _tl1221912256_)))
                                                          (let ((_hd1222112262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1222012259_))
                        (_tl1222212264_ (##cdr _e1222012259_)))
                    (let ((_hd-bind12267_ _hd1222112262_))
                      (if (gx#stx-pair? _tl1222212264_)
                          (let ((_e1222312269_ (gx#syntax-e _tl1222212264_)))
                            (let ((_hd1222412272_ (##car _e1222312269_))
                                  (_tl1222512274_ (##cdr _e1222312269_)))
                              (let ((_expr12277_ _hd1222412272_))
                                (if (gx#stx-null? _tl1222512274_)
                                    (if '#t
                                        (let ((_ehd12279_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12267_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12277_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12213_))))
                                          (_lp12188_
                                           _rest12212_
                                           (cons _ehd12279_ _body12191_)
                                           (cons _ehd12279_ _ebody12192_)))
                                        (_E1221612247_))
                                    (_E1221612247_)))))
                          (_E1221612247_)))))
                (_E1221612247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1221612247_))))
                                            (_E1221612247_)))))
                                (_E1221512281_)))))
                      (if (##pair? _rest1219312201_)
                          (let ((_hd1219812288_ (##car _rest1219312201_))
                                (_tl1219912290_ (##cdr _rest1219312201_)))
                            (let* ((_hd12293_ _hd1219812288_)
                                   (_rest12295_ _tl1219912290_))
                              (_K1219712285_ _rest12295_ _hd12293_)))
                          (_else1219512209_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12181_
                   (gx#core-expand-block__1
                    _stx12175_
                    _expand-special12177_
                    '#f))
                  (_g12445_ (_eval-body12178_ _rbody12181_)))
             (begin
               (let ((_g12446_
                      (if (##values? _g12445_) (##vector-length _g12445_) 1)))
                 (if (not (##fx= _g12446_ 2))
                     (error "Context expects 2 values" _g12446_)))
               (let ((_expanded-body12183_ (##vector-ref _g12445_ 0))
                     (_value12184_ (##vector-ref _g12445_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12183_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12184_ '())))
                  (gx#stx-source _stx12175_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12145_)
      (let* ((_e1214612153_ _stx12145_)
             (_E1214812157_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1214612153_)))
             (_E1214712171_
              (lambda ()
                (if (gx#stx-pair? _e1214612153_)
                    (let ((_e1214912161_ (gx#syntax-e _e1214612153_)))
                      (let ((_hd1215012164_ (##car _e1214912161_))
                            (_tl1215112166_ (##cdr _e1214912161_)))
                        (let ((_body12169_ _tl1215112166_))
                          (if (gx#stx-list? _body12169_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12169_)
                               (gx#stx-source _stx12145_))
                              (_E1214812157_)))))
                    (_E1214812157_)))))
        (_E1214712171_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12143_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12143_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12089_)
      (let* ((_e1209012103_ _stx12089_)
             (_E1209212107_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1209012103_)))
             (_E1209112139_
              (lambda ()
                (if (gx#stx-pair? _e1209012103_)
                    (let ((_e1209312111_ (gx#syntax-e _e1209012103_)))
                      (let ((_hd1209412114_ (##car _e1209312111_))
                            (_tl1209512116_ (##cdr _e1209312111_)))
                        (if (gx#stx-pair? _tl1209512116_)
                            (let ((_e1209612119_ (gx#syntax-e _tl1209512116_)))
                              (let ((_hd1209712122_ (##car _e1209612119_))
                                    (_tl1209812124_ (##cdr _e1209612119_)))
                                (let ((_ann12127_ _hd1209712122_))
                                  (if (gx#stx-pair? _tl1209812124_)
                                      (let ((_e1209912129_
                                             (gx#syntax-e _tl1209812124_)))
                                        (let ((_hd1210012132_
                                               (##car _e1209912129_))
                                              (_tl1210112134_
                                               (##cdr _e1209912129_)))
                                          (let ((_expr12137_ _hd1210012132_))
                                            (if (gx#stx-null? _tl1210112134_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12137_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12089_))
                                                    (_E1209212107_))
                                                (_E1209212107_)))))
                                      (_E1209212107_)))))
                            (_E1209212107_))))
                    (_E1209212107_)))))
        (_E1209112139_))))
  (define gx#core-expand-local-block
    (lambda (_stx11813_ _body11814_)
      (letrec ((_expand-special11816_
                (lambda (_hd12084_ _K12085_ _rest12086_ _r12087_)
                  (_K12085_
                   '()
                   (cons (_expand-internal11817_ _hd12084_ _rest12086_)
                         _r12087_))))
               (_expand-internal11817_
                (lambda (_hd12080_ _rest12081_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11819_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12080_ _rest12081_))
                        (gx#stx-source _stx11813_))
                       _expand-internal-special11818_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12439 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj12439)
                       __obj12439)))))
               (_expand-internal-special11818_
                (lambda (_hd11975_ _K11976_ _rest11977_ _r11978_)
                  (let* ((_e1197912004_ _hd11975_)
                         (_E1199912008_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1197912004_)))
                         (_E1199512020_
                          (lambda ()
                            (if (gx#stx-pair? _e1197912004_)
                                (let ((_e1200012012_
                                       (gx#syntax-e _e1197912004_)))
                                  (let ((_hd1200112015_ (##car _e1200012012_))
                                        (_tl1200212017_ (##cdr _e1200012012_)))
                                    (if (if (gx#identifier? _hd1200112015_)
                                            (gx#core-identifier=?
                                             _hd1200112015_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K11976_
                                             _rest11977_
                                             (cons (gx#core-expand-declare%
                                                    _hd11975_)
                                                   _r11978_))
                                            (_E1199912008_))
                                        (_E1199912008_))))
                                (_E1199912008_))))
                         (_E1199112032_
                          (lambda ()
                            (if (gx#stx-pair? _e1197912004_)
                                (let ((_e1199612024_
                                       (gx#syntax-e _e1197912004_)))
                                  (let ((_hd1199712027_ (##car _e1199612024_))
                                        (_tl1199812029_ (##cdr _e1199612024_)))
                                    (if (if (gx#identifier? _hd1199712027_)
                                            (gx#core-identifier=?
                                             _hd1199712027_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd11975_)
                                              (_K11976_ _rest11977_ _r11978_))
                                            (_E1199512020_))
                                        (_E1199512020_))))
                                (_E1199512020_))))
                         (_E1198112044_
                          (lambda ()
                            (if (gx#stx-pair? _e1197912004_)
                                (let ((_e1199212036_
                                       (gx#syntax-e _e1197912004_)))
                                  (let ((_hd1199312039_ (##car _e1199212036_))
                                        (_tl1199412041_ (##cdr _e1199212036_)))
                                    (if (if (gx#identifier? _hd1199312039_)
                                            (gx#core-identifier=?
                                             _hd1199312039_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd11975_)
                                              (_K11976_ _rest11977_ _r11978_))
                                            (_E1199112032_))
                                        (_E1199112032_))))
                                (_E1199112032_))))
                         (_E1198012076_
                          (lambda ()
                            (if (gx#stx-pair? _e1197912004_)
                                (let ((_e1198212048_
                                       (gx#syntax-e _e1197912004_)))
                                  (let ((_hd1198312051_ (##car _e1198212048_))
                                        (_tl1198412053_ (##cdr _e1198212048_)))
                                    (if (if (gx#identifier? _hd1198312051_)
                                            (gx#core-identifier=?
                                             _hd1198312051_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1198412053_)
                                            (let ((_e1198512056_
                                                   (gx#syntax-e
                                                    _tl1198412053_)))
                                              (let ((_hd1198612059_
                                                     (##car _e1198512056_))
                                                    (_tl1198712061_
                                                     (##cdr _e1198512056_)))
                                                (let ((_hd-bind12064_
                                                       _hd1198612059_))
                                                  (if (gx#stx-pair?
                                                       _tl1198712061_)
                                                      (let ((_e1198812066_
                                                             (gx#syntax-e
                                                              _tl1198712061_)))
                                                        (let ((_hd1198912069_
                                                               (##car _e1198812066_))
                                                              (_tl1199012071_
                                                               (##cdr _e1198812066_)))
                                                          (let ((_expr12074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1198912069_))
                    (if (gx#stx-null? _tl1199012071_)
                        (if (gx#core-bind-values? _hd-bind12064_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12064_)
                              (_K11976_ _rest11977_ (cons _hd11975_ _r11978_)))
                            (_E1198112044_))
                        (_E1198112044_)))))
              (_E1198112044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1198112044_))
                                        (_E1198112044_))))
                                (_E1198112044_)))))
                    (_E1198012076_))))
               (_wrap-internal11819_
                (lambda (_rbody11821_)
                  (let _lp11823_ ((_rest11825_ _rbody11821_)
                                  (_decls11826_ '())
                                  (_bind11827_ '())
                                  (_body11828_ '()))
                    (let* ((_e1182911836_ _rest11825_)
                           (_E1183111885_
                            (lambda ()
                              (let* ((_body11880_
                                      (let* ((_body1183911849_ _body11828_)
                                             (_else1184211857_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11828_)
                                                 (gx#stx-source _stx11813_)))))
                                        (let ((_K1184711877_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11813_)))
                                              (_K1184411863_
                                               (lambda (_expr11861_)
                                                 _expr11861_)))
                                          (let ((_try-match1184111873_
                                                 (lambda ()
                                                   (if (##pair? _body1183911849_)
                                                       (let ((_tl1184611868_
                                                              (##cdr _body1183911849_))
                                                             (_hd1184511866_
                                                              (##car _body1183911849_)))
                                                         (if (##null? _tl1184611868_)
                                                             (let ((_expr11871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1184511866_))
                       (_K1184411863_ _expr11871_))
                     (_else1184211857_)))
               (_else1184211857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1183911849_)
                                                (_K1184711877_)
                                                (_try-match1184111873_))))))
                                     (_body11882_
                                      (if (null? _bind11827_)
                                          _body11880_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11827_
                                                       (cons _body11880_ '())))
                                           (gx#stx-source _stx11813_)))))
                                (if (null? _decls11826_)
                                    _body11882_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11826_
                                                 (cons _body11882_ '())))
                                     (gx#stx-source _stx11813_))))))
                           (_E1183011971_
                            (lambda ()
                              (if (gx#stx-pair? _e1182911836_)
                                  (let ((_e1183211889_
                                         (gx#syntax-e _e1182911836_)))
                                    (let ((_hd1183311892_
                                           (##car _e1183211889_))
                                          (_tl1183411894_
                                           (##cdr _e1183211889_)))
                                      (let* ((_hd11897_ _hd1183311892_)
                                             (_rest11899_ _tl1183411894_))
                                        (if '#t
                                            (let* ((_e1190011917_ _hd11897_)
                                                   (_E1191211921_
                                                    (lambda ()
                                                      (if (null? _bind11827_)
                                                          (_lp11823_
                                                           _rest11899_
                                                           _decls11826_
                                                           _bind11827_
                                                           (cons _hd11897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11828_))
                  (_lp11823_
                   _rest11899_
                   _decls11826_
                   (cons (cons '#f (cons _hd11897_ '())) _bind11827_)
                   _body11828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1190211935_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1190011917_)
                                                          (let ((_e1191311925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1190011917_)))
                    (let ((_hd1191411928_ (##car _e1191311925_))
                          (_tl1191511930_ (##cdr _e1191311925_)))
                      (if (if (gx#identifier? _hd1191411928_)
                              (gx#core-identifier=? _hd1191411928_ '%#declare)
                              '#f)
                          (let ((_xdecls11933_ _tl1191511930_))
                            (if '#t
                                (_lp11823_
                                 _rest11899_
                                 (gx#stx-foldr cons _decls11826_ _xdecls11933_)
                                 _bind11827_
                                 _body11828_)
                                (_E1191211921_)))
                          (_E1191211921_))))
                  (_E1191211921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1190111967_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1190011917_)
                                                          (let ((_e1190311939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1190011917_)))
                    (let ((_hd1190411942_ (##car _e1190311939_))
                          (_tl1190511944_ (##cdr _e1190311939_)))
                      (if (if (gx#identifier? _hd1190411942_)
                              (gx#core-identifier=?
                               _hd1190411942_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1190511944_)
                              (let ((_e1190611947_
                                     (gx#syntax-e _tl1190511944_)))
                                (let ((_hd1190711950_ (##car _e1190611947_))
                                      (_tl1190811952_ (##cdr _e1190611947_)))
                                  (let ((_hd-bind11955_ _hd1190711950_))
                                    (if (gx#stx-pair? _tl1190811952_)
                                        (let ((_e1190911957_
                                               (gx#syntax-e _tl1190811952_)))
                                          (let ((_hd1191011960_
                                                 (##car _e1190911957_))
                                                (_tl1191111962_
                                                 (##cdr _e1190911957_)))
                                            (let ((_expr11965_ _hd1191011960_))
                                              (if (gx#stx-null? _tl1191111962_)
                                                  (if '#t
                                                      (_lp11823_
                                                       _rest11899_
                                                       _decls11826_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind11955_)
                           (cons (gx#core-expand-expression _expr11965_) '()))
                     _bind11827_)
               _body11828_)
              (_E1190211935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1190211935_)))))
                                        (_E1190211935_)))))
                              (_E1190211935_))
                          (_E1190211935_))))
                  (_E1190211935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1190111967_))
                                            (_E1183111885_)))))
                                  (_E1183111885_)))))
                      (_E1183011971_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11814_)
          (gx#stx-source _stx11813_))
         _expand-special11816_))))
  (define gx#core-expand-declare%
    (lambda (_stx11751_)
      (let* ((_e1175211759_ _stx11751_)
             (_E1175411763_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1175211759_)))
             (_E1175311809_
              (lambda ()
                (if (gx#stx-pair? _e1175211759_)
                    (let ((_e1175511767_ (gx#syntax-e _e1175211759_)))
                      (let ((_hd1175611770_ (##car _e1175511767_))
                            (_tl1175711772_ (##cdr _e1175511767_)))
                        (let ((_body11775_ _tl1175711772_))
                          (if (gx#stx-list? _body11775_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11777_)
                                   (let* ((_e1177811785_ _decl11777_)
                                          (_E1178011789_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1177811785_)))
                                          (_E1177911805_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1177811785_)
                                                 (let ((_e1178111793_
                                                        (gx#syntax-e
                                                         _e1177811785_)))
                                                   (let ((_hd1178211796_
                                                          (##car _e1178111793_))
                                                         (_tl1178311798_
                                                          (##cdr _e1178111793_)))
                                                     (let* ((_head11801_
                                                             _hd1178211796_)
                                                            (_args11803_
                                                             _tl1178311798_))
                                                       (if (gx#stx-list?
                                                            _args11803_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11777_)
                                                           (_E1178011789_)))))
                                                 (_E1178011789_)))))
                                     (_E1177911805_)))
                                 _body11775_))
                               (gx#stx-source _stx11751_))
                              (_E1175411763_)))))
                    (_E1175411763_)))))
        (_E1175311809_))))
  (define gx#core-expand-extern%
    (lambda (_stx11635_)
      (let* ((_e1163611643_ _stx11635_)
             (_E1163811647_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1163611643_)))
             (_E1163711747_
              (lambda ()
                (if (gx#stx-pair? _e1163611643_)
                    (let ((_e1163911651_ (gx#syntax-e _e1163611643_)))
                      (let ((_hd1164011654_ (##car _e1163911651_))
                            (_tl1164111656_ (##cdr _e1163911651_)))
                        (let ((_body11659_ _tl1164111656_))
                          (if (gx#stx-list? _body11659_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind11661_)
                                   (let* ((_e1166211672_ _bind11661_)
                                          (_E1166411676_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1166211672_)))
                                          (_E1166311700_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1166211672_)
                                                 (let ((_e1166511680_
                                                        (gx#syntax-e
                                                         _e1166211672_)))
                                                   (let ((_hd1166611683_
                                                          (##car _e1166511680_))
                                                         (_tl1166711685_
                                                          (##cdr _e1166511680_)))
                                                     (let ((_id11688_
                                                            _hd1166611683_))
                                                       (if (gx#stx-pair?
                                                            _tl1166711685_)
                                                           (let ((_e1166811690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1166711685_)))
                     (let ((_hd1166911693_ (##car _e1166811690_))
                           (_tl1167011695_ (##cdr _e1166811690_)))
                       (let ((_eid11698_ _hd1166911693_))
                         (if (gx#stx-null? _tl1167011695_)
                             (if (if (gx#identifier? _id11688_)
                                     (gx#identifier? _eid11698_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id11688_
                                  (gx#stx-e _eid11698_))
                                 (_E1166411676_))
                             (_E1166411676_)))))
                   (_E1166411676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1166411676_)))))
                                     (_E1166311700_)))
                                 _body11659_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind11704_)
                                     (let* ((_e1170511715_ _bind11704_)
                                            (_E1170711719_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1170511715_)))
                                            (_E1170611743_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1170511715_)
                                                   (let ((_e1170811723_
                                                          (gx#syntax-e
                                                           _e1170511715_)))
                                                     (let ((_hd1170911726_
                                                            (##car _e1170811723_))
                                                           (_tl1171011728_
                                                            (##cdr _e1170811723_)))
                                                       (let ((_id11731_
                                                              _hd1170911726_))
                                                         (if (gx#stx-pair?
                                                              _tl1171011728_)
                                                             (let ((_e1171111733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1171011728_)))
                       (let ((_hd1171211736_ (##car _e1171111733_))
                             (_tl1171311738_ (##cdr _e1171111733_)))
                         (let ((_eid11741_ _hd1171211736_))
                           (if (gx#stx-null? _tl1171311738_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id11731_)
                                         (cons (gx#stx-e _eid11741_) '()))
                                   (_E1170711719_))
                               (_E1170711719_)))))
                     (_E1170711719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1170711719_)))))
                                       (_E1170611743_)))
                                   _body11659_))
                                 (gx#stx-source _stx11635_)))
                              (_E1163811647_)))))
                    (_E1163811647_)))))
        (_E1163711747_))))
  (define gx#core-expand-define-values%
    (lambda (_stx11581_)
      (let* ((_e1158211595_ _stx11581_)
             (_E1158411599_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1158211595_)))
             (_E1158311631_
              (lambda ()
                (if (gx#stx-pair? _e1158211595_)
                    (let ((_e1158511603_ (gx#syntax-e _e1158211595_)))
                      (let ((_hd1158611606_ (##car _e1158511603_))
                            (_tl1158711608_ (##cdr _e1158511603_)))
                        (if (gx#stx-pair? _tl1158711608_)
                            (let ((_e1158811611_ (gx#syntax-e _tl1158711608_)))
                              (let ((_hd1158911614_ (##car _e1158811611_))
                                    (_tl1159011616_ (##cdr _e1158811611_)))
                                (let ((_hd11619_ _hd1158911614_))
                                  (if (gx#stx-pair? _tl1159011616_)
                                      (let ((_e1159111621_
                                             (gx#syntax-e _tl1159011616_)))
                                        (let ((_hd1159211624_
                                               (##car _e1159111621_))
                                              (_tl1159311626_
                                               (##cdr _e1159111621_)))
                                          (let ((_expr11629_ _hd1159211624_))
                                            (if (gx#stx-null? _tl1159311626_)
                                                (if (gx#core-bind-values?
                                                     _hd11619_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11619_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11619_)
                           (cons (gx#core-expand-expression _expr11629_) '())))
               (gx#stx-source _stx11581_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1158411599_))
                                                (_E1158411599_)))))
                                      (_E1158411599_)))))
                            (_E1158411599_))))
                    (_E1158411599_)))))
        (_E1158311631_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11527_)
      (let* ((_e1152811541_ _stx11527_)
             (_E1153011545_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1152811541_)))
             (_E1152911577_
              (lambda ()
                (if (gx#stx-pair? _e1152811541_)
                    (let ((_e1153111549_ (gx#syntax-e _e1152811541_)))
                      (let ((_hd1153211552_ (##car _e1153111549_))
                            (_tl1153311554_ (##cdr _e1153111549_)))
                        (if (gx#stx-pair? _tl1153311554_)
                            (let ((_e1153411557_ (gx#syntax-e _tl1153311554_)))
                              (let ((_hd1153511560_ (##car _e1153411557_))
                                    (_tl1153611562_ (##cdr _e1153411557_)))
                                (let ((_id11565_ _hd1153511560_))
                                  (if (gx#stx-pair? _tl1153611562_)
                                      (let ((_e1153711567_
                                             (gx#syntax-e _tl1153611562_)))
                                        (let ((_hd1153811570_
                                               (##car _e1153711567_))
                                              (_tl1153911572_
                                               (##cdr _e1153711567_)))
                                          (let ((_binding-id11575_
                                                 _hd1153811570_))
                                            (if (gx#stx-null? _tl1153911572_)
                                                (if (if (gx#identifier?
                                                         _id11565_)
                                                        (gx#identifier?
                                                         _binding-id11575_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11565_
                                                       (gx#stx-e
                                                        _binding-id11575_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11565_)
                           (cons (gx#core-quote-syntax__0 _binding-id11575_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1153011545_))
                                                (_E1153011545_)))))
                                      (_E1153011545_)))))
                            (_E1153011545_))))
                    (_E1153011545_)))))
        (_E1152911577_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11470_)
      (let* ((_e1147111484_ _stx11470_)
             (_E1147311488_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1147111484_)))
             (_E1147211523_
              (lambda ()
                (if (gx#stx-pair? _e1147111484_)
                    (let ((_e1147411492_ (gx#syntax-e _e1147111484_)))
                      (let ((_hd1147511495_ (##car _e1147411492_))
                            (_tl1147611497_ (##cdr _e1147411492_)))
                        (if (gx#stx-pair? _tl1147611497_)
                            (let ((_e1147711500_ (gx#syntax-e _tl1147611497_)))
                              (let ((_hd1147811503_ (##car _e1147711500_))
                                    (_tl1147911505_ (##cdr _e1147711500_)))
                                (let ((_id11508_ _hd1147811503_))
                                  (if (gx#stx-pair? _tl1147911505_)
                                      (let ((_e1148011510_
                                             (gx#syntax-e _tl1147911505_)))
                                        (let ((_hd1148111513_
                                               (##car _e1148011510_))
                                              (_tl1148211515_
                                               (##cdr _e1148011510_)))
                                          (let ((_expr11518_ _hd1148111513_))
                                            (if (gx#stx-null? _tl1148211515_)
                                                (if (gx#identifier? _id11508_)
                                                    (let ((_g12447_
                                                           (gx#core-expand-expression+1
                                                            _expr11518_)))
                                                      (begin
                                                        (let ((_g12448_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12447_)
                           (##vector-length _g12447_)
                           1)))
                  (if (not (##fx= _g12448_ 2))
                      (error "Context expects 2 values" _g12448_)))
                (let ((_e-stx11520_ (##vector-ref _g12447_ 0))
                      (_e11521_ (##vector-ref _g12447_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11508_ _e11521_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11508_)
                                 (cons _e-stx11520_ '())))
                     (gx#stx-source _stx11470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1147311488_))
                                                (_E1147311488_)))))
                                      (_E1147311488_)))))
                            (_E1147311488_))))
                    (_E1147311488_)))))
        (_E1147211523_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11414_)
      (let* ((_e1141511428_ _stx11414_)
             (_E1141711432_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1141511428_)))
             (_E1141611466_
              (lambda ()
                (if (gx#stx-pair? _e1141511428_)
                    (let ((_e1141811436_ (gx#syntax-e _e1141511428_)))
                      (let ((_hd1141911439_ (##car _e1141811436_))
                            (_tl1142011441_ (##cdr _e1141811436_)))
                        (if (gx#stx-pair? _tl1142011441_)
                            (let ((_e1142111444_ (gx#syntax-e _tl1142011441_)))
                              (let ((_hd1142211447_ (##car _e1142111444_))
                                    (_tl1142311449_ (##cdr _e1142111444_)))
                                (let ((_id11452_ _hd1142211447_))
                                  (if (gx#stx-pair? _tl1142311449_)
                                      (let ((_e1142411454_
                                             (gx#syntax-e _tl1142311449_)))
                                        (let ((_hd1142511457_
                                               (##car _e1142411454_))
                                              (_tl1142611459_
                                               (##cdr _e1142411454_)))
                                          (let ((_alias-id11462_
                                                 _hd1142511457_))
                                            (if (gx#stx-null? _tl1142611459_)
                                                (if (if (gx#identifier?
                                                         _id11452_)
                                                        (gx#identifier?
                                                         _alias-id11462_)
                                                        '#f)
                                                    (let ((_alias-id11464_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11462_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id11452_
                                                         _alias-id11464_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11452_)
                             (cons _alias-id11464_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1141711432_))
                                                (_E1141711432_)))))
                                      (_E1141711432_)))))
                            (_E1141711432_))))
                    (_E1141711432_)))))
        (_E1141611466_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx11357_ _wrap?11358_)
        (let* ((_e1135911369_ _stx11357_)
               (_E1136111373_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1135911369_)))
               (_E1136011400_
                (lambda ()
                  (if (gx#stx-pair? _e1135911369_)
                      (let ((_e1136211377_ (gx#syntax-e _e1135911369_)))
                        (let ((_hd1136311380_ (##car _e1136211377_))
                              (_tl1136411382_ (##cdr _e1136211377_)))
                          (if (gx#stx-pair? _tl1136411382_)
                              (let ((_e1136511385_
                                     (gx#syntax-e _tl1136411382_)))
                                (let ((_hd1136611388_ (##car _e1136511385_))
                                      (_tl1136711390_ (##cdr _e1136511385_)))
                                  (let* ((_hd11393_ _hd1136611388_)
                                         (_body11395_ _tl1136711390_))
                                    (if (gx#core-bind-values? _hd11393_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0
                                              _hd11393_)
                                             (let ((_body11398_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd11393_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11357_
                         _body11395_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?11358_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body11398_)
                                                    (gx#stx-source _stx11357_))
                                                   _body11398_))))
                                         gx#current-expander-context
                                         (let ((__obj12440
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12440)
                                             __obj12440)))
                                        (_E1136111373_)))))
                              (_E1136111373_))))
                      (_E1136111373_)))))
          (_E1136011400_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx11407_)
          (let ((_wrap?11409_ '#t))
            (gx#core-expand-lambda%__% _stx11407_ _wrap?11409_))))
      (define gx#core-expand-lambda%
        (lambda _g12450_
          (let ((_g12449_ (length _g12450_)))
            (cond ((##fx= _g12449_ 1)
                   (apply gx#core-expand-lambda%__0 _g12450_))
                  ((##fx= _g12449_ 2)
                   (apply gx#core-expand-lambda%__% _g12450_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g12450_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11321_)
      (let* ((_e1132211329_ _stx11321_)
             (_E1132411333_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1132211329_)))
             (_E1132311352_
              (lambda ()
                (if (gx#stx-pair? _e1132211329_)
                    (let ((_e1132511337_ (gx#syntax-e _e1132211329_)))
                      (let ((_hd1132611340_ (##car _e1132511337_))
                            (_tl1132711342_ (##cdr _e1132511337_)))
                        (let ((_clauses11345_ _tl1132711342_))
                          (if (gx#stx-list? _clauses11345_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11347_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11347_)
                                     (let ((_$e11349_
                                            (gx#stx-source _clause11347_)))
                                       (if _$e11349_
                                           _$e11349_
                                           (gx#stx-source _stx11321_))))
                                    '#f))
                                 _clauses11345_))
                               (gx#stx-source _stx11321_))
                              (_E1132411333_)))))
                    (_E1132411333_)))))
        (_E1132311352_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11275_)
      (let* ((_e1127611286_ _stx11275_)
             (_E1127811290_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1127611286_)))
             (_E1127711317_
              (lambda ()
                (if (gx#stx-pair? _e1127611286_)
                    (let ((_e1127911294_ (gx#syntax-e _e1127611286_)))
                      (let ((_hd1128011297_ (##car _e1127911294_))
                            (_tl1128111299_ (##cdr _e1127911294_)))
                        (if (gx#stx-pair? _tl1128111299_)
                            (let ((_e1128211302_ (gx#syntax-e _tl1128111299_)))
                              (let ((_hd1128311305_ (##car _e1128211302_))
                                    (_tl1128411307_ (##cdr _e1128211302_)))
                                (let* ((_hd11310_ _hd1128311305_)
                                       (_body11312_ _tl1128411307_))
                                  (if (gx#core-expand-let-bind? _hd11310_)
                                      (let ((_expressions11314_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11310_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11310_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11310_
                                                           _expressions11314_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11275_
                         _body11312_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11275_))))
                                         gx#current-expander-context
                                         (let ((__obj12441
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12441)
                                             __obj12441))))
                                      (_E1127811290_)))))
                            (_E1127811290_))))
                    (_E1127811290_)))))
        (_E1127711317_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11220_ _form11221_)
        (let* ((_e1122211232_ _stx11220_)
               (_E1122411236_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1122211232_)))
               (_E1122311261_
                (lambda ()
                  (if (gx#stx-pair? _e1122211232_)
                      (let ((_e1122511240_ (gx#syntax-e _e1122211232_)))
                        (let ((_hd1122611243_ (##car _e1122511240_))
                              (_tl1122711245_ (##cdr _e1122511240_)))
                          (if (gx#stx-pair? _tl1122711245_)
                              (let ((_e1122811248_
                                     (gx#syntax-e _tl1122711245_)))
                                (let ((_hd1122911251_ (##car _e1122811248_))
                                      (_tl1123011253_ (##cdr _e1122811248_)))
                                  (let* ((_hd11256_ _hd1122911251_)
                                         (_body11258_ _tl1123011253_))
                                    (if (gx#core-expand-let-bind? _hd11256_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11256_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form11221_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11256_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd11256_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11220_
                         _body11258_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11220_))))
                                         gx#current-expander-context
                                         (let ((__obj12442
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12442)
                                             __obj12442)))
                                        (_E1122411236_)))))
                              (_E1122411236_))))
                      (_E1122411236_)))))
          (_E1122311261_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx11268_)
          (let ((_form11270_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx11268_ _form11270_))))
      (define gx#core-expand-letrec-values%
        (lambda _g12452_
          (let ((_g12451_ (length _g12452_)))
            (cond ((##fx= _g12451_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g12452_))
                  ((##fx= _g12451_ 2)
                   (apply gx#core-expand-letrec-values%__% _g12452_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g12452_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11217_)
      (gx#core-expand-letrec-values%__% _stx11217_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11174_)
      (if (gx#stx-list? _stx11174_)
          (gx#stx-andmap
           (lambda (_bind11176_)
             (let* ((_e1117711187_ _bind11176_)
                    (_E1117911191_ (lambda () '#f))
                    (_E1117811213_
                     (lambda ()
                       (if (gx#stx-pair? _e1117711187_)
                           (let ((_e1118011195_ (gx#syntax-e _e1117711187_)))
                             (let ((_hd1118111198_ (##car _e1118011195_))
                                   (_tl1118211200_ (##cdr _e1118011195_)))
                               (let ((_hd11203_ _hd1118111198_))
                                 (if (gx#stx-pair? _tl1118211200_)
                                     (let ((_e1118311205_
                                            (gx#syntax-e _tl1118211200_)))
                                       (let ((_hd1118411208_
                                              (##car _e1118311205_))
                                             (_tl1118511210_
                                              (##cdr _e1118311205_)))
                                         (if (gx#stx-null? _tl1118511210_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11203_)
                                                 (_E1117911191_))
                                             (_E1117911191_))))
                                     (_E1117911191_)))))
                           (_E1117911191_)))))
               (_E1117811213_)))
           _stx11174_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11133_)
      (let* ((_e1113411144_ _bind11133_)
             (_E1113611148_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1113411144_)))
             (_E1113511170_
              (lambda ()
                (if (gx#stx-pair? _e1113411144_)
                    (let ((_e1113711152_ (gx#syntax-e _e1113411144_)))
                      (let ((_hd1113811155_ (##car _e1113711152_))
                            (_tl1113911157_ (##cdr _e1113711152_)))
                        (if (gx#stx-pair? _tl1113911157_)
                            (let ((_e1114011160_ (gx#syntax-e _tl1113911157_)))
                              (let ((_hd1114111163_ (##car _e1114011160_))
                                    (_tl1114211165_ (##cdr _e1114011160_)))
                                (let ((_expr11168_ _hd1114111163_))
                                  (if (gx#stx-null? _tl1114211165_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11168_)
                                          (_E1113611148_))
                                      (_E1113611148_)))))
                            (_E1113611148_))))
                    (_E1113611148_)))))
        (_E1113511170_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11092_)
      (let* ((_e1109311103_ _bind11092_)
             (_E1109511107_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1109311103_)))
             (_E1109411129_
              (lambda ()
                (if (gx#stx-pair? _e1109311103_)
                    (let ((_e1109611111_ (gx#syntax-e _e1109311103_)))
                      (let ((_hd1109711114_ (##car _e1109611111_))
                            (_tl1109811116_ (##cdr _e1109611111_)))
                        (let ((_hd11119_ _hd1109711114_))
                          (if (gx#stx-pair? _tl1109811116_)
                              (let ((_e1109911121_
                                     (gx#syntax-e _tl1109811116_)))
                                (let ((_hd1110011124_ (##car _e1109911121_))
                                      (_tl1110111126_ (##cdr _e1109911121_)))
                                  (if (gx#stx-null? _tl1110111126_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11119_)
                                          (_E1109511107_))
                                      (_E1109511107_))))
                              (_E1109511107_)))))
                    (_E1109511107_)))))
        (_E1109411129_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11050_ _expr11051_)
      (let* ((_e1105211062_ _bind11050_)
             (_E1105411066_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1105211062_)))
             (_E1105311088_
              (lambda ()
                (if (gx#stx-pair? _e1105211062_)
                    (let ((_e1105511070_ (gx#syntax-e _e1105211062_)))
                      (let ((_hd1105611073_ (##car _e1105511070_))
                            (_tl1105711075_ (##cdr _e1105511070_)))
                        (let ((_hd11078_ _hd1105611073_))
                          (if (gx#stx-pair? _tl1105711075_)
                              (let ((_e1105811080_
                                     (gx#syntax-e _tl1105711075_)))
                                (let ((_hd1105911083_ (##car _e1105811080_))
                                      (_tl1106011085_ (##cdr _e1105811080_)))
                                  (if (gx#stx-null? _tl1106011085_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11078_)
                                                (cons _expr11051_ '()))
                                          (_E1105411066_))
                                      (_E1105411066_))))
                              (_E1105411066_)))))
                    (_E1105411066_)))))
        (_E1105311088_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11004_)
      (let* ((_e1100511015_ _stx11004_)
             (_E1100711019_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1100511015_)))
             (_E1100611046_
              (lambda ()
                (if (gx#stx-pair? _e1100511015_)
                    (let ((_e1100811023_ (gx#syntax-e _e1100511015_)))
                      (let ((_hd1100911026_ (##car _e1100811023_))
                            (_tl1101011028_ (##cdr _e1100811023_)))
                        (if (gx#stx-pair? _tl1101011028_)
                            (let ((_e1101111031_ (gx#syntax-e _tl1101011028_)))
                              (let ((_hd1101211034_ (##car _e1101111031_))
                                    (_tl1101311036_ (##cdr _e1101111031_)))
                                (let* ((_hd11039_ _hd1101211034_)
                                       (_body11041_ _tl1101311036_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11039_)
                                      (let ((_expanders11043_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11039_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11039_
                                              _expanders11043_)
                                             (gx#core-expand-local-block
                                              _stx11004_
                                              _body11041_)))
                                         gx#current-expander-context
                                         (let ((__obj12443
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12443)
                                             __obj12443))))
                                      (_E1100711019_)))))
                            (_E1100711019_))))
                    (_E1100711019_)))))
        (_E1100611046_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx10953_)
      (let* ((_e1095410964_ _stx10953_)
             (_E1095610968_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1095410964_)))
             (_E1095511000_
              (lambda ()
                (if (gx#stx-pair? _e1095410964_)
                    (let ((_e1095710972_ (gx#syntax-e _e1095410964_)))
                      (let ((_hd1095810975_ (##car _e1095710972_))
                            (_tl1095910977_ (##cdr _e1095710972_)))
                        (if (gx#stx-pair? _tl1095910977_)
                            (let ((_e1096010980_ (gx#syntax-e _tl1095910977_)))
                              (let ((_hd1096110983_ (##car _e1096010980_))
                                    (_tl1096210985_ (##cdr _e1096010980_)))
                                (let* ((_hd10988_ _hd1096110983_)
                                       (_body10990_ _tl1096210985_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd10988_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd10988_
                                            (make-list
                                             (gx#stx-length _hd10988_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1099210995_
                                                     _g1099310997_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1099210995_
                                               _g1099310997_
                                               '#t))
                                            _hd10988_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd10988_))
                                           (gx#core-expand-local-block
                                            _stx10953_
                                            _body10990_)))
                                       gx#current-expander-context
                                       (let ((__obj12444
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj12444)
                                           __obj12444)))
                                      (_E1095610968_)))))
                            (_E1095610968_))))
                    (_E1095610968_)))))
        (_E1095511000_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx10910_)
      (if (gx#stx-list? _stx10910_)
          (gx#stx-andmap
           (lambda (_bind10912_)
             (let* ((_e1091310923_ _bind10912_)
                    (_E1091510927_ (lambda () '#f))
                    (_E1091410949_
                     (lambda ()
                       (if (gx#stx-pair? _e1091310923_)
                           (let ((_e1091610931_ (gx#syntax-e _e1091310923_)))
                             (let ((_hd1091710934_ (##car _e1091610931_))
                                   (_tl1091810936_ (##cdr _e1091610931_)))
                               (let ((_hd10939_ _hd1091710934_))
                                 (if (gx#stx-pair? _tl1091810936_)
                                     (let ((_e1091910941_
                                            (gx#syntax-e _tl1091810936_)))
                                       (let ((_hd1092010944_
                                              (##car _e1091910941_))
                                             (_tl1092110946_
                                              (##cdr _e1091910941_)))
                                         (if (gx#stx-null? _tl1092110946_)
                                             (if '#t
                                                 (gx#identifier? _hd10939_)
                                                 (_E1091510927_))
                                             (_E1091510927_))))
                                     (_E1091510927_)))))
                           (_E1091510927_)))))
               (_E1091410949_)))
           _stx10910_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind10867_)
      (let* ((_e1086810878_ _bind10867_)
             (_E1087010882_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1086810878_)))
             (_E1086910906_
              (lambda ()
                (if (gx#stx-pair? _e1086810878_)
                    (let ((_e1087110886_ (gx#syntax-e _e1086810878_)))
                      (let ((_hd1087210889_ (##car _e1087110886_))
                            (_tl1087310891_ (##cdr _e1087110886_)))
                        (if (gx#stx-pair? _tl1087310891_)
                            (let ((_e1087410894_ (gx#syntax-e _tl1087310891_)))
                              (let ((_hd1087510897_ (##car _e1087410894_))
                                    (_tl1087610899_ (##cdr _e1087410894_)))
                                (let ((_expr10902_ _hd1087510897_))
                                  (if (gx#stx-null? _tl1087610899_)
                                      (if '#t
                                          (let ((_g12453_
                                                 (gx#core-expand-expression+1
                                                  _expr10902_)))
                                            (begin
                                              (let ((_g12454_
                                                     (if (##values? _g12453_)
                                                         (##vector-length
                                                          _g12453_)
                                                         1)))
                                                (if (not (##fx= _g12454_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12454_)))
                                              (let ((_e10904_
                                                     (##vector-ref
                                                      _g12453_
                                                      1)))
                                                _e10904_)))
                                          (_E1087010882_))
                                      (_E1087010882_)))))
                            (_E1087010882_))))
                    (_E1087010882_)))))
        (_E1086910906_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind10812_ _e10813_ _rebind?10814_)
        (let* ((_e1081510825_ _bind10812_)
               (_E1081710829_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1081510825_)))
               (_E1081610851_
                (lambda ()
                  (if (gx#stx-pair? _e1081510825_)
                      (let ((_e1081810833_ (gx#syntax-e _e1081510825_)))
                        (let ((_hd1081910836_ (##car _e1081810833_))
                              (_tl1082010838_ (##cdr _e1081810833_)))
                          (let ((_id10841_ _hd1081910836_))
                            (if (gx#stx-pair? _tl1082010838_)
                                (let ((_e1082110843_
                                       (gx#syntax-e _tl1082010838_)))
                                  (let ((_hd1082210846_ (##car _e1082110843_))
                                        (_tl1082310848_ (##cdr _e1082110843_)))
                                    (if (gx#stx-null? _tl1082310848_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id10841_
                                             _e10813_
                                             _rebind?10814_)
                                            (_E1081710829_))
                                        (_E1081710829_))))
                                (_E1081710829_)))))
                      (_E1081710829_)))))
          (_E1081610851_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind10858_ _e10859_)
          (let ((_rebind?10861_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind10858_
             _e10859_
             _rebind?10861_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g12456_
          (let ((_g12455_ (length _g12456_)))
            (cond ((##fx= _g12455_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g12456_))
                  ((##fx= _g12455_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g12456_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g12456_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx10770_)
      (let* ((_e1077110781_ _stx10770_)
             (_E1077310785_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1077110781_)))
             (_E1077210807_
              (lambda ()
                (if (gx#stx-pair? _e1077110781_)
                    (let ((_e1077410789_ (gx#syntax-e _e1077110781_)))
                      (let ((_hd1077510792_ (##car _e1077410789_))
                            (_tl1077610794_ (##cdr _e1077410789_)))
                        (if (gx#stx-pair? _tl1077610794_)
                            (let ((_e1077710797_ (gx#syntax-e _tl1077610794_)))
                              (let ((_hd1077810800_ (##car _e1077710797_))
                                    (_tl1077910802_ (##cdr _e1077710797_)))
                                (let ((_expr10805_ _hd1077810800_))
                                  (if (gx#stx-null? _tl1077910802_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10805_)
                                          (_E1077310785_))
                                      (_E1077310785_)))))
                            (_E1077310785_))))
                    (_E1077310785_)))))
        (_E1077210807_))))
  (define gx#core-expand-quote%
    (lambda (_stx10729_)
      (let* ((_e1073010740_ _stx10729_)
             (_E1073210744_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1073010740_)))
             (_E1073110766_
              (lambda ()
                (if (gx#stx-pair? _e1073010740_)
                    (let ((_e1073310748_ (gx#syntax-e _e1073010740_)))
                      (let ((_hd1073410751_ (##car _e1073310748_))
                            (_tl1073510753_ (##cdr _e1073310748_)))
                        (if (gx#stx-pair? _tl1073510753_)
                            (let ((_e1073610756_ (gx#syntax-e _tl1073510753_)))
                              (let ((_hd1073710759_ (##car _e1073610756_))
                                    (_tl1073810761_ (##cdr _e1073610756_)))
                                (let ((_e10764_ _hd1073710759_))
                                  (if (gx#stx-null? _tl1073810761_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10764_)
                                                       '()))
                                           (gx#stx-source _stx10729_))
                                          (_E1073210744_))
                                      (_E1073210744_)))))
                            (_E1073210744_))))
                    (_E1073210744_)))))
        (_E1073110766_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10688_)
      (let* ((_e1068910699_ _stx10688_)
             (_E1069110703_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1068910699_)))
             (_E1069010725_
              (lambda ()
                (if (gx#stx-pair? _e1068910699_)
                    (let ((_e1069210707_ (gx#syntax-e _e1068910699_)))
                      (let ((_hd1069310710_ (##car _e1069210707_))
                            (_tl1069410712_ (##cdr _e1069210707_)))
                        (if (gx#stx-pair? _tl1069410712_)
                            (let ((_e1069510715_ (gx#syntax-e _tl1069410712_)))
                              (let ((_hd1069610718_ (##car _e1069510715_))
                                    (_tl1069710720_ (##cdr _e1069510715_)))
                                (let ((_e10723_ _hd1069610718_))
                                  (if (gx#stx-null? _tl1069710720_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10723_)
                                                       '()))
                                           (gx#stx-source _stx10688_))
                                          (_E1069110703_))
                                      (_E1069110703_)))))
                            (_E1069110703_))))
                    (_E1069110703_)))))
        (_E1069010725_))))
  (define gx#core-expand-call%
    (lambda (_stx10645_)
      (let* ((_e1064610656_ _stx10645_)
             (_E1064810660_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1064610656_)))
             (_E1064710684_
              (lambda ()
                (if (gx#stx-pair? _e1064610656_)
                    (let ((_e1064910664_ (gx#syntax-e _e1064610656_)))
                      (let ((_hd1065010667_ (##car _e1064910664_))
                            (_tl1065110669_ (##cdr _e1064910664_)))
                        (if (gx#stx-pair? _tl1065110669_)
                            (let ((_e1065210672_ (gx#syntax-e _tl1065110669_)))
                              (let ((_hd1065310675_ (##car _e1065210672_))
                                    (_tl1065410677_ (##cdr _e1065210672_)))
                                (let* ((_rator10680_ _hd1065310675_)
                                       (_args10682_ _tl1065410677_))
                                  (if (gx#stx-list? _args10682_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10680_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10682_))
                                       (gx#stx-source _stx10645_))
                                      (_E1064810660_)))))
                            (_E1064810660_))))
                    (_E1064810660_)))))
        (_E1064710684_))))
  (define gx#core-expand-if%
    (lambda (_stx10578_)
      (let* ((_e1057910595_ _stx10578_)
             (_E1058110599_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1057910595_)))
             (_E1058010641_
              (lambda ()
                (if (gx#stx-pair? _e1057910595_)
                    (let ((_e1058210603_ (gx#syntax-e _e1057910595_)))
                      (let ((_hd1058310606_ (##car _e1058210603_))
                            (_tl1058410608_ (##cdr _e1058210603_)))
                        (if (gx#stx-pair? _tl1058410608_)
                            (let ((_e1058510611_ (gx#syntax-e _tl1058410608_)))
                              (let ((_hd1058610614_ (##car _e1058510611_))
                                    (_tl1058710616_ (##cdr _e1058510611_)))
                                (let ((_test10619_ _hd1058610614_))
                                  (if (gx#stx-pair? _tl1058710616_)
                                      (let ((_e1058810621_
                                             (gx#syntax-e _tl1058710616_)))
                                        (let ((_hd1058910624_
                                               (##car _e1058810621_))
                                              (_tl1059010626_
                                               (##cdr _e1058810621_)))
                                          (let ((_K10629_ _hd1058910624_))
                                            (if (gx#stx-pair? _tl1059010626_)
                                                (let ((_e1059110631_
                                                       (gx#syntax-e
                                                        _tl1059010626_)))
                                                  (let ((_hd1059210634_
                                                         (##car _e1059110631_))
                                                        (_tl1059310636_
                                                         (##cdr _e1059110631_)))
                                                    (let ((_E10639_
                                                           _hd1059210634_))
                                                      (if (gx#stx-null?
                                                           _tl1059310636_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10619_)
                                   (cons (gx#core-expand-expression _K10629_)
                                         (cons (gx#core-expand-expression
                                                _E10639_)
                                               '()))))
                       (gx#stx-source _stx10578_))
                      (_E1058110599_))
                  (_E1058110599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1058110599_)))))
                                      (_E1058110599_)))))
                            (_E1058110599_))))
                    (_E1058110599_)))))
        (_E1058010641_))))
  (define gx#core-expand-ref%
    (lambda (_stx10537_)
      (let* ((_e1053810548_ _stx10537_)
             (_E1054010552_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1053810548_)))
             (_E1053910574_
              (lambda ()
                (if (gx#stx-pair? _e1053810548_)
                    (let ((_e1054110556_ (gx#syntax-e _e1053810548_)))
                      (let ((_hd1054210559_ (##car _e1054110556_))
                            (_tl1054310561_ (##cdr _e1054110556_)))
                        (if (gx#stx-pair? _tl1054310561_)
                            (let ((_e1054410564_ (gx#syntax-e _tl1054310561_)))
                              (let ((_hd1054510567_ (##car _e1054410564_))
                                    (_tl1054610569_ (##cdr _e1054410564_)))
                                (let ((_id10572_ _hd1054510567_))
                                  (if (gx#stx-null? _tl1054610569_)
                                      (if (gx#core-runtime-ref? _id10572_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10572_
                                                        _stx10537_)
                                                       '()))
                                           (gx#stx-source _stx10537_))
                                          (_E1054010552_))
                                      (_E1054010552_)))))
                            (_E1054010552_))))
                    (_E1054010552_)))))
        (_E1053910574_))))
  (define gx#core-expand-setq%
    (lambda (_stx10483_)
      (let* ((_e1048410497_ _stx10483_)
             (_E1048610501_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1048410497_)))
             (_E1048510533_
              (lambda ()
                (if (gx#stx-pair? _e1048410497_)
                    (let ((_e1048710505_ (gx#syntax-e _e1048410497_)))
                      (let ((_hd1048810508_ (##car _e1048710505_))
                            (_tl1048910510_ (##cdr _e1048710505_)))
                        (if (gx#stx-pair? _tl1048910510_)
                            (let ((_e1049010513_ (gx#syntax-e _tl1048910510_)))
                              (let ((_hd1049110516_ (##car _e1049010513_))
                                    (_tl1049210518_ (##cdr _e1049010513_)))
                                (let ((_id10521_ _hd1049110516_))
                                  (if (gx#stx-pair? _tl1049210518_)
                                      (let ((_e1049310523_
                                             (gx#syntax-e _tl1049210518_)))
                                        (let ((_hd1049410526_
                                               (##car _e1049310523_))
                                              (_tl1049510528_
                                               (##cdr _e1049310523_)))
                                          (let ((_expr10531_ _hd1049410526_))
                                            (if (gx#stx-null? _tl1049510528_)
                                                (if (gx#core-runtime-ref?
                                                     _id10521_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10521_
                          _stx10483_)
                         (cons (gx#core-expand-expression _expr10531_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10483_))
                                                    (_E1048610501_))
                                                (_E1048610501_)))))
                                      (_E1048610501_)))))
                            (_E1048610501_))))
                    (_E1048610501_)))))
        (_E1048510533_))))
  (define gx#macro-expand-extern
    (lambda (_stx10331_)
      (letrec ((_generate10333_
                (lambda (_body10363_)
                  (let _lp10365_ ((_rest10367_ _body10363_)
                                  (_ns10368_ (gx#core-context-namespace__0))
                                  (_r10369_ '()))
                    (let* ((_e1037010385_ _rest10367_)
                           (_E1038310389_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1037010385_)))
                           (_E1037910393_
                            (lambda ()
                              (if (gx#stx-null? _e1037010385_)
                                  (if '#t (reverse _r10369_) (_E1038310389_))
                                  (_E1038310389_))))
                           (_E1037210450_
                            (lambda ()
                              (if (gx#stx-pair? _e1037010385_)
                                  (let ((_e1038010397_
                                         (gx#syntax-e _e1037010385_)))
                                    (let ((_hd1038110400_
                                           (##car _e1038010397_))
                                          (_tl1038210402_
                                           (##cdr _e1038010397_)))
                                      (let* ((_hd10405_ _hd1038110400_)
                                             (_rest10407_ _tl1038210402_))
                                        (if '#t
                                            (if (gx#identifier? _hd10405_)
                                                (_lp10365_
                                                 _rest10407_
                                                 _ns10368_
                                                 (cons (cons _hd10405_
                                                             (cons (if _ns10368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10405_
                                _ns10368_
                                '"#"
                                _hd10405_)
                               _hd10405_)
                           '()))
               _r10369_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1040810418_
                                                        _hd10405_)
                                                       (_E1041010422_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1040810418_)))
                                                       (_E1040910446_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1040810418_)
                                                              (let ((_e1041110426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1040810418_)))
                        (let ((_hd1041210429_ (##car _e1041110426_))
                              (_tl1041310431_ (##cdr _e1041110426_)))
                          (let ((_id10434_ _hd1041210429_))
                            (if (gx#stx-pair? _tl1041310431_)
                                (let ((_e1041410436_
                                       (gx#syntax-e _tl1041310431_)))
                                  (let ((_hd1041510439_ (##car _e1041410436_))
                                        (_tl1041610441_ (##cdr _e1041410436_)))
                                    (let ((_eid10444_ _hd1041510439_))
                                      (if (gx#stx-null? _tl1041610441_)
                                          (if (if (gx#identifier? _id10434_)
                                                  (gx#identifier? _eid10444_)
                                                  '#f)
                                              (_lp10365_
                                               _rest10407_
                                               _ns10368_
                                               (cons (cons _id10434_
                                                           (cons _eid10444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10369_))
                                              (_E1041010422_))
                                          (_E1041010422_)))))
                                (_E1041010422_)))))
                      (_E1041010422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1040910446_)))
                                            (_E1037910393_)))))
                                  (_E1037910393_))))
                           (_E1037110479_
                            (lambda ()
                              (if (gx#stx-pair? _e1037010385_)
                                  (let ((_e1037310454_
                                         (gx#syntax-e _e1037010385_)))
                                    (let ((_hd1037410457_
                                           (##car _e1037310454_))
                                          (_tl1037510459_
                                           (##cdr _e1037310454_)))
                                      (if (eq? (gx#stx-e _hd1037410457_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1037510459_)
                                              (let ((_e1037610462_
                                                     (gx#syntax-e
                                                      _tl1037510459_)))
                                                (let ((_hd1037710465_
                                                       (##car _e1037610462_))
                                                      (_tl1037810467_
                                                       (##cdr _e1037610462_)))
                                                  (let* ((_ns10470_
                                                          _hd1037710465_)
                                                         (_rest10472_
                                                          _tl1037810467_))
                                                    (if '#t
                                                        (let ((_ns10477_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10470_)
                           (symbol->string (gx#stx-e _ns10470_))
                           (if (let ((_$e10474_ (gx#stx-string? _ns10470_)))
                                 (if _$e10474_
                                     _$e10474_
                                     (gx#stx-false? _ns10470_)))
                               (gx#stx-e _ns10470_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10331_
                                _ns10470_)))))
                  (_lp10365_ _rest10472_ _ns10477_ _r10369_))
                (_E1037210450_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1037210450_))
                                          (_E1037210450_))))
                                  (_E1037210450_)))))
                      (_E1037110479_))))))
        (let* ((_e1033410341_ _stx10331_)
               (_E1033610345_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1033410341_)))
               (_E1033510359_
                (lambda ()
                  (if (gx#stx-pair? _e1033410341_)
                      (let ((_e1033710349_ (gx#syntax-e _e1033410341_)))
                        (let ((_hd1033810352_ (##car _e1033710349_))
                              (_tl1033910354_ (##cdr _e1033710349_)))
                          (let ((_body10357_ _tl1033910354_))
                            (if (gx#stx-list? _body10357_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10333_ _body10357_))
                                (_E1033610345_)))))
                      (_E1033610345_)))))
          (_E1033510359_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10277_)
      (let* ((_e1027810291_ _stx10277_)
             (_E1028010295_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1027810291_)))
             (_E1027910327_
              (lambda ()
                (if (gx#stx-pair? _e1027810291_)
                    (let ((_e1028110299_ (gx#syntax-e _e1027810291_)))
                      (let ((_hd1028210302_ (##car _e1028110299_))
                            (_tl1028310304_ (##cdr _e1028110299_)))
                        (if (gx#stx-pair? _tl1028310304_)
                            (let ((_e1028410307_ (gx#syntax-e _tl1028310304_)))
                              (let ((_hd1028510310_ (##car _e1028410307_))
                                    (_tl1028610312_ (##cdr _e1028410307_)))
                                (let ((_hd10315_ _hd1028510310_))
                                  (if (gx#stx-pair? _tl1028610312_)
                                      (let ((_e1028710317_
                                             (gx#syntax-e _tl1028610312_)))
                                        (let ((_hd1028810320_
                                               (##car _e1028710317_))
                                              (_tl1028910322_
                                               (##cdr _e1028710317_)))
                                          (let ((_expr10325_ _hd1028810320_))
                                            (if (gx#stx-null? _tl1028910322_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10315_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10315_)
                        (cons _expr10325_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1028010295_))
                                                (_E1028010295_)))))
                                      (_E1028010295_)))))
                            (_E1028010295_))))
                    (_E1028010295_)))))
        (_E1027910327_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10223_)
      (let* ((_e1022410237_ _stx10223_)
             (_E1022610241_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1022410237_)))
             (_E1022510273_
              (lambda ()
                (if (gx#stx-pair? _e1022410237_)
                    (let ((_e1022710245_ (gx#syntax-e _e1022410237_)))
                      (let ((_hd1022810248_ (##car _e1022710245_))
                            (_tl1022910250_ (##cdr _e1022710245_)))
                        (if (gx#stx-pair? _tl1022910250_)
                            (let ((_e1023010253_ (gx#syntax-e _tl1022910250_)))
                              (let ((_hd1023110256_ (##car _e1023010253_))
                                    (_tl1023210258_ (##cdr _e1023010253_)))
                                (let ((_hd10261_ _hd1023110256_))
                                  (if (gx#stx-pair? _tl1023210258_)
                                      (let ((_e1023310263_
                                             (gx#syntax-e _tl1023210258_)))
                                        (let ((_hd1023410266_
                                               (##car _e1023310263_))
                                              (_tl1023510268_
                                               (##cdr _e1023310263_)))
                                          (let ((_expr10271_ _hd1023410266_))
                                            (if (gx#stx-null? _tl1023510268_)
                                                (if (gx#identifier? _hd10261_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10261_
                                                                (cons _expr10271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1022610241_))
                                                (_E1022610241_)))))
                                      (_E1022610241_)))))
                            (_E1022610241_))))
                    (_E1022610241_)))))
        (_E1022510273_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10169_)
      (let* ((_e1017010183_ _stx10169_)
             (_E1017210187_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1017010183_)))
             (_E1017110219_
              (lambda ()
                (if (gx#stx-pair? _e1017010183_)
                    (let ((_e1017310191_ (gx#syntax-e _e1017010183_)))
                      (let ((_hd1017410194_ (##car _e1017310191_))
                            (_tl1017510196_ (##cdr _e1017310191_)))
                        (if (gx#stx-pair? _tl1017510196_)
                            (let ((_e1017610199_ (gx#syntax-e _tl1017510196_)))
                              (let ((_hd1017710202_ (##car _e1017610199_))
                                    (_tl1017810204_ (##cdr _e1017610199_)))
                                (let ((_id10207_ _hd1017710202_))
                                  (if (gx#stx-pair? _tl1017810204_)
                                      (let ((_e1017910209_
                                             (gx#syntax-e _tl1017810204_)))
                                        (let ((_hd1018010212_
                                               (##car _e1017910209_))
                                              (_tl1018110214_
                                               (##cdr _e1017910209_)))
                                          (let ((_alias-id10217_
                                                 _hd1018010212_))
                                            (if (gx#stx-null? _tl1018110214_)
                                                (if (if (gx#identifier?
                                                         _id10207_)
                                                        (gx#identifier?
                                                         _alias-id10217_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10207_
                                                                (cons _alias-id10217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1017210187_))
                                                (_E1017210187_)))))
                                      (_E1017210187_)))))
                            (_E1017210187_))))
                    (_E1017210187_)))))
        (_E1017110219_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10126_)
      (let* ((_e1012710137_ _stx10126_)
             (_E1012910141_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1012710137_)))
             (_E1012810165_
              (lambda ()
                (if (gx#stx-pair? _e1012710137_)
                    (let ((_e1013010145_ (gx#syntax-e _e1012710137_)))
                      (let ((_hd1013110148_ (##car _e1013010145_))
                            (_tl1013210150_ (##cdr _e1013010145_)))
                        (if (gx#stx-pair? _tl1013210150_)
                            (let ((_e1013310153_ (gx#syntax-e _tl1013210150_)))
                              (let ((_hd1013410156_ (##car _e1013310153_))
                                    (_tl1013510158_ (##cdr _e1013310153_)))
                                (let* ((_hd10161_ _hd1013410156_)
                                       (_body10163_ _tl1013510158_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd10161_)
                                          (if (gx#stx-list? _body10163_)
                                              (not (gx#stx-null? _body10163_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10161_)
                                       _body10163_)
                                      (_E1012910141_)))))
                            (_E1012910141_))))
                    (_E1012910141_)))))
        (_E1012810165_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10062_)
      (letrec ((_generate10064_
                (lambda (_clause10094_)
                  (let* ((_e1009510102_ _clause10094_)
                         (_E1009710106_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10062_
                             _clause10094_)))
                         (_E1009610122_
                          (lambda ()
                            (if (gx#stx-pair? _e1009510102_)
                                (let ((_e1009810110_
                                       (gx#syntax-e _e1009510102_)))
                                  (let ((_hd1009910113_ (##car _e1009810110_))
                                        (_tl1010010115_ (##cdr _e1009810110_)))
                                    (let* ((_hd10118_ _hd1009910113_)
                                           (_body10120_ _tl1010010115_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd10118_)
                                              (if (gx#stx-list? _body10120_)
                                                  (not (gx#stx-null?
                                                        _body10120_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10118_)
                                                 _body10120_)
                                           (gx#stx-source _clause10094_))
                                          (_E1009710106_)))))
                                (_E1009710106_)))))
                    (_E1009610122_)))))
        (let* ((_e1006510072_ _stx10062_)
               (_E1006710076_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1006510072_)))
               (_E1006610090_
                (lambda ()
                  (if (gx#stx-pair? _e1006510072_)
                      (let ((_e1006810080_ (gx#syntax-e _e1006510072_)))
                        (let ((_hd1006910083_ (##car _e1006810080_))
                              (_tl1007010085_ (##cdr _e1006810080_)))
                          (let ((_clauses10088_ _tl1007010085_))
                            (if (gx#stx-list? _clauses10088_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10064_ _clauses10088_))
                                (_E1006710076_)))))
                      (_E1006710076_)))))
          (_E1006610090_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx9963_ _form9964_)
        (letrec ((_generate9966_
                  (lambda (_bind10009_)
                    (let* ((_e1001010020_ _bind10009_)
                           (_E1001210024_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx9963_
                               _bind10009_)))
                           (_E1001110048_
                            (lambda ()
                              (if (gx#stx-pair? _e1001010020_)
                                  (let ((_e1001310028_
                                         (gx#syntax-e _e1001010020_)))
                                    (let ((_hd1001410031_
                                           (##car _e1001310028_))
                                          (_tl1001510033_
                                           (##cdr _e1001310028_)))
                                      (let ((_ids10036_ _hd1001410031_))
                                        (if (gx#stx-pair? _tl1001510033_)
                                            (let ((_e1001610038_
                                                   (gx#syntax-e
                                                    _tl1001510033_)))
                                              (let ((_hd1001710041_
                                                     (##car _e1001610038_))
                                                    (_tl1001810043_
                                                     (##cdr _e1001610038_)))
                                                (let ((_expr10046_
                                                       _hd1001710041_))
                                                  (if (gx#stx-null?
                                                       _tl1001810043_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10036_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10036_)
                        (cons _expr10046_ '()))
                  (_E1001210024_))
              (_E1001210024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1001210024_)))))
                                  (_E1001210024_)))))
                      (_E1001110048_)))))
          (let* ((_e99679977_ _stx9963_)
                 (_E99699981_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e99679977_)))
                 (_E996810005_
                  (lambda ()
                    (if (gx#stx-pair? _e99679977_)
                        (let ((_e99709985_ (gx#syntax-e _e99679977_)))
                          (let ((_hd99719988_ (##car _e99709985_))
                                (_tl99729990_ (##cdr _e99709985_)))
                            (if (gx#stx-pair? _tl99729990_)
                                (let ((_e99739993_ (gx#syntax-e _tl99729990_)))
                                  (let ((_hd99749996_ (##car _e99739993_))
                                        (_tl99759998_ (##cdr _e99739993_)))
                                    (let* ((_hd10001_ _hd99749996_)
                                           (_body10003_ _tl99759998_))
                                      (if (if (gx#stx-list? _hd10001_)
                                              (if (gx#stx-list? _body10003_)
                                                  (not (gx#stx-null?
                                                        _body10003_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form9964_
                                           (gx#stx-map1
                                            _generate9966_
                                            _hd10001_)
                                           _body10003_)
                                          (_E99699981_)))))
                                (_E99699981_))))
                        (_E99699981_)))))
            (_E996810005_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx10055_)
          (let ((_form10057_ '%#let-values))
            (gx#macro-expand-let-values__% _stx10055_ _form10057_))))
      (define gx#macro-expand-let-values
        (lambda _g12458_
          (let ((_g12457_ (length _g12458_)))
            (cond ((##fx= _g12457_ 1)
                   (apply gx#macro-expand-let-values__0 _g12458_))
                  ((##fx= _g12457_ 2)
                   (apply gx#macro-expand-let-values__% _g12458_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g12458_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx9960_)
      (gx#macro-expand-let-values__% _stx9960_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx9958_)
      (gx#macro-expand-let-values__% _stx9958_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9849_)
      (let* ((_e98509876_ _stx9849_)
             (_E98629880_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98509876_)))
             (_E98529922_
              (lambda ()
                (if (gx#stx-pair? _e98509876_)
                    (let ((_e98639884_ (gx#syntax-e _e98509876_)))
                      (let ((_hd98649887_ (##car _e98639884_))
                            (_tl98659889_ (##cdr _e98639884_)))
                        (if (gx#stx-pair? _tl98659889_)
                            (let ((_e98669892_ (gx#syntax-e _tl98659889_)))
                              (let ((_hd98679895_ (##car _e98669892_))
                                    (_tl98689897_ (##cdr _e98669892_)))
                                (let ((_test9900_ _hd98679895_))
                                  (if (gx#stx-pair? _tl98689897_)
                                      (let ((_e98699902_
                                             (gx#syntax-e _tl98689897_)))
                                        (let ((_hd98709905_
                                               (##car _e98699902_))
                                              (_tl98719907_
                                               (##cdr _e98699902_)))
                                          (let ((_K9910_ _hd98709905_))
                                            (if (gx#stx-pair? _tl98719907_)
                                                (let ((_e98729912_
                                                       (gx#syntax-e
                                                        _tl98719907_)))
                                                  (let ((_hd98739915_
                                                         (##car _e98729912_))
                                                        (_tl98749917_
                                                         (##cdr _e98729912_)))
                                                    (let ((_E9920_ _hd98739915_))
                                                      (if (gx#stx-null?
                                                           _tl98749917_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test9900_
                                                               _K9910_
                                                               _E9920_)
                                                              (_E98629880_))
                                                          (_E98629880_)))))
                                                (_E98629880_)))))
                                      (_E98629880_)))))
                            (_E98629880_))))
                    (_E98629880_))))
             (_E98519954_
              (lambda ()
                (if (gx#stx-pair? _e98509876_)
                    (let ((_e98539926_ (gx#syntax-e _e98509876_)))
                      (let ((_hd98549929_ (##car _e98539926_))
                            (_tl98559931_ (##cdr _e98539926_)))
                        (if (gx#stx-pair? _tl98559931_)
                            (let ((_e98569934_ (gx#syntax-e _tl98559931_)))
                              (let ((_hd98579937_ (##car _e98569934_))
                                    (_tl98589939_ (##cdr _e98569934_)))
                                (let ((_test9942_ _hd98579937_))
                                  (if (gx#stx-pair? _tl98589939_)
                                      (let ((_e98599944_
                                             (gx#syntax-e _tl98589939_)))
                                        (let ((_hd98609947_
                                               (##car _e98599944_))
                                              (_tl98619949_
                                               (##cdr _e98599944_)))
                                          (let ((_K9952_ _hd98609947_))
                                            (if (gx#stx-null? _tl98619949_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test9942_
                                                     _K9952_
                                                     '#!void)
                                                    (_E98529922_))
                                                (_E98529922_)))))
                                      (_E98529922_)))))
                            (_E98529922_))))
                    (_E98529922_)))))
        (_E98519954_))))
  (define gx#free-identifier=?
    (lambda (_xid9837_ _yid9838_)
      (let ((_xe9840_ (gx#resolve-identifier__0 _xid9837_))
            (_ye9841_ (gx#resolve-identifier__0 _yid9838_)))
        (if (if _xe9840_ _ye9841_ '#f)
            (let ((_$e9843_ (eq? _xe9840_ _ye9841_)))
              (if _$e9843_
                  _$e9843_
                  (if (##structure-instance-of? _xe9840_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9841_ 'gx#binding::t)
                          (eq? (##structure-ref _xe9840_ '1 gx#binding::t '#f)
                               (##structure-ref _ye9841_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e9846_ _xe9840_)) (if _$e9846_ _$e9846_ _ye9841_))
                '#f
                (gx#stx-eq? _xid9837_ _yid9838_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9821_ _yid9822_)
      (letrec ((_context9824_
                (lambda (_e9835_)
                  (if (##structure-direct-instance-of?
                       _e9835_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e9835_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9825_
                (lambda (_e9833_)
                  (if (symbol? _e9833_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9833_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e9833_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e9833_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9826_
                (lambda (_e9831_)
                  (if (symbol? _e9831_)
                      _e9831_
                      (gx#syntax-local-unwrap _e9831_)))))
        (let ((_x9828_ (_unwrap9826_ _xid9821_))
              (_y9829_ (_unwrap9826_ _yid9822_)))
          (if (gx#stx-eq? _x9828_ _y9829_)
              (if (eq? (_context9824_ _x9828_) (_context9824_ _y9829_))
                  (equal? (_marks9825_ _x9828_) (_marks9825_ _y9829_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9819_)
      (if (gx#identifier? _stx9819_) (gx#core-identifier=? _stx9819_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9817_)
      (if (gx#identifier? _stx9817_)
          (gx#core-identifier=? _stx9817_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9815_)
      (if (gx#identifier? _x9815_)
          (if (not (gx#underscore? _x9815_)) _x9815_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx9761_ _where9762_)
        (let _lp9764_ ((_rest9766_ (gx#syntax->list _stx9761_)))
          (let* ((_rest97679775_ _rest9766_)
                 (_else97699783_ (lambda () '#t))
                 (_K97719793_
                  (lambda (_rest9786_ _hd9787_)
                    (if (not (gx#identifier? _hd9787_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where9762_
                         _hd9787_)
                        (if (find (lambda (_g97889790_)
                                    (gx#bound-identifier=?
                                     _g97889790_
                                     _hd9787_))
                                  _rest9786_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where9762_
                             _hd9787_)
                            (_lp9764_ _rest9786_))))))
            (if (##pair? _rest97679775_)
                (let ((_hd97729796_ (##car _rest97679775_))
                      (_tl97739798_ (##cdr _rest97679775_)))
                  (let* ((_hd9801_ _hd97729796_) (_rest9803_ _tl97739798_))
                    (_K97719793_ _rest9803_ _hd9801_)))
                (_else97699783_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx9808_)
          (let ((_where9810_ _stx9808_))
            (gx#check-duplicate-identifiers__% _stx9808_ _where9810_))))
      (define gx#check-duplicate-identifiers
        (lambda _g12460_
          (let ((_g12459_ (length _g12460_)))
            (cond ((##fx= _g12459_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g12460_))
                  ((##fx= _g12459_ 2)
                   (apply gx#check-duplicate-identifiers__% _g12460_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g12460_))))))))
  (define gx#core-bind-values?
    (lambda (_stx9753_)
      (gx#stx-andmap
       (lambda (_x9755_)
         (let ((_$e9757_ (gx#identifier? _x9755_)))
           (if _$e9757_ _$e9757_ (gx#stx-false? _x9755_))))
       _stx9753_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx9717_ _rebind?9718_ _phi9719_ _ctx9720_)
        (gx#stx-for-each1
         (lambda (_id9722_)
           (if (gx#identifier? _id9722_)
               (gx#core-bind-runtime!__%
                _id9722_
                _rebind?9718_
                _phi9719_
                _ctx9720_)
               '#!void))
         _stx9717_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx9727_)
          (let* ((_rebind?9729_ '#f)
                 (_phi9731_ (gx#current-expander-phi))
                 (_ctx9733_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9727_
             _rebind?9729_
             _phi9731_
             _ctx9733_))))
      (define gx#core-bind-values!__1
        (lambda (_stx9735_ _rebind?9736_)
          (let* ((_phi9738_ (gx#current-expander-phi))
                 (_ctx9740_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9735_
             _rebind?9736_
             _phi9738_
             _ctx9740_))))
      (define gx#core-bind-values!__2
        (lambda (_stx9742_ _rebind?9743_ _phi9744_)
          (let ((_ctx9746_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9742_
             _rebind?9743_
             _phi9744_
             _ctx9746_))))
      (define gx#core-bind-values!
        (lambda _g12462_
          (let ((_g12461_ (length _g12462_)))
            (cond ((##fx= _g12461_ 1) (apply gx#core-bind-values!__0 _g12462_))
                  ((##fx= _g12461_ 2) (apply gx#core-bind-values!__1 _g12462_))
                  ((##fx= _g12461_ 3) (apply gx#core-bind-values!__2 _g12462_))
                  ((##fx= _g12461_ 4) (apply gx#core-bind-values!__% _g12462_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g12462_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9712_)
      (gx#stx-map1
       (lambda (_x9714_)
         (if (gx#identifier? _x9714_) (gx#core-quote-syntax__0 _x9714_) '#f))
       _stx9712_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9705_)
      (if (gx#identifier? _stx9705_)
          (let* ((_bind9707_ (gx#resolve-identifier__0 _stx9705_))
                 (_$e9709_ (not _bind9707_)))
            (if _$e9709_
                _$e9709_
                (##structure-instance-of? _bind9707_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9697_ _form9698_)
      (let ((_bind9700_ (gx#resolve-identifier__0 _id9697_)))
        (if (##structure-instance-of? _bind9700_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9697_)
            (if (not _bind9700_)
                (if (let ((_$e9702_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e9702_
                          _$e9702_
                          (gx#core-extern-symbol? (gx#stx-e _id9697_))))
                    (gx#core-quote-syntax__0 _id9697_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9698_
                     _id9697_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9698_
                 _id9697_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id9656_ _rebind?9657_ _phi9658_ _ctx9659_)
        (let* ((_key9661_ (gx#core-identifier-key _id9656_))
               (_eid9663_
                (gx#make-binding-id__% _key9661_ '#f _phi9658_ _ctx9659_))
               (_bind9665_
                (if (##structure-instance-of? _ctx9659_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9663_
                     _key9661_
                     _phi9658_
                     _ctx9659_)
                    (if (##structure-instance-of? _ctx9659_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9663_
                         _key9661_
                         _phi9658_)
                        (if (##structure-instance-of?
                             _ctx9659_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid9663_
                             _key9661_
                             _phi9658_)
                            (##structure
                             gx#runtime-binding::t
                             _eid9663_
                             _key9661_
                             _phi9658_))))))
          (gx#bind-identifier!__%
           _id9656_
           _bind9665_
           _rebind?9657_
           _phi9658_
           _ctx9659_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id9671_)
          (let* ((_rebind?9673_ '#f)
                 (_phi9675_ (gx#current-expander-phi))
                 (_ctx9677_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9671_
             _rebind?9673_
             _phi9675_
             _ctx9677_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id9679_ _rebind?9680_)
          (let* ((_phi9682_ (gx#current-expander-phi))
                 (_ctx9684_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9679_
             _rebind?9680_
             _phi9682_
             _ctx9684_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id9686_ _rebind?9687_ _phi9688_)
          (let ((_ctx9690_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9686_
             _rebind?9687_
             _phi9688_
             _ctx9690_))))
      (define gx#core-bind-runtime!
        (lambda _g12464_
          (let ((_g12463_ (length _g12464_)))
            (cond ((##fx= _g12463_ 1)
                   (apply gx#core-bind-runtime!__0 _g12464_))
                  ((##fx= _g12463_ 2)
                   (apply gx#core-bind-runtime!__1 _g12464_))
                  ((##fx= _g12463_ 3)
                   (apply gx#core-bind-runtime!__2 _g12464_))
                  ((##fx= _g12463_ 4)
                   (apply gx#core-bind-runtime!__% _g12464_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g12464_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id9611_ _eid9612_ _rebind?9613_ _phi9614_ _ctx9615_)
        (let* ((_key9617_ (gx#core-identifier-key _id9611_))
               (_bind9619_
                (if (##structure-instance-of? _ctx9615_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9612_
                     _key9617_
                     _phi9614_
                     _ctx9615_)
                    (if (##structure-instance-of? _ctx9615_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9612_
                         _key9617_
                         _phi9614_)
                        (##structure
                         gx#runtime-binding::t
                         _eid9612_
                         _key9617_
                         _phi9614_)))))
          (gx#bind-identifier!__%
           _id9611_
           _bind9619_
           _rebind?9613_
           _phi9614_
           _ctx9615_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id9625_ _eid9626_)
          (let* ((_rebind?9628_ '#f)
                 (_phi9630_ (gx#current-expander-phi))
                 (_ctx9632_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9625_
             _eid9626_
             _rebind?9628_
             _phi9630_
             _ctx9632_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id9634_ _eid9635_ _rebind?9636_)
          (let* ((_phi9638_ (gx#current-expander-phi))
                 (_ctx9640_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9634_
             _eid9635_
             _rebind?9636_
             _phi9638_
             _ctx9640_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id9642_ _eid9643_ _rebind?9644_ _phi9645_)
          (let ((_ctx9647_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9642_
             _eid9643_
             _rebind?9644_
             _phi9645_
             _ctx9647_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g12466_
          (let ((_g12465_ (length _g12466_)))
            (cond ((##fx= _g12465_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g12466_))
                  ((##fx= _g12465_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g12466_))
                  ((##fx= _g12465_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g12466_))
                  ((##fx= _g12465_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g12466_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g12466_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id9571_ _eid9572_ _rebind?9573_ _phi9574_ _ctx9575_)
        (gx#bind-identifier!__%
         _id9571_
         (##structure
          gx#extern-binding::t
          _eid9572_
          (gx#core-identifier-key _id9571_)
          _phi9574_)
         _rebind?9573_
         _phi9574_
         _ctx9575_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id9580_ _eid9581_)
          (let* ((_rebind?9583_ '#f)
                 (_phi9585_ (gx#current-expander-phi))
                 (_ctx9587_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9580_
             _eid9581_
             _rebind?9583_
             _phi9585_
             _ctx9587_))))
      (define gx#core-bind-extern!__1
        (lambda (_id9589_ _eid9590_ _rebind?9591_)
          (let* ((_phi9593_ (gx#current-expander-phi))
                 (_ctx9595_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9589_
             _eid9590_
             _rebind?9591_
             _phi9593_
             _ctx9595_))))
      (define gx#core-bind-extern!__2
        (lambda (_id9597_ _eid9598_ _rebind?9599_ _phi9600_)
          (let ((_ctx9602_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9597_
             _eid9598_
             _rebind?9599_
             _phi9600_
             _ctx9602_))))
      (define gx#core-bind-extern!
        (lambda _g12468_
          (let ((_g12467_ (length _g12468_)))
            (cond ((##fx= _g12467_ 2) (apply gx#core-bind-extern!__0 _g12468_))
                  ((##fx= _g12467_ 3) (apply gx#core-bind-extern!__1 _g12468_))
                  ((##fx= _g12467_ 4) (apply gx#core-bind-extern!__2 _g12468_))
                  ((##fx= _g12467_ 5) (apply gx#core-bind-extern!__% _g12468_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g12468_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id9525_ _e9526_ _rebind?9527_ _phi9528_ _ctx9529_)
        (gx#bind-identifier!__%
         _id9525_
         (let ((_key9534_ (gx#core-identifier-key _id9525_))
               (_e9535_ (if (let ((_$e9531_
                                   (##structure-instance-of?
                                    _e9526_
                                    'gx#expander::t)))
                              (if _$e9531_
                                  _$e9531_
                                  (##structure-instance-of?
                                   _e9526_
                                   'gx#expander-context::t)))
                            _e9526_
                            (##structure
                             gx#user-expander::t
                             _e9526_
                             _ctx9529_
                             _phi9528_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key9534_ '#t _phi9528_ _ctx9529_)
            _key9534_
            _phi9528_
            _e9535_))
         _rebind?9527_
         _phi9528_
         _ctx9529_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id9540_ _e9541_)
          (let* ((_rebind?9543_ '#f)
                 (_phi9545_ (gx#current-expander-phi))
                 (_ctx9547_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9540_
             _e9541_
             _rebind?9543_
             _phi9545_
             _ctx9547_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id9549_ _e9550_ _rebind?9551_)
          (let* ((_phi9553_ (gx#current-expander-phi))
                 (_ctx9555_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9549_
             _e9550_
             _rebind?9551_
             _phi9553_
             _ctx9555_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id9557_ _e9558_ _rebind?9559_ _phi9560_)
          (let ((_ctx9562_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9557_
             _e9558_
             _rebind?9559_
             _phi9560_
             _ctx9562_))))
      (define gx#core-bind-syntax!
        (lambda _g12470_
          (let ((_g12469_ (length _g12470_)))
            (cond ((##fx= _g12469_ 2) (apply gx#core-bind-syntax!__0 _g12470_))
                  ((##fx= _g12469_ 3) (apply gx#core-bind-syntax!__1 _g12470_))
                  ((##fx= _g12469_ 4) (apply gx#core-bind-syntax!__2 _g12470_))
                  ((##fx= _g12469_ 5) (apply gx#core-bind-syntax!__% _g12470_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g12470_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id9508_ _e9509_ _rebind?9510_)
        (gx#core-bind-syntax!__%
         _id9508_
         _e9509_
         _rebind?9510_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id9515_ _e9516_)
          (let ((_rebind?9518_ '#f))
            (gx#core-bind-root-syntax!__% _id9515_ _e9516_ _rebind?9518_))))
      (define gx#core-bind-root-syntax!
        (lambda _g12472_
          (let ((_g12471_ (length _g12472_)))
            (cond ((##fx= _g12471_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g12472_))
                  ((##fx= _g12471_ 3)
                   (apply gx#core-bind-root-syntax!__% _g12472_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g12472_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id9466_ _alias-id9467_ _rebind?9468_ _phi9469_ _ctx9470_)
        (gx#bind-identifier!__%
         _id9466_
         (let ((_key9472_ (gx#core-identifier-key _id9466_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key9472_ '#t _phi9469_ _ctx9470_)
            _key9472_
            _phi9469_
            _alias-id9467_))
         _rebind?9468_
         _phi9469_
         _ctx9470_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id9477_ _alias-id9478_)
          (let* ((_rebind?9480_ '#f)
                 (_phi9482_ (gx#current-expander-phi))
                 (_ctx9484_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9477_
             _alias-id9478_
             _rebind?9480_
             _phi9482_
             _ctx9484_))))
      (define gx#core-bind-alias!__1
        (lambda (_id9486_ _alias-id9487_ _rebind?9488_)
          (let* ((_phi9490_ (gx#current-expander-phi))
                 (_ctx9492_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9486_
             _alias-id9487_
             _rebind?9488_
             _phi9490_
             _ctx9492_))))
      (define gx#core-bind-alias!__2
        (lambda (_id9494_ _alias-id9495_ _rebind?9496_ _phi9497_)
          (let ((_ctx9499_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9494_
             _alias-id9495_
             _rebind?9496_
             _phi9497_
             _ctx9499_))))
      (define gx#core-bind-alias!
        (lambda _g12474_
          (let ((_g12473_ (length _g12474_)))
            (cond ((##fx= _g12473_ 2) (apply gx#core-bind-alias!__0 _g12474_))
                  ((##fx= _g12473_ 3) (apply gx#core-bind-alias!__1 _g12474_))
                  ((##fx= _g12473_ 4) (apply gx#core-bind-alias!__2 _g12474_))
                  ((##fx= _g12473_ 5) (apply gx#core-bind-alias!__% _g12474_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g12474_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key9423_ _syntax?9424_ _phi9425_ _ctx9426_)
        (if (uninterned-symbol? _key9423_)
            (gensym 'L)
            (if (pair? _key9423_)
                (gensym (car _key9423_))
                (if (##structure-instance-of? _ctx9426_ 'gx#top-context::t)
                    (let ((_ns9428_ (gx#core-context-namespace__% _ctx9426_)))
                      (if (if (fxzero? _phi9425_) (not _syntax?9424_) '#f)
                          (if _ns9428_
                              (make-symbol _ns9428_ '"#" _key9423_)
                              _key9423_)
                          (if _syntax?9424_
                              (make-symbol
                               (let ((_$e9430_ _ns9428_))
                                 (if _$e9430_ _$e9430_ '""))
                               '"[:"
                               (number->string _phi9425_)
                               '":]#"
                               _key9423_)
                              (make-symbol
                               (let ((_$e9433_ _ns9428_))
                                 (if _$e9433_ _$e9433_ '""))
                               '"["
                               (number->string _phi9425_)
                               '"]#"
                               _key9423_))))
                    (gensym _key9423_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key9439_)
          (let* ((_syntax?9441_ '#f)
                 (_phi9443_ (gx#current-expander-phi))
                 (_ctx9445_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9439_
             _syntax?9441_
             _phi9443_
             _ctx9445_))))
      (define gx#make-binding-id__1
        (lambda (_key9447_ _syntax?9448_)
          (let* ((_phi9450_ (gx#current-expander-phi))
                 (_ctx9452_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9447_
             _syntax?9448_
             _phi9450_
             _ctx9452_))))
      (define gx#make-binding-id__2
        (lambda (_key9454_ _syntax?9455_ _phi9456_)
          (let ((_ctx9458_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9454_
             _syntax?9455_
             _phi9456_
             _ctx9458_))))
      (define gx#make-binding-id
        (lambda _g12476_
          (let ((_g12475_ (length _g12476_)))
            (cond ((##fx= _g12475_ 1) (apply gx#make-binding-id__0 _g12476_))
                  ((##fx= _g12475_ 2) (apply gx#make-binding-id__1 _g12476_))
                  ((##fx= _g12475_ 3) (apply gx#make-binding-id__2 _g12476_))
                  ((##fx= _g12475_ 4) (apply gx#make-binding-id__% _g12476_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g12476_)))))))))
