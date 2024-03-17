(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710694203)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx87996_)
        (letrec ((_expand-special87998_
                  (lambda (_hd88000_ _K88001_ _rest88002_ _r88003_)
                    (_K88001_
                     _rest88002_
                     (cons (gx#core-expand-top _hd88000_) _r88003_)))))
          (gx#core-expand-block__0 _stx87996_ _expand-special87998_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx87749_)
        (letrec ((_expand-special87751_
                  (lambda (_hd87871_ _K87872_ _rest87873_ _r87874_)
                    (let* ((_K87878_
                            (lambda (_e87876_)
                              (_K87872_ _rest87873_ (cons _e87876_ _r87874_))))
                           (_e8787987908_ _hd87871_)
                           (_E8790387912_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8787987908_)))
                           (_E8789987924_
                            (lambda ()
                              (if (gx#stx-pair? _e8787987908_)
                                  (let ((_e8790487916_
                                         (gx#syntax-e _e8787987908_)))
                                    (let ((_hd8790587919_
                                           (##car _e8790487916_))
                                          (_tl8790687921_
                                           (##cdr _e8790487916_)))
                                      (if (and (gx#identifier? _hd8790587919_)
                                               (gx#core-identifier=?
                                                _hd8790587919_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K87878_
                                               (gx#core-expand-define-runtime%
                                                _hd87871_))
                                              (_E8790387912_))
                                          (_E8790387912_))))
                                  (_E8790387912_))))
                           (_E8789587936_
                            (lambda ()
                              (if (gx#stx-pair? _e8787987908_)
                                  (let ((_e8790087928_
                                         (gx#syntax-e _e8787987908_)))
                                    (let ((_hd8790187931_
                                           (##car _e8790087928_))
                                          (_tl8790287933_
                                           (##cdr _e8790087928_)))
                                      (if (and (gx#identifier? _hd8790187931_)
                                               (gx#core-identifier=?
                                                _hd8790187931_
                                                '%#define-alias))
                                          (if '#t
                                              (_K87878_
                                               (gx#core-expand-define-alias%
                                                _hd87871_))
                                              (_E8789987924_))
                                          (_E8789987924_))))
                                  (_E8789987924_))))
                           (_E8788587948_
                            (lambda ()
                              (if (gx#stx-pair? _e8787987908_)
                                  (let ((_e8789687940_
                                         (gx#syntax-e _e8787987908_)))
                                    (let ((_hd8789787943_
                                           (##car _e8789687940_))
                                          (_tl8789887945_
                                           (##cdr _e8789687940_)))
                                      (if (and (gx#identifier? _hd8789787943_)
                                               (gx#core-identifier=?
                                                _hd8789787943_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K87878_
                                               (gx#core-expand-define-syntax%
                                                _hd87871_))
                                              (_E8789587936_))
                                          (_E8789587936_))))
                                  (_E8789587936_))))
                           (_E8788187980_
                            (lambda ()
                              (if (gx#stx-pair? _e8787987908_)
                                  (let ((_e8788687952_
                                         (gx#syntax-e _e8787987908_)))
                                    (let ((_hd8788787955_
                                           (##car _e8788687952_))
                                          (_tl8788887957_
                                           (##cdr _e8788687952_)))
                                      (if (and (gx#identifier? _hd8788787955_)
                                               (gx#core-identifier=?
                                                _hd8788787955_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8788887957_)
                                              (let ((_e8788987960_
                                                     (gx#syntax-e
                                                      _tl8788887957_)))
                                                (let ((_hd8789087963_
                                                       (##car _e8788987960_))
                                                      (_tl8789187965_
                                                       (##cdr _e8788987960_)))
                                                  (let ((_hd-bind87968_
                                                         _hd8789087963_))
                                                    (if (gx#stx-pair?
                                                         _tl8789187965_)
                                                        (let ((_e8789287970_
                                                               (gx#syntax-e
                                                                _tl8789187965_)))
                                                          (let ((_hd8789387973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8789287970_))
                        (_tl8789487975_ (##cdr _e8789287970_)))
                    (let ((_expr87978_ _hd8789387973_))
                      (if (gx#stx-null? _tl8789487975_)
                          (if (gx#core-bind-values? _hd-bind87968_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87968_)
                                (_K87878_ _hd87871_))
                              (_E8788587948_))
                          (_E8788587948_)))))
                (_E8788587948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8788587948_))
                                          (_E8788587948_))))
                                  (_E8788587948_))))
                           (_E8788087992_
                            (lambda ()
                              (if (gx#stx-pair? _e8787987908_)
                                  (let ((_e8788287984_
                                         (gx#syntax-e _e8787987908_)))
                                    (let ((_hd8788387987_
                                           (##car _e8788287984_))
                                          (_tl8788487989_
                                           (##cdr _e8788287984_)))
                                      (if (and (gx#identifier? _hd8788387987_)
                                               (gx#core-identifier=?
                                                _hd8788387987_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K87878_
                                               (gx#core-expand-begin-syntax%
                                                _hd87871_))
                                              (_E8788187980_))
                                          (_E8788187980_))))
                                  (_E8788187980_)))))
                      (_E8788087992_))))
                 (_eval-body87752_
                  (lambda (_rbody87760_)
                    (let _lp87762_ ((_rest87764_ _rbody87760_)
                                    (_body87765_ '())
                                    (_ebody87766_ '()))
                      (let* ((_rest8776787775_ _rest87764_)
                             (_else8776987783_
                              (lambda ()
                                (values _body87765_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody87766_)
                                          (gx#stx-source _stx87749_))))))
                             (_K8777187859_
                              (lambda (_rest87786_ _hd87787_)
                                (let* ((_e8778887805_ _hd87787_)
                                       (_E8780087809_
                                        (lambda ()
                                          (_lp87762_
                                           _rest87786_
                                           (cons _hd87787_ _body87765_)
                                           (cons _hd87787_ _ebody87766_))))
                                       (_E8779087821_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8778887805_)
                                              (let ((_e8780187813_
                                                     (gx#syntax-e
                                                      _e8778887805_)))
                                                (let ((_hd8780287816_
                                                       (##car _e8780187813_))
                                                      (_tl8780387818_
                                                       (##cdr _e8780187813_)))
                                                  (if (and (gx#identifier?
                                                            _hd8780287816_)
                                                           (gx#core-identifier=?
                                                            _hd8780287816_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp87762_
                                                           _rest87786_
                                                           (cons _hd87787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body87765_)
                   _ebody87766_)
                  (_E8780087809_))
              (_E8780087809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8780087809_))))
                                       (_E8778987855_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8778887805_)
                                              (let ((_e8779187825_
                                                     (gx#syntax-e
                                                      _e8778887805_)))
                                                (let ((_hd8779287828_
                                                       (##car _e8779187825_))
                                                      (_tl8779387830_
                                                       (##cdr _e8779187825_)))
                                                  (if (and (gx#identifier?
                                                            _hd8779287828_)
                                                           (gx#core-identifier=?
                                                            _hd8779287828_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8779387830_)
                                                          (let ((_e8779487833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8779387830_)))
                    (let ((_hd8779587836_ (##car _e8779487833_))
                          (_tl8779687838_ (##cdr _e8779487833_)))
                      (let ((_hd-bind87841_ _hd8779587836_))
                        (if (gx#stx-pair? _tl8779687838_)
                            (let ((_e8779787843_ (gx#syntax-e _tl8779687838_)))
                              (let ((_hd8779887846_ (##car _e8779787843_))
                                    (_tl8779987848_ (##cdr _e8779787843_)))
                                (let ((_expr87851_ _hd8779887846_))
                                  (if (gx#stx-null? _tl8779987848_)
                                      (if '#t
                                          (let ((_ehd87853_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind87841_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr87851_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd87787_))))
                                            (_lp87762_
                                             _rest87786_
                                             (cons _ehd87853_ _body87765_)
                                             (cons _ehd87853_ _ebody87766_)))
                                          (_E8779087821_))
                                      (_E8779087821_)))))
                            (_E8779087821_)))))
                  (_E8779087821_))
              (_E8779087821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8779087821_)))))
                                  (_E8778987855_)))))
                        (if (##pair? _rest8776787775_)
                            (let ((_hd8777287862_ (##car _rest8776787775_))
                                  (_tl8777387864_ (##cdr _rest8776787775_)))
                              (let* ((_hd87867_ _hd8777287862_)
                                     (_rest87869_ _tl8777387864_))
                                (_K8777187859_ _rest87869_ _hd87867_)))
                            (_else8776987783_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody87755_
                     (gx#core-expand-block__1
                      _stx87749_
                      _expand-special87751_
                      '#f))
                    (_g88019_ (_eval-body87752_ _rbody87755_)))
               (begin
                 (let ((_g88020_
                        (if (##values? _g88019_)
                            (##vector-length _g88019_)
                            1)))
                   (if (not (##fx= _g88020_ 2))
                       (error "Context expects 2 values" _g88020_)))
                 (let ((_expanded-body87757_ (##vector-ref _g88019_ 0))
                       (_value87758_ (##vector-ref _g88019_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body87757_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value87758_ '())))
                    (gx#stx-source _stx87749_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx87719_)
        (let* ((_e8772087727_ _stx87719_)
               (_E8772287731_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8772087727_)))
               (_E8772187745_
                (lambda ()
                  (if (gx#stx-pair? _e8772087727_)
                      (let ((_e8772387735_ (gx#syntax-e _e8772087727_)))
                        (let ((_hd8772487738_ (##car _e8772387735_))
                              (_tl8772587740_ (##cdr _e8772387735_)))
                          (let ((_body87743_ _tl8772587740_))
                            (if (gx#stx-list? _body87743_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body87743_)
                                 (gx#stx-source _stx87719_))
                                (_E8772287731_)))))
                      (_E8772287731_)))))
          (_E8772187745_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx87717_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx87717_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx87663_)
        (let* ((_e8766487677_ _stx87663_)
               (_E8766687681_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8766487677_)))
               (_E8766587713_
                (lambda ()
                  (if (gx#stx-pair? _e8766487677_)
                      (let ((_e8766787685_ (gx#syntax-e _e8766487677_)))
                        (let ((_hd8766887688_ (##car _e8766787685_))
                              (_tl8766987690_ (##cdr _e8766787685_)))
                          (if (gx#stx-pair? _tl8766987690_)
                              (let ((_e8767087693_
                                     (gx#syntax-e _tl8766987690_)))
                                (let ((_hd8767187696_ (##car _e8767087693_))
                                      (_tl8767287698_ (##cdr _e8767087693_)))
                                  (let ((_ann87701_ _hd8767187696_))
                                    (if (gx#stx-pair? _tl8767287698_)
                                        (let ((_e8767387703_
                                               (gx#syntax-e _tl8767287698_)))
                                          (let ((_hd8767487706_
                                                 (##car _e8767387703_))
                                                (_tl8767587708_
                                                 (##cdr _e8767387703_)))
                                            (let ((_expr87711_ _hd8767487706_))
                                              (if (gx#stx-null? _tl8767587708_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann87701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr87711_) '())))
               (gx#stx-source _stx87663_))
              (_E8766687681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8766687681_)))))
                                        (_E8766687681_)))))
                              (_E8766687681_))))
                      (_E8766687681_)))))
          (_E8766587713_))))
    (define gx#core-expand-local-block
      (lambda (_stx87387_ _body87388_)
        (letrec ((_expand-special87390_
                  (lambda (_hd87658_ _K87659_ _rest87660_ _r87661_)
                    (_K87659_
                     '()
                     (cons (_expand-internal87391_ _hd87658_ _rest87660_)
                           _r87661_))))
                 (_expand-internal87391_
                  (lambda (_hd87654_ _rest87655_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal87393_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd87654_ _rest87655_))
                          (gx#stx-source _stx87387_))
                         _expand-internal-special87392_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj88013
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj88013)
                       __obj88013))))
                 (_expand-internal-special87392_
                  (lambda (_hd87549_ _K87550_ _rest87551_ _r87552_)
                    (let* ((_e8755387578_ _hd87549_)
                           (_E8757387582_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8755387578_)))
                           (_E8756987594_
                            (lambda ()
                              (if (gx#stx-pair? _e8755387578_)
                                  (let ((_e8757487586_
                                         (gx#syntax-e _e8755387578_)))
                                    (let ((_hd8757587589_
                                           (##car _e8757487586_))
                                          (_tl8757687591_
                                           (##cdr _e8757487586_)))
                                      (if (and (gx#identifier? _hd8757587589_)
                                               (gx#core-identifier=?
                                                _hd8757587589_
                                                '%#declare))
                                          (if '#t
                                              (_K87550_
                                               _rest87551_
                                               (cons (gx#core-expand-declare%
                                                      _hd87549_)
                                                     _r87552_))
                                              (_E8757387582_))
                                          (_E8757387582_))))
                                  (_E8757387582_))))
                           (_E8756587606_
                            (lambda ()
                              (if (gx#stx-pair? _e8755387578_)
                                  (let ((_e8757087598_
                                         (gx#syntax-e _e8755387578_)))
                                    (let ((_hd8757187601_
                                           (##car _e8757087598_))
                                          (_tl8757287603_
                                           (##cdr _e8757087598_)))
                                      (if (and (gx#identifier? _hd8757187601_)
                                               (gx#core-identifier=?
                                                _hd8757187601_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd87549_)
                                                (_K87550_
                                                 _rest87551_
                                                 _r87552_))
                                              (_E8756987594_))
                                          (_E8756987594_))))
                                  (_E8756987594_))))
                           (_E8755587618_
                            (lambda ()
                              (if (gx#stx-pair? _e8755387578_)
                                  (let ((_e8756687610_
                                         (gx#syntax-e _e8755387578_)))
                                    (let ((_hd8756787613_
                                           (##car _e8756687610_))
                                          (_tl8756887615_
                                           (##cdr _e8756687610_)))
                                      (if (and (gx#identifier? _hd8756787613_)
                                               (gx#core-identifier=?
                                                _hd8756787613_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd87549_)
                                                (_K87550_
                                                 _rest87551_
                                                 _r87552_))
                                              (_E8756587606_))
                                          (_E8756587606_))))
                                  (_E8756587606_))))
                           (_E8755487650_
                            (lambda ()
                              (if (gx#stx-pair? _e8755387578_)
                                  (let ((_e8755687622_
                                         (gx#syntax-e _e8755387578_)))
                                    (let ((_hd8755787625_
                                           (##car _e8755687622_))
                                          (_tl8755887627_
                                           (##cdr _e8755687622_)))
                                      (if (and (gx#identifier? _hd8755787625_)
                                               (gx#core-identifier=?
                                                _hd8755787625_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8755887627_)
                                              (let ((_e8755987630_
                                                     (gx#syntax-e
                                                      _tl8755887627_)))
                                                (let ((_hd8756087633_
                                                       (##car _e8755987630_))
                                                      (_tl8756187635_
                                                       (##cdr _e8755987630_)))
                                                  (let ((_hd-bind87638_
                                                         _hd8756087633_))
                                                    (if (gx#stx-pair?
                                                         _tl8756187635_)
                                                        (let ((_e8756287640_
                                                               (gx#syntax-e
                                                                _tl8756187635_)))
                                                          (let ((_hd8756387643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8756287640_))
                        (_tl8756487645_ (##cdr _e8756287640_)))
                    (let ((_expr87648_ _hd8756387643_))
                      (if (gx#stx-null? _tl8756487645_)
                          (if (gx#core-bind-values? _hd-bind87638_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87638_)
                                (_K87550_
                                 _rest87551_
                                 (cons _hd87549_ _r87552_)))
                              (_E8755587618_))
                          (_E8755587618_)))))
                (_E8755587618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8755587618_))
                                          (_E8755587618_))))
                                  (_E8755587618_)))))
                      (_E8755487650_))))
                 (_wrap-internal87393_
                  (lambda (_rbody87395_)
                    (let _lp87397_ ((_rest87399_ _rbody87395_)
                                    (_decls87400_ '())
                                    (_bind87401_ '())
                                    (_body87402_ '()))
                      (let* ((_e8740387410_ _rest87399_)
                             (_E8740587459_
                              (lambda ()
                                (let* ((_body87454_
                                        (let* ((_body8741387423_ _body87402_)
                                               (_else8741687431_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body87402_)
                                                   (gx#stx-source
                                                    _stx87387_)))))
                                          (let ((_K8742187451_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx87387_)))
                                                (_K8741887437_
                                                 (lambda (_expr87435_)
                                                   _expr87435_)))
                                            (let ((_try-match8741587447_
                                                   (lambda ()
                                                     (if (##pair? _body8741387423_)
                                                         (let ((_tl8742087442_
                                                                (##cdr _body8741387423_))
                                                               (_hd8741987440_
                                                                (##car _body8741387423_)))
                                                           (if (##null? _tl8742087442_)
                                                               (let ((_expr87445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8741987440_))
                         (_K8741887437_ _expr87445_))
                       (_else8741687431_)))
                 (_else8741687431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8741387423_)
                                                  (_K8742187451_)
                                                  (_try-match8741587447_))))))
                                       (_body87456_
                                        (if (null? _bind87401_)
                                            _body87454_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind87401_
                                                         (cons _body87454_
                                                               '())))
                                             (gx#stx-source _stx87387_)))))
                                  (if (null? _decls87400_)
                                      _body87456_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls87400_
                                                   (cons _body87456_ '())))
                                       (gx#stx-source _stx87387_))))))
                             (_E8740487545_
                              (lambda ()
                                (if (gx#stx-pair? _e8740387410_)
                                    (let ((_e8740687463_
                                           (gx#syntax-e _e8740387410_)))
                                      (let ((_hd8740787466_
                                             (##car _e8740687463_))
                                            (_tl8740887468_
                                             (##cdr _e8740687463_)))
                                        (let* ((_hd87471_ _hd8740787466_)
                                               (_rest87473_ _tl8740887468_))
                                          (if '#t
                                              (let* ((_e8747487491_ _hd87471_)
                                                     (_E8748687495_
                                                      (lambda ()
                                                        (if (null? _bind87401_)
                                                            (_lp87397_
                                                             _rest87473_
                                                             _decls87400_
                                                             _bind87401_
                                                             (cons _hd87471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body87402_))
                    (_lp87397_
                     _rest87473_
                     _decls87400_
                     (cons (cons '#f (cons _hd87471_ '())) _bind87401_)
                     _body87402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8747687509_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8747487491_)
                                                            (let ((_e8748787499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8747487491_)))
                      (let ((_hd8748887502_ (##car _e8748787499_))
                            (_tl8748987504_ (##cdr _e8748787499_)))
                        (if (and (gx#identifier? _hd8748887502_)
                                 (gx#core-identifier=?
                                  _hd8748887502_
                                  '%#declare))
                            (let ((_xdecls87507_ _tl8748987504_))
                              (if '#t
                                  (_lp87397_
                                   _rest87473_
                                   (gx#stx-foldr
                                    cons
                                    _decls87400_
                                    _xdecls87507_)
                                   _bind87401_
                                   _body87402_)
                                  (_E8748687495_)))
                            (_E8748687495_))))
                    (_E8748687495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8747587541_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8747487491_)
                                                            (let ((_e8747787513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8747487491_)))
                      (let ((_hd8747887516_ (##car _e8747787513_))
                            (_tl8747987518_ (##cdr _e8747787513_)))
                        (if (and (gx#identifier? _hd8747887516_)
                                 (gx#core-identifier=?
                                  _hd8747887516_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8747987518_)
                                (let ((_e8748087521_
                                       (gx#syntax-e _tl8747987518_)))
                                  (let ((_hd8748187524_ (##car _e8748087521_))
                                        (_tl8748287526_ (##cdr _e8748087521_)))
                                    (let ((_hd-bind87529_ _hd8748187524_))
                                      (if (gx#stx-pair? _tl8748287526_)
                                          (let ((_e8748387531_
                                                 (gx#syntax-e _tl8748287526_)))
                                            (let ((_hd8748487534_
                                                   (##car _e8748387531_))
                                                  (_tl8748587536_
                                                   (##cdr _e8748387531_)))
                                              (let ((_expr87539_
                                                     _hd8748487534_))
                                                (if (gx#stx-null?
                                                     _tl8748587536_)
                                                    (if '#t
                                                        (_lp87397_
                                                         _rest87473_
                                                         _decls87400_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind87529_)
                             (cons (gx#core-expand-expression _expr87539_)
                                   '()))
                       _bind87401_)
                 _body87402_)
                (_E8747687509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8747687509_)))))
                                          (_E8747687509_)))))
                                (_E8747687509_))
                            (_E8747687509_))))
                    (_E8747687509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8747587541_))
                                              (_E8740587459_)))))
                                    (_E8740587459_)))))
                        (_E8740487545_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body87388_)
            (gx#stx-source _stx87387_))
           _expand-special87390_))))
    (define gx#core-expand-declare%
      (lambda (_stx87325_)
        (let* ((_e8732687333_ _stx87325_)
               (_E8732887337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8732687333_)))
               (_E8732787383_
                (lambda ()
                  (if (gx#stx-pair? _e8732687333_)
                      (let ((_e8732987341_ (gx#syntax-e _e8732687333_)))
                        (let ((_hd8733087344_ (##car _e8732987341_))
                              (_tl8733187346_ (##cdr _e8732987341_)))
                          (let ((_body87349_ _tl8733187346_))
                            (if (gx#stx-list? _body87349_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl87351_)
                                     (let* ((_e8735287359_ _decl87351_)
                                            (_E8735487363_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8735287359_)))
                                            (_E8735387379_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8735287359_)
                                                   (let ((_e8735587367_
                                                          (gx#syntax-e
                                                           _e8735287359_)))
                                                     (let ((_hd8735687370_
                                                            (##car _e8735587367_))
                                                           (_tl8735787372_
                                                            (##cdr _e8735587367_)))
                                                       (let* ((_head87375_
                                                               _hd8735687370_)
                                                              (_args87377_
                                                               _tl8735787372_))
                                                         (if (gx#stx-list?
                                                              _args87377_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl87351_)
                                                             (_E8735487363_)))))
                                                   (_E8735487363_)))))
                                       (_E8735387379_)))
                                   _body87349_))
                                 (gx#stx-source _stx87325_))
                                (_E8732887337_)))))
                      (_E8732887337_)))))
          (_E8732787383_))))
    (define gx#core-expand-extern%
      (lambda (_stx87229_)
        (let* ((_e8723087237_ _stx87229_)
               (_E8723287241_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8723087237_)))
               (_E8723187321_
                (lambda ()
                  (if (gx#stx-pair? _e8723087237_)
                      (let ((_e8723387245_ (gx#syntax-e _e8723087237_)))
                        (let ((_hd8723487248_ (##car _e8723387245_))
                              (_tl8723587250_ (##cdr _e8723387245_)))
                          (let ((_body87253_ _tl8723587250_))
                            (if '#t
                                (let _lp87255_ ((_rest87257_ _body87253_)
                                                (_r87258_ '()))
                                  (let* ((_e8725987273_ _rest87257_)
                                         (_E8727187277_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87229_)))
                                         (_E8726187281_
                                          (lambda ()
                                            (if (gx#stx-null? _e8725987273_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87258_))
                                                     (gx#stx-source
                                                      _stx87229_))
                                                    (_E8727187277_))
                                                (_E8727187277_))))
                                         (_E8726087317_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8725987273_)
                                                (let ((_e8726287285_
                                                       (gx#syntax-e
                                                        _e8725987273_)))
                                                  (let ((_hd8726387288_
                                                         (##car _e8726287285_))
                                                        (_tl8726487290_
                                                         (##cdr _e8726287285_)))
                                                    (if (gx#stx-pair?
                                                         _hd8726387288_)
                                                        (let ((_e8726587293_
                                                               (gx#syntax-e
                                                                _hd8726387288_)))
                                                          (let ((_hd8726687296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8726587293_))
                        (_tl8726787298_ (##cdr _e8726587293_)))
                    (let ((_id87301_ _hd8726687296_))
                      (if (gx#stx-pair? _tl8726787298_)
                          (let ((_e8726887303_ (gx#syntax-e _tl8726787298_)))
                            (let ((_hd8726987306_ (##car _e8726887303_))
                                  (_tl8727087308_ (##cdr _e8726887303_)))
                              (let ((_eid87311_ _hd8726987306_))
                                (if (gx#stx-null? _tl8727087308_)
                                    (let ((_rest87313_ _tl8726487290_))
                                      (if (and (gx#identifier? _id87301_)
                                               (gx#identifier? _eid87311_))
                                          (let ((_eid87315_
                                                 (gx#stx-e _eid87311_)))
                                            (gx#core-bind-extern!__0
                                             _id87301_
                                             _eid87315_)
                                            (_lp87255_
                                             _rest87313_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id87301_)
                                                         (cons _eid87315_ '()))
                                                   _r87258_)))
                                          (_E8726187281_)))
                                    (_E8726187281_)))))
                          (_E8726187281_)))))
                (_E8726187281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8726187281_)))))
                                    (_E8726087317_)))
                                (_E8723287241_)))))
                      (_E8723287241_)))))
          (_E8723187321_))))
    (define gx#core-expand-define-values%
      (lambda (_stx87175_)
        (let* ((_e8717687189_ _stx87175_)
               (_E8717887193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8717687189_)))
               (_E8717787225_
                (lambda ()
                  (if (gx#stx-pair? _e8717687189_)
                      (let ((_e8717987197_ (gx#syntax-e _e8717687189_)))
                        (let ((_hd8718087200_ (##car _e8717987197_))
                              (_tl8718187202_ (##cdr _e8717987197_)))
                          (if (gx#stx-pair? _tl8718187202_)
                              (let ((_e8718287205_
                                     (gx#syntax-e _tl8718187202_)))
                                (let ((_hd8718387208_ (##car _e8718287205_))
                                      (_tl8718487210_ (##cdr _e8718287205_)))
                                  (let ((_hd87213_ _hd8718387208_))
                                    (if (gx#stx-pair? _tl8718487210_)
                                        (let ((_e8718587215_
                                               (gx#syntax-e _tl8718487210_)))
                                          (let ((_hd8718687218_
                                                 (##car _e8718587215_))
                                                (_tl8718787220_
                                                 (##cdr _e8718587215_)))
                                            (let ((_expr87223_ _hd8718687218_))
                                              (if (gx#stx-null? _tl8718787220_)
                                                  (if (gx#core-bind-values?
                                                       _hd87213_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87213_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87213_)
                             (cons (gx#core-expand-expression _expr87223_)
                                   '())))
                 (gx#stx-source _stx87175_)))
              (_E8717887193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8717887193_)))))
                                        (_E8717887193_)))))
                              (_E8717887193_))))
                      (_E8717887193_)))))
          (_E8717787225_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx87119_)
        (let* ((_e8712087133_ _stx87119_)
               (_E8712287137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8712087133_)))
               (_E8712187171_
                (lambda ()
                  (if (gx#stx-pair? _e8712087133_)
                      (let ((_e8712387141_ (gx#syntax-e _e8712087133_)))
                        (let ((_hd8712487144_ (##car _e8712387141_))
                              (_tl8712587146_ (##cdr _e8712387141_)))
                          (if (gx#stx-pair? _tl8712587146_)
                              (let ((_e8712687149_
                                     (gx#syntax-e _tl8712587146_)))
                                (let ((_hd8712787152_ (##car _e8712687149_))
                                      (_tl8712887154_ (##cdr _e8712687149_)))
                                  (let ((_id87157_ _hd8712787152_))
                                    (if (gx#stx-pair? _tl8712887154_)
                                        (let ((_e8712987159_
                                               (gx#syntax-e _tl8712887154_)))
                                          (let ((_hd8713087162_
                                                 (##car _e8712987159_))
                                                (_tl8713187164_
                                                 (##cdr _e8712987159_)))
                                            (let ((_binding-id87167_
                                                   _hd8713087162_))
                                              (if (gx#stx-null? _tl8713187164_)
                                                  (if (and (gx#identifier?
                                                            _id87157_)
                                                           (gx#identifier?
                                                            _binding-id87167_))
                                                      (let ((_eid87169_
                                                             (gx#stx-e
                                                              _binding-id87167_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id87157_
                                                         _eid87169_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87157_)
                             (cons _eid87169_ '())))))
              (_E8712287137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8712287137_)))))
                                        (_E8712287137_)))))
                              (_E8712287137_))))
                      (_E8712287137_)))))
          (_E8712187171_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx87062_)
        (let* ((_e8706387076_ _stx87062_)
               (_E8706587080_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8706387076_)))
               (_E8706487115_
                (lambda ()
                  (if (gx#stx-pair? _e8706387076_)
                      (let ((_e8706687084_ (gx#syntax-e _e8706387076_)))
                        (let ((_hd8706787087_ (##car _e8706687084_))
                              (_tl8706887089_ (##cdr _e8706687084_)))
                          (if (gx#stx-pair? _tl8706887089_)
                              (let ((_e8706987092_
                                     (gx#syntax-e _tl8706887089_)))
                                (let ((_hd8707087095_ (##car _e8706987092_))
                                      (_tl8707187097_ (##cdr _e8706987092_)))
                                  (let ((_id87100_ _hd8707087095_))
                                    (if (gx#stx-pair? _tl8707187097_)
                                        (let ((_e8707287102_
                                               (gx#syntax-e _tl8707187097_)))
                                          (let ((_hd8707387105_
                                                 (##car _e8707287102_))
                                                (_tl8707487107_
                                                 (##cdr _e8707287102_)))
                                            (let ((_expr87110_ _hd8707387105_))
                                              (if (gx#stx-null? _tl8707487107_)
                                                  (if (gx#identifier?
                                                       _id87100_)
                                                      (let ((_g88021_
                                                             (gx#core-expand-expression+1
                                                              _expr87110_)))
                                                        (begin
                                                          (let ((_g88022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g88021_)
                             (##vector-length _g88021_)
                             1)))
                    (if (not (##fx= _g88022_ 2))
                        (error "Context expects 2 values" _g88022_)))
                  (let ((_e-stx87112_ (##vector-ref _g88021_ 0))
                        (_e87113_ (##vector-ref _g88021_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id87100_ _e87113_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id87100_)
                                   (cons _e-stx87112_ '())))
                       (gx#stx-source _stx87062_))))))
              (_E8706587080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8706587080_)))))
                                        (_E8706587080_)))))
                              (_E8706587080_))))
                      (_E8706587080_)))))
          (_E8706487115_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx87006_)
        (let* ((_e8700787020_ _stx87006_)
               (_E8700987024_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8700787020_)))
               (_E8700887058_
                (lambda ()
                  (if (gx#stx-pair? _e8700787020_)
                      (let ((_e8701087028_ (gx#syntax-e _e8700787020_)))
                        (let ((_hd8701187031_ (##car _e8701087028_))
                              (_tl8701287033_ (##cdr _e8701087028_)))
                          (if (gx#stx-pair? _tl8701287033_)
                              (let ((_e8701387036_
                                     (gx#syntax-e _tl8701287033_)))
                                (let ((_hd8701487039_ (##car _e8701387036_))
                                      (_tl8701587041_ (##cdr _e8701387036_)))
                                  (let ((_id87044_ _hd8701487039_))
                                    (if (gx#stx-pair? _tl8701587041_)
                                        (let ((_e8701687046_
                                               (gx#syntax-e _tl8701587041_)))
                                          (let ((_hd8701787049_
                                                 (##car _e8701687046_))
                                                (_tl8701887051_
                                                 (##cdr _e8701687046_)))
                                            (let ((_alias-id87054_
                                                   _hd8701787049_))
                                              (if (gx#stx-null? _tl8701887051_)
                                                  (if (and (gx#identifier?
                                                            _id87044_)
                                                           (gx#identifier?
                                                            _alias-id87054_))
                                                      (let ((_alias-id87056_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id87054_)))
                                                        (gx#core-bind-alias!__0
                                                         _id87044_
                                                         _alias-id87056_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87044_)
                             (cons _alias-id87056_ '())))))
              (_E8700987024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8700987024_)))))
                                        (_E8700987024_)))))
                              (_E8700987024_))))
                      (_E8700987024_)))))
          (_E8700887058_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx86949_ _wrap?86950_)
        (let* ((_e8695186961_ _stx86949_)
               (_E8695386965_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8695186961_)))
               (_E8695286992_
                (lambda ()
                  (if (gx#stx-pair? _e8695186961_)
                      (let ((_e8695486969_ (gx#syntax-e _e8695186961_)))
                        (let ((_hd8695586972_ (##car _e8695486969_))
                              (_tl8695686974_ (##cdr _e8695486969_)))
                          (if (gx#stx-pair? _tl8695686974_)
                              (let ((_e8695786977_
                                     (gx#syntax-e _tl8695686974_)))
                                (let ((_hd8695886980_ (##car _e8695786977_))
                                      (_tl8695986982_ (##cdr _e8695786977_)))
                                  (let* ((_hd86985_ _hd8695886980_)
                                         (_body86987_ _tl8695986982_))
                                    (if (gx#core-bind-values? _hd86985_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd86985_)
                                           (let ((_body86990_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd86985_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx86949_
                                                               _body86987_)
                                                              '()))))
                                             (if _wrap?86950_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body86990_)
                                                  (gx#stx-source _stx86949_))
                                                 _body86990_)))
                                         gx#current-expander-context
                                         (let ((__obj88014
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88014)
                                           __obj88014))
                                        (_E8695386965_)))))
                              (_E8695386965_))))
                      (_E8695386965_)))))
          (_E8695286992_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx86999_)
        (let ((_wrap?87001_ '#t))
          (gx#core-expand-lambda%__% _stx86999_ _wrap?87001_))))
    (define gx#core-expand-lambda%
      (lambda _g88024_
        (let ((_g88023_ (##length _g88024_)))
          (cond ((##fx= _g88023_ 1)
                 (apply (lambda (_stx86999_)
                          (gx#core-expand-lambda%__0 _stx86999_))
                        _g88024_))
                ((##fx= _g88023_ 2)
                 (apply (lambda (_stx87003_ _wrap?87004_)
                          (gx#core-expand-lambda%__% _stx87003_ _wrap?87004_))
                        _g88024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g88024_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx86913_)
        (let* ((_e8691486921_ _stx86913_)
               (_E8691686925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8691486921_)))
               (_E8691586944_
                (lambda ()
                  (if (gx#stx-pair? _e8691486921_)
                      (let ((_e8691786929_ (gx#syntax-e _e8691486921_)))
                        (let ((_hd8691886932_ (##car _e8691786929_))
                              (_tl8691986934_ (##cdr _e8691786929_)))
                          (let ((_clauses86937_ _tl8691986934_))
                            (if (gx#stx-list? _clauses86937_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause86939_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause86939_)
                                       (let ((_$e86941_
                                              (gx#stx-source _clause86939_)))
                                         (if _$e86941_
                                             _$e86941_
                                             (gx#stx-source _stx86913_))))
                                      '#f))
                                   _clauses86937_))
                                 (gx#stx-source _stx86913_))
                                (_E8691686925_)))))
                      (_E8691686925_)))))
          (_E8691586944_))))
    (define gx#core-expand-let-values%
      (lambda (_stx86867_)
        (let* ((_e8686886878_ _stx86867_)
               (_E8687086882_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8686886878_)))
               (_E8686986909_
                (lambda ()
                  (if (gx#stx-pair? _e8686886878_)
                      (let ((_e8687186886_ (gx#syntax-e _e8686886878_)))
                        (let ((_hd8687286889_ (##car _e8687186886_))
                              (_tl8687386891_ (##cdr _e8687186886_)))
                          (if (gx#stx-pair? _tl8687386891_)
                              (let ((_e8687486894_
                                     (gx#syntax-e _tl8687386891_)))
                                (let ((_hd8687586897_ (##car _e8687486894_))
                                      (_tl8687686899_ (##cdr _e8687486894_)))
                                  (let* ((_hd86902_ _hd8687586897_)
                                         (_body86904_ _tl8687686899_))
                                    (if (gx#core-expand-let-bind? _hd86902_)
                                        (let ((_expressions86906_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd86902_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd86902_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd86902_
                                                           _expressions86906_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx86867_
                         _body86904_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx86867_)))
                                           gx#current-expander-context
                                           (let ((__obj88015
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88015)
                                             __obj88015)))
                                        (_E8687086882_)))))
                              (_E8687086882_))))
                      (_E8687086882_)))))
          (_E8686986909_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx86812_ _form86813_)
        (let* ((_e8681486824_ _stx86812_)
               (_E8681686828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8681486824_)))
               (_E8681586853_
                (lambda ()
                  (if (gx#stx-pair? _e8681486824_)
                      (let ((_e8681786832_ (gx#syntax-e _e8681486824_)))
                        (let ((_hd8681886835_ (##car _e8681786832_))
                              (_tl8681986837_ (##cdr _e8681786832_)))
                          (if (gx#stx-pair? _tl8681986837_)
                              (let ((_e8682086840_
                                     (gx#syntax-e _tl8681986837_)))
                                (let ((_hd8682186843_ (##car _e8682086840_))
                                      (_tl8682286845_ (##cdr _e8682086840_)))
                                  (let* ((_hd86848_ _hd8682186843_)
                                         (_body86850_ _tl8682286845_))
                                    (if (gx#core-expand-let-bind? _hd86848_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd86848_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form86813_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd86848_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd86848_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx86812_
                                                               _body86850_)
                                                              '())))
                                            (gx#stx-source _stx86812_)))
                                         gx#current-expander-context
                                         (let ((__obj88016
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88016)
                                           __obj88016))
                                        (_E8681686828_)))))
                              (_E8681686828_))))
                      (_E8681686828_)))))
          (_E8681586853_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx86860_)
        (let ((_form86862_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx86860_ _form86862_))))
    (define gx#core-expand-letrec-values%
      (lambda _g88026_
        (let ((_g88025_ (##length _g88026_)))
          (cond ((##fx= _g88025_ 1)
                 (apply (lambda (_stx86860_)
                          (gx#core-expand-letrec-values%__0 _stx86860_))
                        _g88026_))
                ((##fx= _g88025_ 2)
                 (apply (lambda (_stx86864_ _form86865_)
                          (gx#core-expand-letrec-values%__%
                           _stx86864_
                           _form86865_))
                        _g88026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g88026_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx86809_)
        (gx#core-expand-letrec-values%__% _stx86809_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx86766_)
        (if (gx#stx-list? _stx86766_)
            (gx#stx-andmap
             (lambda (_bind86768_)
               (let* ((_e8676986779_ _bind86768_)
                      (_E8677186783_ (lambda () '#f))
                      (_E8677086805_
                       (lambda ()
                         (if (gx#stx-pair? _e8676986779_)
                             (let ((_e8677286787_ (gx#syntax-e _e8676986779_)))
                               (let ((_hd8677386790_ (##car _e8677286787_))
                                     (_tl8677486792_ (##cdr _e8677286787_)))
                                 (let ((_hd86795_ _hd8677386790_))
                                   (if (gx#stx-pair? _tl8677486792_)
                                       (let ((_e8677586797_
                                              (gx#syntax-e _tl8677486792_)))
                                         (let ((_hd8677686800_
                                                (##car _e8677586797_))
                                               (_tl8677786802_
                                                (##cdr _e8677586797_)))
                                           (if (gx#stx-null? _tl8677786802_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd86795_)
                                                   (_E8677186783_))
                                               (_E8677186783_))))
                                       (_E8677186783_)))))
                             (_E8677186783_)))))
                 (_E8677086805_)))
             _stx86766_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind86725_)
        (let* ((_e8672686736_ _bind86725_)
               (_E8672886740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8672686736_)))
               (_E8672786762_
                (lambda ()
                  (if (gx#stx-pair? _e8672686736_)
                      (let ((_e8672986744_ (gx#syntax-e _e8672686736_)))
                        (let ((_hd8673086747_ (##car _e8672986744_))
                              (_tl8673186749_ (##cdr _e8672986744_)))
                          (if (gx#stx-pair? _tl8673186749_)
                              (let ((_e8673286752_
                                     (gx#syntax-e _tl8673186749_)))
                                (let ((_hd8673386755_ (##car _e8673286752_))
                                      (_tl8673486757_ (##cdr _e8673286752_)))
                                  (let ((_expr86760_ _hd8673386755_))
                                    (if (gx#stx-null? _tl8673486757_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr86760_)
                                            (_E8672886740_))
                                        (_E8672886740_)))))
                              (_E8672886740_))))
                      (_E8672886740_)))))
          (_E8672786762_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind86684_)
        (let* ((_e8668586695_ _bind86684_)
               (_E8668786699_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8668586695_)))
               (_E8668686721_
                (lambda ()
                  (if (gx#stx-pair? _e8668586695_)
                      (let ((_e8668886703_ (gx#syntax-e _e8668586695_)))
                        (let ((_hd8668986706_ (##car _e8668886703_))
                              (_tl8669086708_ (##cdr _e8668886703_)))
                          (let ((_hd86711_ _hd8668986706_))
                            (if (gx#stx-pair? _tl8669086708_)
                                (let ((_e8669186713_
                                       (gx#syntax-e _tl8669086708_)))
                                  (let ((_hd8669286716_ (##car _e8669186713_))
                                        (_tl8669386718_ (##cdr _e8669186713_)))
                                    (if (gx#stx-null? _tl8669386718_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd86711_)
                                            (_E8668786699_))
                                        (_E8668786699_))))
                                (_E8668786699_)))))
                      (_E8668786699_)))))
          (_E8668686721_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind86642_ _expr86643_)
        (let* ((_e8664486654_ _bind86642_)
               (_E8664686658_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8664486654_)))
               (_E8664586680_
                (lambda ()
                  (if (gx#stx-pair? _e8664486654_)
                      (let ((_e8664786662_ (gx#syntax-e _e8664486654_)))
                        (let ((_hd8664886665_ (##car _e8664786662_))
                              (_tl8664986667_ (##cdr _e8664786662_)))
                          (let ((_hd86670_ _hd8664886665_))
                            (if (gx#stx-pair? _tl8664986667_)
                                (let ((_e8665086672_
                                       (gx#syntax-e _tl8664986667_)))
                                  (let ((_hd8665186675_ (##car _e8665086672_))
                                        (_tl8665286677_ (##cdr _e8665086672_)))
                                    (if (gx#stx-null? _tl8665286677_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd86670_)
                                                  (cons _expr86643_ '()))
                                            (_E8664686658_))
                                        (_E8664686658_))))
                                (_E8664686658_)))))
                      (_E8664686658_)))))
          (_E8664586680_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx86596_)
        (let* ((_e8659786607_ _stx86596_)
               (_E8659986611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8659786607_)))
               (_E8659886638_
                (lambda ()
                  (if (gx#stx-pair? _e8659786607_)
                      (let ((_e8660086615_ (gx#syntax-e _e8659786607_)))
                        (let ((_hd8660186618_ (##car _e8660086615_))
                              (_tl8660286620_ (##cdr _e8660086615_)))
                          (if (gx#stx-pair? _tl8660286620_)
                              (let ((_e8660386623_
                                     (gx#syntax-e _tl8660286620_)))
                                (let ((_hd8660486626_ (##car _e8660386623_))
                                      (_tl8660586628_ (##cdr _e8660386623_)))
                                  (let* ((_hd86631_ _hd8660486626_)
                                         (_body86633_ _tl8660586628_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd86631_)
                                        (let ((_expanders86635_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd86631_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd86631_
                                              _expanders86635_)
                                             (gx#core-expand-local-block
                                              _stx86596_
                                              _body86633_))
                                           gx#current-expander-context
                                           (let ((__obj88017
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88017)
                                             __obj88017)))
                                        (_E8659986611_)))))
                              (_E8659986611_))))
                      (_E8659986611_)))))
          (_E8659886638_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx86545_)
        (let* ((_e8654686556_ _stx86545_)
               (_E8654886560_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8654686556_)))
               (_E8654786592_
                (lambda ()
                  (if (gx#stx-pair? _e8654686556_)
                      (let ((_e8654986564_ (gx#syntax-e _e8654686556_)))
                        (let ((_hd8655086567_ (##car _e8654986564_))
                              (_tl8655186569_ (##cdr _e8654986564_)))
                          (if (gx#stx-pair? _tl8655186569_)
                              (let ((_e8655286572_
                                     (gx#syntax-e _tl8655186569_)))
                                (let ((_hd8655386575_ (##car _e8655286572_))
                                      (_tl8655486577_ (##cdr _e8655286572_)))
                                  (let* ((_hd86580_ _hd8655386575_)
                                         (_body86582_ _tl8655486577_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd86580_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd86580_
                                            (make-list
                                             (gx#stx-length _hd86580_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8658486587_
                                                     _g8658586589_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8658486587_
                                               _g8658586589_
                                               '#t))
                                            _hd86580_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd86580_))
                                           (gx#core-expand-local-block
                                            _stx86545_
                                            _body86582_))
                                         gx#current-expander-context
                                         (let ((__obj88018
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88018)
                                           __obj88018))
                                        (_E8654886560_)))))
                              (_E8654886560_))))
                      (_E8654886560_)))))
          (_E8654786592_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx86502_)
        (if (gx#stx-list? _stx86502_)
            (gx#stx-andmap
             (lambda (_bind86504_)
               (let* ((_e8650586515_ _bind86504_)
                      (_E8650786519_ (lambda () '#f))
                      (_E8650686541_
                       (lambda ()
                         (if (gx#stx-pair? _e8650586515_)
                             (let ((_e8650886523_ (gx#syntax-e _e8650586515_)))
                               (let ((_hd8650986526_ (##car _e8650886523_))
                                     (_tl8651086528_ (##cdr _e8650886523_)))
                                 (let ((_hd86531_ _hd8650986526_))
                                   (if (gx#stx-pair? _tl8651086528_)
                                       (let ((_e8651186533_
                                              (gx#syntax-e _tl8651086528_)))
                                         (let ((_hd8651286536_
                                                (##car _e8651186533_))
                                               (_tl8651386538_
                                                (##cdr _e8651186533_)))
                                           (if (gx#stx-null? _tl8651386538_)
                                               (if '#t
                                                   (gx#identifier? _hd86531_)
                                                   (_E8650786519_))
                                               (_E8650786519_))))
                                       (_E8650786519_)))))
                             (_E8650786519_)))))
                 (_E8650686541_)))
             _stx86502_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind86459_)
        (let* ((_e8646086470_ _bind86459_)
               (_E8646286474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8646086470_)))
               (_E8646186498_
                (lambda ()
                  (if (gx#stx-pair? _e8646086470_)
                      (let ((_e8646386478_ (gx#syntax-e _e8646086470_)))
                        (let ((_hd8646486481_ (##car _e8646386478_))
                              (_tl8646586483_ (##cdr _e8646386478_)))
                          (if (gx#stx-pair? _tl8646586483_)
                              (let ((_e8646686486_
                                     (gx#syntax-e _tl8646586483_)))
                                (let ((_hd8646786489_ (##car _e8646686486_))
                                      (_tl8646886491_ (##cdr _e8646686486_)))
                                  (let ((_expr86494_ _hd8646786489_))
                                    (if (gx#stx-null? _tl8646886491_)
                                        (if '#t
                                            (let ((_g88027_
                                                   (gx#core-expand-expression+1
                                                    _expr86494_)))
                                              (begin
                                                (let ((_g88028_
                                                       (if (##values? _g88027_)
                                                           (##vector-length
                                                            _g88027_)
                                                           1)))
                                                  (if (not (##fx= _g88028_ 2))
                                                      (error "Context expects 2 values"
                                                             _g88028_)))
                                                (let ((_e86496_
                                                       (##vector-ref
                                                        _g88027_
                                                        1)))
                                                  _e86496_)))
                                            (_E8646286474_))
                                        (_E8646286474_)))))
                              (_E8646286474_))))
                      (_E8646286474_)))))
          (_E8646186498_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind86404_ _e86405_ _rebind?86406_)
        (let* ((_e8640786417_ _bind86404_)
               (_E8640986421_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8640786417_)))
               (_E8640886443_
                (lambda ()
                  (if (gx#stx-pair? _e8640786417_)
                      (let ((_e8641086425_ (gx#syntax-e _e8640786417_)))
                        (let ((_hd8641186428_ (##car _e8641086425_))
                              (_tl8641286430_ (##cdr _e8641086425_)))
                          (let ((_id86433_ _hd8641186428_))
                            (if (gx#stx-pair? _tl8641286430_)
                                (let ((_e8641386435_
                                       (gx#syntax-e _tl8641286430_)))
                                  (let ((_hd8641486438_ (##car _e8641386435_))
                                        (_tl8641586440_ (##cdr _e8641386435_)))
                                    (if (gx#stx-null? _tl8641586440_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id86433_
                                             _e86405_
                                             _rebind?86406_)
                                            (_E8640986421_))
                                        (_E8640986421_))))
                                (_E8640986421_)))))
                      (_E8640986421_)))))
          (_E8640886443_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind86450_ _e86451_)
        (let ((_rebind?86453_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind86450_
           _e86451_
           _rebind?86453_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g88030_
        (let ((_g88029_ (##length _g88030_)))
          (cond ((##fx= _g88029_ 2)
                 (apply (lambda (_bind86450_ _e86451_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind86450_
                           _e86451_))
                        _g88030_))
                ((##fx= _g88029_ 3)
                 (apply (lambda (_bind86455_ _e86456_ _rebind?86457_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind86455_
                           _e86456_
                           _rebind?86457_))
                        _g88030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g88030_))))))
    (define gx#core-expand-expression%
      (lambda (_stx86362_)
        (let* ((_e8636386373_ _stx86362_)
               (_E8636586377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8636386373_)))
               (_E8636486399_
                (lambda ()
                  (if (gx#stx-pair? _e8636386373_)
                      (let ((_e8636686381_ (gx#syntax-e _e8636386373_)))
                        (let ((_hd8636786384_ (##car _e8636686381_))
                              (_tl8636886386_ (##cdr _e8636686381_)))
                          (if (gx#stx-pair? _tl8636886386_)
                              (let ((_e8636986389_
                                     (gx#syntax-e _tl8636886386_)))
                                (let ((_hd8637086392_ (##car _e8636986389_))
                                      (_tl8637186394_ (##cdr _e8636986389_)))
                                  (let ((_expr86397_ _hd8637086392_))
                                    (if (gx#stx-null? _tl8637186394_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr86397_)
                                            (_E8636586377_))
                                        (_E8636586377_)))))
                              (_E8636586377_))))
                      (_E8636586377_)))))
          (_E8636486399_))))
    (define gx#core-expand-quote%
      (lambda (_stx86321_)
        (let* ((_e8632286332_ _stx86321_)
               (_E8632486336_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8632286332_)))
               (_E8632386358_
                (lambda ()
                  (if (gx#stx-pair? _e8632286332_)
                      (let ((_e8632586340_ (gx#syntax-e _e8632286332_)))
                        (let ((_hd8632686343_ (##car _e8632586340_))
                              (_tl8632786345_ (##cdr _e8632586340_)))
                          (if (gx#stx-pair? _tl8632786345_)
                              (let ((_e8632886348_
                                     (gx#syntax-e _tl8632786345_)))
                                (let ((_hd8632986351_ (##car _e8632886348_))
                                      (_tl8633086353_ (##cdr _e8632886348_)))
                                  (let ((_e86356_ _hd8632986351_))
                                    (if (gx#stx-null? _tl8633086353_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e86356_)
                                                         '()))
                                             (gx#stx-source _stx86321_))
                                            (_E8632486336_))
                                        (_E8632486336_)))))
                              (_E8632486336_))))
                      (_E8632486336_)))))
          (_E8632386358_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86280_)
        (let* ((_e8628186291_ _stx86280_)
               (_E8628386295_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8628186291_)))
               (_E8628286317_
                (lambda ()
                  (if (gx#stx-pair? _e8628186291_)
                      (let ((_e8628486299_ (gx#syntax-e _e8628186291_)))
                        (let ((_hd8628586302_ (##car _e8628486299_))
                              (_tl8628686304_ (##cdr _e8628486299_)))
                          (if (gx#stx-pair? _tl8628686304_)
                              (let ((_e8628786307_
                                     (gx#syntax-e _tl8628686304_)))
                                (let ((_hd8628886310_ (##car _e8628786307_))
                                      (_tl8628986312_ (##cdr _e8628786307_)))
                                  (let ((_e86315_ _hd8628886310_))
                                    (if (gx#stx-null? _tl8628986312_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e86315_)
                                                         '()))
                                             (gx#stx-source _stx86280_))
                                            (_E8628386295_))
                                        (_E8628386295_)))))
                              (_E8628386295_))))
                      (_E8628386295_)))))
          (_E8628286317_))))
    (define gx#core-expand-call%
      (lambda (_stx86237_)
        (let* ((_e8623886248_ _stx86237_)
               (_E8624086252_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8623886248_)))
               (_E8623986276_
                (lambda ()
                  (if (gx#stx-pair? _e8623886248_)
                      (let ((_e8624186256_ (gx#syntax-e _e8623886248_)))
                        (let ((_hd8624286259_ (##car _e8624186256_))
                              (_tl8624386261_ (##cdr _e8624186256_)))
                          (if (gx#stx-pair? _tl8624386261_)
                              (let ((_e8624486264_
                                     (gx#syntax-e _tl8624386261_)))
                                (let ((_hd8624586267_ (##car _e8624486264_))
                                      (_tl8624686269_ (##cdr _e8624486264_)))
                                  (let* ((_rator86272_ _hd8624586267_)
                                         (_args86274_ _tl8624686269_))
                                    (if (gx#stx-list? _args86274_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86272_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86274_))
                                         (gx#stx-source _stx86237_))
                                        (_E8624086252_)))))
                              (_E8624086252_))))
                      (_E8624086252_)))))
          (_E8623986276_))))
    (define gx#core-expand-if%
      (lambda (_stx86170_)
        (let* ((_e8617186187_ _stx86170_)
               (_E8617386191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8617186187_)))
               (_E8617286233_
                (lambda ()
                  (if (gx#stx-pair? _e8617186187_)
                      (let ((_e8617486195_ (gx#syntax-e _e8617186187_)))
                        (let ((_hd8617586198_ (##car _e8617486195_))
                              (_tl8617686200_ (##cdr _e8617486195_)))
                          (if (gx#stx-pair? _tl8617686200_)
                              (let ((_e8617786203_
                                     (gx#syntax-e _tl8617686200_)))
                                (let ((_hd8617886206_ (##car _e8617786203_))
                                      (_tl8617986208_ (##cdr _e8617786203_)))
                                  (let ((_test86211_ _hd8617886206_))
                                    (if (gx#stx-pair? _tl8617986208_)
                                        (let ((_e8618086213_
                                               (gx#syntax-e _tl8617986208_)))
                                          (let ((_hd8618186216_
                                                 (##car _e8618086213_))
                                                (_tl8618286218_
                                                 (##cdr _e8618086213_)))
                                            (let ((_K86221_ _hd8618186216_))
                                              (if (gx#stx-pair? _tl8618286218_)
                                                  (let ((_e8618386223_
                                                         (gx#syntax-e
                                                          _tl8618286218_)))
                                                    (let ((_hd8618486226_
                                                           (##car _e8618386223_))
                                                          (_tl8618586228_
                                                           (##cdr _e8618386223_)))
                                                      (let ((_E86231_
                                                             _hd8618486226_))
                                                        (if (gx#stx-null?
                                                             _tl8618586228_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86211_)
                                     (cons (gx#core-expand-expression _K86221_)
                                           (cons (gx#core-expand-expression
                                                  _E86231_)
                                                 '()))))
                         (gx#stx-source _stx86170_))
                        (_E8617386191_))
                    (_E8617386191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8617386191_)))))
                                        (_E8617386191_)))))
                              (_E8617386191_))))
                      (_E8617386191_)))))
          (_E8617286233_))))
    (define gx#core-expand-ref%
      (lambda (_stx86129_)
        (let* ((_e8613086140_ _stx86129_)
               (_E8613286144_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8613086140_)))
               (_E8613186166_
                (lambda ()
                  (if (gx#stx-pair? _e8613086140_)
                      (let ((_e8613386148_ (gx#syntax-e _e8613086140_)))
                        (let ((_hd8613486151_ (##car _e8613386148_))
                              (_tl8613586153_ (##cdr _e8613386148_)))
                          (if (gx#stx-pair? _tl8613586153_)
                              (let ((_e8613686156_
                                     (gx#syntax-e _tl8613586153_)))
                                (let ((_hd8613786159_ (##car _e8613686156_))
                                      (_tl8613886161_ (##cdr _e8613686156_)))
                                  (let ((_id86164_ _hd8613786159_))
                                    (if (gx#stx-null? _tl8613886161_)
                                        (if (gx#identifier? _id86164_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id86164_
                                                          _stx86129_)
                                                         '()))
                                             (gx#stx-source _stx86129_))
                                            (_E8613286144_))
                                        (_E8613286144_)))))
                              (_E8613286144_))))
                      (_E8613286144_)))))
          (_E8613186166_))))
    (define gx#core-expand-setq%
      (lambda (_stx86075_)
        (let* ((_e8607686089_ _stx86075_)
               (_E8607886093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8607686089_)))
               (_E8607786125_
                (lambda ()
                  (if (gx#stx-pair? _e8607686089_)
                      (let ((_e8607986097_ (gx#syntax-e _e8607686089_)))
                        (let ((_hd8608086100_ (##car _e8607986097_))
                              (_tl8608186102_ (##cdr _e8607986097_)))
                          (if (gx#stx-pair? _tl8608186102_)
                              (let ((_e8608286105_
                                     (gx#syntax-e _tl8608186102_)))
                                (let ((_hd8608386108_ (##car _e8608286105_))
                                      (_tl8608486110_ (##cdr _e8608286105_)))
                                  (let ((_id86113_ _hd8608386108_))
                                    (if (gx#stx-pair? _tl8608486110_)
                                        (let ((_e8608586115_
                                               (gx#syntax-e _tl8608486110_)))
                                          (let ((_hd8608686118_
                                                 (##car _e8608586115_))
                                                (_tl8608786120_
                                                 (##cdr _e8608586115_)))
                                            (let ((_expr86123_ _hd8608686118_))
                                              (if (gx#stx-null? _tl8608786120_)
                                                  (if (gx#identifier?
                                                       _id86113_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id86113_
                            _stx86075_)
                           (cons (gx#core-expand-expression _expr86123_) '())))
               (gx#stx-source _stx86075_))
              (_E8607886093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8607886093_)))))
                                        (_E8607886093_)))))
                              (_E8607886093_))))
                      (_E8607886093_)))))
          (_E8607786125_))))
    (define gx#macro-expand-extern
      (lambda (_stx85923_)
        (letrec ((_generate85925_
                  (lambda (_body85955_)
                    (let _lp85957_ ((_rest85959_ _body85955_)
                                    (_ns85960_ (gx#core-context-namespace__0))
                                    (_r85961_ '()))
                      (let* ((_e8596285977_ _rest85959_)
                             (_E8597585981_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8596285977_)))
                             (_E8597185985_
                              (lambda ()
                                (if (gx#stx-null? _e8596285977_)
                                    (if '#t (reverse _r85961_) (_E8597585981_))
                                    (_E8597585981_))))
                             (_E8596486042_
                              (lambda ()
                                (if (gx#stx-pair? _e8596285977_)
                                    (let ((_e8597285989_
                                           (gx#syntax-e _e8596285977_)))
                                      (let ((_hd8597385992_
                                             (##car _e8597285989_))
                                            (_tl8597485994_
                                             (##cdr _e8597285989_)))
                                        (let* ((_hd85997_ _hd8597385992_)
                                               (_rest85999_ _tl8597485994_))
                                          (if '#t
                                              (if (gx#identifier? _hd85997_)
                                                  (_lp85957_
                                                   _rest85999_
                                                   _ns85960_
                                                   (cons (cons _hd85997_
                                                               (cons (if _ns85960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd85997_
                                  _ns85960_
                                  '"#"
                                  _hd85997_)
                                 _hd85997_)
                             '()))
                 _r85961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8600086010_
                                                          _hd85997_)
                                                         (_E8600286014_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8600086010_)))
                                                         (_E8600186038_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8600086010_)
                        (let ((_e8600386018_ (gx#syntax-e _e8600086010_)))
                          (let ((_hd8600486021_ (##car _e8600386018_))
                                (_tl8600586023_ (##cdr _e8600386018_)))
                            (let ((_id86026_ _hd8600486021_))
                              (if (gx#stx-pair? _tl8600586023_)
                                  (let ((_e8600686028_
                                         (gx#syntax-e _tl8600586023_)))
                                    (let ((_hd8600786031_
                                           (##car _e8600686028_))
                                          (_tl8600886033_
                                           (##cdr _e8600686028_)))
                                      (let ((_eid86036_ _hd8600786031_))
                                        (if (gx#stx-null? _tl8600886033_)
                                            (if (and (gx#identifier? _id86026_)
                                                     (gx#identifier?
                                                      _eid86036_))
                                                (_lp85957_
                                                 _rest85999_
                                                 _ns85960_
                                                 (cons (cons _id86026_
                                                             (cons _eid86036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r85961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8600286014_))
                                            (_E8600286014_)))))
                                  (_E8600286014_)))))
                        (_E8600286014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8600186038_)))
                                              (_E8597185985_)))))
                                    (_E8597185985_))))
                             (_E8596386071_
                              (lambda ()
                                (if (gx#stx-pair? _e8596285977_)
                                    (let ((_e8596586046_
                                           (gx#syntax-e _e8596285977_)))
                                      (let ((_hd8596686049_
                                             (##car _e8596586046_))
                                            (_tl8596786051_
                                             (##cdr _e8596586046_)))
                                        (if (eq? (gx#stx-e _hd8596686049_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8596786051_)
                                                (let ((_e8596886054_
                                                       (gx#syntax-e
                                                        _tl8596786051_)))
                                                  (let ((_hd8596986057_
                                                         (##car _e8596886054_))
                                                        (_tl8597086059_
                                                         (##cdr _e8596886054_)))
                                                    (let* ((_ns86062_
                                                            _hd8596986057_)
                                                           (_rest86064_
                                                            _tl8597086059_))
                                                      (if '#t
                                                          (let ((_ns86069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns86062_)
                             (symbol->string (gx#stx-e _ns86062_))
                             (if (or (gx#stx-string? _ns86062_)
                                     (gx#stx-false? _ns86062_))
                                 (gx#stx-e _ns86062_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx85923_
                                  _ns86062_)))))
                    (_lp85957_ _rest86064_ _ns86069_ _r85961_))
                  (_E8596486042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8596486042_))
                                            (_E8596486042_))))
                                    (_E8596486042_)))))
                        (_E8596386071_))))))
          (let* ((_e8592685933_ _stx85923_)
                 (_E8592885937_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8592685933_)))
                 (_E8592785951_
                  (lambda ()
                    (if (gx#stx-pair? _e8592685933_)
                        (let ((_e8592985941_ (gx#syntax-e _e8592685933_)))
                          (let ((_hd8593085944_ (##car _e8592985941_))
                                (_tl8593185946_ (##cdr _e8592985941_)))
                            (let ((_body85949_ _tl8593185946_))
                              (if (gx#stx-list? _body85949_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate85925_ _body85949_))
                                  (_E8592885937_)))))
                        (_E8592885937_)))))
            (_E8592785951_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx85869_)
        (let* ((_e8587085883_ _stx85869_)
               (_E8587285887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8587085883_)))
               (_E8587185919_
                (lambda ()
                  (if (gx#stx-pair? _e8587085883_)
                      (let ((_e8587385891_ (gx#syntax-e _e8587085883_)))
                        (let ((_hd8587485894_ (##car _e8587385891_))
                              (_tl8587585896_ (##cdr _e8587385891_)))
                          (if (gx#stx-pair? _tl8587585896_)
                              (let ((_e8587685899_
                                     (gx#syntax-e _tl8587585896_)))
                                (let ((_hd8587785902_ (##car _e8587685899_))
                                      (_tl8587885904_ (##cdr _e8587685899_)))
                                  (let ((_hd85907_ _hd8587785902_))
                                    (if (gx#stx-pair? _tl8587885904_)
                                        (let ((_e8587985909_
                                               (gx#syntax-e _tl8587885904_)))
                                          (let ((_hd8588085912_
                                                 (##car _e8587985909_))
                                                (_tl8588185914_
                                                 (##cdr _e8587985909_)))
                                            (let ((_expr85917_ _hd8588085912_))
                                              (if (gx#stx-null? _tl8588185914_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd85907_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd85907_)
                          (cons _expr85917_ '())))
              (_E8587285887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8587285887_)))))
                                        (_E8587285887_)))))
                              (_E8587285887_))))
                      (_E8587285887_)))))
          (_E8587185919_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx85815_)
        (let* ((_e8581685829_ _stx85815_)
               (_E8581885833_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8581685829_)))
               (_E8581785865_
                (lambda ()
                  (if (gx#stx-pair? _e8581685829_)
                      (let ((_e8581985837_ (gx#syntax-e _e8581685829_)))
                        (let ((_hd8582085840_ (##car _e8581985837_))
                              (_tl8582185842_ (##cdr _e8581985837_)))
                          (if (gx#stx-pair? _tl8582185842_)
                              (let ((_e8582285845_
                                     (gx#syntax-e _tl8582185842_)))
                                (let ((_hd8582385848_ (##car _e8582285845_))
                                      (_tl8582485850_ (##cdr _e8582285845_)))
                                  (let ((_hd85853_ _hd8582385848_))
                                    (if (gx#stx-pair? _tl8582485850_)
                                        (let ((_e8582585855_
                                               (gx#syntax-e _tl8582485850_)))
                                          (let ((_hd8582685858_
                                                 (##car _e8582585855_))
                                                (_tl8582785860_
                                                 (##cdr _e8582585855_)))
                                            (let ((_expr85863_ _hd8582685858_))
                                              (if (gx#stx-null? _tl8582785860_)
                                                  (if (gx#identifier?
                                                       _hd85853_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd85853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr85863_ '())))
              (_E8581885833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8581885833_)))))
                                        (_E8581885833_)))))
                              (_E8581885833_))))
                      (_E8581885833_)))))
          (_E8581785865_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx85761_)
        (let* ((_e8576285775_ _stx85761_)
               (_E8576485779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8576285775_)))
               (_E8576385811_
                (lambda ()
                  (if (gx#stx-pair? _e8576285775_)
                      (let ((_e8576585783_ (gx#syntax-e _e8576285775_)))
                        (let ((_hd8576685786_ (##car _e8576585783_))
                              (_tl8576785788_ (##cdr _e8576585783_)))
                          (if (gx#stx-pair? _tl8576785788_)
                              (let ((_e8576885791_
                                     (gx#syntax-e _tl8576785788_)))
                                (let ((_hd8576985794_ (##car _e8576885791_))
                                      (_tl8577085796_ (##cdr _e8576885791_)))
                                  (let ((_id85799_ _hd8576985794_))
                                    (if (gx#stx-pair? _tl8577085796_)
                                        (let ((_e8577185801_
                                               (gx#syntax-e _tl8577085796_)))
                                          (let ((_hd8577285804_
                                                 (##car _e8577185801_))
                                                (_tl8577385806_
                                                 (##cdr _e8577185801_)))
                                            (let ((_alias-id85809_
                                                   _hd8577285804_))
                                              (if (gx#stx-null? _tl8577385806_)
                                                  (if (and (gx#identifier?
                                                            _id85799_)
                                                           (gx#identifier?
                                                            _alias-id85809_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id85799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id85809_ '())))
              (_E8576485779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8576485779_)))))
                                        (_E8576485779_)))))
                              (_E8576485779_))))
                      (_E8576485779_)))))
          (_E8576385811_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx85718_)
        (let* ((_e8571985729_ _stx85718_)
               (_E8572185733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8571985729_)))
               (_E8572085757_
                (lambda ()
                  (if (gx#stx-pair? _e8571985729_)
                      (let ((_e8572285737_ (gx#syntax-e _e8571985729_)))
                        (let ((_hd8572385740_ (##car _e8572285737_))
                              (_tl8572485742_ (##cdr _e8572285737_)))
                          (if (gx#stx-pair? _tl8572485742_)
                              (let ((_e8572585745_
                                     (gx#syntax-e _tl8572485742_)))
                                (let ((_hd8572685748_ (##car _e8572585745_))
                                      (_tl8572785750_ (##cdr _e8572585745_)))
                                  (let* ((_hd85753_ _hd8572685748_)
                                         (_body85755_ _tl8572785750_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd85753_)
                                             (gx#stx-list? _body85755_)
                                             (not (gx#stx-null? _body85755_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd85753_)
                                         _body85755_)
                                        (_E8572185733_)))))
                              (_E8572185733_))))
                      (_E8572185733_)))))
          (_E8572085757_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx85654_)
        (letrec ((_generate85656_
                  (lambda (_clause85686_)
                    (let* ((_e8568785694_ _clause85686_)
                           (_E8568985698_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx85654_
                               _clause85686_)))
                           (_E8568885714_
                            (lambda ()
                              (if (gx#stx-pair? _e8568785694_)
                                  (let ((_e8569085702_
                                         (gx#syntax-e _e8568785694_)))
                                    (let ((_hd8569185705_
                                           (##car _e8569085702_))
                                          (_tl8569285707_
                                           (##cdr _e8569085702_)))
                                      (let* ((_hd85710_ _hd8569185705_)
                                             (_body85712_ _tl8569285707_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd85710_)
                                                 (gx#stx-list? _body85712_)
                                                 (not (gx#stx-null?
                                                       _body85712_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd85710_)
                                                   _body85712_)
                                             (gx#stx-source _clause85686_))
                                            (_E8568985698_)))))
                                  (_E8568985698_)))))
                      (_E8568885714_)))))
          (let* ((_e8565785664_ _stx85654_)
                 (_E8565985668_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8565785664_)))
                 (_E8565885682_
                  (lambda ()
                    (if (gx#stx-pair? _e8565785664_)
                        (let ((_e8566085672_ (gx#syntax-e _e8565785664_)))
                          (let ((_hd8566185675_ (##car _e8566085672_))
                                (_tl8566285677_ (##cdr _e8566085672_)))
                            (let ((_clauses85680_ _tl8566285677_))
                              (if (gx#stx-list? _clauses85680_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate85656_
                                    _clauses85680_))
                                  (_E8565985668_)))))
                        (_E8565985668_)))))
            (_E8565885682_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx85555_ _form85556_)
        (letrec ((_generate85558_
                  (lambda (_bind85601_)
                    (let* ((_e8560285612_ _bind85601_)
                           (_E8560485616_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx85555_
                               _bind85601_)))
                           (_E8560385640_
                            (lambda ()
                              (if (gx#stx-pair? _e8560285612_)
                                  (let ((_e8560585620_
                                         (gx#syntax-e _e8560285612_)))
                                    (let ((_hd8560685623_
                                           (##car _e8560585620_))
                                          (_tl8560785625_
                                           (##cdr _e8560585620_)))
                                      (let ((_ids85628_ _hd8560685623_))
                                        (if (gx#stx-pair? _tl8560785625_)
                                            (let ((_e8560885630_
                                                   (gx#syntax-e
                                                    _tl8560785625_)))
                                              (let ((_hd8560985633_
                                                     (##car _e8560885630_))
                                                    (_tl8561085635_
                                                     (##cdr _e8560885630_)))
                                                (let ((_expr85638_
                                                       _hd8560985633_))
                                                  (if (gx#stx-null?
                                                       _tl8561085635_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids85628_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids85628_)
                        (cons _expr85638_ '()))
                  (_E8560485616_))
              (_E8560485616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8560485616_)))))
                                  (_E8560485616_)))))
                      (_E8560385640_)))))
          (let* ((_e8555985569_ _stx85555_)
                 (_E8556185573_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8555985569_)))
                 (_E8556085597_
                  (lambda ()
                    (if (gx#stx-pair? _e8555985569_)
                        (let ((_e8556285577_ (gx#syntax-e _e8555985569_)))
                          (let ((_hd8556385580_ (##car _e8556285577_))
                                (_tl8556485582_ (##cdr _e8556285577_)))
                            (if (gx#stx-pair? _tl8556485582_)
                                (let ((_e8556585585_
                                       (gx#syntax-e _tl8556485582_)))
                                  (let ((_hd8556685588_ (##car _e8556585585_))
                                        (_tl8556785590_ (##cdr _e8556585585_)))
                                    (let* ((_hd85593_ _hd8556685588_)
                                           (_body85595_ _tl8556785590_))
                                      (if (and (gx#stx-list? _hd85593_)
                                               (gx#stx-list? _body85595_)
                                               (not (gx#stx-null?
                                                     _body85595_)))
                                          (gx#core-cons*
                                           _form85556_
                                           (gx#stx-map1
                                            _generate85558_
                                            _hd85593_)
                                           _body85595_)
                                          (_E8556185573_)))))
                                (_E8556185573_))))
                        (_E8556185573_)))))
            (_E8556085597_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx85647_)
        (let ((_form85649_ '%#let-values))
          (gx#macro-expand-let-values__% _stx85647_ _form85649_))))
    (define gx#macro-expand-let-values
      (lambda _g88032_
        (let ((_g88031_ (##length _g88032_)))
          (cond ((##fx= _g88031_ 1)
                 (apply (lambda (_stx85647_)
                          (gx#macro-expand-let-values__0 _stx85647_))
                        _g88032_))
                ((##fx= _g88031_ 2)
                 (apply (lambda (_stx85651_ _form85652_)
                          (gx#macro-expand-let-values__%
                           _stx85651_
                           _form85652_))
                        _g88032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g88032_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx85552_)
        (gx#macro-expand-let-values__% _stx85552_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx85550_)
        (gx#macro-expand-let-values__% _stx85550_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx85441_)
        (let* ((_e8544285468_ _stx85441_)
               (_E8545485472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8544285468_)))
               (_E8544485514_
                (lambda ()
                  (if (gx#stx-pair? _e8544285468_)
                      (let ((_e8545585476_ (gx#syntax-e _e8544285468_)))
                        (let ((_hd8545685479_ (##car _e8545585476_))
                              (_tl8545785481_ (##cdr _e8545585476_)))
                          (if (gx#stx-pair? _tl8545785481_)
                              (let ((_e8545885484_
                                     (gx#syntax-e _tl8545785481_)))
                                (let ((_hd8545985487_ (##car _e8545885484_))
                                      (_tl8546085489_ (##cdr _e8545885484_)))
                                  (let ((_test85492_ _hd8545985487_))
                                    (if (gx#stx-pair? _tl8546085489_)
                                        (let ((_e8546185494_
                                               (gx#syntax-e _tl8546085489_)))
                                          (let ((_hd8546285497_
                                                 (##car _e8546185494_))
                                                (_tl8546385499_
                                                 (##cdr _e8546185494_)))
                                            (let ((_K85502_ _hd8546285497_))
                                              (if (gx#stx-pair? _tl8546385499_)
                                                  (let ((_e8546485504_
                                                         (gx#syntax-e
                                                          _tl8546385499_)))
                                                    (let ((_hd8546585507_
                                                           (##car _e8546485504_))
                                                          (_tl8546685509_
                                                           (##cdr _e8546485504_)))
                                                      (let ((_E85512_
                                                             _hd8546585507_))
                                                        (if (gx#stx-null?
                                                             _tl8546685509_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test85492_
                         _K85502_
                         _E85512_)
                        (_E8545485472_))
                    (_E8545485472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8545485472_)))))
                                        (_E8545485472_)))))
                              (_E8545485472_))))
                      (_E8545485472_))))
               (_E8544385546_
                (lambda ()
                  (if (gx#stx-pair? _e8544285468_)
                      (let ((_e8544585518_ (gx#syntax-e _e8544285468_)))
                        (let ((_hd8544685521_ (##car _e8544585518_))
                              (_tl8544785523_ (##cdr _e8544585518_)))
                          (if (gx#stx-pair? _tl8544785523_)
                              (let ((_e8544885526_
                                     (gx#syntax-e _tl8544785523_)))
                                (let ((_hd8544985529_ (##car _e8544885526_))
                                      (_tl8545085531_ (##cdr _e8544885526_)))
                                  (let ((_test85534_ _hd8544985529_))
                                    (if (gx#stx-pair? _tl8545085531_)
                                        (let ((_e8545185536_
                                               (gx#syntax-e _tl8545085531_)))
                                          (let ((_hd8545285539_
                                                 (##car _e8545185536_))
                                                (_tl8545385541_
                                                 (##cdr _e8545185536_)))
                                            (let ((_K85544_ _hd8545285539_))
                                              (if (gx#stx-null? _tl8545385541_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test85534_
                                                       _K85544_
                                                       '#!void)
                                                      (_E8544485514_))
                                                  (_E8544485514_)))))
                                        (_E8544485514_)))))
                              (_E8544485514_))))
                      (_E8544485514_)))))
          (_E8544385546_))))
    (define gx#free-identifier=?
      (lambda (_xid85429_ _yid85430_)
        (let ((_xe85432_ (gx#resolve-identifier__0 _xid85429_))
              (_ye85433_ (gx#resolve-identifier__0 _yid85430_)))
          (if (and _xe85432_ _ye85433_)
              (let ((_$e85435_ (eq? _xe85432_ _ye85433_)))
                (if _$e85435_
                    _$e85435_
                    (if (##structure-instance-of? _xe85432_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye85433_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe85432_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye85433_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe85432_ _ye85433_)
                  '#f
                  (gx#stx-eq? _xid85429_ _yid85430_))))))
    (define gx#bound-identifier=?
      (lambda (_xid85413_ _yid85414_)
        (letrec ((_context85416_
                  (lambda (_e85427_)
                    (if (##structure-direct-instance-of?
                         _e85427_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e85427_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks85417_
                  (lambda (_e85425_)
                    (if (symbol? _e85425_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e85425_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e85425_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e85425_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap85418_
                  (lambda (_e85423_)
                    (if (symbol? _e85423_)
                        _e85423_
                        (gx#syntax-local-unwrap _e85423_)))))
          (let ((_x85420_ (_unwrap85418_ _xid85413_))
                (_y85421_ (_unwrap85418_ _yid85414_)))
            (if (gx#stx-eq? _x85420_ _y85421_)
                (if (eq? (_context85416_ _x85420_) (_context85416_ _y85421_))
                    (equal? (_marks85417_ _x85420_) (_marks85417_ _y85421_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx85411_)
        (if (gx#identifier? _stx85411_)
            (gx#core-identifier=? _stx85411_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx85409_)
        (if (gx#identifier? _stx85409_)
            (gx#core-identifier=? _stx85409_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x85407_)
        (if (gx#identifier? _x85407_)
            (if (not (gx#underscore? _x85407_)) _x85407_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx85353_ _where85354_)
        (let _lp85356_ ((_rest85358_ (gx#syntax->list _stx85353_)))
          (let* ((_rest8535985367_ _rest85358_)
                 (_else8536185375_ (lambda () '#t))
                 (_K8536385385_
                  (lambda (_rest85378_ _hd85379_)
                    (if (not (gx#identifier? _hd85379_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where85354_
                         _hd85379_)
                        (if (find (lambda (_g8538085382_)
                                    (gx#bound-identifier=?
                                     _g8538085382_
                                     _hd85379_))
                                  _rest85378_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where85354_
                             _hd85379_)
                            (_lp85356_ _rest85378_))))))
            (if (##pair? _rest8535985367_)
                (let ((_hd8536485388_ (##car _rest8535985367_))
                      (_tl8536585390_ (##cdr _rest8535985367_)))
                  (let* ((_hd85393_ _hd8536485388_)
                         (_rest85395_ _tl8536585390_))
                    (_K8536385385_ _rest85395_ _hd85393_)))
                (_else8536185375_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx85400_)
        (let ((_where85402_ _stx85400_))
          (gx#check-duplicate-identifiers__% _stx85400_ _where85402_))))
    (define gx#check-duplicate-identifiers
      (lambda _g88034_
        (let ((_g88033_ (##length _g88034_)))
          (cond ((##fx= _g88033_ 1)
                 (apply (lambda (_stx85400_)
                          (gx#check-duplicate-identifiers__0 _stx85400_))
                        _g88034_))
                ((##fx= _g88033_ 2)
                 (apply (lambda (_stx85404_ _where85405_)
                          (gx#check-duplicate-identifiers__%
                           _stx85404_
                           _where85405_))
                        _g88034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g88034_))))))
    (define gx#core-bind-values?
      (lambda (_stx85345_)
        (gx#stx-andmap
         (lambda (_x85347_)
           (let ((_$e85349_ (gx#identifier? _x85347_)))
             (if _$e85349_ _$e85349_ (gx#stx-false? _x85347_))))
         _stx85345_)))
    (define gx#core-bind-values!__%
      (lambda (_stx85309_ _rebind?85310_ _phi85311_ _ctx85312_)
        (gx#stx-for-each1
         (lambda (_id85314_)
           (if (gx#identifier? _id85314_)
               (gx#core-bind-runtime!__%
                _id85314_
                _rebind?85310_
                _phi85311_
                _ctx85312_)
               '#!void))
         _stx85309_)))
    (define gx#core-bind-values!__0
      (lambda (_stx85319_)
        (let* ((_rebind?85321_ '#f)
               (_phi85323_ (gx#current-expander-phi))
               (_ctx85325_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85319_
           _rebind?85321_
           _phi85323_
           _ctx85325_))))
    (define gx#core-bind-values!__1
      (lambda (_stx85327_ _rebind?85328_)
        (let* ((_phi85330_ (gx#current-expander-phi))
               (_ctx85332_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85327_
           _rebind?85328_
           _phi85330_
           _ctx85332_))))
    (define gx#core-bind-values!__2
      (lambda (_stx85334_ _rebind?85335_ _phi85336_)
        (let ((_ctx85338_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85334_
           _rebind?85335_
           _phi85336_
           _ctx85338_))))
    (define gx#core-bind-values!
      (lambda _g88036_
        (let ((_g88035_ (##length _g88036_)))
          (cond ((##fx= _g88035_ 1)
                 (apply (lambda (_stx85319_)
                          (gx#core-bind-values!__0 _stx85319_))
                        _g88036_))
                ((##fx= _g88035_ 2)
                 (apply (lambda (_stx85327_ _rebind?85328_)
                          (gx#core-bind-values!__1 _stx85327_ _rebind?85328_))
                        _g88036_))
                ((##fx= _g88035_ 3)
                 (apply (lambda (_stx85334_ _rebind?85335_ _phi85336_)
                          (gx#core-bind-values!__2
                           _stx85334_
                           _rebind?85335_
                           _phi85336_))
                        _g88036_))
                ((##fx= _g88035_ 4)
                 (apply (lambda (_stx85340_
                                 _rebind?85341_
                                 _phi85342_
                                 _ctx85343_)
                          (gx#core-bind-values!__%
                           _stx85340_
                           _rebind?85341_
                           _phi85342_
                           _ctx85343_))
                        _g88036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g88036_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx85304_)
        (gx#stx-map1
         (lambda (_x85306_)
           (if (gx#identifier? _x85306_)
               (gx#core-quote-syntax__0 _x85306_)
               '#f))
         _stx85304_)))
    (define gx#core-runtime-ref?
      (lambda (_stx85297_)
        (if (gx#identifier? _stx85297_)
            (let* ((_bind85299_ (gx#resolve-identifier__0 _stx85297_))
                   (_$e85301_ (not _bind85299_)))
              (if _$e85301_
                  _$e85301_
                  (##structure-instance-of?
                   _bind85299_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id85289_ _form85290_)
        (let ((_bind85292_ (gx#resolve-identifier__0 _id85289_)))
          (if (##structure-instance-of? _bind85292_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id85289_)
              (if (not _bind85292_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id85289_)))
                      (gx#core-quote-syntax__0 _id85289_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form85290_
                       _id85289_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form85290_
                   _id85289_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85248_ _rebind?85249_ _phi85250_ _ctx85251_)
        (let* ((_key85253_ (gx#core-identifier-key _id85248_))
               (_eid85255_
                (gx#make-binding-id__% _key85253_ '#f _phi85250_ _ctx85251_))
               (_bind85257_
                (if (##structure-instance-of? _ctx85251_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85255_
                     _key85253_
                     _phi85250_
                     _ctx85251_)
                    (if (##structure-instance-of?
                         _ctx85251_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85255_
                         _key85253_
                         _phi85250_)
                        (if (##structure-instance-of?
                             _ctx85251_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85255_
                             _key85253_
                             _phi85250_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85255_
                             _key85253_
                             _phi85250_))))))
          (gx#bind-identifier!__%
           _id85248_
           _bind85257_
           _rebind?85249_
           _phi85250_
           _ctx85251_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85263_)
        (let* ((_rebind?85265_ '#f)
               (_phi85267_ (gx#current-expander-phi))
               (_ctx85269_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85263_
           _rebind?85265_
           _phi85267_
           _ctx85269_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85271_ _rebind?85272_)
        (let* ((_phi85274_ (gx#current-expander-phi))
               (_ctx85276_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85271_
           _rebind?85272_
           _phi85274_
           _ctx85276_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85278_ _rebind?85279_ _phi85280_)
        (let ((_ctx85282_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85278_
           _rebind?85279_
           _phi85280_
           _ctx85282_))))
    (define gx#core-bind-runtime!
      (lambda _g88038_
        (let ((_g88037_ (##length _g88038_)))
          (cond ((##fx= _g88037_ 1)
                 (apply (lambda (_id85263_)
                          (gx#core-bind-runtime!__0 _id85263_))
                        _g88038_))
                ((##fx= _g88037_ 2)
                 (apply (lambda (_id85271_ _rebind?85272_)
                          (gx#core-bind-runtime!__1 _id85271_ _rebind?85272_))
                        _g88038_))
                ((##fx= _g88037_ 3)
                 (apply (lambda (_id85278_ _rebind?85279_ _phi85280_)
                          (gx#core-bind-runtime!__2
                           _id85278_
                           _rebind?85279_
                           _phi85280_))
                        _g88038_))
                ((##fx= _g88037_ 4)
                 (apply (lambda (_id85284_
                                 _rebind?85285_
                                 _phi85286_
                                 _ctx85287_)
                          (gx#core-bind-runtime!__%
                           _id85284_
                           _rebind?85285_
                           _phi85286_
                           _ctx85287_))
                        _g88038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g88038_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85203_ _eid85204_ _rebind?85205_ _phi85206_ _ctx85207_)
        (let* ((_key85209_ (gx#core-identifier-key _id85203_))
               (_bind85211_
                (if (##structure-instance-of? _ctx85207_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85204_
                     _key85209_
                     _phi85206_
                     _ctx85207_)
                    (if (##structure-instance-of?
                         _ctx85207_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85204_
                         _key85209_
                         _phi85206_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85204_
                         _key85209_
                         _phi85206_)))))
          (gx#bind-identifier!__%
           _id85203_
           _bind85211_
           _rebind?85205_
           _phi85206_
           _ctx85207_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85217_ _eid85218_)
        (let* ((_rebind?85220_ '#f)
               (_phi85222_ (gx#current-expander-phi))
               (_ctx85224_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85217_
           _eid85218_
           _rebind?85220_
           _phi85222_
           _ctx85224_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85226_ _eid85227_ _rebind?85228_)
        (let* ((_phi85230_ (gx#current-expander-phi))
               (_ctx85232_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85226_
           _eid85227_
           _rebind?85228_
           _phi85230_
           _ctx85232_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85234_ _eid85235_ _rebind?85236_ _phi85237_)
        (let ((_ctx85239_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85234_
           _eid85235_
           _rebind?85236_
           _phi85237_
           _ctx85239_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g88040_
        (let ((_g88039_ (##length _g88040_)))
          (cond ((##fx= _g88039_ 2)
                 (apply (lambda (_id85217_ _eid85218_)
                          (gx#core-bind-runtime-reference!__0
                           _id85217_
                           _eid85218_))
                        _g88040_))
                ((##fx= _g88039_ 3)
                 (apply (lambda (_id85226_ _eid85227_ _rebind?85228_)
                          (gx#core-bind-runtime-reference!__1
                           _id85226_
                           _eid85227_
                           _rebind?85228_))
                        _g88040_))
                ((##fx= _g88039_ 4)
                 (apply (lambda (_id85234_
                                 _eid85235_
                                 _rebind?85236_
                                 _phi85237_)
                          (gx#core-bind-runtime-reference!__2
                           _id85234_
                           _eid85235_
                           _rebind?85236_
                           _phi85237_))
                        _g88040_))
                ((##fx= _g88039_ 5)
                 (apply (lambda (_id85241_
                                 _eid85242_
                                 _rebind?85243_
                                 _phi85244_
                                 _ctx85245_)
                          (gx#core-bind-runtime-reference!__%
                           _id85241_
                           _eid85242_
                           _rebind?85243_
                           _phi85244_
                           _ctx85245_))
                        _g88040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g88040_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id85163_ _eid85164_ _rebind?85165_ _phi85166_ _ctx85167_)
        (gx#bind-identifier!__%
         _id85163_
         (##structure
          gx#extern-binding::t
          _eid85164_
          (gx#core-identifier-key _id85163_)
          _phi85166_)
         _rebind?85165_
         _phi85166_
         _ctx85167_)))
    (define gx#core-bind-extern!__0
      (lambda (_id85172_ _eid85173_)
        (let* ((_rebind?85175_ '#f)
               (_phi85177_ (gx#current-expander-phi))
               (_ctx85179_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85172_
           _eid85173_
           _rebind?85175_
           _phi85177_
           _ctx85179_))))
    (define gx#core-bind-extern!__1
      (lambda (_id85181_ _eid85182_ _rebind?85183_)
        (let* ((_phi85185_ (gx#current-expander-phi))
               (_ctx85187_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85181_
           _eid85182_
           _rebind?85183_
           _phi85185_
           _ctx85187_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85189_ _eid85190_ _rebind?85191_ _phi85192_)
        (let ((_ctx85194_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85189_
           _eid85190_
           _rebind?85191_
           _phi85192_
           _ctx85194_))))
    (define gx#core-bind-extern!
      (lambda _g88042_
        (let ((_g88041_ (##length _g88042_)))
          (cond ((##fx= _g88041_ 2)
                 (apply (lambda (_id85172_ _eid85173_)
                          (gx#core-bind-extern!__0 _id85172_ _eid85173_))
                        _g88042_))
                ((##fx= _g88041_ 3)
                 (apply (lambda (_id85181_ _eid85182_ _rebind?85183_)
                          (gx#core-bind-extern!__1
                           _id85181_
                           _eid85182_
                           _rebind?85183_))
                        _g88042_))
                ((##fx= _g88041_ 4)
                 (apply (lambda (_id85189_
                                 _eid85190_
                                 _rebind?85191_
                                 _phi85192_)
                          (gx#core-bind-extern!__2
                           _id85189_
                           _eid85190_
                           _rebind?85191_
                           _phi85192_))
                        _g88042_))
                ((##fx= _g88041_ 5)
                 (apply (lambda (_id85196_
                                 _eid85197_
                                 _rebind?85198_
                                 _phi85199_
                                 _ctx85200_)
                          (gx#core-bind-extern!__%
                           _id85196_
                           _eid85197_
                           _rebind?85198_
                           _phi85199_
                           _ctx85200_))
                        _g88042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g88042_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id85117_ _e85118_ _rebind?85119_ _phi85120_ _ctx85121_)
        (gx#bind-identifier!__%
         _id85117_
         (let ((_key85126_ (gx#core-identifier-key _id85117_))
               (_e85127_
                (if (or (##structure-instance-of? _e85118_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e85118_
                         'gx#expander-context::t))
                    _e85118_
                    (##structure
                     gx#user-expander::t
                     _e85118_
                     _ctx85121_
                     _phi85120_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key85126_ '#t _phi85120_ _ctx85121_)
            _key85126_
            _phi85120_
            _e85127_))
         _rebind?85119_
         _phi85120_
         _ctx85121_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id85132_ _e85133_)
        (let* ((_rebind?85135_ '#f)
               (_phi85137_ (gx#current-expander-phi))
               (_ctx85139_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85132_
           _e85133_
           _rebind?85135_
           _phi85137_
           _ctx85139_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id85141_ _e85142_ _rebind?85143_)
        (let* ((_phi85145_ (gx#current-expander-phi))
               (_ctx85147_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85141_
           _e85142_
           _rebind?85143_
           _phi85145_
           _ctx85147_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id85149_ _e85150_ _rebind?85151_ _phi85152_)
        (let ((_ctx85154_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85149_
           _e85150_
           _rebind?85151_
           _phi85152_
           _ctx85154_))))
    (define gx#core-bind-syntax!
      (lambda _g88044_
        (let ((_g88043_ (##length _g88044_)))
          (cond ((##fx= _g88043_ 2)
                 (apply (lambda (_id85132_ _e85133_)
                          (gx#core-bind-syntax!__0 _id85132_ _e85133_))
                        _g88044_))
                ((##fx= _g88043_ 3)
                 (apply (lambda (_id85141_ _e85142_ _rebind?85143_)
                          (gx#core-bind-syntax!__1
                           _id85141_
                           _e85142_
                           _rebind?85143_))
                        _g88044_))
                ((##fx= _g88043_ 4)
                 (apply (lambda (_id85149_ _e85150_ _rebind?85151_ _phi85152_)
                          (gx#core-bind-syntax!__2
                           _id85149_
                           _e85150_
                           _rebind?85151_
                           _phi85152_))
                        _g88044_))
                ((##fx= _g88043_ 5)
                 (apply (lambda (_id85156_
                                 _e85157_
                                 _rebind?85158_
                                 _phi85159_
                                 _ctx85160_)
                          (gx#core-bind-syntax!__%
                           _id85156_
                           _e85157_
                           _rebind?85158_
                           _phi85159_
                           _ctx85160_))
                        _g88044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g88044_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id85100_ _e85101_ _rebind?85102_)
        (gx#core-bind-syntax!__%
         _id85100_
         _e85101_
         _rebind?85102_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id85107_ _e85108_)
        (let ((_rebind?85110_ '#f))
          (gx#core-bind-root-syntax!__% _id85107_ _e85108_ _rebind?85110_))))
    (define gx#core-bind-root-syntax!
      (lambda _g88046_
        (let ((_g88045_ (##length _g88046_)))
          (cond ((##fx= _g88045_ 2)
                 (apply (lambda (_id85107_ _e85108_)
                          (gx#core-bind-root-syntax!__0 _id85107_ _e85108_))
                        _g88046_))
                ((##fx= _g88045_ 3)
                 (apply (lambda (_id85112_ _e85113_ _rebind?85114_)
                          (gx#core-bind-root-syntax!__%
                           _id85112_
                           _e85113_
                           _rebind?85114_))
                        _g88046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g88046_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id85058_ _alias-id85059_ _rebind?85060_ _phi85061_ _ctx85062_)
        (gx#bind-identifier!__%
         _id85058_
         (let ((_key85064_ (gx#core-identifier-key _id85058_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key85064_ '#t _phi85061_ _ctx85062_)
            _key85064_
            _phi85061_
            _alias-id85059_))
         _rebind?85060_
         _phi85061_
         _ctx85062_)))
    (define gx#core-bind-alias!__0
      (lambda (_id85069_ _alias-id85070_)
        (let* ((_rebind?85072_ '#f)
               (_phi85074_ (gx#current-expander-phi))
               (_ctx85076_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85069_
           _alias-id85070_
           _rebind?85072_
           _phi85074_
           _ctx85076_))))
    (define gx#core-bind-alias!__1
      (lambda (_id85078_ _alias-id85079_ _rebind?85080_)
        (let* ((_phi85082_ (gx#current-expander-phi))
               (_ctx85084_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85078_
           _alias-id85079_
           _rebind?85080_
           _phi85082_
           _ctx85084_))))
    (define gx#core-bind-alias!__2
      (lambda (_id85086_ _alias-id85087_ _rebind?85088_ _phi85089_)
        (let ((_ctx85091_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85086_
           _alias-id85087_
           _rebind?85088_
           _phi85089_
           _ctx85091_))))
    (define gx#core-bind-alias!
      (lambda _g88048_
        (let ((_g88047_ (##length _g88048_)))
          (cond ((##fx= _g88047_ 2)
                 (apply (lambda (_id85069_ _alias-id85070_)
                          (gx#core-bind-alias!__0 _id85069_ _alias-id85070_))
                        _g88048_))
                ((##fx= _g88047_ 3)
                 (apply (lambda (_id85078_ _alias-id85079_ _rebind?85080_)
                          (gx#core-bind-alias!__1
                           _id85078_
                           _alias-id85079_
                           _rebind?85080_))
                        _g88048_))
                ((##fx= _g88047_ 4)
                 (apply (lambda (_id85086_
                                 _alias-id85087_
                                 _rebind?85088_
                                 _phi85089_)
                          (gx#core-bind-alias!__2
                           _id85086_
                           _alias-id85087_
                           _rebind?85088_
                           _phi85089_))
                        _g88048_))
                ((##fx= _g88047_ 5)
                 (apply (lambda (_id85093_
                                 _alias-id85094_
                                 _rebind?85095_
                                 _phi85096_
                                 _ctx85097_)
                          (gx#core-bind-alias!__%
                           _id85093_
                           _alias-id85094_
                           _rebind?85095_
                           _phi85096_
                           _ctx85097_))
                        _g88048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g88048_))))))
    (define gx#make-binding-id__%
      (lambda (_key85015_ _syntax?85016_ _phi85017_ _ctx85018_)
        (if (uninterned-symbol? _key85015_)
            (gensym 'L)
            (if (pair? _key85015_)
                (gensym (car _key85015_))
                (if (##structure-instance-of? _ctx85018_ 'gx#top-context::t)
                    (let ((_ns85020_
                           (gx#core-context-namespace__% _ctx85018_)))
                      (if (and (fxzero? _phi85017_) (not _syntax?85016_))
                          (if _ns85020_
                              (make-symbol__1 _ns85020_ '"#" _key85015_)
                              _key85015_)
                          (if _syntax?85016_
                              (make-symbol__1
                               (let ((_$e85022_ _ns85020_))
                                 (if _$e85022_ _$e85022_ '""))
                               '"[:"
                               (number->string _phi85017_)
                               '":]#"
                               _key85015_)
                              (make-symbol__1
                               (let ((_$e85025_ _ns85020_))
                                 (if _$e85025_ _$e85025_ '""))
                               '"["
                               (number->string _phi85017_)
                               '"]#"
                               _key85015_))))
                    (gensym _key85015_))))))
    (define gx#make-binding-id__0
      (lambda (_key85031_)
        (let* ((_syntax?85033_ '#f)
               (_phi85035_ (gx#current-expander-phi))
               (_ctx85037_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85031_
           _syntax?85033_
           _phi85035_
           _ctx85037_))))
    (define gx#make-binding-id__1
      (lambda (_key85039_ _syntax?85040_)
        (let* ((_phi85042_ (gx#current-expander-phi))
               (_ctx85044_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85039_
           _syntax?85040_
           _phi85042_
           _ctx85044_))))
    (define gx#make-binding-id__2
      (lambda (_key85046_ _syntax?85047_ _phi85048_)
        (let ((_ctx85050_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85046_
           _syntax?85047_
           _phi85048_
           _ctx85050_))))
    (define gx#make-binding-id
      (lambda _g88050_
        (let ((_g88049_ (##length _g88050_)))
          (cond ((##fx= _g88049_ 1)
                 (apply (lambda (_key85031_)
                          (gx#make-binding-id__0 _key85031_))
                        _g88050_))
                ((##fx= _g88049_ 2)
                 (apply (lambda (_key85039_ _syntax?85040_)
                          (gx#make-binding-id__1 _key85039_ _syntax?85040_))
                        _g88050_))
                ((##fx= _g88049_ 3)
                 (apply (lambda (_key85046_ _syntax?85047_ _phi85048_)
                          (gx#make-binding-id__2
                           _key85046_
                           _syntax?85047_
                           _phi85048_))
                        _g88050_))
                ((##fx= _g88049_ 4)
                 (apply (lambda (_key85052_
                                 _syntax?85053_
                                 _phi85054_
                                 _ctx85055_)
                          (gx#make-binding-id__%
                           _key85052_
                           _syntax?85053_
                           _phi85054_
                           _ctx85055_))
                        _g88050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g88050_))))))))
