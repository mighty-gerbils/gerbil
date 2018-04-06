(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx12484_)
      (letrec ((_expand-special12486_
                (lambda (_hd12488_ _K12489_ _rest12490_ _r12491_)
                  (_K12489_
                   _rest12490_
                   (cons (gx#core-expand-top _hd12488_) _r12491_)))))
        (gx#core-expand-block__0 _stx12484_ _expand-special12486_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12237_)
      (letrec ((_expand-special12239_
                (lambda (_hd12359_ _K12360_ _rest12361_ _r12362_)
                  (let* ((_K12366_
                          (lambda (_e12364_)
                            (_K12360_ _rest12361_ (cons _e12364_ _r12362_))))
                         (_e1236712396_ _hd12359_)
                         (_E1239112400_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1236712396_)))
                         (_E1238712412_
                          (lambda ()
                            (if (gx#stx-pair? _e1236712396_)
                                (let ((_e1239212404_
                                       (gx#syntax-e _e1236712396_)))
                                  (let ((_hd1239312407_ (##car _e1239212404_))
                                        (_tl1239412409_ (##cdr _e1239212404_)))
                                    (if (if (gx#identifier? _hd1239312407_)
                                            (gx#core-identifier=?
                                             _hd1239312407_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K12366_
                                             (gx#core-expand-define-runtime%
                                              _hd12359_))
                                            (_E1239112400_))
                                        (_E1239112400_))))
                                (_E1239112400_))))
                         (_E1238312424_
                          (lambda ()
                            (if (gx#stx-pair? _e1236712396_)
                                (let ((_e1238812416_
                                       (gx#syntax-e _e1236712396_)))
                                  (let ((_hd1238912419_ (##car _e1238812416_))
                                        (_tl1239012421_ (##cdr _e1238812416_)))
                                    (if (if (gx#identifier? _hd1238912419_)
                                            (gx#core-identifier=?
                                             _hd1238912419_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K12366_
                                             (gx#core-expand-define-alias%
                                              _hd12359_))
                                            (_E1238712412_))
                                        (_E1238712412_))))
                                (_E1238712412_))))
                         (_E1237312436_
                          (lambda ()
                            (if (gx#stx-pair? _e1236712396_)
                                (let ((_e1238412428_
                                       (gx#syntax-e _e1236712396_)))
                                  (let ((_hd1238512431_ (##car _e1238412428_))
                                        (_tl1238612433_ (##cdr _e1238412428_)))
                                    (if (if (gx#identifier? _hd1238512431_)
                                            (gx#core-identifier=?
                                             _hd1238512431_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12366_
                                             (gx#core-expand-define-syntax%
                                              _hd12359_))
                                            (_E1238312424_))
                                        (_E1238312424_))))
                                (_E1238312424_))))
                         (_E1236912468_
                          (lambda ()
                            (if (gx#stx-pair? _e1236712396_)
                                (let ((_e1237412440_
                                       (gx#syntax-e _e1236712396_)))
                                  (let ((_hd1237512443_ (##car _e1237412440_))
                                        (_tl1237612445_ (##cdr _e1237412440_)))
                                    (if (if (gx#identifier? _hd1237512443_)
                                            (gx#core-identifier=?
                                             _hd1237512443_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1237612445_)
                                            (let ((_e1237712448_
                                                   (gx#syntax-e
                                                    _tl1237612445_)))
                                              (let ((_hd1237812451_
                                                     (##car _e1237712448_))
                                                    (_tl1237912453_
                                                     (##cdr _e1237712448_)))
                                                (let ((_hd-bind12456_
                                                       _hd1237812451_))
                                                  (if (gx#stx-pair?
                                                       _tl1237912453_)
                                                      (let ((_e1238012458_
                                                             (gx#syntax-e
                                                              _tl1237912453_)))
                                                        (let ((_hd1238112461_
                                                               (##car _e1238012458_))
                                                              (_tl1238212463_
                                                               (##cdr _e1238012458_)))
                                                          (let ((_expr12466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1238112461_))
                    (if (gx#stx-null? _tl1238212463_)
                        (if (gx#core-bind-values? _hd-bind12456_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12456_)
                              (_K12366_ _hd12359_))
                            (_E1237312436_))
                        (_E1237312436_)))))
              (_E1237312436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1237312436_))
                                        (_E1237312436_))))
                                (_E1237312436_))))
                         (_E1236812480_
                          (lambda ()
                            (if (gx#stx-pair? _e1236712396_)
                                (let ((_e1237012472_
                                       (gx#syntax-e _e1236712396_)))
                                  (let ((_hd1237112475_ (##car _e1237012472_))
                                        (_tl1237212477_ (##cdr _e1237012472_)))
                                    (if (if (gx#identifier? _hd1237112475_)
                                            (gx#core-identifier=?
                                             _hd1237112475_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12366_
                                             (gx#core-expand-begin-syntax%
                                              _hd12359_))
                                            (_E1236912468_))
                                        (_E1236912468_))))
                                (_E1236912468_)))))
                    (_E1236812480_))))
               (_eval-body12240_
                (lambda (_rbody12248_)
                  (let _lp12250_ ((_rest12252_ _rbody12248_)
                                  (_body12253_ '())
                                  (_ebody12254_ '()))
                    (let* ((_rest1225512263_ _rest12252_)
                           (_else1225712271_
                            (lambda ()
                              (values _body12253_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12254_)
                                        (gx#stx-source _stx12237_))))))
                           (_K1225912347_
                            (lambda (_rest12274_ _hd12275_)
                              (let* ((_e1227612293_ _hd12275_)
                                     (_E1228812297_
                                      (lambda ()
                                        (_lp12250_
                                         _rest12274_
                                         (cons _hd12275_ _body12253_)
                                         (cons _hd12275_ _ebody12254_))))
                                     (_E1227812309_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1227612293_)
                                            (let ((_e1228912301_
                                                   (gx#syntax-e
                                                    _e1227612293_)))
                                              (let ((_hd1229012304_
                                                     (##car _e1228912301_))
                                                    (_tl1229112306_
                                                     (##cdr _e1228912301_)))
                                                (if (if (gx#identifier?
                                                         _hd1229012304_)
                                                        (gx#core-identifier=?
                                                         _hd1229012304_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12250_
                                                         _rest12274_
                                                         (cons _hd12275_
                                                               _body12253_)
                                                         _ebody12254_)
                                                        (_E1228812297_))
                                                    (_E1228812297_))))
                                            (_E1228812297_))))
                                     (_E1227712343_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1227612293_)
                                            (let ((_e1227912313_
                                                   (gx#syntax-e
                                                    _e1227612293_)))
                                              (let ((_hd1228012316_
                                                     (##car _e1227912313_))
                                                    (_tl1228112318_
                                                     (##cdr _e1227912313_)))
                                                (if (if (gx#identifier?
                                                         _hd1228012316_)
                                                        (gx#core-identifier=?
                                                         _hd1228012316_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1228112318_)
                                                        (let ((_e1228212321_
                                                               (gx#syntax-e
                                                                _tl1228112318_)))
                                                          (let ((_hd1228312324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1228212321_))
                        (_tl1228412326_ (##cdr _e1228212321_)))
                    (let ((_hd-bind12329_ _hd1228312324_))
                      (if (gx#stx-pair? _tl1228412326_)
                          (let ((_e1228512331_ (gx#syntax-e _tl1228412326_)))
                            (let ((_hd1228612334_ (##car _e1228512331_))
                                  (_tl1228712336_ (##cdr _e1228512331_)))
                              (let ((_expr12339_ _hd1228612334_))
                                (if (gx#stx-null? _tl1228712336_)
                                    (if '#t
                                        (let ((_ehd12341_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12329_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12339_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12275_))))
                                          (_lp12250_
                                           _rest12274_
                                           (cons _ehd12341_ _body12253_)
                                           (cons _ehd12341_ _ebody12254_)))
                                        (_E1227812309_))
                                    (_E1227812309_)))))
                          (_E1227812309_)))))
                (_E1227812309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1227812309_))))
                                            (_E1227812309_)))))
                                (_E1227712343_)))))
                      (if (##pair? _rest1225512263_)
                          (let ((_hd1226012350_ (##car _rest1225512263_))
                                (_tl1226112352_ (##cdr _rest1225512263_)))
                            (let* ((_hd12355_ _hd1226012350_)
                                   (_rest12357_ _tl1226112352_))
                              (_K1225912347_ _rest12357_ _hd12355_)))
                          (_else1225712271_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12243_
                   (gx#core-expand-block__1
                    _stx12237_
                    _expand-special12239_
                    '#f))
                  (_g12507_ (_eval-body12240_ _rbody12243_)))
             (begin
               (let ((_g12508_
                      (if (##values? _g12507_) (##vector-length _g12507_) 1)))
                 (if (not (##fx= _g12508_ 2))
                     (error "Context expects 2 values" _g12508_)))
               (let ((_expanded-body12245_ (##vector-ref _g12507_ 0))
                     (_value12246_ (##vector-ref _g12507_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12245_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12246_ '())))
                  (gx#stx-source _stx12237_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12207_)
      (let* ((_e1220812215_ _stx12207_)
             (_E1221012219_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1220812215_)))
             (_E1220912233_
              (lambda ()
                (if (gx#stx-pair? _e1220812215_)
                    (let ((_e1221112223_ (gx#syntax-e _e1220812215_)))
                      (let ((_hd1221212226_ (##car _e1221112223_))
                            (_tl1221312228_ (##cdr _e1221112223_)))
                        (let ((_body12231_ _tl1221312228_))
                          (if (gx#stx-list? _body12231_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12231_)
                               (gx#stx-source _stx12207_))
                              (_E1221012219_)))))
                    (_E1221012219_)))))
        (_E1220912233_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12205_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12205_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12151_)
      (let* ((_e1215212165_ _stx12151_)
             (_E1215412169_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1215212165_)))
             (_E1215312201_
              (lambda ()
                (if (gx#stx-pair? _e1215212165_)
                    (let ((_e1215512173_ (gx#syntax-e _e1215212165_)))
                      (let ((_hd1215612176_ (##car _e1215512173_))
                            (_tl1215712178_ (##cdr _e1215512173_)))
                        (if (gx#stx-pair? _tl1215712178_)
                            (let ((_e1215812181_ (gx#syntax-e _tl1215712178_)))
                              (let ((_hd1215912184_ (##car _e1215812181_))
                                    (_tl1216012186_ (##cdr _e1215812181_)))
                                (let ((_ann12189_ _hd1215912184_))
                                  (if (gx#stx-pair? _tl1216012186_)
                                      (let ((_e1216112191_
                                             (gx#syntax-e _tl1216012186_)))
                                        (let ((_hd1216212194_
                                               (##car _e1216112191_))
                                              (_tl1216312196_
                                               (##cdr _e1216112191_)))
                                          (let ((_expr12199_ _hd1216212194_))
                                            (if (gx#stx-null? _tl1216312196_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12199_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12151_))
                                                    (_E1215412169_))
                                                (_E1215412169_)))))
                                      (_E1215412169_)))))
                            (_E1215412169_))))
                    (_E1215412169_)))))
        (_E1215312201_))))
  (define gx#core-expand-local-block
    (lambda (_stx11875_ _body11876_)
      (letrec ((_expand-special11878_
                (lambda (_hd12146_ _K12147_ _rest12148_ _r12149_)
                  (_K12147_
                   '()
                   (cons (_expand-internal11879_ _hd12146_ _rest12148_)
                         _r12149_))))
               (_expand-internal11879_
                (lambda (_hd12142_ _rest12143_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11881_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12142_ _rest12143_))
                        (gx#stx-source _stx11875_))
                       _expand-internal-special11880_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12501 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj12501)
                       __obj12501)))))
               (_expand-internal-special11880_
                (lambda (_hd12037_ _K12038_ _rest12039_ _r12040_)
                  (let* ((_e1204112066_ _hd12037_)
                         (_E1206112070_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1204112066_)))
                         (_E1205712082_
                          (lambda ()
                            (if (gx#stx-pair? _e1204112066_)
                                (let ((_e1206212074_
                                       (gx#syntax-e _e1204112066_)))
                                  (let ((_hd1206312077_ (##car _e1206212074_))
                                        (_tl1206412079_ (##cdr _e1206212074_)))
                                    (if (if (gx#identifier? _hd1206312077_)
                                            (gx#core-identifier=?
                                             _hd1206312077_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K12038_
                                             _rest12039_
                                             (cons (gx#core-expand-declare%
                                                    _hd12037_)
                                                   _r12040_))
                                            (_E1206112070_))
                                        (_E1206112070_))))
                                (_E1206112070_))))
                         (_E1205312094_
                          (lambda ()
                            (if (gx#stx-pair? _e1204112066_)
                                (let ((_e1205812086_
                                       (gx#syntax-e _e1204112066_)))
                                  (let ((_hd1205912089_ (##car _e1205812086_))
                                        (_tl1206012091_ (##cdr _e1205812086_)))
                                    (if (if (gx#identifier? _hd1205912089_)
                                            (gx#core-identifier=?
                                             _hd1205912089_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd12037_)
                                              (_K12038_ _rest12039_ _r12040_))
                                            (_E1205712082_))
                                        (_E1205712082_))))
                                (_E1205712082_))))
                         (_E1204312106_
                          (lambda ()
                            (if (gx#stx-pair? _e1204112066_)
                                (let ((_e1205412098_
                                       (gx#syntax-e _e1204112066_)))
                                  (let ((_hd1205512101_ (##car _e1205412098_))
                                        (_tl1205612103_ (##cdr _e1205412098_)))
                                    (if (if (gx#identifier? _hd1205512101_)
                                            (gx#core-identifier=?
                                             _hd1205512101_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd12037_)
                                              (_K12038_ _rest12039_ _r12040_))
                                            (_E1205312094_))
                                        (_E1205312094_))))
                                (_E1205312094_))))
                         (_E1204212138_
                          (lambda ()
                            (if (gx#stx-pair? _e1204112066_)
                                (let ((_e1204412110_
                                       (gx#syntax-e _e1204112066_)))
                                  (let ((_hd1204512113_ (##car _e1204412110_))
                                        (_tl1204612115_ (##cdr _e1204412110_)))
                                    (if (if (gx#identifier? _hd1204512113_)
                                            (gx#core-identifier=?
                                             _hd1204512113_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1204612115_)
                                            (let ((_e1204712118_
                                                   (gx#syntax-e
                                                    _tl1204612115_)))
                                              (let ((_hd1204812121_
                                                     (##car _e1204712118_))
                                                    (_tl1204912123_
                                                     (##cdr _e1204712118_)))
                                                (let ((_hd-bind12126_
                                                       _hd1204812121_))
                                                  (if (gx#stx-pair?
                                                       _tl1204912123_)
                                                      (let ((_e1205012128_
                                                             (gx#syntax-e
                                                              _tl1204912123_)))
                                                        (let ((_hd1205112131_
                                                               (##car _e1205012128_))
                                                              (_tl1205212133_
                                                               (##cdr _e1205012128_)))
                                                          (let ((_expr12136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1205112131_))
                    (if (gx#stx-null? _tl1205212133_)
                        (if (gx#core-bind-values? _hd-bind12126_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12126_)
                              (_K12038_ _rest12039_ (cons _hd12037_ _r12040_)))
                            (_E1204312106_))
                        (_E1204312106_)))))
              (_E1204312106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1204312106_))
                                        (_E1204312106_))))
                                (_E1204312106_)))))
                    (_E1204212138_))))
               (_wrap-internal11881_
                (lambda (_rbody11883_)
                  (let _lp11885_ ((_rest11887_ _rbody11883_)
                                  (_decls11888_ '())
                                  (_bind11889_ '())
                                  (_body11890_ '()))
                    (let* ((_e1189111898_ _rest11887_)
                           (_E1189311947_
                            (lambda ()
                              (let* ((_body11942_
                                      (let* ((_body1190111911_ _body11890_)
                                             (_else1190411919_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11890_)
                                                 (gx#stx-source _stx11875_)))))
                                        (let ((_K1190911939_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11875_)))
                                              (_K1190611925_
                                               (lambda (_expr11923_)
                                                 _expr11923_)))
                                          (let ((_try-match1190311935_
                                                 (lambda ()
                                                   (if (##pair? _body1190111911_)
                                                       (let ((_tl1190811930_
                                                              (##cdr _body1190111911_))
                                                             (_hd1190711928_
                                                              (##car _body1190111911_)))
                                                         (if (##null? _tl1190811930_)
                                                             (let ((_expr11933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1190711928_))
                       (_K1190611925_ _expr11933_))
                     (_else1190411919_)))
               (_else1190411919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1190111911_)
                                                (_K1190911939_)
                                                (_try-match1190311935_))))))
                                     (_body11944_
                                      (if (null? _bind11889_)
                                          _body11942_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11889_
                                                       (cons _body11942_ '())))
                                           (gx#stx-source _stx11875_)))))
                                (if (null? _decls11888_)
                                    _body11944_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11888_
                                                 (cons _body11944_ '())))
                                     (gx#stx-source _stx11875_))))))
                           (_E1189212033_
                            (lambda ()
                              (if (gx#stx-pair? _e1189111898_)
                                  (let ((_e1189411951_
                                         (gx#syntax-e _e1189111898_)))
                                    (let ((_hd1189511954_
                                           (##car _e1189411951_))
                                          (_tl1189611956_
                                           (##cdr _e1189411951_)))
                                      (let* ((_hd11959_ _hd1189511954_)
                                             (_rest11961_ _tl1189611956_))
                                        (if '#t
                                            (let* ((_e1196211979_ _hd11959_)
                                                   (_E1197411983_
                                                    (lambda ()
                                                      (if (null? _bind11889_)
                                                          (_lp11885_
                                                           _rest11961_
                                                           _decls11888_
                                                           _bind11889_
                                                           (cons _hd11959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11890_))
                  (_lp11885_
                   _rest11961_
                   _decls11888_
                   (cons (cons '#f (cons _hd11959_ '())) _bind11889_)
                   _body11890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1196411997_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1196211979_)
                                                          (let ((_e1197511987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1196211979_)))
                    (let ((_hd1197611990_ (##car _e1197511987_))
                          (_tl1197711992_ (##cdr _e1197511987_)))
                      (if (if (gx#identifier? _hd1197611990_)
                              (gx#core-identifier=? _hd1197611990_ '%#declare)
                              '#f)
                          (let ((_xdecls11995_ _tl1197711992_))
                            (if '#t
                                (_lp11885_
                                 _rest11961_
                                 (gx#stx-foldr cons _decls11888_ _xdecls11995_)
                                 _bind11889_
                                 _body11890_)
                                (_E1197411983_)))
                          (_E1197411983_))))
                  (_E1197411983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1196312029_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1196211979_)
                                                          (let ((_e1196512001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1196211979_)))
                    (let ((_hd1196612004_ (##car _e1196512001_))
                          (_tl1196712006_ (##cdr _e1196512001_)))
                      (if (if (gx#identifier? _hd1196612004_)
                              (gx#core-identifier=?
                               _hd1196612004_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1196712006_)
                              (let ((_e1196812009_
                                     (gx#syntax-e _tl1196712006_)))
                                (let ((_hd1196912012_ (##car _e1196812009_))
                                      (_tl1197012014_ (##cdr _e1196812009_)))
                                  (let ((_hd-bind12017_ _hd1196912012_))
                                    (if (gx#stx-pair? _tl1197012014_)
                                        (let ((_e1197112019_
                                               (gx#syntax-e _tl1197012014_)))
                                          (let ((_hd1197212022_
                                                 (##car _e1197112019_))
                                                (_tl1197312024_
                                                 (##cdr _e1197112019_)))
                                            (let ((_expr12027_ _hd1197212022_))
                                              (if (gx#stx-null? _tl1197312024_)
                                                  (if '#t
                                                      (_lp11885_
                                                       _rest11961_
                                                       _decls11888_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind12017_)
                           (cons (gx#core-expand-expression _expr12027_) '()))
                     _bind11889_)
               _body11890_)
              (_E1196411997_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1196411997_)))))
                                        (_E1196411997_)))))
                              (_E1196411997_))
                          (_E1196411997_))))
                  (_E1196411997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1196312029_))
                                            (_E1189311947_)))))
                                  (_E1189311947_)))))
                      (_E1189212033_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11876_)
          (gx#stx-source _stx11875_))
         _expand-special11878_))))
  (define gx#core-expand-declare%
    (lambda (_stx11813_)
      (let* ((_e1181411821_ _stx11813_)
             (_E1181611825_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1181411821_)))
             (_E1181511871_
              (lambda ()
                (if (gx#stx-pair? _e1181411821_)
                    (let ((_e1181711829_ (gx#syntax-e _e1181411821_)))
                      (let ((_hd1181811832_ (##car _e1181711829_))
                            (_tl1181911834_ (##cdr _e1181711829_)))
                        (let ((_body11837_ _tl1181911834_))
                          (if (gx#stx-list? _body11837_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11839_)
                                   (let* ((_e1184011847_ _decl11839_)
                                          (_E1184211851_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1184011847_)))
                                          (_E1184111867_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1184011847_)
                                                 (let ((_e1184311855_
                                                        (gx#syntax-e
                                                         _e1184011847_)))
                                                   (let ((_hd1184411858_
                                                          (##car _e1184311855_))
                                                         (_tl1184511860_
                                                          (##cdr _e1184311855_)))
                                                     (let* ((_head11863_
                                                             _hd1184411858_)
                                                            (_args11865_
                                                             _tl1184511860_))
                                                       (if (gx#stx-list?
                                                            _args11865_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11839_)
                                                           (_E1184211851_)))))
                                                 (_E1184211851_)))))
                                     (_E1184111867_)))
                                 _body11837_))
                               (gx#stx-source _stx11813_))
                              (_E1181611825_)))))
                    (_E1181611825_)))))
        (_E1181511871_))))
  (define gx#core-expand-extern%
    (lambda (_stx11716_)
      (begin
        (declare (not safe))
        (let* ((_e1171811725_ _stx11716_)
               (_E1172011729_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1171811725_)))
               (_E1171911809_
                (lambda ()
                  (if (gx#stx-pair? _e1171811725_)
                      (let ((_e1172111733_ (gx#syntax-e _e1171811725_)))
                        (let ((_hd1172211736_ (##car _e1172111733_))
                              (_tl1172311738_ (##cdr _e1172111733_)))
                          (let ((_body11741_ _tl1172311738_))
                            (if (gx#stx-list? _body11741_)
                                (let _lp11743_ ((_rest11745_ _body11741_)
                                                (_r11746_ '()))
                                  (let* ((_e1174711761_ _rest11745_)
                                         (_E1175911765_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _stx11716_
                                             (gx#stx-car _rest11745_))))
                                         (_E1174911769_
                                          (lambda ()
                                            (if (gx#stx-null? _e1174711761_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r11746_))
                                                     (gx#stx-source
                                                      _stx11716_))
                                                    (_E1175911765_))
                                                (_E1175911765_))))
                                         (_E1174811805_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1174711761_)
                                                (let ((_e1175011773_
                                                       (gx#syntax-e
                                                        _e1174711761_)))
                                                  (let ((_hd1175111776_
                                                         (##car _e1175011773_))
                                                        (_tl1175211778_
                                                         (##cdr _e1175011773_)))
                                                    (if (gx#stx-pair?
                                                         _hd1175111776_)
                                                        (let ((_e1175311781_
                                                               (gx#syntax-e
                                                                _hd1175111776_)))
                                                          (let ((_hd1175411784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1175311781_))
                        (_tl1175511786_ (##cdr _e1175311781_)))
                    (let ((_id11789_ _hd1175411784_))
                      (if (gx#stx-pair? _tl1175511786_)
                          (let ((_e1175611791_ (gx#syntax-e _tl1175511786_)))
                            (let ((_hd1175711794_ (##car _e1175611791_))
                                  (_tl1175811796_ (##cdr _e1175611791_)))
                              (let ((_eid11799_ _hd1175711794_))
                                (if (gx#stx-null? _tl1175811796_)
                                    (let ((_rest11801_ _tl1175211778_))
                                      (if (if (gx#identifier? _id11789_)
                                              (gx#identifier? _eid11799_)
                                              '#f)
                                          (let ((_eid11803_
                                                 (gx#stx-e _eid11799_)))
                                            (begin
                                              (gx#core-bind-extern!__0
                                               _id11789_
                                               _eid11803_)
                                              (_lp11743_
                                               _rest11801_
                                               (cons (cons (gx#core-quote-syntax__0
                                                            _id11789_)
                                                           (cons _eid11803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r11746_))))
                                          (_E1174911769_)))
                                    (_E1174911769_)))))
                          (_E1174911769_)))))
                (_E1174911769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1174911769_)))))
                                    (_E1174811805_)))
                                (_E1172011729_)))))
                      (_E1172011729_)))))
          (_E1171911809_)))))
  (define gx#core-expand-define-values%
    (lambda (_stx11662_)
      (let* ((_e1166311676_ _stx11662_)
             (_E1166511680_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1166311676_)))
             (_E1166411712_
              (lambda ()
                (if (gx#stx-pair? _e1166311676_)
                    (let ((_e1166611684_ (gx#syntax-e _e1166311676_)))
                      (let ((_hd1166711687_ (##car _e1166611684_))
                            (_tl1166811689_ (##cdr _e1166611684_)))
                        (if (gx#stx-pair? _tl1166811689_)
                            (let ((_e1166911692_ (gx#syntax-e _tl1166811689_)))
                              (let ((_hd1167011695_ (##car _e1166911692_))
                                    (_tl1167111697_ (##cdr _e1166911692_)))
                                (let ((_hd11700_ _hd1167011695_))
                                  (if (gx#stx-pair? _tl1167111697_)
                                      (let ((_e1167211702_
                                             (gx#syntax-e _tl1167111697_)))
                                        (let ((_hd1167311705_
                                               (##car _e1167211702_))
                                              (_tl1167411707_
                                               (##cdr _e1167211702_)))
                                          (let ((_expr11710_ _hd1167311705_))
                                            (if (gx#stx-null? _tl1167411707_)
                                                (if (gx#core-bind-values?
                                                     _hd11700_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11700_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11700_)
                           (cons (gx#core-expand-expression _expr11710_) '())))
               (gx#stx-source _stx11662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1166511680_))
                                                (_E1166511680_)))))
                                      (_E1166511680_)))))
                            (_E1166511680_))))
                    (_E1166511680_)))))
        (_E1166411712_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11608_)
      (let* ((_e1160911622_ _stx11608_)
             (_E1161111626_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1160911622_)))
             (_E1161011658_
              (lambda ()
                (if (gx#stx-pair? _e1160911622_)
                    (let ((_e1161211630_ (gx#syntax-e _e1160911622_)))
                      (let ((_hd1161311633_ (##car _e1161211630_))
                            (_tl1161411635_ (##cdr _e1161211630_)))
                        (if (gx#stx-pair? _tl1161411635_)
                            (let ((_e1161511638_ (gx#syntax-e _tl1161411635_)))
                              (let ((_hd1161611641_ (##car _e1161511638_))
                                    (_tl1161711643_ (##cdr _e1161511638_)))
                                (let ((_id11646_ _hd1161611641_))
                                  (if (gx#stx-pair? _tl1161711643_)
                                      (let ((_e1161811648_
                                             (gx#syntax-e _tl1161711643_)))
                                        (let ((_hd1161911651_
                                               (##car _e1161811648_))
                                              (_tl1162011653_
                                               (##cdr _e1161811648_)))
                                          (let ((_binding-id11656_
                                                 _hd1161911651_))
                                            (if (gx#stx-null? _tl1162011653_)
                                                (if (if (gx#identifier?
                                                         _id11646_)
                                                        (gx#identifier?
                                                         _binding-id11656_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11646_
                                                       (gx#stx-e
                                                        _binding-id11656_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11646_)
                           (cons (gx#core-quote-syntax__0 _binding-id11656_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1161111626_))
                                                (_E1161111626_)))))
                                      (_E1161111626_)))))
                            (_E1161111626_))))
                    (_E1161111626_)))))
        (_E1161011658_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11551_)
      (let* ((_e1155211565_ _stx11551_)
             (_E1155411569_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1155211565_)))
             (_E1155311604_
              (lambda ()
                (if (gx#stx-pair? _e1155211565_)
                    (let ((_e1155511573_ (gx#syntax-e _e1155211565_)))
                      (let ((_hd1155611576_ (##car _e1155511573_))
                            (_tl1155711578_ (##cdr _e1155511573_)))
                        (if (gx#stx-pair? _tl1155711578_)
                            (let ((_e1155811581_ (gx#syntax-e _tl1155711578_)))
                              (let ((_hd1155911584_ (##car _e1155811581_))
                                    (_tl1156011586_ (##cdr _e1155811581_)))
                                (let ((_id11589_ _hd1155911584_))
                                  (if (gx#stx-pair? _tl1156011586_)
                                      (let ((_e1156111591_
                                             (gx#syntax-e _tl1156011586_)))
                                        (let ((_hd1156211594_
                                               (##car _e1156111591_))
                                              (_tl1156311596_
                                               (##cdr _e1156111591_)))
                                          (let ((_expr11599_ _hd1156211594_))
                                            (if (gx#stx-null? _tl1156311596_)
                                                (if (gx#identifier? _id11589_)
                                                    (let ((_g12509_
                                                           (gx#core-expand-expression+1
                                                            _expr11599_)))
                                                      (begin
                                                        (let ((_g12510_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12509_)
                           (##vector-length _g12509_)
                           1)))
                  (if (not (##fx= _g12510_ 2))
                      (error "Context expects 2 values" _g12510_)))
                (let ((_e-stx11601_ (##vector-ref _g12509_ 0))
                      (_e11602_ (##vector-ref _g12509_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11589_ _e11602_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11589_)
                                 (cons _e-stx11601_ '())))
                     (gx#stx-source _stx11551_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1155411569_))
                                                (_E1155411569_)))))
                                      (_E1155411569_)))))
                            (_E1155411569_))))
                    (_E1155411569_)))))
        (_E1155311604_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11495_)
      (let* ((_e1149611509_ _stx11495_)
             (_E1149811513_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1149611509_)))
             (_E1149711547_
              (lambda ()
                (if (gx#stx-pair? _e1149611509_)
                    (let ((_e1149911517_ (gx#syntax-e _e1149611509_)))
                      (let ((_hd1150011520_ (##car _e1149911517_))
                            (_tl1150111522_ (##cdr _e1149911517_)))
                        (if (gx#stx-pair? _tl1150111522_)
                            (let ((_e1150211525_ (gx#syntax-e _tl1150111522_)))
                              (let ((_hd1150311528_ (##car _e1150211525_))
                                    (_tl1150411530_ (##cdr _e1150211525_)))
                                (let ((_id11533_ _hd1150311528_))
                                  (if (gx#stx-pair? _tl1150411530_)
                                      (let ((_e1150511535_
                                             (gx#syntax-e _tl1150411530_)))
                                        (let ((_hd1150611538_
                                               (##car _e1150511535_))
                                              (_tl1150711540_
                                               (##cdr _e1150511535_)))
                                          (let ((_alias-id11543_
                                                 _hd1150611538_))
                                            (if (gx#stx-null? _tl1150711540_)
                                                (if (if (gx#identifier?
                                                         _id11533_)
                                                        (gx#identifier?
                                                         _alias-id11543_)
                                                        '#f)
                                                    (let ((_alias-id11545_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11543_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id11533_
                                                         _alias-id11545_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11533_)
                             (cons _alias-id11545_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1149811513_))
                                                (_E1149811513_)))))
                                      (_E1149811513_)))))
                            (_E1149811513_))))
                    (_E1149811513_)))))
        (_E1149711547_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx11438_ _wrap?11439_)
        (let* ((_e1144011450_ _stx11438_)
               (_E1144211454_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1144011450_)))
               (_E1144111481_
                (lambda ()
                  (if (gx#stx-pair? _e1144011450_)
                      (let ((_e1144311458_ (gx#syntax-e _e1144011450_)))
                        (let ((_hd1144411461_ (##car _e1144311458_))
                              (_tl1144511463_ (##cdr _e1144311458_)))
                          (if (gx#stx-pair? _tl1144511463_)
                              (let ((_e1144611466_
                                     (gx#syntax-e _tl1144511463_)))
                                (let ((_hd1144711469_ (##car _e1144611466_))
                                      (_tl1144811471_ (##cdr _e1144611466_)))
                                  (let* ((_hd11474_ _hd1144711469_)
                                         (_body11476_ _tl1144811471_))
                                    (if (gx#core-bind-values? _hd11474_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0
                                              _hd11474_)
                                             (let ((_body11479_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd11474_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11438_
                         _body11476_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?11439_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body11479_)
                                                    (gx#stx-source _stx11438_))
                                                   _body11479_))))
                                         gx#current-expander-context
                                         (let ((__obj12502
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12502)
                                             __obj12502)))
                                        (_E1144211454_)))))
                              (_E1144211454_))))
                      (_E1144211454_)))))
          (_E1144111481_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx11488_)
          (let ((_wrap?11490_ '#t))
            (gx#core-expand-lambda%__% _stx11488_ _wrap?11490_))))
      (define gx#core-expand-lambda%
        (lambda _g12512_
          (let ((_g12511_ (length _g12512_)))
            (cond ((##fx= _g12511_ 1)
                   (apply gx#core-expand-lambda%__0 _g12512_))
                  ((##fx= _g12511_ 2)
                   (apply gx#core-expand-lambda%__% _g12512_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g12512_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11402_)
      (let* ((_e1140311410_ _stx11402_)
             (_E1140511414_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1140311410_)))
             (_E1140411433_
              (lambda ()
                (if (gx#stx-pair? _e1140311410_)
                    (let ((_e1140611418_ (gx#syntax-e _e1140311410_)))
                      (let ((_hd1140711421_ (##car _e1140611418_))
                            (_tl1140811423_ (##cdr _e1140611418_)))
                        (let ((_clauses11426_ _tl1140811423_))
                          (if (gx#stx-list? _clauses11426_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11428_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11428_)
                                     (let ((_$e11430_
                                            (gx#stx-source _clause11428_)))
                                       (if _$e11430_
                                           _$e11430_
                                           (gx#stx-source _stx11402_))))
                                    '#f))
                                 _clauses11426_))
                               (gx#stx-source _stx11402_))
                              (_E1140511414_)))))
                    (_E1140511414_)))))
        (_E1140411433_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11356_)
      (let* ((_e1135711367_ _stx11356_)
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
                            (let ((_e1136311383_ (gx#syntax-e _tl1136211380_)))
                              (let ((_hd1136411386_ (##car _e1136311383_))
                                    (_tl1136511388_ (##cdr _e1136311383_)))
                                (let* ((_hd11391_ _hd1136411386_)
                                       (_body11393_ _tl1136511388_))
                                  (if (gx#core-expand-let-bind? _hd11391_)
                                      (let ((_expressions11395_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11391_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11391_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11391_
                                                           _expressions11395_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11356_
                         _body11393_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11356_))))
                                         gx#current-expander-context
                                         (let ((__obj12503
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12503)
                                             __obj12503))))
                                      (_E1135911371_)))))
                            (_E1135911371_))))
                    (_E1135911371_)))))
        (_E1135811398_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11301_ _form11302_)
        (let* ((_e1130311313_ _stx11301_)
               (_E1130511317_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1130311313_)))
               (_E1130411342_
                (lambda ()
                  (if (gx#stx-pair? _e1130311313_)
                      (let ((_e1130611321_ (gx#syntax-e _e1130311313_)))
                        (let ((_hd1130711324_ (##car _e1130611321_))
                              (_tl1130811326_ (##cdr _e1130611321_)))
                          (if (gx#stx-pair? _tl1130811326_)
                              (let ((_e1130911329_
                                     (gx#syntax-e _tl1130811326_)))
                                (let ((_hd1131011332_ (##car _e1130911329_))
                                      (_tl1131111334_ (##cdr _e1130911329_)))
                                  (let* ((_hd11337_ _hd1131011332_)
                                         (_body11339_ _tl1131111334_))
                                    (if (gx#core-expand-let-bind? _hd11337_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11337_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form11302_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11337_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd11337_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11301_
                         _body11339_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11301_))))
                                         gx#current-expander-context
                                         (let ((__obj12504
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12504)
                                             __obj12504)))
                                        (_E1130511317_)))))
                              (_E1130511317_))))
                      (_E1130511317_)))))
          (_E1130411342_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx11349_)
          (let ((_form11351_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx11349_ _form11351_))))
      (define gx#core-expand-letrec-values%
        (lambda _g12514_
          (let ((_g12513_ (length _g12514_)))
            (cond ((##fx= _g12513_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g12514_))
                  ((##fx= _g12513_ 2)
                   (apply gx#core-expand-letrec-values%__% _g12514_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g12514_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11298_)
      (gx#core-expand-letrec-values%__% _stx11298_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11255_)
      (if (gx#stx-list? _stx11255_)
          (gx#stx-andmap
           (lambda (_bind11257_)
             (let* ((_e1125811268_ _bind11257_)
                    (_E1126011272_ (lambda () '#f))
                    (_E1125911294_
                     (lambda ()
                       (if (gx#stx-pair? _e1125811268_)
                           (let ((_e1126111276_ (gx#syntax-e _e1125811268_)))
                             (let ((_hd1126211279_ (##car _e1126111276_))
                                   (_tl1126311281_ (##cdr _e1126111276_)))
                               (let ((_hd11284_ _hd1126211279_))
                                 (if (gx#stx-pair? _tl1126311281_)
                                     (let ((_e1126411286_
                                            (gx#syntax-e _tl1126311281_)))
                                       (let ((_hd1126511289_
                                              (##car _e1126411286_))
                                             (_tl1126611291_
                                              (##cdr _e1126411286_)))
                                         (if (gx#stx-null? _tl1126611291_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11284_)
                                                 (_E1126011272_))
                                             (_E1126011272_))))
                                     (_E1126011272_)))))
                           (_E1126011272_)))))
               (_E1125911294_)))
           _stx11255_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11214_)
      (let* ((_e1121511225_ _bind11214_)
             (_E1121711229_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1121511225_)))
             (_E1121611251_
              (lambda ()
                (if (gx#stx-pair? _e1121511225_)
                    (let ((_e1121811233_ (gx#syntax-e _e1121511225_)))
                      (let ((_hd1121911236_ (##car _e1121811233_))
                            (_tl1122011238_ (##cdr _e1121811233_)))
                        (if (gx#stx-pair? _tl1122011238_)
                            (let ((_e1122111241_ (gx#syntax-e _tl1122011238_)))
                              (let ((_hd1122211244_ (##car _e1122111241_))
                                    (_tl1122311246_ (##cdr _e1122111241_)))
                                (let ((_expr11249_ _hd1122211244_))
                                  (if (gx#stx-null? _tl1122311246_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11249_)
                                          (_E1121711229_))
                                      (_E1121711229_)))))
                            (_E1121711229_))))
                    (_E1121711229_)))))
        (_E1121611251_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11173_)
      (let* ((_e1117411184_ _bind11173_)
             (_E1117611188_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1117411184_)))
             (_E1117511210_
              (lambda ()
                (if (gx#stx-pair? _e1117411184_)
                    (let ((_e1117711192_ (gx#syntax-e _e1117411184_)))
                      (let ((_hd1117811195_ (##car _e1117711192_))
                            (_tl1117911197_ (##cdr _e1117711192_)))
                        (let ((_hd11200_ _hd1117811195_))
                          (if (gx#stx-pair? _tl1117911197_)
                              (let ((_e1118011202_
                                     (gx#syntax-e _tl1117911197_)))
                                (let ((_hd1118111205_ (##car _e1118011202_))
                                      (_tl1118211207_ (##cdr _e1118011202_)))
                                  (if (gx#stx-null? _tl1118211207_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11200_)
                                          (_E1117611188_))
                                      (_E1117611188_))))
                              (_E1117611188_)))))
                    (_E1117611188_)))))
        (_E1117511210_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11131_ _expr11132_)
      (let* ((_e1113311143_ _bind11131_)
             (_E1113511147_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1113311143_)))
             (_E1113411169_
              (lambda ()
                (if (gx#stx-pair? _e1113311143_)
                    (let ((_e1113611151_ (gx#syntax-e _e1113311143_)))
                      (let ((_hd1113711154_ (##car _e1113611151_))
                            (_tl1113811156_ (##cdr _e1113611151_)))
                        (let ((_hd11159_ _hd1113711154_))
                          (if (gx#stx-pair? _tl1113811156_)
                              (let ((_e1113911161_
                                     (gx#syntax-e _tl1113811156_)))
                                (let ((_hd1114011164_ (##car _e1113911161_))
                                      (_tl1114111166_ (##cdr _e1113911161_)))
                                  (if (gx#stx-null? _tl1114111166_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11159_)
                                                (cons _expr11132_ '()))
                                          (_E1113511147_))
                                      (_E1113511147_))))
                              (_E1113511147_)))))
                    (_E1113511147_)))))
        (_E1113411169_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11085_)
      (let* ((_e1108611096_ _stx11085_)
             (_E1108811100_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1108611096_)))
             (_E1108711127_
              (lambda ()
                (if (gx#stx-pair? _e1108611096_)
                    (let ((_e1108911104_ (gx#syntax-e _e1108611096_)))
                      (let ((_hd1109011107_ (##car _e1108911104_))
                            (_tl1109111109_ (##cdr _e1108911104_)))
                        (if (gx#stx-pair? _tl1109111109_)
                            (let ((_e1109211112_ (gx#syntax-e _tl1109111109_)))
                              (let ((_hd1109311115_ (##car _e1109211112_))
                                    (_tl1109411117_ (##cdr _e1109211112_)))
                                (let* ((_hd11120_ _hd1109311115_)
                                       (_body11122_ _tl1109411117_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11120_)
                                      (let ((_expanders11124_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11120_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11120_
                                              _expanders11124_)
                                             (gx#core-expand-local-block
                                              _stx11085_
                                              _body11122_)))
                                         gx#current-expander-context
                                         (let ((__obj12505
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12505)
                                             __obj12505))))
                                      (_E1108811100_)))))
                            (_E1108811100_))))
                    (_E1108811100_)))))
        (_E1108711127_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx11034_)
      (let* ((_e1103511045_ _stx11034_)
             (_E1103711049_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1103511045_)))
             (_E1103611081_
              (lambda ()
                (if (gx#stx-pair? _e1103511045_)
                    (let ((_e1103811053_ (gx#syntax-e _e1103511045_)))
                      (let ((_hd1103911056_ (##car _e1103811053_))
                            (_tl1104011058_ (##cdr _e1103811053_)))
                        (if (gx#stx-pair? _tl1104011058_)
                            (let ((_e1104111061_ (gx#syntax-e _tl1104011058_)))
                              (let ((_hd1104211064_ (##car _e1104111061_))
                                    (_tl1104311066_ (##cdr _e1104111061_)))
                                (let* ((_hd11069_ _hd1104211064_)
                                       (_body11071_ _tl1104311066_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11069_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11069_
                                            (make-list
                                             (gx#stx-length _hd11069_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1107311076_
                                                     _g1107411078_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1107311076_
                                               _g1107411078_
                                               '#t))
                                            _hd11069_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd11069_))
                                           (gx#core-expand-local-block
                                            _stx11034_
                                            _body11071_)))
                                       gx#current-expander-context
                                       (let ((__obj12506
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj12506)
                                           __obj12506)))
                                      (_E1103711049_)))))
                            (_E1103711049_))))
                    (_E1103711049_)))))
        (_E1103611081_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx10991_)
      (if (gx#stx-list? _stx10991_)
          (gx#stx-andmap
           (lambda (_bind10993_)
             (let* ((_e1099411004_ _bind10993_)
                    (_E1099611008_ (lambda () '#f))
                    (_E1099511030_
                     (lambda ()
                       (if (gx#stx-pair? _e1099411004_)
                           (let ((_e1099711012_ (gx#syntax-e _e1099411004_)))
                             (let ((_hd1099811015_ (##car _e1099711012_))
                                   (_tl1099911017_ (##cdr _e1099711012_)))
                               (let ((_hd11020_ _hd1099811015_))
                                 (if (gx#stx-pair? _tl1099911017_)
                                     (let ((_e1100011022_
                                            (gx#syntax-e _tl1099911017_)))
                                       (let ((_hd1100111025_
                                              (##car _e1100011022_))
                                             (_tl1100211027_
                                              (##cdr _e1100011022_)))
                                         (if (gx#stx-null? _tl1100211027_)
                                             (if '#t
                                                 (gx#identifier? _hd11020_)
                                                 (_E1099611008_))
                                             (_E1099611008_))))
                                     (_E1099611008_)))))
                           (_E1099611008_)))))
               (_E1099511030_)))
           _stx10991_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind10948_)
      (let* ((_e1094910959_ _bind10948_)
             (_E1095110963_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1094910959_)))
             (_E1095010987_
              (lambda ()
                (if (gx#stx-pair? _e1094910959_)
                    (let ((_e1095210967_ (gx#syntax-e _e1094910959_)))
                      (let ((_hd1095310970_ (##car _e1095210967_))
                            (_tl1095410972_ (##cdr _e1095210967_)))
                        (if (gx#stx-pair? _tl1095410972_)
                            (let ((_e1095510975_ (gx#syntax-e _tl1095410972_)))
                              (let ((_hd1095610978_ (##car _e1095510975_))
                                    (_tl1095710980_ (##cdr _e1095510975_)))
                                (let ((_expr10983_ _hd1095610978_))
                                  (if (gx#stx-null? _tl1095710980_)
                                      (if '#t
                                          (let ((_g12515_
                                                 (gx#core-expand-expression+1
                                                  _expr10983_)))
                                            (begin
                                              (let ((_g12516_
                                                     (if (##values? _g12515_)
                                                         (##vector-length
                                                          _g12515_)
                                                         1)))
                                                (if (not (##fx= _g12516_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12516_)))
                                              (let ((_e10985_
                                                     (##vector-ref
                                                      _g12515_
                                                      1)))
                                                _e10985_)))
                                          (_E1095110963_))
                                      (_E1095110963_)))))
                            (_E1095110963_))))
                    (_E1095110963_)))))
        (_E1095010987_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind10893_ _e10894_ _rebind?10895_)
        (let* ((_e1089610906_ _bind10893_)
               (_E1089810910_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1089610906_)))
               (_E1089710932_
                (lambda ()
                  (if (gx#stx-pair? _e1089610906_)
                      (let ((_e1089910914_ (gx#syntax-e _e1089610906_)))
                        (let ((_hd1090010917_ (##car _e1089910914_))
                              (_tl1090110919_ (##cdr _e1089910914_)))
                          (let ((_id10922_ _hd1090010917_))
                            (if (gx#stx-pair? _tl1090110919_)
                                (let ((_e1090210924_
                                       (gx#syntax-e _tl1090110919_)))
                                  (let ((_hd1090310927_ (##car _e1090210924_))
                                        (_tl1090410929_ (##cdr _e1090210924_)))
                                    (if (gx#stx-null? _tl1090410929_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id10922_
                                             _e10894_
                                             _rebind?10895_)
                                            (_E1089810910_))
                                        (_E1089810910_))))
                                (_E1089810910_)))))
                      (_E1089810910_)))))
          (_E1089710932_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind10939_ _e10940_)
          (let ((_rebind?10942_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind10939_
             _e10940_
             _rebind?10942_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g12518_
          (let ((_g12517_ (length _g12518_)))
            (cond ((##fx= _g12517_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g12518_))
                  ((##fx= _g12517_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g12518_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g12518_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx10851_)
      (let* ((_e1085210862_ _stx10851_)
             (_E1085410866_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1085210862_)))
             (_E1085310888_
              (lambda ()
                (if (gx#stx-pair? _e1085210862_)
                    (let ((_e1085510870_ (gx#syntax-e _e1085210862_)))
                      (let ((_hd1085610873_ (##car _e1085510870_))
                            (_tl1085710875_ (##cdr _e1085510870_)))
                        (if (gx#stx-pair? _tl1085710875_)
                            (let ((_e1085810878_ (gx#syntax-e _tl1085710875_)))
                              (let ((_hd1085910881_ (##car _e1085810878_))
                                    (_tl1086010883_ (##cdr _e1085810878_)))
                                (let ((_expr10886_ _hd1085910881_))
                                  (if (gx#stx-null? _tl1086010883_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10886_)
                                          (_E1085410866_))
                                      (_E1085410866_)))))
                            (_E1085410866_))))
                    (_E1085410866_)))))
        (_E1085310888_))))
  (define gx#core-expand-quote%
    (lambda (_stx10810_)
      (let* ((_e1081110821_ _stx10810_)
             (_E1081310825_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1081110821_)))
             (_E1081210847_
              (lambda ()
                (if (gx#stx-pair? _e1081110821_)
                    (let ((_e1081410829_ (gx#syntax-e _e1081110821_)))
                      (let ((_hd1081510832_ (##car _e1081410829_))
                            (_tl1081610834_ (##cdr _e1081410829_)))
                        (if (gx#stx-pair? _tl1081610834_)
                            (let ((_e1081710837_ (gx#syntax-e _tl1081610834_)))
                              (let ((_hd1081810840_ (##car _e1081710837_))
                                    (_tl1081910842_ (##cdr _e1081710837_)))
                                (let ((_e10845_ _hd1081810840_))
                                  (if (gx#stx-null? _tl1081910842_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10845_)
                                                       '()))
                                           (gx#stx-source _stx10810_))
                                          (_E1081310825_))
                                      (_E1081310825_)))))
                            (_E1081310825_))))
                    (_E1081310825_)))))
        (_E1081210847_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10769_)
      (let* ((_e1077010780_ _stx10769_)
             (_E1077210784_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1077010780_)))
             (_E1077110806_
              (lambda ()
                (if (gx#stx-pair? _e1077010780_)
                    (let ((_e1077310788_ (gx#syntax-e _e1077010780_)))
                      (let ((_hd1077410791_ (##car _e1077310788_))
                            (_tl1077510793_ (##cdr _e1077310788_)))
                        (if (gx#stx-pair? _tl1077510793_)
                            (let ((_e1077610796_ (gx#syntax-e _tl1077510793_)))
                              (let ((_hd1077710799_ (##car _e1077610796_))
                                    (_tl1077810801_ (##cdr _e1077610796_)))
                                (let ((_e10804_ _hd1077710799_))
                                  (if (gx#stx-null? _tl1077810801_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10804_)
                                                       '()))
                                           (gx#stx-source _stx10769_))
                                          (_E1077210784_))
                                      (_E1077210784_)))))
                            (_E1077210784_))))
                    (_E1077210784_)))))
        (_E1077110806_))))
  (define gx#core-expand-call%
    (lambda (_stx10726_)
      (let* ((_e1072710737_ _stx10726_)
             (_E1072910741_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1072710737_)))
             (_E1072810765_
              (lambda ()
                (if (gx#stx-pair? _e1072710737_)
                    (let ((_e1073010745_ (gx#syntax-e _e1072710737_)))
                      (let ((_hd1073110748_ (##car _e1073010745_))
                            (_tl1073210750_ (##cdr _e1073010745_)))
                        (if (gx#stx-pair? _tl1073210750_)
                            (let ((_e1073310753_ (gx#syntax-e _tl1073210750_)))
                              (let ((_hd1073410756_ (##car _e1073310753_))
                                    (_tl1073510758_ (##cdr _e1073310753_)))
                                (let* ((_rator10761_ _hd1073410756_)
                                       (_args10763_ _tl1073510758_))
                                  (if (gx#stx-list? _args10763_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10761_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10763_))
                                       (gx#stx-source _stx10726_))
                                      (_E1072910741_)))))
                            (_E1072910741_))))
                    (_E1072910741_)))))
        (_E1072810765_))))
  (define gx#core-expand-if%
    (lambda (_stx10659_)
      (let* ((_e1066010676_ _stx10659_)
             (_E1066210680_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1066010676_)))
             (_E1066110722_
              (lambda ()
                (if (gx#stx-pair? _e1066010676_)
                    (let ((_e1066310684_ (gx#syntax-e _e1066010676_)))
                      (let ((_hd1066410687_ (##car _e1066310684_))
                            (_tl1066510689_ (##cdr _e1066310684_)))
                        (if (gx#stx-pair? _tl1066510689_)
                            (let ((_e1066610692_ (gx#syntax-e _tl1066510689_)))
                              (let ((_hd1066710695_ (##car _e1066610692_))
                                    (_tl1066810697_ (##cdr _e1066610692_)))
                                (let ((_test10700_ _hd1066710695_))
                                  (if (gx#stx-pair? _tl1066810697_)
                                      (let ((_e1066910702_
                                             (gx#syntax-e _tl1066810697_)))
                                        (let ((_hd1067010705_
                                               (##car _e1066910702_))
                                              (_tl1067110707_
                                               (##cdr _e1066910702_)))
                                          (let ((_K10710_ _hd1067010705_))
                                            (if (gx#stx-pair? _tl1067110707_)
                                                (let ((_e1067210712_
                                                       (gx#syntax-e
                                                        _tl1067110707_)))
                                                  (let ((_hd1067310715_
                                                         (##car _e1067210712_))
                                                        (_tl1067410717_
                                                         (##cdr _e1067210712_)))
                                                    (let ((_E10720_
                                                           _hd1067310715_))
                                                      (if (gx#stx-null?
                                                           _tl1067410717_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10700_)
                                   (cons (gx#core-expand-expression _K10710_)
                                         (cons (gx#core-expand-expression
                                                _E10720_)
                                               '()))))
                       (gx#stx-source _stx10659_))
                      (_E1066210680_))
                  (_E1066210680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1066210680_)))))
                                      (_E1066210680_)))))
                            (_E1066210680_))))
                    (_E1066210680_)))))
        (_E1066110722_))))
  (define gx#core-expand-ref%
    (lambda (_stx10618_)
      (let* ((_e1061910629_ _stx10618_)
             (_E1062110633_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1061910629_)))
             (_E1062010655_
              (lambda ()
                (if (gx#stx-pair? _e1061910629_)
                    (let ((_e1062210637_ (gx#syntax-e _e1061910629_)))
                      (let ((_hd1062310640_ (##car _e1062210637_))
                            (_tl1062410642_ (##cdr _e1062210637_)))
                        (if (gx#stx-pair? _tl1062410642_)
                            (let ((_e1062510645_ (gx#syntax-e _tl1062410642_)))
                              (let ((_hd1062610648_ (##car _e1062510645_))
                                    (_tl1062710650_ (##cdr _e1062510645_)))
                                (let ((_id10653_ _hd1062610648_))
                                  (if (gx#stx-null? _tl1062710650_)
                                      (if (gx#core-runtime-ref? _id10653_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10653_
                                                        _stx10618_)
                                                       '()))
                                           (gx#stx-source _stx10618_))
                                          (_E1062110633_))
                                      (_E1062110633_)))))
                            (_E1062110633_))))
                    (_E1062110633_)))))
        (_E1062010655_))))
  (define gx#core-expand-setq%
    (lambda (_stx10564_)
      (let* ((_e1056510578_ _stx10564_)
             (_E1056710582_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1056510578_)))
             (_E1056610614_
              (lambda ()
                (if (gx#stx-pair? _e1056510578_)
                    (let ((_e1056810586_ (gx#syntax-e _e1056510578_)))
                      (let ((_hd1056910589_ (##car _e1056810586_))
                            (_tl1057010591_ (##cdr _e1056810586_)))
                        (if (gx#stx-pair? _tl1057010591_)
                            (let ((_e1057110594_ (gx#syntax-e _tl1057010591_)))
                              (let ((_hd1057210597_ (##car _e1057110594_))
                                    (_tl1057310599_ (##cdr _e1057110594_)))
                                (let ((_id10602_ _hd1057210597_))
                                  (if (gx#stx-pair? _tl1057310599_)
                                      (let ((_e1057410604_
                                             (gx#syntax-e _tl1057310599_)))
                                        (let ((_hd1057510607_
                                               (##car _e1057410604_))
                                              (_tl1057610609_
                                               (##cdr _e1057410604_)))
                                          (let ((_expr10612_ _hd1057510607_))
                                            (if (gx#stx-null? _tl1057610609_)
                                                (if (gx#core-runtime-ref?
                                                     _id10602_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10602_
                          _stx10564_)
                         (cons (gx#core-expand-expression _expr10612_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10564_))
                                                    (_E1056710582_))
                                                (_E1056710582_)))))
                                      (_E1056710582_)))))
                            (_E1056710582_))))
                    (_E1056710582_)))))
        (_E1056610614_))))
  (define gx#macro-expand-extern
    (lambda (_stx10412_)
      (letrec ((_generate10414_
                (lambda (_body10444_)
                  (let _lp10446_ ((_rest10448_ _body10444_)
                                  (_ns10449_ (gx#core-context-namespace__0))
                                  (_r10450_ '()))
                    (let* ((_e1045110466_ _rest10448_)
                           (_E1046410470_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1045110466_)))
                           (_E1046010474_
                            (lambda ()
                              (if (gx#stx-null? _e1045110466_)
                                  (if '#t (reverse _r10450_) (_E1046410470_))
                                  (_E1046410470_))))
                           (_E1045310531_
                            (lambda ()
                              (if (gx#stx-pair? _e1045110466_)
                                  (let ((_e1046110478_
                                         (gx#syntax-e _e1045110466_)))
                                    (let ((_hd1046210481_
                                           (##car _e1046110478_))
                                          (_tl1046310483_
                                           (##cdr _e1046110478_)))
                                      (let* ((_hd10486_ _hd1046210481_)
                                             (_rest10488_ _tl1046310483_))
                                        (if '#t
                                            (if (gx#identifier? _hd10486_)
                                                (_lp10446_
                                                 _rest10488_
                                                 _ns10449_
                                                 (cons (cons _hd10486_
                                                             (cons (if _ns10449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10486_
                                _ns10449_
                                '"#"
                                _hd10486_)
                               _hd10486_)
                           '()))
               _r10450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1048910499_
                                                        _hd10486_)
                                                       (_E1049110503_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1048910499_)))
                                                       (_E1049010527_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1048910499_)
                                                              (let ((_e1049210507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1048910499_)))
                        (let ((_hd1049310510_ (##car _e1049210507_))
                              (_tl1049410512_ (##cdr _e1049210507_)))
                          (let ((_id10515_ _hd1049310510_))
                            (if (gx#stx-pair? _tl1049410512_)
                                (let ((_e1049510517_
                                       (gx#syntax-e _tl1049410512_)))
                                  (let ((_hd1049610520_ (##car _e1049510517_))
                                        (_tl1049710522_ (##cdr _e1049510517_)))
                                    (let ((_eid10525_ _hd1049610520_))
                                      (if (gx#stx-null? _tl1049710522_)
                                          (if (if (gx#identifier? _id10515_)
                                                  (gx#identifier? _eid10525_)
                                                  '#f)
                                              (_lp10446_
                                               _rest10488_
                                               _ns10449_
                                               (cons (cons _id10515_
                                                           (cons _eid10525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10450_))
                                              (_E1049110503_))
                                          (_E1049110503_)))))
                                (_E1049110503_)))))
                      (_E1049110503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1049010527_)))
                                            (_E1046010474_)))))
                                  (_E1046010474_))))
                           (_E1045210560_
                            (lambda ()
                              (if (gx#stx-pair? _e1045110466_)
                                  (let ((_e1045410535_
                                         (gx#syntax-e _e1045110466_)))
                                    (let ((_hd1045510538_
                                           (##car _e1045410535_))
                                          (_tl1045610540_
                                           (##cdr _e1045410535_)))
                                      (if (eq? (gx#stx-e _hd1045510538_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1045610540_)
                                              (let ((_e1045710543_
                                                     (gx#syntax-e
                                                      _tl1045610540_)))
                                                (let ((_hd1045810546_
                                                       (##car _e1045710543_))
                                                      (_tl1045910548_
                                                       (##cdr _e1045710543_)))
                                                  (let* ((_ns10551_
                                                          _hd1045810546_)
                                                         (_rest10553_
                                                          _tl1045910548_))
                                                    (if '#t
                                                        (let ((_ns10558_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10551_)
                           (symbol->string (gx#stx-e _ns10551_))
                           (if (let ((_$e10555_ (gx#stx-string? _ns10551_)))
                                 (if _$e10555_
                                     _$e10555_
                                     (gx#stx-false? _ns10551_)))
                               (gx#stx-e _ns10551_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10412_
                                _ns10551_)))))
                  (_lp10446_ _rest10553_ _ns10558_ _r10450_))
                (_E1045310531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1045310531_))
                                          (_E1045310531_))))
                                  (_E1045310531_)))))
                      (_E1045210560_))))))
        (let* ((_e1041510422_ _stx10412_)
               (_E1041710426_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1041510422_)))
               (_E1041610440_
                (lambda ()
                  (if (gx#stx-pair? _e1041510422_)
                      (let ((_e1041810430_ (gx#syntax-e _e1041510422_)))
                        (let ((_hd1041910433_ (##car _e1041810430_))
                              (_tl1042010435_ (##cdr _e1041810430_)))
                          (let ((_body10438_ _tl1042010435_))
                            (if (gx#stx-list? _body10438_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10414_ _body10438_))
                                (_E1041710426_)))))
                      (_E1041710426_)))))
          (_E1041610440_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10358_)
      (let* ((_e1035910372_ _stx10358_)
             (_E1036110376_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1035910372_)))
             (_E1036010408_
              (lambda ()
                (if (gx#stx-pair? _e1035910372_)
                    (let ((_e1036210380_ (gx#syntax-e _e1035910372_)))
                      (let ((_hd1036310383_ (##car _e1036210380_))
                            (_tl1036410385_ (##cdr _e1036210380_)))
                        (if (gx#stx-pair? _tl1036410385_)
                            (let ((_e1036510388_ (gx#syntax-e _tl1036410385_)))
                              (let ((_hd1036610391_ (##car _e1036510388_))
                                    (_tl1036710393_ (##cdr _e1036510388_)))
                                (let ((_hd10396_ _hd1036610391_))
                                  (if (gx#stx-pair? _tl1036710393_)
                                      (let ((_e1036810398_
                                             (gx#syntax-e _tl1036710393_)))
                                        (let ((_hd1036910401_
                                               (##car _e1036810398_))
                                              (_tl1037010403_
                                               (##cdr _e1036810398_)))
                                          (let ((_expr10406_ _hd1036910401_))
                                            (if (gx#stx-null? _tl1037010403_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10396_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10396_)
                        (cons _expr10406_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1036110376_))
                                                (_E1036110376_)))))
                                      (_E1036110376_)))))
                            (_E1036110376_))))
                    (_E1036110376_)))))
        (_E1036010408_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10304_)
      (let* ((_e1030510318_ _stx10304_)
             (_E1030710322_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1030510318_)))
             (_E1030610354_
              (lambda ()
                (if (gx#stx-pair? _e1030510318_)
                    (let ((_e1030810326_ (gx#syntax-e _e1030510318_)))
                      (let ((_hd1030910329_ (##car _e1030810326_))
                            (_tl1031010331_ (##cdr _e1030810326_)))
                        (if (gx#stx-pair? _tl1031010331_)
                            (let ((_e1031110334_ (gx#syntax-e _tl1031010331_)))
                              (let ((_hd1031210337_ (##car _e1031110334_))
                                    (_tl1031310339_ (##cdr _e1031110334_)))
                                (let ((_hd10342_ _hd1031210337_))
                                  (if (gx#stx-pair? _tl1031310339_)
                                      (let ((_e1031410344_
                                             (gx#syntax-e _tl1031310339_)))
                                        (let ((_hd1031510347_
                                               (##car _e1031410344_))
                                              (_tl1031610349_
                                               (##cdr _e1031410344_)))
                                          (let ((_expr10352_ _hd1031510347_))
                                            (if (gx#stx-null? _tl1031610349_)
                                                (if (gx#identifier? _hd10342_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10342_
                                                                (cons _expr10352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1030710322_))
                                                (_E1030710322_)))))
                                      (_E1030710322_)))))
                            (_E1030710322_))))
                    (_E1030710322_)))))
        (_E1030610354_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10250_)
      (let* ((_e1025110264_ _stx10250_)
             (_E1025310268_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1025110264_)))
             (_E1025210300_
              (lambda ()
                (if (gx#stx-pair? _e1025110264_)
                    (let ((_e1025410272_ (gx#syntax-e _e1025110264_)))
                      (let ((_hd1025510275_ (##car _e1025410272_))
                            (_tl1025610277_ (##cdr _e1025410272_)))
                        (if (gx#stx-pair? _tl1025610277_)
                            (let ((_e1025710280_ (gx#syntax-e _tl1025610277_)))
                              (let ((_hd1025810283_ (##car _e1025710280_))
                                    (_tl1025910285_ (##cdr _e1025710280_)))
                                (let ((_id10288_ _hd1025810283_))
                                  (if (gx#stx-pair? _tl1025910285_)
                                      (let ((_e1026010290_
                                             (gx#syntax-e _tl1025910285_)))
                                        (let ((_hd1026110293_
                                               (##car _e1026010290_))
                                              (_tl1026210295_
                                               (##cdr _e1026010290_)))
                                          (let ((_alias-id10298_
                                                 _hd1026110293_))
                                            (if (gx#stx-null? _tl1026210295_)
                                                (if (if (gx#identifier?
                                                         _id10288_)
                                                        (gx#identifier?
                                                         _alias-id10298_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10288_
                                                                (cons _alias-id10298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1025310268_))
                                                (_E1025310268_)))))
                                      (_E1025310268_)))))
                            (_E1025310268_))))
                    (_E1025310268_)))))
        (_E1025210300_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10207_)
      (let* ((_e1020810218_ _stx10207_)
             (_E1021010222_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1020810218_)))
             (_E1020910246_
              (lambda ()
                (if (gx#stx-pair? _e1020810218_)
                    (let ((_e1021110226_ (gx#syntax-e _e1020810218_)))
                      (let ((_hd1021210229_ (##car _e1021110226_))
                            (_tl1021310231_ (##cdr _e1021110226_)))
                        (if (gx#stx-pair? _tl1021310231_)
                            (let ((_e1021410234_ (gx#syntax-e _tl1021310231_)))
                              (let ((_hd1021510237_ (##car _e1021410234_))
                                    (_tl1021610239_ (##cdr _e1021410234_)))
                                (let* ((_hd10242_ _hd1021510237_)
                                       (_body10244_ _tl1021610239_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd10242_)
                                          (if (gx#stx-list? _body10244_)
                                              (not (gx#stx-null? _body10244_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10242_)
                                       _body10244_)
                                      (_E1021010222_)))))
                            (_E1021010222_))))
                    (_E1021010222_)))))
        (_E1020910246_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10143_)
      (letrec ((_generate10145_
                (lambda (_clause10175_)
                  (let* ((_e1017610183_ _clause10175_)
                         (_E1017810187_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10143_
                             _clause10175_)))
                         (_E1017710203_
                          (lambda ()
                            (if (gx#stx-pair? _e1017610183_)
                                (let ((_e1017910191_
                                       (gx#syntax-e _e1017610183_)))
                                  (let ((_hd1018010194_ (##car _e1017910191_))
                                        (_tl1018110196_ (##cdr _e1017910191_)))
                                    (let* ((_hd10199_ _hd1018010194_)
                                           (_body10201_ _tl1018110196_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd10199_)
                                              (if (gx#stx-list? _body10201_)
                                                  (not (gx#stx-null?
                                                        _body10201_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10199_)
                                                 _body10201_)
                                           (gx#stx-source _clause10175_))
                                          (_E1017810187_)))))
                                (_E1017810187_)))))
                    (_E1017710203_)))))
        (let* ((_e1014610153_ _stx10143_)
               (_E1014810157_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1014610153_)))
               (_E1014710171_
                (lambda ()
                  (if (gx#stx-pair? _e1014610153_)
                      (let ((_e1014910161_ (gx#syntax-e _e1014610153_)))
                        (let ((_hd1015010164_ (##car _e1014910161_))
                              (_tl1015110166_ (##cdr _e1014910161_)))
                          (let ((_clauses10169_ _tl1015110166_))
                            (if (gx#stx-list? _clauses10169_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10145_ _clauses10169_))
                                (_E1014810157_)))))
                      (_E1014810157_)))))
          (_E1014710171_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx10044_ _form10045_)
        (letrec ((_generate10047_
                  (lambda (_bind10090_)
                    (let* ((_e1009110101_ _bind10090_)
                           (_E1009310105_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx10044_
                               _bind10090_)))
                           (_E1009210129_
                            (lambda ()
                              (if (gx#stx-pair? _e1009110101_)
                                  (let ((_e1009410109_
                                         (gx#syntax-e _e1009110101_)))
                                    (let ((_hd1009510112_
                                           (##car _e1009410109_))
                                          (_tl1009610114_
                                           (##cdr _e1009410109_)))
                                      (let ((_ids10117_ _hd1009510112_))
                                        (if (gx#stx-pair? _tl1009610114_)
                                            (let ((_e1009710119_
                                                   (gx#syntax-e
                                                    _tl1009610114_)))
                                              (let ((_hd1009810122_
                                                     (##car _e1009710119_))
                                                    (_tl1009910124_
                                                     (##cdr _e1009710119_)))
                                                (let ((_expr10127_
                                                       _hd1009810122_))
                                                  (if (gx#stx-null?
                                                       _tl1009910124_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10117_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10117_)
                        (cons _expr10127_ '()))
                  (_E1009310105_))
              (_E1009310105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1009310105_)))))
                                  (_E1009310105_)))))
                      (_E1009210129_)))))
          (let* ((_e1004810058_ _stx10044_)
                 (_E1005010062_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1004810058_)))
                 (_E1004910086_
                  (lambda ()
                    (if (gx#stx-pair? _e1004810058_)
                        (let ((_e1005110066_ (gx#syntax-e _e1004810058_)))
                          (let ((_hd1005210069_ (##car _e1005110066_))
                                (_tl1005310071_ (##cdr _e1005110066_)))
                            (if (gx#stx-pair? _tl1005310071_)
                                (let ((_e1005410074_
                                       (gx#syntax-e _tl1005310071_)))
                                  (let ((_hd1005510077_ (##car _e1005410074_))
                                        (_tl1005610079_ (##cdr _e1005410074_)))
                                    (let* ((_hd10082_ _hd1005510077_)
                                           (_body10084_ _tl1005610079_))
                                      (if (if (gx#stx-list? _hd10082_)
                                              (if (gx#stx-list? _body10084_)
                                                  (not (gx#stx-null?
                                                        _body10084_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form10045_
                                           (gx#stx-map1
                                            _generate10047_
                                            _hd10082_)
                                           _body10084_)
                                          (_E1005010062_)))))
                                (_E1005010062_))))
                        (_E1005010062_)))))
            (_E1004910086_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx10136_)
          (let ((_form10138_ '%#let-values))
            (gx#macro-expand-let-values__% _stx10136_ _form10138_))))
      (define gx#macro-expand-let-values
        (lambda _g12520_
          (let ((_g12519_ (length _g12520_)))
            (cond ((##fx= _g12519_ 1)
                   (apply gx#macro-expand-let-values__0 _g12520_))
                  ((##fx= _g12519_ 2)
                   (apply gx#macro-expand-let-values__% _g12520_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g12520_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx10041_)
      (gx#macro-expand-let-values__% _stx10041_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx10039_)
      (gx#macro-expand-let-values__% _stx10039_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9930_)
      (let* ((_e99319957_ _stx9930_)
             (_E99439961_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99319957_)))
             (_E993310003_
              (lambda ()
                (if (gx#stx-pair? _e99319957_)
                    (let ((_e99449965_ (gx#syntax-e _e99319957_)))
                      (let ((_hd99459968_ (##car _e99449965_))
                            (_tl99469970_ (##cdr _e99449965_)))
                        (if (gx#stx-pair? _tl99469970_)
                            (let ((_e99479973_ (gx#syntax-e _tl99469970_)))
                              (let ((_hd99489976_ (##car _e99479973_))
                                    (_tl99499978_ (##cdr _e99479973_)))
                                (let ((_test9981_ _hd99489976_))
                                  (if (gx#stx-pair? _tl99499978_)
                                      (let ((_e99509983_
                                             (gx#syntax-e _tl99499978_)))
                                        (let ((_hd99519986_
                                               (##car _e99509983_))
                                              (_tl99529988_
                                               (##cdr _e99509983_)))
                                          (let ((_K9991_ _hd99519986_))
                                            (if (gx#stx-pair? _tl99529988_)
                                                (let ((_e99539993_
                                                       (gx#syntax-e
                                                        _tl99529988_)))
                                                  (let ((_hd99549996_
                                                         (##car _e99539993_))
                                                        (_tl99559998_
                                                         (##cdr _e99539993_)))
                                                    (let ((_E10001_
                                                           _hd99549996_))
                                                      (if (gx#stx-null?
                                                           _tl99559998_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test9981_
                                                               _K9991_
                                                               _E10001_)
                                                              (_E99439961_))
                                                          (_E99439961_)))))
                                                (_E99439961_)))))
                                      (_E99439961_)))))
                            (_E99439961_))))
                    (_E99439961_))))
             (_E993210035_
              (lambda ()
                (if (gx#stx-pair? _e99319957_)
                    (let ((_e993410007_ (gx#syntax-e _e99319957_)))
                      (let ((_hd993510010_ (##car _e993410007_))
                            (_tl993610012_ (##cdr _e993410007_)))
                        (if (gx#stx-pair? _tl993610012_)
                            (let ((_e993710015_ (gx#syntax-e _tl993610012_)))
                              (let ((_hd993810018_ (##car _e993710015_))
                                    (_tl993910020_ (##cdr _e993710015_)))
                                (let ((_test10023_ _hd993810018_))
                                  (if (gx#stx-pair? _tl993910020_)
                                      (let ((_e994010025_
                                             (gx#syntax-e _tl993910020_)))
                                        (let ((_hd994110028_
                                               (##car _e994010025_))
                                              (_tl994210030_
                                               (##cdr _e994010025_)))
                                          (let ((_K10033_ _hd994110028_))
                                            (if (gx#stx-null? _tl994210030_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test10023_
                                                     _K10033_
                                                     '#!void)
                                                    (_E993310003_))
                                                (_E993310003_)))))
                                      (_E993310003_)))))
                            (_E993310003_))))
                    (_E993310003_)))))
        (_E993210035_))))
  (define gx#free-identifier=?
    (lambda (_xid9918_ _yid9919_)
      (let ((_xe9921_ (gx#resolve-identifier__0 _xid9918_))
            (_ye9922_ (gx#resolve-identifier__0 _yid9919_)))
        (if (if _xe9921_ _ye9922_ '#f)
            (let ((_$e9924_ (eq? _xe9921_ _ye9922_)))
              (if _$e9924_
                  _$e9924_
                  (if (##structure-instance-of? _xe9921_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9922_ 'gx#binding::t)
                          (eq? (##unchecked-structure-ref
                                _xe9921_
                                '1
                                gx#binding::t
                                '#f)
                               (##unchecked-structure-ref
                                _ye9922_
                                '1
                                gx#binding::t
                                '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e9927_ _xe9921_)) (if _$e9927_ _$e9927_ _ye9922_))
                '#f
                (gx#stx-eq? _xid9918_ _yid9919_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9902_ _yid9903_)
      (letrec ((_context9905_
                (lambda (_e9916_)
                  (if (##structure-direct-instance-of?
                       _e9916_
                       'gx#syntax-quote::t)
                      (##unchecked-structure-ref
                       _e9916_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9906_
                (lambda (_e9914_)
                  (if (symbol? _e9914_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9914_
                           'gx#identifier-wrap::t)
                          (##unchecked-structure-ref
                           _e9914_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##unchecked-structure-ref
                           _e9914_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9907_
                (lambda (_e9912_)
                  (if (symbol? _e9912_)
                      _e9912_
                      (gx#syntax-local-unwrap _e9912_)))))
        (let ((_x9909_ (_unwrap9907_ _xid9902_))
              (_y9910_ (_unwrap9907_ _yid9903_)))
          (if (gx#stx-eq? _x9909_ _y9910_)
              (if (eq? (_context9905_ _x9909_) (_context9905_ _y9910_))
                  (equal? (_marks9906_ _x9909_) (_marks9906_ _y9910_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9900_)
      (if (gx#identifier? _stx9900_) (gx#core-identifier=? _stx9900_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9898_)
      (if (gx#identifier? _stx9898_)
          (gx#core-identifier=? _stx9898_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9896_)
      (if (gx#identifier? _x9896_)
          (if (not (gx#underscore? _x9896_)) _x9896_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx9842_ _where9843_)
        (let _lp9845_ ((_rest9847_ (gx#syntax->list _stx9842_)))
          (let* ((_rest98489856_ _rest9847_)
                 (_else98509864_ (lambda () '#t))
                 (_K98529874_
                  (lambda (_rest9867_ _hd9868_)
                    (if (not (gx#identifier? _hd9868_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where9843_
                         _hd9868_)
                        (if (find (lambda (_g98699871_)
                                    (gx#bound-identifier=?
                                     _g98699871_
                                     _hd9868_))
                                  _rest9867_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where9843_
                             _hd9868_)
                            (_lp9845_ _rest9867_))))))
            (if (##pair? _rest98489856_)
                (let ((_hd98539877_ (##car _rest98489856_))
                      (_tl98549879_ (##cdr _rest98489856_)))
                  (let* ((_hd9882_ _hd98539877_) (_rest9884_ _tl98549879_))
                    (_K98529874_ _rest9884_ _hd9882_)))
                (_else98509864_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx9889_)
          (let ((_where9891_ _stx9889_))
            (gx#check-duplicate-identifiers__% _stx9889_ _where9891_))))
      (define gx#check-duplicate-identifiers
        (lambda _g12522_
          (let ((_g12521_ (length _g12522_)))
            (cond ((##fx= _g12521_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g12522_))
                  ((##fx= _g12521_ 2)
                   (apply gx#check-duplicate-identifiers__% _g12522_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g12522_))))))))
  (define gx#core-bind-values?
    (lambda (_stx9834_)
      (gx#stx-andmap
       (lambda (_x9836_)
         (let ((_$e9838_ (gx#identifier? _x9836_)))
           (if _$e9838_ _$e9838_ (gx#stx-false? _x9836_))))
       _stx9834_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx9798_ _rebind?9799_ _phi9800_ _ctx9801_)
        (gx#stx-for-each1
         (lambda (_id9803_)
           (if (gx#identifier? _id9803_)
               (gx#core-bind-runtime!__%
                _id9803_
                _rebind?9799_
                _phi9800_
                _ctx9801_)
               '#!void))
         _stx9798_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx9808_)
          (let* ((_rebind?9810_ '#f)
                 (_phi9812_ (gx#current-expander-phi))
                 (_ctx9814_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9808_
             _rebind?9810_
             _phi9812_
             _ctx9814_))))
      (define gx#core-bind-values!__1
        (lambda (_stx9816_ _rebind?9817_)
          (let* ((_phi9819_ (gx#current-expander-phi))
                 (_ctx9821_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9816_
             _rebind?9817_
             _phi9819_
             _ctx9821_))))
      (define gx#core-bind-values!__2
        (lambda (_stx9823_ _rebind?9824_ _phi9825_)
          (let ((_ctx9827_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9823_
             _rebind?9824_
             _phi9825_
             _ctx9827_))))
      (define gx#core-bind-values!
        (lambda _g12524_
          (let ((_g12523_ (length _g12524_)))
            (cond ((##fx= _g12523_ 1) (apply gx#core-bind-values!__0 _g12524_))
                  ((##fx= _g12523_ 2) (apply gx#core-bind-values!__1 _g12524_))
                  ((##fx= _g12523_ 3) (apply gx#core-bind-values!__2 _g12524_))
                  ((##fx= _g12523_ 4) (apply gx#core-bind-values!__% _g12524_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g12524_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9793_)
      (gx#stx-map1
       (lambda (_x9795_)
         (if (gx#identifier? _x9795_) (gx#core-quote-syntax__0 _x9795_) '#f))
       _stx9793_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9786_)
      (if (gx#identifier? _stx9786_)
          (let* ((_bind9788_ (gx#resolve-identifier__0 _stx9786_))
                 (_$e9790_ (not _bind9788_)))
            (if _$e9790_
                _$e9790_
                (##structure-instance-of? _bind9788_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9778_ _form9779_)
      (let ((_bind9781_ (gx#resolve-identifier__0 _id9778_)))
        (if (##structure-instance-of? _bind9781_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9778_)
            (if (not _bind9781_)
                (if (let ((_$e9783_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e9783_
                          _$e9783_
                          (gx#core-extern-symbol? (gx#stx-e _id9778_))))
                    (gx#core-quote-syntax__0 _id9778_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9779_
                     _id9778_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9779_
                 _id9778_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id9737_ _rebind?9738_ _phi9739_ _ctx9740_)
        (let* ((_key9742_ (gx#core-identifier-key _id9737_))
               (_eid9744_
                (gx#make-binding-id__% _key9742_ '#f _phi9739_ _ctx9740_))
               (_bind9746_
                (if (##structure-instance-of? _ctx9740_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9744_
                     _key9742_
                     _phi9739_
                     _ctx9740_)
                    (if (##structure-instance-of? _ctx9740_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9744_
                         _key9742_
                         _phi9739_)
                        (if (##structure-instance-of?
                             _ctx9740_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid9744_
                             _key9742_
                             _phi9739_)
                            (##structure
                             gx#runtime-binding::t
                             _eid9744_
                             _key9742_
                             _phi9739_))))))
          (gx#bind-identifier!__%
           _id9737_
           _bind9746_
           _rebind?9738_
           _phi9739_
           _ctx9740_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id9752_)
          (let* ((_rebind?9754_ '#f)
                 (_phi9756_ (gx#current-expander-phi))
                 (_ctx9758_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9752_
             _rebind?9754_
             _phi9756_
             _ctx9758_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id9760_ _rebind?9761_)
          (let* ((_phi9763_ (gx#current-expander-phi))
                 (_ctx9765_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9760_
             _rebind?9761_
             _phi9763_
             _ctx9765_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id9767_ _rebind?9768_ _phi9769_)
          (let ((_ctx9771_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9767_
             _rebind?9768_
             _phi9769_
             _ctx9771_))))
      (define gx#core-bind-runtime!
        (lambda _g12526_
          (let ((_g12525_ (length _g12526_)))
            (cond ((##fx= _g12525_ 1)
                   (apply gx#core-bind-runtime!__0 _g12526_))
                  ((##fx= _g12525_ 2)
                   (apply gx#core-bind-runtime!__1 _g12526_))
                  ((##fx= _g12525_ 3)
                   (apply gx#core-bind-runtime!__2 _g12526_))
                  ((##fx= _g12525_ 4)
                   (apply gx#core-bind-runtime!__% _g12526_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g12526_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id9692_ _eid9693_ _rebind?9694_ _phi9695_ _ctx9696_)
        (let* ((_key9698_ (gx#core-identifier-key _id9692_))
               (_bind9700_
                (if (##structure-instance-of? _ctx9696_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9693_
                     _key9698_
                     _phi9695_
                     _ctx9696_)
                    (if (##structure-instance-of? _ctx9696_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9693_
                         _key9698_
                         _phi9695_)
                        (##structure
                         gx#runtime-binding::t
                         _eid9693_
                         _key9698_
                         _phi9695_)))))
          (gx#bind-identifier!__%
           _id9692_
           _bind9700_
           _rebind?9694_
           _phi9695_
           _ctx9696_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id9706_ _eid9707_)
          (let* ((_rebind?9709_ '#f)
                 (_phi9711_ (gx#current-expander-phi))
                 (_ctx9713_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9706_
             _eid9707_
             _rebind?9709_
             _phi9711_
             _ctx9713_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id9715_ _eid9716_ _rebind?9717_)
          (let* ((_phi9719_ (gx#current-expander-phi))
                 (_ctx9721_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9715_
             _eid9716_
             _rebind?9717_
             _phi9719_
             _ctx9721_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id9723_ _eid9724_ _rebind?9725_ _phi9726_)
          (let ((_ctx9728_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9723_
             _eid9724_
             _rebind?9725_
             _phi9726_
             _ctx9728_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g12528_
          (let ((_g12527_ (length _g12528_)))
            (cond ((##fx= _g12527_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g12528_))
                  ((##fx= _g12527_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g12528_))
                  ((##fx= _g12527_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g12528_))
                  ((##fx= _g12527_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g12528_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g12528_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id9652_ _eid9653_ _rebind?9654_ _phi9655_ _ctx9656_)
        (gx#bind-identifier!__%
         _id9652_
         (##structure
          gx#extern-binding::t
          _eid9653_
          (gx#core-identifier-key _id9652_)
          _phi9655_)
         _rebind?9654_
         _phi9655_
         _ctx9656_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id9661_ _eid9662_)
          (let* ((_rebind?9664_ '#f)
                 (_phi9666_ (gx#current-expander-phi))
                 (_ctx9668_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9661_
             _eid9662_
             _rebind?9664_
             _phi9666_
             _ctx9668_))))
      (define gx#core-bind-extern!__1
        (lambda (_id9670_ _eid9671_ _rebind?9672_)
          (let* ((_phi9674_ (gx#current-expander-phi))
                 (_ctx9676_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9670_
             _eid9671_
             _rebind?9672_
             _phi9674_
             _ctx9676_))))
      (define gx#core-bind-extern!__2
        (lambda (_id9678_ _eid9679_ _rebind?9680_ _phi9681_)
          (let ((_ctx9683_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9678_
             _eid9679_
             _rebind?9680_
             _phi9681_
             _ctx9683_))))
      (define gx#core-bind-extern!
        (lambda _g12530_
          (let ((_g12529_ (length _g12530_)))
            (cond ((##fx= _g12529_ 2) (apply gx#core-bind-extern!__0 _g12530_))
                  ((##fx= _g12529_ 3) (apply gx#core-bind-extern!__1 _g12530_))
                  ((##fx= _g12529_ 4) (apply gx#core-bind-extern!__2 _g12530_))
                  ((##fx= _g12529_ 5) (apply gx#core-bind-extern!__% _g12530_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g12530_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id9606_ _e9607_ _rebind?9608_ _phi9609_ _ctx9610_)
        (gx#bind-identifier!__%
         _id9606_
         (let ((_key9615_ (gx#core-identifier-key _id9606_))
               (_e9616_ (if (let ((_$e9612_
                                   (##structure-instance-of?
                                    _e9607_
                                    'gx#expander::t)))
                              (if _$e9612_
                                  _$e9612_
                                  (##structure-instance-of?
                                   _e9607_
                                   'gx#expander-context::t)))
                            _e9607_
                            (##structure
                             gx#user-expander::t
                             _e9607_
                             _ctx9610_
                             _phi9609_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key9615_ '#t _phi9609_ _ctx9610_)
            _key9615_
            _phi9609_
            _e9616_))
         _rebind?9608_
         _phi9609_
         _ctx9610_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id9621_ _e9622_)
          (let* ((_rebind?9624_ '#f)
                 (_phi9626_ (gx#current-expander-phi))
                 (_ctx9628_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9621_
             _e9622_
             _rebind?9624_
             _phi9626_
             _ctx9628_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id9630_ _e9631_ _rebind?9632_)
          (let* ((_phi9634_ (gx#current-expander-phi))
                 (_ctx9636_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9630_
             _e9631_
             _rebind?9632_
             _phi9634_
             _ctx9636_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id9638_ _e9639_ _rebind?9640_ _phi9641_)
          (let ((_ctx9643_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9638_
             _e9639_
             _rebind?9640_
             _phi9641_
             _ctx9643_))))
      (define gx#core-bind-syntax!
        (lambda _g12532_
          (let ((_g12531_ (length _g12532_)))
            (cond ((##fx= _g12531_ 2) (apply gx#core-bind-syntax!__0 _g12532_))
                  ((##fx= _g12531_ 3) (apply gx#core-bind-syntax!__1 _g12532_))
                  ((##fx= _g12531_ 4) (apply gx#core-bind-syntax!__2 _g12532_))
                  ((##fx= _g12531_ 5) (apply gx#core-bind-syntax!__% _g12532_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g12532_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id9589_ _e9590_ _rebind?9591_)
        (gx#core-bind-syntax!__%
         _id9589_
         _e9590_
         _rebind?9591_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id9596_ _e9597_)
          (let ((_rebind?9599_ '#f))
            (gx#core-bind-root-syntax!__% _id9596_ _e9597_ _rebind?9599_))))
      (define gx#core-bind-root-syntax!
        (lambda _g12534_
          (let ((_g12533_ (length _g12534_)))
            (cond ((##fx= _g12533_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g12534_))
                  ((##fx= _g12533_ 3)
                   (apply gx#core-bind-root-syntax!__% _g12534_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g12534_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id9547_ _alias-id9548_ _rebind?9549_ _phi9550_ _ctx9551_)
        (gx#bind-identifier!__%
         _id9547_
         (let ((_key9553_ (gx#core-identifier-key _id9547_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key9553_ '#t _phi9550_ _ctx9551_)
            _key9553_
            _phi9550_
            _alias-id9548_))
         _rebind?9549_
         _phi9550_
         _ctx9551_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id9558_ _alias-id9559_)
          (let* ((_rebind?9561_ '#f)
                 (_phi9563_ (gx#current-expander-phi))
                 (_ctx9565_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9558_
             _alias-id9559_
             _rebind?9561_
             _phi9563_
             _ctx9565_))))
      (define gx#core-bind-alias!__1
        (lambda (_id9567_ _alias-id9568_ _rebind?9569_)
          (let* ((_phi9571_ (gx#current-expander-phi))
                 (_ctx9573_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9567_
             _alias-id9568_
             _rebind?9569_
             _phi9571_
             _ctx9573_))))
      (define gx#core-bind-alias!__2
        (lambda (_id9575_ _alias-id9576_ _rebind?9577_ _phi9578_)
          (let ((_ctx9580_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9575_
             _alias-id9576_
             _rebind?9577_
             _phi9578_
             _ctx9580_))))
      (define gx#core-bind-alias!
        (lambda _g12536_
          (let ((_g12535_ (length _g12536_)))
            (cond ((##fx= _g12535_ 2) (apply gx#core-bind-alias!__0 _g12536_))
                  ((##fx= _g12535_ 3) (apply gx#core-bind-alias!__1 _g12536_))
                  ((##fx= _g12535_ 4) (apply gx#core-bind-alias!__2 _g12536_))
                  ((##fx= _g12535_ 5) (apply gx#core-bind-alias!__% _g12536_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g12536_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key9504_ _syntax?9505_ _phi9506_ _ctx9507_)
        (if (uninterned-symbol? _key9504_)
            (gensym 'L)
            (if (pair? _key9504_)
                (gensym (car _key9504_))
                (if (##structure-instance-of? _ctx9507_ 'gx#top-context::t)
                    (let ((_ns9509_ (gx#core-context-namespace__% _ctx9507_)))
                      (if (if (fxzero? _phi9506_) (not _syntax?9505_) '#f)
                          (if _ns9509_
                              (make-symbol _ns9509_ '"#" _key9504_)
                              _key9504_)
                          (if _syntax?9505_
                              (make-symbol
                               (let ((_$e9511_ _ns9509_))
                                 (if _$e9511_ _$e9511_ '""))
                               '"[:"
                               (number->string _phi9506_)
                               '":]#"
                               _key9504_)
                              (make-symbol
                               (let ((_$e9514_ _ns9509_))
                                 (if _$e9514_ _$e9514_ '""))
                               '"["
                               (number->string _phi9506_)
                               '"]#"
                               _key9504_))))
                    (gensym _key9504_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key9520_)
          (let* ((_syntax?9522_ '#f)
                 (_phi9524_ (gx#current-expander-phi))
                 (_ctx9526_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9520_
             _syntax?9522_
             _phi9524_
             _ctx9526_))))
      (define gx#make-binding-id__1
        (lambda (_key9528_ _syntax?9529_)
          (let* ((_phi9531_ (gx#current-expander-phi))
                 (_ctx9533_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9528_
             _syntax?9529_
             _phi9531_
             _ctx9533_))))
      (define gx#make-binding-id__2
        (lambda (_key9535_ _syntax?9536_ _phi9537_)
          (let ((_ctx9539_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9535_
             _syntax?9536_
             _phi9537_
             _ctx9539_))))
      (define gx#make-binding-id
        (lambda _g12538_
          (let ((_g12537_ (length _g12538_)))
            (cond ((##fx= _g12537_ 1) (apply gx#make-binding-id__0 _g12538_))
                  ((##fx= _g12537_ 2) (apply gx#make-binding-id__1 _g12538_))
                  ((##fx= _g12537_ 3) (apply gx#make-binding-id__2 _g12538_))
                  ((##fx= _g12537_ 4) (apply gx#make-binding-id__% _g12538_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g12538_)))))))))
