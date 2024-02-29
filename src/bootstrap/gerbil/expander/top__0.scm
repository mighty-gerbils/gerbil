(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709213450)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89710_)
        (letrec ((_expand-special89712_
                  (lambda (_hd89714_ _K89715_ _rest89716_ _r89717_)
                    (_K89715_
                     _rest89716_
                     (cons (gx#core-expand-top _hd89714_) _r89717_)))))
          (gx#core-expand-block__0 _stx89710_ _expand-special89712_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89463_)
        (letrec ((_expand-special89465_
                  (lambda (_hd89585_ _K89586_ _rest89587_ _r89588_)
                    (let* ((_K89592_
                            (lambda (_e89590_)
                              (_K89586_ _rest89587_ (cons _e89590_ _r89588_))))
                           (_e8959389622_ _hd89585_)
                           (_E8961789626_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8959389622_)))
                           (_E8961389638_
                            (lambda ()
                              (if (gx#stx-pair? _e8959389622_)
                                  (let ((_e8961889630_
                                         (gx#syntax-e _e8959389622_)))
                                    (let ((_hd8961989633_
                                           (##car _e8961889630_))
                                          (_tl8962089635_
                                           (##cdr _e8961889630_)))
                                      (if (and (gx#identifier? _hd8961989633_)
                                               (gx#core-identifier=?
                                                _hd8961989633_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89592_
                                               (gx#core-expand-define-runtime%
                                                _hd89585_))
                                              (_E8961789626_))
                                          (_E8961789626_))))
                                  (_E8961789626_))))
                           (_E8960989650_
                            (lambda ()
                              (if (gx#stx-pair? _e8959389622_)
                                  (let ((_e8961489642_
                                         (gx#syntax-e _e8959389622_)))
                                    (let ((_hd8961589645_
                                           (##car _e8961489642_))
                                          (_tl8961689647_
                                           (##cdr _e8961489642_)))
                                      (if (and (gx#identifier? _hd8961589645_)
                                               (gx#core-identifier=?
                                                _hd8961589645_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89592_
                                               (gx#core-expand-define-alias%
                                                _hd89585_))
                                              (_E8961389638_))
                                          (_E8961389638_))))
                                  (_E8961389638_))))
                           (_E8959989662_
                            (lambda ()
                              (if (gx#stx-pair? _e8959389622_)
                                  (let ((_e8961089654_
                                         (gx#syntax-e _e8959389622_)))
                                    (let ((_hd8961189657_
                                           (##car _e8961089654_))
                                          (_tl8961289659_
                                           (##cdr _e8961089654_)))
                                      (if (and (gx#identifier? _hd8961189657_)
                                               (gx#core-identifier=?
                                                _hd8961189657_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89592_
                                               (gx#core-expand-define-syntax%
                                                _hd89585_))
                                              (_E8960989650_))
                                          (_E8960989650_))))
                                  (_E8960989650_))))
                           (_E8959589694_
                            (lambda ()
                              (if (gx#stx-pair? _e8959389622_)
                                  (let ((_e8960089666_
                                         (gx#syntax-e _e8959389622_)))
                                    (let ((_hd8960189669_
                                           (##car _e8960089666_))
                                          (_tl8960289671_
                                           (##cdr _e8960089666_)))
                                      (if (and (gx#identifier? _hd8960189669_)
                                               (gx#core-identifier=?
                                                _hd8960189669_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8960289671_)
                                              (let ((_e8960389674_
                                                     (gx#syntax-e
                                                      _tl8960289671_)))
                                                (let ((_hd8960489677_
                                                       (##car _e8960389674_))
                                                      (_tl8960589679_
                                                       (##cdr _e8960389674_)))
                                                  (let ((_hd-bind89682_
                                                         _hd8960489677_))
                                                    (if (gx#stx-pair?
                                                         _tl8960589679_)
                                                        (let ((_e8960689684_
                                                               (gx#syntax-e
                                                                _tl8960589679_)))
                                                          (let ((_hd8960789687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8960689684_))
                        (_tl8960889689_ (##cdr _e8960689684_)))
                    (let ((_expr89692_ _hd8960789687_))
                      (if (gx#stx-null? _tl8960889689_)
                          (if (gx#core-bind-values? _hd-bind89682_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89682_)
                                (_K89592_ _hd89585_))
                              (_E8959989662_))
                          (_E8959989662_)))))
                (_E8959989662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8959989662_))
                                          (_E8959989662_))))
                                  (_E8959989662_))))
                           (_E8959489706_
                            (lambda ()
                              (if (gx#stx-pair? _e8959389622_)
                                  (let ((_e8959689698_
                                         (gx#syntax-e _e8959389622_)))
                                    (let ((_hd8959789701_
                                           (##car _e8959689698_))
                                          (_tl8959889703_
                                           (##cdr _e8959689698_)))
                                      (if (and (gx#identifier? _hd8959789701_)
                                               (gx#core-identifier=?
                                                _hd8959789701_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89592_
                                               (gx#core-expand-begin-syntax%
                                                _hd89585_))
                                              (_E8959589694_))
                                          (_E8959589694_))))
                                  (_E8959589694_)))))
                      (_E8959489706_))))
                 (_eval-body89466_
                  (lambda (_rbody89474_)
                    (let _lp89476_ ((_rest89478_ _rbody89474_)
                                    (_body89479_ '())
                                    (_ebody89480_ '()))
                      (let* ((_rest8948189489_ _rest89478_)
                             (_else8948389497_
                              (lambda ()
                                (values _body89479_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89480_)
                                          (gx#stx-source _stx89463_))))))
                             (_K8948589573_
                              (lambda (_rest89500_ _hd89501_)
                                (let* ((_e8950289519_ _hd89501_)
                                       (_E8951489523_
                                        (lambda ()
                                          (_lp89476_
                                           _rest89500_
                                           (cons _hd89501_ _body89479_)
                                           (cons _hd89501_ _ebody89480_))))
                                       (_E8950489535_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8950289519_)
                                              (let ((_e8951589527_
                                                     (gx#syntax-e
                                                      _e8950289519_)))
                                                (let ((_hd8951689530_
                                                       (##car _e8951589527_))
                                                      (_tl8951789532_
                                                       (##cdr _e8951589527_)))
                                                  (if (and (gx#identifier?
                                                            _hd8951689530_)
                                                           (gx#core-identifier=?
                                                            _hd8951689530_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89476_
                                                           _rest89500_
                                                           (cons _hd89501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89479_)
                   _ebody89480_)
                  (_E8951489523_))
              (_E8951489523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8951489523_))))
                                       (_E8950389569_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8950289519_)
                                              (let ((_e8950589539_
                                                     (gx#syntax-e
                                                      _e8950289519_)))
                                                (let ((_hd8950689542_
                                                       (##car _e8950589539_))
                                                      (_tl8950789544_
                                                       (##cdr _e8950589539_)))
                                                  (if (and (gx#identifier?
                                                            _hd8950689542_)
                                                           (gx#core-identifier=?
                                                            _hd8950689542_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8950789544_)
                                                          (let ((_e8950889547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8950789544_)))
                    (let ((_hd8950989550_ (##car _e8950889547_))
                          (_tl8951089552_ (##cdr _e8950889547_)))
                      (let ((_hd-bind89555_ _hd8950989550_))
                        (if (gx#stx-pair? _tl8951089552_)
                            (let ((_e8951189557_ (gx#syntax-e _tl8951089552_)))
                              (let ((_hd8951289560_ (##car _e8951189557_))
                                    (_tl8951389562_ (##cdr _e8951189557_)))
                                (let ((_expr89565_ _hd8951289560_))
                                  (if (gx#stx-null? _tl8951389562_)
                                      (if '#t
                                          (let ((_ehd89567_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89555_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89565_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89501_))))
                                            (_lp89476_
                                             _rest89500_
                                             (cons _ehd89567_ _body89479_)
                                             (cons _ehd89567_ _ebody89480_)))
                                          (_E8950489535_))
                                      (_E8950489535_)))))
                            (_E8950489535_)))))
                  (_E8950489535_))
              (_E8950489535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8950489535_)))))
                                  (_E8950389569_)))))
                        (if (##pair? _rest8948189489_)
                            (let ((_hd8948689576_ (##car _rest8948189489_))
                                  (_tl8948789578_ (##cdr _rest8948189489_)))
                              (let* ((_hd89581_ _hd8948689576_)
                                     (_rest89583_ _tl8948789578_))
                                (_K8948589573_ _rest89583_ _hd89581_)))
                            (_else8948389497_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89469_
                     (gx#core-expand-block__1
                      _stx89463_
                      _expand-special89465_
                      '#f))
                    (_g89733_ (_eval-body89466_ _rbody89469_)))
               (begin
                 (let ((_g89734_
                        (if (##values? _g89733_)
                            (##vector-length _g89733_)
                            1)))
                   (if (not (##fx= _g89734_ 2))
                       (error "Context expects 2 values" _g89734_)))
                 (let ((_expanded-body89471_ (##vector-ref _g89733_ 0))
                       (_value89472_ (##vector-ref _g89733_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89471_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89472_ '())))
                    (gx#stx-source _stx89463_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89433_)
        (let* ((_e8943489441_ _stx89433_)
               (_E8943689445_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8943489441_)))
               (_E8943589459_
                (lambda ()
                  (if (gx#stx-pair? _e8943489441_)
                      (let ((_e8943789449_ (gx#syntax-e _e8943489441_)))
                        (let ((_hd8943889452_ (##car _e8943789449_))
                              (_tl8943989454_ (##cdr _e8943789449_)))
                          (let ((_body89457_ _tl8943989454_))
                            (if (gx#stx-list? _body89457_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89457_)
                                 (gx#stx-source _stx89433_))
                                (_E8943689445_)))))
                      (_E8943689445_)))))
          (_E8943589459_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89431_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89431_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx89377_)
        (let* ((_e8937889391_ _stx89377_)
               (_E8938089395_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937889391_)))
               (_E8937989427_
                (lambda ()
                  (if (gx#stx-pair? _e8937889391_)
                      (let ((_e8938189399_ (gx#syntax-e _e8937889391_)))
                        (let ((_hd8938289402_ (##car _e8938189399_))
                              (_tl8938389404_ (##cdr _e8938189399_)))
                          (if (gx#stx-pair? _tl8938389404_)
                              (let ((_e8938489407_
                                     (gx#syntax-e _tl8938389404_)))
                                (let ((_hd8938589410_ (##car _e8938489407_))
                                      (_tl8938689412_ (##cdr _e8938489407_)))
                                  (let ((_ann89415_ _hd8938589410_))
                                    (if (gx#stx-pair? _tl8938689412_)
                                        (let ((_e8938789417_
                                               (gx#syntax-e _tl8938689412_)))
                                          (let ((_hd8938889420_
                                                 (##car _e8938789417_))
                                                (_tl8938989422_
                                                 (##cdr _e8938789417_)))
                                            (let ((_expr89425_ _hd8938889420_))
                                              (if (gx#stx-null? _tl8938989422_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann89415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr89425_) '())))
               (gx#stx-source _stx89377_))
              (_E8938089395_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8938089395_)))))
                                        (_E8938089395_)))))
                              (_E8938089395_))))
                      (_E8938089395_)))))
          (_E8937989427_))))
    (define gx#core-expand-local-block
      (lambda (_stx89101_ _body89102_)
        (letrec ((_expand-special89104_
                  (lambda (_hd89372_ _K89373_ _rest89374_ _r89375_)
                    (_K89373_
                     '()
                     (cons (_expand-internal89105_ _hd89372_ _rest89374_)
                           _r89375_))))
                 (_expand-internal89105_
                  (lambda (_hd89368_ _rest89369_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal89107_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd89368_ _rest89369_))
                          (gx#stx-source _stx89101_))
                         _expand-internal-special89106_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89727
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89727)
                       __obj89727))))
                 (_expand-internal-special89106_
                  (lambda (_hd89263_ _K89264_ _rest89265_ _r89266_)
                    (let* ((_e8926789292_ _hd89263_)
                           (_E8928789296_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8926789292_)))
                           (_E8928389308_
                            (lambda ()
                              (if (gx#stx-pair? _e8926789292_)
                                  (let ((_e8928889300_
                                         (gx#syntax-e _e8926789292_)))
                                    (let ((_hd8928989303_
                                           (##car _e8928889300_))
                                          (_tl8929089305_
                                           (##cdr _e8928889300_)))
                                      (if (and (gx#identifier? _hd8928989303_)
                                               (gx#core-identifier=?
                                                _hd8928989303_
                                                '%#declare))
                                          (if '#t
                                              (_K89264_
                                               _rest89265_
                                               (cons (gx#core-expand-declare%
                                                      _hd89263_)
                                                     _r89266_))
                                              (_E8928789296_))
                                          (_E8928789296_))))
                                  (_E8928789296_))))
                           (_E8927989320_
                            (lambda ()
                              (if (gx#stx-pair? _e8926789292_)
                                  (let ((_e8928489312_
                                         (gx#syntax-e _e8926789292_)))
                                    (let ((_hd8928589315_
                                           (##car _e8928489312_))
                                          (_tl8928689317_
                                           (##cdr _e8928489312_)))
                                      (if (and (gx#identifier? _hd8928589315_)
                                               (gx#core-identifier=?
                                                _hd8928589315_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd89263_)
                                                (_K89264_
                                                 _rest89265_
                                                 _r89266_))
                                              (_E8928389308_))
                                          (_E8928389308_))))
                                  (_E8928389308_))))
                           (_E8926989332_
                            (lambda ()
                              (if (gx#stx-pair? _e8926789292_)
                                  (let ((_e8928089324_
                                         (gx#syntax-e _e8926789292_)))
                                    (let ((_hd8928189327_
                                           (##car _e8928089324_))
                                          (_tl8928289329_
                                           (##cdr _e8928089324_)))
                                      (if (and (gx#identifier? _hd8928189327_)
                                               (gx#core-identifier=?
                                                _hd8928189327_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd89263_)
                                                (_K89264_
                                                 _rest89265_
                                                 _r89266_))
                                              (_E8927989320_))
                                          (_E8927989320_))))
                                  (_E8927989320_))))
                           (_E8926889364_
                            (lambda ()
                              (if (gx#stx-pair? _e8926789292_)
                                  (let ((_e8927089336_
                                         (gx#syntax-e _e8926789292_)))
                                    (let ((_hd8927189339_
                                           (##car _e8927089336_))
                                          (_tl8927289341_
                                           (##cdr _e8927089336_)))
                                      (if (and (gx#identifier? _hd8927189339_)
                                               (gx#core-identifier=?
                                                _hd8927189339_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8927289341_)
                                              (let ((_e8927389344_
                                                     (gx#syntax-e
                                                      _tl8927289341_)))
                                                (let ((_hd8927489347_
                                                       (##car _e8927389344_))
                                                      (_tl8927589349_
                                                       (##cdr _e8927389344_)))
                                                  (let ((_hd-bind89352_
                                                         _hd8927489347_))
                                                    (if (gx#stx-pair?
                                                         _tl8927589349_)
                                                        (let ((_e8927689354_
                                                               (gx#syntax-e
                                                                _tl8927589349_)))
                                                          (let ((_hd8927789357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8927689354_))
                        (_tl8927889359_ (##cdr _e8927689354_)))
                    (let ((_expr89362_ _hd8927789357_))
                      (if (gx#stx-null? _tl8927889359_)
                          (if (gx#core-bind-values? _hd-bind89352_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89352_)
                                (_K89264_
                                 _rest89265_
                                 (cons _hd89263_ _r89266_)))
                              (_E8926989332_))
                          (_E8926989332_)))))
                (_E8926989332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8926989332_))
                                          (_E8926989332_))))
                                  (_E8926989332_)))))
                      (_E8926889364_))))
                 (_wrap-internal89107_
                  (lambda (_rbody89109_)
                    (let _lp89111_ ((_rest89113_ _rbody89109_)
                                    (_decls89114_ '())
                                    (_bind89115_ '())
                                    (_body89116_ '()))
                      (let* ((_e8911789124_ _rest89113_)
                             (_E8911989173_
                              (lambda ()
                                (let* ((_body89168_
                                        (let* ((_body8912789137_ _body89116_)
                                               (_else8913089145_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89116_)
                                                   (gx#stx-source
                                                    _stx89101_)))))
                                          (let ((_K8913589165_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx89101_)))
                                                (_K8913289151_
                                                 (lambda (_expr89149_)
                                                   _expr89149_)))
                                            (let ((_try-match8912989161_
                                                   (lambda ()
                                                     (if (##pair? _body8912789137_)
                                                         (let ((_tl8913489156_
                                                                (##cdr _body8912789137_))
                                                               (_hd8913389154_
                                                                (##car _body8912789137_)))
                                                           (if (##null? _tl8913489156_)
                                                               (let ((_expr89159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8913389154_))
                         (_K8913289151_ _expr89159_))
                       (_else8913089145_)))
                 (_else8913089145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8912789137_)
                                                  (_K8913589165_)
                                                  (_try-match8912989161_))))))
                                       (_body89170_
                                        (if (null? _bind89115_)
                                            _body89168_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind89115_
                                                         (cons _body89168_
                                                               '())))
                                             (gx#stx-source _stx89101_)))))
                                  (if (null? _decls89114_)
                                      _body89170_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls89114_
                                                   (cons _body89170_ '())))
                                       (gx#stx-source _stx89101_))))))
                             (_E8911889259_
                              (lambda ()
                                (if (gx#stx-pair? _e8911789124_)
                                    (let ((_e8912089177_
                                           (gx#syntax-e _e8911789124_)))
                                      (let ((_hd8912189180_
                                             (##car _e8912089177_))
                                            (_tl8912289182_
                                             (##cdr _e8912089177_)))
                                        (let* ((_hd89185_ _hd8912189180_)
                                               (_rest89187_ _tl8912289182_))
                                          (if '#t
                                              (let* ((_e8918889205_ _hd89185_)
                                                     (_E8920089209_
                                                      (lambda ()
                                                        (if (null? _bind89115_)
                                                            (_lp89111_
                                                             _rest89187_
                                                             _decls89114_
                                                             _bind89115_
                                                             (cons _hd89185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body89116_))
                    (_lp89111_
                     _rest89187_
                     _decls89114_
                     (cons (cons '#f (cons _hd89185_ '())) _bind89115_)
                     _body89116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8919089223_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8918889205_)
                                                            (let ((_e8920189213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8918889205_)))
                      (let ((_hd8920289216_ (##car _e8920189213_))
                            (_tl8920389218_ (##cdr _e8920189213_)))
                        (if (and (gx#identifier? _hd8920289216_)
                                 (gx#core-identifier=?
                                  _hd8920289216_
                                  '%#declare))
                            (let ((_xdecls89221_ _tl8920389218_))
                              (if '#t
                                  (_lp89111_
                                   _rest89187_
                                   (gx#stx-foldr
                                    cons
                                    _decls89114_
                                    _xdecls89221_)
                                   _bind89115_
                                   _body89116_)
                                  (_E8920089209_)))
                            (_E8920089209_))))
                    (_E8920089209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8918989255_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8918889205_)
                                                            (let ((_e8919189227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8918889205_)))
                      (let ((_hd8919289230_ (##car _e8919189227_))
                            (_tl8919389232_ (##cdr _e8919189227_)))
                        (if (and (gx#identifier? _hd8919289230_)
                                 (gx#core-identifier=?
                                  _hd8919289230_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8919389232_)
                                (let ((_e8919489235_
                                       (gx#syntax-e _tl8919389232_)))
                                  (let ((_hd8919589238_ (##car _e8919489235_))
                                        (_tl8919689240_ (##cdr _e8919489235_)))
                                    (let ((_hd-bind89243_ _hd8919589238_))
                                      (if (gx#stx-pair? _tl8919689240_)
                                          (let ((_e8919789245_
                                                 (gx#syntax-e _tl8919689240_)))
                                            (let ((_hd8919889248_
                                                   (##car _e8919789245_))
                                                  (_tl8919989250_
                                                   (##cdr _e8919789245_)))
                                              (let ((_expr89253_
                                                     _hd8919889248_))
                                                (if (gx#stx-null?
                                                     _tl8919989250_)
                                                    (if '#t
                                                        (_lp89111_
                                                         _rest89187_
                                                         _decls89114_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind89243_)
                             (cons (gx#core-expand-expression _expr89253_)
                                   '()))
                       _bind89115_)
                 _body89116_)
                (_E8919089223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8919089223_)))))
                                          (_E8919089223_)))))
                                (_E8919089223_))
                            (_E8919089223_))))
                    (_E8919089223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8918989255_))
                                              (_E8911989173_)))))
                                    (_E8911989173_)))))
                        (_E8911889259_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body89102_)
            (gx#stx-source _stx89101_))
           _expand-special89104_))))
    (define gx#core-expand-declare%
      (lambda (_stx89039_)
        (let* ((_e8904089047_ _stx89039_)
               (_E8904289051_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8904089047_)))
               (_E8904189097_
                (lambda ()
                  (if (gx#stx-pair? _e8904089047_)
                      (let ((_e8904389055_ (gx#syntax-e _e8904089047_)))
                        (let ((_hd8904489058_ (##car _e8904389055_))
                              (_tl8904589060_ (##cdr _e8904389055_)))
                          (let ((_body89063_ _tl8904589060_))
                            (if (gx#stx-list? _body89063_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89065_)
                                     (let* ((_e8906689073_ _decl89065_)
                                            (_E8906889077_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8906689073_)))
                                            (_E8906789093_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8906689073_)
                                                   (let ((_e8906989081_
                                                          (gx#syntax-e
                                                           _e8906689073_)))
                                                     (let ((_hd8907089084_
                                                            (##car _e8906989081_))
                                                           (_tl8907189086_
                                                            (##cdr _e8906989081_)))
                                                       (let* ((_head89089_
                                                               _hd8907089084_)
                                                              (_args89091_
                                                               _tl8907189086_))
                                                         (if (gx#stx-list?
                                                              _args89091_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89065_)
                                                             (_E8906889077_)))))
                                                   (_E8906889077_)))))
                                       (_E8906789093_)))
                                   _body89063_))
                                 (gx#stx-source _stx89039_))
                                (_E8904289051_)))))
                      (_E8904289051_)))))
          (_E8904189097_))))
    (define gx#core-expand-extern%
      (lambda (_stx88943_)
        (let* ((_e8894488951_ _stx88943_)
               (_E8894688955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8894488951_)))
               (_E8894589035_
                (lambda ()
                  (if (gx#stx-pair? _e8894488951_)
                      (let ((_e8894788959_ (gx#syntax-e _e8894488951_)))
                        (let ((_hd8894888962_ (##car _e8894788959_))
                              (_tl8894988964_ (##cdr _e8894788959_)))
                          (let ((_body88967_ _tl8894988964_))
                            (if '#t
                                (let _lp88969_ ((_rest88971_ _body88967_)
                                                (_r88972_ '()))
                                  (let* ((_e8897388987_ _rest88971_)
                                         (_E8898588991_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88943_)))
                                         (_E8897588995_
                                          (lambda ()
                                            (if (gx#stx-null? _e8897388987_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88972_))
                                                     (gx#stx-source
                                                      _stx88943_))
                                                    (_E8898588991_))
                                                (_E8898588991_))))
                                         (_E8897489031_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8897388987_)
                                                (let ((_e8897688999_
                                                       (gx#syntax-e
                                                        _e8897388987_)))
                                                  (let ((_hd8897789002_
                                                         (##car _e8897688999_))
                                                        (_tl8897889004_
                                                         (##cdr _e8897688999_)))
                                                    (if (gx#stx-pair?
                                                         _hd8897789002_)
                                                        (let ((_e8897989007_
                                                               (gx#syntax-e
                                                                _hd8897789002_)))
                                                          (let ((_hd8898089010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8897989007_))
                        (_tl8898189012_ (##cdr _e8897989007_)))
                    (let ((_id89015_ _hd8898089010_))
                      (if (gx#stx-pair? _tl8898189012_)
                          (let ((_e8898289017_ (gx#syntax-e _tl8898189012_)))
                            (let ((_hd8898389020_ (##car _e8898289017_))
                                  (_tl8898489022_ (##cdr _e8898289017_)))
                              (let ((_eid89025_ _hd8898389020_))
                                (if (gx#stx-null? _tl8898489022_)
                                    (let ((_rest89027_ _tl8897889004_))
                                      (if (and (gx#identifier? _id89015_)
                                               (gx#identifier? _eid89025_))
                                          (let ((_eid89029_
                                                 (gx#stx-e _eid89025_)))
                                            (gx#core-bind-extern!__0
                                             _id89015_
                                             _eid89029_)
                                            (_lp88969_
                                             _rest89027_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89015_)
                                                         (cons _eid89029_ '()))
                                                   _r88972_)))
                                          (_E8897588995_)))
                                    (_E8897588995_)))))
                          (_E8897588995_)))))
                (_E8897588995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8897588995_)))))
                                    (_E8897489031_)))
                                (_E8894688955_)))))
                      (_E8894688955_)))))
          (_E8894589035_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88889_)
        (let* ((_e8889088903_ _stx88889_)
               (_E8889288907_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8889088903_)))
               (_E8889188939_
                (lambda ()
                  (if (gx#stx-pair? _e8889088903_)
                      (let ((_e8889388911_ (gx#syntax-e _e8889088903_)))
                        (let ((_hd8889488914_ (##car _e8889388911_))
                              (_tl8889588916_ (##cdr _e8889388911_)))
                          (if (gx#stx-pair? _tl8889588916_)
                              (let ((_e8889688919_
                                     (gx#syntax-e _tl8889588916_)))
                                (let ((_hd8889788922_ (##car _e8889688919_))
                                      (_tl8889888924_ (##cdr _e8889688919_)))
                                  (let ((_hd88927_ _hd8889788922_))
                                    (if (gx#stx-pair? _tl8889888924_)
                                        (let ((_e8889988929_
                                               (gx#syntax-e _tl8889888924_)))
                                          (let ((_hd8890088932_
                                                 (##car _e8889988929_))
                                                (_tl8890188934_
                                                 (##cdr _e8889988929_)))
                                            (let ((_expr88937_ _hd8890088932_))
                                              (if (gx#stx-null? _tl8890188934_)
                                                  (if (gx#core-bind-values?
                                                       _hd88927_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88927_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88927_)
                             (cons (gx#core-expand-expression _expr88937_)
                                   '())))
                 (gx#stx-source _stx88889_)))
              (_E8889288907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8889288907_)))))
                                        (_E8889288907_)))))
                              (_E8889288907_))))
                      (_E8889288907_)))))
          (_E8889188939_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88833_)
        (let* ((_e8883488847_ _stx88833_)
               (_E8883688851_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8883488847_)))
               (_E8883588885_
                (lambda ()
                  (if (gx#stx-pair? _e8883488847_)
                      (let ((_e8883788855_ (gx#syntax-e _e8883488847_)))
                        (let ((_hd8883888858_ (##car _e8883788855_))
                              (_tl8883988860_ (##cdr _e8883788855_)))
                          (if (gx#stx-pair? _tl8883988860_)
                              (let ((_e8884088863_
                                     (gx#syntax-e _tl8883988860_)))
                                (let ((_hd8884188866_ (##car _e8884088863_))
                                      (_tl8884288868_ (##cdr _e8884088863_)))
                                  (let ((_id88871_ _hd8884188866_))
                                    (if (gx#stx-pair? _tl8884288868_)
                                        (let ((_e8884388873_
                                               (gx#syntax-e _tl8884288868_)))
                                          (let ((_hd8884488876_
                                                 (##car _e8884388873_))
                                                (_tl8884588878_
                                                 (##cdr _e8884388873_)))
                                            (let ((_binding-id88881_
                                                   _hd8884488876_))
                                              (if (gx#stx-null? _tl8884588878_)
                                                  (if (and (gx#identifier?
                                                            _id88871_)
                                                           (gx#identifier?
                                                            _binding-id88881_))
                                                      (let ((_eid88883_
                                                             (gx#stx-e
                                                              _binding-id88881_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88871_
                                                         _eid88883_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88871_)
                             (cons _eid88883_ '())))))
              (_E8883688851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8883688851_)))))
                                        (_E8883688851_)))))
                              (_E8883688851_))))
                      (_E8883688851_)))))
          (_E8883588885_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88776_)
        (let* ((_e8877788790_ _stx88776_)
               (_E8877988794_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8877788790_)))
               (_E8877888829_
                (lambda ()
                  (if (gx#stx-pair? _e8877788790_)
                      (let ((_e8878088798_ (gx#syntax-e _e8877788790_)))
                        (let ((_hd8878188801_ (##car _e8878088798_))
                              (_tl8878288803_ (##cdr _e8878088798_)))
                          (if (gx#stx-pair? _tl8878288803_)
                              (let ((_e8878388806_
                                     (gx#syntax-e _tl8878288803_)))
                                (let ((_hd8878488809_ (##car _e8878388806_))
                                      (_tl8878588811_ (##cdr _e8878388806_)))
                                  (let ((_id88814_ _hd8878488809_))
                                    (if (gx#stx-pair? _tl8878588811_)
                                        (let ((_e8878688816_
                                               (gx#syntax-e _tl8878588811_)))
                                          (let ((_hd8878788819_
                                                 (##car _e8878688816_))
                                                (_tl8878888821_
                                                 (##cdr _e8878688816_)))
                                            (let ((_expr88824_ _hd8878788819_))
                                              (if (gx#stx-null? _tl8878888821_)
                                                  (if (gx#identifier?
                                                       _id88814_)
                                                      (let ((_g89735_
                                                             (gx#core-expand-expression+1
                                                              _expr88824_)))
                                                        (begin
                                                          (let ((_g89736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89735_)
                             (##vector-length _g89735_)
                             1)))
                    (if (not (##fx= _g89736_ 2))
                        (error "Context expects 2 values" _g89736_)))
                  (let ((_e-stx88826_ (##vector-ref _g89735_ 0))
                        (_e88827_ (##vector-ref _g89735_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88814_ _e88827_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88814_)
                                   (cons _e-stx88826_ '())))
                       (gx#stx-source _stx88776_))))))
              (_E8877988794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8877988794_)))))
                                        (_E8877988794_)))))
                              (_E8877988794_))))
                      (_E8877988794_)))))
          (_E8877888829_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88720_)
        (let* ((_e8872188734_ _stx88720_)
               (_E8872388738_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8872188734_)))
               (_E8872288772_
                (lambda ()
                  (if (gx#stx-pair? _e8872188734_)
                      (let ((_e8872488742_ (gx#syntax-e _e8872188734_)))
                        (let ((_hd8872588745_ (##car _e8872488742_))
                              (_tl8872688747_ (##cdr _e8872488742_)))
                          (if (gx#stx-pair? _tl8872688747_)
                              (let ((_e8872788750_
                                     (gx#syntax-e _tl8872688747_)))
                                (let ((_hd8872888753_ (##car _e8872788750_))
                                      (_tl8872988755_ (##cdr _e8872788750_)))
                                  (let ((_id88758_ _hd8872888753_))
                                    (if (gx#stx-pair? _tl8872988755_)
                                        (let ((_e8873088760_
                                               (gx#syntax-e _tl8872988755_)))
                                          (let ((_hd8873188763_
                                                 (##car _e8873088760_))
                                                (_tl8873288765_
                                                 (##cdr _e8873088760_)))
                                            (let ((_alias-id88768_
                                                   _hd8873188763_))
                                              (if (gx#stx-null? _tl8873288765_)
                                                  (if (and (gx#identifier?
                                                            _id88758_)
                                                           (gx#identifier?
                                                            _alias-id88768_))
                                                      (let ((_alias-id88770_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88768_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88758_
                                                         _alias-id88770_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88758_)
                             (cons _alias-id88770_ '())))))
              (_E8872388738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8872388738_)))))
                                        (_E8872388738_)))))
                              (_E8872388738_))))
                      (_E8872388738_)))))
          (_E8872288772_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88663_ _wrap?88664_)
        (let* ((_e8866588675_ _stx88663_)
               (_E8866788679_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8866588675_)))
               (_E8866688706_
                (lambda ()
                  (if (gx#stx-pair? _e8866588675_)
                      (let ((_e8866888683_ (gx#syntax-e _e8866588675_)))
                        (let ((_hd8866988686_ (##car _e8866888683_))
                              (_tl8867088688_ (##cdr _e8866888683_)))
                          (if (gx#stx-pair? _tl8867088688_)
                              (let ((_e8867188691_
                                     (gx#syntax-e _tl8867088688_)))
                                (let ((_hd8867288694_ (##car _e8867188691_))
                                      (_tl8867388696_ (##cdr _e8867188691_)))
                                  (let* ((_hd88699_ _hd8867288694_)
                                         (_body88701_ _tl8867388696_))
                                    (if (gx#core-bind-values? _hd88699_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88699_)
                                           (let ((_body88704_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88699_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88663_
                                                               _body88701_)
                                                              '()))))
                                             (if _wrap?88664_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88704_)
                                                  (gx#stx-source _stx88663_))
                                                 _body88704_)))
                                         gx#current-expander-context
                                         (let ((__obj89728
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89728)
                                           __obj89728))
                                        (_E8866788679_)))))
                              (_E8866788679_))))
                      (_E8866788679_)))))
          (_E8866688706_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88713_)
        (let ((_wrap?88715_ '#t))
          (gx#core-expand-lambda%__% _stx88713_ _wrap?88715_))))
    (define gx#core-expand-lambda%
      (lambda _g89738_
        (let ((_g89737_ (##length _g89738_)))
          (cond ((##fx= _g89737_ 1)
                 (apply (lambda (_stx88713_)
                          (gx#core-expand-lambda%__0 _stx88713_))
                        _g89738_))
                ((##fx= _g89737_ 2)
                 (apply (lambda (_stx88717_ _wrap?88718_)
                          (gx#core-expand-lambda%__% _stx88717_ _wrap?88718_))
                        _g89738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89738_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88627_)
        (let* ((_e8862888635_ _stx88627_)
               (_E8863088639_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8862888635_)))
               (_E8862988658_
                (lambda ()
                  (if (gx#stx-pair? _e8862888635_)
                      (let ((_e8863188643_ (gx#syntax-e _e8862888635_)))
                        (let ((_hd8863288646_ (##car _e8863188643_))
                              (_tl8863388648_ (##cdr _e8863188643_)))
                          (let ((_clauses88651_ _tl8863388648_))
                            (if (gx#stx-list? _clauses88651_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88653_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88653_)
                                       (let ((_$e88655_
                                              (gx#stx-source _clause88653_)))
                                         (if _$e88655_
                                             _$e88655_
                                             (gx#stx-source _stx88627_))))
                                      '#f))
                                   _clauses88651_))
                                 (gx#stx-source _stx88627_))
                                (_E8863088639_)))))
                      (_E8863088639_)))))
          (_E8862988658_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88581_)
        (let* ((_e8858288592_ _stx88581_)
               (_E8858488596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8858288592_)))
               (_E8858388623_
                (lambda ()
                  (if (gx#stx-pair? _e8858288592_)
                      (let ((_e8858588600_ (gx#syntax-e _e8858288592_)))
                        (let ((_hd8858688603_ (##car _e8858588600_))
                              (_tl8858788605_ (##cdr _e8858588600_)))
                          (if (gx#stx-pair? _tl8858788605_)
                              (let ((_e8858888608_
                                     (gx#syntax-e _tl8858788605_)))
                                (let ((_hd8858988611_ (##car _e8858888608_))
                                      (_tl8859088613_ (##cdr _e8858888608_)))
                                  (let* ((_hd88616_ _hd8858988611_)
                                         (_body88618_ _tl8859088613_))
                                    (if (gx#core-expand-let-bind? _hd88616_)
                                        (let ((_expressions88620_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88616_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88616_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88616_
                                                           _expressions88620_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88581_
                         _body88618_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88581_)))
                                           gx#current-expander-context
                                           (let ((__obj89729
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89729)
                                             __obj89729)))
                                        (_E8858488596_)))))
                              (_E8858488596_))))
                      (_E8858488596_)))))
          (_E8858388623_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88526_ _form88527_)
        (let* ((_e8852888538_ _stx88526_)
               (_E8853088542_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8852888538_)))
               (_E8852988567_
                (lambda ()
                  (if (gx#stx-pair? _e8852888538_)
                      (let ((_e8853188546_ (gx#syntax-e _e8852888538_)))
                        (let ((_hd8853288549_ (##car _e8853188546_))
                              (_tl8853388551_ (##cdr _e8853188546_)))
                          (if (gx#stx-pair? _tl8853388551_)
                              (let ((_e8853488554_
                                     (gx#syntax-e _tl8853388551_)))
                                (let ((_hd8853588557_ (##car _e8853488554_))
                                      (_tl8853688559_ (##cdr _e8853488554_)))
                                  (let* ((_hd88562_ _hd8853588557_)
                                         (_body88564_ _tl8853688559_))
                                    (if (gx#core-expand-let-bind? _hd88562_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88562_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88527_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88562_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88562_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88526_
                                                               _body88564_)
                                                              '())))
                                            (gx#stx-source _stx88526_)))
                                         gx#current-expander-context
                                         (let ((__obj89730
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89730)
                                           __obj89730))
                                        (_E8853088542_)))))
                              (_E8853088542_))))
                      (_E8853088542_)))))
          (_E8852988567_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88574_)
        (let ((_form88576_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88574_ _form88576_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89740_
        (let ((_g89739_ (##length _g89740_)))
          (cond ((##fx= _g89739_ 1)
                 (apply (lambda (_stx88574_)
                          (gx#core-expand-letrec-values%__0 _stx88574_))
                        _g89740_))
                ((##fx= _g89739_ 2)
                 (apply (lambda (_stx88578_ _form88579_)
                          (gx#core-expand-letrec-values%__%
                           _stx88578_
                           _form88579_))
                        _g89740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89740_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88523_)
        (gx#core-expand-letrec-values%__% _stx88523_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88480_)
        (if (gx#stx-list? _stx88480_)
            (gx#stx-andmap
             (lambda (_bind88482_)
               (let* ((_e8848388493_ _bind88482_)
                      (_E8848588497_ (lambda () '#f))
                      (_E8848488519_
                       (lambda ()
                         (if (gx#stx-pair? _e8848388493_)
                             (let ((_e8848688501_ (gx#syntax-e _e8848388493_)))
                               (let ((_hd8848788504_ (##car _e8848688501_))
                                     (_tl8848888506_ (##cdr _e8848688501_)))
                                 (let ((_hd88509_ _hd8848788504_))
                                   (if (gx#stx-pair? _tl8848888506_)
                                       (let ((_e8848988511_
                                              (gx#syntax-e _tl8848888506_)))
                                         (let ((_hd8849088514_
                                                (##car _e8848988511_))
                                               (_tl8849188516_
                                                (##cdr _e8848988511_)))
                                           (if (gx#stx-null? _tl8849188516_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88509_)
                                                   (_E8848588497_))
                                               (_E8848588497_))))
                                       (_E8848588497_)))))
                             (_E8848588497_)))))
                 (_E8848488519_)))
             _stx88480_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88439_)
        (let* ((_e8844088450_ _bind88439_)
               (_E8844288454_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8844088450_)))
               (_E8844188476_
                (lambda ()
                  (if (gx#stx-pair? _e8844088450_)
                      (let ((_e8844388458_ (gx#syntax-e _e8844088450_)))
                        (let ((_hd8844488461_ (##car _e8844388458_))
                              (_tl8844588463_ (##cdr _e8844388458_)))
                          (if (gx#stx-pair? _tl8844588463_)
                              (let ((_e8844688466_
                                     (gx#syntax-e _tl8844588463_)))
                                (let ((_hd8844788469_ (##car _e8844688466_))
                                      (_tl8844888471_ (##cdr _e8844688466_)))
                                  (let ((_expr88474_ _hd8844788469_))
                                    (if (gx#stx-null? _tl8844888471_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88474_)
                                            (_E8844288454_))
                                        (_E8844288454_)))))
                              (_E8844288454_))))
                      (_E8844288454_)))))
          (_E8844188476_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind88398_)
        (let* ((_e8839988409_ _bind88398_)
               (_E8840188413_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8839988409_)))
               (_E8840088435_
                (lambda ()
                  (if (gx#stx-pair? _e8839988409_)
                      (let ((_e8840288417_ (gx#syntax-e _e8839988409_)))
                        (let ((_hd8840388420_ (##car _e8840288417_))
                              (_tl8840488422_ (##cdr _e8840288417_)))
                          (let ((_hd88425_ _hd8840388420_))
                            (if (gx#stx-pair? _tl8840488422_)
                                (let ((_e8840588427_
                                       (gx#syntax-e _tl8840488422_)))
                                  (let ((_hd8840688430_ (##car _e8840588427_))
                                        (_tl8840788432_ (##cdr _e8840588427_)))
                                    (if (gx#stx-null? _tl8840788432_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd88425_)
                                            (_E8840188413_))
                                        (_E8840188413_))))
                                (_E8840188413_)))))
                      (_E8840188413_)))))
          (_E8840088435_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind88356_ _expr88357_)
        (let* ((_e8835888368_ _bind88356_)
               (_E8836088372_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835888368_)))
               (_E8835988394_
                (lambda ()
                  (if (gx#stx-pair? _e8835888368_)
                      (let ((_e8836188376_ (gx#syntax-e _e8835888368_)))
                        (let ((_hd8836288379_ (##car _e8836188376_))
                              (_tl8836388381_ (##cdr _e8836188376_)))
                          (let ((_hd88384_ _hd8836288379_))
                            (if (gx#stx-pair? _tl8836388381_)
                                (let ((_e8836488386_
                                       (gx#syntax-e _tl8836388381_)))
                                  (let ((_hd8836588389_ (##car _e8836488386_))
                                        (_tl8836688391_ (##cdr _e8836488386_)))
                                    (if (gx#stx-null? _tl8836688391_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd88384_)
                                                  (cons _expr88357_ '()))
                                            (_E8836088372_))
                                        (_E8836088372_))))
                                (_E8836088372_)))))
                      (_E8836088372_)))))
          (_E8835988394_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx88310_)
        (let* ((_e8831188321_ _stx88310_)
               (_E8831388325_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8831188321_)))
               (_E8831288352_
                (lambda ()
                  (if (gx#stx-pair? _e8831188321_)
                      (let ((_e8831488329_ (gx#syntax-e _e8831188321_)))
                        (let ((_hd8831588332_ (##car _e8831488329_))
                              (_tl8831688334_ (##cdr _e8831488329_)))
                          (if (gx#stx-pair? _tl8831688334_)
                              (let ((_e8831788337_
                                     (gx#syntax-e _tl8831688334_)))
                                (let ((_hd8831888340_ (##car _e8831788337_))
                                      (_tl8831988342_ (##cdr _e8831788337_)))
                                  (let* ((_hd88345_ _hd8831888340_)
                                         (_body88347_ _tl8831988342_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88345_)
                                        (let ((_expanders88349_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd88345_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd88345_
                                              _expanders88349_)
                                             (gx#core-expand-local-block
                                              _stx88310_
                                              _body88347_))
                                           gx#current-expander-context
                                           (let ((__obj89731
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89731)
                                             __obj89731)))
                                        (_E8831388325_)))))
                              (_E8831388325_))))
                      (_E8831388325_)))))
          (_E8831288352_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx88259_)
        (let* ((_e8826088270_ _stx88259_)
               (_E8826288274_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8826088270_)))
               (_E8826188306_
                (lambda ()
                  (if (gx#stx-pair? _e8826088270_)
                      (let ((_e8826388278_ (gx#syntax-e _e8826088270_)))
                        (let ((_hd8826488281_ (##car _e8826388278_))
                              (_tl8826588283_ (##cdr _e8826388278_)))
                          (if (gx#stx-pair? _tl8826588283_)
                              (let ((_e8826688286_
                                     (gx#syntax-e _tl8826588283_)))
                                (let ((_hd8826788289_ (##car _e8826688286_))
                                      (_tl8826888291_ (##cdr _e8826688286_)))
                                  (let* ((_hd88294_ _hd8826788289_)
                                         (_body88296_ _tl8826888291_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88294_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd88294_
                                            (make-list__%
                                             (gx#stx-length _hd88294_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8829888301_
                                                     _g8829988303_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8829888301_
                                               _g8829988303_
                                               '#t))
                                            _hd88294_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd88294_))
                                           (gx#core-expand-local-block
                                            _stx88259_
                                            _body88296_))
                                         gx#current-expander-context
                                         (let ((__obj89732
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89732)
                                           __obj89732))
                                        (_E8826288274_)))))
                              (_E8826288274_))))
                      (_E8826288274_)))))
          (_E8826188306_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx88216_)
        (if (gx#stx-list? _stx88216_)
            (gx#stx-andmap
             (lambda (_bind88218_)
               (let* ((_e8821988229_ _bind88218_)
                      (_E8822188233_ (lambda () '#f))
                      (_E8822088255_
                       (lambda ()
                         (if (gx#stx-pair? _e8821988229_)
                             (let ((_e8822288237_ (gx#syntax-e _e8821988229_)))
                               (let ((_hd8822388240_ (##car _e8822288237_))
                                     (_tl8822488242_ (##cdr _e8822288237_)))
                                 (let ((_hd88245_ _hd8822388240_))
                                   (if (gx#stx-pair? _tl8822488242_)
                                       (let ((_e8822588247_
                                              (gx#syntax-e _tl8822488242_)))
                                         (let ((_hd8822688250_
                                                (##car _e8822588247_))
                                               (_tl8822788252_
                                                (##cdr _e8822588247_)))
                                           (if (gx#stx-null? _tl8822788252_)
                                               (if '#t
                                                   (gx#identifier? _hd88245_)
                                                   (_E8822188233_))
                                               (_E8822188233_))))
                                       (_E8822188233_)))))
                             (_E8822188233_)))))
                 (_E8822088255_)))
             _stx88216_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind88173_)
        (let* ((_e8817488184_ _bind88173_)
               (_E8817688188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8817488184_)))
               (_E8817588212_
                (lambda ()
                  (if (gx#stx-pair? _e8817488184_)
                      (let ((_e8817788192_ (gx#syntax-e _e8817488184_)))
                        (let ((_hd8817888195_ (##car _e8817788192_))
                              (_tl8817988197_ (##cdr _e8817788192_)))
                          (if (gx#stx-pair? _tl8817988197_)
                              (let ((_e8818088200_
                                     (gx#syntax-e _tl8817988197_)))
                                (let ((_hd8818188203_ (##car _e8818088200_))
                                      (_tl8818288205_ (##cdr _e8818088200_)))
                                  (let ((_expr88208_ _hd8818188203_))
                                    (if (gx#stx-null? _tl8818288205_)
                                        (if '#t
                                            (let ((_g89741_
                                                   (gx#core-expand-expression+1
                                                    _expr88208_)))
                                              (begin
                                                (let ((_g89742_
                                                       (if (##values? _g89741_)
                                                           (##vector-length
                                                            _g89741_)
                                                           1)))
                                                  (if (not (##fx= _g89742_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89742_)))
                                                (let ((_e88210_
                                                       (##vector-ref
                                                        _g89741_
                                                        1)))
                                                  _e88210_)))
                                            (_E8817688188_))
                                        (_E8817688188_)))))
                              (_E8817688188_))))
                      (_E8817688188_)))))
          (_E8817588212_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind88118_ _e88119_ _rebind?88120_)
        (let* ((_e8812188131_ _bind88118_)
               (_E8812388135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8812188131_)))
               (_E8812288157_
                (lambda ()
                  (if (gx#stx-pair? _e8812188131_)
                      (let ((_e8812488139_ (gx#syntax-e _e8812188131_)))
                        (let ((_hd8812588142_ (##car _e8812488139_))
                              (_tl8812688144_ (##cdr _e8812488139_)))
                          (let ((_id88147_ _hd8812588142_))
                            (if (gx#stx-pair? _tl8812688144_)
                                (let ((_e8812788149_
                                       (gx#syntax-e _tl8812688144_)))
                                  (let ((_hd8812888152_ (##car _e8812788149_))
                                        (_tl8812988154_ (##cdr _e8812788149_)))
                                    (if (gx#stx-null? _tl8812988154_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id88147_
                                             _e88119_
                                             _rebind?88120_)
                                            (_E8812388135_))
                                        (_E8812388135_))))
                                (_E8812388135_)))))
                      (_E8812388135_)))))
          (_E8812288157_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind88164_ _e88165_)
        (let ((_rebind?88167_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind88164_
           _e88165_
           _rebind?88167_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89744_
        (let ((_g89743_ (##length _g89744_)))
          (cond ((##fx= _g89743_ 2)
                 (apply (lambda (_bind88164_ _e88165_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind88164_
                           _e88165_))
                        _g89744_))
                ((##fx= _g89743_ 3)
                 (apply (lambda (_bind88169_ _e88170_ _rebind?88171_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind88169_
                           _e88170_
                           _rebind?88171_))
                        _g89744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89744_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88076_)
        (let* ((_e8807788087_ _stx88076_)
               (_E8807988091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8807788087_)))
               (_E8807888113_
                (lambda ()
                  (if (gx#stx-pair? _e8807788087_)
                      (let ((_e8808088095_ (gx#syntax-e _e8807788087_)))
                        (let ((_hd8808188098_ (##car _e8808088095_))
                              (_tl8808288100_ (##cdr _e8808088095_)))
                          (if (gx#stx-pair? _tl8808288100_)
                              (let ((_e8808388103_
                                     (gx#syntax-e _tl8808288100_)))
                                (let ((_hd8808488106_ (##car _e8808388103_))
                                      (_tl8808588108_ (##cdr _e8808388103_)))
                                  (let ((_expr88111_ _hd8808488106_))
                                    (if (gx#stx-null? _tl8808588108_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88111_)
                                            (_E8807988091_))
                                        (_E8807988091_)))))
                              (_E8807988091_))))
                      (_E8807988091_)))))
          (_E8807888113_))))
    (define gx#core-expand-quote%
      (lambda (_stx88035_)
        (let* ((_e8803688046_ _stx88035_)
               (_E8803888050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8803688046_)))
               (_E8803788072_
                (lambda ()
                  (if (gx#stx-pair? _e8803688046_)
                      (let ((_e8803988054_ (gx#syntax-e _e8803688046_)))
                        (let ((_hd8804088057_ (##car _e8803988054_))
                              (_tl8804188059_ (##cdr _e8803988054_)))
                          (if (gx#stx-pair? _tl8804188059_)
                              (let ((_e8804288062_
                                     (gx#syntax-e _tl8804188059_)))
                                (let ((_hd8804388065_ (##car _e8804288062_))
                                      (_tl8804488067_ (##cdr _e8804288062_)))
                                  (let ((_e88070_ _hd8804388065_))
                                    (if (gx#stx-null? _tl8804488067_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88070_)
                                                         '()))
                                             (gx#stx-source _stx88035_))
                                            (_E8803888050_))
                                        (_E8803888050_)))))
                              (_E8803888050_))))
                      (_E8803888050_)))))
          (_E8803788072_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87994_)
        (let* ((_e8799588005_ _stx87994_)
               (_E8799788009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8799588005_)))
               (_E8799688031_
                (lambda ()
                  (if (gx#stx-pair? _e8799588005_)
                      (let ((_e8799888013_ (gx#syntax-e _e8799588005_)))
                        (let ((_hd8799988016_ (##car _e8799888013_))
                              (_tl8800088018_ (##cdr _e8799888013_)))
                          (if (gx#stx-pair? _tl8800088018_)
                              (let ((_e8800188021_
                                     (gx#syntax-e _tl8800088018_)))
                                (let ((_hd8800288024_ (##car _e8800188021_))
                                      (_tl8800388026_ (##cdr _e8800188021_)))
                                  (let ((_e88029_ _hd8800288024_))
                                    (if (gx#stx-null? _tl8800388026_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88029_)
                                                         '()))
                                             (gx#stx-source _stx87994_))
                                            (_E8799788009_))
                                        (_E8799788009_)))))
                              (_E8799788009_))))
                      (_E8799788009_)))))
          (_E8799688031_))))
    (define gx#core-expand-call%
      (lambda (_stx87951_)
        (let* ((_e8795287962_ _stx87951_)
               (_E8795487966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8795287962_)))
               (_E8795387990_
                (lambda ()
                  (if (gx#stx-pair? _e8795287962_)
                      (let ((_e8795587970_ (gx#syntax-e _e8795287962_)))
                        (let ((_hd8795687973_ (##car _e8795587970_))
                              (_tl8795787975_ (##cdr _e8795587970_)))
                          (if (gx#stx-pair? _tl8795787975_)
                              (let ((_e8795887978_
                                     (gx#syntax-e _tl8795787975_)))
                                (let ((_hd8795987981_ (##car _e8795887978_))
                                      (_tl8796087983_ (##cdr _e8795887978_)))
                                  (let* ((_rator87986_ _hd8795987981_)
                                         (_args87988_ _tl8796087983_))
                                    (if (gx#stx-list? _args87988_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87986_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87988_))
                                         (gx#stx-source _stx87951_))
                                        (_E8795487966_)))))
                              (_E8795487966_))))
                      (_E8795487966_)))))
          (_E8795387990_))))
    (define gx#core-expand-if%
      (lambda (_stx87884_)
        (let* ((_e8788587901_ _stx87884_)
               (_E8788787905_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8788587901_)))
               (_E8788687947_
                (lambda ()
                  (if (gx#stx-pair? _e8788587901_)
                      (let ((_e8788887909_ (gx#syntax-e _e8788587901_)))
                        (let ((_hd8788987912_ (##car _e8788887909_))
                              (_tl8789087914_ (##cdr _e8788887909_)))
                          (if (gx#stx-pair? _tl8789087914_)
                              (let ((_e8789187917_
                                     (gx#syntax-e _tl8789087914_)))
                                (let ((_hd8789287920_ (##car _e8789187917_))
                                      (_tl8789387922_ (##cdr _e8789187917_)))
                                  (let ((_test87925_ _hd8789287920_))
                                    (if (gx#stx-pair? _tl8789387922_)
                                        (let ((_e8789487927_
                                               (gx#syntax-e _tl8789387922_)))
                                          (let ((_hd8789587930_
                                                 (##car _e8789487927_))
                                                (_tl8789687932_
                                                 (##cdr _e8789487927_)))
                                            (let ((_K87935_ _hd8789587930_))
                                              (if (gx#stx-pair? _tl8789687932_)
                                                  (let ((_e8789787937_
                                                         (gx#syntax-e
                                                          _tl8789687932_)))
                                                    (let ((_hd8789887940_
                                                           (##car _e8789787937_))
                                                          (_tl8789987942_
                                                           (##cdr _e8789787937_)))
                                                      (let ((_E87945_
                                                             _hd8789887940_))
                                                        (if (gx#stx-null?
                                                             _tl8789987942_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87925_)
                                     (cons (gx#core-expand-expression _K87935_)
                                           (cons (gx#core-expand-expression
                                                  _E87945_)
                                                 '()))))
                         (gx#stx-source _stx87884_))
                        (_E8788787905_))
                    (_E8788787905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8788787905_)))))
                                        (_E8788787905_)))))
                              (_E8788787905_))))
                      (_E8788787905_)))))
          (_E8788687947_))))
    (define gx#core-expand-ref%
      (lambda (_stx87843_)
        (let* ((_e8784487854_ _stx87843_)
               (_E8784687858_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8784487854_)))
               (_E8784587880_
                (lambda ()
                  (if (gx#stx-pair? _e8784487854_)
                      (let ((_e8784787862_ (gx#syntax-e _e8784487854_)))
                        (let ((_hd8784887865_ (##car _e8784787862_))
                              (_tl8784987867_ (##cdr _e8784787862_)))
                          (if (gx#stx-pair? _tl8784987867_)
                              (let ((_e8785087870_
                                     (gx#syntax-e _tl8784987867_)))
                                (let ((_hd8785187873_ (##car _e8785087870_))
                                      (_tl8785287875_ (##cdr _e8785087870_)))
                                  (let ((_id87878_ _hd8785187873_))
                                    (if (gx#stx-null? _tl8785287875_)
                                        (if (gx#identifier? _id87878_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87878_
                                                          _stx87843_)
                                                         '()))
                                             (gx#stx-source _stx87843_))
                                            (_E8784687858_))
                                        (_E8784687858_)))))
                              (_E8784687858_))))
                      (_E8784687858_)))))
          (_E8784587880_))))
    (define gx#core-expand-setq%
      (lambda (_stx87789_)
        (let* ((_e8779087803_ _stx87789_)
               (_E8779287807_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8779087803_)))
               (_E8779187839_
                (lambda ()
                  (if (gx#stx-pair? _e8779087803_)
                      (let ((_e8779387811_ (gx#syntax-e _e8779087803_)))
                        (let ((_hd8779487814_ (##car _e8779387811_))
                              (_tl8779587816_ (##cdr _e8779387811_)))
                          (if (gx#stx-pair? _tl8779587816_)
                              (let ((_e8779687819_
                                     (gx#syntax-e _tl8779587816_)))
                                (let ((_hd8779787822_ (##car _e8779687819_))
                                      (_tl8779887824_ (##cdr _e8779687819_)))
                                  (let ((_id87827_ _hd8779787822_))
                                    (if (gx#stx-pair? _tl8779887824_)
                                        (let ((_e8779987829_
                                               (gx#syntax-e _tl8779887824_)))
                                          (let ((_hd8780087832_
                                                 (##car _e8779987829_))
                                                (_tl8780187834_
                                                 (##cdr _e8779987829_)))
                                            (let ((_expr87837_ _hd8780087832_))
                                              (if (gx#stx-null? _tl8780187834_)
                                                  (if (gx#identifier?
                                                       _id87827_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87827_
                            _stx87789_)
                           (cons (gx#core-expand-expression _expr87837_) '())))
               (gx#stx-source _stx87789_))
              (_E8779287807_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8779287807_)))))
                                        (_E8779287807_)))))
                              (_E8779287807_))))
                      (_E8779287807_)))))
          (_E8779187839_))))
    (define gx#macro-expand-extern
      (lambda (_stx87637_)
        (letrec ((_generate87639_
                  (lambda (_body87669_)
                    (let _lp87671_ ((_rest87673_ _body87669_)
                                    (_ns87674_ (gx#core-context-namespace__0))
                                    (_r87675_ '()))
                      (let* ((_e8767687691_ _rest87673_)
                             (_E8768987695_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8767687691_)))
                             (_E8768587699_
                              (lambda ()
                                (if (gx#stx-null? _e8767687691_)
                                    (if '#t (reverse _r87675_) (_E8768987695_))
                                    (_E8768987695_))))
                             (_E8767887756_
                              (lambda ()
                                (if (gx#stx-pair? _e8767687691_)
                                    (let ((_e8768687703_
                                           (gx#syntax-e _e8767687691_)))
                                      (let ((_hd8768787706_
                                             (##car _e8768687703_))
                                            (_tl8768887708_
                                             (##cdr _e8768687703_)))
                                        (let* ((_hd87711_ _hd8768787706_)
                                               (_rest87713_ _tl8768887708_))
                                          (if '#t
                                              (if (gx#identifier? _hd87711_)
                                                  (_lp87671_
                                                   _rest87713_
                                                   _ns87674_
                                                   (cons (cons _hd87711_
                                                               (cons (if _ns87674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87711_
                                  _ns87674_
                                  '"#"
                                  _hd87711_)
                                 _hd87711_)
                             '()))
                 _r87675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8771487724_
                                                          _hd87711_)
                                                         (_E8771687728_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8771487724_)))
                                                         (_E8771587752_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8771487724_)
                        (let ((_e8771787732_ (gx#syntax-e _e8771487724_)))
                          (let ((_hd8771887735_ (##car _e8771787732_))
                                (_tl8771987737_ (##cdr _e8771787732_)))
                            (let ((_id87740_ _hd8771887735_))
                              (if (gx#stx-pair? _tl8771987737_)
                                  (let ((_e8772087742_
                                         (gx#syntax-e _tl8771987737_)))
                                    (let ((_hd8772187745_
                                           (##car _e8772087742_))
                                          (_tl8772287747_
                                           (##cdr _e8772087742_)))
                                      (let ((_eid87750_ _hd8772187745_))
                                        (if (gx#stx-null? _tl8772287747_)
                                            (if (and (gx#identifier? _id87740_)
                                                     (gx#identifier?
                                                      _eid87750_))
                                                (_lp87671_
                                                 _rest87713_
                                                 _ns87674_
                                                 (cons (cons _id87740_
                                                             (cons _eid87750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8771687728_))
                                            (_E8771687728_)))))
                                  (_E8771687728_)))))
                        (_E8771687728_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8771587752_)))
                                              (_E8768587699_)))))
                                    (_E8768587699_))))
                             (_E8767787785_
                              (lambda ()
                                (if (gx#stx-pair? _e8767687691_)
                                    (let ((_e8767987760_
                                           (gx#syntax-e _e8767687691_)))
                                      (let ((_hd8768087763_
                                             (##car _e8767987760_))
                                            (_tl8768187765_
                                             (##cdr _e8767987760_)))
                                        (if (eq? (gx#stx-e _hd8768087763_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8768187765_)
                                                (let ((_e8768287768_
                                                       (gx#syntax-e
                                                        _tl8768187765_)))
                                                  (let ((_hd8768387771_
                                                         (##car _e8768287768_))
                                                        (_tl8768487773_
                                                         (##cdr _e8768287768_)))
                                                    (let* ((_ns87776_
                                                            _hd8768387771_)
                                                           (_rest87778_
                                                            _tl8768487773_))
                                                      (if '#t
                                                          (let ((_ns87783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87776_)
                             (symbol->string (gx#stx-e _ns87776_))
                             (if (or (gx#stx-string? _ns87776_)
                                     (gx#stx-false? _ns87776_))
                                 (gx#stx-e _ns87776_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87637_
                                  _ns87776_)))))
                    (_lp87671_ _rest87778_ _ns87783_ _r87675_))
                  (_E8767887756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8767887756_))
                                            (_E8767887756_))))
                                    (_E8767887756_)))))
                        (_E8767787785_))))))
          (let* ((_e8764087647_ _stx87637_)
                 (_E8764287651_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8764087647_)))
                 (_E8764187665_
                  (lambda ()
                    (if (gx#stx-pair? _e8764087647_)
                        (let ((_e8764387655_ (gx#syntax-e _e8764087647_)))
                          (let ((_hd8764487658_ (##car _e8764387655_))
                                (_tl8764587660_ (##cdr _e8764387655_)))
                            (let ((_body87663_ _tl8764587660_))
                              (if (gx#stx-list? _body87663_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87639_ _body87663_))
                                  (_E8764287651_)))))
                        (_E8764287651_)))))
            (_E8764187665_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87583_)
        (let* ((_e8758487597_ _stx87583_)
               (_E8758687601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8758487597_)))
               (_E8758587633_
                (lambda ()
                  (if (gx#stx-pair? _e8758487597_)
                      (let ((_e8758787605_ (gx#syntax-e _e8758487597_)))
                        (let ((_hd8758887608_ (##car _e8758787605_))
                              (_tl8758987610_ (##cdr _e8758787605_)))
                          (if (gx#stx-pair? _tl8758987610_)
                              (let ((_e8759087613_
                                     (gx#syntax-e _tl8758987610_)))
                                (let ((_hd8759187616_ (##car _e8759087613_))
                                      (_tl8759287618_ (##cdr _e8759087613_)))
                                  (let ((_hd87621_ _hd8759187616_))
                                    (if (gx#stx-pair? _tl8759287618_)
                                        (let ((_e8759387623_
                                               (gx#syntax-e _tl8759287618_)))
                                          (let ((_hd8759487626_
                                                 (##car _e8759387623_))
                                                (_tl8759587628_
                                                 (##cdr _e8759387623_)))
                                            (let ((_expr87631_ _hd8759487626_))
                                              (if (gx#stx-null? _tl8759587628_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87621_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87621_)
                          (cons _expr87631_ '())))
              (_E8758687601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8758687601_)))))
                                        (_E8758687601_)))))
                              (_E8758687601_))))
                      (_E8758687601_)))))
          (_E8758587633_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87529_)
        (let* ((_e8753087543_ _stx87529_)
               (_E8753287547_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8753087543_)))
               (_E8753187579_
                (lambda ()
                  (if (gx#stx-pair? _e8753087543_)
                      (let ((_e8753387551_ (gx#syntax-e _e8753087543_)))
                        (let ((_hd8753487554_ (##car _e8753387551_))
                              (_tl8753587556_ (##cdr _e8753387551_)))
                          (if (gx#stx-pair? _tl8753587556_)
                              (let ((_e8753687559_
                                     (gx#syntax-e _tl8753587556_)))
                                (let ((_hd8753787562_ (##car _e8753687559_))
                                      (_tl8753887564_ (##cdr _e8753687559_)))
                                  (let ((_hd87567_ _hd8753787562_))
                                    (if (gx#stx-pair? _tl8753887564_)
                                        (let ((_e8753987569_
                                               (gx#syntax-e _tl8753887564_)))
                                          (let ((_hd8754087572_
                                                 (##car _e8753987569_))
                                                (_tl8754187574_
                                                 (##cdr _e8753987569_)))
                                            (let ((_expr87577_ _hd8754087572_))
                                              (if (gx#stx-null? _tl8754187574_)
                                                  (if (gx#identifier?
                                                       _hd87567_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87577_ '())))
              (_E8753287547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8753287547_)))))
                                        (_E8753287547_)))))
                              (_E8753287547_))))
                      (_E8753287547_)))))
          (_E8753187579_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87475_)
        (let* ((_e8747687489_ _stx87475_)
               (_E8747887493_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8747687489_)))
               (_E8747787525_
                (lambda ()
                  (if (gx#stx-pair? _e8747687489_)
                      (let ((_e8747987497_ (gx#syntax-e _e8747687489_)))
                        (let ((_hd8748087500_ (##car _e8747987497_))
                              (_tl8748187502_ (##cdr _e8747987497_)))
                          (if (gx#stx-pair? _tl8748187502_)
                              (let ((_e8748287505_
                                     (gx#syntax-e _tl8748187502_)))
                                (let ((_hd8748387508_ (##car _e8748287505_))
                                      (_tl8748487510_ (##cdr _e8748287505_)))
                                  (let ((_id87513_ _hd8748387508_))
                                    (if (gx#stx-pair? _tl8748487510_)
                                        (let ((_e8748587515_
                                               (gx#syntax-e _tl8748487510_)))
                                          (let ((_hd8748687518_
                                                 (##car _e8748587515_))
                                                (_tl8748787520_
                                                 (##cdr _e8748587515_)))
                                            (let ((_alias-id87523_
                                                   _hd8748687518_))
                                              (if (gx#stx-null? _tl8748787520_)
                                                  (if (and (gx#identifier?
                                                            _id87513_)
                                                           (gx#identifier?
                                                            _alias-id87523_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87523_ '())))
              (_E8747887493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8747887493_)))))
                                        (_E8747887493_)))))
                              (_E8747887493_))))
                      (_E8747887493_)))))
          (_E8747787525_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87432_)
        (let* ((_e8743387443_ _stx87432_)
               (_E8743587447_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8743387443_)))
               (_E8743487471_
                (lambda ()
                  (if (gx#stx-pair? _e8743387443_)
                      (let ((_e8743687451_ (gx#syntax-e _e8743387443_)))
                        (let ((_hd8743787454_ (##car _e8743687451_))
                              (_tl8743887456_ (##cdr _e8743687451_)))
                          (if (gx#stx-pair? _tl8743887456_)
                              (let ((_e8743987459_
                                     (gx#syntax-e _tl8743887456_)))
                                (let ((_hd8744087462_ (##car _e8743987459_))
                                      (_tl8744187464_ (##cdr _e8743987459_)))
                                  (let* ((_hd87467_ _hd8744087462_)
                                         (_body87469_ _tl8744187464_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87467_)
                                             (gx#stx-list? _body87469_)
                                             (not (gx#stx-null? _body87469_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87467_)
                                         _body87469_)
                                        (_E8743587447_)))))
                              (_E8743587447_))))
                      (_E8743587447_)))))
          (_E8743487471_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx87368_)
        (letrec ((_generate87370_
                  (lambda (_clause87400_)
                    (let* ((_e8740187408_ _clause87400_)
                           (_E8740387412_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx87368_
                               _clause87400_)))
                           (_E8740287428_
                            (lambda ()
                              (if (gx#stx-pair? _e8740187408_)
                                  (let ((_e8740487416_
                                         (gx#syntax-e _e8740187408_)))
                                    (let ((_hd8740587419_
                                           (##car _e8740487416_))
                                          (_tl8740687421_
                                           (##cdr _e8740487416_)))
                                      (let* ((_hd87424_ _hd8740587419_)
                                             (_body87426_ _tl8740687421_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd87424_)
                                                 (gx#stx-list? _body87426_)
                                                 (not (gx#stx-null?
                                                       _body87426_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd87424_)
                                                   _body87426_)
                                             (gx#stx-source _clause87400_))
                                            (_E8740387412_)))))
                                  (_E8740387412_)))))
                      (_E8740287428_)))))
          (let* ((_e8737187378_ _stx87368_)
                 (_E8737387382_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8737187378_)))
                 (_E8737287396_
                  (lambda ()
                    (if (gx#stx-pair? _e8737187378_)
                        (let ((_e8737487386_ (gx#syntax-e _e8737187378_)))
                          (let ((_hd8737587389_ (##car _e8737487386_))
                                (_tl8737687391_ (##cdr _e8737487386_)))
                            (let ((_clauses87394_ _tl8737687391_))
                              (if (gx#stx-list? _clauses87394_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate87370_
                                    _clauses87394_))
                                  (_E8737387382_)))))
                        (_E8737387382_)))))
            (_E8737287396_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx87269_ _form87270_)
        (letrec ((_generate87272_
                  (lambda (_bind87315_)
                    (let* ((_e8731687326_ _bind87315_)
                           (_E8731887330_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx87269_
                               _bind87315_)))
                           (_E8731787354_
                            (lambda ()
                              (if (gx#stx-pair? _e8731687326_)
                                  (let ((_e8731987334_
                                         (gx#syntax-e _e8731687326_)))
                                    (let ((_hd8732087337_
                                           (##car _e8731987334_))
                                          (_tl8732187339_
                                           (##cdr _e8731987334_)))
                                      (let ((_ids87342_ _hd8732087337_))
                                        (if (gx#stx-pair? _tl8732187339_)
                                            (let ((_e8732287344_
                                                   (gx#syntax-e
                                                    _tl8732187339_)))
                                              (let ((_hd8732387347_
                                                     (##car _e8732287344_))
                                                    (_tl8732487349_
                                                     (##cdr _e8732287344_)))
                                                (let ((_expr87352_
                                                       _hd8732387347_))
                                                  (if (gx#stx-null?
                                                       _tl8732487349_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids87342_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids87342_)
                        (cons _expr87352_ '()))
                  (_E8731887330_))
              (_E8731887330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8731887330_)))))
                                  (_E8731887330_)))))
                      (_E8731787354_)))))
          (let* ((_e8727387283_ _stx87269_)
                 (_E8727587287_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8727387283_)))
                 (_E8727487311_
                  (lambda ()
                    (if (gx#stx-pair? _e8727387283_)
                        (let ((_e8727687291_ (gx#syntax-e _e8727387283_)))
                          (let ((_hd8727787294_ (##car _e8727687291_))
                                (_tl8727887296_ (##cdr _e8727687291_)))
                            (if (gx#stx-pair? _tl8727887296_)
                                (let ((_e8727987299_
                                       (gx#syntax-e _tl8727887296_)))
                                  (let ((_hd8728087302_ (##car _e8727987299_))
                                        (_tl8728187304_ (##cdr _e8727987299_)))
                                    (let* ((_hd87307_ _hd8728087302_)
                                           (_body87309_ _tl8728187304_))
                                      (if (and (gx#stx-list? _hd87307_)
                                               (gx#stx-list? _body87309_)
                                               (not (gx#stx-null?
                                                     _body87309_)))
                                          (gx#core-cons*
                                           _form87270_
                                           (gx#stx-map1
                                            _generate87272_
                                            _hd87307_)
                                           _body87309_)
                                          (_E8727587287_)))))
                                (_E8727587287_))))
                        (_E8727587287_)))))
            (_E8727487311_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx87361_)
        (let ((_form87363_ '%#let-values))
          (gx#macro-expand-let-values__% _stx87361_ _form87363_))))
    (define gx#macro-expand-let-values
      (lambda _g89746_
        (let ((_g89745_ (##length _g89746_)))
          (cond ((##fx= _g89745_ 1)
                 (apply (lambda (_stx87361_)
                          (gx#macro-expand-let-values__0 _stx87361_))
                        _g89746_))
                ((##fx= _g89745_ 2)
                 (apply (lambda (_stx87365_ _form87366_)
                          (gx#macro-expand-let-values__%
                           _stx87365_
                           _form87366_))
                        _g89746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89746_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx87266_)
        (gx#macro-expand-let-values__% _stx87266_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx87264_)
        (gx#macro-expand-let-values__% _stx87264_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx87155_)
        (let* ((_e8715687182_ _stx87155_)
               (_E8716887186_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8715687182_)))
               (_E8715887228_
                (lambda ()
                  (if (gx#stx-pair? _e8715687182_)
                      (let ((_e8716987190_ (gx#syntax-e _e8715687182_)))
                        (let ((_hd8717087193_ (##car _e8716987190_))
                              (_tl8717187195_ (##cdr _e8716987190_)))
                          (if (gx#stx-pair? _tl8717187195_)
                              (let ((_e8717287198_
                                     (gx#syntax-e _tl8717187195_)))
                                (let ((_hd8717387201_ (##car _e8717287198_))
                                      (_tl8717487203_ (##cdr _e8717287198_)))
                                  (let ((_test87206_ _hd8717387201_))
                                    (if (gx#stx-pair? _tl8717487203_)
                                        (let ((_e8717587208_
                                               (gx#syntax-e _tl8717487203_)))
                                          (let ((_hd8717687211_
                                                 (##car _e8717587208_))
                                                (_tl8717787213_
                                                 (##cdr _e8717587208_)))
                                            (let ((_K87216_ _hd8717687211_))
                                              (if (gx#stx-pair? _tl8717787213_)
                                                  (let ((_e8717887218_
                                                         (gx#syntax-e
                                                          _tl8717787213_)))
                                                    (let ((_hd8717987221_
                                                           (##car _e8717887218_))
                                                          (_tl8718087223_
                                                           (##cdr _e8717887218_)))
                                                      (let ((_E87226_
                                                             _hd8717987221_))
                                                        (if (gx#stx-null?
                                                             _tl8718087223_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test87206_
                         _K87216_
                         _E87226_)
                        (_E8716887186_))
                    (_E8716887186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8716887186_)))))
                                        (_E8716887186_)))))
                              (_E8716887186_))))
                      (_E8716887186_))))
               (_E8715787260_
                (lambda ()
                  (if (gx#stx-pair? _e8715687182_)
                      (let ((_e8715987232_ (gx#syntax-e _e8715687182_)))
                        (let ((_hd8716087235_ (##car _e8715987232_))
                              (_tl8716187237_ (##cdr _e8715987232_)))
                          (if (gx#stx-pair? _tl8716187237_)
                              (let ((_e8716287240_
                                     (gx#syntax-e _tl8716187237_)))
                                (let ((_hd8716387243_ (##car _e8716287240_))
                                      (_tl8716487245_ (##cdr _e8716287240_)))
                                  (let ((_test87248_ _hd8716387243_))
                                    (if (gx#stx-pair? _tl8716487245_)
                                        (let ((_e8716587250_
                                               (gx#syntax-e _tl8716487245_)))
                                          (let ((_hd8716687253_
                                                 (##car _e8716587250_))
                                                (_tl8716787255_
                                                 (##cdr _e8716587250_)))
                                            (let ((_K87258_ _hd8716687253_))
                                              (if (gx#stx-null? _tl8716787255_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test87248_
                                                       _K87258_
                                                       '#!void)
                                                      (_E8715887228_))
                                                  (_E8715887228_)))))
                                        (_E8715887228_)))))
                              (_E8715887228_))))
                      (_E8715887228_)))))
          (_E8715787260_))))
    (define gx#free-identifier=?
      (lambda (_xid87143_ _yid87144_)
        (let ((_xe87146_ (gx#resolve-identifier__0 _xid87143_))
              (_ye87147_ (gx#resolve-identifier__0 _yid87144_)))
          (if (and _xe87146_ _ye87147_)
              (let ((_$e87149_ (eq? _xe87146_ _ye87147_)))
                (if _$e87149_
                    _$e87149_
                    (if (##structure-instance-of? _xe87146_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye87147_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe87146_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye87147_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe87146_ _ye87147_)
                  '#f
                  (gx#stx-eq? _xid87143_ _yid87144_))))))
    (define gx#bound-identifier=?
      (lambda (_xid87127_ _yid87128_)
        (letrec ((_context87130_
                  (lambda (_e87141_)
                    (if (##structure-direct-instance-of?
                         _e87141_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e87141_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks87131_
                  (lambda (_e87139_)
                    (if (symbol? _e87139_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e87139_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e87139_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e87139_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap87132_
                  (lambda (_e87137_)
                    (if (symbol? _e87137_)
                        _e87137_
                        (gx#syntax-local-unwrap _e87137_)))))
          (let ((_x87134_ (_unwrap87132_ _xid87127_))
                (_y87135_ (_unwrap87132_ _yid87128_)))
            (if (gx#stx-eq? _x87134_ _y87135_)
                (if (eq? (_context87130_ _x87134_) (_context87130_ _y87135_))
                    (equal? (_marks87131_ _x87134_) (_marks87131_ _y87135_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx87125_)
        (if (gx#identifier? _stx87125_)
            (gx#core-identifier=? _stx87125_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx87123_)
        (if (gx#identifier? _stx87123_)
            (gx#core-identifier=? _stx87123_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x87121_)
        (if (gx#identifier? _x87121_)
            (if (not (gx#underscore? _x87121_)) _x87121_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87067_ _where87068_)
        (let _lp87070_ ((_rest87072_ (gx#syntax->list _stx87067_)))
          (let* ((_rest8707387081_ _rest87072_)
                 (_else8707587089_ (lambda () '#t))
                 (_K8707787099_
                  (lambda (_rest87092_ _hd87093_)
                    (if (not (gx#identifier? _hd87093_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87068_
                         _hd87093_)
                        (if (find (lambda (_g8709487096_)
                                    (gx#bound-identifier=?
                                     _g8709487096_
                                     _hd87093_))
                                  _rest87092_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87068_
                             _hd87093_)
                            (_lp87070_ _rest87092_))))))
            (if (##pair? _rest8707387081_)
                (let ((_hd8707887102_ (##car _rest8707387081_))
                      (_tl8707987104_ (##cdr _rest8707387081_)))
                  (let* ((_hd87107_ _hd8707887102_)
                         (_rest87109_ _tl8707987104_))
                    (_K8707787099_ _rest87109_ _hd87107_)))
                (_else8707587089_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx87114_)
        (let ((_where87116_ _stx87114_))
          (gx#check-duplicate-identifiers__% _stx87114_ _where87116_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89748_
        (let ((_g89747_ (##length _g89748_)))
          (cond ((##fx= _g89747_ 1)
                 (apply (lambda (_stx87114_)
                          (gx#check-duplicate-identifiers__0 _stx87114_))
                        _g89748_))
                ((##fx= _g89747_ 2)
                 (apply (lambda (_stx87118_ _where87119_)
                          (gx#check-duplicate-identifiers__%
                           _stx87118_
                           _where87119_))
                        _g89748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89748_))))))
    (define gx#core-bind-values?
      (lambda (_stx87059_)
        (gx#stx-andmap
         (lambda (_x87061_)
           (let ((_$e87063_ (gx#identifier? _x87061_)))
             (if _$e87063_ _$e87063_ (gx#stx-false? _x87061_))))
         _stx87059_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87023_ _rebind?87024_ _phi87025_ _ctx87026_)
        (gx#stx-for-each1
         (lambda (_id87028_)
           (if (gx#identifier? _id87028_)
               (gx#core-bind-runtime!__%
                _id87028_
                _rebind?87024_
                _phi87025_
                _ctx87026_)
               '#!void))
         _stx87023_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87033_)
        (let* ((_rebind?87035_ '#f)
               (_phi87037_ (gx#current-expander-phi))
               (_ctx87039_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87033_
           _rebind?87035_
           _phi87037_
           _ctx87039_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87041_ _rebind?87042_)
        (let* ((_phi87044_ (gx#current-expander-phi))
               (_ctx87046_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87041_
           _rebind?87042_
           _phi87044_
           _ctx87046_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87048_ _rebind?87049_ _phi87050_)
        (let ((_ctx87052_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87048_
           _rebind?87049_
           _phi87050_
           _ctx87052_))))
    (define gx#core-bind-values!
      (lambda _g89750_
        (let ((_g89749_ (##length _g89750_)))
          (cond ((##fx= _g89749_ 1)
                 (apply (lambda (_stx87033_)
                          (gx#core-bind-values!__0 _stx87033_))
                        _g89750_))
                ((##fx= _g89749_ 2)
                 (apply (lambda (_stx87041_ _rebind?87042_)
                          (gx#core-bind-values!__1 _stx87041_ _rebind?87042_))
                        _g89750_))
                ((##fx= _g89749_ 3)
                 (apply (lambda (_stx87048_ _rebind?87049_ _phi87050_)
                          (gx#core-bind-values!__2
                           _stx87048_
                           _rebind?87049_
                           _phi87050_))
                        _g89750_))
                ((##fx= _g89749_ 4)
                 (apply (lambda (_stx87054_
                                 _rebind?87055_
                                 _phi87056_
                                 _ctx87057_)
                          (gx#core-bind-values!__%
                           _stx87054_
                           _rebind?87055_
                           _phi87056_
                           _ctx87057_))
                        _g89750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89750_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87018_)
        (gx#stx-map1
         (lambda (_x87020_)
           (if (gx#identifier? _x87020_)
               (gx#core-quote-syntax__0 _x87020_)
               '#f))
         _stx87018_)))
    (define gx#core-runtime-ref?
      (lambda (_stx87011_)
        (if (gx#identifier? _stx87011_)
            (let* ((_bind87013_ (gx#resolve-identifier__0 _stx87011_))
                   (_$e87015_ (not _bind87013_)))
              (if _$e87015_
                  _$e87015_
                  (##structure-instance-of?
                   _bind87013_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id87003_ _form87004_)
        (let ((_bind87006_ (gx#resolve-identifier__0 _id87003_)))
          (if (##structure-instance-of? _bind87006_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id87003_)
              (if (not _bind87006_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id87003_)))
                      (gx#core-quote-syntax__0 _id87003_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form87004_
                       _id87003_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form87004_
                   _id87003_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86962_ _rebind?86963_ _phi86964_ _ctx86965_)
        (let* ((_key86967_ (gx#core-identifier-key _id86962_))
               (_eid86969_
                (gx#make-binding-id__% _key86967_ '#f _phi86964_ _ctx86965_))
               (_bind86971_
                (if (##structure-instance-of? _ctx86965_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86969_
                     _key86967_
                     _phi86964_
                     _ctx86965_)
                    (if (##structure-instance-of?
                         _ctx86965_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86969_
                         _key86967_
                         _phi86964_)
                        (if (##structure-instance-of?
                             _ctx86965_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86969_
                             _key86967_
                             _phi86964_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86969_
                             _key86967_
                             _phi86964_))))))
          (gx#bind-identifier!__%
           _id86962_
           _bind86971_
           _rebind?86963_
           _phi86964_
           _ctx86965_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86977_)
        (let* ((_rebind?86979_ '#f)
               (_phi86981_ (gx#current-expander-phi))
               (_ctx86983_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86977_
           _rebind?86979_
           _phi86981_
           _ctx86983_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86985_ _rebind?86986_)
        (let* ((_phi86988_ (gx#current-expander-phi))
               (_ctx86990_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86985_
           _rebind?86986_
           _phi86988_
           _ctx86990_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86992_ _rebind?86993_ _phi86994_)
        (let ((_ctx86996_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86992_
           _rebind?86993_
           _phi86994_
           _ctx86996_))))
    (define gx#core-bind-runtime!
      (lambda _g89752_
        (let ((_g89751_ (##length _g89752_)))
          (cond ((##fx= _g89751_ 1)
                 (apply (lambda (_id86977_)
                          (gx#core-bind-runtime!__0 _id86977_))
                        _g89752_))
                ((##fx= _g89751_ 2)
                 (apply (lambda (_id86985_ _rebind?86986_)
                          (gx#core-bind-runtime!__1 _id86985_ _rebind?86986_))
                        _g89752_))
                ((##fx= _g89751_ 3)
                 (apply (lambda (_id86992_ _rebind?86993_ _phi86994_)
                          (gx#core-bind-runtime!__2
                           _id86992_
                           _rebind?86993_
                           _phi86994_))
                        _g89752_))
                ((##fx= _g89751_ 4)
                 (apply (lambda (_id86998_
                                 _rebind?86999_
                                 _phi87000_
                                 _ctx87001_)
                          (gx#core-bind-runtime!__%
                           _id86998_
                           _rebind?86999_
                           _phi87000_
                           _ctx87001_))
                        _g89752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89752_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86917_ _eid86918_ _rebind?86919_ _phi86920_ _ctx86921_)
        (let* ((_key86923_ (gx#core-identifier-key _id86917_))
               (_bind86925_
                (if (##structure-instance-of? _ctx86921_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86918_
                     _key86923_
                     _phi86920_
                     _ctx86921_)
                    (if (##structure-instance-of?
                         _ctx86921_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86918_
                         _key86923_
                         _phi86920_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86918_
                         _key86923_
                         _phi86920_)))))
          (gx#bind-identifier!__%
           _id86917_
           _bind86925_
           _rebind?86919_
           _phi86920_
           _ctx86921_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86931_ _eid86932_)
        (let* ((_rebind?86934_ '#f)
               (_phi86936_ (gx#current-expander-phi))
               (_ctx86938_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86931_
           _eid86932_
           _rebind?86934_
           _phi86936_
           _ctx86938_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86940_ _eid86941_ _rebind?86942_)
        (let* ((_phi86944_ (gx#current-expander-phi))
               (_ctx86946_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86940_
           _eid86941_
           _rebind?86942_
           _phi86944_
           _ctx86946_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86948_ _eid86949_ _rebind?86950_ _phi86951_)
        (let ((_ctx86953_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86948_
           _eid86949_
           _rebind?86950_
           _phi86951_
           _ctx86953_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89754_
        (let ((_g89753_ (##length _g89754_)))
          (cond ((##fx= _g89753_ 2)
                 (apply (lambda (_id86931_ _eid86932_)
                          (gx#core-bind-runtime-reference!__0
                           _id86931_
                           _eid86932_))
                        _g89754_))
                ((##fx= _g89753_ 3)
                 (apply (lambda (_id86940_ _eid86941_ _rebind?86942_)
                          (gx#core-bind-runtime-reference!__1
                           _id86940_
                           _eid86941_
                           _rebind?86942_))
                        _g89754_))
                ((##fx= _g89753_ 4)
                 (apply (lambda (_id86948_
                                 _eid86949_
                                 _rebind?86950_
                                 _phi86951_)
                          (gx#core-bind-runtime-reference!__2
                           _id86948_
                           _eid86949_
                           _rebind?86950_
                           _phi86951_))
                        _g89754_))
                ((##fx= _g89753_ 5)
                 (apply (lambda (_id86955_
                                 _eid86956_
                                 _rebind?86957_
                                 _phi86958_
                                 _ctx86959_)
                          (gx#core-bind-runtime-reference!__%
                           _id86955_
                           _eid86956_
                           _rebind?86957_
                           _phi86958_
                           _ctx86959_))
                        _g89754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89754_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86877_ _eid86878_ _rebind?86879_ _phi86880_ _ctx86881_)
        (gx#bind-identifier!__%
         _id86877_
         (##structure
          gx#extern-binding::t
          _eid86878_
          (gx#core-identifier-key _id86877_)
          _phi86880_)
         _rebind?86879_
         _phi86880_
         _ctx86881_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86886_ _eid86887_)
        (let* ((_rebind?86889_ '#f)
               (_phi86891_ (gx#current-expander-phi))
               (_ctx86893_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86886_
           _eid86887_
           _rebind?86889_
           _phi86891_
           _ctx86893_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86895_ _eid86896_ _rebind?86897_)
        (let* ((_phi86899_ (gx#current-expander-phi))
               (_ctx86901_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86895_
           _eid86896_
           _rebind?86897_
           _phi86899_
           _ctx86901_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86903_ _eid86904_ _rebind?86905_ _phi86906_)
        (let ((_ctx86908_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86903_
           _eid86904_
           _rebind?86905_
           _phi86906_
           _ctx86908_))))
    (define gx#core-bind-extern!
      (lambda _g89756_
        (let ((_g89755_ (##length _g89756_)))
          (cond ((##fx= _g89755_ 2)
                 (apply (lambda (_id86886_ _eid86887_)
                          (gx#core-bind-extern!__0 _id86886_ _eid86887_))
                        _g89756_))
                ((##fx= _g89755_ 3)
                 (apply (lambda (_id86895_ _eid86896_ _rebind?86897_)
                          (gx#core-bind-extern!__1
                           _id86895_
                           _eid86896_
                           _rebind?86897_))
                        _g89756_))
                ((##fx= _g89755_ 4)
                 (apply (lambda (_id86903_
                                 _eid86904_
                                 _rebind?86905_
                                 _phi86906_)
                          (gx#core-bind-extern!__2
                           _id86903_
                           _eid86904_
                           _rebind?86905_
                           _phi86906_))
                        _g89756_))
                ((##fx= _g89755_ 5)
                 (apply (lambda (_id86910_
                                 _eid86911_
                                 _rebind?86912_
                                 _phi86913_
                                 _ctx86914_)
                          (gx#core-bind-extern!__%
                           _id86910_
                           _eid86911_
                           _rebind?86912_
                           _phi86913_
                           _ctx86914_))
                        _g89756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89756_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86831_ _e86832_ _rebind?86833_ _phi86834_ _ctx86835_)
        (gx#bind-identifier!__%
         _id86831_
         (let ((_key86840_ (gx#core-identifier-key _id86831_))
               (_e86841_
                (if (or (##structure-instance-of? _e86832_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86832_
                         'gx#expander-context::t))
                    _e86832_
                    (##structure
                     gx#user-expander::t
                     _e86832_
                     _ctx86835_
                     _phi86834_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86840_ '#t _phi86834_ _ctx86835_)
            _key86840_
            _phi86834_
            _e86841_))
         _rebind?86833_
         _phi86834_
         _ctx86835_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86846_ _e86847_)
        (let* ((_rebind?86849_ '#f)
               (_phi86851_ (gx#current-expander-phi))
               (_ctx86853_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86846_
           _e86847_
           _rebind?86849_
           _phi86851_
           _ctx86853_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86855_ _e86856_ _rebind?86857_)
        (let* ((_phi86859_ (gx#current-expander-phi))
               (_ctx86861_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86855_
           _e86856_
           _rebind?86857_
           _phi86859_
           _ctx86861_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86863_ _e86864_ _rebind?86865_ _phi86866_)
        (let ((_ctx86868_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86863_
           _e86864_
           _rebind?86865_
           _phi86866_
           _ctx86868_))))
    (define gx#core-bind-syntax!
      (lambda _g89758_
        (let ((_g89757_ (##length _g89758_)))
          (cond ((##fx= _g89757_ 2)
                 (apply (lambda (_id86846_ _e86847_)
                          (gx#core-bind-syntax!__0 _id86846_ _e86847_))
                        _g89758_))
                ((##fx= _g89757_ 3)
                 (apply (lambda (_id86855_ _e86856_ _rebind?86857_)
                          (gx#core-bind-syntax!__1
                           _id86855_
                           _e86856_
                           _rebind?86857_))
                        _g89758_))
                ((##fx= _g89757_ 4)
                 (apply (lambda (_id86863_ _e86864_ _rebind?86865_ _phi86866_)
                          (gx#core-bind-syntax!__2
                           _id86863_
                           _e86864_
                           _rebind?86865_
                           _phi86866_))
                        _g89758_))
                ((##fx= _g89757_ 5)
                 (apply (lambda (_id86870_
                                 _e86871_
                                 _rebind?86872_
                                 _phi86873_
                                 _ctx86874_)
                          (gx#core-bind-syntax!__%
                           _id86870_
                           _e86871_
                           _rebind?86872_
                           _phi86873_
                           _ctx86874_))
                        _g89758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89758_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86814_ _e86815_ _rebind?86816_)
        (gx#core-bind-syntax!__%
         _id86814_
         _e86815_
         _rebind?86816_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86821_ _e86822_)
        (let ((_rebind?86824_ '#f))
          (gx#core-bind-root-syntax!__% _id86821_ _e86822_ _rebind?86824_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89760_
        (let ((_g89759_ (##length _g89760_)))
          (cond ((##fx= _g89759_ 2)
                 (apply (lambda (_id86821_ _e86822_)
                          (gx#core-bind-root-syntax!__0 _id86821_ _e86822_))
                        _g89760_))
                ((##fx= _g89759_ 3)
                 (apply (lambda (_id86826_ _e86827_ _rebind?86828_)
                          (gx#core-bind-root-syntax!__%
                           _id86826_
                           _e86827_
                           _rebind?86828_))
                        _g89760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89760_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86772_ _alias-id86773_ _rebind?86774_ _phi86775_ _ctx86776_)
        (gx#bind-identifier!__%
         _id86772_
         (let ((_key86778_ (gx#core-identifier-key _id86772_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86778_ '#t _phi86775_ _ctx86776_)
            _key86778_
            _phi86775_
            _alias-id86773_))
         _rebind?86774_
         _phi86775_
         _ctx86776_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86783_ _alias-id86784_)
        (let* ((_rebind?86786_ '#f)
               (_phi86788_ (gx#current-expander-phi))
               (_ctx86790_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86783_
           _alias-id86784_
           _rebind?86786_
           _phi86788_
           _ctx86790_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86792_ _alias-id86793_ _rebind?86794_)
        (let* ((_phi86796_ (gx#current-expander-phi))
               (_ctx86798_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86792_
           _alias-id86793_
           _rebind?86794_
           _phi86796_
           _ctx86798_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86800_ _alias-id86801_ _rebind?86802_ _phi86803_)
        (let ((_ctx86805_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86800_
           _alias-id86801_
           _rebind?86802_
           _phi86803_
           _ctx86805_))))
    (define gx#core-bind-alias!
      (lambda _g89762_
        (let ((_g89761_ (##length _g89762_)))
          (cond ((##fx= _g89761_ 2)
                 (apply (lambda (_id86783_ _alias-id86784_)
                          (gx#core-bind-alias!__0 _id86783_ _alias-id86784_))
                        _g89762_))
                ((##fx= _g89761_ 3)
                 (apply (lambda (_id86792_ _alias-id86793_ _rebind?86794_)
                          (gx#core-bind-alias!__1
                           _id86792_
                           _alias-id86793_
                           _rebind?86794_))
                        _g89762_))
                ((##fx= _g89761_ 4)
                 (apply (lambda (_id86800_
                                 _alias-id86801_
                                 _rebind?86802_
                                 _phi86803_)
                          (gx#core-bind-alias!__2
                           _id86800_
                           _alias-id86801_
                           _rebind?86802_
                           _phi86803_))
                        _g89762_))
                ((##fx= _g89761_ 5)
                 (apply (lambda (_id86807_
                                 _alias-id86808_
                                 _rebind?86809_
                                 _phi86810_
                                 _ctx86811_)
                          (gx#core-bind-alias!__%
                           _id86807_
                           _alias-id86808_
                           _rebind?86809_
                           _phi86810_
                           _ctx86811_))
                        _g89762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89762_))))))
    (define gx#make-binding-id__%
      (lambda (_key86729_ _syntax?86730_ _phi86731_ _ctx86732_)
        (if (uninterned-symbol? _key86729_)
            (gensym 'L)
            (if (pair? _key86729_)
                (gensym (car _key86729_))
                (if (##structure-instance-of? _ctx86732_ 'gx#top-context::t)
                    (let ((_ns86734_
                           (gx#core-context-namespace__% _ctx86732_)))
                      (if (and (fxzero? _phi86731_) (not _syntax?86730_))
                          (if _ns86734_
                              (make-symbol__1 _ns86734_ '"#" _key86729_)
                              _key86729_)
                          (if _syntax?86730_
                              (make-symbol__1
                               (let ((_$e86736_ _ns86734_))
                                 (if _$e86736_ _$e86736_ '""))
                               '"[:"
                               (number->string _phi86731_)
                               '":]#"
                               _key86729_)
                              (make-symbol__1
                               (let ((_$e86739_ _ns86734_))
                                 (if _$e86739_ _$e86739_ '""))
                               '"["
                               (number->string _phi86731_)
                               '"]#"
                               _key86729_))))
                    (gensym _key86729_))))))
    (define gx#make-binding-id__0
      (lambda (_key86745_)
        (let* ((_syntax?86747_ '#f)
               (_phi86749_ (gx#current-expander-phi))
               (_ctx86751_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86745_
           _syntax?86747_
           _phi86749_
           _ctx86751_))))
    (define gx#make-binding-id__1
      (lambda (_key86753_ _syntax?86754_)
        (let* ((_phi86756_ (gx#current-expander-phi))
               (_ctx86758_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86753_
           _syntax?86754_
           _phi86756_
           _ctx86758_))))
    (define gx#make-binding-id__2
      (lambda (_key86760_ _syntax?86761_ _phi86762_)
        (let ((_ctx86764_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86760_
           _syntax?86761_
           _phi86762_
           _ctx86764_))))
    (define gx#make-binding-id
      (lambda _g89764_
        (let ((_g89763_ (##length _g89764_)))
          (cond ((##fx= _g89763_ 1)
                 (apply (lambda (_key86745_)
                          (gx#make-binding-id__0 _key86745_))
                        _g89764_))
                ((##fx= _g89763_ 2)
                 (apply (lambda (_key86753_ _syntax?86754_)
                          (gx#make-binding-id__1 _key86753_ _syntax?86754_))
                        _g89764_))
                ((##fx= _g89763_ 3)
                 (apply (lambda (_key86760_ _syntax?86761_ _phi86762_)
                          (gx#make-binding-id__2
                           _key86760_
                           _syntax?86761_
                           _phi86762_))
                        _g89764_))
                ((##fx= _g89763_ 4)
                 (apply (lambda (_key86766_
                                 _syntax?86767_
                                 _phi86768_
                                 _ctx86769_)
                          (gx#make-binding-id__%
                           _key86766_
                           _syntax?86767_
                           _phi86768_
                           _ctx86769_))
                        _g89764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89764_))))))))
