(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708247274)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx158639_)
        (letrec ((_expand-special158641_
                  (lambda (_hd158643_ _K158644_ _rest158645_ _r158646_)
                    (_K158644_
                     _rest158645_
                     (cons (gx#core-expand-top _hd158643_) _r158646_)))))
          (gx#core-expand-block__0 _stx158639_ _expand-special158641_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx158392_)
        (letrec ((_expand-special158394_
                  (lambda (_hd158514_ _K158515_ _rest158516_ _r158517_)
                    (let* ((_K158521_
                            (lambda (_e158519_)
                              (_K158515_
                               _rest158516_
                               (cons _e158519_ _r158517_))))
                           (_e158522158551_ _hd158514_)
                           (_E158546158555_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158522158551_)))
                           (_E158542158567_
                            (lambda ()
                              (if (gx#stx-pair? _e158522158551_)
                                  (let ((_e158547158559_
                                         (gx#syntax-e _e158522158551_)))
                                    (let ((_hd158548158562_
                                           (##car _e158547158559_))
                                          (_tl158549158564_
                                           (##cdr _e158547158559_)))
                                      (if (and (gx#identifier?
                                                _hd158548158562_)
                                               (gx#core-identifier=?
                                                _hd158548158562_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K158521_
                                               (gx#core-expand-define-runtime%
                                                _hd158514_))
                                              (_E158546158555_))
                                          (_E158546158555_))))
                                  (_E158546158555_))))
                           (_E158538158579_
                            (lambda ()
                              (if (gx#stx-pair? _e158522158551_)
                                  (let ((_e158543158571_
                                         (gx#syntax-e _e158522158551_)))
                                    (let ((_hd158544158574_
                                           (##car _e158543158571_))
                                          (_tl158545158576_
                                           (##cdr _e158543158571_)))
                                      (if (and (gx#identifier?
                                                _hd158544158574_)
                                               (gx#core-identifier=?
                                                _hd158544158574_
                                                '%#define-alias))
                                          (if '#t
                                              (_K158521_
                                               (gx#core-expand-define-alias%
                                                _hd158514_))
                                              (_E158542158567_))
                                          (_E158542158567_))))
                                  (_E158542158567_))))
                           (_E158528158591_
                            (lambda ()
                              (if (gx#stx-pair? _e158522158551_)
                                  (let ((_e158539158583_
                                         (gx#syntax-e _e158522158551_)))
                                    (let ((_hd158540158586_
                                           (##car _e158539158583_))
                                          (_tl158541158588_
                                           (##cdr _e158539158583_)))
                                      (if (and (gx#identifier?
                                                _hd158540158586_)
                                               (gx#core-identifier=?
                                                _hd158540158586_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K158521_
                                               (gx#core-expand-define-syntax%
                                                _hd158514_))
                                              (_E158538158579_))
                                          (_E158538158579_))))
                                  (_E158538158579_))))
                           (_E158524158623_
                            (lambda ()
                              (if (gx#stx-pair? _e158522158551_)
                                  (let ((_e158529158595_
                                         (gx#syntax-e _e158522158551_)))
                                    (let ((_hd158530158598_
                                           (##car _e158529158595_))
                                          (_tl158531158600_
                                           (##cdr _e158529158595_)))
                                      (if (and (gx#identifier?
                                                _hd158530158598_)
                                               (gx#core-identifier=?
                                                _hd158530158598_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158531158600_)
                                              (let ((_e158532158603_
                                                     (gx#syntax-e
                                                      _tl158531158600_)))
                                                (let ((_hd158533158606_
                                                       (##car _e158532158603_))
                                                      (_tl158534158608_
                                                       (##cdr _e158532158603_)))
                                                  (let ((_hd-bind158611_
                                                         _hd158533158606_))
                                                    (if (gx#stx-pair?
                                                         _tl158534158608_)
                                                        (let ((_e158535158613_
                                                               (gx#syntax-e
                                                                _tl158534158608_)))
                                                          (let ((_hd158536158616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158535158613_))
                        (_tl158537158618_ (##cdr _e158535158613_)))
                    (let ((_expr158621_ _hd158536158616_))
                      (if (gx#stx-null? _tl158537158618_)
                          (if (gx#core-bind-values? _hd-bind158611_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158611_)
                                (_K158521_ _hd158514_))
                              (_E158528158591_))
                          (_E158528158591_)))))
                (_E158528158591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158528158591_))
                                          (_E158528158591_))))
                                  (_E158528158591_))))
                           (_E158523158635_
                            (lambda ()
                              (if (gx#stx-pair? _e158522158551_)
                                  (let ((_e158525158627_
                                         (gx#syntax-e _e158522158551_)))
                                    (let ((_hd158526158630_
                                           (##car _e158525158627_))
                                          (_tl158527158632_
                                           (##cdr _e158525158627_)))
                                      (if (and (gx#identifier?
                                                _hd158526158630_)
                                               (gx#core-identifier=?
                                                _hd158526158630_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K158521_
                                               (gx#core-expand-begin-syntax%
                                                _hd158514_))
                                              (_E158524158623_))
                                          (_E158524158623_))))
                                  (_E158524158623_)))))
                      (_E158523158635_))))
                 (_eval-body158395_
                  (lambda (_rbody158403_)
                    (let _lp158405_ ((_rest158407_ _rbody158403_)
                                     (_body158408_ '())
                                     (_ebody158409_ '()))
                      (let* ((_rest158410158418_ _rest158407_)
                             (_else158412158426_
                              (lambda ()
                                (values _body158408_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody158409_)
                                          (gx#stx-source _stx158392_))))))
                             (_K158414158502_
                              (lambda (_rest158429_ _hd158430_)
                                (let* ((_e158431158448_ _hd158430_)
                                       (_E158443158452_
                                        (lambda ()
                                          (_lp158405_
                                           _rest158429_
                                           (cons _hd158430_ _body158408_)
                                           (cons _hd158430_ _ebody158409_))))
                                       (_E158433158464_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158431158448_)
                                              (let ((_e158444158456_
                                                     (gx#syntax-e
                                                      _e158431158448_)))
                                                (let ((_hd158445158459_
                                                       (##car _e158444158456_))
                                                      (_tl158446158461_
                                                       (##cdr _e158444158456_)))
                                                  (if (and (gx#identifier?
                                                            _hd158445158459_)
                                                           (gx#core-identifier=?
                                                            _hd158445158459_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp158405_
                                                           _rest158429_
                                                           (cons _hd158430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body158408_)
                   _ebody158409_)
                  (_E158443158452_))
              (_E158443158452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158443158452_))))
                                       (_E158432158498_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158431158448_)
                                              (let ((_e158434158468_
                                                     (gx#syntax-e
                                                      _e158431158448_)))
                                                (let ((_hd158435158471_
                                                       (##car _e158434158468_))
                                                      (_tl158436158473_
                                                       (##cdr _e158434158468_)))
                                                  (if (and (gx#identifier?
                                                            _hd158435158471_)
                                                           (gx#core-identifier=?
                                                            _hd158435158471_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158436158473_)
                                                          (let ((_e158437158476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158436158473_)))
                    (let ((_hd158438158479_ (##car _e158437158476_))
                          (_tl158439158481_ (##cdr _e158437158476_)))
                      (let ((_hd-bind158484_ _hd158438158479_))
                        (if (gx#stx-pair? _tl158439158481_)
                            (let ((_e158440158486_
                                   (gx#syntax-e _tl158439158481_)))
                              (let ((_hd158441158489_ (##car _e158440158486_))
                                    (_tl158442158491_ (##cdr _e158440158486_)))
                                (let ((_expr158494_ _hd158441158489_))
                                  (if (gx#stx-null? _tl158442158491_)
                                      (if '#t
                                          (let ((_ehd158496_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind158484_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr158494_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd158430_))))
                                            (_lp158405_
                                             _rest158429_
                                             (cons _ehd158496_ _body158408_)
                                             (cons _ehd158496_ _ebody158409_)))
                                          (_E158433158464_))
                                      (_E158433158464_)))))
                            (_E158433158464_)))))
                  (_E158433158464_))
              (_E158433158464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158433158464_)))))
                                  (_E158432158498_)))))
                        (if (##pair? _rest158410158418_)
                            (let ((_hd158415158505_ (##car _rest158410158418_))
                                  (_tl158416158507_
                                   (##cdr _rest158410158418_)))
                              (let* ((_hd158510_ _hd158415158505_)
                                     (_rest158512_ _tl158416158507_))
                                (_K158414158502_ _rest158512_ _hd158510_)))
                            (_else158412158426_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody158398_
                     (gx#core-expand-block__1
                      _stx158392_
                      _expand-special158394_
                      '#f))
                    (_g162729_ (_eval-body158395_ _rbody158398_)))
               (begin
                 (let ((_g162730_
                        (if (##values? _g162729_)
                            (##vector-length _g162729_)
                            1)))
                   (if (not (##fx= _g162730_ 2))
                       (error "Context expects 2 values" _g162730_)))
                 (let ((_expanded-body158400_ (##vector-ref _g162729_ 0))
                       (_value158401_ (##vector-ref _g162729_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body158400_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value158401_ '())))
                    (gx#stx-source _stx158392_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx158362_)
        (let* ((_e158363158370_ _stx158362_)
               (_E158365158374_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158363158370_)))
               (_E158364158388_
                (lambda ()
                  (if (gx#stx-pair? _e158363158370_)
                      (let ((_e158366158378_ (gx#syntax-e _e158363158370_)))
                        (let ((_hd158367158381_ (##car _e158366158378_))
                              (_tl158368158383_ (##cdr _e158366158378_)))
                          (let ((_body158386_ _tl158368158383_))
                            (if (gx#stx-list? _body158386_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body158386_)
                                 (gx#stx-source _stx158362_))
                                (_E158365158374_)))))
                      (_E158365158374_)))))
          (_E158364158388_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx158360_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx158360_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx158306_)
        (let* ((_e158307158320_ _stx158306_)
               (_E158309158324_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158307158320_)))
               (_E158308158356_
                (lambda ()
                  (if (gx#stx-pair? _e158307158320_)
                      (let ((_e158310158328_ (gx#syntax-e _e158307158320_)))
                        (let ((_hd158311158331_ (##car _e158310158328_))
                              (_tl158312158333_ (##cdr _e158310158328_)))
                          (if (gx#stx-pair? _tl158312158333_)
                              (let ((_e158313158336_
                                     (gx#syntax-e _tl158312158333_)))
                                (let ((_hd158314158339_
                                       (##car _e158313158336_))
                                      (_tl158315158341_
                                       (##cdr _e158313158336_)))
                                  (let ((_ann158344_ _hd158314158339_))
                                    (if (gx#stx-pair? _tl158315158341_)
                                        (let ((_e158316158346_
                                               (gx#syntax-e _tl158315158341_)))
                                          (let ((_hd158317158349_
                                                 (##car _e158316158346_))
                                                (_tl158318158351_
                                                 (##cdr _e158316158346_)))
                                            (let ((_expr158354_
                                                   _hd158317158349_))
                                              (if (gx#stx-null?
                                                   _tl158318158351_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann158344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr158354_)
                                 '())))
               (gx#stx-source _stx158306_))
              (_E158309158324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E158309158324_)))))
                                        (_E158309158324_)))))
                              (_E158309158324_))))
                      (_E158309158324_)))))
          (_E158308158356_))))
    (define gx#core-expand-local-block
      (lambda (_stx158030_ _body158031_)
        (letrec ((_expand-special158033_
                  (lambda (_hd158301_ _K158302_ _rest158303_ _r158304_)
                    (_K158302_
                     '()
                     (cons (_expand-internal158034_ _hd158301_ _rest158303_)
                           _r158304_))))
                 (_expand-internal158034_
                  (lambda (_hd158297_ _rest158298_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal158036_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd158297_ _rest158298_))
                          (gx#stx-source _stx158030_))
                         _expand-internal-special158035_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj162723
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj162723)
                       __obj162723))))
                 (_expand-internal-special158035_
                  (lambda (_hd158192_ _K158193_ _rest158194_ _r158195_)
                    (let* ((_e158196158221_ _hd158192_)
                           (_E158216158225_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158196158221_)))
                           (_E158212158237_
                            (lambda ()
                              (if (gx#stx-pair? _e158196158221_)
                                  (let ((_e158217158229_
                                         (gx#syntax-e _e158196158221_)))
                                    (let ((_hd158218158232_
                                           (##car _e158217158229_))
                                          (_tl158219158234_
                                           (##cdr _e158217158229_)))
                                      (if (and (gx#identifier?
                                                _hd158218158232_)
                                               (gx#core-identifier=?
                                                _hd158218158232_
                                                '%#declare))
                                          (if '#t
                                              (_K158193_
                                               _rest158194_
                                               (cons (gx#core-expand-declare%
                                                      _hd158192_)
                                                     _r158195_))
                                              (_E158216158225_))
                                          (_E158216158225_))))
                                  (_E158216158225_))))
                           (_E158208158249_
                            (lambda ()
                              (if (gx#stx-pair? _e158196158221_)
                                  (let ((_e158213158241_
                                         (gx#syntax-e _e158196158221_)))
                                    (let ((_hd158214158244_
                                           (##car _e158213158241_))
                                          (_tl158215158246_
                                           (##cdr _e158213158241_)))
                                      (if (and (gx#identifier?
                                                _hd158214158244_)
                                               (gx#core-identifier=?
                                                _hd158214158244_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd158192_)
                                                (_K158193_
                                                 _rest158194_
                                                 _r158195_))
                                              (_E158212158237_))
                                          (_E158212158237_))))
                                  (_E158212158237_))))
                           (_E158198158261_
                            (lambda ()
                              (if (gx#stx-pair? _e158196158221_)
                                  (let ((_e158209158253_
                                         (gx#syntax-e _e158196158221_)))
                                    (let ((_hd158210158256_
                                           (##car _e158209158253_))
                                          (_tl158211158258_
                                           (##cdr _e158209158253_)))
                                      (if (and (gx#identifier?
                                                _hd158210158256_)
                                               (gx#core-identifier=?
                                                _hd158210158256_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd158192_)
                                                (_K158193_
                                                 _rest158194_
                                                 _r158195_))
                                              (_E158208158249_))
                                          (_E158208158249_))))
                                  (_E158208158249_))))
                           (_E158197158293_
                            (lambda ()
                              (if (gx#stx-pair? _e158196158221_)
                                  (let ((_e158199158265_
                                         (gx#syntax-e _e158196158221_)))
                                    (let ((_hd158200158268_
                                           (##car _e158199158265_))
                                          (_tl158201158270_
                                           (##cdr _e158199158265_)))
                                      (if (and (gx#identifier?
                                                _hd158200158268_)
                                               (gx#core-identifier=?
                                                _hd158200158268_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158201158270_)
                                              (let ((_e158202158273_
                                                     (gx#syntax-e
                                                      _tl158201158270_)))
                                                (let ((_hd158203158276_
                                                       (##car _e158202158273_))
                                                      (_tl158204158278_
                                                       (##cdr _e158202158273_)))
                                                  (let ((_hd-bind158281_
                                                         _hd158203158276_))
                                                    (if (gx#stx-pair?
                                                         _tl158204158278_)
                                                        (let ((_e158205158283_
                                                               (gx#syntax-e
                                                                _tl158204158278_)))
                                                          (let ((_hd158206158286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158205158283_))
                        (_tl158207158288_ (##cdr _e158205158283_)))
                    (let ((_expr158291_ _hd158206158286_))
                      (if (gx#stx-null? _tl158207158288_)
                          (if (gx#core-bind-values? _hd-bind158281_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158281_)
                                (_K158193_
                                 _rest158194_
                                 (cons _hd158192_ _r158195_)))
                              (_E158198158261_))
                          (_E158198158261_)))))
                (_E158198158261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158198158261_))
                                          (_E158198158261_))))
                                  (_E158198158261_)))))
                      (_E158197158293_))))
                 (_wrap-internal158036_
                  (lambda (_rbody158038_)
                    (let _lp158040_ ((_rest158042_ _rbody158038_)
                                     (_decls158043_ '())
                                     (_bind158044_ '())
                                     (_body158045_ '()))
                      (let* ((_e158046158053_ _rest158042_)
                             (_E158048158102_
                              (lambda ()
                                (let* ((_body158097_
                                        (let* ((_body158056158066_
                                                _body158045_)
                                               (_else158059158074_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158045_)
                                                   (gx#stx-source
                                                    _stx158030_)))))
                                          (let ((_K158064158094_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx158030_)))
                                                (_K158061158080_
                                                 (lambda (_expr158078_)
                                                   _expr158078_)))
                                            (let ((_try-match158058158090_
                                                   (lambda ()
                                                     (if (##pair? _body158056158066_)
                                                         (let ((_tl158063158085_
                                                                (##cdr _body158056158066_))
                                                               (_hd158062158083_
                                                                (##car _body158056158066_)))
                                                           (if (##null? _tl158063158085_)
                                                               (let ((_expr158088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd158062158083_))
                         (_K158061158080_ _expr158088_))
                       (_else158059158074_)))
                 (_else158059158074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body158056158066_)
                                                  (_K158064158094_)
                                                  (_try-match158058158090_))))))
                                       (_body158099_
                                        (if (null? _bind158044_)
                                            _body158097_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind158044_
                                                         (cons _body158097_
                                                               '())))
                                             (gx#stx-source _stx158030_)))))
                                  (if (null? _decls158043_)
                                      _body158099_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls158043_
                                                   (cons _body158099_ '())))
                                       (gx#stx-source _stx158030_))))))
                             (_E158047158188_
                              (lambda ()
                                (if (gx#stx-pair? _e158046158053_)
                                    (let ((_e158049158106_
                                           (gx#syntax-e _e158046158053_)))
                                      (let ((_hd158050158109_
                                             (##car _e158049158106_))
                                            (_tl158051158111_
                                             (##cdr _e158049158106_)))
                                        (let* ((_hd158114_ _hd158050158109_)
                                               (_rest158116_ _tl158051158111_))
                                          (if '#t
                                              (let* ((_e158117158134_
                                                      _hd158114_)
                                                     (_E158129158138_
                                                      (lambda ()
                                                        (if (null? _bind158044_)
                                                            (_lp158040_
                                                             _rest158116_
                                                             _decls158043_
                                                             _bind158044_
                                                             (cons _hd158114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body158045_))
                    (_lp158040_
                     _rest158116_
                     _decls158043_
                     (cons (cons '#f (cons _hd158114_ '())) _bind158044_)
                     _body158045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E158119158152_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e158117158134_)
                                                            (let ((_e158130158142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e158117158134_)))
                      (let ((_hd158131158145_ (##car _e158130158142_))
                            (_tl158132158147_ (##cdr _e158130158142_)))
                        (if (and (gx#identifier? _hd158131158145_)
                                 (gx#core-identifier=?
                                  _hd158131158145_
                                  '%#declare))
                            (let ((_xdecls158150_ _tl158132158147_))
                              (if '#t
                                  (_lp158040_
                                   _rest158116_
                                   (gx#stx-foldr
                                    cons
                                    _decls158043_
                                    _xdecls158150_)
                                   _bind158044_
                                   _body158045_)
                                  (_E158129158138_)))
                            (_E158129158138_))))
                    (_E158129158138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E158118158184_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e158117158134_)
                                                            (let ((_e158120158156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e158117158134_)))
                      (let ((_hd158121158159_ (##car _e158120158156_))
                            (_tl158122158161_ (##cdr _e158120158156_)))
                        (if (and (gx#identifier? _hd158121158159_)
                                 (gx#core-identifier=?
                                  _hd158121158159_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl158122158161_)
                                (let ((_e158123158164_
                                       (gx#syntax-e _tl158122158161_)))
                                  (let ((_hd158124158167_
                                         (##car _e158123158164_))
                                        (_tl158125158169_
                                         (##cdr _e158123158164_)))
                                    (let ((_hd-bind158172_ _hd158124158167_))
                                      (if (gx#stx-pair? _tl158125158169_)
                                          (let ((_e158126158174_
                                                 (gx#syntax-e
                                                  _tl158125158169_)))
                                            (let ((_hd158127158177_
                                                   (##car _e158126158174_))
                                                  (_tl158128158179_
                                                   (##cdr _e158126158174_)))
                                              (let ((_expr158182_
                                                     _hd158127158177_))
                                                (if (gx#stx-null?
                                                     _tl158128158179_)
                                                    (if '#t
                                                        (_lp158040_
                                                         _rest158116_
                                                         _decls158043_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind158172_)
                             (cons (gx#core-expand-expression _expr158182_)
                                   '()))
                       _bind158044_)
                 _body158045_)
                (_E158119158152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158119158152_)))))
                                          (_E158119158152_)))))
                                (_E158119158152_))
                            (_E158119158152_))))
                    (_E158119158152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E158118158184_))
                                              (_E158048158102_)))))
                                    (_E158048158102_)))))
                        (_E158047158188_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body158031_)
            (gx#stx-source _stx158030_))
           _expand-special158033_))))
    (define gx#core-expand-declare%
      (lambda (_stx157968_)
        (let* ((_e157969157976_ _stx157968_)
               (_E157971157980_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157969157976_)))
               (_E157970158026_
                (lambda ()
                  (if (gx#stx-pair? _e157969157976_)
                      (let ((_e157972157984_ (gx#syntax-e _e157969157976_)))
                        (let ((_hd157973157987_ (##car _e157972157984_))
                              (_tl157974157989_ (##cdr _e157972157984_)))
                          (let ((_body157992_ _tl157974157989_))
                            (if (gx#stx-list? _body157992_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl157994_)
                                     (let* ((_e157995158002_ _decl157994_)
                                            (_E157997158006_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e157995158002_)))
                                            (_E157996158022_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e157995158002_)
                                                   (let ((_e157998158010_
                                                          (gx#syntax-e
                                                           _e157995158002_)))
                                                     (let ((_hd157999158013_
                                                            (##car _e157998158010_))
                                                           (_tl158000158015_
                                                            (##cdr _e157998158010_)))
                                                       (let* ((_head158018_
                                                               _hd157999158013_)
                                                              (_args158020_
                                                               _tl158000158015_))
                                                         (if (gx#stx-list?
                                                              _args158020_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl157994_)
                                                             (_E157997158006_)))))
                                                   (_E157997158006_)))))
                                       (_E157996158022_)))
                                   _body157992_))
                                 (gx#stx-source _stx157968_))
                                (_E157971157980_)))))
                      (_E157971157980_)))))
          (_E157970158026_))))
    (define gx#core-expand-extern%
      (lambda (_stx157872_)
        (let* ((_e157873157880_ _stx157872_)
               (_E157875157884_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157873157880_)))
               (_E157874157964_
                (lambda ()
                  (if (gx#stx-pair? _e157873157880_)
                      (let ((_e157876157888_ (gx#syntax-e _e157873157880_)))
                        (let ((_hd157877157891_ (##car _e157876157888_))
                              (_tl157878157893_ (##cdr _e157876157888_)))
                          (let ((_body157896_ _tl157878157893_))
                            (if '#t
                                (let _lp157898_ ((_rest157900_ _body157896_)
                                                 (_r157901_ '()))
                                  (let* ((_e157902157916_ _rest157900_)
                                         (_E157914157920_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx157872_)))
                                         (_E157904157924_
                                          (lambda ()
                                            (if (gx#stx-null? _e157902157916_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r157901_))
                                                     (gx#stx-source
                                                      _stx157872_))
                                                    (_E157914157920_))
                                                (_E157914157920_))))
                                         (_E157903157960_
                                          (lambda ()
                                            (if (gx#stx-pair? _e157902157916_)
                                                (let ((_e157905157928_
                                                       (gx#syntax-e
                                                        _e157902157916_)))
                                                  (let ((_hd157906157931_
                                                         (##car _e157905157928_))
                                                        (_tl157907157933_
                                                         (##cdr _e157905157928_)))
                                                    (if (gx#stx-pair?
                                                         _hd157906157931_)
                                                        (let ((_e157908157936_
                                                               (gx#syntax-e
                                                                _hd157906157931_)))
                                                          (let ((_hd157909157939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e157908157936_))
                        (_tl157910157941_ (##cdr _e157908157936_)))
                    (let ((_id157944_ _hd157909157939_))
                      (if (gx#stx-pair? _tl157910157941_)
                          (let ((_e157911157946_
                                 (gx#syntax-e _tl157910157941_)))
                            (let ((_hd157912157949_ (##car _e157911157946_))
                                  (_tl157913157951_ (##cdr _e157911157946_)))
                              (let ((_eid157954_ _hd157912157949_))
                                (if (gx#stx-null? _tl157913157951_)
                                    (let ((_rest157956_ _tl157907157933_))
                                      (if (and (gx#identifier? _id157944_)
                                               (gx#identifier? _eid157954_))
                                          (let ((_eid157958_
                                                 (gx#stx-e _eid157954_)))
                                            (gx#core-bind-extern!__0
                                             _id157944_
                                             _eid157958_)
                                            (_lp157898_
                                             _rest157956_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id157944_)
                                                         (cons _eid157958_
                                                               '()))
                                                   _r157901_)))
                                          (_E157904157924_)))
                                    (_E157904157924_)))))
                          (_E157904157924_)))))
                (_E157904157924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E157904157924_)))))
                                    (_E157903157960_)))
                                (_E157875157884_)))))
                      (_E157875157884_)))))
          (_E157874157964_))))
    (define gx#core-expand-define-values%
      (lambda (_stx157818_)
        (let* ((_e157819157832_ _stx157818_)
               (_E157821157836_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157819157832_)))
               (_E157820157868_
                (lambda ()
                  (if (gx#stx-pair? _e157819157832_)
                      (let ((_e157822157840_ (gx#syntax-e _e157819157832_)))
                        (let ((_hd157823157843_ (##car _e157822157840_))
                              (_tl157824157845_ (##cdr _e157822157840_)))
                          (if (gx#stx-pair? _tl157824157845_)
                              (let ((_e157825157848_
                                     (gx#syntax-e _tl157824157845_)))
                                (let ((_hd157826157851_
                                       (##car _e157825157848_))
                                      (_tl157827157853_
                                       (##cdr _e157825157848_)))
                                  (let ((_hd157856_ _hd157826157851_))
                                    (if (gx#stx-pair? _tl157827157853_)
                                        (let ((_e157828157858_
                                               (gx#syntax-e _tl157827157853_)))
                                          (let ((_hd157829157861_
                                                 (##car _e157828157858_))
                                                (_tl157830157863_
                                                 (##cdr _e157828157858_)))
                                            (let ((_expr157866_
                                                   _hd157829157861_))
                                              (if (gx#stx-null?
                                                   _tl157830157863_)
                                                  (if (gx#core-bind-values?
                                                       _hd157856_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd157856_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd157856_)
                             (cons (gx#core-expand-expression _expr157866_)
                                   '())))
                 (gx#stx-source _stx157818_)))
              (_E157821157836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157821157836_)))))
                                        (_E157821157836_)))))
                              (_E157821157836_))))
                      (_E157821157836_)))))
          (_E157820157868_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx157762_)
        (let* ((_e157763157776_ _stx157762_)
               (_E157765157780_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157763157776_)))
               (_E157764157814_
                (lambda ()
                  (if (gx#stx-pair? _e157763157776_)
                      (let ((_e157766157784_ (gx#syntax-e _e157763157776_)))
                        (let ((_hd157767157787_ (##car _e157766157784_))
                              (_tl157768157789_ (##cdr _e157766157784_)))
                          (if (gx#stx-pair? _tl157768157789_)
                              (let ((_e157769157792_
                                     (gx#syntax-e _tl157768157789_)))
                                (let ((_hd157770157795_
                                       (##car _e157769157792_))
                                      (_tl157771157797_
                                       (##cdr _e157769157792_)))
                                  (let ((_id157800_ _hd157770157795_))
                                    (if (gx#stx-pair? _tl157771157797_)
                                        (let ((_e157772157802_
                                               (gx#syntax-e _tl157771157797_)))
                                          (let ((_hd157773157805_
                                                 (##car _e157772157802_))
                                                (_tl157774157807_
                                                 (##cdr _e157772157802_)))
                                            (let ((_binding-id157810_
                                                   _hd157773157805_))
                                              (if (gx#stx-null?
                                                   _tl157774157807_)
                                                  (if (and (gx#identifier?
                                                            _id157800_)
                                                           (gx#identifier?
                                                            _binding-id157810_))
                                                      (let ((_eid157812_
                                                             (gx#stx-e
                                                              _binding-id157810_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id157800_
                                                         _eid157812_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id157800_)
                             (cons _eid157812_ '())))))
              (_E157765157780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157765157780_)))))
                                        (_E157765157780_)))))
                              (_E157765157780_))))
                      (_E157765157780_)))))
          (_E157764157814_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx157705_)
        (let* ((_e157706157719_ _stx157705_)
               (_E157708157723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157706157719_)))
               (_E157707157758_
                (lambda ()
                  (if (gx#stx-pair? _e157706157719_)
                      (let ((_e157709157727_ (gx#syntax-e _e157706157719_)))
                        (let ((_hd157710157730_ (##car _e157709157727_))
                              (_tl157711157732_ (##cdr _e157709157727_)))
                          (if (gx#stx-pair? _tl157711157732_)
                              (let ((_e157712157735_
                                     (gx#syntax-e _tl157711157732_)))
                                (let ((_hd157713157738_
                                       (##car _e157712157735_))
                                      (_tl157714157740_
                                       (##cdr _e157712157735_)))
                                  (let ((_id157743_ _hd157713157738_))
                                    (if (gx#stx-pair? _tl157714157740_)
                                        (let ((_e157715157745_
                                               (gx#syntax-e _tl157714157740_)))
                                          (let ((_hd157716157748_
                                                 (##car _e157715157745_))
                                                (_tl157717157750_
                                                 (##cdr _e157715157745_)))
                                            (let ((_expr157753_
                                                   _hd157716157748_))
                                              (if (gx#stx-null?
                                                   _tl157717157750_)
                                                  (if (gx#identifier?
                                                       _id157743_)
                                                      (let ((_g162731_
                                                             (gx#core-expand-expression+1
                                                              _expr157753_)))
                                                        (begin
                                                          (let ((_g162732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g162731_)
                             (##vector-length _g162731_)
                             1)))
                    (if (not (##fx= _g162732_ 2))
                        (error "Context expects 2 values" _g162732_)))
                  (let ((_e-stx157755_ (##vector-ref _g162731_ 0))
                        (_e157756_ (##vector-ref _g162731_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id157743_ _e157756_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id157743_)
                                   (cons _e-stx157755_ '())))
                       (gx#stx-source _stx157705_))))))
              (_E157708157723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157708157723_)))))
                                        (_E157708157723_)))))
                              (_E157708157723_))))
                      (_E157708157723_)))))
          (_E157707157758_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx157649_)
        (let* ((_e157650157663_ _stx157649_)
               (_E157652157667_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157650157663_)))
               (_E157651157701_
                (lambda ()
                  (if (gx#stx-pair? _e157650157663_)
                      (let ((_e157653157671_ (gx#syntax-e _e157650157663_)))
                        (let ((_hd157654157674_ (##car _e157653157671_))
                              (_tl157655157676_ (##cdr _e157653157671_)))
                          (if (gx#stx-pair? _tl157655157676_)
                              (let ((_e157656157679_
                                     (gx#syntax-e _tl157655157676_)))
                                (let ((_hd157657157682_
                                       (##car _e157656157679_))
                                      (_tl157658157684_
                                       (##cdr _e157656157679_)))
                                  (let ((_id157687_ _hd157657157682_))
                                    (if (gx#stx-pair? _tl157658157684_)
                                        (let ((_e157659157689_
                                               (gx#syntax-e _tl157658157684_)))
                                          (let ((_hd157660157692_
                                                 (##car _e157659157689_))
                                                (_tl157661157694_
                                                 (##cdr _e157659157689_)))
                                            (let ((_alias-id157697_
                                                   _hd157660157692_))
                                              (if (gx#stx-null?
                                                   _tl157661157694_)
                                                  (if (and (gx#identifier?
                                                            _id157687_)
                                                           (gx#identifier?
                                                            _alias-id157697_))
                                                      (let ((_alias-id157699_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id157697_)))
                                                        (gx#core-bind-alias!__0
                                                         _id157687_
                                                         _alias-id157699_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id157687_)
                             (cons _alias-id157699_ '())))))
              (_E157652157667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157652157667_)))))
                                        (_E157652157667_)))))
                              (_E157652157667_))))
                      (_E157652157667_)))))
          (_E157651157701_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx157592_ _wrap?157593_)
        (let* ((_e157594157604_ _stx157592_)
               (_E157596157608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157594157604_)))
               (_E157595157635_
                (lambda ()
                  (if (gx#stx-pair? _e157594157604_)
                      (let ((_e157597157612_ (gx#syntax-e _e157594157604_)))
                        (let ((_hd157598157615_ (##car _e157597157612_))
                              (_tl157599157617_ (##cdr _e157597157612_)))
                          (if (gx#stx-pair? _tl157599157617_)
                              (let ((_e157600157620_
                                     (gx#syntax-e _tl157599157617_)))
                                (let ((_hd157601157623_
                                       (##car _e157600157620_))
                                      (_tl157602157625_
                                       (##cdr _e157600157620_)))
                                  (let* ((_hd157628_ _hd157601157623_)
                                         (_body157630_ _tl157602157625_))
                                    (if (gx#core-bind-values? _hd157628_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd157628_)
                                           (let ((_body157633_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd157628_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx157592_
                                                               _body157630_)
                                                              '()))))
                                             (if _wrap?157593_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body157633_)
                                                  (gx#stx-source _stx157592_))
                                                 _body157633_)))
                                         gx#current-expander-context
                                         (let ((__obj162724
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj162724)
                                           __obj162724))
                                        (_E157596157608_)))))
                              (_E157596157608_))))
                      (_E157596157608_)))))
          (_E157595157635_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx157642_)
        (let ((_wrap?157644_ '#t))
          (gx#core-expand-lambda%__% _stx157642_ _wrap?157644_))))
    (define gx#core-expand-lambda%
      (lambda _g162734_
        (let ((_g162733_ (##length _g162734_)))
          (cond ((##fx= _g162733_ 1)
                 (apply (lambda (_stx157642_)
                          (gx#core-expand-lambda%__0 _stx157642_))
                        _g162734_))
                ((##fx= _g162733_ 2)
                 (apply (lambda (_stx157646_ _wrap?157647_)
                          (gx#core-expand-lambda%__%
                           _stx157646_
                           _wrap?157647_))
                        _g162734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g162734_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx157556_)
        (let* ((_e157557157564_ _stx157556_)
               (_E157559157568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157557157564_)))
               (_E157558157587_
                (lambda ()
                  (if (gx#stx-pair? _e157557157564_)
                      (let ((_e157560157572_ (gx#syntax-e _e157557157564_)))
                        (let ((_hd157561157575_ (##car _e157560157572_))
                              (_tl157562157577_ (##cdr _e157560157572_)))
                          (let ((_clauses157580_ _tl157562157577_))
                            (if (gx#stx-list? _clauses157580_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause157582_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause157582_)
                                       (let ((_$e157584_
                                              (gx#stx-source _clause157582_)))
                                         (if _$e157584_
                                             _$e157584_
                                             (gx#stx-source _stx157556_))))
                                      '#f))
                                   _clauses157580_))
                                 (gx#stx-source _stx157556_))
                                (_E157559157568_)))))
                      (_E157559157568_)))))
          (_E157558157587_))))
    (define gx#core-expand-let-values%
      (lambda (_stx157510_)
        (let* ((_e157511157521_ _stx157510_)
               (_E157513157525_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157511157521_)))
               (_E157512157552_
                (lambda ()
                  (if (gx#stx-pair? _e157511157521_)
                      (let ((_e157514157529_ (gx#syntax-e _e157511157521_)))
                        (let ((_hd157515157532_ (##car _e157514157529_))
                              (_tl157516157534_ (##cdr _e157514157529_)))
                          (if (gx#stx-pair? _tl157516157534_)
                              (let ((_e157517157537_
                                     (gx#syntax-e _tl157516157534_)))
                                (let ((_hd157518157540_
                                       (##car _e157517157537_))
                                      (_tl157519157542_
                                       (##cdr _e157517157537_)))
                                  (let* ((_hd157545_ _hd157518157540_)
                                         (_body157547_ _tl157519157542_))
                                    (if (gx#core-expand-let-bind? _hd157545_)
                                        (let ((_expressions157549_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd157545_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd157545_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd157545_
                                                           _expressions157549_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx157510_
                         _body157547_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx157510_)))
                                           gx#current-expander-context
                                           (let ((__obj162725
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj162725)
                                             __obj162725)))
                                        (_E157513157525_)))))
                              (_E157513157525_))))
                      (_E157513157525_)))))
          (_E157512157552_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx157455_ _form157456_)
        (let* ((_e157457157467_ _stx157455_)
               (_E157459157471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157457157467_)))
               (_E157458157496_
                (lambda ()
                  (if (gx#stx-pair? _e157457157467_)
                      (let ((_e157460157475_ (gx#syntax-e _e157457157467_)))
                        (let ((_hd157461157478_ (##car _e157460157475_))
                              (_tl157462157480_ (##cdr _e157460157475_)))
                          (if (gx#stx-pair? _tl157462157480_)
                              (let ((_e157463157483_
                                     (gx#syntax-e _tl157462157480_)))
                                (let ((_hd157464157486_
                                       (##car _e157463157483_))
                                      (_tl157465157488_
                                       (##cdr _e157463157483_)))
                                  (let* ((_hd157491_ _hd157464157486_)
                                         (_body157493_ _tl157465157488_))
                                    (if (gx#core-expand-let-bind? _hd157491_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd157491_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form157456_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd157491_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd157491_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx157455_
                                                               _body157493_)
                                                              '())))
                                            (gx#stx-source _stx157455_)))
                                         gx#current-expander-context
                                         (let ((__obj162726
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj162726)
                                           __obj162726))
                                        (_E157459157471_)))))
                              (_E157459157471_))))
                      (_E157459157471_)))))
          (_E157458157496_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx157503_)
        (let ((_form157505_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx157503_ _form157505_))))
    (define gx#core-expand-letrec-values%
      (lambda _g162736_
        (let ((_g162735_ (##length _g162736_)))
          (cond ((##fx= _g162735_ 1)
                 (apply (lambda (_stx157503_)
                          (gx#core-expand-letrec-values%__0 _stx157503_))
                        _g162736_))
                ((##fx= _g162735_ 2)
                 (apply (lambda (_stx157507_ _form157508_)
                          (gx#core-expand-letrec-values%__%
                           _stx157507_
                           _form157508_))
                        _g162736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g162736_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx157452_)
        (gx#core-expand-letrec-values%__% _stx157452_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx157409_)
        (if (gx#stx-list? _stx157409_)
            (gx#stx-andmap
             (lambda (_bind157411_)
               (let* ((_e157412157422_ _bind157411_)
                      (_E157414157426_ (lambda () '#f))
                      (_E157413157448_
                       (lambda ()
                         (if (gx#stx-pair? _e157412157422_)
                             (let ((_e157415157430_
                                    (gx#syntax-e _e157412157422_)))
                               (let ((_hd157416157433_ (##car _e157415157430_))
                                     (_tl157417157435_
                                      (##cdr _e157415157430_)))
                                 (let ((_hd157438_ _hd157416157433_))
                                   (if (gx#stx-pair? _tl157417157435_)
                                       (let ((_e157418157440_
                                              (gx#syntax-e _tl157417157435_)))
                                         (let ((_hd157419157443_
                                                (##car _e157418157440_))
                                               (_tl157420157445_
                                                (##cdr _e157418157440_)))
                                           (if (gx#stx-null? _tl157420157445_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd157438_)
                                                   (_E157414157426_))
                                               (_E157414157426_))))
                                       (_E157414157426_)))))
                             (_E157414157426_)))))
                 (_E157413157448_)))
             _stx157409_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind157368_)
        (let* ((_e157369157379_ _bind157368_)
               (_E157371157383_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157369157379_)))
               (_E157370157405_
                (lambda ()
                  (if (gx#stx-pair? _e157369157379_)
                      (let ((_e157372157387_ (gx#syntax-e _e157369157379_)))
                        (let ((_hd157373157390_ (##car _e157372157387_))
                              (_tl157374157392_ (##cdr _e157372157387_)))
                          (if (gx#stx-pair? _tl157374157392_)
                              (let ((_e157375157395_
                                     (gx#syntax-e _tl157374157392_)))
                                (let ((_hd157376157398_
                                       (##car _e157375157395_))
                                      (_tl157377157400_
                                       (##cdr _e157375157395_)))
                                  (let ((_expr157403_ _hd157376157398_))
                                    (if (gx#stx-null? _tl157377157400_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr157403_)
                                            (_E157371157383_))
                                        (_E157371157383_)))))
                              (_E157371157383_))))
                      (_E157371157383_)))))
          (_E157370157405_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind157327_)
        (let* ((_e157328157338_ _bind157327_)
               (_E157330157342_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157328157338_)))
               (_E157329157364_
                (lambda ()
                  (if (gx#stx-pair? _e157328157338_)
                      (let ((_e157331157346_ (gx#syntax-e _e157328157338_)))
                        (let ((_hd157332157349_ (##car _e157331157346_))
                              (_tl157333157351_ (##cdr _e157331157346_)))
                          (let ((_hd157354_ _hd157332157349_))
                            (if (gx#stx-pair? _tl157333157351_)
                                (let ((_e157334157356_
                                       (gx#syntax-e _tl157333157351_)))
                                  (let ((_hd157335157359_
                                         (##car _e157334157356_))
                                        (_tl157336157361_
                                         (##cdr _e157334157356_)))
                                    (if (gx#stx-null? _tl157336157361_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd157354_)
                                            (_E157330157342_))
                                        (_E157330157342_))))
                                (_E157330157342_)))))
                      (_E157330157342_)))))
          (_E157329157364_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind157285_ _expr157286_)
        (let* ((_e157287157297_ _bind157285_)
               (_E157289157301_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157287157297_)))
               (_E157288157323_
                (lambda ()
                  (if (gx#stx-pair? _e157287157297_)
                      (let ((_e157290157305_ (gx#syntax-e _e157287157297_)))
                        (let ((_hd157291157308_ (##car _e157290157305_))
                              (_tl157292157310_ (##cdr _e157290157305_)))
                          (let ((_hd157313_ _hd157291157308_))
                            (if (gx#stx-pair? _tl157292157310_)
                                (let ((_e157293157315_
                                       (gx#syntax-e _tl157292157310_)))
                                  (let ((_hd157294157318_
                                         (##car _e157293157315_))
                                        (_tl157295157320_
                                         (##cdr _e157293157315_)))
                                    (if (gx#stx-null? _tl157295157320_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd157313_)
                                                  (cons _expr157286_ '()))
                                            (_E157289157301_))
                                        (_E157289157301_))))
                                (_E157289157301_)))))
                      (_E157289157301_)))))
          (_E157288157323_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx157239_)
        (let* ((_e157240157250_ _stx157239_)
               (_E157242157254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157240157250_)))
               (_E157241157281_
                (lambda ()
                  (if (gx#stx-pair? _e157240157250_)
                      (let ((_e157243157258_ (gx#syntax-e _e157240157250_)))
                        (let ((_hd157244157261_ (##car _e157243157258_))
                              (_tl157245157263_ (##cdr _e157243157258_)))
                          (if (gx#stx-pair? _tl157245157263_)
                              (let ((_e157246157266_
                                     (gx#syntax-e _tl157245157263_)))
                                (let ((_hd157247157269_
                                       (##car _e157246157266_))
                                      (_tl157248157271_
                                       (##cdr _e157246157266_)))
                                  (let* ((_hd157274_ _hd157247157269_)
                                         (_body157276_ _tl157248157271_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd157274_)
                                        (let ((_expanders157278_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd157274_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd157274_
                                              _expanders157278_)
                                             (gx#core-expand-local-block
                                              _stx157239_
                                              _body157276_))
                                           gx#current-expander-context
                                           (let ((__obj162727
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj162727)
                                             __obj162727)))
                                        (_E157242157254_)))))
                              (_E157242157254_))))
                      (_E157242157254_)))))
          (_E157241157281_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx157188_)
        (let* ((_e157189157199_ _stx157188_)
               (_E157191157203_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157189157199_)))
               (_E157190157235_
                (lambda ()
                  (if (gx#stx-pair? _e157189157199_)
                      (let ((_e157192157207_ (gx#syntax-e _e157189157199_)))
                        (let ((_hd157193157210_ (##car _e157192157207_))
                              (_tl157194157212_ (##cdr _e157192157207_)))
                          (if (gx#stx-pair? _tl157194157212_)
                              (let ((_e157195157215_
                                     (gx#syntax-e _tl157194157212_)))
                                (let ((_hd157196157218_
                                       (##car _e157195157215_))
                                      (_tl157197157220_
                                       (##cdr _e157195157215_)))
                                  (let* ((_hd157223_ _hd157196157218_)
                                         (_body157225_ _tl157197157220_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd157223_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd157223_
                                            (make-list
                                             (gx#stx-length _hd157223_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g157227157230_
                                                     _g157228157232_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g157227157230_
                                               _g157228157232_
                                               '#t))
                                            _hd157223_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd157223_))
                                           (gx#core-expand-local-block
                                            _stx157188_
                                            _body157225_))
                                         gx#current-expander-context
                                         (let ((__obj162728
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj162728)
                                           __obj162728))
                                        (_E157191157203_)))))
                              (_E157191157203_))))
                      (_E157191157203_)))))
          (_E157190157235_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx157145_)
        (if (gx#stx-list? _stx157145_)
            (gx#stx-andmap
             (lambda (_bind157147_)
               (let* ((_e157148157158_ _bind157147_)
                      (_E157150157162_ (lambda () '#f))
                      (_E157149157184_
                       (lambda ()
                         (if (gx#stx-pair? _e157148157158_)
                             (let ((_e157151157166_
                                    (gx#syntax-e _e157148157158_)))
                               (let ((_hd157152157169_ (##car _e157151157166_))
                                     (_tl157153157171_
                                      (##cdr _e157151157166_)))
                                 (let ((_hd157174_ _hd157152157169_))
                                   (if (gx#stx-pair? _tl157153157171_)
                                       (let ((_e157154157176_
                                              (gx#syntax-e _tl157153157171_)))
                                         (let ((_hd157155157179_
                                                (##car _e157154157176_))
                                               (_tl157156157181_
                                                (##cdr _e157154157176_)))
                                           (if (gx#stx-null? _tl157156157181_)
                                               (if '#t
                                                   (gx#identifier? _hd157174_)
                                                   (_E157150157162_))
                                               (_E157150157162_))))
                                       (_E157150157162_)))))
                             (_E157150157162_)))))
                 (_E157149157184_)))
             _stx157145_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind157102_)
        (let* ((_e157103157113_ _bind157102_)
               (_E157105157117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157103157113_)))
               (_E157104157141_
                (lambda ()
                  (if (gx#stx-pair? _e157103157113_)
                      (let ((_e157106157121_ (gx#syntax-e _e157103157113_)))
                        (let ((_hd157107157124_ (##car _e157106157121_))
                              (_tl157108157126_ (##cdr _e157106157121_)))
                          (if (gx#stx-pair? _tl157108157126_)
                              (let ((_e157109157129_
                                     (gx#syntax-e _tl157108157126_)))
                                (let ((_hd157110157132_
                                       (##car _e157109157129_))
                                      (_tl157111157134_
                                       (##cdr _e157109157129_)))
                                  (let ((_expr157137_ _hd157110157132_))
                                    (if (gx#stx-null? _tl157111157134_)
                                        (if '#t
                                            (let ((_g162737_
                                                   (gx#core-expand-expression+1
                                                    _expr157137_)))
                                              (begin
                                                (let ((_g162738_
                                                       (if (##values?
                                                            _g162737_)
                                                           (##vector-length
                                                            _g162737_)
                                                           1)))
                                                  (if (not (##fx= _g162738_ 2))
                                                      (error "Context expects 2 values"
                                                             _g162738_)))
                                                (let ((_e157139_
                                                       (##vector-ref
                                                        _g162737_
                                                        1)))
                                                  _e157139_)))
                                            (_E157105157117_))
                                        (_E157105157117_)))))
                              (_E157105157117_))))
                      (_E157105157117_)))))
          (_E157104157141_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind157047_ _e157048_ _rebind?157049_)
        (let* ((_e157050157060_ _bind157047_)
               (_E157052157064_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157050157060_)))
               (_E157051157086_
                (lambda ()
                  (if (gx#stx-pair? _e157050157060_)
                      (let ((_e157053157068_ (gx#syntax-e _e157050157060_)))
                        (let ((_hd157054157071_ (##car _e157053157068_))
                              (_tl157055157073_ (##cdr _e157053157068_)))
                          (let ((_id157076_ _hd157054157071_))
                            (if (gx#stx-pair? _tl157055157073_)
                                (let ((_e157056157078_
                                       (gx#syntax-e _tl157055157073_)))
                                  (let ((_hd157057157081_
                                         (##car _e157056157078_))
                                        (_tl157058157083_
                                         (##cdr _e157056157078_)))
                                    (if (gx#stx-null? _tl157058157083_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id157076_
                                             _e157048_
                                             _rebind?157049_)
                                            (_E157052157064_))
                                        (_E157052157064_))))
                                (_E157052157064_)))))
                      (_E157052157064_)))))
          (_E157051157086_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind157093_ _e157094_)
        (let ((_rebind?157096_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind157093_
           _e157094_
           _rebind?157096_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g162740_
        (let ((_g162739_ (##length _g162740_)))
          (cond ((##fx= _g162739_ 2)
                 (apply (lambda (_bind157093_ _e157094_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind157093_
                           _e157094_))
                        _g162740_))
                ((##fx= _g162739_ 3)
                 (apply (lambda (_bind157098_ _e157099_ _rebind?157100_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind157098_
                           _e157099_
                           _rebind?157100_))
                        _g162740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g162740_))))))
    (define gx#core-expand-expression%
      (lambda (_stx157005_)
        (let* ((_e157006157016_ _stx157005_)
               (_E157008157020_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157006157016_)))
               (_E157007157042_
                (lambda ()
                  (if (gx#stx-pair? _e157006157016_)
                      (let ((_e157009157024_ (gx#syntax-e _e157006157016_)))
                        (let ((_hd157010157027_ (##car _e157009157024_))
                              (_tl157011157029_ (##cdr _e157009157024_)))
                          (if (gx#stx-pair? _tl157011157029_)
                              (let ((_e157012157032_
                                     (gx#syntax-e _tl157011157029_)))
                                (let ((_hd157013157035_
                                       (##car _e157012157032_))
                                      (_tl157014157037_
                                       (##cdr _e157012157032_)))
                                  (let ((_expr157040_ _hd157013157035_))
                                    (if (gx#stx-null? _tl157014157037_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr157040_)
                                            (_E157008157020_))
                                        (_E157008157020_)))))
                              (_E157008157020_))))
                      (_E157008157020_)))))
          (_E157007157042_))))
    (define gx#core-expand-quote%
      (lambda (_stx156964_)
        (let* ((_e156965156975_ _stx156964_)
               (_E156967156979_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156965156975_)))
               (_E156966157001_
                (lambda ()
                  (if (gx#stx-pair? _e156965156975_)
                      (let ((_e156968156983_ (gx#syntax-e _e156965156975_)))
                        (let ((_hd156969156986_ (##car _e156968156983_))
                              (_tl156970156988_ (##cdr _e156968156983_)))
                          (if (gx#stx-pair? _tl156970156988_)
                              (let ((_e156971156991_
                                     (gx#syntax-e _tl156970156988_)))
                                (let ((_hd156972156994_
                                       (##car _e156971156991_))
                                      (_tl156973156996_
                                       (##cdr _e156971156991_)))
                                  (let ((_e156999_ _hd156972156994_))
                                    (if (gx#stx-null? _tl156973156996_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e156999_)
                                                         '()))
                                             (gx#stx-source _stx156964_))
                                            (_E156967156979_))
                                        (_E156967156979_)))))
                              (_E156967156979_))))
                      (_E156967156979_)))))
          (_E156966157001_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx156923_)
        (let* ((_e156924156934_ _stx156923_)
               (_E156926156938_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156924156934_)))
               (_E156925156960_
                (lambda ()
                  (if (gx#stx-pair? _e156924156934_)
                      (let ((_e156927156942_ (gx#syntax-e _e156924156934_)))
                        (let ((_hd156928156945_ (##car _e156927156942_))
                              (_tl156929156947_ (##cdr _e156927156942_)))
                          (if (gx#stx-pair? _tl156929156947_)
                              (let ((_e156930156950_
                                     (gx#syntax-e _tl156929156947_)))
                                (let ((_hd156931156953_
                                       (##car _e156930156950_))
                                      (_tl156932156955_
                                       (##cdr _e156930156950_)))
                                  (let ((_e156958_ _hd156931156953_))
                                    (if (gx#stx-null? _tl156932156955_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e156958_)
                                                         '()))
                                             (gx#stx-source _stx156923_))
                                            (_E156926156938_))
                                        (_E156926156938_)))))
                              (_E156926156938_))))
                      (_E156926156938_)))))
          (_E156925156960_))))
    (define gx#core-expand-call%
      (lambda (_stx156880_)
        (let* ((_e156881156891_ _stx156880_)
               (_E156883156895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156881156891_)))
               (_E156882156919_
                (lambda ()
                  (if (gx#stx-pair? _e156881156891_)
                      (let ((_e156884156899_ (gx#syntax-e _e156881156891_)))
                        (let ((_hd156885156902_ (##car _e156884156899_))
                              (_tl156886156904_ (##cdr _e156884156899_)))
                          (if (gx#stx-pair? _tl156886156904_)
                              (let ((_e156887156907_
                                     (gx#syntax-e _tl156886156904_)))
                                (let ((_hd156888156910_
                                       (##car _e156887156907_))
                                      (_tl156889156912_
                                       (##cdr _e156887156907_)))
                                  (let* ((_rator156915_ _hd156888156910_)
                                         (_args156917_ _tl156889156912_))
                                    (if (gx#stx-list? _args156917_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator156915_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args156917_))
                                         (gx#stx-source _stx156880_))
                                        (_E156883156895_)))))
                              (_E156883156895_))))
                      (_E156883156895_)))))
          (_E156882156919_))))
    (define gx#core-expand-if%
      (lambda (_stx156813_)
        (let* ((_e156814156830_ _stx156813_)
               (_E156816156834_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156814156830_)))
               (_E156815156876_
                (lambda ()
                  (if (gx#stx-pair? _e156814156830_)
                      (let ((_e156817156838_ (gx#syntax-e _e156814156830_)))
                        (let ((_hd156818156841_ (##car _e156817156838_))
                              (_tl156819156843_ (##cdr _e156817156838_)))
                          (if (gx#stx-pair? _tl156819156843_)
                              (let ((_e156820156846_
                                     (gx#syntax-e _tl156819156843_)))
                                (let ((_hd156821156849_
                                       (##car _e156820156846_))
                                      (_tl156822156851_
                                       (##cdr _e156820156846_)))
                                  (let ((_test156854_ _hd156821156849_))
                                    (if (gx#stx-pair? _tl156822156851_)
                                        (let ((_e156823156856_
                                               (gx#syntax-e _tl156822156851_)))
                                          (let ((_hd156824156859_
                                                 (##car _e156823156856_))
                                                (_tl156825156861_
                                                 (##cdr _e156823156856_)))
                                            (let ((_K156864_ _hd156824156859_))
                                              (if (gx#stx-pair?
                                                   _tl156825156861_)
                                                  (let ((_e156826156866_
                                                         (gx#syntax-e
                                                          _tl156825156861_)))
                                                    (let ((_hd156827156869_
                                                           (##car _e156826156866_))
                                                          (_tl156828156871_
                                                           (##cdr _e156826156866_)))
                                                      (let ((_E156874_
                                                             _hd156827156869_))
                                                        (if (gx#stx-null?
                                                             _tl156828156871_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test156854_)
                                     (cons (gx#core-expand-expression
                                            _K156864_)
                                           (cons (gx#core-expand-expression
                                                  _E156874_)
                                                 '()))))
                         (gx#stx-source _stx156813_))
                        (_E156816156834_))
                    (_E156816156834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E156816156834_)))))
                                        (_E156816156834_)))))
                              (_E156816156834_))))
                      (_E156816156834_)))))
          (_E156815156876_))))
    (define gx#core-expand-ref%
      (lambda (_stx156772_)
        (let* ((_e156773156783_ _stx156772_)
               (_E156775156787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156773156783_)))
               (_E156774156809_
                (lambda ()
                  (if (gx#stx-pair? _e156773156783_)
                      (let ((_e156776156791_ (gx#syntax-e _e156773156783_)))
                        (let ((_hd156777156794_ (##car _e156776156791_))
                              (_tl156778156796_ (##cdr _e156776156791_)))
                          (if (gx#stx-pair? _tl156778156796_)
                              (let ((_e156779156799_
                                     (gx#syntax-e _tl156778156796_)))
                                (let ((_hd156780156802_
                                       (##car _e156779156799_))
                                      (_tl156781156804_
                                       (##cdr _e156779156799_)))
                                  (let ((_id156807_ _hd156780156802_))
                                    (if (gx#stx-null? _tl156781156804_)
                                        (if (gx#identifier? _id156807_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id156807_
                                                          _stx156772_)
                                                         '()))
                                             (gx#stx-source _stx156772_))
                                            (_E156775156787_))
                                        (_E156775156787_)))))
                              (_E156775156787_))))
                      (_E156775156787_)))))
          (_E156774156809_))))
    (define gx#core-expand-setq%
      (lambda (_stx156718_)
        (let* ((_e156719156732_ _stx156718_)
               (_E156721156736_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156719156732_)))
               (_E156720156768_
                (lambda ()
                  (if (gx#stx-pair? _e156719156732_)
                      (let ((_e156722156740_ (gx#syntax-e _e156719156732_)))
                        (let ((_hd156723156743_ (##car _e156722156740_))
                              (_tl156724156745_ (##cdr _e156722156740_)))
                          (if (gx#stx-pair? _tl156724156745_)
                              (let ((_e156725156748_
                                     (gx#syntax-e _tl156724156745_)))
                                (let ((_hd156726156751_
                                       (##car _e156725156748_))
                                      (_tl156727156753_
                                       (##cdr _e156725156748_)))
                                  (let ((_id156756_ _hd156726156751_))
                                    (if (gx#stx-pair? _tl156727156753_)
                                        (let ((_e156728156758_
                                               (gx#syntax-e _tl156727156753_)))
                                          (let ((_hd156729156761_
                                                 (##car _e156728156758_))
                                                (_tl156730156763_
                                                 (##cdr _e156728156758_)))
                                            (let ((_expr156766_
                                                   _hd156729156761_))
                                              (if (gx#stx-null?
                                                   _tl156730156763_)
                                                  (if (gx#identifier?
                                                       _id156756_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id156756_
                            _stx156718_)
                           (cons (gx#core-expand-expression _expr156766_)
                                 '())))
               (gx#stx-source _stx156718_))
              (_E156721156736_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E156721156736_)))))
                                        (_E156721156736_)))))
                              (_E156721156736_))))
                      (_E156721156736_)))))
          (_E156720156768_))))
    (define gx#macro-expand-extern
      (lambda (_stx156566_)
        (letrec ((_generate156568_
                  (lambda (_body156598_)
                    (let _lp156600_ ((_rest156602_ _body156598_)
                                     (_ns156603_
                                      (gx#core-context-namespace__0))
                                     (_r156604_ '()))
                      (let* ((_e156605156620_ _rest156602_)
                             (_E156618156624_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e156605156620_)))
                             (_E156614156628_
                              (lambda ()
                                (if (gx#stx-null? _e156605156620_)
                                    (if '#t
                                        (reverse _r156604_)
                                        (_E156618156624_))
                                    (_E156618156624_))))
                             (_E156607156685_
                              (lambda ()
                                (if (gx#stx-pair? _e156605156620_)
                                    (let ((_e156615156632_
                                           (gx#syntax-e _e156605156620_)))
                                      (let ((_hd156616156635_
                                             (##car _e156615156632_))
                                            (_tl156617156637_
                                             (##cdr _e156615156632_)))
                                        (let* ((_hd156640_ _hd156616156635_)
                                               (_rest156642_ _tl156617156637_))
                                          (if '#t
                                              (if (gx#identifier? _hd156640_)
                                                  (_lp156600_
                                                   _rest156642_
                                                   _ns156603_
                                                   (cons (cons _hd156640_
                                                               (cons (if _ns156603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd156640_
                                  _ns156603_
                                  '"#"
                                  _hd156640_)
                                 _hd156640_)
                             '()))
                 _r156604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e156643156653_
                                                          _hd156640_)
                                                         (_E156645156657_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e156643156653_)))
                                                         (_E156644156681_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e156643156653_)
                        (let ((_e156646156661_ (gx#syntax-e _e156643156653_)))
                          (let ((_hd156647156664_ (##car _e156646156661_))
                                (_tl156648156666_ (##cdr _e156646156661_)))
                            (let ((_id156669_ _hd156647156664_))
                              (if (gx#stx-pair? _tl156648156666_)
                                  (let ((_e156649156671_
                                         (gx#syntax-e _tl156648156666_)))
                                    (let ((_hd156650156674_
                                           (##car _e156649156671_))
                                          (_tl156651156676_
                                           (##cdr _e156649156671_)))
                                      (let ((_eid156679_ _hd156650156674_))
                                        (if (gx#stx-null? _tl156651156676_)
                                            (if (and (gx#identifier?
                                                      _id156669_)
                                                     (gx#identifier?
                                                      _eid156679_))
                                                (_lp156600_
                                                 _rest156642_
                                                 _ns156603_
                                                 (cons (cons _id156669_
                                                             (cons _eid156679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r156604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E156645156657_))
                                            (_E156645156657_)))))
                                  (_E156645156657_)))))
                        (_E156645156657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E156644156681_)))
                                              (_E156614156628_)))))
                                    (_E156614156628_))))
                             (_E156606156714_
                              (lambda ()
                                (if (gx#stx-pair? _e156605156620_)
                                    (let ((_e156608156689_
                                           (gx#syntax-e _e156605156620_)))
                                      (let ((_hd156609156692_
                                             (##car _e156608156689_))
                                            (_tl156610156694_
                                             (##cdr _e156608156689_)))
                                        (if (eq? (gx#stx-e _hd156609156692_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl156610156694_)
                                                (let ((_e156611156697_
                                                       (gx#syntax-e
                                                        _tl156610156694_)))
                                                  (let ((_hd156612156700_
                                                         (##car _e156611156697_))
                                                        (_tl156613156702_
                                                         (##cdr _e156611156697_)))
                                                    (let* ((_ns156705_
                                                            _hd156612156700_)
                                                           (_rest156707_
                                                            _tl156613156702_))
                                                      (if '#t
                                                          (let ((_ns156712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns156705_)
                             (symbol->string (gx#stx-e _ns156705_))
                             (if (or (gx#stx-string? _ns156705_)
                                     (gx#stx-false? _ns156705_))
                                 (gx#stx-e _ns156705_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx156566_
                                  _ns156705_)))))
                    (_lp156600_ _rest156707_ _ns156712_ _r156604_))
                  (_E156607156685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E156607156685_))
                                            (_E156607156685_))))
                                    (_E156607156685_)))))
                        (_E156606156714_))))))
          (let* ((_e156569156576_ _stx156566_)
                 (_E156571156580_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e156569156576_)))
                 (_E156570156594_
                  (lambda ()
                    (if (gx#stx-pair? _e156569156576_)
                        (let ((_e156572156584_ (gx#syntax-e _e156569156576_)))
                          (let ((_hd156573156587_ (##car _e156572156584_))
                                (_tl156574156589_ (##cdr _e156572156584_)))
                            (let ((_body156592_ _tl156574156589_))
                              (if (gx#stx-list? _body156592_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate156568_ _body156592_))
                                  (_E156571156580_)))))
                        (_E156571156580_)))))
            (_E156570156594_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx156512_)
        (let* ((_e156513156526_ _stx156512_)
               (_E156515156530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156513156526_)))
               (_E156514156562_
                (lambda ()
                  (if (gx#stx-pair? _e156513156526_)
                      (let ((_e156516156534_ (gx#syntax-e _e156513156526_)))
                        (let ((_hd156517156537_ (##car _e156516156534_))
                              (_tl156518156539_ (##cdr _e156516156534_)))
                          (if (gx#stx-pair? _tl156518156539_)
                              (let ((_e156519156542_
                                     (gx#syntax-e _tl156518156539_)))
                                (let ((_hd156520156545_
                                       (##car _e156519156542_))
                                      (_tl156521156547_
                                       (##cdr _e156519156542_)))
                                  (let ((_hd156550_ _hd156520156545_))
                                    (if (gx#stx-pair? _tl156521156547_)
                                        (let ((_e156522156552_
                                               (gx#syntax-e _tl156521156547_)))
                                          (let ((_hd156523156555_
                                                 (##car _e156522156552_))
                                                (_tl156524156557_
                                                 (##cdr _e156522156552_)))
                                            (let ((_expr156560_
                                                   _hd156523156555_))
                                              (if (gx#stx-null?
                                                   _tl156524156557_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd156550_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd156550_)
                          (cons _expr156560_ '())))
              (_E156515156530_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E156515156530_)))))
                                        (_E156515156530_)))))
                              (_E156515156530_))))
                      (_E156515156530_)))))
          (_E156514156562_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx156458_)
        (let* ((_e156459156472_ _stx156458_)
               (_E156461156476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156459156472_)))
               (_E156460156508_
                (lambda ()
                  (if (gx#stx-pair? _e156459156472_)
                      (let ((_e156462156480_ (gx#syntax-e _e156459156472_)))
                        (let ((_hd156463156483_ (##car _e156462156480_))
                              (_tl156464156485_ (##cdr _e156462156480_)))
                          (if (gx#stx-pair? _tl156464156485_)
                              (let ((_e156465156488_
                                     (gx#syntax-e _tl156464156485_)))
                                (let ((_hd156466156491_
                                       (##car _e156465156488_))
                                      (_tl156467156493_
                                       (##cdr _e156465156488_)))
                                  (let ((_hd156496_ _hd156466156491_))
                                    (if (gx#stx-pair? _tl156467156493_)
                                        (let ((_e156468156498_
                                               (gx#syntax-e _tl156467156493_)))
                                          (let ((_hd156469156501_
                                                 (##car _e156468156498_))
                                                (_tl156470156503_
                                                 (##cdr _e156468156498_)))
                                            (let ((_expr156506_
                                                   _hd156469156501_))
                                              (if (gx#stx-null?
                                                   _tl156470156503_)
                                                  (if (gx#identifier?
                                                       _hd156496_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd156496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr156506_ '())))
              (_E156461156476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E156461156476_)))))
                                        (_E156461156476_)))))
                              (_E156461156476_))))
                      (_E156461156476_)))))
          (_E156460156508_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx156404_)
        (let* ((_e156405156418_ _stx156404_)
               (_E156407156422_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156405156418_)))
               (_E156406156454_
                (lambda ()
                  (if (gx#stx-pair? _e156405156418_)
                      (let ((_e156408156426_ (gx#syntax-e _e156405156418_)))
                        (let ((_hd156409156429_ (##car _e156408156426_))
                              (_tl156410156431_ (##cdr _e156408156426_)))
                          (if (gx#stx-pair? _tl156410156431_)
                              (let ((_e156411156434_
                                     (gx#syntax-e _tl156410156431_)))
                                (let ((_hd156412156437_
                                       (##car _e156411156434_))
                                      (_tl156413156439_
                                       (##cdr _e156411156434_)))
                                  (let ((_id156442_ _hd156412156437_))
                                    (if (gx#stx-pair? _tl156413156439_)
                                        (let ((_e156414156444_
                                               (gx#syntax-e _tl156413156439_)))
                                          (let ((_hd156415156447_
                                                 (##car _e156414156444_))
                                                (_tl156416156449_
                                                 (##cdr _e156414156444_)))
                                            (let ((_alias-id156452_
                                                   _hd156415156447_))
                                              (if (gx#stx-null?
                                                   _tl156416156449_)
                                                  (if (and (gx#identifier?
                                                            _id156442_)
                                                           (gx#identifier?
                                                            _alias-id156452_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id156442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id156452_ '())))
              (_E156407156422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E156407156422_)))))
                                        (_E156407156422_)))))
                              (_E156407156422_))))
                      (_E156407156422_)))))
          (_E156406156454_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx156361_)
        (let* ((_e156362156372_ _stx156361_)
               (_E156364156376_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156362156372_)))
               (_E156363156400_
                (lambda ()
                  (if (gx#stx-pair? _e156362156372_)
                      (let ((_e156365156380_ (gx#syntax-e _e156362156372_)))
                        (let ((_hd156366156383_ (##car _e156365156380_))
                              (_tl156367156385_ (##cdr _e156365156380_)))
                          (if (gx#stx-pair? _tl156367156385_)
                              (let ((_e156368156388_
                                     (gx#syntax-e _tl156367156385_)))
                                (let ((_hd156369156391_
                                       (##car _e156368156388_))
                                      (_tl156370156393_
                                       (##cdr _e156368156388_)))
                                  (let* ((_hd156396_ _hd156369156391_)
                                         (_body156398_ _tl156370156393_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd156396_)
                                             (gx#stx-list? _body156398_)
                                             (not (gx#stx-null? _body156398_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd156396_)
                                         _body156398_)
                                        (_E156364156376_)))))
                              (_E156364156376_))))
                      (_E156364156376_)))))
          (_E156363156400_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx156297_)
        (letrec ((_generate156299_
                  (lambda (_clause156329_)
                    (let* ((_e156330156337_ _clause156329_)
                           (_E156332156341_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx156297_
                               _clause156329_)))
                           (_E156331156357_
                            (lambda ()
                              (if (gx#stx-pair? _e156330156337_)
                                  (let ((_e156333156345_
                                         (gx#syntax-e _e156330156337_)))
                                    (let ((_hd156334156348_
                                           (##car _e156333156345_))
                                          (_tl156335156350_
                                           (##cdr _e156333156345_)))
                                      (let* ((_hd156353_ _hd156334156348_)
                                             (_body156355_ _tl156335156350_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd156353_)
                                                 (gx#stx-list? _body156355_)
                                                 (not (gx#stx-null?
                                                       _body156355_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd156353_)
                                                   _body156355_)
                                             (gx#stx-source _clause156329_))
                                            (_E156332156341_)))))
                                  (_E156332156341_)))))
                      (_E156331156357_)))))
          (let* ((_e156300156307_ _stx156297_)
                 (_E156302156311_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e156300156307_)))
                 (_E156301156325_
                  (lambda ()
                    (if (gx#stx-pair? _e156300156307_)
                        (let ((_e156303156315_ (gx#syntax-e _e156300156307_)))
                          (let ((_hd156304156318_ (##car _e156303156315_))
                                (_tl156305156320_ (##cdr _e156303156315_)))
                            (let ((_clauses156323_ _tl156305156320_))
                              (if (gx#stx-list? _clauses156323_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate156299_
                                    _clauses156323_))
                                  (_E156302156311_)))))
                        (_E156302156311_)))))
            (_E156301156325_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx156198_ _form156199_)
        (letrec ((_generate156201_
                  (lambda (_bind156244_)
                    (let* ((_e156245156255_ _bind156244_)
                           (_E156247156259_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx156198_
                               _bind156244_)))
                           (_E156246156283_
                            (lambda ()
                              (if (gx#stx-pair? _e156245156255_)
                                  (let ((_e156248156263_
                                         (gx#syntax-e _e156245156255_)))
                                    (let ((_hd156249156266_
                                           (##car _e156248156263_))
                                          (_tl156250156268_
                                           (##cdr _e156248156263_)))
                                      (let ((_ids156271_ _hd156249156266_))
                                        (if (gx#stx-pair? _tl156250156268_)
                                            (let ((_e156251156273_
                                                   (gx#syntax-e
                                                    _tl156250156268_)))
                                              (let ((_hd156252156276_
                                                     (##car _e156251156273_))
                                                    (_tl156253156278_
                                                     (##cdr _e156251156273_)))
                                                (let ((_expr156281_
                                                       _hd156252156276_))
                                                  (if (gx#stx-null?
                                                       _tl156253156278_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids156271_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids156271_)
                        (cons _expr156281_ '()))
                  (_E156247156259_))
              (_E156247156259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E156247156259_)))))
                                  (_E156247156259_)))))
                      (_E156246156283_)))))
          (let* ((_e156202156212_ _stx156198_)
                 (_E156204156216_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e156202156212_)))
                 (_E156203156240_
                  (lambda ()
                    (if (gx#stx-pair? _e156202156212_)
                        (let ((_e156205156220_ (gx#syntax-e _e156202156212_)))
                          (let ((_hd156206156223_ (##car _e156205156220_))
                                (_tl156207156225_ (##cdr _e156205156220_)))
                            (if (gx#stx-pair? _tl156207156225_)
                                (let ((_e156208156228_
                                       (gx#syntax-e _tl156207156225_)))
                                  (let ((_hd156209156231_
                                         (##car _e156208156228_))
                                        (_tl156210156233_
                                         (##cdr _e156208156228_)))
                                    (let* ((_hd156236_ _hd156209156231_)
                                           (_body156238_ _tl156210156233_))
                                      (if (and (gx#stx-list? _hd156236_)
                                               (gx#stx-list? _body156238_)
                                               (not (gx#stx-null?
                                                     _body156238_)))
                                          (gx#core-cons*
                                           _form156199_
                                           (gx#stx-map1
                                            _generate156201_
                                            _hd156236_)
                                           _body156238_)
                                          (_E156204156216_)))))
                                (_E156204156216_))))
                        (_E156204156216_)))))
            (_E156203156240_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx156290_)
        (let ((_form156292_ '%#let-values))
          (gx#macro-expand-let-values__% _stx156290_ _form156292_))))
    (define gx#macro-expand-let-values
      (lambda _g162742_
        (let ((_g162741_ (##length _g162742_)))
          (cond ((##fx= _g162741_ 1)
                 (apply (lambda (_stx156290_)
                          (gx#macro-expand-let-values__0 _stx156290_))
                        _g162742_))
                ((##fx= _g162741_ 2)
                 (apply (lambda (_stx156294_ _form156295_)
                          (gx#macro-expand-let-values__%
                           _stx156294_
                           _form156295_))
                        _g162742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g162742_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx156195_)
        (gx#macro-expand-let-values__% _stx156195_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx156193_)
        (gx#macro-expand-let-values__% _stx156193_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx156084_)
        (let* ((_e156085156111_ _stx156084_)
               (_E156097156115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e156085156111_)))
               (_E156087156157_
                (lambda ()
                  (if (gx#stx-pair? _e156085156111_)
                      (let ((_e156098156119_ (gx#syntax-e _e156085156111_)))
                        (let ((_hd156099156122_ (##car _e156098156119_))
                              (_tl156100156124_ (##cdr _e156098156119_)))
                          (if (gx#stx-pair? _tl156100156124_)
                              (let ((_e156101156127_
                                     (gx#syntax-e _tl156100156124_)))
                                (let ((_hd156102156130_
                                       (##car _e156101156127_))
                                      (_tl156103156132_
                                       (##cdr _e156101156127_)))
                                  (let ((_test156135_ _hd156102156130_))
                                    (if (gx#stx-pair? _tl156103156132_)
                                        (let ((_e156104156137_
                                               (gx#syntax-e _tl156103156132_)))
                                          (let ((_hd156105156140_
                                                 (##car _e156104156137_))
                                                (_tl156106156142_
                                                 (##cdr _e156104156137_)))
                                            (let ((_K156145_ _hd156105156140_))
                                              (if (gx#stx-pair?
                                                   _tl156106156142_)
                                                  (let ((_e156107156147_
                                                         (gx#syntax-e
                                                          _tl156106156142_)))
                                                    (let ((_hd156108156150_
                                                           (##car _e156107156147_))
                                                          (_tl156109156152_
                                                           (##cdr _e156107156147_)))
                                                      (let ((_E156155_
                                                             _hd156108156150_))
                                                        (if (gx#stx-null?
                                                             _tl156109156152_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test156135_
                         _K156145_
                         _E156155_)
                        (_E156097156115_))
                    (_E156097156115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E156097156115_)))))
                                        (_E156097156115_)))))
                              (_E156097156115_))))
                      (_E156097156115_))))
               (_E156086156189_
                (lambda ()
                  (if (gx#stx-pair? _e156085156111_)
                      (let ((_e156088156161_ (gx#syntax-e _e156085156111_)))
                        (let ((_hd156089156164_ (##car _e156088156161_))
                              (_tl156090156166_ (##cdr _e156088156161_)))
                          (if (gx#stx-pair? _tl156090156166_)
                              (let ((_e156091156169_
                                     (gx#syntax-e _tl156090156166_)))
                                (let ((_hd156092156172_
                                       (##car _e156091156169_))
                                      (_tl156093156174_
                                       (##cdr _e156091156169_)))
                                  (let ((_test156177_ _hd156092156172_))
                                    (if (gx#stx-pair? _tl156093156174_)
                                        (let ((_e156094156179_
                                               (gx#syntax-e _tl156093156174_)))
                                          (let ((_hd156095156182_
                                                 (##car _e156094156179_))
                                                (_tl156096156184_
                                                 (##cdr _e156094156179_)))
                                            (let ((_K156187_ _hd156095156182_))
                                              (if (gx#stx-null?
                                                   _tl156096156184_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test156177_
                                                       _K156187_
                                                       '#!void)
                                                      (_E156087156157_))
                                                  (_E156087156157_)))))
                                        (_E156087156157_)))))
                              (_E156087156157_))))
                      (_E156087156157_)))))
          (_E156086156189_))))
    (define gx#free-identifier=?
      (lambda (_xid156072_ _yid156073_)
        (let ((_xe156075_ (gx#resolve-identifier__0 _xid156072_))
              (_ye156076_ (gx#resolve-identifier__0 _yid156073_)))
          (if (and _xe156075_ _ye156076_)
              (let ((_$e156078_ (eq? _xe156075_ _ye156076_)))
                (if _$e156078_
                    _$e156078_
                    (if (##structure-instance-of? _xe156075_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye156076_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe156075_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye156076_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe156075_ _ye156076_)
                  '#f
                  (gx#stx-eq? _xid156072_ _yid156073_))))))
    (define gx#bound-identifier=?
      (lambda (_xid156056_ _yid156057_)
        (letrec ((_context156059_
                  (lambda (_e156070_)
                    (if (##structure-direct-instance-of?
                         _e156070_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e156070_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks156060_
                  (lambda (_e156068_)
                    (if (symbol? _e156068_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e156068_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e156068_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e156068_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap156061_
                  (lambda (_e156066_)
                    (if (symbol? _e156066_)
                        _e156066_
                        (gx#syntax-local-unwrap _e156066_)))))
          (let ((_x156063_ (_unwrap156061_ _xid156056_))
                (_y156064_ (_unwrap156061_ _yid156057_)))
            (if (gx#stx-eq? _x156063_ _y156064_)
                (if (eq? (_context156059_ _x156063_)
                         (_context156059_ _y156064_))
                    (equal? (_marks156060_ _x156063_)
                            (_marks156060_ _y156064_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx156054_)
        (if (gx#identifier? _stx156054_)
            (gx#core-identifier=? _stx156054_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx156052_)
        (if (gx#identifier? _stx156052_)
            (gx#core-identifier=? _stx156052_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x156050_)
        (if (gx#identifier? _x156050_)
            (if (not (gx#underscore? _x156050_)) _x156050_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx155996_ _where155997_)
        (let _lp155999_ ((_rest156001_ (gx#syntax->list _stx155996_)))
          (let* ((_rest156002156010_ _rest156001_)
                 (_else156004156018_ (lambda () '#t))
                 (_K156006156028_
                  (lambda (_rest156021_ _hd156022_)
                    (if (not (gx#identifier? _hd156022_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where155997_
                         _hd156022_)
                        (if (find (lambda (_g156023156025_)
                                    (gx#bound-identifier=?
                                     _g156023156025_
                                     _hd156022_))
                                  _rest156021_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where155997_
                             _hd156022_)
                            (_lp155999_ _rest156021_))))))
            (if (##pair? _rest156002156010_)
                (let ((_hd156007156031_ (##car _rest156002156010_))
                      (_tl156008156033_ (##cdr _rest156002156010_)))
                  (let* ((_hd156036_ _hd156007156031_)
                         (_rest156038_ _tl156008156033_))
                    (_K156006156028_ _rest156038_ _hd156036_)))
                (_else156004156018_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx156043_)
        (let ((_where156045_ _stx156043_))
          (gx#check-duplicate-identifiers__% _stx156043_ _where156045_))))
    (define gx#check-duplicate-identifiers
      (lambda _g162744_
        (let ((_g162743_ (##length _g162744_)))
          (cond ((##fx= _g162743_ 1)
                 (apply (lambda (_stx156043_)
                          (gx#check-duplicate-identifiers__0 _stx156043_))
                        _g162744_))
                ((##fx= _g162743_ 2)
                 (apply (lambda (_stx156047_ _where156048_)
                          (gx#check-duplicate-identifiers__%
                           _stx156047_
                           _where156048_))
                        _g162744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g162744_))))))
    (define gx#core-bind-values?
      (lambda (_stx155988_)
        (gx#stx-andmap
         (lambda (_x155990_)
           (let ((_$e155992_ (gx#identifier? _x155990_)))
             (if _$e155992_ _$e155992_ (gx#stx-false? _x155990_))))
         _stx155988_)))
    (define gx#core-bind-values!__%
      (lambda (_stx155952_ _rebind?155953_ _phi155954_ _ctx155955_)
        (gx#stx-for-each1
         (lambda (_id155957_)
           (if (gx#identifier? _id155957_)
               (gx#core-bind-runtime!__%
                _id155957_
                _rebind?155953_
                _phi155954_
                _ctx155955_)
               '#!void))
         _stx155952_)))
    (define gx#core-bind-values!__0
      (lambda (_stx155962_)
        (let* ((_rebind?155964_ '#f)
               (_phi155966_ (gx#current-expander-phi))
               (_ctx155968_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx155962_
           _rebind?155964_
           _phi155966_
           _ctx155968_))))
    (define gx#core-bind-values!__1
      (lambda (_stx155970_ _rebind?155971_)
        (let* ((_phi155973_ (gx#current-expander-phi))
               (_ctx155975_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx155970_
           _rebind?155971_
           _phi155973_
           _ctx155975_))))
    (define gx#core-bind-values!__2
      (lambda (_stx155977_ _rebind?155978_ _phi155979_)
        (let ((_ctx155981_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx155977_
           _rebind?155978_
           _phi155979_
           _ctx155981_))))
    (define gx#core-bind-values!
      (lambda _g162746_
        (let ((_g162745_ (##length _g162746_)))
          (cond ((##fx= _g162745_ 1)
                 (apply (lambda (_stx155962_)
                          (gx#core-bind-values!__0 _stx155962_))
                        _g162746_))
                ((##fx= _g162745_ 2)
                 (apply (lambda (_stx155970_ _rebind?155971_)
                          (gx#core-bind-values!__1
                           _stx155970_
                           _rebind?155971_))
                        _g162746_))
                ((##fx= _g162745_ 3)
                 (apply (lambda (_stx155977_ _rebind?155978_ _phi155979_)
                          (gx#core-bind-values!__2
                           _stx155977_
                           _rebind?155978_
                           _phi155979_))
                        _g162746_))
                ((##fx= _g162745_ 4)
                 (apply (lambda (_stx155983_
                                 _rebind?155984_
                                 _phi155985_
                                 _ctx155986_)
                          (gx#core-bind-values!__%
                           _stx155983_
                           _rebind?155984_
                           _phi155985_
                           _ctx155986_))
                        _g162746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g162746_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx155947_)
        (gx#stx-map1
         (lambda (_x155949_)
           (if (gx#identifier? _x155949_)
               (gx#core-quote-syntax__0 _x155949_)
               '#f))
         _stx155947_)))
    (define gx#core-runtime-ref?
      (lambda (_stx155940_)
        (if (gx#identifier? _stx155940_)
            (let* ((_bind155942_ (gx#resolve-identifier__0 _stx155940_))
                   (_$e155944_ (not _bind155942_)))
              (if _$e155944_
                  _$e155944_
                  (##structure-instance-of?
                   _bind155942_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id155932_ _form155933_)
        (let ((_bind155935_ (gx#resolve-identifier__0 _id155932_)))
          (if (##structure-instance-of? _bind155935_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id155932_)
              (if (not _bind155935_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id155932_)))
                      (gx#core-quote-syntax__0 _id155932_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form155933_
                       _id155932_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form155933_
                   _id155932_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id155891_ _rebind?155892_ _phi155893_ _ctx155894_)
        (let* ((_key155896_ (gx#core-identifier-key _id155891_))
               (_eid155898_
                (gx#make-binding-id__%
                 _key155896_
                 '#f
                 _phi155893_
                 _ctx155894_))
               (_bind155900_
                (if (##structure-instance-of?
                     _ctx155894_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid155898_
                     _key155896_
                     _phi155893_
                     _ctx155894_)
                    (if (##structure-instance-of?
                         _ctx155894_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid155898_
                         _key155896_
                         _phi155893_)
                        (if (##structure-instance-of?
                             _ctx155894_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid155898_
                             _key155896_
                             _phi155893_)
                            (##structure
                             gx#runtime-binding::t
                             _eid155898_
                             _key155896_
                             _phi155893_))))))
          (gx#bind-identifier!__%
           _id155891_
           _bind155900_
           _rebind?155892_
           _phi155893_
           _ctx155894_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id155906_)
        (let* ((_rebind?155908_ '#f)
               (_phi155910_ (gx#current-expander-phi))
               (_ctx155912_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id155906_
           _rebind?155908_
           _phi155910_
           _ctx155912_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id155914_ _rebind?155915_)
        (let* ((_phi155917_ (gx#current-expander-phi))
               (_ctx155919_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id155914_
           _rebind?155915_
           _phi155917_
           _ctx155919_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id155921_ _rebind?155922_ _phi155923_)
        (let ((_ctx155925_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id155921_
           _rebind?155922_
           _phi155923_
           _ctx155925_))))
    (define gx#core-bind-runtime!
      (lambda _g162748_
        (let ((_g162747_ (##length _g162748_)))
          (cond ((##fx= _g162747_ 1)
                 (apply (lambda (_id155906_)
                          (gx#core-bind-runtime!__0 _id155906_))
                        _g162748_))
                ((##fx= _g162747_ 2)
                 (apply (lambda (_id155914_ _rebind?155915_)
                          (gx#core-bind-runtime!__1
                           _id155914_
                           _rebind?155915_))
                        _g162748_))
                ((##fx= _g162747_ 3)
                 (apply (lambda (_id155921_ _rebind?155922_ _phi155923_)
                          (gx#core-bind-runtime!__2
                           _id155921_
                           _rebind?155922_
                           _phi155923_))
                        _g162748_))
                ((##fx= _g162747_ 4)
                 (apply (lambda (_id155927_
                                 _rebind?155928_
                                 _phi155929_
                                 _ctx155930_)
                          (gx#core-bind-runtime!__%
                           _id155927_
                           _rebind?155928_
                           _phi155929_
                           _ctx155930_))
                        _g162748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g162748_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id155846_ _eid155847_ _rebind?155848_ _phi155849_ _ctx155850_)
        (let* ((_key155852_ (gx#core-identifier-key _id155846_))
               (_bind155854_
                (if (##structure-instance-of?
                     _ctx155850_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid155847_
                     _key155852_
                     _phi155849_
                     _ctx155850_)
                    (if (##structure-instance-of?
                         _ctx155850_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid155847_
                         _key155852_
                         _phi155849_)
                        (##structure
                         gx#runtime-binding::t
                         _eid155847_
                         _key155852_
                         _phi155849_)))))
          (gx#bind-identifier!__%
           _id155846_
           _bind155854_
           _rebind?155848_
           _phi155849_
           _ctx155850_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id155860_ _eid155861_)
        (let* ((_rebind?155863_ '#f)
               (_phi155865_ (gx#current-expander-phi))
               (_ctx155867_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id155860_
           _eid155861_
           _rebind?155863_
           _phi155865_
           _ctx155867_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id155869_ _eid155870_ _rebind?155871_)
        (let* ((_phi155873_ (gx#current-expander-phi))
               (_ctx155875_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id155869_
           _eid155870_
           _rebind?155871_
           _phi155873_
           _ctx155875_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id155877_ _eid155878_ _rebind?155879_ _phi155880_)
        (let ((_ctx155882_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id155877_
           _eid155878_
           _rebind?155879_
           _phi155880_
           _ctx155882_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g162750_
        (let ((_g162749_ (##length _g162750_)))
          (cond ((##fx= _g162749_ 2)
                 (apply (lambda (_id155860_ _eid155861_)
                          (gx#core-bind-runtime-reference!__0
                           _id155860_
                           _eid155861_))
                        _g162750_))
                ((##fx= _g162749_ 3)
                 (apply (lambda (_id155869_ _eid155870_ _rebind?155871_)
                          (gx#core-bind-runtime-reference!__1
                           _id155869_
                           _eid155870_
                           _rebind?155871_))
                        _g162750_))
                ((##fx= _g162749_ 4)
                 (apply (lambda (_id155877_
                                 _eid155878_
                                 _rebind?155879_
                                 _phi155880_)
                          (gx#core-bind-runtime-reference!__2
                           _id155877_
                           _eid155878_
                           _rebind?155879_
                           _phi155880_))
                        _g162750_))
                ((##fx= _g162749_ 5)
                 (apply (lambda (_id155884_
                                 _eid155885_
                                 _rebind?155886_
                                 _phi155887_
                                 _ctx155888_)
                          (gx#core-bind-runtime-reference!__%
                           _id155884_
                           _eid155885_
                           _rebind?155886_
                           _phi155887_
                           _ctx155888_))
                        _g162750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g162750_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id155806_ _eid155807_ _rebind?155808_ _phi155809_ _ctx155810_)
        (gx#bind-identifier!__%
         _id155806_
         (##structure
          gx#extern-binding::t
          _eid155807_
          (gx#core-identifier-key _id155806_)
          _phi155809_)
         _rebind?155808_
         _phi155809_
         _ctx155810_)))
    (define gx#core-bind-extern!__0
      (lambda (_id155815_ _eid155816_)
        (let* ((_rebind?155818_ '#f)
               (_phi155820_ (gx#current-expander-phi))
               (_ctx155822_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id155815_
           _eid155816_
           _rebind?155818_
           _phi155820_
           _ctx155822_))))
    (define gx#core-bind-extern!__1
      (lambda (_id155824_ _eid155825_ _rebind?155826_)
        (let* ((_phi155828_ (gx#current-expander-phi))
               (_ctx155830_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id155824_
           _eid155825_
           _rebind?155826_
           _phi155828_
           _ctx155830_))))
    (define gx#core-bind-extern!__2
      (lambda (_id155832_ _eid155833_ _rebind?155834_ _phi155835_)
        (let ((_ctx155837_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id155832_
           _eid155833_
           _rebind?155834_
           _phi155835_
           _ctx155837_))))
    (define gx#core-bind-extern!
      (lambda _g162752_
        (let ((_g162751_ (##length _g162752_)))
          (cond ((##fx= _g162751_ 2)
                 (apply (lambda (_id155815_ _eid155816_)
                          (gx#core-bind-extern!__0 _id155815_ _eid155816_))
                        _g162752_))
                ((##fx= _g162751_ 3)
                 (apply (lambda (_id155824_ _eid155825_ _rebind?155826_)
                          (gx#core-bind-extern!__1
                           _id155824_
                           _eid155825_
                           _rebind?155826_))
                        _g162752_))
                ((##fx= _g162751_ 4)
                 (apply (lambda (_id155832_
                                 _eid155833_
                                 _rebind?155834_
                                 _phi155835_)
                          (gx#core-bind-extern!__2
                           _id155832_
                           _eid155833_
                           _rebind?155834_
                           _phi155835_))
                        _g162752_))
                ((##fx= _g162751_ 5)
                 (apply (lambda (_id155839_
                                 _eid155840_
                                 _rebind?155841_
                                 _phi155842_
                                 _ctx155843_)
                          (gx#core-bind-extern!__%
                           _id155839_
                           _eid155840_
                           _rebind?155841_
                           _phi155842_
                           _ctx155843_))
                        _g162752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g162752_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id155760_ _e155761_ _rebind?155762_ _phi155763_ _ctx155764_)
        (gx#bind-identifier!__%
         _id155760_
         (let ((_key155769_ (gx#core-identifier-key _id155760_))
               (_e155770_
                (if (or (##structure-instance-of? _e155761_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e155761_
                         'gx#expander-context::t))
                    _e155761_
                    (##structure
                     gx#user-expander::t
                     _e155761_
                     _ctx155764_
                     _phi155763_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key155769_ '#t _phi155763_ _ctx155764_)
            _key155769_
            _phi155763_
            _e155770_))
         _rebind?155762_
         _phi155763_
         _ctx155764_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id155775_ _e155776_)
        (let* ((_rebind?155778_ '#f)
               (_phi155780_ (gx#current-expander-phi))
               (_ctx155782_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id155775_
           _e155776_
           _rebind?155778_
           _phi155780_
           _ctx155782_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id155784_ _e155785_ _rebind?155786_)
        (let* ((_phi155788_ (gx#current-expander-phi))
               (_ctx155790_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id155784_
           _e155785_
           _rebind?155786_
           _phi155788_
           _ctx155790_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id155792_ _e155793_ _rebind?155794_ _phi155795_)
        (let ((_ctx155797_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id155792_
           _e155793_
           _rebind?155794_
           _phi155795_
           _ctx155797_))))
    (define gx#core-bind-syntax!
      (lambda _g162754_
        (let ((_g162753_ (##length _g162754_)))
          (cond ((##fx= _g162753_ 2)
                 (apply (lambda (_id155775_ _e155776_)
                          (gx#core-bind-syntax!__0 _id155775_ _e155776_))
                        _g162754_))
                ((##fx= _g162753_ 3)
                 (apply (lambda (_id155784_ _e155785_ _rebind?155786_)
                          (gx#core-bind-syntax!__1
                           _id155784_
                           _e155785_
                           _rebind?155786_))
                        _g162754_))
                ((##fx= _g162753_ 4)
                 (apply (lambda (_id155792_
                                 _e155793_
                                 _rebind?155794_
                                 _phi155795_)
                          (gx#core-bind-syntax!__2
                           _id155792_
                           _e155793_
                           _rebind?155794_
                           _phi155795_))
                        _g162754_))
                ((##fx= _g162753_ 5)
                 (apply (lambda (_id155799_
                                 _e155800_
                                 _rebind?155801_
                                 _phi155802_
                                 _ctx155803_)
                          (gx#core-bind-syntax!__%
                           _id155799_
                           _e155800_
                           _rebind?155801_
                           _phi155802_
                           _ctx155803_))
                        _g162754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g162754_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id155743_ _e155744_ _rebind?155745_)
        (gx#core-bind-syntax!__%
         _id155743_
         _e155744_
         _rebind?155745_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id155750_ _e155751_)
        (let ((_rebind?155753_ '#f))
          (gx#core-bind-root-syntax!__%
           _id155750_
           _e155751_
           _rebind?155753_))))
    (define gx#core-bind-root-syntax!
      (lambda _g162756_
        (let ((_g162755_ (##length _g162756_)))
          (cond ((##fx= _g162755_ 2)
                 (apply (lambda (_id155750_ _e155751_)
                          (gx#core-bind-root-syntax!__0 _id155750_ _e155751_))
                        _g162756_))
                ((##fx= _g162755_ 3)
                 (apply (lambda (_id155755_ _e155756_ _rebind?155757_)
                          (gx#core-bind-root-syntax!__%
                           _id155755_
                           _e155756_
                           _rebind?155757_))
                        _g162756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g162756_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id155701_
               _alias-id155702_
               _rebind?155703_
               _phi155704_
               _ctx155705_)
        (gx#bind-identifier!__%
         _id155701_
         (let ((_key155707_ (gx#core-identifier-key _id155701_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key155707_ '#t _phi155704_ _ctx155705_)
            _key155707_
            _phi155704_
            _alias-id155702_))
         _rebind?155703_
         _phi155704_
         _ctx155705_)))
    (define gx#core-bind-alias!__0
      (lambda (_id155712_ _alias-id155713_)
        (let* ((_rebind?155715_ '#f)
               (_phi155717_ (gx#current-expander-phi))
               (_ctx155719_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id155712_
           _alias-id155713_
           _rebind?155715_
           _phi155717_
           _ctx155719_))))
    (define gx#core-bind-alias!__1
      (lambda (_id155721_ _alias-id155722_ _rebind?155723_)
        (let* ((_phi155725_ (gx#current-expander-phi))
               (_ctx155727_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id155721_
           _alias-id155722_
           _rebind?155723_
           _phi155725_
           _ctx155727_))))
    (define gx#core-bind-alias!__2
      (lambda (_id155729_ _alias-id155730_ _rebind?155731_ _phi155732_)
        (let ((_ctx155734_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id155729_
           _alias-id155730_
           _rebind?155731_
           _phi155732_
           _ctx155734_))))
    (define gx#core-bind-alias!
      (lambda _g162758_
        (let ((_g162757_ (##length _g162758_)))
          (cond ((##fx= _g162757_ 2)
                 (apply (lambda (_id155712_ _alias-id155713_)
                          (gx#core-bind-alias!__0 _id155712_ _alias-id155713_))
                        _g162758_))
                ((##fx= _g162757_ 3)
                 (apply (lambda (_id155721_ _alias-id155722_ _rebind?155723_)
                          (gx#core-bind-alias!__1
                           _id155721_
                           _alias-id155722_
                           _rebind?155723_))
                        _g162758_))
                ((##fx= _g162757_ 4)
                 (apply (lambda (_id155729_
                                 _alias-id155730_
                                 _rebind?155731_
                                 _phi155732_)
                          (gx#core-bind-alias!__2
                           _id155729_
                           _alias-id155730_
                           _rebind?155731_
                           _phi155732_))
                        _g162758_))
                ((##fx= _g162757_ 5)
                 (apply (lambda (_id155736_
                                 _alias-id155737_
                                 _rebind?155738_
                                 _phi155739_
                                 _ctx155740_)
                          (gx#core-bind-alias!__%
                           _id155736_
                           _alias-id155737_
                           _rebind?155738_
                           _phi155739_
                           _ctx155740_))
                        _g162758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g162758_))))))
    (define gx#make-binding-id__%
      (lambda (_key155658_ _syntax?155659_ _phi155660_ _ctx155661_)
        (if (uninterned-symbol? _key155658_)
            (gensym 'L)
            (if (pair? _key155658_)
                (gensym (car _key155658_))
                (if (##structure-instance-of? _ctx155661_ 'gx#top-context::t)
                    (let ((_ns155663_
                           (gx#core-context-namespace__% _ctx155661_)))
                      (if (and (fxzero? _phi155660_) (not _syntax?155659_))
                          (if _ns155663_
                              (make-symbol__1 _ns155663_ '"#" _key155658_)
                              _key155658_)
                          (if _syntax?155659_
                              (make-symbol__1
                               (let ((_$e155665_ _ns155663_))
                                 (if _$e155665_ _$e155665_ '""))
                               '"[:"
                               (number->string _phi155660_)
                               '":]#"
                               _key155658_)
                              (make-symbol__1
                               (let ((_$e155668_ _ns155663_))
                                 (if _$e155668_ _$e155668_ '""))
                               '"["
                               (number->string _phi155660_)
                               '"]#"
                               _key155658_))))
                    (gensym _key155658_))))))
    (define gx#make-binding-id__0
      (lambda (_key155674_)
        (let* ((_syntax?155676_ '#f)
               (_phi155678_ (gx#current-expander-phi))
               (_ctx155680_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key155674_
           _syntax?155676_
           _phi155678_
           _ctx155680_))))
    (define gx#make-binding-id__1
      (lambda (_key155682_ _syntax?155683_)
        (let* ((_phi155685_ (gx#current-expander-phi))
               (_ctx155687_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key155682_
           _syntax?155683_
           _phi155685_
           _ctx155687_))))
    (define gx#make-binding-id__2
      (lambda (_key155689_ _syntax?155690_ _phi155691_)
        (let ((_ctx155693_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key155689_
           _syntax?155690_
           _phi155691_
           _ctx155693_))))
    (define gx#make-binding-id
      (lambda _g162760_
        (let ((_g162759_ (##length _g162760_)))
          (cond ((##fx= _g162759_ 1)
                 (apply (lambda (_key155674_)
                          (gx#make-binding-id__0 _key155674_))
                        _g162760_))
                ((##fx= _g162759_ 2)
                 (apply (lambda (_key155682_ _syntax?155683_)
                          (gx#make-binding-id__1 _key155682_ _syntax?155683_))
                        _g162760_))
                ((##fx= _g162759_ 3)
                 (apply (lambda (_key155689_ _syntax?155690_ _phi155691_)
                          (gx#make-binding-id__2
                           _key155689_
                           _syntax?155690_
                           _phi155691_))
                        _g162760_))
                ((##fx= _g162759_ 4)
                 (apply (lambda (_key155695_
                                 _syntax?155696_
                                 _phi155697_
                                 _ctx155698_)
                          (gx#make-binding-id__%
                           _key155695_
                           _syntax?155696_
                           _phi155697_
                           _ctx155698_))
                        _g162760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g162760_))))))))
