(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx11061_)
      (letrec ((_expand-special11063_
                (lambda (_hd11065_ _K11066_ _rest11067_ _r11068_)
                  (_K11066_
                   _rest11067_
                   (cons (gx#core-expand-top _hd11065_) _r11068_)))))
        (gx#core-expand-block__0 _stx11061_ _expand-special11063_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10814_)
      (letrec ((_expand-special10816_
                (lambda (_hd10936_ _K10937_ _rest10938_ _r10939_)
                  (let* ((_K10943_
                          (lambda (_e10941_)
                            (_K10937_ _rest10938_ (cons _e10941_ _r10939_))))
                         (_e1094410973_ _hd10936_)
                         (_E1096810977_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1094410973_)))
                         (_E1096410989_
                          (lambda ()
                            (if (gx#stx-pair? _e1094410973_)
                                (let ((_e1096910981_
                                       (gx#syntax-e _e1094410973_)))
                                  (let ((_hd1097010984_ (##car _e1096910981_))
                                        (_tl1097110986_ (##cdr _e1096910981_)))
                                    (if (if (gx#identifier? _hd1097010984_)
                                            (gx#core-identifier=?
                                             _hd1097010984_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10943_
                                             (gx#core-expand-define-runtime%
                                              _hd10936_))
                                            (_E1096810977_))
                                        (_E1096810977_))))
                                (_E1096810977_))))
                         (_E1096011001_
                          (lambda ()
                            (if (gx#stx-pair? _e1094410973_)
                                (let ((_e1096510993_
                                       (gx#syntax-e _e1094410973_)))
                                  (let ((_hd1096610996_ (##car _e1096510993_))
                                        (_tl1096710998_ (##cdr _e1096510993_)))
                                    (if (if (gx#identifier? _hd1096610996_)
                                            (gx#core-identifier=?
                                             _hd1096610996_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10943_
                                             (gx#core-expand-define-alias%
                                              _hd10936_))
                                            (_E1096410989_))
                                        (_E1096410989_))))
                                (_E1096410989_))))
                         (_E1095011013_
                          (lambda ()
                            (if (gx#stx-pair? _e1094410973_)
                                (let ((_e1096111005_
                                       (gx#syntax-e _e1094410973_)))
                                  (let ((_hd1096211008_ (##car _e1096111005_))
                                        (_tl1096311010_ (##cdr _e1096111005_)))
                                    (if (if (gx#identifier? _hd1096211008_)
                                            (gx#core-identifier=?
                                             _hd1096211008_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10943_
                                             (gx#core-expand-define-syntax%
                                              _hd10936_))
                                            (_E1096011001_))
                                        (_E1096011001_))))
                                (_E1096011001_))))
                         (_E1094611045_
                          (lambda ()
                            (if (gx#stx-pair? _e1094410973_)
                                (let ((_e1095111017_
                                       (gx#syntax-e _e1094410973_)))
                                  (let ((_hd1095211020_ (##car _e1095111017_))
                                        (_tl1095311022_ (##cdr _e1095111017_)))
                                    (if (if (gx#identifier? _hd1095211020_)
                                            (gx#core-identifier=?
                                             _hd1095211020_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1095311022_)
                                            (let ((_e1095411025_
                                                   (gx#syntax-e
                                                    _tl1095311022_)))
                                              (let ((_hd1095511028_
                                                     (##car _e1095411025_))
                                                    (_tl1095611030_
                                                     (##cdr _e1095411025_)))
                                                (let ((_hd-bind11033_
                                                       _hd1095511028_))
                                                  (if (gx#stx-pair?
                                                       _tl1095611030_)
                                                      (let ((_e1095711035_
                                                             (gx#syntax-e
                                                              _tl1095611030_)))
                                                        (let ((_hd1095811038_
                                                               (##car _e1095711035_))
                                                              (_tl1095911040_
                                                               (##cdr _e1095711035_)))
                                                          (let ((_expr11043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1095811038_))
                    (if (gx#stx-null? _tl1095911040_)
                        (if (gx#core-bind-values? _hd-bind11033_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind11033_)
                              (_K10943_ _hd10936_))
                            (_E1095011013_))
                        (_E1095011013_)))))
              (_E1095011013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1095011013_))
                                        (_E1095011013_))))
                                (_E1095011013_))))
                         (_E1094511057_
                          (lambda ()
                            (if (gx#stx-pair? _e1094410973_)
                                (let ((_e1094711049_
                                       (gx#syntax-e _e1094410973_)))
                                  (let ((_hd1094811052_ (##car _e1094711049_))
                                        (_tl1094911054_ (##cdr _e1094711049_)))
                                    (if (if (gx#identifier? _hd1094811052_)
                                            (gx#core-identifier=?
                                             _hd1094811052_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10943_
                                             (gx#core-expand-begin-syntax%
                                              _hd10936_))
                                            (_E1094611045_))
                                        (_E1094611045_))))
                                (_E1094611045_)))))
                    (_E1094511057_))))
               (_eval-body10817_
                (lambda (_rbody10825_)
                  (let _lp10827_ ((_rest10829_ _rbody10825_)
                                  (_body10830_ '())
                                  (_ebody10831_ '()))
                    (let* ((_rest1083210840_ _rest10829_)
                           (_else1083410848_
                            (lambda ()
                              (values _body10830_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10831_)
                                        (gx#stx-source _stx10814_))))))
                           (_K1083610924_
                            (lambda (_rest10851_ _hd10852_)
                              (let* ((_e1085310870_ _hd10852_)
                                     (_E1086510874_
                                      (lambda ()
                                        (_lp10827_
                                         _rest10851_
                                         (cons _hd10852_ _body10830_)
                                         (cons _hd10852_ _ebody10831_))))
                                     (_E1085510886_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1085310870_)
                                            (let ((_e1086610878_
                                                   (gx#syntax-e
                                                    _e1085310870_)))
                                              (let ((_hd1086710881_
                                                     (##car _e1086610878_))
                                                    (_tl1086810883_
                                                     (##cdr _e1086610878_)))
                                                (if (if (gx#identifier?
                                                         _hd1086710881_)
                                                        (gx#core-identifier=?
                                                         _hd1086710881_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10827_
                                                         _rest10851_
                                                         (cons _hd10852_
                                                               _body10830_)
                                                         _ebody10831_)
                                                        (_E1086510874_))
                                                    (_E1086510874_))))
                                            (_E1086510874_))))
                                     (_E1085410920_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1085310870_)
                                            (let ((_e1085610890_
                                                   (gx#syntax-e
                                                    _e1085310870_)))
                                              (let ((_hd1085710893_
                                                     (##car _e1085610890_))
                                                    (_tl1085810895_
                                                     (##cdr _e1085610890_)))
                                                (if (if (gx#identifier?
                                                         _hd1085710893_)
                                                        (gx#core-identifier=?
                                                         _hd1085710893_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1085810895_)
                                                        (let ((_e1085910898_
                                                               (gx#syntax-e
                                                                _tl1085810895_)))
                                                          (let ((_hd1086010901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1085910898_))
                        (_tl1086110903_ (##cdr _e1085910898_)))
                    (let ((_hd-bind10906_ _hd1086010901_))
                      (if (gx#stx-pair? _tl1086110903_)
                          (let ((_e1086210908_ (gx#syntax-e _tl1086110903_)))
                            (let ((_hd1086310911_ (##car _e1086210908_))
                                  (_tl1086410913_ (##cdr _e1086210908_)))
                              (let ((_expr10916_ _hd1086310911_))
                                (if (gx#stx-null? _tl1086410913_)
                                    (if '#t
                                        (let ((_ehd10918_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10906_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10916_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10852_))))
                                          (_lp10827_
                                           _rest10851_
                                           (cons _ehd10918_ _body10830_)
                                           (cons _ehd10918_ _ebody10831_)))
                                        (_E1085510886_))
                                    (_E1085510886_)))))
                          (_E1085510886_)))))
                (_E1085510886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1085510886_))))
                                            (_E1085510886_)))))
                                (_E1085410920_)))))
                      (if (##pair? _rest1083210840_)
                          (let ((_hd1083710927_ (##car _rest1083210840_))
                                (_tl1083810929_ (##cdr _rest1083210840_)))
                            (let* ((_hd10932_ _hd1083710927_)
                                   (_rest10934_ _tl1083810929_))
                              (_K1083610924_ _rest10934_ _hd10932_)))
                          (_else1083410848_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10820_
                   (gx#core-expand-block__1
                    _stx10814_
                    _expand-special10816_
                    '#f))
                  (_g11084_ (_eval-body10817_ _rbody10820_)))
             (begin
               (let ((_g11085_
                      (if (##values? _g11084_) (##vector-length _g11084_) 1)))
                 (if (not (##fx= _g11085_ 2))
                     (error "Context expects 2 values" _g11085_)))
               (let ((_expanded-body10822_ (##vector-ref _g11084_ 0))
                     (_value10823_ (##vector-ref _g11084_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10822_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10823_ '())))
                  (gx#stx-source _stx10814_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10784_)
      (let* ((_e1078510792_ _stx10784_)
             (_E1078710796_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1078510792_)))
             (_E1078610810_
              (lambda ()
                (if (gx#stx-pair? _e1078510792_)
                    (let ((_e1078810800_ (gx#syntax-e _e1078510792_)))
                      (let ((_hd1078910803_ (##car _e1078810800_))
                            (_tl1079010805_ (##cdr _e1078810800_)))
                        (let ((_body10808_ _tl1079010805_))
                          (if (gx#stx-list? _body10808_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10808_)
                               (gx#stx-source _stx10784_))
                              (_E1078710796_)))))
                    (_E1078710796_)))))
        (_E1078610810_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10782_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10782_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10728_)
      (let* ((_e1072910742_ _stx10728_)
             (_E1073110746_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1072910742_)))
             (_E1073010778_
              (lambda ()
                (if (gx#stx-pair? _e1072910742_)
                    (let ((_e1073210750_ (gx#syntax-e _e1072910742_)))
                      (let ((_hd1073310753_ (##car _e1073210750_))
                            (_tl1073410755_ (##cdr _e1073210750_)))
                        (if (gx#stx-pair? _tl1073410755_)
                            (let ((_e1073510758_ (gx#syntax-e _tl1073410755_)))
                              (let ((_hd1073610761_ (##car _e1073510758_))
                                    (_tl1073710763_ (##cdr _e1073510758_)))
                                (let ((_ann10766_ _hd1073610761_))
                                  (if (gx#stx-pair? _tl1073710763_)
                                      (let ((_e1073810768_
                                             (gx#syntax-e _tl1073710763_)))
                                        (let ((_hd1073910771_
                                               (##car _e1073810768_))
                                              (_tl1074010773_
                                               (##cdr _e1073810768_)))
                                          (let ((_expr10776_ _hd1073910771_))
                                            (if (gx#stx-null? _tl1074010773_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann10766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr10776_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10728_))
                                                    (_E1073110746_))
                                                (_E1073110746_)))))
                                      (_E1073110746_)))))
                            (_E1073110746_))))
                    (_E1073110746_)))))
        (_E1073010778_))))
  (define gx#core-expand-local-block
    (lambda (_stx10452_ _body10453_)
      (letrec ((_expand-special10455_
                (lambda (_hd10723_ _K10724_ _rest10725_ _r10726_)
                  (_K10724_
                   '()
                   (cons (_expand-internal10456_ _hd10723_ _rest10725_)
                         _r10726_))))
               (_expand-internal10456_
                (lambda (_hd10719_ _rest10720_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10458_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd10719_ _rest10720_))
                        (gx#stx-source _stx10452_))
                       _expand-internal-special10457_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj11078 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj11078)
                       __obj11078)))))
               (_expand-internal-special10457_
                (lambda (_hd10614_ _K10615_ _rest10616_ _r10617_)
                  (let* ((_e1061810643_ _hd10614_)
                         (_E1063810647_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1061810643_)))
                         (_E1063410659_
                          (lambda ()
                            (if (gx#stx-pair? _e1061810643_)
                                (let ((_e1063910651_
                                       (gx#syntax-e _e1061810643_)))
                                  (let ((_hd1064010654_ (##car _e1063910651_))
                                        (_tl1064110656_ (##cdr _e1063910651_)))
                                    (if (if (gx#identifier? _hd1064010654_)
                                            (gx#core-identifier=?
                                             _hd1064010654_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10615_
                                             _rest10616_
                                             (cons (gx#core-expand-declare%
                                                    _hd10614_)
                                                   _r10617_))
                                            (_E1063810647_))
                                        (_E1063810647_))))
                                (_E1063810647_))))
                         (_E1063010671_
                          (lambda ()
                            (if (gx#stx-pair? _e1061810643_)
                                (let ((_e1063510663_
                                       (gx#syntax-e _e1061810643_)))
                                  (let ((_hd1063610666_ (##car _e1063510663_))
                                        (_tl1063710668_ (##cdr _e1063510663_)))
                                    (if (if (gx#identifier? _hd1063610666_)
                                            (gx#core-identifier=?
                                             _hd1063610666_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10614_)
                                              (_K10615_ _rest10616_ _r10617_))
                                            (_E1063410659_))
                                        (_E1063410659_))))
                                (_E1063410659_))))
                         (_E1062010683_
                          (lambda ()
                            (if (gx#stx-pair? _e1061810643_)
                                (let ((_e1063110675_
                                       (gx#syntax-e _e1061810643_)))
                                  (let ((_hd1063210678_ (##car _e1063110675_))
                                        (_tl1063310680_ (##cdr _e1063110675_)))
                                    (if (if (gx#identifier? _hd1063210678_)
                                            (gx#core-identifier=?
                                             _hd1063210678_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10614_)
                                              (_K10615_ _rest10616_ _r10617_))
                                            (_E1063010671_))
                                        (_E1063010671_))))
                                (_E1063010671_))))
                         (_E1061910715_
                          (lambda ()
                            (if (gx#stx-pair? _e1061810643_)
                                (let ((_e1062110687_
                                       (gx#syntax-e _e1061810643_)))
                                  (let ((_hd1062210690_ (##car _e1062110687_))
                                        (_tl1062310692_ (##cdr _e1062110687_)))
                                    (if (if (gx#identifier? _hd1062210690_)
                                            (gx#core-identifier=?
                                             _hd1062210690_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1062310692_)
                                            (let ((_e1062410695_
                                                   (gx#syntax-e
                                                    _tl1062310692_)))
                                              (let ((_hd1062510698_
                                                     (##car _e1062410695_))
                                                    (_tl1062610700_
                                                     (##cdr _e1062410695_)))
                                                (let ((_hd-bind10703_
                                                       _hd1062510698_))
                                                  (if (gx#stx-pair?
                                                       _tl1062610700_)
                                                      (let ((_e1062710705_
                                                             (gx#syntax-e
                                                              _tl1062610700_)))
                                                        (let ((_hd1062810708_
                                                               (##car _e1062710705_))
                                                              (_tl1062910710_
                                                               (##cdr _e1062710705_)))
                                                          (let ((_expr10713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1062810708_))
                    (if (gx#stx-null? _tl1062910710_)
                        (if (gx#core-bind-values? _hd-bind10703_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10703_)
                              (_K10615_ _rest10616_ (cons _hd10614_ _r10617_)))
                            (_E1062010683_))
                        (_E1062010683_)))))
              (_E1062010683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1062010683_))
                                        (_E1062010683_))))
                                (_E1062010683_)))))
                    (_E1061910715_))))
               (_wrap-internal10458_
                (lambda (_rbody10460_)
                  (let _lp10462_ ((_rest10464_ _rbody10460_)
                                  (_decls10465_ '())
                                  (_bind10466_ '())
                                  (_body10467_ '()))
                    (let* ((_e1046810475_ _rest10464_)
                           (_E1047010524_
                            (lambda ()
                              (let* ((_body10519_
                                      (let* ((_body1047810488_ _body10467_)
                                             (_else1048110496_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10467_)
                                                 (gx#stx-source _stx10452_)))))
                                        (let ((_K1048610516_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx10452_)))
                                              (_K1048310502_
                                               (lambda (_expr10500_)
                                                 _expr10500_)))
                                          (let ((_try-match1048010512_
                                                 (lambda ()
                                                   (if (##pair? _body1047810488_)
                                                       (let ((_tl1048510507_
                                                              (##cdr _body1047810488_))
                                                             (_hd1048410505_
                                                              (##car _body1047810488_)))
                                                         (if (##null? _tl1048510507_)
                                                             (let ((_expr10510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1048410505_))
                       (_K1048310502_ _expr10510_))
                     (_else1048110496_)))
               (_else1048110496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1047810488_)
                                                (_K1048610516_)
                                                (_try-match1048010512_))))))
                                     (_body10521_
                                      (if (null? _bind10466_)
                                          _body10519_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10466_
                                                       (cons _body10519_ '())))
                                           (gx#stx-source _stx10452_)))))
                                (if (null? _decls10465_)
                                    _body10521_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10465_
                                                 (cons _body10521_ '())))
                                     (gx#stx-source _stx10452_))))))
                           (_E1046910610_
                            (lambda ()
                              (if (gx#stx-pair? _e1046810475_)
                                  (let ((_e1047110528_
                                         (gx#syntax-e _e1046810475_)))
                                    (let ((_hd1047210531_
                                           (##car _e1047110528_))
                                          (_tl1047310533_
                                           (##cdr _e1047110528_)))
                                      (let* ((_hd10536_ _hd1047210531_)
                                             (_rest10538_ _tl1047310533_))
                                        (if '#t
                                            (let* ((_e1053910556_ _hd10536_)
                                                   (_E1055110560_
                                                    (lambda ()
                                                      (if (null? _bind10466_)
                                                          (_lp10462_
                                                           _rest10538_
                                                           _decls10465_
                                                           _bind10466_
                                                           (cons _hd10536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10467_))
                  (_lp10462_
                   _rest10538_
                   _decls10465_
                   (cons (cons '#f (cons _hd10536_ '())) _bind10466_)
                   _body10467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1054110574_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1053910556_)
                                                          (let ((_e1055210564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1053910556_)))
                    (let ((_hd1055310567_ (##car _e1055210564_))
                          (_tl1055410569_ (##cdr _e1055210564_)))
                      (if (if (gx#identifier? _hd1055310567_)
                              (gx#core-identifier=? _hd1055310567_ '%#declare)
                              '#f)
                          (let ((_xdecls10572_ _tl1055410569_))
                            (if '#t
                                (_lp10462_
                                 _rest10538_
                                 (gx#stx-foldr cons _decls10465_ _xdecls10572_)
                                 _bind10466_
                                 _body10467_)
                                (_E1055110560_)))
                          (_E1055110560_))))
                  (_E1055110560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1054010606_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1053910556_)
                                                          (let ((_e1054210578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1053910556_)))
                    (let ((_hd1054310581_ (##car _e1054210578_))
                          (_tl1054410583_ (##cdr _e1054210578_)))
                      (if (if (gx#identifier? _hd1054310581_)
                              (gx#core-identifier=?
                               _hd1054310581_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1054410583_)
                              (let ((_e1054510586_
                                     (gx#syntax-e _tl1054410583_)))
                                (let ((_hd1054610589_ (##car _e1054510586_))
                                      (_tl1054710591_ (##cdr _e1054510586_)))
                                  (let ((_hd-bind10594_ _hd1054610589_))
                                    (if (gx#stx-pair? _tl1054710591_)
                                        (let ((_e1054810596_
                                               (gx#syntax-e _tl1054710591_)))
                                          (let ((_hd1054910599_
                                                 (##car _e1054810596_))
                                                (_tl1055010601_
                                                 (##cdr _e1054810596_)))
                                            (let ((_expr10604_ _hd1054910599_))
                                              (if (gx#stx-null? _tl1055010601_)
                                                  (if '#t
                                                      (_lp10462_
                                                       _rest10538_
                                                       _decls10465_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10594_)
                           (cons (gx#core-expand-expression _expr10604_) '()))
                     _bind10466_)
               _body10467_)
              (_E1054110574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1054110574_)))))
                                        (_E1054110574_)))))
                              (_E1054110574_))
                          (_E1054110574_))))
                  (_E1054110574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1054010606_))
                                            (_E1047010524_)))))
                                  (_E1047010524_)))))
                      (_E1046910610_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10453_)
          (gx#stx-source _stx10452_))
         _expand-special10455_))))
  (define gx#core-expand-declare%
    (lambda (_stx10390_)
      (let* ((_e1039110398_ _stx10390_)
             (_E1039310402_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1039110398_)))
             (_E1039210448_
              (lambda ()
                (if (gx#stx-pair? _e1039110398_)
                    (let ((_e1039410406_ (gx#syntax-e _e1039110398_)))
                      (let ((_hd1039510409_ (##car _e1039410406_))
                            (_tl1039610411_ (##cdr _e1039410406_)))
                        (let ((_body10414_ _tl1039610411_))
                          (if (gx#stx-list? _body10414_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10416_)
                                   (let* ((_e1041710424_ _decl10416_)
                                          (_E1041910428_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1041710424_)))
                                          (_E1041810444_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1041710424_)
                                                 (let ((_e1042010432_
                                                        (gx#syntax-e
                                                         _e1041710424_)))
                                                   (let ((_hd1042110435_
                                                          (##car _e1042010432_))
                                                         (_tl1042210437_
                                                          (##cdr _e1042010432_)))
                                                     (let* ((_head10440_
                                                             _hd1042110435_)
                                                            (_args10442_
                                                             _tl1042210437_))
                                                       (if (gx#stx-list?
                                                            _args10442_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10416_)
                                                           (_E1041910428_)))))
                                                 (_E1041910428_)))))
                                     (_E1041810444_)))
                                 _body10414_))
                               (gx#stx-source _stx10390_))
                              (_E1039310402_)))))
                    (_E1039310402_)))))
        (_E1039210448_))))
  (define gx#core-expand-extern%
    (lambda (_stx10274_)
      (let* ((_e1027510282_ _stx10274_)
             (_E1027710286_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1027510282_)))
             (_E1027610386_
              (lambda ()
                (if (gx#stx-pair? _e1027510282_)
                    (let ((_e1027810290_ (gx#syntax-e _e1027510282_)))
                      (let ((_hd1027910293_ (##car _e1027810290_))
                            (_tl1028010295_ (##cdr _e1027810290_)))
                        (let ((_body10298_ _tl1028010295_))
                          (if (gx#stx-list? _body10298_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind10300_)
                                   (let* ((_e1030110311_ _bind10300_)
                                          (_E1030310315_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1030110311_)))
                                          (_E1030210339_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1030110311_)
                                                 (let ((_e1030410319_
                                                        (gx#syntax-e
                                                         _e1030110311_)))
                                                   (let ((_hd1030510322_
                                                          (##car _e1030410319_))
                                                         (_tl1030610324_
                                                          (##cdr _e1030410319_)))
                                                     (let ((_id10327_
                                                            _hd1030510322_))
                                                       (if (gx#stx-pair?
                                                            _tl1030610324_)
                                                           (let ((_e1030710329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1030610324_)))
                     (let ((_hd1030810332_ (##car _e1030710329_))
                           (_tl1030910334_ (##cdr _e1030710329_)))
                       (let ((_eid10337_ _hd1030810332_))
                         (if (gx#stx-null? _tl1030910334_)
                             (if (if (gx#identifier? _id10327_)
                                     (gx#identifier? _eid10337_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id10327_
                                  (gx#stx-e _eid10337_))
                                 (_E1030310315_))
                             (_E1030310315_)))))
                   (_E1030310315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1030310315_)))))
                                     (_E1030210339_)))
                                 _body10298_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind10343_)
                                     (let* ((_e1034410354_ _bind10343_)
                                            (_E1034610358_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1034410354_)))
                                            (_E1034510382_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1034410354_)
                                                   (let ((_e1034710362_
                                                          (gx#syntax-e
                                                           _e1034410354_)))
                                                     (let ((_hd1034810365_
                                                            (##car _e1034710362_))
                                                           (_tl1034910367_
                                                            (##cdr _e1034710362_)))
                                                       (let ((_id10370_
                                                              _hd1034810365_))
                                                         (if (gx#stx-pair?
                                                              _tl1034910367_)
                                                             (let ((_e1035010372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1034910367_)))
                       (let ((_hd1035110375_ (##car _e1035010372_))
                             (_tl1035210377_ (##cdr _e1035010372_)))
                         (let ((_eid10380_ _hd1035110375_))
                           (if (gx#stx-null? _tl1035210377_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10370_)
                                         (cons (gx#stx-e _eid10380_) '()))
                                   (_E1034610358_))
                               (_E1034610358_)))))
                     (_E1034610358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1034610358_)))))
                                       (_E1034510382_)))
                                   _body10298_))
                                 (gx#stx-source _stx10274_)))
                              (_E1027710286_)))))
                    (_E1027710286_)))))
        (_E1027610386_))))
  (define gx#core-expand-define-values%
    (lambda (_stx10220_)
      (let* ((_e1022110234_ _stx10220_)
             (_E1022310238_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1022110234_)))
             (_E1022210270_
              (lambda ()
                (if (gx#stx-pair? _e1022110234_)
                    (let ((_e1022410242_ (gx#syntax-e _e1022110234_)))
                      (let ((_hd1022510245_ (##car _e1022410242_))
                            (_tl1022610247_ (##cdr _e1022410242_)))
                        (if (gx#stx-pair? _tl1022610247_)
                            (let ((_e1022710250_ (gx#syntax-e _tl1022610247_)))
                              (let ((_hd1022810253_ (##car _e1022710250_))
                                    (_tl1022910255_ (##cdr _e1022710250_)))
                                (let ((_hd10258_ _hd1022810253_))
                                  (if (gx#stx-pair? _tl1022910255_)
                                      (let ((_e1023010260_
                                             (gx#syntax-e _tl1022910255_)))
                                        (let ((_hd1023110263_
                                               (##car _e1023010260_))
                                              (_tl1023210265_
                                               (##cdr _e1023010260_)))
                                          (let ((_expr10268_ _hd1023110263_))
                                            (if (gx#stx-null? _tl1023210265_)
                                                (if (gx#core-bind-values?
                                                     _hd10258_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd10258_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10258_)
                           (cons (gx#core-expand-expression _expr10268_) '())))
               (gx#stx-source _stx10220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1022310238_))
                                                (_E1022310238_)))))
                                      (_E1022310238_)))))
                            (_E1022310238_))))
                    (_E1022310238_)))))
        (_E1022210270_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx10166_)
      (let* ((_e1016710180_ _stx10166_)
             (_E1016910184_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1016710180_)))
             (_E1016810216_
              (lambda ()
                (if (gx#stx-pair? _e1016710180_)
                    (let ((_e1017010188_ (gx#syntax-e _e1016710180_)))
                      (let ((_hd1017110191_ (##car _e1017010188_))
                            (_tl1017210193_ (##cdr _e1017010188_)))
                        (if (gx#stx-pair? _tl1017210193_)
                            (let ((_e1017310196_ (gx#syntax-e _tl1017210193_)))
                              (let ((_hd1017410199_ (##car _e1017310196_))
                                    (_tl1017510201_ (##cdr _e1017310196_)))
                                (let ((_id10204_ _hd1017410199_))
                                  (if (gx#stx-pair? _tl1017510201_)
                                      (let ((_e1017610206_
                                             (gx#syntax-e _tl1017510201_)))
                                        (let ((_hd1017710209_
                                               (##car _e1017610206_))
                                              (_tl1017810211_
                                               (##cdr _e1017610206_)))
                                          (let ((_binding-id10214_
                                                 _hd1017710209_))
                                            (if (gx#stx-null? _tl1017810211_)
                                                (if (if (gx#identifier?
                                                         _id10204_)
                                                        (gx#identifier?
                                                         _binding-id10214_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id10204_
                                                       (gx#stx-e
                                                        _binding-id10214_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10204_)
                           (cons (gx#core-quote-syntax__0 _binding-id10214_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1016910184_))
                                                (_E1016910184_)))))
                                      (_E1016910184_)))))
                            (_E1016910184_))))
                    (_E1016910184_)))))
        (_E1016810216_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx10109_)
      (let* ((_e1011010123_ _stx10109_)
             (_E1011210127_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1011010123_)))
             (_E1011110162_
              (lambda ()
                (if (gx#stx-pair? _e1011010123_)
                    (let ((_e1011310131_ (gx#syntax-e _e1011010123_)))
                      (let ((_hd1011410134_ (##car _e1011310131_))
                            (_tl1011510136_ (##cdr _e1011310131_)))
                        (if (gx#stx-pair? _tl1011510136_)
                            (let ((_e1011610139_ (gx#syntax-e _tl1011510136_)))
                              (let ((_hd1011710142_ (##car _e1011610139_))
                                    (_tl1011810144_ (##cdr _e1011610139_)))
                                (let ((_id10147_ _hd1011710142_))
                                  (if (gx#stx-pair? _tl1011810144_)
                                      (let ((_e1011910149_
                                             (gx#syntax-e _tl1011810144_)))
                                        (let ((_hd1012010152_
                                               (##car _e1011910149_))
                                              (_tl1012110154_
                                               (##cdr _e1011910149_)))
                                          (let ((_expr10157_ _hd1012010152_))
                                            (if (gx#stx-null? _tl1012110154_)
                                                (if (gx#identifier? _id10147_)
                                                    (let ((_g11086_
                                                           (gx#core-expand-expression+1
                                                            _expr10157_)))
                                                      (begin
                                                        (let ((_g11087_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g11086_)
                           (##vector-length _g11086_)
                           1)))
                  (if (not (##fx= _g11087_ 2))
                      (error "Context expects 2 values" _g11087_)))
                (let ((_e-stx10159_ (##vector-ref _g11086_ 0))
                      (_e10160_ (##vector-ref _g11086_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id10147_ _e10160_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id10147_)
                                 (cons _e-stx10159_ '())))
                     (gx#stx-source _stx10109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1011210127_))
                                                (_E1011210127_)))))
                                      (_E1011210127_)))))
                            (_E1011210127_))))
                    (_E1011210127_)))))
        (_E1011110162_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx10053_)
      (let* ((_e1005410067_ _stx10053_)
             (_E1005610071_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1005410067_)))
             (_E1005510105_
              (lambda ()
                (if (gx#stx-pair? _e1005410067_)
                    (let ((_e1005710075_ (gx#syntax-e _e1005410067_)))
                      (let ((_hd1005810078_ (##car _e1005710075_))
                            (_tl1005910080_ (##cdr _e1005710075_)))
                        (if (gx#stx-pair? _tl1005910080_)
                            (let ((_e1006010083_ (gx#syntax-e _tl1005910080_)))
                              (let ((_hd1006110086_ (##car _e1006010083_))
                                    (_tl1006210088_ (##cdr _e1006010083_)))
                                (let ((_id10091_ _hd1006110086_))
                                  (if (gx#stx-pair? _tl1006210088_)
                                      (let ((_e1006310093_
                                             (gx#syntax-e _tl1006210088_)))
                                        (let ((_hd1006410096_
                                               (##car _e1006310093_))
                                              (_tl1006510098_
                                               (##cdr _e1006310093_)))
                                          (let ((_alias-id10101_
                                                 _hd1006410096_))
                                            (if (gx#stx-null? _tl1006510098_)
                                                (if (if (gx#identifier?
                                                         _id10091_)
                                                        (gx#identifier?
                                                         _alias-id10101_)
                                                        '#f)
                                                    (let ((_alias-id10103_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id10101_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id10091_
                                                         _alias-id10103_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id10091_)
                             (cons _alias-id10103_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1005610071_))
                                                (_E1005610071_)))))
                                      (_E1005610071_)))))
                            (_E1005610071_))))
                    (_E1005610071_)))))
        (_E1005510105_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx9996_ _wrap?9997_)
        (let* ((_e999810008_ _stx9996_)
               (_E1000010012_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e999810008_)))
               (_E999910039_
                (lambda ()
                  (if (gx#stx-pair? _e999810008_)
                      (let ((_e1000110016_ (gx#syntax-e _e999810008_)))
                        (let ((_hd1000210019_ (##car _e1000110016_))
                              (_tl1000310021_ (##cdr _e1000110016_)))
                          (if (gx#stx-pair? _tl1000310021_)
                              (let ((_e1000410024_
                                     (gx#syntax-e _tl1000310021_)))
                                (let ((_hd1000510027_ (##car _e1000410024_))
                                      (_tl1000610029_ (##cdr _e1000410024_)))
                                  (let* ((_hd10032_ _hd1000510027_)
                                         (_body10034_ _tl1000610029_))
                                    (if (gx#core-bind-values? _hd10032_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0
                                              _hd10032_)
                                             (let ((_body10037_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd10032_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9996_
                         _body10034_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9997_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body10037_)
                                                    (gx#stx-source _stx9996_))
                                                   _body10037_))))
                                         gx#current-expander-context
                                         (let ((__obj11079
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11079)
                                             __obj11079)))
                                        (_E1000010012_)))))
                              (_E1000010012_))))
                      (_E1000010012_)))))
          (_E999910039_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx10046_)
          (let ((_wrap?10048_ '#t))
            (gx#core-expand-lambda%__% _stx10046_ _wrap?10048_))))
      (define gx#core-expand-lambda%
        (lambda _g11089_
          (let ((_g11088_ (length _g11089_)))
            (cond ((##fx= _g11088_ 1)
                   (apply gx#core-expand-lambda%__0 _g11089_))
                  ((##fx= _g11088_ 2)
                   (apply gx#core-expand-lambda%__% _g11089_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g11089_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9960_)
      (let* ((_e99619968_ _stx9960_)
             (_E99639972_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99619968_)))
             (_E99629991_
              (lambda ()
                (if (gx#stx-pair? _e99619968_)
                    (let ((_e99649976_ (gx#syntax-e _e99619968_)))
                      (let ((_hd99659979_ (##car _e99649976_))
                            (_tl99669981_ (##cdr _e99649976_)))
                        (let ((_clauses9984_ _tl99669981_))
                          (if (gx#stx-list? _clauses9984_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9986_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9986_)
                                     (let ((_$e9988_
                                            (gx#stx-source _clause9986_)))
                                       (if _$e9988_
                                           _$e9988_
                                           (gx#stx-source _stx9960_))))
                                    '#f))
                                 _clauses9984_))
                               (gx#stx-source _stx9960_))
                              (_E99639972_)))))
                    (_E99639972_)))))
        (_E99629991_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9914_)
      (let* ((_e99159925_ _stx9914_)
             (_E99179929_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99159925_)))
             (_E99169956_
              (lambda ()
                (if (gx#stx-pair? _e99159925_)
                    (let ((_e99189933_ (gx#syntax-e _e99159925_)))
                      (let ((_hd99199936_ (##car _e99189933_))
                            (_tl99209938_ (##cdr _e99189933_)))
                        (if (gx#stx-pair? _tl99209938_)
                            (let ((_e99219941_ (gx#syntax-e _tl99209938_)))
                              (let ((_hd99229944_ (##car _e99219941_))
                                    (_tl99239946_ (##cdr _e99219941_)))
                                (let* ((_hd9949_ _hd99229944_)
                                       (_body9951_ _tl99239946_))
                                  (if (gx#core-expand-let-bind? _hd9949_)
                                      (let ((_expressions9953_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9949_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9949_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9949_
                                                           _expressions9953_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9914_
                         _body9951_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9914_))))
                                         gx#current-expander-context
                                         (let ((__obj11080
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11080)
                                             __obj11080))))
                                      (_E99179929_)))))
                            (_E99179929_))))
                    (_E99179929_)))))
        (_E99169956_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx9859_ _form9860_)
        (let* ((_e98619871_ _stx9859_)
               (_E98639875_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e98619871_)))
               (_E98629900_
                (lambda ()
                  (if (gx#stx-pair? _e98619871_)
                      (let ((_e98649879_ (gx#syntax-e _e98619871_)))
                        (let ((_hd98659882_ (##car _e98649879_))
                              (_tl98669884_ (##cdr _e98649879_)))
                          (if (gx#stx-pair? _tl98669884_)
                              (let ((_e98679887_ (gx#syntax-e _tl98669884_)))
                                (let ((_hd98689890_ (##car _e98679887_))
                                      (_tl98699892_ (##cdr _e98679887_)))
                                  (let* ((_hd9895_ _hd98689890_)
                                         (_body9897_ _tl98699892_))
                                    (if (gx#core-expand-let-bind? _hd9895_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9895_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9860_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9895_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9895_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9859_
                         _body9897_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9859_))))
                                         gx#current-expander-context
                                         (let ((__obj11081
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11081)
                                             __obj11081)))
                                        (_E98639875_)))))
                              (_E98639875_))))
                      (_E98639875_)))))
          (_E98629900_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9907_)
          (let ((_form9909_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx9907_ _form9909_))))
      (define gx#core-expand-letrec-values%
        (lambda _g11091_
          (let ((_g11090_ (length _g11091_)))
            (cond ((##fx= _g11090_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g11091_))
                  ((##fx= _g11090_ 2)
                   (apply gx#core-expand-letrec-values%__% _g11091_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g11091_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9856_)
      (gx#core-expand-letrec-values%__% _stx9856_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9813_)
      (if (gx#stx-list? _stx9813_)
          (gx#stx-andmap
           (lambda (_bind9815_)
             (let* ((_e98169826_ _bind9815_)
                    (_E98189830_ (lambda () '#f))
                    (_E98179852_
                     (lambda ()
                       (if (gx#stx-pair? _e98169826_)
                           (let ((_e98199834_ (gx#syntax-e _e98169826_)))
                             (let ((_hd98209837_ (##car _e98199834_))
                                   (_tl98219839_ (##cdr _e98199834_)))
                               (let ((_hd9842_ _hd98209837_))
                                 (if (gx#stx-pair? _tl98219839_)
                                     (let ((_e98229844_
                                            (gx#syntax-e _tl98219839_)))
                                       (let ((_hd98239847_ (##car _e98229844_))
                                             (_tl98249849_
                                              (##cdr _e98229844_)))
                                         (if (gx#stx-null? _tl98249849_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9842_)
                                                 (_E98189830_))
                                             (_E98189830_))))
                                     (_E98189830_)))))
                           (_E98189830_)))))
               (_E98179852_)))
           _stx9813_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9772_)
      (let* ((_e97739783_ _bind9772_)
             (_E97759787_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97739783_)))
             (_E97749809_
              (lambda ()
                (if (gx#stx-pair? _e97739783_)
                    (let ((_e97769791_ (gx#syntax-e _e97739783_)))
                      (let ((_hd97779794_ (##car _e97769791_))
                            (_tl97789796_ (##cdr _e97769791_)))
                        (if (gx#stx-pair? _tl97789796_)
                            (let ((_e97799799_ (gx#syntax-e _tl97789796_)))
                              (let ((_hd97809802_ (##car _e97799799_))
                                    (_tl97819804_ (##cdr _e97799799_)))
                                (let ((_expr9807_ _hd97809802_))
                                  (if (gx#stx-null? _tl97819804_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9807_)
                                          (_E97759787_))
                                      (_E97759787_)))))
                            (_E97759787_))))
                    (_E97759787_)))))
        (_E97749809_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9731_)
      (let* ((_e97329742_ _bind9731_)
             (_E97349746_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97329742_)))
             (_E97339768_
              (lambda ()
                (if (gx#stx-pair? _e97329742_)
                    (let ((_e97359750_ (gx#syntax-e _e97329742_)))
                      (let ((_hd97369753_ (##car _e97359750_))
                            (_tl97379755_ (##cdr _e97359750_)))
                        (let ((_hd9758_ _hd97369753_))
                          (if (gx#stx-pair? _tl97379755_)
                              (let ((_e97389760_ (gx#syntax-e _tl97379755_)))
                                (let ((_hd97399763_ (##car _e97389760_))
                                      (_tl97409765_ (##cdr _e97389760_)))
                                  (if (gx#stx-null? _tl97409765_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9758_)
                                          (_E97349746_))
                                      (_E97349746_))))
                              (_E97349746_)))))
                    (_E97349746_)))))
        (_E97339768_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9689_ _expr9690_)
      (let* ((_e96919701_ _bind9689_)
             (_E96939705_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96919701_)))
             (_E96929727_
              (lambda ()
                (if (gx#stx-pair? _e96919701_)
                    (let ((_e96949709_ (gx#syntax-e _e96919701_)))
                      (let ((_hd96959712_ (##car _e96949709_))
                            (_tl96969714_ (##cdr _e96949709_)))
                        (let ((_hd9717_ _hd96959712_))
                          (if (gx#stx-pair? _tl96969714_)
                              (let ((_e96979719_ (gx#syntax-e _tl96969714_)))
                                (let ((_hd96989722_ (##car _e96979719_))
                                      (_tl96999724_ (##cdr _e96979719_)))
                                  (if (gx#stx-null? _tl96999724_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9717_)
                                                (cons _expr9690_ '()))
                                          (_E96939705_))
                                      (_E96939705_))))
                              (_E96939705_)))))
                    (_E96939705_)))))
        (_E96929727_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9643_)
      (let* ((_e96449654_ _stx9643_)
             (_E96469658_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96449654_)))
             (_E96459685_
              (lambda ()
                (if (gx#stx-pair? _e96449654_)
                    (let ((_e96479662_ (gx#syntax-e _e96449654_)))
                      (let ((_hd96489665_ (##car _e96479662_))
                            (_tl96499667_ (##cdr _e96479662_)))
                        (if (gx#stx-pair? _tl96499667_)
                            (let ((_e96509670_ (gx#syntax-e _tl96499667_)))
                              (let ((_hd96519673_ (##car _e96509670_))
                                    (_tl96529675_ (##cdr _e96509670_)))
                                (let* ((_hd9678_ _hd96519673_)
                                       (_body9680_ _tl96529675_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9678_)
                                      (let ((_expanders9682_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9678_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9678_
                                              _expanders9682_)
                                             (gx#core-expand-local-block
                                              _stx9643_
                                              _body9680_)))
                                         gx#current-expander-context
                                         (let ((__obj11082
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11082)
                                             __obj11082))))
                                      (_E96469658_)))))
                            (_E96469658_))))
                    (_E96469658_)))))
        (_E96459685_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9592_)
      (let* ((_e95939603_ _stx9592_)
             (_E95959607_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95939603_)))
             (_E95949639_
              (lambda ()
                (if (gx#stx-pair? _e95939603_)
                    (let ((_e95969611_ (gx#syntax-e _e95939603_)))
                      (let ((_hd95979614_ (##car _e95969611_))
                            (_tl95989616_ (##cdr _e95969611_)))
                        (if (gx#stx-pair? _tl95989616_)
                            (let ((_e95999619_ (gx#syntax-e _tl95989616_)))
                              (let ((_hd96009622_ (##car _e95999619_))
                                    (_tl96019624_ (##cdr _e95999619_)))
                                (let* ((_hd9627_ _hd96009622_)
                                       (_body9629_ _tl96019624_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9627_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9627_
                                            (make-list
                                             (gx#stx-length _hd9627_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g96319634_ _g96329636_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g96319634_
                                               _g96329636_
                                               '#t))
                                            _hd9627_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9627_))
                                           (gx#core-expand-local-block
                                            _stx9592_
                                            _body9629_)))
                                       gx#current-expander-context
                                       (let ((__obj11083
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj11083)
                                           __obj11083)))
                                      (_E95959607_)))))
                            (_E95959607_))))
                    (_E95959607_)))))
        (_E95949639_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9549_)
      (if (gx#stx-list? _stx9549_)
          (gx#stx-andmap
           (lambda (_bind9551_)
             (let* ((_e95529562_ _bind9551_)
                    (_E95549566_ (lambda () '#f))
                    (_E95539588_
                     (lambda ()
                       (if (gx#stx-pair? _e95529562_)
                           (let ((_e95559570_ (gx#syntax-e _e95529562_)))
                             (let ((_hd95569573_ (##car _e95559570_))
                                   (_tl95579575_ (##cdr _e95559570_)))
                               (let ((_hd9578_ _hd95569573_))
                                 (if (gx#stx-pair? _tl95579575_)
                                     (let ((_e95589580_
                                            (gx#syntax-e _tl95579575_)))
                                       (let ((_hd95599583_ (##car _e95589580_))
                                             (_tl95609585_
                                              (##cdr _e95589580_)))
                                         (if (gx#stx-null? _tl95609585_)
                                             (if '#t
                                                 (gx#identifier? _hd9578_)
                                                 (_E95549566_))
                                             (_E95549566_))))
                                     (_E95549566_)))))
                           (_E95549566_)))))
               (_E95539588_)))
           _stx9549_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9506_)
      (let* ((_e95079517_ _bind9506_)
             (_E95099521_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95079517_)))
             (_E95089545_
              (lambda ()
                (if (gx#stx-pair? _e95079517_)
                    (let ((_e95109525_ (gx#syntax-e _e95079517_)))
                      (let ((_hd95119528_ (##car _e95109525_))
                            (_tl95129530_ (##cdr _e95109525_)))
                        (if (gx#stx-pair? _tl95129530_)
                            (let ((_e95139533_ (gx#syntax-e _tl95129530_)))
                              (let ((_hd95149536_ (##car _e95139533_))
                                    (_tl95159538_ (##cdr _e95139533_)))
                                (let ((_expr9541_ _hd95149536_))
                                  (if (gx#stx-null? _tl95159538_)
                                      (if '#t
                                          (let ((_g11092_
                                                 (gx#core-expand-expression+1
                                                  _expr9541_)))
                                            (begin
                                              (let ((_g11093_
                                                     (if (##values? _g11092_)
                                                         (##vector-length
                                                          _g11092_)
                                                         1)))
                                                (if (not (##fx= _g11093_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11093_)))
                                              (let ((_e9543_ (##vector-ref
                                                              _g11092_
                                                              1)))
                                                _e9543_)))
                                          (_E95099521_))
                                      (_E95099521_)))))
                            (_E95099521_))))
                    (_E95099521_)))))
        (_E95089545_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind9451_ _e9452_ _rebind?9453_)
        (let* ((_e94549464_ _bind9451_)
               (_E94569468_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e94549464_)))
               (_E94559490_
                (lambda ()
                  (if (gx#stx-pair? _e94549464_)
                      (let ((_e94579472_ (gx#syntax-e _e94549464_)))
                        (let ((_hd94589475_ (##car _e94579472_))
                              (_tl94599477_ (##cdr _e94579472_)))
                          (let ((_id9480_ _hd94589475_))
                            (if (gx#stx-pair? _tl94599477_)
                                (let ((_e94609482_ (gx#syntax-e _tl94599477_)))
                                  (let ((_hd94619485_ (##car _e94609482_))
                                        (_tl94629487_ (##cdr _e94609482_)))
                                    (if (gx#stx-null? _tl94629487_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9480_
                                             _e9452_
                                             _rebind?9453_)
                                            (_E94569468_))
                                        (_E94569468_))))
                                (_E94569468_)))))
                      (_E94569468_)))))
          (_E94559490_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9497_ _e9498_)
          (let ((_rebind?9500_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind9497_
             _e9498_
             _rebind?9500_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g11095_
          (let ((_g11094_ (length _g11095_)))
            (cond ((##fx= _g11094_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g11095_))
                  ((##fx= _g11094_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g11095_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g11095_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9409_)
      (let* ((_e94109420_ _stx9409_)
             (_E94129424_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94109420_)))
             (_E94119446_
              (lambda ()
                (if (gx#stx-pair? _e94109420_)
                    (let ((_e94139428_ (gx#syntax-e _e94109420_)))
                      (let ((_hd94149431_ (##car _e94139428_))
                            (_tl94159433_ (##cdr _e94139428_)))
                        (if (gx#stx-pair? _tl94159433_)
                            (let ((_e94169436_ (gx#syntax-e _tl94159433_)))
                              (let ((_hd94179439_ (##car _e94169436_))
                                    (_tl94189441_ (##cdr _e94169436_)))
                                (let ((_expr9444_ _hd94179439_))
                                  (if (gx#stx-null? _tl94189441_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9444_)
                                          (_E94129424_))
                                      (_E94129424_)))))
                            (_E94129424_))))
                    (_E94129424_)))))
        (_E94119446_))))
  (define gx#core-expand-quote%
    (lambda (_stx9368_)
      (let* ((_e93699379_ _stx9368_)
             (_E93719383_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93699379_)))
             (_E93709405_
              (lambda ()
                (if (gx#stx-pair? _e93699379_)
                    (let ((_e93729387_ (gx#syntax-e _e93699379_)))
                      (let ((_hd93739390_ (##car _e93729387_))
                            (_tl93749392_ (##cdr _e93729387_)))
                        (if (gx#stx-pair? _tl93749392_)
                            (let ((_e93759395_ (gx#syntax-e _tl93749392_)))
                              (let ((_hd93769398_ (##car _e93759395_))
                                    (_tl93779400_ (##cdr _e93759395_)))
                                (let ((_e9403_ _hd93769398_))
                                  (if (gx#stx-null? _tl93779400_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9403_)
                                                       '()))
                                           (gx#stx-source _stx9368_))
                                          (_E93719383_))
                                      (_E93719383_)))))
                            (_E93719383_))))
                    (_E93719383_)))))
        (_E93709405_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx9327_)
      (let* ((_e93289338_ _stx9327_)
             (_E93309342_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93289338_)))
             (_E93299364_
              (lambda ()
                (if (gx#stx-pair? _e93289338_)
                    (let ((_e93319346_ (gx#syntax-e _e93289338_)))
                      (let ((_hd93329349_ (##car _e93319346_))
                            (_tl93339351_ (##cdr _e93319346_)))
                        (if (gx#stx-pair? _tl93339351_)
                            (let ((_e93349354_ (gx#syntax-e _tl93339351_)))
                              (let ((_hd93359357_ (##car _e93349354_))
                                    (_tl93369359_ (##cdr _e93349354_)))
                                (let ((_e9362_ _hd93359357_))
                                  (if (gx#stx-null? _tl93369359_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9362_)
                                                       '()))
                                           (gx#stx-source _stx9327_))
                                          (_E93309342_))
                                      (_E93309342_)))))
                            (_E93309342_))))
                    (_E93309342_)))))
        (_E93299364_))))
  (define gx#core-expand-call%
    (lambda (_stx9284_)
      (let* ((_e92859295_ _stx9284_)
             (_E92879299_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92859295_)))
             (_E92869323_
              (lambda ()
                (if (gx#stx-pair? _e92859295_)
                    (let ((_e92889303_ (gx#syntax-e _e92859295_)))
                      (let ((_hd92899306_ (##car _e92889303_))
                            (_tl92909308_ (##cdr _e92889303_)))
                        (if (gx#stx-pair? _tl92909308_)
                            (let ((_e92919311_ (gx#syntax-e _tl92909308_)))
                              (let ((_hd92929314_ (##car _e92919311_))
                                    (_tl92939316_ (##cdr _e92919311_)))
                                (let* ((_rator9319_ _hd92929314_)
                                       (_args9321_ _tl92939316_))
                                  (if (gx#stx-list? _args9321_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator9319_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args9321_))
                                       (gx#stx-source _stx9284_))
                                      (_E92879299_)))))
                            (_E92879299_))))
                    (_E92879299_)))))
        (_E92869323_))))
  (define gx#core-expand-if%
    (lambda (_stx9217_)
      (let* ((_e92189234_ _stx9217_)
             (_E92209238_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92189234_)))
             (_E92199280_
              (lambda ()
                (if (gx#stx-pair? _e92189234_)
                    (let ((_e92219242_ (gx#syntax-e _e92189234_)))
                      (let ((_hd92229245_ (##car _e92219242_))
                            (_tl92239247_ (##cdr _e92219242_)))
                        (if (gx#stx-pair? _tl92239247_)
                            (let ((_e92249250_ (gx#syntax-e _tl92239247_)))
                              (let ((_hd92259253_ (##car _e92249250_))
                                    (_tl92269255_ (##cdr _e92249250_)))
                                (let ((_test9258_ _hd92259253_))
                                  (if (gx#stx-pair? _tl92269255_)
                                      (let ((_e92279260_
                                             (gx#syntax-e _tl92269255_)))
                                        (let ((_hd92289263_
                                               (##car _e92279260_))
                                              (_tl92299265_
                                               (##cdr _e92279260_)))
                                          (let ((_K9268_ _hd92289263_))
                                            (if (gx#stx-pair? _tl92299265_)
                                                (let ((_e92309270_
                                                       (gx#syntax-e
                                                        _tl92299265_)))
                                                  (let ((_hd92319273_
                                                         (##car _e92309270_))
                                                        (_tl92329275_
                                                         (##cdr _e92309270_)))
                                                    (let ((_E9278_ _hd92319273_))
                                                      (if (gx#stx-null?
                                                           _tl92329275_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test9258_)
                                   (cons (gx#core-expand-expression _K9268_)
                                         (cons (gx#core-expand-expression
                                                _E9278_)
                                               '()))))
                       (gx#stx-source _stx9217_))
                      (_E92209238_))
                  (_E92209238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92209238_)))))
                                      (_E92209238_)))))
                            (_E92209238_))))
                    (_E92209238_)))))
        (_E92199280_))))
  (define gx#core-expand-ref%
    (lambda (_stx9176_)
      (let* ((_e91779187_ _stx9176_)
             (_E91799191_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91779187_)))
             (_E91789213_
              (lambda ()
                (if (gx#stx-pair? _e91779187_)
                    (let ((_e91809195_ (gx#syntax-e _e91779187_)))
                      (let ((_hd91819198_ (##car _e91809195_))
                            (_tl91829200_ (##cdr _e91809195_)))
                        (if (gx#stx-pair? _tl91829200_)
                            (let ((_e91839203_ (gx#syntax-e _tl91829200_)))
                              (let ((_hd91849206_ (##car _e91839203_))
                                    (_tl91859208_ (##cdr _e91839203_)))
                                (let ((_id9211_ _hd91849206_))
                                  (if (gx#stx-null? _tl91859208_)
                                      (if (gx#core-runtime-ref? _id9211_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id9211_
                                                        _stx9176_)
                                                       '()))
                                           (gx#stx-source _stx9176_))
                                          (_E91799191_))
                                      (_E91799191_)))))
                            (_E91799191_))))
                    (_E91799191_)))))
        (_E91789213_))))
  (define gx#core-expand-setq%
    (lambda (_stx9122_)
      (let* ((_e91239136_ _stx9122_)
             (_E91259140_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91239136_)))
             (_E91249172_
              (lambda ()
                (if (gx#stx-pair? _e91239136_)
                    (let ((_e91269144_ (gx#syntax-e _e91239136_)))
                      (let ((_hd91279147_ (##car _e91269144_))
                            (_tl91289149_ (##cdr _e91269144_)))
                        (if (gx#stx-pair? _tl91289149_)
                            (let ((_e91299152_ (gx#syntax-e _tl91289149_)))
                              (let ((_hd91309155_ (##car _e91299152_))
                                    (_tl91319157_ (##cdr _e91299152_)))
                                (let ((_id9160_ _hd91309155_))
                                  (if (gx#stx-pair? _tl91319157_)
                                      (let ((_e91329162_
                                             (gx#syntax-e _tl91319157_)))
                                        (let ((_hd91339165_
                                               (##car _e91329162_))
                                              (_tl91349167_
                                               (##cdr _e91329162_)))
                                          (let ((_expr9170_ _hd91339165_))
                                            (if (gx#stx-null? _tl91349167_)
                                                (if (gx#core-runtime-ref?
                                                     _id9160_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id9160_
                          _stx9122_)
                         (cons (gx#core-expand-expression _expr9170_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx9122_))
                                                    (_E91259140_))
                                                (_E91259140_)))))
                                      (_E91259140_)))))
                            (_E91259140_))))
                    (_E91259140_)))))
        (_E91249172_))))
  (define gx#macro-expand-extern
    (lambda (_stx8970_)
      (letrec ((_generate8972_
                (lambda (_body9002_)
                  (let _lp9004_ ((_rest9006_ _body9002_)
                                 (_ns9007_ (gx#core-context-namespace__0))
                                 (_r9008_ '()))
                    (let* ((_e90099024_ _rest9006_)
                           (_E90229028_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e90099024_)))
                           (_E90189032_
                            (lambda ()
                              (if (gx#stx-null? _e90099024_)
                                  (if '#t (reverse _r9008_) (_E90229028_))
                                  (_E90229028_))))
                           (_E90119089_
                            (lambda ()
                              (if (gx#stx-pair? _e90099024_)
                                  (let ((_e90199036_
                                         (gx#syntax-e _e90099024_)))
                                    (let ((_hd90209039_ (##car _e90199036_))
                                          (_tl90219041_ (##cdr _e90199036_)))
                                      (let* ((_hd9044_ _hd90209039_)
                                             (_rest9046_ _tl90219041_))
                                        (if '#t
                                            (if (gx#identifier? _hd9044_)
                                                (_lp9004_
                                                 _rest9046_
                                                 _ns9007_
                                                 (cons (cons _hd9044_
                                                             (cons (if _ns9007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd9044_
                                _ns9007_
                                '"#"
                                _hd9044_)
                               _hd9044_)
                           '()))
               _r9008_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e90479057_ _hd9044_)
                                                       (_E90499061_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e90479057_)))
                                                       (_E90489085_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e90479057_)
                                                              (let ((_e90509065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e90479057_)))
                        (let ((_hd90519068_ (##car _e90509065_))
                              (_tl90529070_ (##cdr _e90509065_)))
                          (let ((_id9073_ _hd90519068_))
                            (if (gx#stx-pair? _tl90529070_)
                                (let ((_e90539075_ (gx#syntax-e _tl90529070_)))
                                  (let ((_hd90549078_ (##car _e90539075_))
                                        (_tl90559080_ (##cdr _e90539075_)))
                                    (let ((_eid9083_ _hd90549078_))
                                      (if (gx#stx-null? _tl90559080_)
                                          (if (if (gx#identifier? _id9073_)
                                                  (gx#identifier? _eid9083_)
                                                  '#f)
                                              (_lp9004_
                                               _rest9046_
                                               _ns9007_
                                               (cons (cons _id9073_
                                                           (cons _eid9083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9008_))
                                              (_E90499061_))
                                          (_E90499061_)))))
                                (_E90499061_)))))
                      (_E90499061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90489085_)))
                                            (_E90189032_)))))
                                  (_E90189032_))))
                           (_E90109118_
                            (lambda ()
                              (if (gx#stx-pair? _e90099024_)
                                  (let ((_e90129093_
                                         (gx#syntax-e _e90099024_)))
                                    (let ((_hd90139096_ (##car _e90129093_))
                                          (_tl90149098_ (##cdr _e90129093_)))
                                      (if (eq? (gx#stx-e _hd90139096_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl90149098_)
                                              (let ((_e90159101_
                                                     (gx#syntax-e
                                                      _tl90149098_)))
                                                (let ((_hd90169104_
                                                       (##car _e90159101_))
                                                      (_tl90179106_
                                                       (##cdr _e90159101_)))
                                                  (let* ((_ns9109_
                                                          _hd90169104_)
                                                         (_rest9111_
                                                          _tl90179106_))
                                                    (if '#t
                                                        (let ((_ns9116_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns9109_)
                           (symbol->string (gx#stx-e _ns9109_))
                           (if (let ((_$e9113_ (gx#stx-string? _ns9109_)))
                                 (if _$e9113_
                                     _$e9113_
                                     (gx#stx-false? _ns9109_)))
                               (gx#stx-e _ns9109_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8970_
                                _ns9109_)))))
                  (_lp9004_ _rest9111_ _ns9116_ _r9008_))
                (_E90119089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90119089_))
                                          (_E90119089_))))
                                  (_E90119089_)))))
                      (_E90109118_))))))
        (let* ((_e89738980_ _stx8970_)
               (_E89758984_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e89738980_)))
               (_E89748998_
                (lambda ()
                  (if (gx#stx-pair? _e89738980_)
                      (let ((_e89768988_ (gx#syntax-e _e89738980_)))
                        (let ((_hd89778991_ (##car _e89768988_))
                              (_tl89788993_ (##cdr _e89768988_)))
                          (let ((_body8996_ _tl89788993_))
                            (if (gx#stx-list? _body8996_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8972_ _body8996_))
                                (_E89758984_)))))
                      (_E89758984_)))))
          (_E89748998_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8916_)
      (let* ((_e89178930_ _stx8916_)
             (_E89198934_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89178930_)))
             (_E89188966_
              (lambda ()
                (if (gx#stx-pair? _e89178930_)
                    (let ((_e89208938_ (gx#syntax-e _e89178930_)))
                      (let ((_hd89218941_ (##car _e89208938_))
                            (_tl89228943_ (##cdr _e89208938_)))
                        (if (gx#stx-pair? _tl89228943_)
                            (let ((_e89238946_ (gx#syntax-e _tl89228943_)))
                              (let ((_hd89248949_ (##car _e89238946_))
                                    (_tl89258951_ (##cdr _e89238946_)))
                                (let ((_hd8954_ _hd89248949_))
                                  (if (gx#stx-pair? _tl89258951_)
                                      (let ((_e89268956_
                                             (gx#syntax-e _tl89258951_)))
                                        (let ((_hd89278959_
                                               (##car _e89268956_))
                                              (_tl89288961_
                                               (##cdr _e89268956_)))
                                          (let ((_expr8964_ _hd89278959_))
                                            (if (gx#stx-null? _tl89288961_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8954_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8954_)
                        (cons _expr8964_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89198934_))
                                                (_E89198934_)))))
                                      (_E89198934_)))))
                            (_E89198934_))))
                    (_E89198934_)))))
        (_E89188966_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8862_)
      (let* ((_e88638876_ _stx8862_)
             (_E88658880_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88638876_)))
             (_E88648912_
              (lambda ()
                (if (gx#stx-pair? _e88638876_)
                    (let ((_e88668884_ (gx#syntax-e _e88638876_)))
                      (let ((_hd88678887_ (##car _e88668884_))
                            (_tl88688889_ (##cdr _e88668884_)))
                        (if (gx#stx-pair? _tl88688889_)
                            (let ((_e88698892_ (gx#syntax-e _tl88688889_)))
                              (let ((_hd88708895_ (##car _e88698892_))
                                    (_tl88718897_ (##cdr _e88698892_)))
                                (let ((_hd8900_ _hd88708895_))
                                  (if (gx#stx-pair? _tl88718897_)
                                      (let ((_e88728902_
                                             (gx#syntax-e _tl88718897_)))
                                        (let ((_hd88738905_
                                               (##car _e88728902_))
                                              (_tl88748907_
                                               (##cdr _e88728902_)))
                                          (let ((_expr8910_ _hd88738905_))
                                            (if (gx#stx-null? _tl88748907_)
                                                (if (gx#identifier? _hd8900_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8900_
                                                                (cons _expr8910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88658880_))
                                                (_E88658880_)))))
                                      (_E88658880_)))))
                            (_E88658880_))))
                    (_E88658880_)))))
        (_E88648912_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8808_)
      (let* ((_e88098822_ _stx8808_)
             (_E88118826_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88098822_)))
             (_E88108858_
              (lambda ()
                (if (gx#stx-pair? _e88098822_)
                    (let ((_e88128830_ (gx#syntax-e _e88098822_)))
                      (let ((_hd88138833_ (##car _e88128830_))
                            (_tl88148835_ (##cdr _e88128830_)))
                        (if (gx#stx-pair? _tl88148835_)
                            (let ((_e88158838_ (gx#syntax-e _tl88148835_)))
                              (let ((_hd88168841_ (##car _e88158838_))
                                    (_tl88178843_ (##cdr _e88158838_)))
                                (let ((_id8846_ _hd88168841_))
                                  (if (gx#stx-pair? _tl88178843_)
                                      (let ((_e88188848_
                                             (gx#syntax-e _tl88178843_)))
                                        (let ((_hd88198851_
                                               (##car _e88188848_))
                                              (_tl88208853_
                                               (##cdr _e88188848_)))
                                          (let ((_alias-id8856_ _hd88198851_))
                                            (if (gx#stx-null? _tl88208853_)
                                                (if (if (gx#identifier?
                                                         _id8846_)
                                                        (gx#identifier?
                                                         _alias-id8856_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8846_
                                                                (cons _alias-id8856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88118826_))
                                                (_E88118826_)))))
                                      (_E88118826_)))))
                            (_E88118826_))))
                    (_E88118826_)))))
        (_E88108858_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8765_)
      (let* ((_e87668776_ _stx8765_)
             (_E87688780_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87668776_)))
             (_E87678804_
              (lambda ()
                (if (gx#stx-pair? _e87668776_)
                    (let ((_e87698784_ (gx#syntax-e _e87668776_)))
                      (let ((_hd87708787_ (##car _e87698784_))
                            (_tl87718789_ (##cdr _e87698784_)))
                        (if (gx#stx-pair? _tl87718789_)
                            (let ((_e87728792_ (gx#syntax-e _tl87718789_)))
                              (let ((_hd87738795_ (##car _e87728792_))
                                    (_tl87748797_ (##cdr _e87728792_)))
                                (let* ((_hd8800_ _hd87738795_)
                                       (_body8802_ _tl87748797_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8800_)
                                          (if (gx#stx-list? _body8802_)
                                              (not (gx#stx-null? _body8802_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8800_)
                                       _body8802_)
                                      (_E87688780_)))))
                            (_E87688780_))))
                    (_E87688780_)))))
        (_E87678804_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8701_)
      (letrec ((_generate8703_
                (lambda (_clause8733_)
                  (let* ((_e87348741_ _clause8733_)
                         (_E87368745_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8701_
                             _clause8733_)))
                         (_E87358761_
                          (lambda ()
                            (if (gx#stx-pair? _e87348741_)
                                (let ((_e87378749_ (gx#syntax-e _e87348741_)))
                                  (let ((_hd87388752_ (##car _e87378749_))
                                        (_tl87398754_ (##cdr _e87378749_)))
                                    (let* ((_hd8757_ _hd87388752_)
                                           (_body8759_ _tl87398754_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8757_)
                                              (if (gx#stx-list? _body8759_)
                                                  (not (gx#stx-null?
                                                        _body8759_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8757_)
                                                 _body8759_)
                                           (gx#stx-source _clause8733_))
                                          (_E87368745_)))))
                                (_E87368745_)))))
                    (_E87358761_)))))
        (let* ((_e87048711_ _stx8701_)
               (_E87068715_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e87048711_)))
               (_E87058729_
                (lambda ()
                  (if (gx#stx-pair? _e87048711_)
                      (let ((_e87078719_ (gx#syntax-e _e87048711_)))
                        (let ((_hd87088722_ (##car _e87078719_))
                              (_tl87098724_ (##cdr _e87078719_)))
                          (let ((_clauses8727_ _tl87098724_))
                            (if (gx#stx-list? _clauses8727_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8703_ _clauses8727_))
                                (_E87068715_)))))
                      (_E87068715_)))))
          (_E87058729_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx8602_ _form8603_)
        (letrec ((_generate8605_
                  (lambda (_bind8648_)
                    (let* ((_e86498659_ _bind8648_)
                           (_E86518663_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8602_
                               _bind8648_)))
                           (_E86508687_
                            (lambda ()
                              (if (gx#stx-pair? _e86498659_)
                                  (let ((_e86528667_
                                         (gx#syntax-e _e86498659_)))
                                    (let ((_hd86538670_ (##car _e86528667_))
                                          (_tl86548672_ (##cdr _e86528667_)))
                                      (let ((_ids8675_ _hd86538670_))
                                        (if (gx#stx-pair? _tl86548672_)
                                            (let ((_e86558677_
                                                   (gx#syntax-e _tl86548672_)))
                                              (let ((_hd86568680_
                                                     (##car _e86558677_))
                                                    (_tl86578682_
                                                     (##cdr _e86558677_)))
                                                (let ((_expr8685_
                                                       _hd86568680_))
                                                  (if (gx#stx-null?
                                                       _tl86578682_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8675_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8675_)
                        (cons _expr8685_ '()))
                  (_E86518663_))
              (_E86518663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E86518663_)))))
                                  (_E86518663_)))))
                      (_E86508687_)))))
          (let* ((_e86068616_ _stx8602_)
                 (_E86088620_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e86068616_)))
                 (_E86078644_
                  (lambda ()
                    (if (gx#stx-pair? _e86068616_)
                        (let ((_e86098624_ (gx#syntax-e _e86068616_)))
                          (let ((_hd86108627_ (##car _e86098624_))
                                (_tl86118629_ (##cdr _e86098624_)))
                            (if (gx#stx-pair? _tl86118629_)
                                (let ((_e86128632_ (gx#syntax-e _tl86118629_)))
                                  (let ((_hd86138635_ (##car _e86128632_))
                                        (_tl86148637_ (##cdr _e86128632_)))
                                    (let* ((_hd8640_ _hd86138635_)
                                           (_body8642_ _tl86148637_))
                                      (if (if (gx#stx-list? _hd8640_)
                                              (if (gx#stx-list? _body8642_)
                                                  (not (gx#stx-null?
                                                        _body8642_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8603_
                                           (gx#stx-map1
                                            _generate8605_
                                            _hd8640_)
                                           _body8642_)
                                          (_E86088620_)))))
                                (_E86088620_))))
                        (_E86088620_)))))
            (_E86078644_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8694_)
          (let ((_form8696_ '%#let-values))
            (gx#macro-expand-let-values__% _stx8694_ _form8696_))))
      (define gx#macro-expand-let-values
        (lambda _g11097_
          (let ((_g11096_ (length _g11097_)))
            (cond ((##fx= _g11096_ 1)
                   (apply gx#macro-expand-let-values__0 _g11097_))
                  ((##fx= _g11096_ 2)
                   (apply gx#macro-expand-let-values__% _g11097_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g11097_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8599_)
      (gx#macro-expand-let-values__% _stx8599_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8597_)
      (gx#macro-expand-let-values__% _stx8597_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8488_)
      (let* ((_e84898515_ _stx8488_)
             (_E85018519_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84898515_)))
             (_E84918561_
              (lambda ()
                (if (gx#stx-pair? _e84898515_)
                    (let ((_e85028523_ (gx#syntax-e _e84898515_)))
                      (let ((_hd85038526_ (##car _e85028523_))
                            (_tl85048528_ (##cdr _e85028523_)))
                        (if (gx#stx-pair? _tl85048528_)
                            (let ((_e85058531_ (gx#syntax-e _tl85048528_)))
                              (let ((_hd85068534_ (##car _e85058531_))
                                    (_tl85078536_ (##cdr _e85058531_)))
                                (let ((_test8539_ _hd85068534_))
                                  (if (gx#stx-pair? _tl85078536_)
                                      (let ((_e85088541_
                                             (gx#syntax-e _tl85078536_)))
                                        (let ((_hd85098544_
                                               (##car _e85088541_))
                                              (_tl85108546_
                                               (##cdr _e85088541_)))
                                          (let ((_K8549_ _hd85098544_))
                                            (if (gx#stx-pair? _tl85108546_)
                                                (let ((_e85118551_
                                                       (gx#syntax-e
                                                        _tl85108546_)))
                                                  (let ((_hd85128554_
                                                         (##car _e85118551_))
                                                        (_tl85138556_
                                                         (##cdr _e85118551_)))
                                                    (let ((_E8559_ _hd85128554_))
                                                      (if (gx#stx-null?
                                                           _tl85138556_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8539_
                                                               _K8549_
                                                               _E8559_)
                                                              (_E85018519_))
                                                          (_E85018519_)))))
                                                (_E85018519_)))))
                                      (_E85018519_)))))
                            (_E85018519_))))
                    (_E85018519_))))
             (_E84908593_
              (lambda ()
                (if (gx#stx-pair? _e84898515_)
                    (let ((_e84928565_ (gx#syntax-e _e84898515_)))
                      (let ((_hd84938568_ (##car _e84928565_))
                            (_tl84948570_ (##cdr _e84928565_)))
                        (if (gx#stx-pair? _tl84948570_)
                            (let ((_e84958573_ (gx#syntax-e _tl84948570_)))
                              (let ((_hd84968576_ (##car _e84958573_))
                                    (_tl84978578_ (##cdr _e84958573_)))
                                (let ((_test8581_ _hd84968576_))
                                  (if (gx#stx-pair? _tl84978578_)
                                      (let ((_e84988583_
                                             (gx#syntax-e _tl84978578_)))
                                        (let ((_hd84998586_
                                               (##car _e84988583_))
                                              (_tl85008588_
                                               (##cdr _e84988583_)))
                                          (let ((_K8591_ _hd84998586_))
                                            (if (gx#stx-null? _tl85008588_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8581_
                                                     _K8591_
                                                     '#!void)
                                                    (_E84918561_))
                                                (_E84918561_)))))
                                      (_E84918561_)))))
                            (_E84918561_))))
                    (_E84918561_)))))
        (_E84908593_))))
  (define gx#free-identifier=?
    (lambda (_xid8476_ _yid8477_)
      (let ((_xe8479_ (gx#resolve-identifier__0 _xid8476_))
            (_ye8480_ (gx#resolve-identifier__0 _yid8477_)))
        (if (if _xe8479_ _ye8480_ '#f)
            (let ((_$e8482_ (eq? _xe8479_ _ye8480_)))
              (if _$e8482_
                  _$e8482_
                  (if (##structure-instance-of? _xe8479_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8480_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8479_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8480_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8485_ _xe8479_)) (if _$e8485_ _$e8485_ _ye8480_))
                '#f
                (gx#stx-eq? _xid8476_ _yid8477_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8460_ _yid8461_)
      (letrec ((_context8463_
                (lambda (_e8474_)
                  (if (##structure-direct-instance-of?
                       _e8474_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8474_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8464_
                (lambda (_e8472_)
                  (if (symbol? _e8472_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8472_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8472_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8472_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8465_
                (lambda (_e8470_)
                  (if (symbol? _e8470_)
                      _e8470_
                      (gx#syntax-local-unwrap _e8470_)))))
        (let ((_x8467_ (_unwrap8465_ _xid8460_))
              (_y8468_ (_unwrap8465_ _yid8461_)))
          (if (gx#stx-eq? _x8467_ _y8468_)
              (if (eq? (_context8463_ _x8467_) (_context8463_ _y8468_))
                  (equal? (_marks8464_ _x8467_) (_marks8464_ _y8468_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8458_)
      (if (gx#identifier? _stx8458_) (gx#core-identifier=? _stx8458_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8456_)
      (if (gx#identifier? _stx8456_)
          (gx#core-identifier=? _stx8456_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8454_)
      (if (gx#identifier? _x8454_)
          (if (not (gx#underscore? _x8454_)) _x8454_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx8400_ _where8401_)
        (let _lp8403_ ((_rest8405_ (gx#syntax->list _stx8400_)))
          (let* ((_rest84068414_ _rest8405_)
                 (_else84088422_ (lambda () '#t))
                 (_K84108432_
                  (lambda (_rest8425_ _hd8426_)
                    (if (not (gx#identifier? _hd8426_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8401_
                         _hd8426_)
                        (if (find (lambda (_g84278429_)
                                    (gx#bound-identifier=?
                                     _g84278429_
                                     _hd8426_))
                                  _rest8425_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8401_
                             _hd8426_)
                            (_lp8403_ _rest8425_))))))
            (if (##pair? _rest84068414_)
                (let ((_hd84118435_ (##car _rest84068414_))
                      (_tl84128437_ (##cdr _rest84068414_)))
                  (let* ((_hd8440_ _hd84118435_) (_rest8442_ _tl84128437_))
                    (_K84108432_ _rest8442_ _hd8440_)))
                (_else84088422_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8447_)
          (let ((_where8449_ _stx8447_))
            (gx#check-duplicate-identifiers__% _stx8447_ _where8449_))))
      (define gx#check-duplicate-identifiers
        (lambda _g11099_
          (let ((_g11098_ (length _g11099_)))
            (cond ((##fx= _g11098_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g11099_))
                  ((##fx= _g11098_ 2)
                   (apply gx#check-duplicate-identifiers__% _g11099_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g11099_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8392_)
      (gx#stx-andmap
       (lambda (_x8394_)
         (let ((_$e8396_ (gx#identifier? _x8394_)))
           (if _$e8396_ _$e8396_ (gx#stx-false? _x8394_))))
       _stx8392_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx8356_ _rebind?8357_ _phi8358_ _ctx8359_)
        (gx#stx-for-each1
         (lambda (_id8361_)
           (if (gx#identifier? _id8361_)
               (gx#core-bind-runtime!__%
                _id8361_
                _rebind?8357_
                _phi8358_
                _ctx8359_)
               '#!void))
         _stx8356_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8366_)
          (let* ((_rebind?8368_ '#f)
                 (_phi8370_ (gx#current-expander-phi))
                 (_ctx8372_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8366_
             _rebind?8368_
             _phi8370_
             _ctx8372_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8374_ _rebind?8375_)
          (let* ((_phi8377_ (gx#current-expander-phi))
                 (_ctx8379_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8374_
             _rebind?8375_
             _phi8377_
             _ctx8379_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8381_ _rebind?8382_ _phi8383_)
          (let ((_ctx8385_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8381_
             _rebind?8382_
             _phi8383_
             _ctx8385_))))
      (define gx#core-bind-values!
        (lambda _g11101_
          (let ((_g11100_ (length _g11101_)))
            (cond ((##fx= _g11100_ 1) (apply gx#core-bind-values!__0 _g11101_))
                  ((##fx= _g11100_ 2) (apply gx#core-bind-values!__1 _g11101_))
                  ((##fx= _g11100_ 3) (apply gx#core-bind-values!__2 _g11101_))
                  ((##fx= _g11100_ 4) (apply gx#core-bind-values!__% _g11101_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g11101_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8351_)
      (gx#stx-map1
       (lambda (_x8353_)
         (if (gx#identifier? _x8353_) (gx#core-quote-syntax__0 _x8353_) '#f))
       _stx8351_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8344_)
      (if (gx#identifier? _stx8344_)
          (let* ((_bind8346_ (gx#resolve-identifier__0 _stx8344_))
                 (_$e8348_ (not _bind8346_)))
            (if _$e8348_
                _$e8348_
                (##structure-instance-of? _bind8346_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id8336_ _form8337_)
      (let ((_bind8339_ (gx#resolve-identifier__0 _id8336_)))
        (if (##structure-instance-of? _bind8339_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id8336_)
            (if (not _bind8339_)
                (if (let ((_$e8341_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e8341_
                          _$e8341_
                          (gx#core-extern-symbol? (gx#stx-e _id8336_))))
                    (gx#core-quote-syntax__0 _id8336_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form8337_
                     _id8336_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form8337_
                 _id8336_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id8295_ _rebind?8296_ _phi8297_ _ctx8298_)
        (let* ((_key8300_ (gx#core-identifier-key _id8295_))
               (_eid8302_
                (gx#make-binding-id__% _key8300_ '#f _phi8297_ _ctx8298_))
               (_bind8304_
                (if (##structure-instance-of? _ctx8298_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8302_
                     _key8300_
                     _phi8297_
                     _ctx8298_)
                    (if (##structure-instance-of? _ctx8298_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8302_
                         _key8300_
                         _phi8297_)
                        (if (##structure-instance-of?
                             _ctx8298_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid8302_
                             _key8300_
                             _phi8297_)
                            (##structure
                             gx#runtime-binding::t
                             _eid8302_
                             _key8300_
                             _phi8297_))))))
          (gx#bind-identifier!__%
           _id8295_
           _bind8304_
           _rebind?8296_
           _phi8297_
           _ctx8298_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id8310_)
          (let* ((_rebind?8312_ '#f)
                 (_phi8314_ (gx#current-expander-phi))
                 (_ctx8316_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8310_
             _rebind?8312_
             _phi8314_
             _ctx8316_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id8318_ _rebind?8319_)
          (let* ((_phi8321_ (gx#current-expander-phi))
                 (_ctx8323_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8318_
             _rebind?8319_
             _phi8321_
             _ctx8323_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id8325_ _rebind?8326_ _phi8327_)
          (let ((_ctx8329_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8325_
             _rebind?8326_
             _phi8327_
             _ctx8329_))))
      (define gx#core-bind-runtime!
        (lambda _g11103_
          (let ((_g11102_ (length _g11103_)))
            (cond ((##fx= _g11102_ 1)
                   (apply gx#core-bind-runtime!__0 _g11103_))
                  ((##fx= _g11102_ 2)
                   (apply gx#core-bind-runtime!__1 _g11103_))
                  ((##fx= _g11102_ 3)
                   (apply gx#core-bind-runtime!__2 _g11103_))
                  ((##fx= _g11102_ 4)
                   (apply gx#core-bind-runtime!__% _g11103_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g11103_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id8250_ _eid8251_ _rebind?8252_ _phi8253_ _ctx8254_)
        (let* ((_key8256_ (gx#core-identifier-key _id8250_))
               (_bind8258_
                (if (##structure-instance-of? _ctx8254_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8251_
                     _key8256_
                     _phi8253_
                     _ctx8254_)
                    (if (##structure-instance-of? _ctx8254_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8251_
                         _key8256_
                         _phi8253_)
                        (##structure
                         gx#runtime-binding::t
                         _eid8251_
                         _key8256_
                         _phi8253_)))))
          (gx#bind-identifier!__%
           _id8250_
           _bind8258_
           _rebind?8252_
           _phi8253_
           _ctx8254_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id8264_ _eid8265_)
          (let* ((_rebind?8267_ '#f)
                 (_phi8269_ (gx#current-expander-phi))
                 (_ctx8271_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8264_
             _eid8265_
             _rebind?8267_
             _phi8269_
             _ctx8271_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id8273_ _eid8274_ _rebind?8275_)
          (let* ((_phi8277_ (gx#current-expander-phi))
                 (_ctx8279_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8273_
             _eid8274_
             _rebind?8275_
             _phi8277_
             _ctx8279_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id8281_ _eid8282_ _rebind?8283_ _phi8284_)
          (let ((_ctx8286_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8281_
             _eid8282_
             _rebind?8283_
             _phi8284_
             _ctx8286_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g11105_
          (let ((_g11104_ (length _g11105_)))
            (cond ((##fx= _g11104_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g11105_))
                  ((##fx= _g11104_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g11105_))
                  ((##fx= _g11104_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g11105_))
                  ((##fx= _g11104_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g11105_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g11105_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id8210_ _eid8211_ _rebind?8212_ _phi8213_ _ctx8214_)
        (gx#bind-identifier!__%
         _id8210_
         (##structure
          gx#extern-binding::t
          _eid8211_
          (gx#core-identifier-key _id8210_)
          _phi8213_)
         _rebind?8212_
         _phi8213_
         _ctx8214_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id8219_ _eid8220_)
          (let* ((_rebind?8222_ '#f)
                 (_phi8224_ (gx#current-expander-phi))
                 (_ctx8226_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8219_
             _eid8220_
             _rebind?8222_
             _phi8224_
             _ctx8226_))))
      (define gx#core-bind-extern!__1
        (lambda (_id8228_ _eid8229_ _rebind?8230_)
          (let* ((_phi8232_ (gx#current-expander-phi))
                 (_ctx8234_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8228_
             _eid8229_
             _rebind?8230_
             _phi8232_
             _ctx8234_))))
      (define gx#core-bind-extern!__2
        (lambda (_id8236_ _eid8237_ _rebind?8238_ _phi8239_)
          (let ((_ctx8241_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8236_
             _eid8237_
             _rebind?8238_
             _phi8239_
             _ctx8241_))))
      (define gx#core-bind-extern!
        (lambda _g11107_
          (let ((_g11106_ (length _g11107_)))
            (cond ((##fx= _g11106_ 2) (apply gx#core-bind-extern!__0 _g11107_))
                  ((##fx= _g11106_ 3) (apply gx#core-bind-extern!__1 _g11107_))
                  ((##fx= _g11106_ 4) (apply gx#core-bind-extern!__2 _g11107_))
                  ((##fx= _g11106_ 5) (apply gx#core-bind-extern!__% _g11107_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g11107_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id8164_ _e8165_ _rebind?8166_ _phi8167_ _ctx8168_)
        (gx#bind-identifier!__%
         _id8164_
         (let ((_key8173_ (gx#core-identifier-key _id8164_))
               (_e8174_ (if (let ((_$e8170_
                                   (##structure-instance-of?
                                    _e8165_
                                    'gx#expander::t)))
                              (if _$e8170_
                                  _$e8170_
                                  (##structure-instance-of?
                                   _e8165_
                                   'gx#expander-context::t)))
                            _e8165_
                            (##structure
                             gx#user-expander::t
                             _e8165_
                             _ctx8168_
                             _phi8167_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key8173_ '#t _phi8167_ _ctx8168_)
            _key8173_
            _phi8167_
            _e8174_))
         _rebind?8166_
         _phi8167_
         _ctx8168_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id8179_ _e8180_)
          (let* ((_rebind?8182_ '#f)
                 (_phi8184_ (gx#current-expander-phi))
                 (_ctx8186_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8179_
             _e8180_
             _rebind?8182_
             _phi8184_
             _ctx8186_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id8188_ _e8189_ _rebind?8190_)
          (let* ((_phi8192_ (gx#current-expander-phi))
                 (_ctx8194_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8188_
             _e8189_
             _rebind?8190_
             _phi8192_
             _ctx8194_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id8196_ _e8197_ _rebind?8198_ _phi8199_)
          (let ((_ctx8201_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8196_
             _e8197_
             _rebind?8198_
             _phi8199_
             _ctx8201_))))
      (define gx#core-bind-syntax!
        (lambda _g11109_
          (let ((_g11108_ (length _g11109_)))
            (cond ((##fx= _g11108_ 2) (apply gx#core-bind-syntax!__0 _g11109_))
                  ((##fx= _g11108_ 3) (apply gx#core-bind-syntax!__1 _g11109_))
                  ((##fx= _g11108_ 4) (apply gx#core-bind-syntax!__2 _g11109_))
                  ((##fx= _g11108_ 5) (apply gx#core-bind-syntax!__% _g11109_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g11109_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id8147_ _e8148_ _rebind?8149_)
        (gx#core-bind-syntax!__%
         _id8147_
         _e8148_
         _rebind?8149_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id8154_ _e8155_)
          (let ((_rebind?8157_ '#f))
            (gx#core-bind-root-syntax!__% _id8154_ _e8155_ _rebind?8157_))))
      (define gx#core-bind-root-syntax!
        (lambda _g11111_
          (let ((_g11110_ (length _g11111_)))
            (cond ((##fx= _g11110_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g11111_))
                  ((##fx= _g11110_ 3)
                   (apply gx#core-bind-root-syntax!__% _g11111_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g11111_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id8105_ _alias-id8106_ _rebind?8107_ _phi8108_ _ctx8109_)
        (gx#bind-identifier!__%
         _id8105_
         (let ((_key8111_ (gx#core-identifier-key _id8105_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key8111_ '#t _phi8108_ _ctx8109_)
            _key8111_
            _phi8108_
            _alias-id8106_))
         _rebind?8107_
         _phi8108_
         _ctx8109_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id8116_ _alias-id8117_)
          (let* ((_rebind?8119_ '#f)
                 (_phi8121_ (gx#current-expander-phi))
                 (_ctx8123_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8116_
             _alias-id8117_
             _rebind?8119_
             _phi8121_
             _ctx8123_))))
      (define gx#core-bind-alias!__1
        (lambda (_id8125_ _alias-id8126_ _rebind?8127_)
          (let* ((_phi8129_ (gx#current-expander-phi))
                 (_ctx8131_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8125_
             _alias-id8126_
             _rebind?8127_
             _phi8129_
             _ctx8131_))))
      (define gx#core-bind-alias!__2
        (lambda (_id8133_ _alias-id8134_ _rebind?8135_ _phi8136_)
          (let ((_ctx8138_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8133_
             _alias-id8134_
             _rebind?8135_
             _phi8136_
             _ctx8138_))))
      (define gx#core-bind-alias!
        (lambda _g11113_
          (let ((_g11112_ (length _g11113_)))
            (cond ((##fx= _g11112_ 2) (apply gx#core-bind-alias!__0 _g11113_))
                  ((##fx= _g11112_ 3) (apply gx#core-bind-alias!__1 _g11113_))
                  ((##fx= _g11112_ 4) (apply gx#core-bind-alias!__2 _g11113_))
                  ((##fx= _g11112_ 5) (apply gx#core-bind-alias!__% _g11113_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g11113_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key8062_ _syntax?8063_ _phi8064_ _ctx8065_)
        (if (uninterned-symbol? _key8062_)
            (gensym 'L)
            (if (pair? _key8062_)
                (gensym (car _key8062_))
                (if (##structure-instance-of? _ctx8065_ 'gx#top-context::t)
                    (let ((_ns8067_ (gx#core-context-namespace__% _ctx8065_)))
                      (if (if (fxzero? _phi8064_) (not _syntax?8063_) '#f)
                          (if _ns8067_
                              (make-symbol _ns8067_ '"#" _key8062_)
                              _key8062_)
                          (if _syntax?8063_
                              (make-symbol
                               (let ((_$e8069_ _ns8067_))
                                 (if _$e8069_ _$e8069_ '""))
                               '"[:"
                               (number->string _phi8064_)
                               '":]#"
                               _key8062_)
                              (make-symbol
                               (let ((_$e8072_ _ns8067_))
                                 (if _$e8072_ _$e8072_ '""))
                               '"["
                               (number->string _phi8064_)
                               '"]#"
                               _key8062_))))
                    (gensym _key8062_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key8078_)
          (let* ((_syntax?8080_ '#f)
                 (_phi8082_ (gx#current-expander-phi))
                 (_ctx8084_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8078_
             _syntax?8080_
             _phi8082_
             _ctx8084_))))
      (define gx#make-binding-id__1
        (lambda (_key8086_ _syntax?8087_)
          (let* ((_phi8089_ (gx#current-expander-phi))
                 (_ctx8091_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8086_
             _syntax?8087_
             _phi8089_
             _ctx8091_))))
      (define gx#make-binding-id__2
        (lambda (_key8093_ _syntax?8094_ _phi8095_)
          (let ((_ctx8097_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8093_
             _syntax?8094_
             _phi8095_
             _ctx8097_))))
      (define gx#make-binding-id
        (lambda _g11115_
          (let ((_g11114_ (length _g11115_)))
            (cond ((##fx= _g11114_ 1) (apply gx#make-binding-id__0 _g11115_))
                  ((##fx= _g11114_ 2) (apply gx#make-binding-id__1 _g11115_))
                  ((##fx= _g11114_ 3) (apply gx#make-binding-id__2 _g11115_))
                  ((##fx= _g11114_ 4) (apply gx#make-binding-id__% _g11115_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g11115_)))))))))
