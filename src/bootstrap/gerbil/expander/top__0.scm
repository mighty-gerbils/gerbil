(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx12420_)
      (letrec ((_expand-special12422_
                (lambda (_hd12424_ _K12425_ _rest12426_ _r12427_)
                  (_K12425_
                   _rest12426_
                   (cons (gx#core-expand-top _hd12424_) _r12427_)))))
        (gx#core-expand-block__0 _stx12420_ _expand-special12422_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12173_)
      (letrec ((_expand-special12175_
                (lambda (_hd12295_ _K12296_ _rest12297_ _r12298_)
                  (let* ((_K12302_
                          (lambda (_e12300_)
                            (_K12296_ _rest12297_ (cons _e12300_ _r12298_))))
                         (_e1230312332_ _hd12295_)
                         (_E1232712336_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1230312332_)))
                         (_E1232312348_
                          (lambda ()
                            (if (gx#stx-pair? _e1230312332_)
                                (let ((_e1232812340_
                                       (gx#syntax-e _e1230312332_)))
                                  (let ((_hd1232912343_ (##car _e1232812340_))
                                        (_tl1233012345_ (##cdr _e1232812340_)))
                                    (if (if (gx#identifier? _hd1232912343_)
                                            (gx#core-identifier=?
                                             _hd1232912343_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K12302_
                                             (gx#core-expand-define-runtime%
                                              _hd12295_))
                                            (_E1232712336_))
                                        (_E1232712336_))))
                                (_E1232712336_))))
                         (_E1231912360_
                          (lambda ()
                            (if (gx#stx-pair? _e1230312332_)
                                (let ((_e1232412352_
                                       (gx#syntax-e _e1230312332_)))
                                  (let ((_hd1232512355_ (##car _e1232412352_))
                                        (_tl1232612357_ (##cdr _e1232412352_)))
                                    (if (if (gx#identifier? _hd1232512355_)
                                            (gx#core-identifier=?
                                             _hd1232512355_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K12302_
                                             (gx#core-expand-define-alias%
                                              _hd12295_))
                                            (_E1232312348_))
                                        (_E1232312348_))))
                                (_E1232312348_))))
                         (_E1230912372_
                          (lambda ()
                            (if (gx#stx-pair? _e1230312332_)
                                (let ((_e1232012364_
                                       (gx#syntax-e _e1230312332_)))
                                  (let ((_hd1232112367_ (##car _e1232012364_))
                                        (_tl1232212369_ (##cdr _e1232012364_)))
                                    (if (if (gx#identifier? _hd1232112367_)
                                            (gx#core-identifier=?
                                             _hd1232112367_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12302_
                                             (gx#core-expand-define-syntax%
                                              _hd12295_))
                                            (_E1231912360_))
                                        (_E1231912360_))))
                                (_E1231912360_))))
                         (_E1230512404_
                          (lambda ()
                            (if (gx#stx-pair? _e1230312332_)
                                (let ((_e1231012376_
                                       (gx#syntax-e _e1230312332_)))
                                  (let ((_hd1231112379_ (##car _e1231012376_))
                                        (_tl1231212381_ (##cdr _e1231012376_)))
                                    (if (if (gx#identifier? _hd1231112379_)
                                            (gx#core-identifier=?
                                             _hd1231112379_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1231212381_)
                                            (let ((_e1231312384_
                                                   (gx#syntax-e
                                                    _tl1231212381_)))
                                              (let ((_hd1231412387_
                                                     (##car _e1231312384_))
                                                    (_tl1231512389_
                                                     (##cdr _e1231312384_)))
                                                (let ((_hd-bind12392_
                                                       _hd1231412387_))
                                                  (if (gx#stx-pair?
                                                       _tl1231512389_)
                                                      (let ((_e1231612394_
                                                             (gx#syntax-e
                                                              _tl1231512389_)))
                                                        (let ((_hd1231712397_
                                                               (##car _e1231612394_))
                                                              (_tl1231812399_
                                                               (##cdr _e1231612394_)))
                                                          (let ((_expr12402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1231712397_))
                    (if (gx#stx-null? _tl1231812399_)
                        (if (gx#core-bind-values? _hd-bind12392_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12392_)
                              (_K12302_ _hd12295_))
                            (_E1230912372_))
                        (_E1230912372_)))))
              (_E1230912372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1230912372_))
                                        (_E1230912372_))))
                                (_E1230912372_))))
                         (_E1230412416_
                          (lambda ()
                            (if (gx#stx-pair? _e1230312332_)
                                (let ((_e1230612408_
                                       (gx#syntax-e _e1230312332_)))
                                  (let ((_hd1230712411_ (##car _e1230612408_))
                                        (_tl1230812413_ (##cdr _e1230612408_)))
                                    (if (if (gx#identifier? _hd1230712411_)
                                            (gx#core-identifier=?
                                             _hd1230712411_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12302_
                                             (gx#core-expand-begin-syntax%
                                              _hd12295_))
                                            (_E1230512404_))
                                        (_E1230512404_))))
                                (_E1230512404_)))))
                    (_E1230412416_))))
               (_eval-body12176_
                (lambda (_rbody12184_)
                  (let _lp12186_ ((_rest12188_ _rbody12184_)
                                  (_body12189_ '())
                                  (_ebody12190_ '()))
                    (let* ((_rest1219112199_ _rest12188_)
                           (_else1219312207_
                            (lambda ()
                              (values _body12189_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12190_)
                                        (gx#stx-source _stx12173_))))))
                           (_K1219512283_
                            (lambda (_rest12210_ _hd12211_)
                              (let* ((_e1221212229_ _hd12211_)
                                     (_E1222412233_
                                      (lambda ()
                                        (_lp12186_
                                         _rest12210_
                                         (cons _hd12211_ _body12189_)
                                         (cons _hd12211_ _ebody12190_))))
                                     (_E1221412245_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1221212229_)
                                            (let ((_e1222512237_
                                                   (gx#syntax-e
                                                    _e1221212229_)))
                                              (let ((_hd1222612240_
                                                     (##car _e1222512237_))
                                                    (_tl1222712242_
                                                     (##cdr _e1222512237_)))
                                                (if (if (gx#identifier?
                                                         _hd1222612240_)
                                                        (gx#core-identifier=?
                                                         _hd1222612240_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12186_
                                                         _rest12210_
                                                         (cons _hd12211_
                                                               _body12189_)
                                                         _ebody12190_)
                                                        (_E1222412233_))
                                                    (_E1222412233_))))
                                            (_E1222412233_))))
                                     (_E1221312279_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1221212229_)
                                            (let ((_e1221512249_
                                                   (gx#syntax-e
                                                    _e1221212229_)))
                                              (let ((_hd1221612252_
                                                     (##car _e1221512249_))
                                                    (_tl1221712254_
                                                     (##cdr _e1221512249_)))
                                                (if (if (gx#identifier?
                                                         _hd1221612252_)
                                                        (gx#core-identifier=?
                                                         _hd1221612252_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1221712254_)
                                                        (let ((_e1221812257_
                                                               (gx#syntax-e
                                                                _tl1221712254_)))
                                                          (let ((_hd1221912260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1221812257_))
                        (_tl1222012262_ (##cdr _e1221812257_)))
                    (let ((_hd-bind12265_ _hd1221912260_))
                      (if (gx#stx-pair? _tl1222012262_)
                          (let ((_e1222112267_ (gx#syntax-e _tl1222012262_)))
                            (let ((_hd1222212270_ (##car _e1222112267_))
                                  (_tl1222312272_ (##cdr _e1222112267_)))
                              (let ((_expr12275_ _hd1222212270_))
                                (if (gx#stx-null? _tl1222312272_)
                                    (if '#t
                                        (let ((_ehd12277_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12265_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12275_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12211_))))
                                          (_lp12186_
                                           _rest12210_
                                           (cons _ehd12277_ _body12189_)
                                           (cons _ehd12277_ _ebody12190_)))
                                        (_E1221412245_))
                                    (_E1221412245_)))))
                          (_E1221412245_)))))
                (_E1221412245_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1221412245_))))
                                            (_E1221412245_)))))
                                (_E1221312279_)))))
                      (if (##pair? _rest1219112199_)
                          (let ((_hd1219612286_ (##car _rest1219112199_))
                                (_tl1219712288_ (##cdr _rest1219112199_)))
                            (let* ((_hd12291_ _hd1219612286_)
                                   (_rest12293_ _tl1219712288_))
                              (_K1219512283_ _rest12293_ _hd12291_)))
                          (_else1219312207_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12179_
                   (gx#core-expand-block__1
                    _stx12173_
                    _expand-special12175_
                    '#f))
                  (_g12443_ (_eval-body12176_ _rbody12179_)))
             (begin
               (let ((_g12444_
                      (if (##values? _g12443_) (##vector-length _g12443_) 1)))
                 (if (not (##fx= _g12444_ 2))
                     (error "Context expects 2 values" _g12444_)))
               (let ((_expanded-body12181_ (##vector-ref _g12443_ 0))
                     (_value12182_ (##vector-ref _g12443_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12181_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12182_ '())))
                  (gx#stx-source _stx12173_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12143_)
      (let* ((_e1214412151_ _stx12143_)
             (_E1214612155_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1214412151_)))
             (_E1214512169_
              (lambda ()
                (if (gx#stx-pair? _e1214412151_)
                    (let ((_e1214712159_ (gx#syntax-e _e1214412151_)))
                      (let ((_hd1214812162_ (##car _e1214712159_))
                            (_tl1214912164_ (##cdr _e1214712159_)))
                        (let ((_body12167_ _tl1214912164_))
                          (if (gx#stx-list? _body12167_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12167_)
                               (gx#stx-source _stx12143_))
                              (_E1214612155_)))))
                    (_E1214612155_)))))
        (_E1214512169_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12141_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12141_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12087_)
      (let* ((_e1208812101_ _stx12087_)
             (_E1209012105_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1208812101_)))
             (_E1208912137_
              (lambda ()
                (if (gx#stx-pair? _e1208812101_)
                    (let ((_e1209112109_ (gx#syntax-e _e1208812101_)))
                      (let ((_hd1209212112_ (##car _e1209112109_))
                            (_tl1209312114_ (##cdr _e1209112109_)))
                        (if (gx#stx-pair? _tl1209312114_)
                            (let ((_e1209412117_ (gx#syntax-e _tl1209312114_)))
                              (let ((_hd1209512120_ (##car _e1209412117_))
                                    (_tl1209612122_ (##cdr _e1209412117_)))
                                (let ((_ann12125_ _hd1209512120_))
                                  (if (gx#stx-pair? _tl1209612122_)
                                      (let ((_e1209712127_
                                             (gx#syntax-e _tl1209612122_)))
                                        (let ((_hd1209812130_
                                               (##car _e1209712127_))
                                              (_tl1209912132_
                                               (##cdr _e1209712127_)))
                                          (let ((_expr12135_ _hd1209812130_))
                                            (if (gx#stx-null? _tl1209912132_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12135_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12087_))
                                                    (_E1209012105_))
                                                (_E1209012105_)))))
                                      (_E1209012105_)))))
                            (_E1209012105_))))
                    (_E1209012105_)))))
        (_E1208912137_))))
  (define gx#core-expand-local-block
    (lambda (_stx11811_ _body11812_)
      (letrec ((_expand-special11814_
                (lambda (_hd12082_ _K12083_ _rest12084_ _r12085_)
                  (_K12083_
                   '()
                   (cons (_expand-internal11815_ _hd12082_ _rest12084_)
                         _r12085_))))
               (_expand-internal11815_
                (lambda (_hd12078_ _rest12079_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11817_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12078_ _rest12079_))
                        (gx#stx-source _stx11811_))
                       _expand-internal-special11816_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12437 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj12437)
                       __obj12437)))))
               (_expand-internal-special11816_
                (lambda (_hd11973_ _K11974_ _rest11975_ _r11976_)
                  (let* ((_e1197712002_ _hd11973_)
                         (_E1199712006_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1197712002_)))
                         (_E1199312018_
                          (lambda ()
                            (if (gx#stx-pair? _e1197712002_)
                                (let ((_e1199812010_
                                       (gx#syntax-e _e1197712002_)))
                                  (let ((_hd1199912013_ (##car _e1199812010_))
                                        (_tl1200012015_ (##cdr _e1199812010_)))
                                    (if (if (gx#identifier? _hd1199912013_)
                                            (gx#core-identifier=?
                                             _hd1199912013_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K11974_
                                             _rest11975_
                                             (cons (gx#core-expand-declare%
                                                    _hd11973_)
                                                   _r11976_))
                                            (_E1199712006_))
                                        (_E1199712006_))))
                                (_E1199712006_))))
                         (_E1198912030_
                          (lambda ()
                            (if (gx#stx-pair? _e1197712002_)
                                (let ((_e1199412022_
                                       (gx#syntax-e _e1197712002_)))
                                  (let ((_hd1199512025_ (##car _e1199412022_))
                                        (_tl1199612027_ (##cdr _e1199412022_)))
                                    (if (if (gx#identifier? _hd1199512025_)
                                            (gx#core-identifier=?
                                             _hd1199512025_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd11973_)
                                              (_K11974_ _rest11975_ _r11976_))
                                            (_E1199312018_))
                                        (_E1199312018_))))
                                (_E1199312018_))))
                         (_E1197912042_
                          (lambda ()
                            (if (gx#stx-pair? _e1197712002_)
                                (let ((_e1199012034_
                                       (gx#syntax-e _e1197712002_)))
                                  (let ((_hd1199112037_ (##car _e1199012034_))
                                        (_tl1199212039_ (##cdr _e1199012034_)))
                                    (if (if (gx#identifier? _hd1199112037_)
                                            (gx#core-identifier=?
                                             _hd1199112037_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd11973_)
                                              (_K11974_ _rest11975_ _r11976_))
                                            (_E1198912030_))
                                        (_E1198912030_))))
                                (_E1198912030_))))
                         (_E1197812074_
                          (lambda ()
                            (if (gx#stx-pair? _e1197712002_)
                                (let ((_e1198012046_
                                       (gx#syntax-e _e1197712002_)))
                                  (let ((_hd1198112049_ (##car _e1198012046_))
                                        (_tl1198212051_ (##cdr _e1198012046_)))
                                    (if (if (gx#identifier? _hd1198112049_)
                                            (gx#core-identifier=?
                                             _hd1198112049_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1198212051_)
                                            (let ((_e1198312054_
                                                   (gx#syntax-e
                                                    _tl1198212051_)))
                                              (let ((_hd1198412057_
                                                     (##car _e1198312054_))
                                                    (_tl1198512059_
                                                     (##cdr _e1198312054_)))
                                                (let ((_hd-bind12062_
                                                       _hd1198412057_))
                                                  (if (gx#stx-pair?
                                                       _tl1198512059_)
                                                      (let ((_e1198612064_
                                                             (gx#syntax-e
                                                              _tl1198512059_)))
                                                        (let ((_hd1198712067_
                                                               (##car _e1198612064_))
                                                              (_tl1198812069_
                                                               (##cdr _e1198612064_)))
                                                          (let ((_expr12072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1198712067_))
                    (if (gx#stx-null? _tl1198812069_)
                        (if (gx#core-bind-values? _hd-bind12062_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12062_)
                              (_K11974_ _rest11975_ (cons _hd11973_ _r11976_)))
                            (_E1197912042_))
                        (_E1197912042_)))))
              (_E1197912042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1197912042_))
                                        (_E1197912042_))))
                                (_E1197912042_)))))
                    (_E1197812074_))))
               (_wrap-internal11817_
                (lambda (_rbody11819_)
                  (let _lp11821_ ((_rest11823_ _rbody11819_)
                                  (_decls11824_ '())
                                  (_bind11825_ '())
                                  (_body11826_ '()))
                    (let* ((_e1182711834_ _rest11823_)
                           (_E1182911883_
                            (lambda ()
                              (let* ((_body11878_
                                      (let* ((_body1183711847_ _body11826_)
                                             (_else1184011855_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11826_)
                                                 (gx#stx-source _stx11811_)))))
                                        (let ((_K1184511875_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11811_)))
                                              (_K1184211861_
                                               (lambda (_expr11859_)
                                                 _expr11859_)))
                                          (let ((_try-match1183911871_
                                                 (lambda ()
                                                   (if (##pair? _body1183711847_)
                                                       (let ((_tl1184411866_
                                                              (##cdr _body1183711847_))
                                                             (_hd1184311864_
                                                              (##car _body1183711847_)))
                                                         (if (##null? _tl1184411866_)
                                                             (let ((_expr11869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1184311864_))
                       (_K1184211861_ _expr11869_))
                     (_else1184011855_)))
               (_else1184011855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1183711847_)
                                                (_K1184511875_)
                                                (_try-match1183911871_))))))
                                     (_body11880_
                                      (if (null? _bind11825_)
                                          _body11878_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11825_
                                                       (cons _body11878_ '())))
                                           (gx#stx-source _stx11811_)))))
                                (if (null? _decls11824_)
                                    _body11880_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11824_
                                                 (cons _body11880_ '())))
                                     (gx#stx-source _stx11811_))))))
                           (_E1182811969_
                            (lambda ()
                              (if (gx#stx-pair? _e1182711834_)
                                  (let ((_e1183011887_
                                         (gx#syntax-e _e1182711834_)))
                                    (let ((_hd1183111890_
                                           (##car _e1183011887_))
                                          (_tl1183211892_
                                           (##cdr _e1183011887_)))
                                      (let* ((_hd11895_ _hd1183111890_)
                                             (_rest11897_ _tl1183211892_))
                                        (if '#t
                                            (let* ((_e1189811915_ _hd11895_)
                                                   (_E1191011919_
                                                    (lambda ()
                                                      (if (null? _bind11825_)
                                                          (_lp11821_
                                                           _rest11897_
                                                           _decls11824_
                                                           _bind11825_
                                                           (cons _hd11895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11826_))
                  (_lp11821_
                   _rest11897_
                   _decls11824_
                   (cons (cons '#f (cons _hd11895_ '())) _bind11825_)
                   _body11826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1190011933_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1189811915_)
                                                          (let ((_e1191111923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1189811915_)))
                    (let ((_hd1191211926_ (##car _e1191111923_))
                          (_tl1191311928_ (##cdr _e1191111923_)))
                      (if (if (gx#identifier? _hd1191211926_)
                              (gx#core-identifier=? _hd1191211926_ '%#declare)
                              '#f)
                          (let ((_xdecls11931_ _tl1191311928_))
                            (if '#t
                                (_lp11821_
                                 _rest11897_
                                 (gx#stx-foldr cons _decls11824_ _xdecls11931_)
                                 _bind11825_
                                 _body11826_)
                                (_E1191011919_)))
                          (_E1191011919_))))
                  (_E1191011919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1189911965_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1189811915_)
                                                          (let ((_e1190111937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1189811915_)))
                    (let ((_hd1190211940_ (##car _e1190111937_))
                          (_tl1190311942_ (##cdr _e1190111937_)))
                      (if (if (gx#identifier? _hd1190211940_)
                              (gx#core-identifier=?
                               _hd1190211940_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1190311942_)
                              (let ((_e1190411945_
                                     (gx#syntax-e _tl1190311942_)))
                                (let ((_hd1190511948_ (##car _e1190411945_))
                                      (_tl1190611950_ (##cdr _e1190411945_)))
                                  (let ((_hd-bind11953_ _hd1190511948_))
                                    (if (gx#stx-pair? _tl1190611950_)
                                        (let ((_e1190711955_
                                               (gx#syntax-e _tl1190611950_)))
                                          (let ((_hd1190811958_
                                                 (##car _e1190711955_))
                                                (_tl1190911960_
                                                 (##cdr _e1190711955_)))
                                            (let ((_expr11963_ _hd1190811958_))
                                              (if (gx#stx-null? _tl1190911960_)
                                                  (if '#t
                                                      (_lp11821_
                                                       _rest11897_
                                                       _decls11824_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind11953_)
                           (cons (gx#core-expand-expression _expr11963_) '()))
                     _bind11825_)
               _body11826_)
              (_E1190011933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1190011933_)))))
                                        (_E1190011933_)))))
                              (_E1190011933_))
                          (_E1190011933_))))
                  (_E1190011933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1189911965_))
                                            (_E1182911883_)))))
                                  (_E1182911883_)))))
                      (_E1182811969_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11812_)
          (gx#stx-source _stx11811_))
         _expand-special11814_))))
  (define gx#core-expand-declare%
    (lambda (_stx11749_)
      (let* ((_e1175011757_ _stx11749_)
             (_E1175211761_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1175011757_)))
             (_E1175111807_
              (lambda ()
                (if (gx#stx-pair? _e1175011757_)
                    (let ((_e1175311765_ (gx#syntax-e _e1175011757_)))
                      (let ((_hd1175411768_ (##car _e1175311765_))
                            (_tl1175511770_ (##cdr _e1175311765_)))
                        (let ((_body11773_ _tl1175511770_))
                          (if (gx#stx-list? _body11773_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11775_)
                                   (let* ((_e1177611783_ _decl11775_)
                                          (_E1177811787_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1177611783_)))
                                          (_E1177711803_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1177611783_)
                                                 (let ((_e1177911791_
                                                        (gx#syntax-e
                                                         _e1177611783_)))
                                                   (let ((_hd1178011794_
                                                          (##car _e1177911791_))
                                                         (_tl1178111796_
                                                          (##cdr _e1177911791_)))
                                                     (let* ((_head11799_
                                                             _hd1178011794_)
                                                            (_args11801_
                                                             _tl1178111796_))
                                                       (if (gx#stx-list?
                                                            _args11801_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11775_)
                                                           (_E1177811787_)))))
                                                 (_E1177811787_)))))
                                     (_E1177711803_)))
                                 _body11773_))
                               (gx#stx-source _stx11749_))
                              (_E1175211761_)))))
                    (_E1175211761_)))))
        (_E1175111807_))))
  (define gx#core-expand-extern%
    (lambda (_stx11633_)
      (let* ((_e1163411641_ _stx11633_)
             (_E1163611645_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1163411641_)))
             (_E1163511745_
              (lambda ()
                (if (gx#stx-pair? _e1163411641_)
                    (let ((_e1163711649_ (gx#syntax-e _e1163411641_)))
                      (let ((_hd1163811652_ (##car _e1163711649_))
                            (_tl1163911654_ (##cdr _e1163711649_)))
                        (let ((_body11657_ _tl1163911654_))
                          (if (gx#stx-list? _body11657_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind11659_)
                                   (let* ((_e1166011670_ _bind11659_)
                                          (_E1166211674_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1166011670_)))
                                          (_E1166111698_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1166011670_)
                                                 (let ((_e1166311678_
                                                        (gx#syntax-e
                                                         _e1166011670_)))
                                                   (let ((_hd1166411681_
                                                          (##car _e1166311678_))
                                                         (_tl1166511683_
                                                          (##cdr _e1166311678_)))
                                                     (let ((_id11686_
                                                            _hd1166411681_))
                                                       (if (gx#stx-pair?
                                                            _tl1166511683_)
                                                           (let ((_e1166611688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1166511683_)))
                     (let ((_hd1166711691_ (##car _e1166611688_))
                           (_tl1166811693_ (##cdr _e1166611688_)))
                       (let ((_eid11696_ _hd1166711691_))
                         (if (gx#stx-null? _tl1166811693_)
                             (if (if (gx#identifier? _id11686_)
                                     (gx#identifier? _eid11696_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id11686_
                                  (gx#stx-e _eid11696_))
                                 (_E1166211674_))
                             (_E1166211674_)))))
                   (_E1166211674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1166211674_)))))
                                     (_E1166111698_)))
                                 _body11657_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind11702_)
                                     (let* ((_e1170311713_ _bind11702_)
                                            (_E1170511717_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1170311713_)))
                                            (_E1170411741_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1170311713_)
                                                   (let ((_e1170611721_
                                                          (gx#syntax-e
                                                           _e1170311713_)))
                                                     (let ((_hd1170711724_
                                                            (##car _e1170611721_))
                                                           (_tl1170811726_
                                                            (##cdr _e1170611721_)))
                                                       (let ((_id11729_
                                                              _hd1170711724_))
                                                         (if (gx#stx-pair?
                                                              _tl1170811726_)
                                                             (let ((_e1170911731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1170811726_)))
                       (let ((_hd1171011734_ (##car _e1170911731_))
                             (_tl1171111736_ (##cdr _e1170911731_)))
                         (let ((_eid11739_ _hd1171011734_))
                           (if (gx#stx-null? _tl1171111736_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id11729_)
                                         (cons (gx#stx-e _eid11739_) '()))
                                   (_E1170511717_))
                               (_E1170511717_)))))
                     (_E1170511717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1170511717_)))))
                                       (_E1170411741_)))
                                   _body11657_))
                                 (gx#stx-source _stx11633_)))
                              (_E1163611645_)))))
                    (_E1163611645_)))))
        (_E1163511745_))))
  (define gx#core-expand-define-values%
    (lambda (_stx11579_)
      (let* ((_e1158011593_ _stx11579_)
             (_E1158211597_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1158011593_)))
             (_E1158111629_
              (lambda ()
                (if (gx#stx-pair? _e1158011593_)
                    (let ((_e1158311601_ (gx#syntax-e _e1158011593_)))
                      (let ((_hd1158411604_ (##car _e1158311601_))
                            (_tl1158511606_ (##cdr _e1158311601_)))
                        (if (gx#stx-pair? _tl1158511606_)
                            (let ((_e1158611609_ (gx#syntax-e _tl1158511606_)))
                              (let ((_hd1158711612_ (##car _e1158611609_))
                                    (_tl1158811614_ (##cdr _e1158611609_)))
                                (let ((_hd11617_ _hd1158711612_))
                                  (if (gx#stx-pair? _tl1158811614_)
                                      (let ((_e1158911619_
                                             (gx#syntax-e _tl1158811614_)))
                                        (let ((_hd1159011622_
                                               (##car _e1158911619_))
                                              (_tl1159111624_
                                               (##cdr _e1158911619_)))
                                          (let ((_expr11627_ _hd1159011622_))
                                            (if (gx#stx-null? _tl1159111624_)
                                                (if (gx#core-bind-values?
                                                     _hd11617_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11617_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11617_)
                           (cons (gx#core-expand-expression _expr11627_) '())))
               (gx#stx-source _stx11579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1158211597_))
                                                (_E1158211597_)))))
                                      (_E1158211597_)))))
                            (_E1158211597_))))
                    (_E1158211597_)))))
        (_E1158111629_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11525_)
      (let* ((_e1152611539_ _stx11525_)
             (_E1152811543_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1152611539_)))
             (_E1152711575_
              (lambda ()
                (if (gx#stx-pair? _e1152611539_)
                    (let ((_e1152911547_ (gx#syntax-e _e1152611539_)))
                      (let ((_hd1153011550_ (##car _e1152911547_))
                            (_tl1153111552_ (##cdr _e1152911547_)))
                        (if (gx#stx-pair? _tl1153111552_)
                            (let ((_e1153211555_ (gx#syntax-e _tl1153111552_)))
                              (let ((_hd1153311558_ (##car _e1153211555_))
                                    (_tl1153411560_ (##cdr _e1153211555_)))
                                (let ((_id11563_ _hd1153311558_))
                                  (if (gx#stx-pair? _tl1153411560_)
                                      (let ((_e1153511565_
                                             (gx#syntax-e _tl1153411560_)))
                                        (let ((_hd1153611568_
                                               (##car _e1153511565_))
                                              (_tl1153711570_
                                               (##cdr _e1153511565_)))
                                          (let ((_binding-id11573_
                                                 _hd1153611568_))
                                            (if (gx#stx-null? _tl1153711570_)
                                                (if (if (gx#identifier?
                                                         _id11563_)
                                                        (gx#identifier?
                                                         _binding-id11573_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11563_
                                                       (gx#stx-e
                                                        _binding-id11573_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11563_)
                           (cons (gx#core-quote-syntax__0 _binding-id11573_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1152811543_))
                                                (_E1152811543_)))))
                                      (_E1152811543_)))))
                            (_E1152811543_))))
                    (_E1152811543_)))))
        (_E1152711575_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11468_)
      (let* ((_e1146911482_ _stx11468_)
             (_E1147111486_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1146911482_)))
             (_E1147011521_
              (lambda ()
                (if (gx#stx-pair? _e1146911482_)
                    (let ((_e1147211490_ (gx#syntax-e _e1146911482_)))
                      (let ((_hd1147311493_ (##car _e1147211490_))
                            (_tl1147411495_ (##cdr _e1147211490_)))
                        (if (gx#stx-pair? _tl1147411495_)
                            (let ((_e1147511498_ (gx#syntax-e _tl1147411495_)))
                              (let ((_hd1147611501_ (##car _e1147511498_))
                                    (_tl1147711503_ (##cdr _e1147511498_)))
                                (let ((_id11506_ _hd1147611501_))
                                  (if (gx#stx-pair? _tl1147711503_)
                                      (let ((_e1147811508_
                                             (gx#syntax-e _tl1147711503_)))
                                        (let ((_hd1147911511_
                                               (##car _e1147811508_))
                                              (_tl1148011513_
                                               (##cdr _e1147811508_)))
                                          (let ((_expr11516_ _hd1147911511_))
                                            (if (gx#stx-null? _tl1148011513_)
                                                (if (gx#identifier? _id11506_)
                                                    (let ((_g12445_
                                                           (gx#core-expand-expression+1
                                                            _expr11516_)))
                                                      (begin
                                                        (let ((_g12446_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12445_)
                           (##vector-length _g12445_)
                           1)))
                  (if (not (##fx= _g12446_ 2))
                      (error "Context expects 2 values" _g12446_)))
                (let ((_e-stx11518_ (##vector-ref _g12445_ 0))
                      (_e11519_ (##vector-ref _g12445_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11506_ _e11519_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11506_)
                                 (cons _e-stx11518_ '())))
                     (gx#stx-source _stx11468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1147111486_))
                                                (_E1147111486_)))))
                                      (_E1147111486_)))))
                            (_E1147111486_))))
                    (_E1147111486_)))))
        (_E1147011521_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11412_)
      (let* ((_e1141311426_ _stx11412_)
             (_E1141511430_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1141311426_)))
             (_E1141411464_
              (lambda ()
                (if (gx#stx-pair? _e1141311426_)
                    (let ((_e1141611434_ (gx#syntax-e _e1141311426_)))
                      (let ((_hd1141711437_ (##car _e1141611434_))
                            (_tl1141811439_ (##cdr _e1141611434_)))
                        (if (gx#stx-pair? _tl1141811439_)
                            (let ((_e1141911442_ (gx#syntax-e _tl1141811439_)))
                              (let ((_hd1142011445_ (##car _e1141911442_))
                                    (_tl1142111447_ (##cdr _e1141911442_)))
                                (let ((_id11450_ _hd1142011445_))
                                  (if (gx#stx-pair? _tl1142111447_)
                                      (let ((_e1142211452_
                                             (gx#syntax-e _tl1142111447_)))
                                        (let ((_hd1142311455_
                                               (##car _e1142211452_))
                                              (_tl1142411457_
                                               (##cdr _e1142211452_)))
                                          (let ((_alias-id11460_
                                                 _hd1142311455_))
                                            (if (gx#stx-null? _tl1142411457_)
                                                (if (if (gx#identifier?
                                                         _id11450_)
                                                        (gx#identifier?
                                                         _alias-id11460_)
                                                        '#f)
                                                    (let ((_alias-id11462_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11460_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id11450_
                                                         _alias-id11462_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11450_)
                             (cons _alias-id11462_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1141511430_))
                                                (_E1141511430_)))))
                                      (_E1141511430_)))))
                            (_E1141511430_))))
                    (_E1141511430_)))))
        (_E1141411464_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx11355_ _wrap?11356_)
        (let* ((_e1135711367_ _stx11355_)
               (_E1135911371_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1135711367_)))
               (_E1135811398_
                (lambda ()
                  (if (gx#stx-pair? _e1135711367_)
                      (let ((_e1136011375_ (gx#syntax-e _e1135711367_)))
                        (let ((_hd1136111378_ (##car _e1136011375_))
                              (_tl1136211380_ (##cdr _e1136011375_)))
                          (if (gx#stx-pair? _tl1136211380_)
                              (let ((_e1136311383_
                                     (gx#syntax-e _tl1136211380_)))
                                (let ((_hd1136411386_ (##car _e1136311383_))
                                      (_tl1136511388_ (##cdr _e1136311383_)))
                                  (let* ((_hd11391_ _hd1136411386_)
                                         (_body11393_ _tl1136511388_))
                                    (if (gx#core-bind-values? _hd11391_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0
                                              _hd11391_)
                                             (let ((_body11396_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd11391_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11355_
                         _body11393_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?11356_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body11396_)
                                                    (gx#stx-source _stx11355_))
                                                   _body11396_))))
                                         gx#current-expander-context
                                         (let ((__obj12438
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12438)
                                             __obj12438)))
                                        (_E1135911371_)))))
                              (_E1135911371_))))
                      (_E1135911371_)))))
          (_E1135811398_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx11405_)
          (let ((_wrap?11407_ '#t))
            (gx#core-expand-lambda%__% _stx11405_ _wrap?11407_))))
      (define gx#core-expand-lambda%
        (lambda _g12448_
          (let ((_g12447_ (length _g12448_)))
            (cond ((##fx= _g12447_ 1)
                   (apply gx#core-expand-lambda%__0 _g12448_))
                  ((##fx= _g12447_ 2)
                   (apply gx#core-expand-lambda%__% _g12448_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g12448_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11319_)
      (let* ((_e1132011327_ _stx11319_)
             (_E1132211331_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1132011327_)))
             (_E1132111350_
              (lambda ()
                (if (gx#stx-pair? _e1132011327_)
                    (let ((_e1132311335_ (gx#syntax-e _e1132011327_)))
                      (let ((_hd1132411338_ (##car _e1132311335_))
                            (_tl1132511340_ (##cdr _e1132311335_)))
                        (let ((_clauses11343_ _tl1132511340_))
                          (if (gx#stx-list? _clauses11343_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11345_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11345_)
                                     (let ((_$e11347_
                                            (gx#stx-source _clause11345_)))
                                       (if _$e11347_
                                           _$e11347_
                                           (gx#stx-source _stx11319_))))
                                    '#f))
                                 _clauses11343_))
                               (gx#stx-source _stx11319_))
                              (_E1132211331_)))))
                    (_E1132211331_)))))
        (_E1132111350_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11273_)
      (let* ((_e1127411284_ _stx11273_)
             (_E1127611288_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1127411284_)))
             (_E1127511315_
              (lambda ()
                (if (gx#stx-pair? _e1127411284_)
                    (let ((_e1127711292_ (gx#syntax-e _e1127411284_)))
                      (let ((_hd1127811295_ (##car _e1127711292_))
                            (_tl1127911297_ (##cdr _e1127711292_)))
                        (if (gx#stx-pair? _tl1127911297_)
                            (let ((_e1128011300_ (gx#syntax-e _tl1127911297_)))
                              (let ((_hd1128111303_ (##car _e1128011300_))
                                    (_tl1128211305_ (##cdr _e1128011300_)))
                                (let* ((_hd11308_ _hd1128111303_)
                                       (_body11310_ _tl1128211305_))
                                  (if (gx#core-expand-let-bind? _hd11308_)
                                      (let ((_expressions11312_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11308_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11308_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11308_
                                                           _expressions11312_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11273_
                         _body11310_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11273_))))
                                         gx#current-expander-context
                                         (let ((__obj12439
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12439)
                                             __obj12439))))
                                      (_E1127611288_)))))
                            (_E1127611288_))))
                    (_E1127611288_)))))
        (_E1127511315_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11218_ _form11219_)
        (let* ((_e1122011230_ _stx11218_)
               (_E1122211234_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1122011230_)))
               (_E1122111259_
                (lambda ()
                  (if (gx#stx-pair? _e1122011230_)
                      (let ((_e1122311238_ (gx#syntax-e _e1122011230_)))
                        (let ((_hd1122411241_ (##car _e1122311238_))
                              (_tl1122511243_ (##cdr _e1122311238_)))
                          (if (gx#stx-pair? _tl1122511243_)
                              (let ((_e1122611246_
                                     (gx#syntax-e _tl1122511243_)))
                                (let ((_hd1122711249_ (##car _e1122611246_))
                                      (_tl1122811251_ (##cdr _e1122611246_)))
                                  (let* ((_hd11254_ _hd1122711249_)
                                         (_body11256_ _tl1122811251_))
                                    (if (gx#core-expand-let-bind? _hd11254_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11254_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form11219_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11254_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd11254_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11218_
                         _body11256_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11218_))))
                                         gx#current-expander-context
                                         (let ((__obj12440
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12440)
                                             __obj12440)))
                                        (_E1122211234_)))))
                              (_E1122211234_))))
                      (_E1122211234_)))))
          (_E1122111259_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx11266_)
          (let ((_form11268_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx11266_ _form11268_))))
      (define gx#core-expand-letrec-values%
        (lambda _g12450_
          (let ((_g12449_ (length _g12450_)))
            (cond ((##fx= _g12449_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g12450_))
                  ((##fx= _g12449_ 2)
                   (apply gx#core-expand-letrec-values%__% _g12450_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g12450_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11215_)
      (gx#core-expand-letrec-values%__% _stx11215_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11172_)
      (if (gx#stx-list? _stx11172_)
          (gx#stx-andmap
           (lambda (_bind11174_)
             (let* ((_e1117511185_ _bind11174_)
                    (_E1117711189_ (lambda () '#f))
                    (_E1117611211_
                     (lambda ()
                       (if (gx#stx-pair? _e1117511185_)
                           (let ((_e1117811193_ (gx#syntax-e _e1117511185_)))
                             (let ((_hd1117911196_ (##car _e1117811193_))
                                   (_tl1118011198_ (##cdr _e1117811193_)))
                               (let ((_hd11201_ _hd1117911196_))
                                 (if (gx#stx-pair? _tl1118011198_)
                                     (let ((_e1118111203_
                                            (gx#syntax-e _tl1118011198_)))
                                       (let ((_hd1118211206_
                                              (##car _e1118111203_))
                                             (_tl1118311208_
                                              (##cdr _e1118111203_)))
                                         (if (gx#stx-null? _tl1118311208_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11201_)
                                                 (_E1117711189_))
                                             (_E1117711189_))))
                                     (_E1117711189_)))))
                           (_E1117711189_)))))
               (_E1117611211_)))
           _stx11172_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11131_)
      (let* ((_e1113211142_ _bind11131_)
             (_E1113411146_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1113211142_)))
             (_E1113311168_
              (lambda ()
                (if (gx#stx-pair? _e1113211142_)
                    (let ((_e1113511150_ (gx#syntax-e _e1113211142_)))
                      (let ((_hd1113611153_ (##car _e1113511150_))
                            (_tl1113711155_ (##cdr _e1113511150_)))
                        (if (gx#stx-pair? _tl1113711155_)
                            (let ((_e1113811158_ (gx#syntax-e _tl1113711155_)))
                              (let ((_hd1113911161_ (##car _e1113811158_))
                                    (_tl1114011163_ (##cdr _e1113811158_)))
                                (let ((_expr11166_ _hd1113911161_))
                                  (if (gx#stx-null? _tl1114011163_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11166_)
                                          (_E1113411146_))
                                      (_E1113411146_)))))
                            (_E1113411146_))))
                    (_E1113411146_)))))
        (_E1113311168_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11090_)
      (let* ((_e1109111101_ _bind11090_)
             (_E1109311105_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1109111101_)))
             (_E1109211127_
              (lambda ()
                (if (gx#stx-pair? _e1109111101_)
                    (let ((_e1109411109_ (gx#syntax-e _e1109111101_)))
                      (let ((_hd1109511112_ (##car _e1109411109_))
                            (_tl1109611114_ (##cdr _e1109411109_)))
                        (let ((_hd11117_ _hd1109511112_))
                          (if (gx#stx-pair? _tl1109611114_)
                              (let ((_e1109711119_
                                     (gx#syntax-e _tl1109611114_)))
                                (let ((_hd1109811122_ (##car _e1109711119_))
                                      (_tl1109911124_ (##cdr _e1109711119_)))
                                  (if (gx#stx-null? _tl1109911124_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11117_)
                                          (_E1109311105_))
                                      (_E1109311105_))))
                              (_E1109311105_)))))
                    (_E1109311105_)))))
        (_E1109211127_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11048_ _expr11049_)
      (let* ((_e1105011060_ _bind11048_)
             (_E1105211064_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1105011060_)))
             (_E1105111086_
              (lambda ()
                (if (gx#stx-pair? _e1105011060_)
                    (let ((_e1105311068_ (gx#syntax-e _e1105011060_)))
                      (let ((_hd1105411071_ (##car _e1105311068_))
                            (_tl1105511073_ (##cdr _e1105311068_)))
                        (let ((_hd11076_ _hd1105411071_))
                          (if (gx#stx-pair? _tl1105511073_)
                              (let ((_e1105611078_
                                     (gx#syntax-e _tl1105511073_)))
                                (let ((_hd1105711081_ (##car _e1105611078_))
                                      (_tl1105811083_ (##cdr _e1105611078_)))
                                  (if (gx#stx-null? _tl1105811083_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11076_)
                                                (cons _expr11049_ '()))
                                          (_E1105211064_))
                                      (_E1105211064_))))
                              (_E1105211064_)))))
                    (_E1105211064_)))))
        (_E1105111086_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11002_)
      (let* ((_e1100311013_ _stx11002_)
             (_E1100511017_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1100311013_)))
             (_E1100411044_
              (lambda ()
                (if (gx#stx-pair? _e1100311013_)
                    (let ((_e1100611021_ (gx#syntax-e _e1100311013_)))
                      (let ((_hd1100711024_ (##car _e1100611021_))
                            (_tl1100811026_ (##cdr _e1100611021_)))
                        (if (gx#stx-pair? _tl1100811026_)
                            (let ((_e1100911029_ (gx#syntax-e _tl1100811026_)))
                              (let ((_hd1101011032_ (##car _e1100911029_))
                                    (_tl1101111034_ (##cdr _e1100911029_)))
                                (let* ((_hd11037_ _hd1101011032_)
                                       (_body11039_ _tl1101111034_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11037_)
                                      (let ((_expanders11041_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11037_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11037_
                                              _expanders11041_)
                                             (gx#core-expand-local-block
                                              _stx11002_
                                              _body11039_)))
                                         gx#current-expander-context
                                         (let ((__obj12441
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12441)
                                             __obj12441))))
                                      (_E1100511017_)))))
                            (_E1100511017_))))
                    (_E1100511017_)))))
        (_E1100411044_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx10951_)
      (let* ((_e1095210962_ _stx10951_)
             (_E1095410966_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1095210962_)))
             (_E1095310998_
              (lambda ()
                (if (gx#stx-pair? _e1095210962_)
                    (let ((_e1095510970_ (gx#syntax-e _e1095210962_)))
                      (let ((_hd1095610973_ (##car _e1095510970_))
                            (_tl1095710975_ (##cdr _e1095510970_)))
                        (if (gx#stx-pair? _tl1095710975_)
                            (let ((_e1095810978_ (gx#syntax-e _tl1095710975_)))
                              (let ((_hd1095910981_ (##car _e1095810978_))
                                    (_tl1096010983_ (##cdr _e1095810978_)))
                                (let* ((_hd10986_ _hd1095910981_)
                                       (_body10988_ _tl1096010983_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd10986_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd10986_
                                            (make-list
                                             (gx#stx-length _hd10986_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1099010993_
                                                     _g1099110995_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1099010993_
                                               _g1099110995_
                                               '#t))
                                            _hd10986_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd10986_))
                                           (gx#core-expand-local-block
                                            _stx10951_
                                            _body10988_)))
                                       gx#current-expander-context
                                       (let ((__obj12442
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj12442)
                                           __obj12442)))
                                      (_E1095410966_)))))
                            (_E1095410966_))))
                    (_E1095410966_)))))
        (_E1095310998_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx10908_)
      (if (gx#stx-list? _stx10908_)
          (gx#stx-andmap
           (lambda (_bind10910_)
             (let* ((_e1091110921_ _bind10910_)
                    (_E1091310925_ (lambda () '#f))
                    (_E1091210947_
                     (lambda ()
                       (if (gx#stx-pair? _e1091110921_)
                           (let ((_e1091410929_ (gx#syntax-e _e1091110921_)))
                             (let ((_hd1091510932_ (##car _e1091410929_))
                                   (_tl1091610934_ (##cdr _e1091410929_)))
                               (let ((_hd10937_ _hd1091510932_))
                                 (if (gx#stx-pair? _tl1091610934_)
                                     (let ((_e1091710939_
                                            (gx#syntax-e _tl1091610934_)))
                                       (let ((_hd1091810942_
                                              (##car _e1091710939_))
                                             (_tl1091910944_
                                              (##cdr _e1091710939_)))
                                         (if (gx#stx-null? _tl1091910944_)
                                             (if '#t
                                                 (gx#identifier? _hd10937_)
                                                 (_E1091310925_))
                                             (_E1091310925_))))
                                     (_E1091310925_)))))
                           (_E1091310925_)))))
               (_E1091210947_)))
           _stx10908_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind10865_)
      (let* ((_e1086610876_ _bind10865_)
             (_E1086810880_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1086610876_)))
             (_E1086710904_
              (lambda ()
                (if (gx#stx-pair? _e1086610876_)
                    (let ((_e1086910884_ (gx#syntax-e _e1086610876_)))
                      (let ((_hd1087010887_ (##car _e1086910884_))
                            (_tl1087110889_ (##cdr _e1086910884_)))
                        (if (gx#stx-pair? _tl1087110889_)
                            (let ((_e1087210892_ (gx#syntax-e _tl1087110889_)))
                              (let ((_hd1087310895_ (##car _e1087210892_))
                                    (_tl1087410897_ (##cdr _e1087210892_)))
                                (let ((_expr10900_ _hd1087310895_))
                                  (if (gx#stx-null? _tl1087410897_)
                                      (if '#t
                                          (let ((_g12451_
                                                 (gx#core-expand-expression+1
                                                  _expr10900_)))
                                            (begin
                                              (let ((_g12452_
                                                     (if (##values? _g12451_)
                                                         (##vector-length
                                                          _g12451_)
                                                         1)))
                                                (if (not (##fx= _g12452_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12452_)))
                                              (let ((_e10902_
                                                     (##vector-ref
                                                      _g12451_
                                                      1)))
                                                _e10902_)))
                                          (_E1086810880_))
                                      (_E1086810880_)))))
                            (_E1086810880_))))
                    (_E1086810880_)))))
        (_E1086710904_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind10810_ _e10811_ _rebind?10812_)
        (let* ((_e1081310823_ _bind10810_)
               (_E1081510827_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1081310823_)))
               (_E1081410849_
                (lambda ()
                  (if (gx#stx-pair? _e1081310823_)
                      (let ((_e1081610831_ (gx#syntax-e _e1081310823_)))
                        (let ((_hd1081710834_ (##car _e1081610831_))
                              (_tl1081810836_ (##cdr _e1081610831_)))
                          (let ((_id10839_ _hd1081710834_))
                            (if (gx#stx-pair? _tl1081810836_)
                                (let ((_e1081910841_
                                       (gx#syntax-e _tl1081810836_)))
                                  (let ((_hd1082010844_ (##car _e1081910841_))
                                        (_tl1082110846_ (##cdr _e1081910841_)))
                                    (if (gx#stx-null? _tl1082110846_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id10839_
                                             _e10811_
                                             _rebind?10812_)
                                            (_E1081510827_))
                                        (_E1081510827_))))
                                (_E1081510827_)))))
                      (_E1081510827_)))))
          (_E1081410849_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind10856_ _e10857_)
          (let ((_rebind?10859_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind10856_
             _e10857_
             _rebind?10859_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g12454_
          (let ((_g12453_ (length _g12454_)))
            (cond ((##fx= _g12453_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g12454_))
                  ((##fx= _g12453_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g12454_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g12454_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx10768_)
      (let* ((_e1076910779_ _stx10768_)
             (_E1077110783_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1076910779_)))
             (_E1077010805_
              (lambda ()
                (if (gx#stx-pair? _e1076910779_)
                    (let ((_e1077210787_ (gx#syntax-e _e1076910779_)))
                      (let ((_hd1077310790_ (##car _e1077210787_))
                            (_tl1077410792_ (##cdr _e1077210787_)))
                        (if (gx#stx-pair? _tl1077410792_)
                            (let ((_e1077510795_ (gx#syntax-e _tl1077410792_)))
                              (let ((_hd1077610798_ (##car _e1077510795_))
                                    (_tl1077710800_ (##cdr _e1077510795_)))
                                (let ((_expr10803_ _hd1077610798_))
                                  (if (gx#stx-null? _tl1077710800_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10803_)
                                          (_E1077110783_))
                                      (_E1077110783_)))))
                            (_E1077110783_))))
                    (_E1077110783_)))))
        (_E1077010805_))))
  (define gx#core-expand-quote%
    (lambda (_stx10727_)
      (let* ((_e1072810738_ _stx10727_)
             (_E1073010742_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1072810738_)))
             (_E1072910764_
              (lambda ()
                (if (gx#stx-pair? _e1072810738_)
                    (let ((_e1073110746_ (gx#syntax-e _e1072810738_)))
                      (let ((_hd1073210749_ (##car _e1073110746_))
                            (_tl1073310751_ (##cdr _e1073110746_)))
                        (if (gx#stx-pair? _tl1073310751_)
                            (let ((_e1073410754_ (gx#syntax-e _tl1073310751_)))
                              (let ((_hd1073510757_ (##car _e1073410754_))
                                    (_tl1073610759_ (##cdr _e1073410754_)))
                                (let ((_e10762_ _hd1073510757_))
                                  (if (gx#stx-null? _tl1073610759_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10762_)
                                                       '()))
                                           (gx#stx-source _stx10727_))
                                          (_E1073010742_))
                                      (_E1073010742_)))))
                            (_E1073010742_))))
                    (_E1073010742_)))))
        (_E1072910764_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10686_)
      (let* ((_e1068710697_ _stx10686_)
             (_E1068910701_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1068710697_)))
             (_E1068810723_
              (lambda ()
                (if (gx#stx-pair? _e1068710697_)
                    (let ((_e1069010705_ (gx#syntax-e _e1068710697_)))
                      (let ((_hd1069110708_ (##car _e1069010705_))
                            (_tl1069210710_ (##cdr _e1069010705_)))
                        (if (gx#stx-pair? _tl1069210710_)
                            (let ((_e1069310713_ (gx#syntax-e _tl1069210710_)))
                              (let ((_hd1069410716_ (##car _e1069310713_))
                                    (_tl1069510718_ (##cdr _e1069310713_)))
                                (let ((_e10721_ _hd1069410716_))
                                  (if (gx#stx-null? _tl1069510718_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10721_)
                                                       '()))
                                           (gx#stx-source _stx10686_))
                                          (_E1068910701_))
                                      (_E1068910701_)))))
                            (_E1068910701_))))
                    (_E1068910701_)))))
        (_E1068810723_))))
  (define gx#core-expand-call%
    (lambda (_stx10643_)
      (let* ((_e1064410654_ _stx10643_)
             (_E1064610658_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1064410654_)))
             (_E1064510682_
              (lambda ()
                (if (gx#stx-pair? _e1064410654_)
                    (let ((_e1064710662_ (gx#syntax-e _e1064410654_)))
                      (let ((_hd1064810665_ (##car _e1064710662_))
                            (_tl1064910667_ (##cdr _e1064710662_)))
                        (if (gx#stx-pair? _tl1064910667_)
                            (let ((_e1065010670_ (gx#syntax-e _tl1064910667_)))
                              (let ((_hd1065110673_ (##car _e1065010670_))
                                    (_tl1065210675_ (##cdr _e1065010670_)))
                                (let* ((_rator10678_ _hd1065110673_)
                                       (_args10680_ _tl1065210675_))
                                  (if (gx#stx-list? _args10680_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10678_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10680_))
                                       (gx#stx-source _stx10643_))
                                      (_E1064610658_)))))
                            (_E1064610658_))))
                    (_E1064610658_)))))
        (_E1064510682_))))
  (define gx#core-expand-if%
    (lambda (_stx10576_)
      (let* ((_e1057710593_ _stx10576_)
             (_E1057910597_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1057710593_)))
             (_E1057810639_
              (lambda ()
                (if (gx#stx-pair? _e1057710593_)
                    (let ((_e1058010601_ (gx#syntax-e _e1057710593_)))
                      (let ((_hd1058110604_ (##car _e1058010601_))
                            (_tl1058210606_ (##cdr _e1058010601_)))
                        (if (gx#stx-pair? _tl1058210606_)
                            (let ((_e1058310609_ (gx#syntax-e _tl1058210606_)))
                              (let ((_hd1058410612_ (##car _e1058310609_))
                                    (_tl1058510614_ (##cdr _e1058310609_)))
                                (let ((_test10617_ _hd1058410612_))
                                  (if (gx#stx-pair? _tl1058510614_)
                                      (let ((_e1058610619_
                                             (gx#syntax-e _tl1058510614_)))
                                        (let ((_hd1058710622_
                                               (##car _e1058610619_))
                                              (_tl1058810624_
                                               (##cdr _e1058610619_)))
                                          (let ((_K10627_ _hd1058710622_))
                                            (if (gx#stx-pair? _tl1058810624_)
                                                (let ((_e1058910629_
                                                       (gx#syntax-e
                                                        _tl1058810624_)))
                                                  (let ((_hd1059010632_
                                                         (##car _e1058910629_))
                                                        (_tl1059110634_
                                                         (##cdr _e1058910629_)))
                                                    (let ((_E10637_
                                                           _hd1059010632_))
                                                      (if (gx#stx-null?
                                                           _tl1059110634_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10617_)
                                   (cons (gx#core-expand-expression _K10627_)
                                         (cons (gx#core-expand-expression
                                                _E10637_)
                                               '()))))
                       (gx#stx-source _stx10576_))
                      (_E1057910597_))
                  (_E1057910597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1057910597_)))))
                                      (_E1057910597_)))))
                            (_E1057910597_))))
                    (_E1057910597_)))))
        (_E1057810639_))))
  (define gx#core-expand-ref%
    (lambda (_stx10535_)
      (let* ((_e1053610546_ _stx10535_)
             (_E1053810550_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1053610546_)))
             (_E1053710572_
              (lambda ()
                (if (gx#stx-pair? _e1053610546_)
                    (let ((_e1053910554_ (gx#syntax-e _e1053610546_)))
                      (let ((_hd1054010557_ (##car _e1053910554_))
                            (_tl1054110559_ (##cdr _e1053910554_)))
                        (if (gx#stx-pair? _tl1054110559_)
                            (let ((_e1054210562_ (gx#syntax-e _tl1054110559_)))
                              (let ((_hd1054310565_ (##car _e1054210562_))
                                    (_tl1054410567_ (##cdr _e1054210562_)))
                                (let ((_id10570_ _hd1054310565_))
                                  (if (gx#stx-null? _tl1054410567_)
                                      (if (gx#core-runtime-ref? _id10570_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10570_
                                                        _stx10535_)
                                                       '()))
                                           (gx#stx-source _stx10535_))
                                          (_E1053810550_))
                                      (_E1053810550_)))))
                            (_E1053810550_))))
                    (_E1053810550_)))))
        (_E1053710572_))))
  (define gx#core-expand-setq%
    (lambda (_stx10481_)
      (let* ((_e1048210495_ _stx10481_)
             (_E1048410499_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1048210495_)))
             (_E1048310531_
              (lambda ()
                (if (gx#stx-pair? _e1048210495_)
                    (let ((_e1048510503_ (gx#syntax-e _e1048210495_)))
                      (let ((_hd1048610506_ (##car _e1048510503_))
                            (_tl1048710508_ (##cdr _e1048510503_)))
                        (if (gx#stx-pair? _tl1048710508_)
                            (let ((_e1048810511_ (gx#syntax-e _tl1048710508_)))
                              (let ((_hd1048910514_ (##car _e1048810511_))
                                    (_tl1049010516_ (##cdr _e1048810511_)))
                                (let ((_id10519_ _hd1048910514_))
                                  (if (gx#stx-pair? _tl1049010516_)
                                      (let ((_e1049110521_
                                             (gx#syntax-e _tl1049010516_)))
                                        (let ((_hd1049210524_
                                               (##car _e1049110521_))
                                              (_tl1049310526_
                                               (##cdr _e1049110521_)))
                                          (let ((_expr10529_ _hd1049210524_))
                                            (if (gx#stx-null? _tl1049310526_)
                                                (if (gx#core-runtime-ref?
                                                     _id10519_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10519_
                          _stx10481_)
                         (cons (gx#core-expand-expression _expr10529_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10481_))
                                                    (_E1048410499_))
                                                (_E1048410499_)))))
                                      (_E1048410499_)))))
                            (_E1048410499_))))
                    (_E1048410499_)))))
        (_E1048310531_))))
  (define gx#macro-expand-extern
    (lambda (_stx10329_)
      (letrec ((_generate10331_
                (lambda (_body10361_)
                  (let _lp10363_ ((_rest10365_ _body10361_)
                                  (_ns10366_ (gx#core-context-namespace__0))
                                  (_r10367_ '()))
                    (let* ((_e1036810383_ _rest10365_)
                           (_E1038110387_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1036810383_)))
                           (_E1037710391_
                            (lambda ()
                              (if (gx#stx-null? _e1036810383_)
                                  (if '#t (reverse _r10367_) (_E1038110387_))
                                  (_E1038110387_))))
                           (_E1037010448_
                            (lambda ()
                              (if (gx#stx-pair? _e1036810383_)
                                  (let ((_e1037810395_
                                         (gx#syntax-e _e1036810383_)))
                                    (let ((_hd1037910398_
                                           (##car _e1037810395_))
                                          (_tl1038010400_
                                           (##cdr _e1037810395_)))
                                      (let* ((_hd10403_ _hd1037910398_)
                                             (_rest10405_ _tl1038010400_))
                                        (if '#t
                                            (if (gx#identifier? _hd10403_)
                                                (_lp10363_
                                                 _rest10405_
                                                 _ns10366_
                                                 (cons (cons _hd10403_
                                                             (cons (if _ns10366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10403_
                                _ns10366_
                                '"#"
                                _hd10403_)
                               _hd10403_)
                           '()))
               _r10367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1040610416_
                                                        _hd10403_)
                                                       (_E1040810420_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1040610416_)))
                                                       (_E1040710444_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1040610416_)
                                                              (let ((_e1040910424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1040610416_)))
                        (let ((_hd1041010427_ (##car _e1040910424_))
                              (_tl1041110429_ (##cdr _e1040910424_)))
                          (let ((_id10432_ _hd1041010427_))
                            (if (gx#stx-pair? _tl1041110429_)
                                (let ((_e1041210434_
                                       (gx#syntax-e _tl1041110429_)))
                                  (let ((_hd1041310437_ (##car _e1041210434_))
                                        (_tl1041410439_ (##cdr _e1041210434_)))
                                    (let ((_eid10442_ _hd1041310437_))
                                      (if (gx#stx-null? _tl1041410439_)
                                          (if (if (gx#identifier? _id10432_)
                                                  (gx#identifier? _eid10442_)
                                                  '#f)
                                              (_lp10363_
                                               _rest10405_
                                               _ns10366_
                                               (cons (cons _id10432_
                                                           (cons _eid10442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10367_))
                                              (_E1040810420_))
                                          (_E1040810420_)))))
                                (_E1040810420_)))))
                      (_E1040810420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1040710444_)))
                                            (_E1037710391_)))))
                                  (_E1037710391_))))
                           (_E1036910477_
                            (lambda ()
                              (if (gx#stx-pair? _e1036810383_)
                                  (let ((_e1037110452_
                                         (gx#syntax-e _e1036810383_)))
                                    (let ((_hd1037210455_
                                           (##car _e1037110452_))
                                          (_tl1037310457_
                                           (##cdr _e1037110452_)))
                                      (if (eq? (gx#stx-e _hd1037210455_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1037310457_)
                                              (let ((_e1037410460_
                                                     (gx#syntax-e
                                                      _tl1037310457_)))
                                                (let ((_hd1037510463_
                                                       (##car _e1037410460_))
                                                      (_tl1037610465_
                                                       (##cdr _e1037410460_)))
                                                  (let* ((_ns10468_
                                                          _hd1037510463_)
                                                         (_rest10470_
                                                          _tl1037610465_))
                                                    (if '#t
                                                        (let ((_ns10475_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10468_)
                           (symbol->string (gx#stx-e _ns10468_))
                           (if (let ((_$e10472_ (gx#stx-string? _ns10468_)))
                                 (if _$e10472_
                                     _$e10472_
                                     (gx#stx-false? _ns10468_)))
                               (gx#stx-e _ns10468_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10329_
                                _ns10468_)))))
                  (_lp10363_ _rest10470_ _ns10475_ _r10367_))
                (_E1037010448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1037010448_))
                                          (_E1037010448_))))
                                  (_E1037010448_)))))
                      (_E1036910477_))))))
        (let* ((_e1033210339_ _stx10329_)
               (_E1033410343_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1033210339_)))
               (_E1033310357_
                (lambda ()
                  (if (gx#stx-pair? _e1033210339_)
                      (let ((_e1033510347_ (gx#syntax-e _e1033210339_)))
                        (let ((_hd1033610350_ (##car _e1033510347_))
                              (_tl1033710352_ (##cdr _e1033510347_)))
                          (let ((_body10355_ _tl1033710352_))
                            (if (gx#stx-list? _body10355_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10331_ _body10355_))
                                (_E1033410343_)))))
                      (_E1033410343_)))))
          (_E1033310357_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10275_)
      (let* ((_e1027610289_ _stx10275_)
             (_E1027810293_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1027610289_)))
             (_E1027710325_
              (lambda ()
                (if (gx#stx-pair? _e1027610289_)
                    (let ((_e1027910297_ (gx#syntax-e _e1027610289_)))
                      (let ((_hd1028010300_ (##car _e1027910297_))
                            (_tl1028110302_ (##cdr _e1027910297_)))
                        (if (gx#stx-pair? _tl1028110302_)
                            (let ((_e1028210305_ (gx#syntax-e _tl1028110302_)))
                              (let ((_hd1028310308_ (##car _e1028210305_))
                                    (_tl1028410310_ (##cdr _e1028210305_)))
                                (let ((_hd10313_ _hd1028310308_))
                                  (if (gx#stx-pair? _tl1028410310_)
                                      (let ((_e1028510315_
                                             (gx#syntax-e _tl1028410310_)))
                                        (let ((_hd1028610318_
                                               (##car _e1028510315_))
                                              (_tl1028710320_
                                               (##cdr _e1028510315_)))
                                          (let ((_expr10323_ _hd1028610318_))
                                            (if (gx#stx-null? _tl1028710320_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10313_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10313_)
                        (cons _expr10323_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1027810293_))
                                                (_E1027810293_)))))
                                      (_E1027810293_)))))
                            (_E1027810293_))))
                    (_E1027810293_)))))
        (_E1027710325_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10221_)
      (let* ((_e1022210235_ _stx10221_)
             (_E1022410239_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1022210235_)))
             (_E1022310271_
              (lambda ()
                (if (gx#stx-pair? _e1022210235_)
                    (let ((_e1022510243_ (gx#syntax-e _e1022210235_)))
                      (let ((_hd1022610246_ (##car _e1022510243_))
                            (_tl1022710248_ (##cdr _e1022510243_)))
                        (if (gx#stx-pair? _tl1022710248_)
                            (let ((_e1022810251_ (gx#syntax-e _tl1022710248_)))
                              (let ((_hd1022910254_ (##car _e1022810251_))
                                    (_tl1023010256_ (##cdr _e1022810251_)))
                                (let ((_hd10259_ _hd1022910254_))
                                  (if (gx#stx-pair? _tl1023010256_)
                                      (let ((_e1023110261_
                                             (gx#syntax-e _tl1023010256_)))
                                        (let ((_hd1023210264_
                                               (##car _e1023110261_))
                                              (_tl1023310266_
                                               (##cdr _e1023110261_)))
                                          (let ((_expr10269_ _hd1023210264_))
                                            (if (gx#stx-null? _tl1023310266_)
                                                (if (gx#identifier? _hd10259_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10259_
                                                                (cons _expr10269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1022410239_))
                                                (_E1022410239_)))))
                                      (_E1022410239_)))))
                            (_E1022410239_))))
                    (_E1022410239_)))))
        (_E1022310271_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10167_)
      (let* ((_e1016810181_ _stx10167_)
             (_E1017010185_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1016810181_)))
             (_E1016910217_
              (lambda ()
                (if (gx#stx-pair? _e1016810181_)
                    (let ((_e1017110189_ (gx#syntax-e _e1016810181_)))
                      (let ((_hd1017210192_ (##car _e1017110189_))
                            (_tl1017310194_ (##cdr _e1017110189_)))
                        (if (gx#stx-pair? _tl1017310194_)
                            (let ((_e1017410197_ (gx#syntax-e _tl1017310194_)))
                              (let ((_hd1017510200_ (##car _e1017410197_))
                                    (_tl1017610202_ (##cdr _e1017410197_)))
                                (let ((_id10205_ _hd1017510200_))
                                  (if (gx#stx-pair? _tl1017610202_)
                                      (let ((_e1017710207_
                                             (gx#syntax-e _tl1017610202_)))
                                        (let ((_hd1017810210_
                                               (##car _e1017710207_))
                                              (_tl1017910212_
                                               (##cdr _e1017710207_)))
                                          (let ((_alias-id10215_
                                                 _hd1017810210_))
                                            (if (gx#stx-null? _tl1017910212_)
                                                (if (if (gx#identifier?
                                                         _id10205_)
                                                        (gx#identifier?
                                                         _alias-id10215_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10205_
                                                                (cons _alias-id10215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1017010185_))
                                                (_E1017010185_)))))
                                      (_E1017010185_)))))
                            (_E1017010185_))))
                    (_E1017010185_)))))
        (_E1016910217_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10124_)
      (let* ((_e1012510135_ _stx10124_)
             (_E1012710139_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1012510135_)))
             (_E1012610163_
              (lambda ()
                (if (gx#stx-pair? _e1012510135_)
                    (let ((_e1012810143_ (gx#syntax-e _e1012510135_)))
                      (let ((_hd1012910146_ (##car _e1012810143_))
                            (_tl1013010148_ (##cdr _e1012810143_)))
                        (if (gx#stx-pair? _tl1013010148_)
                            (let ((_e1013110151_ (gx#syntax-e _tl1013010148_)))
                              (let ((_hd1013210154_ (##car _e1013110151_))
                                    (_tl1013310156_ (##cdr _e1013110151_)))
                                (let* ((_hd10159_ _hd1013210154_)
                                       (_body10161_ _tl1013310156_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd10159_)
                                          (if (gx#stx-list? _body10161_)
                                              (not (gx#stx-null? _body10161_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10159_)
                                       _body10161_)
                                      (_E1012710139_)))))
                            (_E1012710139_))))
                    (_E1012710139_)))))
        (_E1012610163_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10060_)
      (letrec ((_generate10062_
                (lambda (_clause10092_)
                  (let* ((_e1009310100_ _clause10092_)
                         (_E1009510104_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10060_
                             _clause10092_)))
                         (_E1009410120_
                          (lambda ()
                            (if (gx#stx-pair? _e1009310100_)
                                (let ((_e1009610108_
                                       (gx#syntax-e _e1009310100_)))
                                  (let ((_hd1009710111_ (##car _e1009610108_))
                                        (_tl1009810113_ (##cdr _e1009610108_)))
                                    (let* ((_hd10116_ _hd1009710111_)
                                           (_body10118_ _tl1009810113_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd10116_)
                                              (if (gx#stx-list? _body10118_)
                                                  (not (gx#stx-null?
                                                        _body10118_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10116_)
                                                 _body10118_)
                                           (gx#stx-source _clause10092_))
                                          (_E1009510104_)))))
                                (_E1009510104_)))))
                    (_E1009410120_)))))
        (let* ((_e1006310070_ _stx10060_)
               (_E1006510074_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1006310070_)))
               (_E1006410088_
                (lambda ()
                  (if (gx#stx-pair? _e1006310070_)
                      (let ((_e1006610078_ (gx#syntax-e _e1006310070_)))
                        (let ((_hd1006710081_ (##car _e1006610078_))
                              (_tl1006810083_ (##cdr _e1006610078_)))
                          (let ((_clauses10086_ _tl1006810083_))
                            (if (gx#stx-list? _clauses10086_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10062_ _clauses10086_))
                                (_E1006510074_)))))
                      (_E1006510074_)))))
          (_E1006410088_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx9961_ _form9962_)
        (letrec ((_generate9964_
                  (lambda (_bind10007_)
                    (let* ((_e1000810018_ _bind10007_)
                           (_E1001010022_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx9961_
                               _bind10007_)))
                           (_E1000910046_
                            (lambda ()
                              (if (gx#stx-pair? _e1000810018_)
                                  (let ((_e1001110026_
                                         (gx#syntax-e _e1000810018_)))
                                    (let ((_hd1001210029_
                                           (##car _e1001110026_))
                                          (_tl1001310031_
                                           (##cdr _e1001110026_)))
                                      (let ((_ids10034_ _hd1001210029_))
                                        (if (gx#stx-pair? _tl1001310031_)
                                            (let ((_e1001410036_
                                                   (gx#syntax-e
                                                    _tl1001310031_)))
                                              (let ((_hd1001510039_
                                                     (##car _e1001410036_))
                                                    (_tl1001610041_
                                                     (##cdr _e1001410036_)))
                                                (let ((_expr10044_
                                                       _hd1001510039_))
                                                  (if (gx#stx-null?
                                                       _tl1001610041_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10034_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10034_)
                        (cons _expr10044_ '()))
                  (_E1001010022_))
              (_E1001010022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1001010022_)))))
                                  (_E1001010022_)))))
                      (_E1000910046_)))))
          (let* ((_e99659975_ _stx9961_)
                 (_E99679979_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e99659975_)))
                 (_E996610003_
                  (lambda ()
                    (if (gx#stx-pair? _e99659975_)
                        (let ((_e99689983_ (gx#syntax-e _e99659975_)))
                          (let ((_hd99699986_ (##car _e99689983_))
                                (_tl99709988_ (##cdr _e99689983_)))
                            (if (gx#stx-pair? _tl99709988_)
                                (let ((_e99719991_ (gx#syntax-e _tl99709988_)))
                                  (let ((_hd99729994_ (##car _e99719991_))
                                        (_tl99739996_ (##cdr _e99719991_)))
                                    (let* ((_hd9999_ _hd99729994_)
                                           (_body10001_ _tl99739996_))
                                      (if (if (gx#stx-list? _hd9999_)
                                              (if (gx#stx-list? _body10001_)
                                                  (not (gx#stx-null?
                                                        _body10001_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form9962_
                                           (gx#stx-map1
                                            _generate9964_
                                            _hd9999_)
                                           _body10001_)
                                          (_E99679979_)))))
                                (_E99679979_))))
                        (_E99679979_)))))
            (_E996610003_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx10053_)
          (let ((_form10055_ '%#let-values))
            (gx#macro-expand-let-values__% _stx10053_ _form10055_))))
      (define gx#macro-expand-let-values
        (lambda _g12456_
          (let ((_g12455_ (length _g12456_)))
            (cond ((##fx= _g12455_ 1)
                   (apply gx#macro-expand-let-values__0 _g12456_))
                  ((##fx= _g12455_ 2)
                   (apply gx#macro-expand-let-values__% _g12456_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g12456_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx9958_)
      (gx#macro-expand-let-values__% _stx9958_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx9956_)
      (gx#macro-expand-let-values__% _stx9956_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9847_)
      (let* ((_e98489874_ _stx9847_)
             (_E98609878_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98489874_)))
             (_E98509920_
              (lambda ()
                (if (gx#stx-pair? _e98489874_)
                    (let ((_e98619882_ (gx#syntax-e _e98489874_)))
                      (let ((_hd98629885_ (##car _e98619882_))
                            (_tl98639887_ (##cdr _e98619882_)))
                        (if (gx#stx-pair? _tl98639887_)
                            (let ((_e98649890_ (gx#syntax-e _tl98639887_)))
                              (let ((_hd98659893_ (##car _e98649890_))
                                    (_tl98669895_ (##cdr _e98649890_)))
                                (let ((_test9898_ _hd98659893_))
                                  (if (gx#stx-pair? _tl98669895_)
                                      (let ((_e98679900_
                                             (gx#syntax-e _tl98669895_)))
                                        (let ((_hd98689903_
                                               (##car _e98679900_))
                                              (_tl98699905_
                                               (##cdr _e98679900_)))
                                          (let ((_K9908_ _hd98689903_))
                                            (if (gx#stx-pair? _tl98699905_)
                                                (let ((_e98709910_
                                                       (gx#syntax-e
                                                        _tl98699905_)))
                                                  (let ((_hd98719913_
                                                         (##car _e98709910_))
                                                        (_tl98729915_
                                                         (##cdr _e98709910_)))
                                                    (let ((_E9918_ _hd98719913_))
                                                      (if (gx#stx-null?
                                                           _tl98729915_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test9898_
                                                               _K9908_
                                                               _E9918_)
                                                              (_E98609878_))
                                                          (_E98609878_)))))
                                                (_E98609878_)))))
                                      (_E98609878_)))))
                            (_E98609878_))))
                    (_E98609878_))))
             (_E98499952_
              (lambda ()
                (if (gx#stx-pair? _e98489874_)
                    (let ((_e98519924_ (gx#syntax-e _e98489874_)))
                      (let ((_hd98529927_ (##car _e98519924_))
                            (_tl98539929_ (##cdr _e98519924_)))
                        (if (gx#stx-pair? _tl98539929_)
                            (let ((_e98549932_ (gx#syntax-e _tl98539929_)))
                              (let ((_hd98559935_ (##car _e98549932_))
                                    (_tl98569937_ (##cdr _e98549932_)))
                                (let ((_test9940_ _hd98559935_))
                                  (if (gx#stx-pair? _tl98569937_)
                                      (let ((_e98579942_
                                             (gx#syntax-e _tl98569937_)))
                                        (let ((_hd98589945_
                                               (##car _e98579942_))
                                              (_tl98599947_
                                               (##cdr _e98579942_)))
                                          (let ((_K9950_ _hd98589945_))
                                            (if (gx#stx-null? _tl98599947_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test9940_
                                                     _K9950_
                                                     '#!void)
                                                    (_E98509920_))
                                                (_E98509920_)))))
                                      (_E98509920_)))))
                            (_E98509920_))))
                    (_E98509920_)))))
        (_E98499952_))))
  (define gx#free-identifier=?
    (lambda (_xid9835_ _yid9836_)
      (let ((_xe9838_ (gx#resolve-identifier__0 _xid9835_))
            (_ye9839_ (gx#resolve-identifier__0 _yid9836_)))
        (if (if _xe9838_ _ye9839_ '#f)
            (let ((_$e9841_ (eq? _xe9838_ _ye9839_)))
              (if _$e9841_
                  _$e9841_
                  (if (##structure-instance-of? _xe9838_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9839_ 'gx#binding::t)
                          (eq? (##structure-ref _xe9838_ '1 gx#binding::t '#f)
                               (##structure-ref _ye9839_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e9844_ _xe9838_)) (if _$e9844_ _$e9844_ _ye9839_))
                '#f
                (gx#stx-eq? _xid9835_ _yid9836_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9819_ _yid9820_)
      (letrec ((_context9822_
                (lambda (_e9833_)
                  (if (##structure-direct-instance-of?
                       _e9833_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e9833_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9823_
                (lambda (_e9831_)
                  (if (symbol? _e9831_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9831_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e9831_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e9831_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9824_
                (lambda (_e9829_)
                  (if (symbol? _e9829_)
                      _e9829_
                      (gx#syntax-local-unwrap _e9829_)))))
        (let ((_x9826_ (_unwrap9824_ _xid9819_))
              (_y9827_ (_unwrap9824_ _yid9820_)))
          (if (gx#stx-eq? _x9826_ _y9827_)
              (if (eq? (_context9822_ _x9826_) (_context9822_ _y9827_))
                  (equal? (_marks9823_ _x9826_) (_marks9823_ _y9827_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9817_)
      (if (gx#identifier? _stx9817_) (gx#core-identifier=? _stx9817_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9815_)
      (if (gx#identifier? _stx9815_)
          (gx#core-identifier=? _stx9815_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9813_)
      (if (gx#identifier? _x9813_)
          (if (not (gx#underscore? _x9813_)) _x9813_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx9759_ _where9760_)
        (let _lp9762_ ((_rest9764_ (gx#syntax->list _stx9759_)))
          (let* ((_rest97659773_ _rest9764_)
                 (_else97679781_ (lambda () '#t))
                 (_K97699791_
                  (lambda (_rest9784_ _hd9785_)
                    (if (not (gx#identifier? _hd9785_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where9760_
                         _hd9785_)
                        (if (find (lambda (_g97869788_)
                                    (gx#bound-identifier=?
                                     _g97869788_
                                     _hd9785_))
                                  _rest9784_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where9760_
                             _hd9785_)
                            (_lp9762_ _rest9784_))))))
            (if (##pair? _rest97659773_)
                (let ((_hd97709794_ (##car _rest97659773_))
                      (_tl97719796_ (##cdr _rest97659773_)))
                  (let* ((_hd9799_ _hd97709794_) (_rest9801_ _tl97719796_))
                    (_K97699791_ _rest9801_ _hd9799_)))
                (_else97679781_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx9806_)
          (let ((_where9808_ _stx9806_))
            (gx#check-duplicate-identifiers__% _stx9806_ _where9808_))))
      (define gx#check-duplicate-identifiers
        (lambda _g12458_
          (let ((_g12457_ (length _g12458_)))
            (cond ((##fx= _g12457_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g12458_))
                  ((##fx= _g12457_ 2)
                   (apply gx#check-duplicate-identifiers__% _g12458_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g12458_))))))))
  (define gx#core-bind-values?
    (lambda (_stx9751_)
      (gx#stx-andmap
       (lambda (_x9753_)
         (let ((_$e9755_ (gx#identifier? _x9753_)))
           (if _$e9755_ _$e9755_ (gx#stx-false? _x9753_))))
       _stx9751_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx9715_ _rebind?9716_ _phi9717_ _ctx9718_)
        (gx#stx-for-each1
         (lambda (_id9720_)
           (if (gx#identifier? _id9720_)
               (gx#core-bind-runtime!__%
                _id9720_
                _rebind?9716_
                _phi9717_
                _ctx9718_)
               '#!void))
         _stx9715_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx9725_)
          (let* ((_rebind?9727_ '#f)
                 (_phi9729_ (gx#current-expander-phi))
                 (_ctx9731_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9725_
             _rebind?9727_
             _phi9729_
             _ctx9731_))))
      (define gx#core-bind-values!__1
        (lambda (_stx9733_ _rebind?9734_)
          (let* ((_phi9736_ (gx#current-expander-phi))
                 (_ctx9738_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9733_
             _rebind?9734_
             _phi9736_
             _ctx9738_))))
      (define gx#core-bind-values!__2
        (lambda (_stx9740_ _rebind?9741_ _phi9742_)
          (let ((_ctx9744_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9740_
             _rebind?9741_
             _phi9742_
             _ctx9744_))))
      (define gx#core-bind-values!
        (lambda _g12460_
          (let ((_g12459_ (length _g12460_)))
            (cond ((##fx= _g12459_ 1) (apply gx#core-bind-values!__0 _g12460_))
                  ((##fx= _g12459_ 2) (apply gx#core-bind-values!__1 _g12460_))
                  ((##fx= _g12459_ 3) (apply gx#core-bind-values!__2 _g12460_))
                  ((##fx= _g12459_ 4) (apply gx#core-bind-values!__% _g12460_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g12460_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9710_)
      (gx#stx-map1
       (lambda (_x9712_)
         (if (gx#identifier? _x9712_) (gx#core-quote-syntax__0 _x9712_) '#f))
       _stx9710_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9703_)
      (if (gx#identifier? _stx9703_)
          (let* ((_bind9705_ (gx#resolve-identifier__0 _stx9703_))
                 (_$e9707_ (not _bind9705_)))
            (if _$e9707_
                _$e9707_
                (##structure-instance-of? _bind9705_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9695_ _form9696_)
      (let ((_bind9698_ (gx#resolve-identifier__0 _id9695_)))
        (if (##structure-instance-of? _bind9698_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9695_)
            (if (not _bind9698_)
                (if (let ((_$e9700_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e9700_
                          _$e9700_
                          (gx#core-extern-symbol? (gx#stx-e _id9695_))))
                    (gx#core-quote-syntax__0 _id9695_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9696_
                     _id9695_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9696_
                 _id9695_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id9654_ _rebind?9655_ _phi9656_ _ctx9657_)
        (let* ((_key9659_ (gx#core-identifier-key _id9654_))
               (_eid9661_
                (gx#make-binding-id__% _key9659_ '#f _phi9656_ _ctx9657_))
               (_bind9663_
                (if (##structure-instance-of? _ctx9657_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9661_
                     _key9659_
                     _phi9656_
                     _ctx9657_)
                    (if (##structure-instance-of? _ctx9657_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9661_
                         _key9659_
                         _phi9656_)
                        (if (##structure-instance-of?
                             _ctx9657_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid9661_
                             _key9659_
                             _phi9656_)
                            (##structure
                             gx#runtime-binding::t
                             _eid9661_
                             _key9659_
                             _phi9656_))))))
          (gx#bind-identifier!__%
           _id9654_
           _bind9663_
           _rebind?9655_
           _phi9656_
           _ctx9657_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id9669_)
          (let* ((_rebind?9671_ '#f)
                 (_phi9673_ (gx#current-expander-phi))
                 (_ctx9675_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9669_
             _rebind?9671_
             _phi9673_
             _ctx9675_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id9677_ _rebind?9678_)
          (let* ((_phi9680_ (gx#current-expander-phi))
                 (_ctx9682_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9677_
             _rebind?9678_
             _phi9680_
             _ctx9682_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id9684_ _rebind?9685_ _phi9686_)
          (let ((_ctx9688_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9684_
             _rebind?9685_
             _phi9686_
             _ctx9688_))))
      (define gx#core-bind-runtime!
        (lambda _g12462_
          (let ((_g12461_ (length _g12462_)))
            (cond ((##fx= _g12461_ 1)
                   (apply gx#core-bind-runtime!__0 _g12462_))
                  ((##fx= _g12461_ 2)
                   (apply gx#core-bind-runtime!__1 _g12462_))
                  ((##fx= _g12461_ 3)
                   (apply gx#core-bind-runtime!__2 _g12462_))
                  ((##fx= _g12461_ 4)
                   (apply gx#core-bind-runtime!__% _g12462_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g12462_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id9609_ _eid9610_ _rebind?9611_ _phi9612_ _ctx9613_)
        (let* ((_key9615_ (gx#core-identifier-key _id9609_))
               (_bind9617_
                (if (##structure-instance-of? _ctx9613_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9610_
                     _key9615_
                     _phi9612_
                     _ctx9613_)
                    (if (##structure-instance-of? _ctx9613_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9610_
                         _key9615_
                         _phi9612_)
                        (##structure
                         gx#runtime-binding::t
                         _eid9610_
                         _key9615_
                         _phi9612_)))))
          (gx#bind-identifier!__%
           _id9609_
           _bind9617_
           _rebind?9611_
           _phi9612_
           _ctx9613_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id9623_ _eid9624_)
          (let* ((_rebind?9626_ '#f)
                 (_phi9628_ (gx#current-expander-phi))
                 (_ctx9630_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9623_
             _eid9624_
             _rebind?9626_
             _phi9628_
             _ctx9630_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id9632_ _eid9633_ _rebind?9634_)
          (let* ((_phi9636_ (gx#current-expander-phi))
                 (_ctx9638_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9632_
             _eid9633_
             _rebind?9634_
             _phi9636_
             _ctx9638_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id9640_ _eid9641_ _rebind?9642_ _phi9643_)
          (let ((_ctx9645_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9640_
             _eid9641_
             _rebind?9642_
             _phi9643_
             _ctx9645_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g12464_
          (let ((_g12463_ (length _g12464_)))
            (cond ((##fx= _g12463_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g12464_))
                  ((##fx= _g12463_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g12464_))
                  ((##fx= _g12463_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g12464_))
                  ((##fx= _g12463_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g12464_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g12464_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id9569_ _eid9570_ _rebind?9571_ _phi9572_ _ctx9573_)
        (gx#bind-identifier!__%
         _id9569_
         (##structure
          gx#extern-binding::t
          _eid9570_
          (gx#core-identifier-key _id9569_)
          _phi9572_)
         _rebind?9571_
         _phi9572_
         _ctx9573_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id9578_ _eid9579_)
          (let* ((_rebind?9581_ '#f)
                 (_phi9583_ (gx#current-expander-phi))
                 (_ctx9585_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9578_
             _eid9579_
             _rebind?9581_
             _phi9583_
             _ctx9585_))))
      (define gx#core-bind-extern!__1
        (lambda (_id9587_ _eid9588_ _rebind?9589_)
          (let* ((_phi9591_ (gx#current-expander-phi))
                 (_ctx9593_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9587_
             _eid9588_
             _rebind?9589_
             _phi9591_
             _ctx9593_))))
      (define gx#core-bind-extern!__2
        (lambda (_id9595_ _eid9596_ _rebind?9597_ _phi9598_)
          (let ((_ctx9600_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9595_
             _eid9596_
             _rebind?9597_
             _phi9598_
             _ctx9600_))))
      (define gx#core-bind-extern!
        (lambda _g12466_
          (let ((_g12465_ (length _g12466_)))
            (cond ((##fx= _g12465_ 2) (apply gx#core-bind-extern!__0 _g12466_))
                  ((##fx= _g12465_ 3) (apply gx#core-bind-extern!__1 _g12466_))
                  ((##fx= _g12465_ 4) (apply gx#core-bind-extern!__2 _g12466_))
                  ((##fx= _g12465_ 5) (apply gx#core-bind-extern!__% _g12466_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g12466_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id9523_ _e9524_ _rebind?9525_ _phi9526_ _ctx9527_)
        (gx#bind-identifier!__%
         _id9523_
         (let ((_key9532_ (gx#core-identifier-key _id9523_))
               (_e9533_ (if (let ((_$e9529_
                                   (##structure-instance-of?
                                    _e9524_
                                    'gx#expander::t)))
                              (if _$e9529_
                                  _$e9529_
                                  (##structure-instance-of?
                                   _e9524_
                                   'gx#expander-context::t)))
                            _e9524_
                            (##structure
                             gx#user-expander::t
                             _e9524_
                             _ctx9527_
                             _phi9526_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key9532_ '#t _phi9526_ _ctx9527_)
            _key9532_
            _phi9526_
            _e9533_))
         _rebind?9525_
         _phi9526_
         _ctx9527_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id9538_ _e9539_)
          (let* ((_rebind?9541_ '#f)
                 (_phi9543_ (gx#current-expander-phi))
                 (_ctx9545_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9538_
             _e9539_
             _rebind?9541_
             _phi9543_
             _ctx9545_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id9547_ _e9548_ _rebind?9549_)
          (let* ((_phi9551_ (gx#current-expander-phi))
                 (_ctx9553_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9547_
             _e9548_
             _rebind?9549_
             _phi9551_
             _ctx9553_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id9555_ _e9556_ _rebind?9557_ _phi9558_)
          (let ((_ctx9560_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9555_
             _e9556_
             _rebind?9557_
             _phi9558_
             _ctx9560_))))
      (define gx#core-bind-syntax!
        (lambda _g12468_
          (let ((_g12467_ (length _g12468_)))
            (cond ((##fx= _g12467_ 2) (apply gx#core-bind-syntax!__0 _g12468_))
                  ((##fx= _g12467_ 3) (apply gx#core-bind-syntax!__1 _g12468_))
                  ((##fx= _g12467_ 4) (apply gx#core-bind-syntax!__2 _g12468_))
                  ((##fx= _g12467_ 5) (apply gx#core-bind-syntax!__% _g12468_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g12468_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id9506_ _e9507_ _rebind?9508_)
        (gx#core-bind-syntax!__%
         _id9506_
         _e9507_
         _rebind?9508_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id9513_ _e9514_)
          (let ((_rebind?9516_ '#f))
            (gx#core-bind-root-syntax!__% _id9513_ _e9514_ _rebind?9516_))))
      (define gx#core-bind-root-syntax!
        (lambda _g12470_
          (let ((_g12469_ (length _g12470_)))
            (cond ((##fx= _g12469_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g12470_))
                  ((##fx= _g12469_ 3)
                   (apply gx#core-bind-root-syntax!__% _g12470_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g12470_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id9464_ _alias-id9465_ _rebind?9466_ _phi9467_ _ctx9468_)
        (gx#bind-identifier!__%
         _id9464_
         (let ((_key9470_ (gx#core-identifier-key _id9464_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key9470_ '#t _phi9467_ _ctx9468_)
            _key9470_
            _phi9467_
            _alias-id9465_))
         _rebind?9466_
         _phi9467_
         _ctx9468_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id9475_ _alias-id9476_)
          (let* ((_rebind?9478_ '#f)
                 (_phi9480_ (gx#current-expander-phi))
                 (_ctx9482_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9475_
             _alias-id9476_
             _rebind?9478_
             _phi9480_
             _ctx9482_))))
      (define gx#core-bind-alias!__1
        (lambda (_id9484_ _alias-id9485_ _rebind?9486_)
          (let* ((_phi9488_ (gx#current-expander-phi))
                 (_ctx9490_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9484_
             _alias-id9485_
             _rebind?9486_
             _phi9488_
             _ctx9490_))))
      (define gx#core-bind-alias!__2
        (lambda (_id9492_ _alias-id9493_ _rebind?9494_ _phi9495_)
          (let ((_ctx9497_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9492_
             _alias-id9493_
             _rebind?9494_
             _phi9495_
             _ctx9497_))))
      (define gx#core-bind-alias!
        (lambda _g12472_
          (let ((_g12471_ (length _g12472_)))
            (cond ((##fx= _g12471_ 2) (apply gx#core-bind-alias!__0 _g12472_))
                  ((##fx= _g12471_ 3) (apply gx#core-bind-alias!__1 _g12472_))
                  ((##fx= _g12471_ 4) (apply gx#core-bind-alias!__2 _g12472_))
                  ((##fx= _g12471_ 5) (apply gx#core-bind-alias!__% _g12472_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g12472_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key9421_ _syntax?9422_ _phi9423_ _ctx9424_)
        (if (uninterned-symbol? _key9421_)
            (gensym 'L)
            (if (pair? _key9421_)
                (gensym (car _key9421_))
                (if (##structure-instance-of? _ctx9424_ 'gx#top-context::t)
                    (let ((_ns9426_ (gx#core-context-namespace__% _ctx9424_)))
                      (if (if (fxzero? _phi9423_) (not _syntax?9422_) '#f)
                          (if _ns9426_
                              (make-symbol _ns9426_ '"#" _key9421_)
                              _key9421_)
                          (if _syntax?9422_
                              (make-symbol
                               (let ((_$e9428_ _ns9426_))
                                 (if _$e9428_ _$e9428_ '""))
                               '"[:"
                               (number->string _phi9423_)
                               '":]#"
                               _key9421_)
                              (make-symbol
                               (let ((_$e9431_ _ns9426_))
                                 (if _$e9431_ _$e9431_ '""))
                               '"["
                               (number->string _phi9423_)
                               '"]#"
                               _key9421_))))
                    (gensym _key9421_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key9437_)
          (let* ((_syntax?9439_ '#f)
                 (_phi9441_ (gx#current-expander-phi))
                 (_ctx9443_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9437_
             _syntax?9439_
             _phi9441_
             _ctx9443_))))
      (define gx#make-binding-id__1
        (lambda (_key9445_ _syntax?9446_)
          (let* ((_phi9448_ (gx#current-expander-phi))
                 (_ctx9450_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9445_
             _syntax?9446_
             _phi9448_
             _ctx9450_))))
      (define gx#make-binding-id__2
        (lambda (_key9452_ _syntax?9453_ _phi9454_)
          (let ((_ctx9456_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9452_
             _syntax?9453_
             _phi9454_
             _ctx9456_))))
      (define gx#make-binding-id
        (lambda _g12474_
          (let ((_g12473_ (length _g12474_)))
            (cond ((##fx= _g12473_ 1) (apply gx#make-binding-id__0 _g12474_))
                  ((##fx= _g12473_ 2) (apply gx#make-binding-id__1 _g12474_))
                  ((##fx= _g12473_ 3) (apply gx#make-binding-id__2 _g12474_))
                  ((##fx= _g12473_ 4) (apply gx#make-binding-id__% _g12474_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g12474_)))))))))
