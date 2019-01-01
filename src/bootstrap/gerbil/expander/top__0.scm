(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
  (define gx#core-expand-begin%
    (lambda (_stx12550_)
      (letrec ((_expand-special12552_
                (lambda (_hd12554_ _K12555_ _rest12556_ _r12557_)
                  (_K12555_
                   _rest12556_
                   (cons (gx#core-expand-top _hd12554_) _r12557_)))))
        (gx#core-expand-block__0 _stx12550_ _expand-special12552_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12303_)
      (letrec ((_expand-special12305_
                (lambda (_hd12425_ _K12426_ _rest12427_ _r12428_)
                  (let* ((_K12432_
                          (lambda (_e12430_)
                            (_K12426_ _rest12427_ (cons _e12430_ _r12428_))))
                         (_e1243312462_ _hd12425_)
                         (_E1245712466_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1243312462_)))
                         (_E1245312478_
                          (lambda ()
                            (if (gx#stx-pair? _e1243312462_)
                                (let ((_e1245812470_
                                       (gx#syntax-e _e1243312462_)))
                                  (let ((_hd1245912473_ (##car _e1245812470_))
                                        (_tl1246012475_ (##cdr _e1245812470_)))
                                    (if (and (gx#identifier? _hd1245912473_)
                                             (gx#core-identifier=?
                                              _hd1245912473_
                                              '%#define-runtime))
                                        (if '#t
                                            (_K12432_
                                             (gx#core-expand-define-runtime%
                                              _hd12425_))
                                            (_E1245712466_))
                                        (_E1245712466_))))
                                (_E1245712466_))))
                         (_E1244912490_
                          (lambda ()
                            (if (gx#stx-pair? _e1243312462_)
                                (let ((_e1245412482_
                                       (gx#syntax-e _e1243312462_)))
                                  (let ((_hd1245512485_ (##car _e1245412482_))
                                        (_tl1245612487_ (##cdr _e1245412482_)))
                                    (if (and (gx#identifier? _hd1245512485_)
                                             (gx#core-identifier=?
                                              _hd1245512485_
                                              '%#define-alias))
                                        (if '#t
                                            (_K12432_
                                             (gx#core-expand-define-alias%
                                              _hd12425_))
                                            (_E1245312478_))
                                        (_E1245312478_))))
                                (_E1245312478_))))
                         (_E1243912502_
                          (lambda ()
                            (if (gx#stx-pair? _e1243312462_)
                                (let ((_e1245012494_
                                       (gx#syntax-e _e1243312462_)))
                                  (let ((_hd1245112497_ (##car _e1245012494_))
                                        (_tl1245212499_ (##cdr _e1245012494_)))
                                    (if (and (gx#identifier? _hd1245112497_)
                                             (gx#core-identifier=?
                                              _hd1245112497_
                                              '%#define-syntax))
                                        (if '#t
                                            (_K12432_
                                             (gx#core-expand-define-syntax%
                                              _hd12425_))
                                            (_E1244912490_))
                                        (_E1244912490_))))
                                (_E1244912490_))))
                         (_E1243512534_
                          (lambda ()
                            (if (gx#stx-pair? _e1243312462_)
                                (let ((_e1244012506_
                                       (gx#syntax-e _e1243312462_)))
                                  (let ((_hd1244112509_ (##car _e1244012506_))
                                        (_tl1244212511_ (##cdr _e1244012506_)))
                                    (if (and (gx#identifier? _hd1244112509_)
                                             (gx#core-identifier=?
                                              _hd1244112509_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1244212511_)
                                            (let ((_e1244312514_
                                                   (gx#syntax-e
                                                    _tl1244212511_)))
                                              (let ((_hd1244412517_
                                                     (##car _e1244312514_))
                                                    (_tl1244512519_
                                                     (##cdr _e1244312514_)))
                                                (let ((_hd-bind12522_
                                                       _hd1244412517_))
                                                  (if (gx#stx-pair?
                                                       _tl1244512519_)
                                                      (let ((_e1244612524_
                                                             (gx#syntax-e
                                                              _tl1244512519_)))
                                                        (let ((_hd1244712527_
                                                               (##car _e1244612524_))
                                                              (_tl1244812529_
                                                               (##cdr _e1244612524_)))
                                                          (let ((_expr12532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1244712527_))
                    (if (gx#stx-null? _tl1244812529_)
                        (if (gx#core-bind-values? _hd-bind12522_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12522_)
                              (_K12432_ _hd12425_))
                            (_E1243912502_))
                        (_E1243912502_)))))
              (_E1243912502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1243912502_))
                                        (_E1243912502_))))
                                (_E1243912502_))))
                         (_E1243412546_
                          (lambda ()
                            (if (gx#stx-pair? _e1243312462_)
                                (let ((_e1243612538_
                                       (gx#syntax-e _e1243312462_)))
                                  (let ((_hd1243712541_ (##car _e1243612538_))
                                        (_tl1243812543_ (##cdr _e1243612538_)))
                                    (if (and (gx#identifier? _hd1243712541_)
                                             (gx#core-identifier=?
                                              _hd1243712541_
                                              '%#begin-syntax))
                                        (if '#t
                                            (_K12432_
                                             (gx#core-expand-begin-syntax%
                                              _hd12425_))
                                            (_E1243512534_))
                                        (_E1243512534_))))
                                (_E1243512534_)))))
                    (_E1243412546_))))
               (_eval-body12306_
                (lambda (_rbody12314_)
                  (let _lp12316_ ((_rest12318_ _rbody12314_)
                                  (_body12319_ '())
                                  (_ebody12320_ '()))
                    (let* ((_rest1232112329_ _rest12318_)
                           (_else1232312337_
                            (lambda ()
                              (values _body12319_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12320_)
                                        (gx#stx-source _stx12303_))))))
                           (_K1232512413_
                            (lambda (_rest12340_ _hd12341_)
                              (let* ((_e1234212359_ _hd12341_)
                                     (_E1235412363_
                                      (lambda ()
                                        (_lp12316_
                                         _rest12340_
                                         (cons _hd12341_ _body12319_)
                                         (cons _hd12341_ _ebody12320_))))
                                     (_E1234412375_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1234212359_)
                                            (let ((_e1235512367_
                                                   (gx#syntax-e
                                                    _e1234212359_)))
                                              (let ((_hd1235612370_
                                                     (##car _e1235512367_))
                                                    (_tl1235712372_
                                                     (##cdr _e1235512367_)))
                                                (if (and (gx#identifier?
                                                          _hd1235612370_)
                                                         (gx#core-identifier=?
                                                          _hd1235612370_
                                                          '%#begin-syntax))
                                                    (if '#t
                                                        (_lp12316_
                                                         _rest12340_
                                                         (cons _hd12341_
                                                               _body12319_)
                                                         _ebody12320_)
                                                        (_E1235412363_))
                                                    (_E1235412363_))))
                                            (_E1235412363_))))
                                     (_E1234312409_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1234212359_)
                                            (let ((_e1234512379_
                                                   (gx#syntax-e
                                                    _e1234212359_)))
                                              (let ((_hd1234612382_
                                                     (##car _e1234512379_))
                                                    (_tl1234712384_
                                                     (##cdr _e1234512379_)))
                                                (if (and (gx#identifier?
                                                          _hd1234612382_)
                                                         (gx#core-identifier=?
                                                          _hd1234612382_
                                                          '%#define-values))
                                                    (if (gx#stx-pair?
                                                         _tl1234712384_)
                                                        (let ((_e1234812387_
                                                               (gx#syntax-e
                                                                _tl1234712384_)))
                                                          (let ((_hd1234912390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1234812387_))
                        (_tl1235012392_ (##cdr _e1234812387_)))
                    (let ((_hd-bind12395_ _hd1234912390_))
                      (if (gx#stx-pair? _tl1235012392_)
                          (let ((_e1235112397_ (gx#syntax-e _tl1235012392_)))
                            (let ((_hd1235212400_ (##car _e1235112397_))
                                  (_tl1235312402_ (##cdr _e1235112397_)))
                              (let ((_expr12405_ _hd1235212400_))
                                (if (gx#stx-null? _tl1235312402_)
                                    (if '#t
                                        (let ((_ehd12407_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12395_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12405_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12341_))))
                                          (_lp12316_
                                           _rest12340_
                                           (cons _ehd12407_ _body12319_)
                                           (cons _ehd12407_ _ebody12320_)))
                                        (_E1234412375_))
                                    (_E1234412375_)))))
                          (_E1234412375_)))))
                (_E1234412375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234412375_))))
                                            (_E1234412375_)))))
                                (_E1234312409_)))))
                      (if (##pair? _rest1232112329_)
                          (let ((_hd1232612416_ (##car _rest1232112329_))
                                (_tl1232712418_ (##cdr _rest1232112329_)))
                            (let* ((_hd12421_ _hd1232612416_)
                                   (_rest12423_ _tl1232712418_))
                              (_K1232512413_ _rest12423_ _hd12421_)))
                          (_else1232312337_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12309_
                   (gx#core-expand-block__1
                    _stx12303_
                    _expand-special12305_
                    '#f))
                  (_g12573_ (_eval-body12306_ _rbody12309_)))
             (begin
               (let ((_g12574_
                      (if (##values? _g12573_) (##vector-length _g12573_) 1)))
                 (if (not (##fx= _g12574_ 2))
                     (error "Context expects 2 values" _g12574_)))
               (let ((_expanded-body12311_ (##vector-ref _g12573_ 0))
                     (_value12312_ (##vector-ref _g12573_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12311_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12312_ '())))
                  (gx#stx-source _stx12303_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12273_)
      (let* ((_e1227412281_ _stx12273_)
             (_E1227612285_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1227412281_)))
             (_E1227512299_
              (lambda ()
                (if (gx#stx-pair? _e1227412281_)
                    (let ((_e1227712289_ (gx#syntax-e _e1227412281_)))
                      (let ((_hd1227812292_ (##car _e1227712289_))
                            (_tl1227912294_ (##cdr _e1227712289_)))
                        (let ((_body12297_ _tl1227912294_))
                          (if (gx#stx-list? _body12297_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12297_)
                               (gx#stx-source _stx12273_))
                              (_E1227612285_)))))
                    (_E1227612285_)))))
        (_E1227512299_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12271_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12271_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12217_)
      (let* ((_e1221812231_ _stx12217_)
             (_E1222012235_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1221812231_)))
             (_E1221912267_
              (lambda ()
                (if (gx#stx-pair? _e1221812231_)
                    (let ((_e1222112239_ (gx#syntax-e _e1221812231_)))
                      (let ((_hd1222212242_ (##car _e1222112239_))
                            (_tl1222312244_ (##cdr _e1222112239_)))
                        (if (gx#stx-pair? _tl1222312244_)
                            (let ((_e1222412247_ (gx#syntax-e _tl1222312244_)))
                              (let ((_hd1222512250_ (##car _e1222412247_))
                                    (_tl1222612252_ (##cdr _e1222412247_)))
                                (let ((_ann12255_ _hd1222512250_))
                                  (if (gx#stx-pair? _tl1222612252_)
                                      (let ((_e1222712257_
                                             (gx#syntax-e _tl1222612252_)))
                                        (let ((_hd1222812260_
                                               (##car _e1222712257_))
                                              (_tl1222912262_
                                               (##cdr _e1222712257_)))
                                          (let ((_expr12265_ _hd1222812260_))
                                            (if (gx#stx-null? _tl1222912262_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12265_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12217_))
                                                    (_E1222012235_))
                                                (_E1222012235_)))))
                                      (_E1222012235_)))))
                            (_E1222012235_))))
                    (_E1222012235_)))))
        (_E1221912267_))))
  (define gx#core-expand-local-block
    (lambda (_stx11941_ _body11942_)
      (letrec ((_expand-special11944_
                (lambda (_hd12212_ _K12213_ _rest12214_ _r12215_)
                  (_K12213_
                   '()
                   (cons (_expand-internal11945_ _hd12212_ _rest12214_)
                         _r12215_))))
               (_expand-internal11945_
                (lambda (_hd12208_ _rest12209_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11947_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12208_ _rest12209_))
                        (gx#stx-source _stx11941_))
                       _expand-internal-special11946_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12567 (make-object gx#local-context::t '5)))
                     (gx#local-context:::init!__0 __obj12567)
                     __obj12567))))
               (_expand-internal-special11946_
                (lambda (_hd12103_ _K12104_ _rest12105_ _r12106_)
                  (let* ((_e1210712132_ _hd12103_)
                         (_E1212712136_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1210712132_)))
                         (_E1212312148_
                          (lambda ()
                            (if (gx#stx-pair? _e1210712132_)
                                (let ((_e1212812140_
                                       (gx#syntax-e _e1210712132_)))
                                  (let ((_hd1212912143_ (##car _e1212812140_))
                                        (_tl1213012145_ (##cdr _e1212812140_)))
                                    (if (and (gx#identifier? _hd1212912143_)
                                             (gx#core-identifier=?
                                              _hd1212912143_
                                              '%#declare))
                                        (if '#t
                                            (_K12104_
                                             _rest12105_
                                             (cons (gx#core-expand-declare%
                                                    _hd12103_)
                                                   _r12106_))
                                            (_E1212712136_))
                                        (_E1212712136_))))
                                (_E1212712136_))))
                         (_E1211912160_
                          (lambda ()
                            (if (gx#stx-pair? _e1210712132_)
                                (let ((_e1212412152_
                                       (gx#syntax-e _e1210712132_)))
                                  (let ((_hd1212512155_ (##car _e1212412152_))
                                        (_tl1212612157_ (##cdr _e1212412152_)))
                                    (if (and (gx#identifier? _hd1212512155_)
                                             (gx#core-identifier=?
                                              _hd1212512155_
                                              '%#define-alias))
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd12103_)
                                              (_K12104_ _rest12105_ _r12106_))
                                            (_E1212312148_))
                                        (_E1212312148_))))
                                (_E1212312148_))))
                         (_E1210912172_
                          (lambda ()
                            (if (gx#stx-pair? _e1210712132_)
                                (let ((_e1212012164_
                                       (gx#syntax-e _e1210712132_)))
                                  (let ((_hd1212112167_ (##car _e1212012164_))
                                        (_tl1212212169_ (##cdr _e1212012164_)))
                                    (if (and (gx#identifier? _hd1212112167_)
                                             (gx#core-identifier=?
                                              _hd1212112167_
                                              '%#define-syntax))
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd12103_)
                                              (_K12104_ _rest12105_ _r12106_))
                                            (_E1211912160_))
                                        (_E1211912160_))))
                                (_E1211912160_))))
                         (_E1210812204_
                          (lambda ()
                            (if (gx#stx-pair? _e1210712132_)
                                (let ((_e1211012176_
                                       (gx#syntax-e _e1210712132_)))
                                  (let ((_hd1211112179_ (##car _e1211012176_))
                                        (_tl1211212181_ (##cdr _e1211012176_)))
                                    (if (and (gx#identifier? _hd1211112179_)
                                             (gx#core-identifier=?
                                              _hd1211112179_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1211212181_)
                                            (let ((_e1211312184_
                                                   (gx#syntax-e
                                                    _tl1211212181_)))
                                              (let ((_hd1211412187_
                                                     (##car _e1211312184_))
                                                    (_tl1211512189_
                                                     (##cdr _e1211312184_)))
                                                (let ((_hd-bind12192_
                                                       _hd1211412187_))
                                                  (if (gx#stx-pair?
                                                       _tl1211512189_)
                                                      (let ((_e1211612194_
                                                             (gx#syntax-e
                                                              _tl1211512189_)))
                                                        (let ((_hd1211712197_
                                                               (##car _e1211612194_))
                                                              (_tl1211812199_
                                                               (##cdr _e1211612194_)))
                                                          (let ((_expr12202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1211712197_))
                    (if (gx#stx-null? _tl1211812199_)
                        (if (gx#core-bind-values? _hd-bind12192_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12192_)
                              (_K12104_ _rest12105_ (cons _hd12103_ _r12106_)))
                            (_E1210912172_))
                        (_E1210912172_)))))
              (_E1210912172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1210912172_))
                                        (_E1210912172_))))
                                (_E1210912172_)))))
                    (_E1210812204_))))
               (_wrap-internal11947_
                (lambda (_rbody11949_)
                  (let _lp11951_ ((_rest11953_ _rbody11949_)
                                  (_decls11954_ '())
                                  (_bind11955_ '())
                                  (_body11956_ '()))
                    (let* ((_e1195711964_ _rest11953_)
                           (_E1195912013_
                            (lambda ()
                              (let* ((_body12008_
                                      (let* ((_body1196711977_ _body11956_)
                                             (_else1197011985_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11956_)
                                                 (gx#stx-source _stx11941_)))))
                                        (let ((_K1197512005_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11941_)))
                                              (_K1197211991_
                                               (lambda (_expr11989_)
                                                 _expr11989_)))
                                          (let ((_try-match1196912001_
                                                 (lambda ()
                                                   (if (##pair? _body1196711977_)
                                                       (let ((_tl1197411996_
                                                              (##cdr _body1196711977_))
                                                             (_hd1197311994_
                                                              (##car _body1196711977_)))
                                                         (if (##null? _tl1197411996_)
                                                             (let ((_expr11999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1197311994_))
                       (_K1197211991_ _expr11999_))
                     (_else1197011985_)))
               (_else1197011985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1196711977_)
                                                (_K1197512005_)
                                                (_try-match1196912001_))))))
                                     (_body12010_
                                      (if (null? _bind11955_)
                                          _body12008_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11955_
                                                       (cons _body12008_ '())))
                                           (gx#stx-source _stx11941_)))))
                                (if (null? _decls11954_)
                                    _body12010_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11954_
                                                 (cons _body12010_ '())))
                                     (gx#stx-source _stx11941_))))))
                           (_E1195812099_
                            (lambda ()
                              (if (gx#stx-pair? _e1195711964_)
                                  (let ((_e1196012017_
                                         (gx#syntax-e _e1195711964_)))
                                    (let ((_hd1196112020_
                                           (##car _e1196012017_))
                                          (_tl1196212022_
                                           (##cdr _e1196012017_)))
                                      (let* ((_hd12025_ _hd1196112020_)
                                             (_rest12027_ _tl1196212022_))
                                        (if '#t
                                            (let* ((_e1202812045_ _hd12025_)
                                                   (_E1204012049_
                                                    (lambda ()
                                                      (if (null? _bind11955_)
                                                          (_lp11951_
                                                           _rest12027_
                                                           _decls11954_
                                                           _bind11955_
                                                           (cons _hd12025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11956_))
                  (_lp11951_
                   _rest12027_
                   _decls11954_
                   (cons (cons '#f (cons _hd12025_ '())) _bind11955_)
                   _body11956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1203012063_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1202812045_)
                                                          (let ((_e1204112053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1202812045_)))
                    (let ((_hd1204212056_ (##car _e1204112053_))
                          (_tl1204312058_ (##cdr _e1204112053_)))
                      (if (and (gx#identifier? _hd1204212056_)
                               (gx#core-identifier=?
                                _hd1204212056_
                                '%#declare))
                          (let ((_xdecls12061_ _tl1204312058_))
                            (if '#t
                                (_lp11951_
                                 _rest12027_
                                 (gx#stx-foldr cons _decls11954_ _xdecls12061_)
                                 _bind11955_
                                 _body11956_)
                                (_E1204012049_)))
                          (_E1204012049_))))
                  (_E1204012049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1202912095_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1202812045_)
                                                          (let ((_e1203112067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1202812045_)))
                    (let ((_hd1203212070_ (##car _e1203112067_))
                          (_tl1203312072_ (##cdr _e1203112067_)))
                      (if (and (gx#identifier? _hd1203212070_)
                               (gx#core-identifier=?
                                _hd1203212070_
                                '%#define-values))
                          (if (gx#stx-pair? _tl1203312072_)
                              (let ((_e1203412075_
                                     (gx#syntax-e _tl1203312072_)))
                                (let ((_hd1203512078_ (##car _e1203412075_))
                                      (_tl1203612080_ (##cdr _e1203412075_)))
                                  (let ((_hd-bind12083_ _hd1203512078_))
                                    (if (gx#stx-pair? _tl1203612080_)
                                        (let ((_e1203712085_
                                               (gx#syntax-e _tl1203612080_)))
                                          (let ((_hd1203812088_
                                                 (##car _e1203712085_))
                                                (_tl1203912090_
                                                 (##cdr _e1203712085_)))
                                            (let ((_expr12093_ _hd1203812088_))
                                              (if (gx#stx-null? _tl1203912090_)
                                                  (if '#t
                                                      (_lp11951_
                                                       _rest12027_
                                                       _decls11954_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind12083_)
                           (cons (gx#core-expand-expression _expr12093_) '()))
                     _bind11955_)
               _body11956_)
              (_E1203012063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1203012063_)))))
                                        (_E1203012063_)))))
                              (_E1203012063_))
                          (_E1203012063_))))
                  (_E1203012063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1202912095_))
                                            (_E1195912013_)))))
                                  (_E1195912013_)))))
                      (_E1195812099_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11942_)
          (gx#stx-source _stx11941_))
         _expand-special11944_))))
  (define gx#core-expand-declare%
    (lambda (_stx11879_)
      (let* ((_e1188011887_ _stx11879_)
             (_E1188211891_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1188011887_)))
             (_E1188111937_
              (lambda ()
                (if (gx#stx-pair? _e1188011887_)
                    (let ((_e1188311895_ (gx#syntax-e _e1188011887_)))
                      (let ((_hd1188411898_ (##car _e1188311895_))
                            (_tl1188511900_ (##cdr _e1188311895_)))
                        (let ((_body11903_ _tl1188511900_))
                          (if (gx#stx-list? _body11903_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11905_)
                                   (let* ((_e1190611913_ _decl11905_)
                                          (_E1190811917_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1190611913_)))
                                          (_E1190711933_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1190611913_)
                                                 (let ((_e1190911921_
                                                        (gx#syntax-e
                                                         _e1190611913_)))
                                                   (let ((_hd1191011924_
                                                          (##car _e1190911921_))
                                                         (_tl1191111926_
                                                          (##cdr _e1190911921_)))
                                                     (let* ((_head11929_
                                                             _hd1191011924_)
                                                            (_args11931_
                                                             _tl1191111926_))
                                                       (if (gx#stx-list?
                                                            _args11931_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11905_)
                                                           (_E1190811917_)))))
                                                 (_E1190811917_)))))
                                     (_E1190711933_)))
                                 _body11903_))
                               (gx#stx-source _stx11879_))
                              (_E1188211891_)))))
                    (_E1188211891_)))))
        (_E1188111937_))))
  (define gx#core-expand-extern%
    (lambda (_stx11783_)
      (let* ((_e1178411791_ _stx11783_)
             (_E1178611795_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1178411791_)))
             (_E1178511875_
              (lambda ()
                (if (gx#stx-pair? _e1178411791_)
                    (let ((_e1178711799_ (gx#syntax-e _e1178411791_)))
                      (let ((_hd1178811802_ (##car _e1178711799_))
                            (_tl1178911804_ (##cdr _e1178711799_)))
                        (let ((_body11807_ _tl1178911804_))
                          (if '#t
                              (let _lp11809_ ((_rest11811_ _body11807_)
                                              (_r11812_ '()))
                                (let* ((_e1181311827_ _rest11811_)
                                       (_E1182511831_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx11783_)))
                                       (_E1181511835_
                                        (lambda ()
                                          (if (gx#stx-null? _e1181311827_)
                                              (if '#t
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#extern
                                                    (reverse _r11812_))
                                                   (gx#stx-source _stx11783_))
                                                  (_E1182511831_))
                                              (_E1182511831_))))
                                       (_E1181411871_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1181311827_)
                                              (let ((_e1181611839_
                                                     (gx#syntax-e
                                                      _e1181311827_)))
                                                (let ((_hd1181711842_
                                                       (##car _e1181611839_))
                                                      (_tl1181811844_
                                                       (##cdr _e1181611839_)))
                                                  (if (gx#stx-pair?
                                                       _hd1181711842_)
                                                      (let ((_e1181911847_
                                                             (gx#syntax-e
                                                              _hd1181711842_)))
                                                        (let ((_hd1182011850_
                                                               (##car _e1181911847_))
                                                              (_tl1182111852_
                                                               (##cdr _e1181911847_)))
                                                          (let ((_id11855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1182011850_))
                    (if (gx#stx-pair? _tl1182111852_)
                        (let ((_e1182211857_ (gx#syntax-e _tl1182111852_)))
                          (let ((_hd1182311860_ (##car _e1182211857_))
                                (_tl1182411862_ (##cdr _e1182211857_)))
                            (let ((_eid11865_ _hd1182311860_))
                              (if (gx#stx-null? _tl1182411862_)
                                  (let ((_rest11867_ _tl1181811844_))
                                    (if (and (gx#identifier? _id11855_)
                                             (gx#identifier? _eid11865_))
                                        (let ((_eid11869_
                                               (gx#stx-e _eid11865_)))
                                          (gx#core-bind-extern!__0
                                           _id11855_
                                           _eid11869_)
                                          (_lp11809_
                                           _rest11867_
                                           (cons (cons (gx#core-quote-syntax__0
                                                        _id11855_)
                                                       (cons _eid11869_ '()))
                                                 _r11812_)))
                                        (_E1181511835_)))
                                  (_E1181511835_)))))
                        (_E1181511835_)))))
              (_E1181511835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1181511835_)))))
                                  (_E1181411871_)))
                              (_E1178611795_)))))
                    (_E1178611795_)))))
        (_E1178511875_))))
  (define gx#core-expand-define-values%
    (lambda (_stx11729_)
      (let* ((_e1173011743_ _stx11729_)
             (_E1173211747_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1173011743_)))
             (_E1173111779_
              (lambda ()
                (if (gx#stx-pair? _e1173011743_)
                    (let ((_e1173311751_ (gx#syntax-e _e1173011743_)))
                      (let ((_hd1173411754_ (##car _e1173311751_))
                            (_tl1173511756_ (##cdr _e1173311751_)))
                        (if (gx#stx-pair? _tl1173511756_)
                            (let ((_e1173611759_ (gx#syntax-e _tl1173511756_)))
                              (let ((_hd1173711762_ (##car _e1173611759_))
                                    (_tl1173811764_ (##cdr _e1173611759_)))
                                (let ((_hd11767_ _hd1173711762_))
                                  (if (gx#stx-pair? _tl1173811764_)
                                      (let ((_e1173911769_
                                             (gx#syntax-e _tl1173811764_)))
                                        (let ((_hd1174011772_
                                               (##car _e1173911769_))
                                              (_tl1174111774_
                                               (##cdr _e1173911769_)))
                                          (let ((_expr11777_ _hd1174011772_))
                                            (if (gx#stx-null? _tl1174111774_)
                                                (if (gx#core-bind-values?
                                                     _hd11767_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11767_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11767_)
                           (cons (gx#core-expand-expression _expr11777_) '())))
               (gx#stx-source _stx11729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1173211747_))
                                                (_E1173211747_)))))
                                      (_E1173211747_)))))
                            (_E1173211747_))))
                    (_E1173211747_)))))
        (_E1173111779_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11673_)
      (let* ((_e1167411687_ _stx11673_)
             (_E1167611691_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1167411687_)))
             (_E1167511725_
              (lambda ()
                (if (gx#stx-pair? _e1167411687_)
                    (let ((_e1167711695_ (gx#syntax-e _e1167411687_)))
                      (let ((_hd1167811698_ (##car _e1167711695_))
                            (_tl1167911700_ (##cdr _e1167711695_)))
                        (if (gx#stx-pair? _tl1167911700_)
                            (let ((_e1168011703_ (gx#syntax-e _tl1167911700_)))
                              (let ((_hd1168111706_ (##car _e1168011703_))
                                    (_tl1168211708_ (##cdr _e1168011703_)))
                                (let ((_id11711_ _hd1168111706_))
                                  (if (gx#stx-pair? _tl1168211708_)
                                      (let ((_e1168311713_
                                             (gx#syntax-e _tl1168211708_)))
                                        (let ((_hd1168411716_
                                               (##car _e1168311713_))
                                              (_tl1168511718_
                                               (##cdr _e1168311713_)))
                                          (let ((_binding-id11721_
                                                 _hd1168411716_))
                                            (if (gx#stx-null? _tl1168511718_)
                                                (if (and (gx#identifier?
                                                          _id11711_)
                                                         (gx#identifier?
                                                          _binding-id11721_))
                                                    (let ((_eid11723_
                                                           (gx#stx-e
                                                            _binding-id11721_)))
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11711_
                                                       _eid11723_)
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11711_)
                           (cons _eid11723_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1167611691_))
                                                (_E1167611691_)))))
                                      (_E1167611691_)))))
                            (_E1167611691_))))
                    (_E1167611691_)))))
        (_E1167511725_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11616_)
      (let* ((_e1161711630_ _stx11616_)
             (_E1161911634_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1161711630_)))
             (_E1161811669_
              (lambda ()
                (if (gx#stx-pair? _e1161711630_)
                    (let ((_e1162011638_ (gx#syntax-e _e1161711630_)))
                      (let ((_hd1162111641_ (##car _e1162011638_))
                            (_tl1162211643_ (##cdr _e1162011638_)))
                        (if (gx#stx-pair? _tl1162211643_)
                            (let ((_e1162311646_ (gx#syntax-e _tl1162211643_)))
                              (let ((_hd1162411649_ (##car _e1162311646_))
                                    (_tl1162511651_ (##cdr _e1162311646_)))
                                (let ((_id11654_ _hd1162411649_))
                                  (if (gx#stx-pair? _tl1162511651_)
                                      (let ((_e1162611656_
                                             (gx#syntax-e _tl1162511651_)))
                                        (let ((_hd1162711659_
                                               (##car _e1162611656_))
                                              (_tl1162811661_
                                               (##cdr _e1162611656_)))
                                          (let ((_expr11664_ _hd1162711659_))
                                            (if (gx#stx-null? _tl1162811661_)
                                                (if (gx#identifier? _id11654_)
                                                    (let ((_g12575_
                                                           (gx#core-expand-expression+1
                                                            _expr11664_)))
                                                      (begin
                                                        (let ((_g12576_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12575_)
                           (##vector-length _g12575_)
                           1)))
                  (if (not (##fx= _g12576_ 2))
                      (error "Context expects 2 values" _g12576_)))
                (let ((_e-stx11666_ (##vector-ref _g12575_ 0))
                      (_e11667_ (##vector-ref _g12575_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11654_ _e11667_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11654_)
                                 (cons _e-stx11666_ '())))
                     (gx#stx-source _stx11616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1161911634_))
                                                (_E1161911634_)))))
                                      (_E1161911634_)))))
                            (_E1161911634_))))
                    (_E1161911634_)))))
        (_E1161811669_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11560_)
      (let* ((_e1156111574_ _stx11560_)
             (_E1156311578_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1156111574_)))
             (_E1156211612_
              (lambda ()
                (if (gx#stx-pair? _e1156111574_)
                    (let ((_e1156411582_ (gx#syntax-e _e1156111574_)))
                      (let ((_hd1156511585_ (##car _e1156411582_))
                            (_tl1156611587_ (##cdr _e1156411582_)))
                        (if (gx#stx-pair? _tl1156611587_)
                            (let ((_e1156711590_ (gx#syntax-e _tl1156611587_)))
                              (let ((_hd1156811593_ (##car _e1156711590_))
                                    (_tl1156911595_ (##cdr _e1156711590_)))
                                (let ((_id11598_ _hd1156811593_))
                                  (if (gx#stx-pair? _tl1156911595_)
                                      (let ((_e1157011600_
                                             (gx#syntax-e _tl1156911595_)))
                                        (let ((_hd1157111603_
                                               (##car _e1157011600_))
                                              (_tl1157211605_
                                               (##cdr _e1157011600_)))
                                          (let ((_alias-id11608_
                                                 _hd1157111603_))
                                            (if (gx#stx-null? _tl1157211605_)
                                                (if (and (gx#identifier?
                                                          _id11598_)
                                                         (gx#identifier?
                                                          _alias-id11608_))
                                                    (let ((_alias-id11610_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11608_)))
                                                      (gx#core-bind-alias!__0
                                                       _id11598_
                                                       _alias-id11610_)
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11598_)
                           (cons _alias-id11610_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1156311578_))
                                                (_E1156311578_)))))
                                      (_E1156311578_)))))
                            (_E1156311578_))))
                    (_E1156311578_)))))
        (_E1156211612_))))
  (define gx#core-expand-lambda%__%
    (lambda (_stx11503_ _wrap?11504_)
      (let* ((_e1150511515_ _stx11503_)
             (_E1150711519_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1150511515_)))
             (_E1150611546_
              (lambda ()
                (if (gx#stx-pair? _e1150511515_)
                    (let ((_e1150811523_ (gx#syntax-e _e1150511515_)))
                      (let ((_hd1150911526_ (##car _e1150811523_))
                            (_tl1151011528_ (##cdr _e1150811523_)))
                        (if (gx#stx-pair? _tl1151011528_)
                            (let ((_e1151111531_ (gx#syntax-e _tl1151011528_)))
                              (let ((_hd1151211534_ (##car _e1151111531_))
                                    (_tl1151311536_ (##cdr _e1151111531_)))
                                (let* ((_hd11539_ _hd1151211534_)
                                       (_body11541_ _tl1151311536_))
                                  (if (gx#core-bind-values? _hd11539_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#core-bind-values!__0 _hd11539_)
                                         (let ((_body11544_
                                                (cons (gx#core-quote-bind-values
                                                       _hd11539_)
                                                      (cons (gx#core-expand-local-block
                                                             _stx11503_
                                                             _body11541_)
                                                            '()))))
                                           (if _wrap?11504_
                                               (gx#core-quote-syntax__1
                                                (gx#core-cons
                                                 '%#lambda
                                                 _body11544_)
                                                (gx#stx-source _stx11503_))
                                               _body11544_)))
                                       gx#current-expander-context
                                       (let ((__obj12568
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12568)
                                         __obj12568))
                                      (_E1150711519_)))))
                            (_E1150711519_))))
                    (_E1150711519_)))))
        (_E1150611546_))))
  (define gx#core-expand-lambda%__0
    (lambda (_stx11553_)
      (let ((_wrap?11555_ '#t))
        (gx#core-expand-lambda%__% _stx11553_ _wrap?11555_))))
  (define gx#core-expand-lambda%
    (lambda _g12578_
      (let ((_g12577_ (length _g12578_)))
        (cond ((##fx= _g12577_ 1) (apply gx#core-expand-lambda%__0 _g12578_))
              ((##fx= _g12577_ 2) (apply gx#core-expand-lambda%__% _g12578_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-lambda%
                _g12578_))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11467_)
      (let* ((_e1146811475_ _stx11467_)
             (_E1147011479_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1146811475_)))
             (_E1146911498_
              (lambda ()
                (if (gx#stx-pair? _e1146811475_)
                    (let ((_e1147111483_ (gx#syntax-e _e1146811475_)))
                      (let ((_hd1147211486_ (##car _e1147111483_))
                            (_tl1147311488_ (##cdr _e1147111483_)))
                        (let ((_clauses11491_ _tl1147311488_))
                          (if (gx#stx-list? _clauses11491_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11493_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11493_)
                                     (let ((_$e11495_
                                            (gx#stx-source _clause11493_)))
                                       (if _$e11495_
                                           _$e11495_
                                           (gx#stx-source _stx11467_))))
                                    '#f))
                                 _clauses11491_))
                               (gx#stx-source _stx11467_))
                              (_E1147011479_)))))
                    (_E1147011479_)))))
        (_E1146911498_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11421_)
      (let* ((_e1142211432_ _stx11421_)
             (_E1142411436_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1142211432_)))
             (_E1142311463_
              (lambda ()
                (if (gx#stx-pair? _e1142211432_)
                    (let ((_e1142511440_ (gx#syntax-e _e1142211432_)))
                      (let ((_hd1142611443_ (##car _e1142511440_))
                            (_tl1142711445_ (##cdr _e1142511440_)))
                        (if (gx#stx-pair? _tl1142711445_)
                            (let ((_e1142811448_ (gx#syntax-e _tl1142711445_)))
                              (let ((_hd1142911451_ (##car _e1142811448_))
                                    (_tl1143011453_ (##cdr _e1142811448_)))
                                (let* ((_hd11456_ _hd1142911451_)
                                       (_body11458_ _tl1143011453_))
                                  (if (gx#core-expand-let-bind? _hd11456_)
                                      (let ((_expressions11460_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11456_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd11456_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   '%#let-values)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd11456_
                                                         _expressions11460_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx11421_
                                                               _body11458_)
                                                              '())))
                                            (gx#stx-source _stx11421_)))
                                         gx#current-expander-context
                                         (let ((__obj12569
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12569)
                                           __obj12569)))
                                      (_E1142411436_)))))
                            (_E1142411436_))))
                    (_E1142411436_)))))
        (_E1142311463_))))
  (define gx#core-expand-letrec-values%__%
    (lambda (_stx11366_ _form11367_)
      (let* ((_e1136811378_ _stx11366_)
             (_E1137011382_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1136811378_)))
             (_E1136911407_
              (lambda ()
                (if (gx#stx-pair? _e1136811378_)
                    (let ((_e1137111386_ (gx#syntax-e _e1136811378_)))
                      (let ((_hd1137211389_ (##car _e1137111386_))
                            (_tl1137311391_ (##cdr _e1137111386_)))
                        (if (gx#stx-pair? _tl1137311391_)
                            (let ((_e1137411394_ (gx#syntax-e _tl1137311391_)))
                              (let ((_hd1137511397_ (##car _e1137411394_))
                                    (_tl1137611399_ (##cdr _e1137411394_)))
                                (let* ((_hd11402_ _hd1137511397_)
                                       (_body11404_ _tl1137611399_))
                                  (if (gx#core-expand-let-bind? _hd11402_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-for-each1
                                          gx#core-expand-let-bind-values!
                                          _hd11402_)
                                         (gx#core-quote-syntax__1
                                          (cons (gx#core-quote-syntax__0
                                                 _form11367_)
                                                (cons (gx#stx-map2
                                                       gx#core-expand-let-bind-quote
                                                       _hd11402_
                                                       (gx#stx-map1
                                                        gx#core-expand-let-bind-expression
                                                        _hd11402_))
                                                      (cons (gx#core-expand-local-block
                                                             _stx11366_
                                                             _body11404_)
                                                            '())))
                                          (gx#stx-source _stx11366_)))
                                       gx#current-expander-context
                                       (let ((__obj12570
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12570)
                                         __obj12570))
                                      (_E1137011382_)))))
                            (_E1137011382_))))
                    (_E1137011382_)))))
        (_E1136911407_))))
  (define gx#core-expand-letrec-values%__0
    (lambda (_stx11414_)
      (let ((_form11416_ '%#letrec-values))
        (gx#core-expand-letrec-values%__% _stx11414_ _form11416_))))
  (define gx#core-expand-letrec-values%
    (lambda _g12580_
      (let ((_g12579_ (length _g12580_)))
        (cond ((##fx= _g12579_ 1)
               (apply gx#core-expand-letrec-values%__0 _g12580_))
              ((##fx= _g12579_ 2)
               (apply gx#core-expand-letrec-values%__% _g12580_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-letrec-values%
                _g12580_))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11363_)
      (gx#core-expand-letrec-values%__% _stx11363_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11320_)
      (if (gx#stx-list? _stx11320_)
          (gx#stx-andmap
           (lambda (_bind11322_)
             (let* ((_e1132311333_ _bind11322_)
                    (_E1132511337_ (lambda () '#f))
                    (_E1132411359_
                     (lambda ()
                       (if (gx#stx-pair? _e1132311333_)
                           (let ((_e1132611341_ (gx#syntax-e _e1132311333_)))
                             (let ((_hd1132711344_ (##car _e1132611341_))
                                   (_tl1132811346_ (##cdr _e1132611341_)))
                               (let ((_hd11349_ _hd1132711344_))
                                 (if (gx#stx-pair? _tl1132811346_)
                                     (let ((_e1132911351_
                                            (gx#syntax-e _tl1132811346_)))
                                       (let ((_hd1133011354_
                                              (##car _e1132911351_))
                                             (_tl1133111356_
                                              (##cdr _e1132911351_)))
                                         (if (gx#stx-null? _tl1133111356_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11349_)
                                                 (_E1132511337_))
                                             (_E1132511337_))))
                                     (_E1132511337_)))))
                           (_E1132511337_)))))
               (_E1132411359_)))
           _stx11320_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11279_)
      (let* ((_e1128011290_ _bind11279_)
             (_E1128211294_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1128011290_)))
             (_E1128111316_
              (lambda ()
                (if (gx#stx-pair? _e1128011290_)
                    (let ((_e1128311298_ (gx#syntax-e _e1128011290_)))
                      (let ((_hd1128411301_ (##car _e1128311298_))
                            (_tl1128511303_ (##cdr _e1128311298_)))
                        (if (gx#stx-pair? _tl1128511303_)
                            (let ((_e1128611306_ (gx#syntax-e _tl1128511303_)))
                              (let ((_hd1128711309_ (##car _e1128611306_))
                                    (_tl1128811311_ (##cdr _e1128611306_)))
                                (let ((_expr11314_ _hd1128711309_))
                                  (if (gx#stx-null? _tl1128811311_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11314_)
                                          (_E1128211294_))
                                      (_E1128211294_)))))
                            (_E1128211294_))))
                    (_E1128211294_)))))
        (_E1128111316_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11238_)
      (let* ((_e1123911249_ _bind11238_)
             (_E1124111253_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1123911249_)))
             (_E1124011275_
              (lambda ()
                (if (gx#stx-pair? _e1123911249_)
                    (let ((_e1124211257_ (gx#syntax-e _e1123911249_)))
                      (let ((_hd1124311260_ (##car _e1124211257_))
                            (_tl1124411262_ (##cdr _e1124211257_)))
                        (let ((_hd11265_ _hd1124311260_))
                          (if (gx#stx-pair? _tl1124411262_)
                              (let ((_e1124511267_
                                     (gx#syntax-e _tl1124411262_)))
                                (let ((_hd1124611270_ (##car _e1124511267_))
                                      (_tl1124711272_ (##cdr _e1124511267_)))
                                  (if (gx#stx-null? _tl1124711272_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11265_)
                                          (_E1124111253_))
                                      (_E1124111253_))))
                              (_E1124111253_)))))
                    (_E1124111253_)))))
        (_E1124011275_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11196_ _expr11197_)
      (let* ((_e1119811208_ _bind11196_)
             (_E1120011212_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1119811208_)))
             (_E1119911234_
              (lambda ()
                (if (gx#stx-pair? _e1119811208_)
                    (let ((_e1120111216_ (gx#syntax-e _e1119811208_)))
                      (let ((_hd1120211219_ (##car _e1120111216_))
                            (_tl1120311221_ (##cdr _e1120111216_)))
                        (let ((_hd11224_ _hd1120211219_))
                          (if (gx#stx-pair? _tl1120311221_)
                              (let ((_e1120411226_
                                     (gx#syntax-e _tl1120311221_)))
                                (let ((_hd1120511229_ (##car _e1120411226_))
                                      (_tl1120611231_ (##cdr _e1120411226_)))
                                  (if (gx#stx-null? _tl1120611231_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11224_)
                                                (cons _expr11197_ '()))
                                          (_E1120011212_))
                                      (_E1120011212_))))
                              (_E1120011212_)))))
                    (_E1120011212_)))))
        (_E1119911234_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11150_)
      (let* ((_e1115111161_ _stx11150_)
             (_E1115311165_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1115111161_)))
             (_E1115211192_
              (lambda ()
                (if (gx#stx-pair? _e1115111161_)
                    (let ((_e1115411169_ (gx#syntax-e _e1115111161_)))
                      (let ((_hd1115511172_ (##car _e1115411169_))
                            (_tl1115611174_ (##cdr _e1115411169_)))
                        (if (gx#stx-pair? _tl1115611174_)
                            (let ((_e1115711177_ (gx#syntax-e _tl1115611174_)))
                              (let ((_hd1115811180_ (##car _e1115711177_))
                                    (_tl1115911182_ (##cdr _e1115711177_)))
                                (let* ((_hd11185_ _hd1115811180_)
                                       (_body11187_ _tl1115911182_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11185_)
                                      (let ((_expanders11189_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11185_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11185_
                                            _expanders11189_)
                                           (gx#core-expand-local-block
                                            _stx11150_
                                            _body11187_))
                                         gx#current-expander-context
                                         (let ((__obj12571
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12571)
                                           __obj12571)))
                                      (_E1115311165_)))))
                            (_E1115311165_))))
                    (_E1115311165_)))))
        (_E1115211192_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx11099_)
      (let* ((_e1110011110_ _stx11099_)
             (_E1110211114_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1110011110_)))
             (_E1110111146_
              (lambda ()
                (if (gx#stx-pair? _e1110011110_)
                    (let ((_e1110311118_ (gx#syntax-e _e1110011110_)))
                      (let ((_hd1110411121_ (##car _e1110311118_))
                            (_tl1110511123_ (##cdr _e1110311118_)))
                        (if (gx#stx-pair? _tl1110511123_)
                            (let ((_e1110611126_ (gx#syntax-e _tl1110511123_)))
                              (let ((_hd1110711129_ (##car _e1110611126_))
                                    (_tl1110811131_ (##cdr _e1110611126_)))
                                (let* ((_hd11134_ _hd1110711129_)
                                       (_body11136_ _tl1110811131_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11134_)
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-for-each2
                                          gx#core-expand-let-bind-syntax!
                                          _hd11134_
                                          (make-list
                                           (gx#stx-length _hd11134_)
                                           '#!void))
                                         (gx#stx-for-each2
                                          (lambda (_g1113811141_ _g1113911143_)
                                            (gx#core-expand-let-bind-syntax!__%
                                             _g1113811141_
                                             _g1113911143_
                                             '#t))
                                          _hd11134_
                                          (gx#stx-map1
                                           gx#core-expand-let-bind-syntax-expression
                                           _hd11134_))
                                         (gx#core-expand-local-block
                                          _stx11099_
                                          _body11136_))
                                       gx#current-expander-context
                                       (let ((__obj12572
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (gx#local-context:::init!__0
                                          __obj12572)
                                         __obj12572))
                                      (_E1110211114_)))))
                            (_E1110211114_))))
                    (_E1110211114_)))))
        (_E1110111146_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx11056_)
      (if (gx#stx-list? _stx11056_)
          (gx#stx-andmap
           (lambda (_bind11058_)
             (let* ((_e1105911069_ _bind11058_)
                    (_E1106111073_ (lambda () '#f))
                    (_E1106011095_
                     (lambda ()
                       (if (gx#stx-pair? _e1105911069_)
                           (let ((_e1106211077_ (gx#syntax-e _e1105911069_)))
                             (let ((_hd1106311080_ (##car _e1106211077_))
                                   (_tl1106411082_ (##cdr _e1106211077_)))
                               (let ((_hd11085_ _hd1106311080_))
                                 (if (gx#stx-pair? _tl1106411082_)
                                     (let ((_e1106511087_
                                            (gx#syntax-e _tl1106411082_)))
                                       (let ((_hd1106611090_
                                              (##car _e1106511087_))
                                             (_tl1106711092_
                                              (##cdr _e1106511087_)))
                                         (if (gx#stx-null? _tl1106711092_)
                                             (if '#t
                                                 (gx#identifier? _hd11085_)
                                                 (_E1106111073_))
                                             (_E1106111073_))))
                                     (_E1106111073_)))))
                           (_E1106111073_)))))
               (_E1106011095_)))
           _stx11056_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind11013_)
      (let* ((_e1101411024_ _bind11013_)
             (_E1101611028_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1101411024_)))
             (_E1101511052_
              (lambda ()
                (if (gx#stx-pair? _e1101411024_)
                    (let ((_e1101711032_ (gx#syntax-e _e1101411024_)))
                      (let ((_hd1101811035_ (##car _e1101711032_))
                            (_tl1101911037_ (##cdr _e1101711032_)))
                        (if (gx#stx-pair? _tl1101911037_)
                            (let ((_e1102011040_ (gx#syntax-e _tl1101911037_)))
                              (let ((_hd1102111043_ (##car _e1102011040_))
                                    (_tl1102211045_ (##cdr _e1102011040_)))
                                (let ((_expr11048_ _hd1102111043_))
                                  (if (gx#stx-null? _tl1102211045_)
                                      (if '#t
                                          (let ((_g12581_
                                                 (gx#core-expand-expression+1
                                                  _expr11048_)))
                                            (begin
                                              (let ((_g12582_
                                                     (if (##values? _g12581_)
                                                         (##vector-length
                                                          _g12581_)
                                                         1)))
                                                (if (not (##fx= _g12582_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12582_)))
                                              (let ((_e11050_
                                                     (##vector-ref
                                                      _g12581_
                                                      1)))
                                                _e11050_)))
                                          (_E1101611028_))
                                      (_E1101611028_)))))
                            (_E1101611028_))))
                    (_E1101611028_)))))
        (_E1101511052_))))
  (define gx#core-expand-let-bind-syntax!__%
    (lambda (_bind10958_ _e10959_ _rebind?10960_)
      (let* ((_e1096110971_ _bind10958_)
             (_E1096310975_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1096110971_)))
             (_E1096210997_
              (lambda ()
                (if (gx#stx-pair? _e1096110971_)
                    (let ((_e1096410979_ (gx#syntax-e _e1096110971_)))
                      (let ((_hd1096510982_ (##car _e1096410979_))
                            (_tl1096610984_ (##cdr _e1096410979_)))
                        (let ((_id10987_ _hd1096510982_))
                          (if (gx#stx-pair? _tl1096610984_)
                              (let ((_e1096710989_
                                     (gx#syntax-e _tl1096610984_)))
                                (let ((_hd1096810992_ (##car _e1096710989_))
                                      (_tl1096910994_ (##cdr _e1096710989_)))
                                  (if (gx#stx-null? _tl1096910994_)
                                      (if '#t
                                          (gx#core-bind-syntax!__1
                                           _id10987_
                                           _e10959_
                                           _rebind?10960_)
                                          (_E1096310975_))
                                      (_E1096310975_))))
                              (_E1096310975_)))))
                    (_E1096310975_)))))
        (_E1096210997_))))
  (define gx#core-expand-let-bind-syntax!__0
    (lambda (_bind11004_ _e11005_)
      (let ((_rebind?11007_ '#f))
        (gx#core-expand-let-bind-syntax!__%
         _bind11004_
         _e11005_
         _rebind?11007_))))
  (define gx#core-expand-let-bind-syntax!
    (lambda _g12584_
      (let ((_g12583_ (length _g12584_)))
        (cond ((##fx= _g12583_ 2)
               (apply gx#core-expand-let-bind-syntax!__0 _g12584_))
              ((##fx= _g12583_ 3)
               (apply gx#core-expand-let-bind-syntax!__% _g12584_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-let-bind-syntax!
                _g12584_))))))
  (define gx#core-expand-expression%
    (lambda (_stx10916_)
      (let* ((_e1091710927_ _stx10916_)
             (_E1091910931_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1091710927_)))
             (_E1091810953_
              (lambda ()
                (if (gx#stx-pair? _e1091710927_)
                    (let ((_e1092010935_ (gx#syntax-e _e1091710927_)))
                      (let ((_hd1092110938_ (##car _e1092010935_))
                            (_tl1092210940_ (##cdr _e1092010935_)))
                        (if (gx#stx-pair? _tl1092210940_)
                            (let ((_e1092310943_ (gx#syntax-e _tl1092210940_)))
                              (let ((_hd1092410946_ (##car _e1092310943_))
                                    (_tl1092510948_ (##cdr _e1092310943_)))
                                (let ((_expr10951_ _hd1092410946_))
                                  (if (gx#stx-null? _tl1092510948_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10951_)
                                          (_E1091910931_))
                                      (_E1091910931_)))))
                            (_E1091910931_))))
                    (_E1091910931_)))))
        (_E1091810953_))))
  (define gx#core-expand-quote%
    (lambda (_stx10875_)
      (let* ((_e1087610886_ _stx10875_)
             (_E1087810890_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1087610886_)))
             (_E1087710912_
              (lambda ()
                (if (gx#stx-pair? _e1087610886_)
                    (let ((_e1087910894_ (gx#syntax-e _e1087610886_)))
                      (let ((_hd1088010897_ (##car _e1087910894_))
                            (_tl1088110899_ (##cdr _e1087910894_)))
                        (if (gx#stx-pair? _tl1088110899_)
                            (let ((_e1088210902_ (gx#syntax-e _tl1088110899_)))
                              (let ((_hd1088310905_ (##car _e1088210902_))
                                    (_tl1088410907_ (##cdr _e1088210902_)))
                                (let ((_e10910_ _hd1088310905_))
                                  (if (gx#stx-null? _tl1088410907_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10910_)
                                                       '()))
                                           (gx#stx-source _stx10875_))
                                          (_E1087810890_))
                                      (_E1087810890_)))))
                            (_E1087810890_))))
                    (_E1087810890_)))))
        (_E1087710912_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10834_)
      (let* ((_e1083510845_ _stx10834_)
             (_E1083710849_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1083510845_)))
             (_E1083610871_
              (lambda ()
                (if (gx#stx-pair? _e1083510845_)
                    (let ((_e1083810853_ (gx#syntax-e _e1083510845_)))
                      (let ((_hd1083910856_ (##car _e1083810853_))
                            (_tl1084010858_ (##cdr _e1083810853_)))
                        (if (gx#stx-pair? _tl1084010858_)
                            (let ((_e1084110861_ (gx#syntax-e _tl1084010858_)))
                              (let ((_hd1084210864_ (##car _e1084110861_))
                                    (_tl1084310866_ (##cdr _e1084110861_)))
                                (let ((_e10869_ _hd1084210864_))
                                  (if (gx#stx-null? _tl1084310866_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10869_)
                                                       '()))
                                           (gx#stx-source _stx10834_))
                                          (_E1083710849_))
                                      (_E1083710849_)))))
                            (_E1083710849_))))
                    (_E1083710849_)))))
        (_E1083610871_))))
  (define gx#core-expand-call%
    (lambda (_stx10791_)
      (let* ((_e1079210802_ _stx10791_)
             (_E1079410806_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1079210802_)))
             (_E1079310830_
              (lambda ()
                (if (gx#stx-pair? _e1079210802_)
                    (let ((_e1079510810_ (gx#syntax-e _e1079210802_)))
                      (let ((_hd1079610813_ (##car _e1079510810_))
                            (_tl1079710815_ (##cdr _e1079510810_)))
                        (if (gx#stx-pair? _tl1079710815_)
                            (let ((_e1079810818_ (gx#syntax-e _tl1079710815_)))
                              (let ((_hd1079910821_ (##car _e1079810818_))
                                    (_tl1080010823_ (##cdr _e1079810818_)))
                                (let* ((_rator10826_ _hd1079910821_)
                                       (_args10828_ _tl1080010823_))
                                  (if (gx#stx-list? _args10828_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10826_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10828_))
                                       (gx#stx-source _stx10791_))
                                      (_E1079410806_)))))
                            (_E1079410806_))))
                    (_E1079410806_)))))
        (_E1079310830_))))
  (define gx#core-expand-if%
    (lambda (_stx10724_)
      (let* ((_e1072510741_ _stx10724_)
             (_E1072710745_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1072510741_)))
             (_E1072610787_
              (lambda ()
                (if (gx#stx-pair? _e1072510741_)
                    (let ((_e1072810749_ (gx#syntax-e _e1072510741_)))
                      (let ((_hd1072910752_ (##car _e1072810749_))
                            (_tl1073010754_ (##cdr _e1072810749_)))
                        (if (gx#stx-pair? _tl1073010754_)
                            (let ((_e1073110757_ (gx#syntax-e _tl1073010754_)))
                              (let ((_hd1073210760_ (##car _e1073110757_))
                                    (_tl1073310762_ (##cdr _e1073110757_)))
                                (let ((_test10765_ _hd1073210760_))
                                  (if (gx#stx-pair? _tl1073310762_)
                                      (let ((_e1073410767_
                                             (gx#syntax-e _tl1073310762_)))
                                        (let ((_hd1073510770_
                                               (##car _e1073410767_))
                                              (_tl1073610772_
                                               (##cdr _e1073410767_)))
                                          (let ((_K10775_ _hd1073510770_))
                                            (if (gx#stx-pair? _tl1073610772_)
                                                (let ((_e1073710777_
                                                       (gx#syntax-e
                                                        _tl1073610772_)))
                                                  (let ((_hd1073810780_
                                                         (##car _e1073710777_))
                                                        (_tl1073910782_
                                                         (##cdr _e1073710777_)))
                                                    (let ((_E10785_
                                                           _hd1073810780_))
                                                      (if (gx#stx-null?
                                                           _tl1073910782_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10765_)
                                   (cons (gx#core-expand-expression _K10775_)
                                         (cons (gx#core-expand-expression
                                                _E10785_)
                                               '()))))
                       (gx#stx-source _stx10724_))
                      (_E1072710745_))
                  (_E1072710745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1072710745_)))))
                                      (_E1072710745_)))))
                            (_E1072710745_))))
                    (_E1072710745_)))))
        (_E1072610787_))))
  (define gx#core-expand-ref%
    (lambda (_stx10683_)
      (let* ((_e1068410694_ _stx10683_)
             (_E1068610698_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1068410694_)))
             (_E1068510720_
              (lambda ()
                (if (gx#stx-pair? _e1068410694_)
                    (let ((_e1068710702_ (gx#syntax-e _e1068410694_)))
                      (let ((_hd1068810705_ (##car _e1068710702_))
                            (_tl1068910707_ (##cdr _e1068710702_)))
                        (if (gx#stx-pair? _tl1068910707_)
                            (let ((_e1069010710_ (gx#syntax-e _tl1068910707_)))
                              (let ((_hd1069110713_ (##car _e1069010710_))
                                    (_tl1069210715_ (##cdr _e1069010710_)))
                                (let ((_id10718_ _hd1069110713_))
                                  (if (gx#stx-null? _tl1069210715_)
                                      (if (gx#identifier? _id10718_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10718_
                                                        _stx10683_)
                                                       '()))
                                           (gx#stx-source _stx10683_))
                                          (_E1068610698_))
                                      (_E1068610698_)))))
                            (_E1068610698_))))
                    (_E1068610698_)))))
        (_E1068510720_))))
  (define gx#core-expand-setq%
    (lambda (_stx10629_)
      (let* ((_e1063010643_ _stx10629_)
             (_E1063210647_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1063010643_)))
             (_E1063110679_
              (lambda ()
                (if (gx#stx-pair? _e1063010643_)
                    (let ((_e1063310651_ (gx#syntax-e _e1063010643_)))
                      (let ((_hd1063410654_ (##car _e1063310651_))
                            (_tl1063510656_ (##cdr _e1063310651_)))
                        (if (gx#stx-pair? _tl1063510656_)
                            (let ((_e1063610659_ (gx#syntax-e _tl1063510656_)))
                              (let ((_hd1063710662_ (##car _e1063610659_))
                                    (_tl1063810664_ (##cdr _e1063610659_)))
                                (let ((_id10667_ _hd1063710662_))
                                  (if (gx#stx-pair? _tl1063810664_)
                                      (let ((_e1063910669_
                                             (gx#syntax-e _tl1063810664_)))
                                        (let ((_hd1064010672_
                                               (##car _e1063910669_))
                                              (_tl1064110674_
                                               (##cdr _e1063910669_)))
                                          (let ((_expr10677_ _hd1064010672_))
                                            (if (gx#stx-null? _tl1064110674_)
                                                (if (gx#identifier? _id10667_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10667_
                          _stx10629_)
                         (cons (gx#core-expand-expression _expr10677_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10629_))
                                                    (_E1063210647_))
                                                (_E1063210647_)))))
                                      (_E1063210647_)))))
                            (_E1063210647_))))
                    (_E1063210647_)))))
        (_E1063110679_))))
  (define gx#macro-expand-extern
    (lambda (_stx10477_)
      (letrec ((_generate10479_
                (lambda (_body10509_)
                  (let _lp10511_ ((_rest10513_ _body10509_)
                                  (_ns10514_ (gx#core-context-namespace__0))
                                  (_r10515_ '()))
                    (let* ((_e1051610531_ _rest10513_)
                           (_E1052910535_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1051610531_)))
                           (_E1052510539_
                            (lambda ()
                              (if (gx#stx-null? _e1051610531_)
                                  (if '#t (reverse _r10515_) (_E1052910535_))
                                  (_E1052910535_))))
                           (_E1051810596_
                            (lambda ()
                              (if (gx#stx-pair? _e1051610531_)
                                  (let ((_e1052610543_
                                         (gx#syntax-e _e1051610531_)))
                                    (let ((_hd1052710546_
                                           (##car _e1052610543_))
                                          (_tl1052810548_
                                           (##cdr _e1052610543_)))
                                      (let* ((_hd10551_ _hd1052710546_)
                                             (_rest10553_ _tl1052810548_))
                                        (if '#t
                                            (if (gx#identifier? _hd10551_)
                                                (_lp10511_
                                                 _rest10553_
                                                 _ns10514_
                                                 (cons (cons _hd10551_
                                                             (cons (if _ns10514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10551_
                                _ns10514_
                                '"#"
                                _hd10551_)
                               _hd10551_)
                           '()))
               _r10515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1055410564_
                                                        _hd10551_)
                                                       (_E1055610568_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1055410564_)))
                                                       (_E1055510592_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1055410564_)
                                                              (let ((_e1055710572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1055410564_)))
                        (let ((_hd1055810575_ (##car _e1055710572_))
                              (_tl1055910577_ (##cdr _e1055710572_)))
                          (let ((_id10580_ _hd1055810575_))
                            (if (gx#stx-pair? _tl1055910577_)
                                (let ((_e1056010582_
                                       (gx#syntax-e _tl1055910577_)))
                                  (let ((_hd1056110585_ (##car _e1056010582_))
                                        (_tl1056210587_ (##cdr _e1056010582_)))
                                    (let ((_eid10590_ _hd1056110585_))
                                      (if (gx#stx-null? _tl1056210587_)
                                          (if (and (gx#identifier? _id10580_)
                                                   (gx#identifier? _eid10590_))
                                              (_lp10511_
                                               _rest10553_
                                               _ns10514_
                                               (cons (cons _id10580_
                                                           (cons _eid10590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10515_))
                                              (_E1055610568_))
                                          (_E1055610568_)))))
                                (_E1055610568_)))))
                      (_E1055610568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1055510592_)))
                                            (_E1052510539_)))))
                                  (_E1052510539_))))
                           (_E1051710625_
                            (lambda ()
                              (if (gx#stx-pair? _e1051610531_)
                                  (let ((_e1051910600_
                                         (gx#syntax-e _e1051610531_)))
                                    (let ((_hd1052010603_
                                           (##car _e1051910600_))
                                          (_tl1052110605_
                                           (##cdr _e1051910600_)))
                                      (if (eq? (gx#stx-e _hd1052010603_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1052110605_)
                                              (let ((_e1052210608_
                                                     (gx#syntax-e
                                                      _tl1052110605_)))
                                                (let ((_hd1052310611_
                                                       (##car _e1052210608_))
                                                      (_tl1052410613_
                                                       (##cdr _e1052210608_)))
                                                  (let* ((_ns10616_
                                                          _hd1052310611_)
                                                         (_rest10618_
                                                          _tl1052410613_))
                                                    (if '#t
                                                        (let ((_ns10623_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10616_)
                           (symbol->string (gx#stx-e _ns10616_))
                           (if (or (gx#stx-string? _ns10616_)
                                   (gx#stx-false? _ns10616_))
                               (gx#stx-e _ns10616_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10477_
                                _ns10616_)))))
                  (_lp10511_ _rest10618_ _ns10623_ _r10515_))
                (_E1051810596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1051810596_))
                                          (_E1051810596_))))
                                  (_E1051810596_)))))
                      (_E1051710625_))))))
        (let* ((_e1048010487_ _stx10477_)
               (_E1048210491_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1048010487_)))
               (_E1048110505_
                (lambda ()
                  (if (gx#stx-pair? _e1048010487_)
                      (let ((_e1048310495_ (gx#syntax-e _e1048010487_)))
                        (let ((_hd1048410498_ (##car _e1048310495_))
                              (_tl1048510500_ (##cdr _e1048310495_)))
                          (let ((_body10503_ _tl1048510500_))
                            (if (gx#stx-list? _body10503_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10479_ _body10503_))
                                (_E1048210491_)))))
                      (_E1048210491_)))))
          (_E1048110505_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10423_)
      (let* ((_e1042410437_ _stx10423_)
             (_E1042610441_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1042410437_)))
             (_E1042510473_
              (lambda ()
                (if (gx#stx-pair? _e1042410437_)
                    (let ((_e1042710445_ (gx#syntax-e _e1042410437_)))
                      (let ((_hd1042810448_ (##car _e1042710445_))
                            (_tl1042910450_ (##cdr _e1042710445_)))
                        (if (gx#stx-pair? _tl1042910450_)
                            (let ((_e1043010453_ (gx#syntax-e _tl1042910450_)))
                              (let ((_hd1043110456_ (##car _e1043010453_))
                                    (_tl1043210458_ (##cdr _e1043010453_)))
                                (let ((_hd10461_ _hd1043110456_))
                                  (if (gx#stx-pair? _tl1043210458_)
                                      (let ((_e1043310463_
                                             (gx#syntax-e _tl1043210458_)))
                                        (let ((_hd1043410466_
                                               (##car _e1043310463_))
                                              (_tl1043510468_
                                               (##cdr _e1043310463_)))
                                          (let ((_expr10471_ _hd1043410466_))
                                            (if (gx#stx-null? _tl1043510468_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10461_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10461_)
                        (cons _expr10471_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1042610441_))
                                                (_E1042610441_)))))
                                      (_E1042610441_)))))
                            (_E1042610441_))))
                    (_E1042610441_)))))
        (_E1042510473_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10369_)
      (let* ((_e1037010383_ _stx10369_)
             (_E1037210387_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1037010383_)))
             (_E1037110419_
              (lambda ()
                (if (gx#stx-pair? _e1037010383_)
                    (let ((_e1037310391_ (gx#syntax-e _e1037010383_)))
                      (let ((_hd1037410394_ (##car _e1037310391_))
                            (_tl1037510396_ (##cdr _e1037310391_)))
                        (if (gx#stx-pair? _tl1037510396_)
                            (let ((_e1037610399_ (gx#syntax-e _tl1037510396_)))
                              (let ((_hd1037710402_ (##car _e1037610399_))
                                    (_tl1037810404_ (##cdr _e1037610399_)))
                                (let ((_hd10407_ _hd1037710402_))
                                  (if (gx#stx-pair? _tl1037810404_)
                                      (let ((_e1037910409_
                                             (gx#syntax-e _tl1037810404_)))
                                        (let ((_hd1038010412_
                                               (##car _e1037910409_))
                                              (_tl1038110414_
                                               (##cdr _e1037910409_)))
                                          (let ((_expr10417_ _hd1038010412_))
                                            (if (gx#stx-null? _tl1038110414_)
                                                (if (gx#identifier? _hd10407_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10407_
                                                                (cons _expr10417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1037210387_))
                                                (_E1037210387_)))))
                                      (_E1037210387_)))))
                            (_E1037210387_))))
                    (_E1037210387_)))))
        (_E1037110419_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10315_)
      (let* ((_e1031610329_ _stx10315_)
             (_E1031810333_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1031610329_)))
             (_E1031710365_
              (lambda ()
                (if (gx#stx-pair? _e1031610329_)
                    (let ((_e1031910337_ (gx#syntax-e _e1031610329_)))
                      (let ((_hd1032010340_ (##car _e1031910337_))
                            (_tl1032110342_ (##cdr _e1031910337_)))
                        (if (gx#stx-pair? _tl1032110342_)
                            (let ((_e1032210345_ (gx#syntax-e _tl1032110342_)))
                              (let ((_hd1032310348_ (##car _e1032210345_))
                                    (_tl1032410350_ (##cdr _e1032210345_)))
                                (let ((_id10353_ _hd1032310348_))
                                  (if (gx#stx-pair? _tl1032410350_)
                                      (let ((_e1032510355_
                                             (gx#syntax-e _tl1032410350_)))
                                        (let ((_hd1032610358_
                                               (##car _e1032510355_))
                                              (_tl1032710360_
                                               (##cdr _e1032510355_)))
                                          (let ((_alias-id10363_
                                                 _hd1032610358_))
                                            (if (gx#stx-null? _tl1032710360_)
                                                (if (and (gx#identifier?
                                                          _id10353_)
                                                         (gx#identifier?
                                                          _alias-id10363_))
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10353_
                                                                (cons _alias-id10363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1031810333_))
                                                (_E1031810333_)))))
                                      (_E1031810333_)))))
                            (_E1031810333_))))
                    (_E1031810333_)))))
        (_E1031710365_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10272_)
      (let* ((_e1027310283_ _stx10272_)
             (_E1027510287_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1027310283_)))
             (_E1027410311_
              (lambda ()
                (if (gx#stx-pair? _e1027310283_)
                    (let ((_e1027610291_ (gx#syntax-e _e1027310283_)))
                      (let ((_hd1027710294_ (##car _e1027610291_))
                            (_tl1027810296_ (##cdr _e1027610291_)))
                        (if (gx#stx-pair? _tl1027810296_)
                            (let ((_e1027910299_ (gx#syntax-e _tl1027810296_)))
                              (let ((_hd1028010302_ (##car _e1027910299_))
                                    (_tl1028110304_ (##cdr _e1027910299_)))
                                (let* ((_hd10307_ _hd1028010302_)
                                       (_body10309_ _tl1028110304_))
                                  (if (and (gx#stx-andmap
                                            gx#identifier?
                                            _hd10307_)
                                           (gx#stx-list? _body10309_)
                                           (not (gx#stx-null? _body10309_)))
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10307_)
                                       _body10309_)
                                      (_E1027510287_)))))
                            (_E1027510287_))))
                    (_E1027510287_)))))
        (_E1027410311_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10208_)
      (letrec ((_generate10210_
                (lambda (_clause10240_)
                  (let* ((_e1024110248_ _clause10240_)
                         (_E1024310252_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10208_
                             _clause10240_)))
                         (_E1024210268_
                          (lambda ()
                            (if (gx#stx-pair? _e1024110248_)
                                (let ((_e1024410256_
                                       (gx#syntax-e _e1024110248_)))
                                  (let ((_hd1024510259_ (##car _e1024410256_))
                                        (_tl1024610261_ (##cdr _e1024410256_)))
                                    (let* ((_hd10264_ _hd1024510259_)
                                           (_body10266_ _tl1024610261_))
                                      (if (and (gx#stx-andmap
                                                gx#identifier?
                                                _hd10264_)
                                               (gx#stx-list? _body10266_)
                                               (not (gx#stx-null?
                                                     _body10266_)))
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10264_)
                                                 _body10266_)
                                           (gx#stx-source _clause10240_))
                                          (_E1024310252_)))))
                                (_E1024310252_)))))
                    (_E1024210268_)))))
        (let* ((_e1021110218_ _stx10208_)
               (_E1021310222_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1021110218_)))
               (_E1021210236_
                (lambda ()
                  (if (gx#stx-pair? _e1021110218_)
                      (let ((_e1021410226_ (gx#syntax-e _e1021110218_)))
                        (let ((_hd1021510229_ (##car _e1021410226_))
                              (_tl1021610231_ (##cdr _e1021410226_)))
                          (let ((_clauses10234_ _tl1021610231_))
                            (if (gx#stx-list? _clauses10234_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10210_ _clauses10234_))
                                (_E1021310222_)))))
                      (_E1021310222_)))))
          (_E1021210236_)))))
  (define gx#macro-expand-let-values__%
    (lambda (_stx10109_ _form10110_)
      (letrec ((_generate10112_
                (lambda (_bind10155_)
                  (let* ((_e1015610166_ _bind10155_)
                         (_E1015810170_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx10109_
                             _bind10155_)))
                         (_E1015710194_
                          (lambda ()
                            (if (gx#stx-pair? _e1015610166_)
                                (let ((_e1015910174_
                                       (gx#syntax-e _e1015610166_)))
                                  (let ((_hd1016010177_ (##car _e1015910174_))
                                        (_tl1016110179_ (##cdr _e1015910174_)))
                                    (let ((_ids10182_ _hd1016010177_))
                                      (if (gx#stx-pair? _tl1016110179_)
                                          (let ((_e1016210184_
                                                 (gx#syntax-e _tl1016110179_)))
                                            (let ((_hd1016310187_
                                                   (##car _e1016210184_))
                                                  (_tl1016410189_
                                                   (##cdr _e1016210184_)))
                                              (let ((_expr10192_
                                                     _hd1016310187_))
                                                (if (gx#stx-null?
                                                     _tl1016410189_)
                                                    (if (gx#stx-andmap
                                                         gx#identifier?
                                                         _ids10182_)
                                                        (cons (gx#stx-map1
                                                               gx#user-binding-identifier
                                                               _ids10182_)
                                                              (cons _expr10192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (_E1015810170_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1015810170_)))))
                                          (_E1015810170_)))))
                                (_E1015810170_)))))
                    (_E1015710194_)))))
        (let* ((_e1011310123_ _stx10109_)
               (_E1011510127_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1011310123_)))
               (_E1011410151_
                (lambda ()
                  (if (gx#stx-pair? _e1011310123_)
                      (let ((_e1011610131_ (gx#syntax-e _e1011310123_)))
                        (let ((_hd1011710134_ (##car _e1011610131_))
                              (_tl1011810136_ (##cdr _e1011610131_)))
                          (if (gx#stx-pair? _tl1011810136_)
                              (let ((_e1011910139_
                                     (gx#syntax-e _tl1011810136_)))
                                (let ((_hd1012010142_ (##car _e1011910139_))
                                      (_tl1012110144_ (##cdr _e1011910139_)))
                                  (let* ((_hd10147_ _hd1012010142_)
                                         (_body10149_ _tl1012110144_))
                                    (if (and (gx#stx-list? _hd10147_)
                                             (gx#stx-list? _body10149_)
                                             (not (gx#stx-null? _body10149_)))
                                        (gx#core-cons*
                                         _form10110_
                                         (gx#stx-map1
                                          _generate10112_
                                          _hd10147_)
                                         _body10149_)
                                        (_E1011510127_)))))
                              (_E1011510127_))))
                      (_E1011510127_)))))
          (_E1011410151_)))))
  (define gx#macro-expand-let-values__0
    (lambda (_stx10201_)
      (let ((_form10203_ '%#let-values))
        (gx#macro-expand-let-values__% _stx10201_ _form10203_))))
  (define gx#macro-expand-let-values
    (lambda _g12586_
      (let ((_g12585_ (length _g12586_)))
        (cond ((##fx= _g12585_ 1)
               (apply gx#macro-expand-let-values__0 _g12586_))
              ((##fx= _g12585_ 2)
               (apply gx#macro-expand-let-values__% _g12586_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-let-values
                _g12586_))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx10106_)
      (gx#macro-expand-let-values__% _stx10106_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx10104_)
      (gx#macro-expand-let-values__% _stx10104_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9995_)
      (let* ((_e999610022_ _stx9995_)
             (_E1000810026_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e999610022_)))
             (_E999810068_
              (lambda ()
                (if (gx#stx-pair? _e999610022_)
                    (let ((_e1000910030_ (gx#syntax-e _e999610022_)))
                      (let ((_hd1001010033_ (##car _e1000910030_))
                            (_tl1001110035_ (##cdr _e1000910030_)))
                        (if (gx#stx-pair? _tl1001110035_)
                            (let ((_e1001210038_ (gx#syntax-e _tl1001110035_)))
                              (let ((_hd1001310041_ (##car _e1001210038_))
                                    (_tl1001410043_ (##cdr _e1001210038_)))
                                (let ((_test10046_ _hd1001310041_))
                                  (if (gx#stx-pair? _tl1001410043_)
                                      (let ((_e1001510048_
                                             (gx#syntax-e _tl1001410043_)))
                                        (let ((_hd1001610051_
                                               (##car _e1001510048_))
                                              (_tl1001710053_
                                               (##cdr _e1001510048_)))
                                          (let ((_K10056_ _hd1001610051_))
                                            (if (gx#stx-pair? _tl1001710053_)
                                                (let ((_e1001810058_
                                                       (gx#syntax-e
                                                        _tl1001710053_)))
                                                  (let ((_hd1001910061_
                                                         (##car _e1001810058_))
                                                        (_tl1002010063_
                                                         (##cdr _e1001810058_)))
                                                    (let ((_E10066_
                                                           _hd1001910061_))
                                                      (if (gx#stx-null?
                                                           _tl1002010063_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test10046_
                                                               _K10056_
                                                               _E10066_)
                                                              (_E1000810026_))
                                                          (_E1000810026_)))))
                                                (_E1000810026_)))))
                                      (_E1000810026_)))))
                            (_E1000810026_))))
                    (_E1000810026_))))
             (_E999710100_
              (lambda ()
                (if (gx#stx-pair? _e999610022_)
                    (let ((_e999910072_ (gx#syntax-e _e999610022_)))
                      (let ((_hd1000010075_ (##car _e999910072_))
                            (_tl1000110077_ (##cdr _e999910072_)))
                        (if (gx#stx-pair? _tl1000110077_)
                            (let ((_e1000210080_ (gx#syntax-e _tl1000110077_)))
                              (let ((_hd1000310083_ (##car _e1000210080_))
                                    (_tl1000410085_ (##cdr _e1000210080_)))
                                (let ((_test10088_ _hd1000310083_))
                                  (if (gx#stx-pair? _tl1000410085_)
                                      (let ((_e1000510090_
                                             (gx#syntax-e _tl1000410085_)))
                                        (let ((_hd1000610093_
                                               (##car _e1000510090_))
                                              (_tl1000710095_
                                               (##cdr _e1000510090_)))
                                          (let ((_K10098_ _hd1000610093_))
                                            (if (gx#stx-null? _tl1000710095_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test10088_
                                                     _K10098_
                                                     '#!void)
                                                    (_E999810068_))
                                                (_E999810068_)))))
                                      (_E999810068_)))))
                            (_E999810068_))))
                    (_E999810068_)))))
        (_E999710100_))))
  (define gx#free-identifier=?
    (lambda (_xid9983_ _yid9984_)
      (let ((_xe9986_ (gx#resolve-identifier__0 _xid9983_))
            (_ye9987_ (gx#resolve-identifier__0 _yid9984_)))
        (if (and _xe9986_ _ye9987_)
            (let ((_$e9989_ (eq? _xe9986_ _ye9987_)))
              (if _$e9989_
                  _$e9989_
                  (if (##structure-instance-of? _xe9986_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9987_ 'gx#binding::t)
                          (eq? (##unchecked-structure-ref
                                _xe9986_
                                '1
                                gx#binding::t
                                '#f)
                               (##unchecked-structure-ref
                                _ye9987_
                                '1
                                gx#binding::t
                                '#f))
                          '#f)
                      '#f)))
            (if (or _xe9986_ _ye9987_)
                '#f
                (gx#stx-eq? _xid9983_ _yid9984_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9967_ _yid9968_)
      (letrec ((_context9970_
                (lambda (_e9981_)
                  (if (##structure-direct-instance-of?
                       _e9981_
                       'gx#syntax-quote::t)
                      (##unchecked-structure-ref
                       _e9981_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9971_
                (lambda (_e9979_)
                  (if (symbol? _e9979_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9979_
                           'gx#identifier-wrap::t)
                          (##unchecked-structure-ref
                           _e9979_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##unchecked-structure-ref
                           _e9979_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9972_
                (lambda (_e9977_)
                  (if (symbol? _e9977_)
                      _e9977_
                      (gx#syntax-local-unwrap _e9977_)))))
        (let ((_x9974_ (_unwrap9972_ _xid9967_))
              (_y9975_ (_unwrap9972_ _yid9968_)))
          (if (gx#stx-eq? _x9974_ _y9975_)
              (if (eq? (_context9970_ _x9974_) (_context9970_ _y9975_))
                  (equal? (_marks9971_ _x9974_) (_marks9971_ _y9975_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9965_)
      (if (gx#identifier? _stx9965_) (gx#core-identifier=? _stx9965_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9963_)
      (if (gx#identifier? _stx9963_)
          (gx#core-identifier=? _stx9963_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9961_)
      (if (gx#identifier? _x9961_)
          (if (not (gx#underscore? _x9961_)) _x9961_ '#f)
          '#f)))
  (define gx#check-duplicate-identifiers__%
    (lambda (_stx9907_ _where9908_)
      (let _lp9910_ ((_rest9912_ (gx#syntax->list _stx9907_)))
        (let* ((_rest99139921_ _rest9912_)
               (_else99159929_ (lambda () '#t))
               (_K99179939_
                (lambda (_rest9932_ _hd9933_)
                  (if (not (gx#identifier? _hd9933_))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad identifier"
                       _where9908_
                       _hd9933_)
                      (if (find (lambda (_g99349936_)
                                  (gx#bound-identifier=? _g99349936_ _hd9933_))
                                _rest9932_)
                          (gx#raise-syntax-error
                           '#f
                           '"Duplicate identifier"
                           _where9908_
                           _hd9933_)
                          (_lp9910_ _rest9932_))))))
          (if (##pair? _rest99139921_)
              (let ((_hd99189942_ (##car _rest99139921_))
                    (_tl99199944_ (##cdr _rest99139921_)))
                (let* ((_hd9947_ _hd99189942_) (_rest9949_ _tl99199944_))
                  (_K99179939_ _rest9949_ _hd9947_)))
              (_else99159929_))))))
  (define gx#check-duplicate-identifiers__0
    (lambda (_stx9954_)
      (let ((_where9956_ _stx9954_))
        (gx#check-duplicate-identifiers__% _stx9954_ _where9956_))))
  (define gx#check-duplicate-identifiers
    (lambda _g12588_
      (let ((_g12587_ (length _g12588_)))
        (cond ((##fx= _g12587_ 1)
               (apply gx#check-duplicate-identifiers__0 _g12588_))
              ((##fx= _g12587_ 2)
               (apply gx#check-duplicate-identifiers__% _g12588_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#check-duplicate-identifiers
                _g12588_))))))
  (define gx#core-bind-values?
    (lambda (_stx9899_)
      (gx#stx-andmap
       (lambda (_x9901_)
         (let ((_$e9903_ (gx#identifier? _x9901_)))
           (if _$e9903_ _$e9903_ (gx#stx-false? _x9901_))))
       _stx9899_)))
  (define gx#core-bind-values!__%
    (lambda (_stx9863_ _rebind?9864_ _phi9865_ _ctx9866_)
      (gx#stx-for-each1
       (lambda (_id9868_)
         (if (gx#identifier? _id9868_)
             (gx#core-bind-runtime!__%
              _id9868_
              _rebind?9864_
              _phi9865_
              _ctx9866_)
             '#!void))
       _stx9863_)))
  (define gx#core-bind-values!__0
    (lambda (_stx9873_)
      (let* ((_rebind?9875_ '#f)
             (_phi9877_ (gx#current-expander-phi))
             (_ctx9879_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9873_
         _rebind?9875_
         _phi9877_
         _ctx9879_))))
  (define gx#core-bind-values!__1
    (lambda (_stx9881_ _rebind?9882_)
      (let* ((_phi9884_ (gx#current-expander-phi))
             (_ctx9886_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9881_
         _rebind?9882_
         _phi9884_
         _ctx9886_))))
  (define gx#core-bind-values!__2
    (lambda (_stx9888_ _rebind?9889_ _phi9890_)
      (let ((_ctx9892_ (gx#current-expander-context)))
        (gx#core-bind-values!__%
         _stx9888_
         _rebind?9889_
         _phi9890_
         _ctx9892_))))
  (define gx#core-bind-values!
    (lambda _g12590_
      (let ((_g12589_ (length _g12590_)))
        (cond ((##fx= _g12589_ 1) (apply gx#core-bind-values!__0 _g12590_))
              ((##fx= _g12589_ 2) (apply gx#core-bind-values!__1 _g12590_))
              ((##fx= _g12589_ 3) (apply gx#core-bind-values!__2 _g12590_))
              ((##fx= _g12589_ 4) (apply gx#core-bind-values!__% _g12590_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-values!
                _g12590_))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9858_)
      (gx#stx-map1
       (lambda (_x9860_)
         (if (gx#identifier? _x9860_) (gx#core-quote-syntax__0 _x9860_) '#f))
       _stx9858_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9851_)
      (if (gx#identifier? _stx9851_)
          (let* ((_bind9853_ (gx#resolve-identifier__0 _stx9851_))
                 (_$e9855_ (not _bind9853_)))
            (if _$e9855_
                _$e9855_
                (##structure-instance-of? _bind9853_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9843_ _form9844_)
      (let ((_bind9846_ (gx#resolve-identifier__0 _id9843_)))
        (if (##structure-instance-of? _bind9846_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9843_)
            (if (not _bind9846_)
                (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                        (gx#core-extern-symbol? (gx#stx-e _id9843_)))
                    (gx#core-quote-syntax__0 _id9843_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9844_
                     _id9843_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9844_
                 _id9843_))))))
  (define gx#core-bind-runtime!__%
    (lambda (_id9802_ _rebind?9803_ _phi9804_ _ctx9805_)
      (let* ((_key9807_ (gx#core-identifier-key _id9802_))
             (_eid9809_
              (gx#make-binding-id__% _key9807_ '#f _phi9804_ _ctx9805_))
             (_bind9811_
              (if (##structure-instance-of? _ctx9805_ 'gx#module-context::t)
                  (##structure
                   gx#module-binding::t
                   _eid9809_
                   _key9807_
                   _phi9804_
                   _ctx9805_)
                  (if (##structure-instance-of? _ctx9805_ 'gx#top-context::t)
                      (##structure
                       gx#top-binding::t
                       _eid9809_
                       _key9807_
                       _phi9804_)
                      (if (##structure-instance-of?
                           _ctx9805_
                           'gx#local-context::t)
                          (##structure
                           gx#local-binding::t
                           _eid9809_
                           _key9807_
                           _phi9804_)
                          (##structure
                           gx#runtime-binding::t
                           _eid9809_
                           _key9807_
                           _phi9804_))))))
        (gx#bind-identifier!__%
         _id9802_
         _bind9811_
         _rebind?9803_
         _phi9804_
         _ctx9805_))))
  (define gx#core-bind-runtime!__0
    (lambda (_id9817_)
      (let* ((_rebind?9819_ '#f)
             (_phi9821_ (gx#current-expander-phi))
             (_ctx9823_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9817_
         _rebind?9819_
         _phi9821_
         _ctx9823_))))
  (define gx#core-bind-runtime!__1
    (lambda (_id9825_ _rebind?9826_)
      (let* ((_phi9828_ (gx#current-expander-phi))
             (_ctx9830_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9825_
         _rebind?9826_
         _phi9828_
         _ctx9830_))))
  (define gx#core-bind-runtime!__2
    (lambda (_id9832_ _rebind?9833_ _phi9834_)
      (let ((_ctx9836_ (gx#current-expander-context)))
        (gx#core-bind-runtime!__%
         _id9832_
         _rebind?9833_
         _phi9834_
         _ctx9836_))))
  (define gx#core-bind-runtime!
    (lambda _g12592_
      (let ((_g12591_ (length _g12592_)))
        (cond ((##fx= _g12591_ 1) (apply gx#core-bind-runtime!__0 _g12592_))
              ((##fx= _g12591_ 2) (apply gx#core-bind-runtime!__1 _g12592_))
              ((##fx= _g12591_ 3) (apply gx#core-bind-runtime!__2 _g12592_))
              ((##fx= _g12591_ 4) (apply gx#core-bind-runtime!__% _g12592_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-runtime!
                _g12592_))))))
  (define gx#core-bind-runtime-reference!__%
    (lambda (_id9757_ _eid9758_ _rebind?9759_ _phi9760_ _ctx9761_)
      (let* ((_key9763_ (gx#core-identifier-key _id9757_))
             (_bind9765_
              (if (##structure-instance-of? _ctx9761_ 'gx#module-context::t)
                  (##structure
                   gx#module-binding::t
                   _eid9758_
                   _key9763_
                   _phi9760_
                   _ctx9761_)
                  (if (##structure-instance-of? _ctx9761_ 'gx#top-context::t)
                      (##structure
                       gx#top-binding::t
                       _eid9758_
                       _key9763_
                       _phi9760_)
                      (##structure
                       gx#runtime-binding::t
                       _eid9758_
                       _key9763_
                       _phi9760_)))))
        (gx#bind-identifier!__%
         _id9757_
         _bind9765_
         _rebind?9759_
         _phi9760_
         _ctx9761_))))
  (define gx#core-bind-runtime-reference!__0
    (lambda (_id9771_ _eid9772_)
      (let* ((_rebind?9774_ '#f)
             (_phi9776_ (gx#current-expander-phi))
             (_ctx9778_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9771_
         _eid9772_
         _rebind?9774_
         _phi9776_
         _ctx9778_))))
  (define gx#core-bind-runtime-reference!__1
    (lambda (_id9780_ _eid9781_ _rebind?9782_)
      (let* ((_phi9784_ (gx#current-expander-phi))
             (_ctx9786_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9780_
         _eid9781_
         _rebind?9782_
         _phi9784_
         _ctx9786_))))
  (define gx#core-bind-runtime-reference!__2
    (lambda (_id9788_ _eid9789_ _rebind?9790_ _phi9791_)
      (let ((_ctx9793_ (gx#current-expander-context)))
        (gx#core-bind-runtime-reference!__%
         _id9788_
         _eid9789_
         _rebind?9790_
         _phi9791_
         _ctx9793_))))
  (define gx#core-bind-runtime-reference!
    (lambda _g12594_
      (let ((_g12593_ (length _g12594_)))
        (cond ((##fx= _g12593_ 2)
               (apply gx#core-bind-runtime-reference!__0 _g12594_))
              ((##fx= _g12593_ 3)
               (apply gx#core-bind-runtime-reference!__1 _g12594_))
              ((##fx= _g12593_ 4)
               (apply gx#core-bind-runtime-reference!__2 _g12594_))
              ((##fx= _g12593_ 5)
               (apply gx#core-bind-runtime-reference!__% _g12594_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-runtime-reference!
                _g12594_))))))
  (define gx#core-bind-extern!__%
    (lambda (_id9717_ _eid9718_ _rebind?9719_ _phi9720_ _ctx9721_)
      (gx#bind-identifier!__%
       _id9717_
       (##structure
        gx#extern-binding::t
        _eid9718_
        (gx#core-identifier-key _id9717_)
        _phi9720_)
       _rebind?9719_
       _phi9720_
       _ctx9721_)))
  (define gx#core-bind-extern!__0
    (lambda (_id9726_ _eid9727_)
      (let* ((_rebind?9729_ '#f)
             (_phi9731_ (gx#current-expander-phi))
             (_ctx9733_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9726_
         _eid9727_
         _rebind?9729_
         _phi9731_
         _ctx9733_))))
  (define gx#core-bind-extern!__1
    (lambda (_id9735_ _eid9736_ _rebind?9737_)
      (let* ((_phi9739_ (gx#current-expander-phi))
             (_ctx9741_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9735_
         _eid9736_
         _rebind?9737_
         _phi9739_
         _ctx9741_))))
  (define gx#core-bind-extern!__2
    (lambda (_id9743_ _eid9744_ _rebind?9745_ _phi9746_)
      (let ((_ctx9748_ (gx#current-expander-context)))
        (gx#core-bind-extern!__%
         _id9743_
         _eid9744_
         _rebind?9745_
         _phi9746_
         _ctx9748_))))
  (define gx#core-bind-extern!
    (lambda _g12596_
      (let ((_g12595_ (length _g12596_)))
        (cond ((##fx= _g12595_ 2) (apply gx#core-bind-extern!__0 _g12596_))
              ((##fx= _g12595_ 3) (apply gx#core-bind-extern!__1 _g12596_))
              ((##fx= _g12595_ 4) (apply gx#core-bind-extern!__2 _g12596_))
              ((##fx= _g12595_ 5) (apply gx#core-bind-extern!__% _g12596_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-extern!
                _g12596_))))))
  (define gx#core-bind-syntax!__%
    (lambda (_id9671_ _e9672_ _rebind?9673_ _phi9674_ _ctx9675_)
      (gx#bind-identifier!__%
       _id9671_
       (let ((_key9680_ (gx#core-identifier-key _id9671_))
             (_e9681_ (if (or (##structure-instance-of?
                               _e9672_
                               'gx#expander::t)
                              (##structure-instance-of?
                               _e9672_
                               'gx#expander-context::t))
                          _e9672_
                          (##structure
                           gx#user-expander::t
                           _e9672_
                           _ctx9675_
                           _phi9674_))))
         (##structure
          gx#syntax-binding::t
          (gx#make-binding-id__% _key9680_ '#t _phi9674_ _ctx9675_)
          _key9680_
          _phi9674_
          _e9681_))
       _rebind?9673_
       _phi9674_
       _ctx9675_)))
  (define gx#core-bind-syntax!__0
    (lambda (_id9686_ _e9687_)
      (let* ((_rebind?9689_ '#f)
             (_phi9691_ (gx#current-expander-phi))
             (_ctx9693_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9686_
         _e9687_
         _rebind?9689_
         _phi9691_
         _ctx9693_))))
  (define gx#core-bind-syntax!__1
    (lambda (_id9695_ _e9696_ _rebind?9697_)
      (let* ((_phi9699_ (gx#current-expander-phi))
             (_ctx9701_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9695_
         _e9696_
         _rebind?9697_
         _phi9699_
         _ctx9701_))))
  (define gx#core-bind-syntax!__2
    (lambda (_id9703_ _e9704_ _rebind?9705_ _phi9706_)
      (let ((_ctx9708_ (gx#current-expander-context)))
        (gx#core-bind-syntax!__%
         _id9703_
         _e9704_
         _rebind?9705_
         _phi9706_
         _ctx9708_))))
  (define gx#core-bind-syntax!
    (lambda _g12598_
      (let ((_g12597_ (length _g12598_)))
        (cond ((##fx= _g12597_ 2) (apply gx#core-bind-syntax!__0 _g12598_))
              ((##fx= _g12597_ 3) (apply gx#core-bind-syntax!__1 _g12598_))
              ((##fx= _g12597_ 4) (apply gx#core-bind-syntax!__2 _g12598_))
              ((##fx= _g12597_ 5) (apply gx#core-bind-syntax!__% _g12598_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-syntax!
                _g12598_))))))
  (define gx#core-bind-root-syntax!__%
    (lambda (_id9654_ _e9655_ _rebind?9656_)
      (gx#core-bind-syntax!__%
       _id9654_
       _e9655_
       _rebind?9656_
       '0
       (gx#core-context-root__0))))
  (define gx#core-bind-root-syntax!__0
    (lambda (_id9661_ _e9662_)
      (let ((_rebind?9664_ '#f))
        (gx#core-bind-root-syntax!__% _id9661_ _e9662_ _rebind?9664_))))
  (define gx#core-bind-root-syntax!
    (lambda _g12600_
      (let ((_g12599_ (length _g12600_)))
        (cond ((##fx= _g12599_ 2)
               (apply gx#core-bind-root-syntax!__0 _g12600_))
              ((##fx= _g12599_ 3)
               (apply gx#core-bind-root-syntax!__% _g12600_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-root-syntax!
                _g12600_))))))
  (define gx#core-bind-alias!__%
    (lambda (_id9612_ _alias-id9613_ _rebind?9614_ _phi9615_ _ctx9616_)
      (gx#bind-identifier!__%
       _id9612_
       (let ((_key9618_ (gx#core-identifier-key _id9612_)))
         (##structure
          gx#alias-binding::t
          (gx#make-binding-id__% _key9618_ '#t _phi9615_ _ctx9616_)
          _key9618_
          _phi9615_
          _alias-id9613_))
       _rebind?9614_
       _phi9615_
       _ctx9616_)))
  (define gx#core-bind-alias!__0
    (lambda (_id9623_ _alias-id9624_)
      (let* ((_rebind?9626_ '#f)
             (_phi9628_ (gx#current-expander-phi))
             (_ctx9630_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9623_
         _alias-id9624_
         _rebind?9626_
         _phi9628_
         _ctx9630_))))
  (define gx#core-bind-alias!__1
    (lambda (_id9632_ _alias-id9633_ _rebind?9634_)
      (let* ((_phi9636_ (gx#current-expander-phi))
             (_ctx9638_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9632_
         _alias-id9633_
         _rebind?9634_
         _phi9636_
         _ctx9638_))))
  (define gx#core-bind-alias!__2
    (lambda (_id9640_ _alias-id9641_ _rebind?9642_ _phi9643_)
      (let ((_ctx9645_ (gx#current-expander-context)))
        (gx#core-bind-alias!__%
         _id9640_
         _alias-id9641_
         _rebind?9642_
         _phi9643_
         _ctx9645_))))
  (define gx#core-bind-alias!
    (lambda _g12602_
      (let ((_g12601_ (length _g12602_)))
        (cond ((##fx= _g12601_ 2) (apply gx#core-bind-alias!__0 _g12602_))
              ((##fx= _g12601_ 3) (apply gx#core-bind-alias!__1 _g12602_))
              ((##fx= _g12601_ 4) (apply gx#core-bind-alias!__2 _g12602_))
              ((##fx= _g12601_ 5) (apply gx#core-bind-alias!__% _g12602_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-alias!
                _g12602_))))))
  (define gx#make-binding-id__%
    (lambda (_key9569_ _syntax?9570_ _phi9571_ _ctx9572_)
      (if (uninterned-symbol? _key9569_)
          (gensym 'L)
          (if (pair? _key9569_)
              (gensym (car _key9569_))
              (if (##structure-instance-of? _ctx9572_ 'gx#top-context::t)
                  (let ((_ns9574_ (gx#core-context-namespace__% _ctx9572_)))
                    (if (and (fxzero? _phi9571_) (not _syntax?9570_))
                        (if _ns9574_
                            (make-symbol _ns9574_ '"#" _key9569_)
                            _key9569_)
                        (if _syntax?9570_
                            (make-symbol
                             (let ((_$e9576_ _ns9574_))
                               (if _$e9576_ _$e9576_ '""))
                             '"[:"
                             (number->string _phi9571_)
                             '":]#"
                             _key9569_)
                            (make-symbol
                             (let ((_$e9579_ _ns9574_))
                               (if _$e9579_ _$e9579_ '""))
                             '"["
                             (number->string _phi9571_)
                             '"]#"
                             _key9569_))))
                  (gensym _key9569_))))))
  (define gx#make-binding-id__0
    (lambda (_key9585_)
      (let* ((_syntax?9587_ '#f)
             (_phi9589_ (gx#current-expander-phi))
             (_ctx9591_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9585_ _syntax?9587_ _phi9589_ _ctx9591_))))
  (define gx#make-binding-id__1
    (lambda (_key9593_ _syntax?9594_)
      (let* ((_phi9596_ (gx#current-expander-phi))
             (_ctx9598_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9593_ _syntax?9594_ _phi9596_ _ctx9598_))))
  (define gx#make-binding-id__2
    (lambda (_key9600_ _syntax?9601_ _phi9602_)
      (let ((_ctx9604_ (gx#current-expander-context)))
        (gx#make-binding-id__% _key9600_ _syntax?9601_ _phi9602_ _ctx9604_))))
  (define gx#make-binding-id
    (lambda _g12604_
      (let ((_g12603_ (length _g12604_)))
        (cond ((##fx= _g12603_ 1) (apply gx#make-binding-id__0 _g12604_))
              ((##fx= _g12603_ 2) (apply gx#make-binding-id__1 _g12604_))
              ((##fx= _g12603_ 3) (apply gx#make-binding-id__2 _g12604_))
              ((##fx= _g12603_ 4) (apply gx#make-binding-id__% _g12604_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#make-binding-id
                _g12604_)))))))
